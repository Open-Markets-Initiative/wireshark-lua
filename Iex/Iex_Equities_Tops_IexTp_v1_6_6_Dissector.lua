-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Iex Equities Tops IexTp 1.6.6 Protocol
local iex_equities_tops_iextp_v1_6_6 = Proto("Iex.Equities.Tops.IexTp.v1.6.6.Lua", "Iex Equities Tops IexTp 1.6.6")

-- Component Tables
local show = {}
local format = {}
local iex_equities_tops_iextp_v1_6_6_display = {}
local iex_equities_tops_iextp_v1_6_6_dissect = {}
local iex_equities_tops_iextp_v1_6_6_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Iex Equities Tops IexTp 1.6.6 Fields
iex_equities_tops_iextp_v1_6_6.fields.adjusted_poc_price = ProtoField.new("Adjusted Poc Price", "iex.equities.tops.iextp.v1.6.6.adjustedpocprice", ftypes.DOUBLE)
iex_equities_tops_iextp_v1_6_6.fields.ask_price = ProtoField.new("Ask Price", "iex.equities.tops.iextp.v1.6.6.askprice", ftypes.DOUBLE)
iex_equities_tops_iextp_v1_6_6.fields.ask_size = ProtoField.new("Ask Size", "iex.equities.tops.iextp.v1.6.6.asksize", ftypes.UINT32)
iex_equities_tops_iextp_v1_6_6.fields.auction_book_clearing_price = ProtoField.new("Auction Book Clearing Price", "iex.equities.tops.iextp.v1.6.6.auctionbookclearingprice", ftypes.DOUBLE)
iex_equities_tops_iextp_v1_6_6.fields.auction_type = ProtoField.new("Auction Type", "iex.equities.tops.iextp.v1.6.6.auctiontype", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.bid_price = ProtoField.new("Bid Price", "iex.equities.tops.iextp.v1.6.6.bidprice", ftypes.DOUBLE)
iex_equities_tops_iextp_v1_6_6.fields.bid_size = ProtoField.new("Bid Size", "iex.equities.tops.iextp.v1.6.6.bidsize", ftypes.UINT32)
iex_equities_tops_iextp_v1_6_6.fields.channel_id = ProtoField.new("Channel Id", "iex.equities.tops.iextp.v1.6.6.channelid", ftypes.UINT32)
iex_equities_tops_iextp_v1_6_6.fields.collar_reference_price = ProtoField.new("Collar Reference Price", "iex.equities.tops.iextp.v1.6.6.collarreferenceprice", ftypes.DOUBLE)
iex_equities_tops_iextp_v1_6_6.fields.detail = ProtoField.new("Detail", "iex.equities.tops.iextp.v1.6.6.detail", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.etp = ProtoField.new("Etp", "iex.equities.tops.iextp.v1.6.6.etp", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
iex_equities_tops_iextp_v1_6_6.fields.extended_hours = ProtoField.new("Extended Hours", "iex.equities.tops.iextp.v1.6.6.extendedhours", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
iex_equities_tops_iextp_v1_6_6.fields.extension_number = ProtoField.new("Extension Number", "iex.equities.tops.iextp.v1.6.6.extensionnumber", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.first_message_sequence_number = ProtoField.new("First Message Sequence Number", "iex.equities.tops.iextp.v1.6.6.firstmessagesequencenumber", ftypes.UINT64)
iex_equities_tops_iextp_v1_6_6.fields.iex_tp_header = ProtoField.new("Iex Tp Header", "iex.equities.tops.iextp.v1.6.6.iextpheader", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "iex.equities.tops.iextp.v1.6.6.imbalanceshares", ftypes.UINT32)
iex_equities_tops_iextp_v1_6_6.fields.imbalance_side = ProtoField.new("Imbalance Side", "iex.equities.tops.iextp.v1.6.6.imbalanceside", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.indicative_clearing_price = ProtoField.new("Indicative Clearing Price", "iex.equities.tops.iextp.v1.6.6.indicativeclearingprice", ftypes.DOUBLE)
iex_equities_tops_iextp_v1_6_6.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "iex.equities.tops.iextp.v1.6.6.intermarketsweep", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
iex_equities_tops_iextp_v1_6_6.fields.lower_auction_collar = ProtoField.new("Lower Auction Collar", "iex.equities.tops.iextp.v1.6.6.lowerauctioncollar", ftypes.DOUBLE)
iex_equities_tops_iextp_v1_6_6.fields.luld_tier = ProtoField.new("Luld Tier", "iex.equities.tops.iextp.v1.6.6.luldtier", ftypes.UINT8)
iex_equities_tops_iextp_v1_6_6.fields.market_session = ProtoField.new("Market Session", "iex.equities.tops.iextp.v1.6.6.marketsession", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
iex_equities_tops_iextp_v1_6_6.fields.message = ProtoField.new("Message", "iex.equities.tops.iextp.v1.6.6.message", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.message_count = ProtoField.new("Message Count", "iex.equities.tops.iextp.v1.6.6.messagecount", ftypes.UINT16)
iex_equities_tops_iextp_v1_6_6.fields.message_data = ProtoField.new("Message Data", "iex.equities.tops.iextp.v1.6.6.messagedata", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.message_header = ProtoField.new("Message Header", "iex.equities.tops.iextp.v1.6.6.messageheader", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.message_length = ProtoField.new("Message Length", "iex.equities.tops.iextp.v1.6.6.messagelength", ftypes.UINT16)
iex_equities_tops_iextp_v1_6_6.fields.message_protocol_id = ProtoField.new("Message Protocol Id", "iex.equities.tops.iextp.v1.6.6.messageprotocolid", ftypes.UINT16)
iex_equities_tops_iextp_v1_6_6.fields.message_type = ProtoField.new("Message Type", "iex.equities.tops.iextp.v1.6.6.messagetype", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.odd_lot = ProtoField.new("Odd Lot", "iex.equities.tops.iextp.v1.6.6.oddlot", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
iex_equities_tops_iextp_v1_6_6.fields.official_price = ProtoField.new("Official Price", "iex.equities.tops.iextp.v1.6.6.officialprice", ftypes.DOUBLE)
iex_equities_tops_iextp_v1_6_6.fields.operational_halt_status = ProtoField.new("Operational Halt Status", "iex.equities.tops.iextp.v1.6.6.operationalhaltstatus", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.packet = ProtoField.new("Packet", "iex.equities.tops.iextp.v1.6.6.packet", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.paired_shares = ProtoField.new("Paired Shares", "iex.equities.tops.iextp.v1.6.6.pairedshares", ftypes.UINT32)
iex_equities_tops_iextp_v1_6_6.fields.payload_length = ProtoField.new("Payload Length", "iex.equities.tops.iextp.v1.6.6.payloadlength", ftypes.UINT16)
iex_equities_tops_iextp_v1_6_6.fields.price = ProtoField.new("Price", "iex.equities.tops.iextp.v1.6.6.price", ftypes.DOUBLE)
iex_equities_tops_iextp_v1_6_6.fields.price_type = ProtoField.new("Price Type", "iex.equities.tops.iextp.v1.6.6.pricetype", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.quote_update_flags = ProtoField.new("Quote Update Flags", "iex.equities.tops.iextp.v1.6.6.quoteupdateflags", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.reason = ProtoField.new("Reason", "iex.equities.tops.iextp.v1.6.6.reason", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.reference_price = ProtoField.new("Reference Price", "iex.equities.tops.iextp.v1.6.6.referenceprice", ftypes.DOUBLE)
iex_equities_tops_iextp_v1_6_6.fields.reserved = ProtoField.new("Reserved", "iex.equities.tops.iextp.v1.6.6.reserved", ftypes.BYTES)
iex_equities_tops_iextp_v1_6_6.fields.retail_liquidity_indicator = ProtoField.new("Retail Liquidity Indicator", "iex.equities.tops.iextp.v1.6.6.retailliquidityindicator", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.round_lot_size = ProtoField.new("Round Lot Size", "iex.equities.tops.iextp.v1.6.6.roundlotsize", ftypes.UINT32)
iex_equities_tops_iextp_v1_6_6.fields.sale_condition_flags = ProtoField.new("Sale Condition Flags", "iex.equities.tops.iextp.v1.6.6.saleconditionflags", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.scheduled_auction_time = ProtoField.new("Scheduled Auction Time", "iex.equities.tops.iextp.v1.6.6.scheduledauctiontime", ftypes.UINT32)
iex_equities_tops_iextp_v1_6_6.fields.security_directory_flags = ProtoField.new("Security Directory Flags", "iex.equities.tops.iextp.v1.6.6.securitydirectoryflags", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.send_time = ProtoField.new("Send Time", "iex.equities.tops.iextp.v1.6.6.sendtime", ftypes.UINT64)
iex_equities_tops_iextp_v1_6_6.fields.session_id = ProtoField.new("Session Id", "iex.equities.tops.iextp.v1.6.6.sessionid", ftypes.UINT32)
iex_equities_tops_iextp_v1_6_6.fields.short_sale_price_test_status = ProtoField.new("Short Sale Price Test Status", "iex.equities.tops.iextp.v1.6.6.shortsalepriceteststatus", ftypes.UINT8)
iex_equities_tops_iextp_v1_6_6.fields.singleprice_cross_trade = ProtoField.new("Singleprice Cross Trade", "iex.equities.tops.iextp.v1.6.6.singlepricecrosstrade", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
iex_equities_tops_iextp_v1_6_6.fields.size = ProtoField.new("Size", "iex.equities.tops.iextp.v1.6.6.size", ftypes.UINT32)
iex_equities_tops_iextp_v1_6_6.fields.stream_offset = ProtoField.new("Stream Offset", "iex.equities.tops.iextp.v1.6.6.streamoffset", ftypes.UINT64)
iex_equities_tops_iextp_v1_6_6.fields.symbol = ProtoField.new("Symbol", "iex.equities.tops.iextp.v1.6.6.symbol", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.symbol_availability = ProtoField.new("Symbol Availability", "iex.equities.tops.iextp.v1.6.6.symbolavailability", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
iex_equities_tops_iextp_v1_6_6.fields.system_event = ProtoField.new("System Event", "iex.equities.tops.iextp.v1.6.6.systemevent", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.test_security = ProtoField.new("Test Security", "iex.equities.tops.iextp.v1.6.6.testsecurity", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
iex_equities_tops_iextp_v1_6_6.fields.timestamp = ProtoField.new("Timestamp", "iex.equities.tops.iextp.v1.6.6.timestamp", ftypes.INT64)
iex_equities_tops_iextp_v1_6_6.fields.trade_id = ProtoField.new("Trade Id", "iex.equities.tops.iextp.v1.6.6.tradeid", ftypes.UINT64)
iex_equities_tops_iextp_v1_6_6.fields.trade_through_exempt = ProtoField.new("Trade Through Exempt", "iex.equities.tops.iextp.v1.6.6.tradethroughexempt", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
iex_equities_tops_iextp_v1_6_6.fields.trading_status = ProtoField.new("Trading Status", "iex.equities.tops.iextp.v1.6.6.tradingstatus", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.unused_3 = ProtoField.new("Unused 3", "iex.equities.tops.iextp.v1.6.6.unused3", ftypes.UINT8, nil, base.DEC, 0x07)
iex_equities_tops_iextp_v1_6_6.fields.unused_5 = ProtoField.new("Unused 5", "iex.equities.tops.iextp.v1.6.6.unused5", ftypes.UINT8, nil, base.DEC, 0x1F)
iex_equities_tops_iextp_v1_6_6.fields.unused_6 = ProtoField.new("Unused 6", "iex.equities.tops.iextp.v1.6.6.unused6", ftypes.UINT8, nil, base.DEC, 0x3F)
iex_equities_tops_iextp_v1_6_6.fields.upper_auction_collar = ProtoField.new("Upper Auction Collar", "iex.equities.tops.iextp.v1.6.6.upperauctioncollar", ftypes.DOUBLE)
iex_equities_tops_iextp_v1_6_6.fields.version = ProtoField.new("Version", "iex.equities.tops.iextp.v1.6.6.version", ftypes.UINT8)
iex_equities_tops_iextp_v1_6_6.fields.when_issued = ProtoField.new("When Issued", "iex.equities.tops.iextp.v1.6.6.whenissued", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)

-- Iex Equities Tops IexTp 1.6.6 messages
iex_equities_tops_iextp_v1_6_6.fields.auction_information_message = ProtoField.new("Auction Information Message", "iex.equities.tops.iextp.v1.6.6.auctioninformationmessage", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.official_price_message = ProtoField.new("Official Price Message", "iex.equities.tops.iextp.v1.6.6.officialpricemessage", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.operational_halt_status_message = ProtoField.new("Operational Halt Status Message", "iex.equities.tops.iextp.v1.6.6.operationalhaltstatusmessage", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.quote_update_message = ProtoField.new("Quote Update Message", "iex.equities.tops.iextp.v1.6.6.quoteupdatemessage", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.retail_liquidity_indicator_message = ProtoField.new("Retail Liquidity Indicator Message", "iex.equities.tops.iextp.v1.6.6.retailliquidityindicatormessage", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.security_directory_message = ProtoField.new("Security Directory Message", "iex.equities.tops.iextp.v1.6.6.securitydirectorymessage", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.short_sale_price_test_status_message = ProtoField.new("Short Sale Price Test Status Message", "iex.equities.tops.iextp.v1.6.6.shortsalepriceteststatusmessage", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.system_event_message = ProtoField.new("System Event Message", "iex.equities.tops.iextp.v1.6.6.systemeventmessage", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.trade_break_message = ProtoField.new("Trade Break Message", "iex.equities.tops.iextp.v1.6.6.tradebreakmessage", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.trade_report_message = ProtoField.new("Trade Report Message", "iex.equities.tops.iextp.v1.6.6.tradereportmessage", ftypes.STRING)
iex_equities_tops_iextp_v1_6_6.fields.trading_status_message = ProtoField.new("Trading Status Message", "iex.equities.tops.iextp.v1.6.6.tradingstatusmessage", ftypes.STRING)

-- Iex Equities Tops IexTp 1.6.6 generated fields
iex_equities_tops_iextp_v1_6_6.fields.message_index = ProtoField.new("Message Index", "iex.equities.tops.iextp.v1.6.6.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Iex Equities Tops IexTp 1.6.6 Element Dissection Options
show.auction_information_message = true
show.iex_tp_header = true
show.message = true
show.message_header = true
show.official_price_message = true
show.operational_halt_status_message = true
show.packet = true
show.quote_update_flags = true
show.quote_update_message = true
show.retail_liquidity_indicator_message = true
show.sale_condition_flags = true
show.security_directory_flags = true
show.security_directory_message = true
show.short_sale_price_test_status_message = true
show.system_event_message = true
show.trade_break_message = true
show.trade_report_message = true
show.trading_status_message = true
show.message_data = false

-- Register Iex Equities Tops IexTp 1.6.6 Show Options
iex_equities_tops_iextp_v1_6_6.prefs.show_auction_information_message = Pref.bool("Show Auction Information Message", show.auction_information_message, "Parse and add Auction Information Message to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_iex_tp_header = Pref.bool("Show Iex Tp Header", show.iex_tp_header, "Parse and add Iex Tp Header to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_official_price_message = Pref.bool("Show Official Price Message", show.official_price_message, "Parse and add Official Price Message to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_operational_halt_status_message = Pref.bool("Show Operational Halt Status Message", show.operational_halt_status_message, "Parse and add Operational Halt Status Message to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_quote_update_flags = Pref.bool("Show Quote Update Flags", show.quote_update_flags, "Parse and add Quote Update Flags to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_quote_update_message = Pref.bool("Show Quote Update Message", show.quote_update_message, "Parse and add Quote Update Message to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_retail_liquidity_indicator_message = Pref.bool("Show Retail Liquidity Indicator Message", show.retail_liquidity_indicator_message, "Parse and add Retail Liquidity Indicator Message to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_sale_condition_flags = Pref.bool("Show Sale Condition Flags", show.sale_condition_flags, "Parse and add Sale Condition Flags to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_security_directory_flags = Pref.bool("Show Security Directory Flags", show.security_directory_flags, "Parse and add Security Directory Flags to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_security_directory_message = Pref.bool("Show Security Directory Message", show.security_directory_message, "Parse and add Security Directory Message to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_short_sale_price_test_status_message = Pref.bool("Show Short Sale Price Test Status Message", show.short_sale_price_test_status_message, "Parse and add Short Sale Price Test Status Message to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_trade_report_message = Pref.bool("Show Trade Report Message", show.trade_report_message, "Parse and add Trade Report Message to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
iex_equities_tops_iextp_v1_6_6.prefs.show_message_data = Pref.bool("Show Message Data", show.message_data, "Parse and add Message Data to protocol tree")

-- Handle changed preferences
function iex_equities_tops_iextp_v1_6_6.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.auction_information_message ~= iex_equities_tops_iextp_v1_6_6.prefs.show_auction_information_message then
    show.auction_information_message = iex_equities_tops_iextp_v1_6_6.prefs.show_auction_information_message
    changed = true
  end
  if show.iex_tp_header ~= iex_equities_tops_iextp_v1_6_6.prefs.show_iex_tp_header then
    show.iex_tp_header = iex_equities_tops_iextp_v1_6_6.prefs.show_iex_tp_header
    changed = true
  end
  if show.message ~= iex_equities_tops_iextp_v1_6_6.prefs.show_message then
    show.message = iex_equities_tops_iextp_v1_6_6.prefs.show_message
    changed = true
  end
  if show.message_header ~= iex_equities_tops_iextp_v1_6_6.prefs.show_message_header then
    show.message_header = iex_equities_tops_iextp_v1_6_6.prefs.show_message_header
    changed = true
  end
  if show.official_price_message ~= iex_equities_tops_iextp_v1_6_6.prefs.show_official_price_message then
    show.official_price_message = iex_equities_tops_iextp_v1_6_6.prefs.show_official_price_message
    changed = true
  end
  if show.operational_halt_status_message ~= iex_equities_tops_iextp_v1_6_6.prefs.show_operational_halt_status_message then
    show.operational_halt_status_message = iex_equities_tops_iextp_v1_6_6.prefs.show_operational_halt_status_message
    changed = true
  end
  if show.packet ~= iex_equities_tops_iextp_v1_6_6.prefs.show_packet then
    show.packet = iex_equities_tops_iextp_v1_6_6.prefs.show_packet
    changed = true
  end
  if show.quote_update_flags ~= iex_equities_tops_iextp_v1_6_6.prefs.show_quote_update_flags then
    show.quote_update_flags = iex_equities_tops_iextp_v1_6_6.prefs.show_quote_update_flags
    changed = true
  end
  if show.quote_update_message ~= iex_equities_tops_iextp_v1_6_6.prefs.show_quote_update_message then
    show.quote_update_message = iex_equities_tops_iextp_v1_6_6.prefs.show_quote_update_message
    changed = true
  end
  if show.retail_liquidity_indicator_message ~= iex_equities_tops_iextp_v1_6_6.prefs.show_retail_liquidity_indicator_message then
    show.retail_liquidity_indicator_message = iex_equities_tops_iextp_v1_6_6.prefs.show_retail_liquidity_indicator_message
    changed = true
  end
  if show.sale_condition_flags ~= iex_equities_tops_iextp_v1_6_6.prefs.show_sale_condition_flags then
    show.sale_condition_flags = iex_equities_tops_iextp_v1_6_6.prefs.show_sale_condition_flags
    changed = true
  end
  if show.security_directory_flags ~= iex_equities_tops_iextp_v1_6_6.prefs.show_security_directory_flags then
    show.security_directory_flags = iex_equities_tops_iextp_v1_6_6.prefs.show_security_directory_flags
    changed = true
  end
  if show.security_directory_message ~= iex_equities_tops_iextp_v1_6_6.prefs.show_security_directory_message then
    show.security_directory_message = iex_equities_tops_iextp_v1_6_6.prefs.show_security_directory_message
    changed = true
  end
  if show.short_sale_price_test_status_message ~= iex_equities_tops_iextp_v1_6_6.prefs.show_short_sale_price_test_status_message then
    show.short_sale_price_test_status_message = iex_equities_tops_iextp_v1_6_6.prefs.show_short_sale_price_test_status_message
    changed = true
  end
  if show.system_event_message ~= iex_equities_tops_iextp_v1_6_6.prefs.show_system_event_message then
    show.system_event_message = iex_equities_tops_iextp_v1_6_6.prefs.show_system_event_message
    changed = true
  end
  if show.trade_break_message ~= iex_equities_tops_iextp_v1_6_6.prefs.show_trade_break_message then
    show.trade_break_message = iex_equities_tops_iextp_v1_6_6.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_report_message ~= iex_equities_tops_iextp_v1_6_6.prefs.show_trade_report_message then
    show.trade_report_message = iex_equities_tops_iextp_v1_6_6.prefs.show_trade_report_message
    changed = true
  end
  if show.trading_status_message ~= iex_equities_tops_iextp_v1_6_6.prefs.show_trading_status_message then
    show.trading_status_message = iex_equities_tops_iextp_v1_6_6.prefs.show_trading_status_message
    changed = true
  end
  if show.message_data ~= iex_equities_tops_iextp_v1_6_6.prefs.show_message_data then
    show.message_data = iex_equities_tops_iextp_v1_6_6.prefs.show_message_data
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
-- Dissect Iex Equities Tops IexTp 1.6.6
-----------------------------------------------------------------------

-- Size: Upper Auction Collar
iex_equities_tops_iextp_v1_6_6_size_of.upper_auction_collar = 8

-- Display: Upper Auction Collar
iex_equities_tops_iextp_v1_6_6_display.upper_auction_collar = function(value)
  return "Upper Auction Collar: "..value
end

-- Translate: Upper Auction Collar
translate.upper_auction_collar = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Upper Auction Collar
iex_equities_tops_iextp_v1_6_6_dissect.upper_auction_collar = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.upper_auction_collar
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.upper_auction_collar(raw)
  local display = iex_equities_tops_iextp_v1_6_6_display.upper_auction_collar(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.upper_auction_collar, range, value, display)

  return offset + length, value
end

-- Size: Lower Auction Collar
iex_equities_tops_iextp_v1_6_6_size_of.lower_auction_collar = 8

-- Display: Lower Auction Collar
iex_equities_tops_iextp_v1_6_6_display.lower_auction_collar = function(value)
  return "Lower Auction Collar: "..value
end

-- Translate: Lower Auction Collar
translate.lower_auction_collar = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Lower Auction Collar
iex_equities_tops_iextp_v1_6_6_dissect.lower_auction_collar = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.lower_auction_collar
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.lower_auction_collar(raw)
  local display = iex_equities_tops_iextp_v1_6_6_display.lower_auction_collar(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.lower_auction_collar, range, value, display)

  return offset + length, value
end

-- Size: Collar Reference Price
iex_equities_tops_iextp_v1_6_6_size_of.collar_reference_price = 8

-- Display: Collar Reference Price
iex_equities_tops_iextp_v1_6_6_display.collar_reference_price = function(value)
  return "Collar Reference Price: "..value
end

-- Translate: Collar Reference Price
translate.collar_reference_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Collar Reference Price
iex_equities_tops_iextp_v1_6_6_dissect.collar_reference_price = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.collar_reference_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.collar_reference_price(raw)
  local display = iex_equities_tops_iextp_v1_6_6_display.collar_reference_price(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.collar_reference_price, range, value, display)

  return offset + length, value
end

-- Size: Auction Book Clearing Price
iex_equities_tops_iextp_v1_6_6_size_of.auction_book_clearing_price = 8

-- Display: Auction Book Clearing Price
iex_equities_tops_iextp_v1_6_6_display.auction_book_clearing_price = function(value)
  return "Auction Book Clearing Price: "..value
end

-- Translate: Auction Book Clearing Price
translate.auction_book_clearing_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Book Clearing Price
iex_equities_tops_iextp_v1_6_6_dissect.auction_book_clearing_price = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.auction_book_clearing_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.auction_book_clearing_price(raw)
  local display = iex_equities_tops_iextp_v1_6_6_display.auction_book_clearing_price(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.auction_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Size: Scheduled Auction Time
iex_equities_tops_iextp_v1_6_6_size_of.scheduled_auction_time = 4

-- Display: Scheduled Auction Time
iex_equities_tops_iextp_v1_6_6_display.scheduled_auction_time = function(value)
  -- Parse unix timestamp
  return "Scheduled Auction Time: "..os.date("%x %H:%M:%S", value)
end

-- Dissect: Scheduled Auction Time
iex_equities_tops_iextp_v1_6_6_dissect.scheduled_auction_time = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.scheduled_auction_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.scheduled_auction_time(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.scheduled_auction_time, range, value, display)

  return offset + length, value
end

-- Size: Extension Number
iex_equities_tops_iextp_v1_6_6_size_of.extension_number = 1

-- Display: Extension Number
iex_equities_tops_iextp_v1_6_6_display.extension_number = function(value)
  return "Extension Number: "..value
end

-- Dissect: Extension Number
iex_equities_tops_iextp_v1_6_6_dissect.extension_number = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.extension_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_tops_iextp_v1_6_6_display.extension_number(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.extension_number, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Side
iex_equities_tops_iextp_v1_6_6_size_of.imbalance_side = 1

-- Display: Imbalance Side
iex_equities_tops_iextp_v1_6_6_display.imbalance_side = function(value)
  if value == "B" then
    return "Imbalance Side: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Side: Sell (S)"
  end
  if value == "N" then
    return "Imbalance Side: None (N)"
  end

  return "Imbalance Side: Unknown("..value..")"
end

-- Dissect: Imbalance Side
iex_equities_tops_iextp_v1_6_6_dissect.imbalance_side = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.imbalance_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_tops_iextp_v1_6_6_display.imbalance_side(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Shares
iex_equities_tops_iextp_v1_6_6_size_of.imbalance_shares = 4

-- Display: Imbalance Shares
iex_equities_tops_iextp_v1_6_6_display.imbalance_shares = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
iex_equities_tops_iextp_v1_6_6_dissect.imbalance_shares = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.imbalance_shares
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.imbalance_shares(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Size: Indicative Clearing Price
iex_equities_tops_iextp_v1_6_6_size_of.indicative_clearing_price = 8

-- Display: Indicative Clearing Price
iex_equities_tops_iextp_v1_6_6_display.indicative_clearing_price = function(value)
  return "Indicative Clearing Price: "..value
end

-- Translate: Indicative Clearing Price
translate.indicative_clearing_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Clearing Price
iex_equities_tops_iextp_v1_6_6_dissect.indicative_clearing_price = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.indicative_clearing_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.indicative_clearing_price(raw)
  local display = iex_equities_tops_iextp_v1_6_6_display.indicative_clearing_price(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.indicative_clearing_price, range, value, display)

  return offset + length, value
end

-- Size: Reference Price
iex_equities_tops_iextp_v1_6_6_size_of.reference_price = 8

-- Display: Reference Price
iex_equities_tops_iextp_v1_6_6_display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
translate.reference_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
iex_equities_tops_iextp_v1_6_6_dissect.reference_price = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.reference_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.reference_price(raw)
  local display = iex_equities_tops_iextp_v1_6_6_display.reference_price(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Size: Paired Shares
iex_equities_tops_iextp_v1_6_6_size_of.paired_shares = 4

-- Display: Paired Shares
iex_equities_tops_iextp_v1_6_6_display.paired_shares = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
iex_equities_tops_iextp_v1_6_6_dissect.paired_shares = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.paired_shares
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.paired_shares(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Size: Symbol
iex_equities_tops_iextp_v1_6_6_size_of.symbol = 8

-- Display: Symbol
iex_equities_tops_iextp_v1_6_6_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
iex_equities_tops_iextp_v1_6_6_dissect.symbol = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = iex_equities_tops_iextp_v1_6_6_display.symbol(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
iex_equities_tops_iextp_v1_6_6_size_of.timestamp = 8

-- Display: Timestamp
iex_equities_tops_iextp_v1_6_6_display.timestamp = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
iex_equities_tops_iextp_v1_6_6_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = iex_equities_tops_iextp_v1_6_6_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
iex_equities_tops_iextp_v1_6_6_size_of.auction_type = 1

-- Display: Auction Type
iex_equities_tops_iextp_v1_6_6_display.auction_type = function(value)
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "I" then
    return "Auction Type: Ipo Auction (I)"
  end
  if value == "H" then
    return "Auction Type: Halt Auction (H)"
  end
  if value == "V" then
    return "Auction Type: Volatility Auction (V)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
iex_equities_tops_iextp_v1_6_6_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_tops_iextp_v1_6_6_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Information Message
iex_equities_tops_iextp_v1_6_6_size_of.auction_information_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.auction_type

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.timestamp

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.symbol

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.paired_shares

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.reference_price

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.indicative_clearing_price

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.imbalance_shares

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.imbalance_side

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.extension_number

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.scheduled_auction_time

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.auction_book_clearing_price

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.collar_reference_price

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.lower_auction_collar

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.upper_auction_collar

  return index
end

-- Display: Auction Information Message
iex_equities_tops_iextp_v1_6_6_display.auction_information_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Information Message
iex_equities_tops_iextp_v1_6_6_dissect.auction_information_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Auction Type: Byte
  index, auction_type = iex_equities_tops_iextp_v1_6_6_dissect.auction_type(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_tops_iextp_v1_6_6_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_tops_iextp_v1_6_6_dissect.symbol(buffer, index, packet, parent)

  -- Paired Shares: Integer
  index, paired_shares = iex_equities_tops_iextp_v1_6_6_dissect.paired_shares(buffer, index, packet, parent)

  -- Reference Price: Price
  index, reference_price = iex_equities_tops_iextp_v1_6_6_dissect.reference_price(buffer, index, packet, parent)

  -- Indicative Clearing Price: Price
  index, indicative_clearing_price = iex_equities_tops_iextp_v1_6_6_dissect.indicative_clearing_price(buffer, index, packet, parent)

  -- Imbalance Shares: Integer
  index, imbalance_shares = iex_equities_tops_iextp_v1_6_6_dissect.imbalance_shares(buffer, index, packet, parent)

  -- Imbalance Side: Byte
  index, imbalance_side = iex_equities_tops_iextp_v1_6_6_dissect.imbalance_side(buffer, index, packet, parent)

  -- Extension Number: Byte
  index, extension_number = iex_equities_tops_iextp_v1_6_6_dissect.extension_number(buffer, index, packet, parent)

  -- Scheduled Auction Time: Event Time
  index, scheduled_auction_time = iex_equities_tops_iextp_v1_6_6_dissect.scheduled_auction_time(buffer, index, packet, parent)

  -- Auction Book Clearing Price: Price
  index, auction_book_clearing_price = iex_equities_tops_iextp_v1_6_6_dissect.auction_book_clearing_price(buffer, index, packet, parent)

  -- Collar Reference Price: Price
  index, collar_reference_price = iex_equities_tops_iextp_v1_6_6_dissect.collar_reference_price(buffer, index, packet, parent)

  -- Lower Auction Collar: Price
  index, lower_auction_collar = iex_equities_tops_iextp_v1_6_6_dissect.lower_auction_collar(buffer, index, packet, parent)

  -- Upper Auction Collar: Price
  index, upper_auction_collar = iex_equities_tops_iextp_v1_6_6_dissect.upper_auction_collar(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Information Message
iex_equities_tops_iextp_v1_6_6_dissect.auction_information_message = function(buffer, offset, packet, parent)
  if show.auction_information_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.auction_information_message, buffer(offset, 0))
    local index = iex_equities_tops_iextp_v1_6_6_dissect.auction_information_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_tops_iextp_v1_6_6_display.auction_information_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_tops_iextp_v1_6_6_dissect.auction_information_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Trade Id
iex_equities_tops_iextp_v1_6_6_size_of.trade_id = 8

-- Display: Trade Id
iex_equities_tops_iextp_v1_6_6_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
iex_equities_tops_iextp_v1_6_6_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_tops_iextp_v1_6_6_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Price
iex_equities_tops_iextp_v1_6_6_size_of.price = 8

-- Display: Price
iex_equities_tops_iextp_v1_6_6_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
iex_equities_tops_iextp_v1_6_6_dissect.price = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price(raw)
  local display = iex_equities_tops_iextp_v1_6_6_display.price(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Size
iex_equities_tops_iextp_v1_6_6_size_of.size = 4

-- Display: Size
iex_equities_tops_iextp_v1_6_6_display.size = function(value)
  return "Size: "..value
end

-- Dissect: Size
iex_equities_tops_iextp_v1_6_6_dissect.size = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.size(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.size, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition Flags
iex_equities_tops_iextp_v1_6_6_size_of.sale_condition_flags = 1

-- Display: Sale Condition Flags
iex_equities_tops_iextp_v1_6_6_display.sale_condition_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Intermarket Sweep flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Intermarket Sweep|"
  end
  -- Is Extended Hours flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Extended Hours|"
  end
  -- Is Odd Lot flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Odd Lot|"
  end
  -- Is Trade Through Exempt flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Trade Through Exempt|"
  end
  -- Is Singleprice Cross Trade flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Singleprice Cross Trade|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Sale Condition Flags
iex_equities_tops_iextp_v1_6_6_dissect.sale_condition_flags_bits = function(buffer, offset, packet, parent)

  -- Intermarket Sweep: 1 Bit
  parent:add(iex_equities_tops_iextp_v1_6_6.fields.intermarket_sweep, buffer(offset, 1))

  -- Extended Hours: 1 Bit
  parent:add(iex_equities_tops_iextp_v1_6_6.fields.extended_hours, buffer(offset, 1))

  -- Odd Lot: 1 Bit
  parent:add(iex_equities_tops_iextp_v1_6_6.fields.odd_lot, buffer(offset, 1))

  -- Trade Through Exempt: 1 Bit
  parent:add(iex_equities_tops_iextp_v1_6_6.fields.trade_through_exempt, buffer(offset, 1))

  -- Singleprice Cross Trade: 1 Bit
  parent:add(iex_equities_tops_iextp_v1_6_6.fields.singleprice_cross_trade, buffer(offset, 1))

  -- Unused 3: 3 Bit
  parent:add(iex_equities_tops_iextp_v1_6_6.fields.unused_3, buffer(offset, 1))
end

-- Dissect: Sale Condition Flags
iex_equities_tops_iextp_v1_6_6_dissect.sale_condition_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = iex_equities_tops_iextp_v1_6_6_display.sale_condition_flags(range, packet, parent)
  local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.sale_condition_flags, range, display)

  if show.sale_condition_flags then
    iex_equities_tops_iextp_v1_6_6_dissect.sale_condition_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Trade Break Message
iex_equities_tops_iextp_v1_6_6_size_of.trade_break_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.sale_condition_flags

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.timestamp

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.symbol

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.size

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.price

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.trade_id

  return index
end

-- Display: Trade Break Message
iex_equities_tops_iextp_v1_6_6_display.trade_break_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
iex_equities_tops_iextp_v1_6_6_dissect.trade_break_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Condition Flags: Struct of 6 fields
  index, sale_condition_flags = iex_equities_tops_iextp_v1_6_6_dissect.sale_condition_flags(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_tops_iextp_v1_6_6_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_tops_iextp_v1_6_6_dissect.symbol(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_equities_tops_iextp_v1_6_6_dissect.size(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_equities_tops_iextp_v1_6_6_dissect.price(buffer, index, packet, parent)

  -- Trade Id: Long
  index, trade_id = iex_equities_tops_iextp_v1_6_6_dissect.trade_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
iex_equities_tops_iextp_v1_6_6_dissect.trade_break_message = function(buffer, offset, packet, parent)
  if show.trade_break_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.trade_break_message, buffer(offset, 0))
    local index = iex_equities_tops_iextp_v1_6_6_dissect.trade_break_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_tops_iextp_v1_6_6_display.trade_break_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_tops_iextp_v1_6_6_dissect.trade_break_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Official Price
iex_equities_tops_iextp_v1_6_6_size_of.official_price = 8

-- Display: Official Price
iex_equities_tops_iextp_v1_6_6_display.official_price = function(value)
  return "Official Price: "..value
end

-- Translate: Official Price
translate.official_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Official Price
iex_equities_tops_iextp_v1_6_6_dissect.official_price = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.official_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.official_price(raw)
  local display = iex_equities_tops_iextp_v1_6_6_display.official_price(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.official_price, range, value, display)

  return offset + length, value
end

-- Size: Price Type
iex_equities_tops_iextp_v1_6_6_size_of.price_type = 1

-- Display: Price Type
iex_equities_tops_iextp_v1_6_6_display.price_type = function(value)
  if value == "Q" then
    return "Price Type: Iex Official Opening Price (Q)"
  end
  if value == "M" then
    return "Price Type: Iex Official Closing Price (M)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
iex_equities_tops_iextp_v1_6_6_dissect.price_type = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.price_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_tops_iextp_v1_6_6_display.price_type(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.price_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Official Price Message
iex_equities_tops_iextp_v1_6_6_size_of.official_price_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.price_type

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.timestamp

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.symbol

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.official_price

  return index
end

-- Display: Official Price Message
iex_equities_tops_iextp_v1_6_6_display.official_price_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Official Price Message
iex_equities_tops_iextp_v1_6_6_dissect.official_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Type: Byte
  index, price_type = iex_equities_tops_iextp_v1_6_6_dissect.price_type(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_tops_iextp_v1_6_6_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_tops_iextp_v1_6_6_dissect.symbol(buffer, index, packet, parent)

  -- Official Price: Price
  index, official_price = iex_equities_tops_iextp_v1_6_6_dissect.official_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Official Price Message
iex_equities_tops_iextp_v1_6_6_dissect.official_price_message = function(buffer, offset, packet, parent)
  if show.official_price_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.official_price_message, buffer(offset, 0))
    local index = iex_equities_tops_iextp_v1_6_6_dissect.official_price_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_tops_iextp_v1_6_6_display.official_price_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_tops_iextp_v1_6_6_dissect.official_price_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Trade Report Message
iex_equities_tops_iextp_v1_6_6_size_of.trade_report_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.sale_condition_flags

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.timestamp

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.symbol

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.size

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.price

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.trade_id

  return index
end

-- Display: Trade Report Message
iex_equities_tops_iextp_v1_6_6_display.trade_report_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
iex_equities_tops_iextp_v1_6_6_dissect.trade_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Condition Flags: Struct of 6 fields
  index, sale_condition_flags = iex_equities_tops_iextp_v1_6_6_dissect.sale_condition_flags(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_tops_iextp_v1_6_6_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_tops_iextp_v1_6_6_dissect.symbol(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_equities_tops_iextp_v1_6_6_dissect.size(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_equities_tops_iextp_v1_6_6_dissect.price(buffer, index, packet, parent)

  -- Trade Id: Long
  index, trade_id = iex_equities_tops_iextp_v1_6_6_dissect.trade_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
iex_equities_tops_iextp_v1_6_6_dissect.trade_report_message = function(buffer, offset, packet, parent)
  if show.trade_report_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.trade_report_message, buffer(offset, 0))
    local index = iex_equities_tops_iextp_v1_6_6_dissect.trade_report_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_tops_iextp_v1_6_6_display.trade_report_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_tops_iextp_v1_6_6_dissect.trade_report_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Ask Size
iex_equities_tops_iextp_v1_6_6_size_of.ask_size = 4

-- Display: Ask Size
iex_equities_tops_iextp_v1_6_6_display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
iex_equities_tops_iextp_v1_6_6_dissect.ask_size = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.ask_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.ask_size(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
iex_equities_tops_iextp_v1_6_6_size_of.ask_price = 8

-- Display: Ask Price
iex_equities_tops_iextp_v1_6_6_display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
translate.ask_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Ask Price
iex_equities_tops_iextp_v1_6_6_dissect.ask_price = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.ask_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.ask_price(raw)
  local display = iex_equities_tops_iextp_v1_6_6_display.ask_price(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
iex_equities_tops_iextp_v1_6_6_size_of.bid_price = 8

-- Display: Bid Price
iex_equities_tops_iextp_v1_6_6_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
translate.bid_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Bid Price
iex_equities_tops_iextp_v1_6_6_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.bid_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.bid_price(raw)
  local display = iex_equities_tops_iextp_v1_6_6_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
iex_equities_tops_iextp_v1_6_6_size_of.bid_size = 4

-- Display: Bid Size
iex_equities_tops_iextp_v1_6_6_display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
iex_equities_tops_iextp_v1_6_6_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.bid_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Quote Update Flags
iex_equities_tops_iextp_v1_6_6_size_of.quote_update_flags = 1

-- Display: Quote Update Flags
iex_equities_tops_iextp_v1_6_6_display.quote_update_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Symbol Availability flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Symbol Availability|"
  end
  -- Is Market Session flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Market Session|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Quote Update Flags
iex_equities_tops_iextp_v1_6_6_dissect.quote_update_flags_bits = function(buffer, offset, packet, parent)

  -- Symbol Availability: 1 Bit
  parent:add(iex_equities_tops_iextp_v1_6_6.fields.symbol_availability, buffer(offset, 1))

  -- Market Session: 1 Bit
  parent:add(iex_equities_tops_iextp_v1_6_6.fields.market_session, buffer(offset, 1))

  -- Unused 6: 6 Bit
  parent:add(iex_equities_tops_iextp_v1_6_6.fields.unused_6, buffer(offset, 1))
end

-- Dissect: Quote Update Flags
iex_equities_tops_iextp_v1_6_6_dissect.quote_update_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = iex_equities_tops_iextp_v1_6_6_display.quote_update_flags(range, packet, parent)
  local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.quote_update_flags, range, display)

  if show.quote_update_flags then
    iex_equities_tops_iextp_v1_6_6_dissect.quote_update_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Quote Update Message
iex_equities_tops_iextp_v1_6_6_size_of.quote_update_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.quote_update_flags

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.timestamp

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.symbol

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.bid_size

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.bid_price

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.ask_price

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.ask_size

  return index
end

-- Display: Quote Update Message
iex_equities_tops_iextp_v1_6_6_display.quote_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Message
iex_equities_tops_iextp_v1_6_6_dissect.quote_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Update Flags: Struct of 3 fields
  index, quote_update_flags = iex_equities_tops_iextp_v1_6_6_dissect.quote_update_flags(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_tops_iextp_v1_6_6_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_tops_iextp_v1_6_6_dissect.symbol(buffer, index, packet, parent)

  -- Bid Size: Integer
  index, bid_size = iex_equities_tops_iextp_v1_6_6_dissect.bid_size(buffer, index, packet, parent)

  -- Bid Price: Price
  index, bid_price = iex_equities_tops_iextp_v1_6_6_dissect.bid_price(buffer, index, packet, parent)

  -- Ask Price: Price
  index, ask_price = iex_equities_tops_iextp_v1_6_6_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: Integer
  index, ask_size = iex_equities_tops_iextp_v1_6_6_dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Message
iex_equities_tops_iextp_v1_6_6_dissect.quote_update_message = function(buffer, offset, packet, parent)
  if show.quote_update_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.quote_update_message, buffer(offset, 0))
    local index = iex_equities_tops_iextp_v1_6_6_dissect.quote_update_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_tops_iextp_v1_6_6_display.quote_update_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_tops_iextp_v1_6_6_dissect.quote_update_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Detail
iex_equities_tops_iextp_v1_6_6_size_of.detail = 1

-- Display: Detail
iex_equities_tops_iextp_v1_6_6_display.detail = function(value)
  if value == " " then
    return "Detail: No Price Test In Place (<whitespace>)"
  end
  if value == "A" then
    return "Detail: Activated (A)"
  end
  if value == "C" then
    return "Detail: Continued (C)"
  end
  if value == "D" then
    return "Detail: Deactivated (D)"
  end
  if value == "N" then
    return "Detail: Not Available (N)"
  end

  return "Detail: Unknown("..value..")"
end

-- Dissect: Detail
iex_equities_tops_iextp_v1_6_6_dissect.detail = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.detail
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_tops_iextp_v1_6_6_display.detail(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.detail, range, value, display)

  return offset + length, value
end

-- Size: Short Sale Price Test Status
iex_equities_tops_iextp_v1_6_6_size_of.short_sale_price_test_status = 1

-- Display: Short Sale Price Test Status
iex_equities_tops_iextp_v1_6_6_display.short_sale_price_test_status = function(value)
  if value == 0 then
    return "Short Sale Price Test Status: Not In Effect (0)"
  end
  if value == 1 then
    return "Short Sale Price Test Status: In Effect (1)"
  end

  return "Short Sale Price Test Status: Unknown("..value..")"
end

-- Dissect: Short Sale Price Test Status
iex_equities_tops_iextp_v1_6_6_dissect.short_sale_price_test_status = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.short_sale_price_test_status
  local range = buffer(offset, length)
  local value = range:uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.short_sale_price_test_status(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.short_sale_price_test_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Short Sale Price Test Status Message
iex_equities_tops_iextp_v1_6_6_size_of.short_sale_price_test_status_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.short_sale_price_test_status

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.timestamp

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.symbol

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.detail

  return index
end

-- Display: Short Sale Price Test Status Message
iex_equities_tops_iextp_v1_6_6_display.short_sale_price_test_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Sale Price Test Status Message
iex_equities_tops_iextp_v1_6_6_dissect.short_sale_price_test_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Short Sale Price Test Status: Byte (int)
  index, short_sale_price_test_status = iex_equities_tops_iextp_v1_6_6_dissect.short_sale_price_test_status(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_tops_iextp_v1_6_6_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_tops_iextp_v1_6_6_dissect.symbol(buffer, index, packet, parent)

  -- Detail: Byte
  index, detail = iex_equities_tops_iextp_v1_6_6_dissect.detail(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Sale Price Test Status Message
iex_equities_tops_iextp_v1_6_6_dissect.short_sale_price_test_status_message = function(buffer, offset, packet, parent)
  if show.short_sale_price_test_status_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.short_sale_price_test_status_message, buffer(offset, 0))
    local index = iex_equities_tops_iextp_v1_6_6_dissect.short_sale_price_test_status_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_tops_iextp_v1_6_6_display.short_sale_price_test_status_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_tops_iextp_v1_6_6_dissect.short_sale_price_test_status_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Operational Halt Status
iex_equities_tops_iextp_v1_6_6_size_of.operational_halt_status = 1

-- Display: Operational Halt Status
iex_equities_tops_iextp_v1_6_6_display.operational_halt_status = function(value)
  if value == "O" then
    return "Operational Halt Status: Iex Specific Operational Trading Halt (O)"
  end
  if value == "N" then
    return "Operational Halt Status: Not Operationally Halted On Iex (N)"
  end

  return "Operational Halt Status: Unknown("..value..")"
end

-- Dissect: Operational Halt Status
iex_equities_tops_iextp_v1_6_6_dissect.operational_halt_status = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.operational_halt_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_tops_iextp_v1_6_6_display.operational_halt_status(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.operational_halt_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Operational Halt Status Message
iex_equities_tops_iextp_v1_6_6_size_of.operational_halt_status_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.operational_halt_status

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.timestamp

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.symbol

  return index
end

-- Display: Operational Halt Status Message
iex_equities_tops_iextp_v1_6_6_display.operational_halt_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Status Message
iex_equities_tops_iextp_v1_6_6_dissect.operational_halt_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Operational Halt Status: Byte
  index, operational_halt_status = iex_equities_tops_iextp_v1_6_6_dissect.operational_halt_status(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_tops_iextp_v1_6_6_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_tops_iextp_v1_6_6_dissect.symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Status Message
iex_equities_tops_iextp_v1_6_6_dissect.operational_halt_status_message = function(buffer, offset, packet, parent)
  if show.operational_halt_status_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.operational_halt_status_message, buffer(offset, 0))
    local index = iex_equities_tops_iextp_v1_6_6_dissect.operational_halt_status_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_tops_iextp_v1_6_6_display.operational_halt_status_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_tops_iextp_v1_6_6_dissect.operational_halt_status_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Retail Liquidity Indicator
iex_equities_tops_iextp_v1_6_6_size_of.retail_liquidity_indicator = 1

-- Display: Retail Liquidity Indicator
iex_equities_tops_iextp_v1_6_6_display.retail_liquidity_indicator = function(value)
  if value == " " then
    return "Retail Liquidity Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Retail Liquidity Indicator: Buy Interest (A)"
  end
  if value == "B" then
    return "Retail Liquidity Indicator: Sell Interest (B)"
  end
  if value == "C" then
    return "Retail Liquidity Indicator: Buy And Sell Interest (C)"
  end

  return "Retail Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Retail Liquidity Indicator
iex_equities_tops_iextp_v1_6_6_dissect.retail_liquidity_indicator = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.retail_liquidity_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_tops_iextp_v1_6_6_display.retail_liquidity_indicator(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.retail_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retail Liquidity Indicator Message
iex_equities_tops_iextp_v1_6_6_size_of.retail_liquidity_indicator_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.retail_liquidity_indicator

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.timestamp

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.symbol

  return index
end

-- Display: Retail Liquidity Indicator Message
iex_equities_tops_iextp_v1_6_6_display.retail_liquidity_indicator_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Liquidity Indicator Message
iex_equities_tops_iextp_v1_6_6_dissect.retail_liquidity_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Retail Liquidity Indicator: Byte
  index, retail_liquidity_indicator = iex_equities_tops_iextp_v1_6_6_dissect.retail_liquidity_indicator(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_tops_iextp_v1_6_6_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_tops_iextp_v1_6_6_dissect.symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Liquidity Indicator Message
iex_equities_tops_iextp_v1_6_6_dissect.retail_liquidity_indicator_message = function(buffer, offset, packet, parent)
  if show.retail_liquidity_indicator_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.retail_liquidity_indicator_message, buffer(offset, 0))
    local index = iex_equities_tops_iextp_v1_6_6_dissect.retail_liquidity_indicator_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_tops_iextp_v1_6_6_display.retail_liquidity_indicator_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_tops_iextp_v1_6_6_dissect.retail_liquidity_indicator_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Reason
iex_equities_tops_iextp_v1_6_6_size_of.reason = 4

-- Display: Reason
iex_equities_tops_iextp_v1_6_6_display.reason = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
iex_equities_tops_iextp_v1_6_6_dissect.reason = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.reason
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = iex_equities_tops_iextp_v1_6_6_display.reason(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
iex_equities_tops_iextp_v1_6_6_size_of.trading_status = 1

-- Display: Trading Status
iex_equities_tops_iextp_v1_6_6_display.trading_status = function(value)
  if value == "H" then
    return "Trading Status: Trading Halted Across All Us Equity Markets (H)"
  end
  if value == "O" then
    return "Trading Status: Trading Halt Released Into An Order Acceptance Period On Iex (O)"
  end
  if value == "P" then
    return "Trading Status: Trading Paused And Order Acceptance Period On Iex (P)"
  end
  if value == "T" then
    return "Trading Status: Trading On Iex (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
iex_equities_tops_iextp_v1_6_6_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_tops_iextp_v1_6_6_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Status Message
iex_equities_tops_iextp_v1_6_6_size_of.trading_status_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.trading_status

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.timestamp

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.symbol

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.reason

  return index
end

-- Display: Trading Status Message
iex_equities_tops_iextp_v1_6_6_display.trading_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
iex_equities_tops_iextp_v1_6_6_dissect.trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Status: Byte
  index, trading_status = iex_equities_tops_iextp_v1_6_6_dissect.trading_status(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_tops_iextp_v1_6_6_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_tops_iextp_v1_6_6_dissect.symbol(buffer, index, packet, parent)

  -- Reason: String
  index, reason = iex_equities_tops_iextp_v1_6_6_dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
iex_equities_tops_iextp_v1_6_6_dissect.trading_status_message = function(buffer, offset, packet, parent)
  if show.trading_status_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.trading_status_message, buffer(offset, 0))
    local index = iex_equities_tops_iextp_v1_6_6_dissect.trading_status_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_tops_iextp_v1_6_6_display.trading_status_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_tops_iextp_v1_6_6_dissect.trading_status_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Luld Tier
iex_equities_tops_iextp_v1_6_6_size_of.luld_tier = 1

-- Display: Luld Tier
iex_equities_tops_iextp_v1_6_6_display.luld_tier = function(value)
  if value == 0 then
    return "Luld Tier: Not Applicable (0)"
  end
  if value == 1 then
    return "Luld Tier: Tier 1 Nms Stock (1)"
  end
  if value == 2 then
    return "Luld Tier: Tier 2 Nms Stock (2)"
  end

  return "Luld Tier: Unknown("..value..")"
end

-- Dissect: Luld Tier
iex_equities_tops_iextp_v1_6_6_dissect.luld_tier = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.luld_tier
  local range = buffer(offset, length)
  local value = range:uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.luld_tier(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.luld_tier, range, value, display)

  return offset + length, value
end

-- Size: Adjusted Poc Price
iex_equities_tops_iextp_v1_6_6_size_of.adjusted_poc_price = 8

-- Display: Adjusted Poc Price
iex_equities_tops_iextp_v1_6_6_display.adjusted_poc_price = function(value)
  return "Adjusted Poc Price: "..value
end

-- Translate: Adjusted Poc Price
translate.adjusted_poc_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Adjusted Poc Price
iex_equities_tops_iextp_v1_6_6_dissect.adjusted_poc_price = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.adjusted_poc_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.adjusted_poc_price(raw)
  local display = iex_equities_tops_iextp_v1_6_6_display.adjusted_poc_price(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.adjusted_poc_price, range, value, display)

  return offset + length, value
end

-- Size: Round Lot Size
iex_equities_tops_iextp_v1_6_6_size_of.round_lot_size = 4

-- Display: Round Lot Size
iex_equities_tops_iextp_v1_6_6_display.round_lot_size = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
iex_equities_tops_iextp_v1_6_6_dissect.round_lot_size = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.round_lot_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.round_lot_size(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Security Directory Flags
iex_equities_tops_iextp_v1_6_6_size_of.security_directory_flags = 1

-- Display: Security Directory Flags
iex_equities_tops_iextp_v1_6_6_display.security_directory_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Test Security flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Test Security|"
  end
  -- Is When Issued flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."When Issued|"
  end
  -- Is Etp flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Etp|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Security Directory Flags
iex_equities_tops_iextp_v1_6_6_dissect.security_directory_flags_bits = function(buffer, offset, packet, parent)

  -- Test Security: 1 Bit
  parent:add(iex_equities_tops_iextp_v1_6_6.fields.test_security, buffer(offset, 1))

  -- When Issued: 1 Bit
  parent:add(iex_equities_tops_iextp_v1_6_6.fields.when_issued, buffer(offset, 1))

  -- Etp: 1 Bit
  parent:add(iex_equities_tops_iextp_v1_6_6.fields.etp, buffer(offset, 1))

  -- Unused 5: 5 Bit
  parent:add(iex_equities_tops_iextp_v1_6_6.fields.unused_5, buffer(offset, 1))
end

-- Dissect: Security Directory Flags
iex_equities_tops_iextp_v1_6_6_dissect.security_directory_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = iex_equities_tops_iextp_v1_6_6_display.security_directory_flags(range, packet, parent)
  local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.security_directory_flags, range, display)

  if show.security_directory_flags then
    iex_equities_tops_iextp_v1_6_6_dissect.security_directory_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Security Directory Message
iex_equities_tops_iextp_v1_6_6_size_of.security_directory_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.security_directory_flags

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.timestamp

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.symbol

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.round_lot_size

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.adjusted_poc_price

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.luld_tier

  return index
end

-- Display: Security Directory Message
iex_equities_tops_iextp_v1_6_6_display.security_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Directory Message
iex_equities_tops_iextp_v1_6_6_dissect.security_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Directory Flags: Struct of 4 fields
  index, security_directory_flags = iex_equities_tops_iextp_v1_6_6_dissect.security_directory_flags(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_tops_iextp_v1_6_6_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_tops_iextp_v1_6_6_dissect.symbol(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = iex_equities_tops_iextp_v1_6_6_dissect.round_lot_size(buffer, index, packet, parent)

  -- Adjusted Poc Price: Price
  index, adjusted_poc_price = iex_equities_tops_iextp_v1_6_6_dissect.adjusted_poc_price(buffer, index, packet, parent)

  -- Luld Tier: Byte (int)
  index, luld_tier = iex_equities_tops_iextp_v1_6_6_dissect.luld_tier(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Directory Message
iex_equities_tops_iextp_v1_6_6_dissect.security_directory_message = function(buffer, offset, packet, parent)
  if show.security_directory_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.security_directory_message, buffer(offset, 0))
    local index = iex_equities_tops_iextp_v1_6_6_dissect.security_directory_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_tops_iextp_v1_6_6_display.security_directory_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_tops_iextp_v1_6_6_dissect.security_directory_message_fields(buffer, offset, packet, element)
  end
end

-- Size: System Event
iex_equities_tops_iextp_v1_6_6_size_of.system_event = 1

-- Display: System Event
iex_equities_tops_iextp_v1_6_6_display.system_event = function(value)
  if value == "O" then
    return "System Event: Start Of Messages (O)"
  end
  if value == "S" then
    return "System Event: Start Of System Hours (S)"
  end
  if value == "R" then
    return "System Event: Start Of Regular Market Hours (R)"
  end
  if value == "M" then
    return "System Event: End Of Regular Market Hours (M)"
  end
  if value == "E" then
    return "System Event: End Of System Hours (E)"
  end
  if value == "C" then
    return "System Event: End Of Messages (C)"
  end

  return "System Event: Unknown("..value..")"
end

-- Dissect: System Event
iex_equities_tops_iextp_v1_6_6_dissect.system_event = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.system_event
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_tops_iextp_v1_6_6_display.system_event(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.system_event, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
iex_equities_tops_iextp_v1_6_6_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.system_event

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.timestamp

  return index
end

-- Display: System Event Message
iex_equities_tops_iextp_v1_6_6_display.system_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
iex_equities_tops_iextp_v1_6_6_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- System Event: Byte
  index, system_event = iex_equities_tops_iextp_v1_6_6_dissect.system_event(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_tops_iextp_v1_6_6_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
iex_equities_tops_iextp_v1_6_6_dissect.system_event_message = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.system_event_message, buffer(offset, 0))
    local index = iex_equities_tops_iextp_v1_6_6_dissect.system_event_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_tops_iextp_v1_6_6_display.system_event_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_tops_iextp_v1_6_6_dissect.system_event_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Message Data
iex_equities_tops_iextp_v1_6_6_size_of.message_data = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return iex_equities_tops_iextp_v1_6_6_size_of.system_event_message(buffer, offset)
  end
  -- Size of Security Directory Message
  if message_type == "D" then
    return iex_equities_tops_iextp_v1_6_6_size_of.security_directory_message(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == "H" then
    return iex_equities_tops_iextp_v1_6_6_size_of.trading_status_message(buffer, offset)
  end
  -- Size of Retail Liquidity Indicator Message
  if message_type == "I" then
    return iex_equities_tops_iextp_v1_6_6_size_of.retail_liquidity_indicator_message(buffer, offset)
  end
  -- Size of Operational Halt Status Message
  if message_type == "O" then
    return iex_equities_tops_iextp_v1_6_6_size_of.operational_halt_status_message(buffer, offset)
  end
  -- Size of Short Sale Price Test Status Message
  if message_type == "P" then
    return iex_equities_tops_iextp_v1_6_6_size_of.short_sale_price_test_status_message(buffer, offset)
  end
  -- Size of Quote Update Message
  if message_type == "Q" then
    return iex_equities_tops_iextp_v1_6_6_size_of.quote_update_message(buffer, offset)
  end
  -- Size of Trade Report Message
  if message_type == "T" then
    return iex_equities_tops_iextp_v1_6_6_size_of.trade_report_message(buffer, offset)
  end
  -- Size of Official Price Message
  if message_type == "X" then
    return iex_equities_tops_iextp_v1_6_6_size_of.official_price_message(buffer, offset)
  end
  -- Size of Trade Break Message
  if message_type == "B" then
    return iex_equities_tops_iextp_v1_6_6_size_of.trade_break_message(buffer, offset)
  end
  -- Size of Auction Information Message
  if message_type == "A" then
    return iex_equities_tops_iextp_v1_6_6_size_of.auction_information_message(buffer, offset)
  end

  return 0
end

-- Display: Message Data
iex_equities_tops_iextp_v1_6_6_display.message_data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message Data
iex_equities_tops_iextp_v1_6_6_dissect.message_data_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return iex_equities_tops_iextp_v1_6_6_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Directory Message
  if message_type == "D" then
    return iex_equities_tops_iextp_v1_6_6_dissect.security_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == "H" then
    return iex_equities_tops_iextp_v1_6_6_dissect.trading_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Retail Liquidity Indicator Message
  if message_type == "I" then
    return iex_equities_tops_iextp_v1_6_6_dissect.retail_liquidity_indicator_message(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Status Message
  if message_type == "O" then
    return iex_equities_tops_iextp_v1_6_6_dissect.operational_halt_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Sale Price Test Status Message
  if message_type == "P" then
    return iex_equities_tops_iextp_v1_6_6_dissect.short_sale_price_test_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Message
  if message_type == "Q" then
    return iex_equities_tops_iextp_v1_6_6_dissect.quote_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "T" then
    return iex_equities_tops_iextp_v1_6_6_dissect.trade_report_message(buffer, offset, packet, parent)
  end
  -- Dissect Official Price Message
  if message_type == "X" then
    return iex_equities_tops_iextp_v1_6_6_dissect.official_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == "B" then
    return iex_equities_tops_iextp_v1_6_6_dissect.trade_break_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Information Message
  if message_type == "A" then
    return iex_equities_tops_iextp_v1_6_6_dissect.auction_information_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message Data
iex_equities_tops_iextp_v1_6_6_dissect.message_data = function(buffer, offset, packet, parent, message_type)
  if not show.message_data then
    return iex_equities_tops_iextp_v1_6_6_dissect.message_data_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = iex_equities_tops_iextp_v1_6_6_size_of.message_data(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = iex_equities_tops_iextp_v1_6_6_display.message_data(buffer, packet, parent)
  local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.message_data, range, display)

  return iex_equities_tops_iextp_v1_6_6_dissect.message_data_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
iex_equities_tops_iextp_v1_6_6_size_of.message_type = 1

-- Display: Message Type
iex_equities_tops_iextp_v1_6_6_display.message_type = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "D" then
    return "Message Type: Security Directory Message (D)"
  end
  if value == "H" then
    return "Message Type: Trading Status Message (H)"
  end
  if value == "I" then
    return "Message Type: Retail Liquidity Indicator Message (I)"
  end
  if value == "O" then
    return "Message Type: Operational Halt Status Message (O)"
  end
  if value == "P" then
    return "Message Type: Short Sale Price Test Status Message (P)"
  end
  if value == "Q" then
    return "Message Type: Quote Update Message (Q)"
  end
  if value == "T" then
    return "Message Type: Trade Report Message (T)"
  end
  if value == "X" then
    return "Message Type: Official Price Message (X)"
  end
  if value == "B" then
    return "Message Type: Trade Break Message (B)"
  end
  if value == "A" then
    return "Message Type: Auction Information Message (A)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
iex_equities_tops_iextp_v1_6_6_dissect.message_type = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_tops_iextp_v1_6_6_display.message_type(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
iex_equities_tops_iextp_v1_6_6_size_of.message_length = 2

-- Display: Message Length
iex_equities_tops_iextp_v1_6_6_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
iex_equities_tops_iextp_v1_6_6_dissect.message_length = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.message_length(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
iex_equities_tops_iextp_v1_6_6_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.message_length

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.message_type

  return index
end

-- Display: Message Header
iex_equities_tops_iextp_v1_6_6_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
iex_equities_tops_iextp_v1_6_6_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = iex_equities_tops_iextp_v1_6_6_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 11 values
  index, message_type = iex_equities_tops_iextp_v1_6_6_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
iex_equities_tops_iextp_v1_6_6_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.message_header, buffer(offset, 0))
    local index = iex_equities_tops_iextp_v1_6_6_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_tops_iextp_v1_6_6_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_tops_iextp_v1_6_6_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Display: Message
iex_equities_tops_iextp_v1_6_6_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
iex_equities_tops_iextp_v1_6_6_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(iex_equities_tops_iextp_v1_6_6.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = iex_equities_tops_iextp_v1_6_6_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Message Data: Runtime Type with 11 branches
  index = iex_equities_tops_iextp_v1_6_6_dissect.message_data(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
iex_equities_tops_iextp_v1_6_6_dissect.message = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(iex_equities_tops_iextp_v1_6_6.fields.message, buffer(offset, 0))
    local current = iex_equities_tops_iextp_v1_6_6_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = iex_equities_tops_iextp_v1_6_6_display.message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    iex_equities_tops_iextp_v1_6_6_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Size: Send Time
iex_equities_tops_iextp_v1_6_6_size_of.send_time = 8

-- Display: Send Time
iex_equities_tops_iextp_v1_6_6_display.send_time = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Send Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
iex_equities_tops_iextp_v1_6_6_dissect.send_time = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.send_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_tops_iextp_v1_6_6_display.send_time(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.send_time, range, value, display)

  return offset + length, value
end

-- Size: First Message Sequence Number
iex_equities_tops_iextp_v1_6_6_size_of.first_message_sequence_number = 8

-- Display: First Message Sequence Number
iex_equities_tops_iextp_v1_6_6_display.first_message_sequence_number = function(value)
  return "First Message Sequence Number: "..value
end

-- Dissect: First Message Sequence Number
iex_equities_tops_iextp_v1_6_6_dissect.first_message_sequence_number = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.first_message_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_tops_iextp_v1_6_6_display.first_message_sequence_number(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.first_message_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Stream Offset
iex_equities_tops_iextp_v1_6_6_size_of.stream_offset = 8

-- Display: Stream Offset
iex_equities_tops_iextp_v1_6_6_display.stream_offset = function(value)
  return "Stream Offset: "..value
end

-- Dissect: Stream Offset
iex_equities_tops_iextp_v1_6_6_dissect.stream_offset = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.stream_offset
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_tops_iextp_v1_6_6_display.stream_offset(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.stream_offset, range, value, display)

  return offset + length, value
end

-- Size: Message Count
iex_equities_tops_iextp_v1_6_6_size_of.message_count = 2

-- Display: Message Count
iex_equities_tops_iextp_v1_6_6_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
iex_equities_tops_iextp_v1_6_6_dissect.message_count = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.message_count(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Payload Length
iex_equities_tops_iextp_v1_6_6_size_of.payload_length = 2

-- Display: Payload Length
iex_equities_tops_iextp_v1_6_6_display.payload_length = function(value)
  return "Payload Length: "..value
end

-- Dissect: Payload Length
iex_equities_tops_iextp_v1_6_6_dissect.payload_length = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.payload_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.payload_length(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.payload_length, range, value, display)

  return offset + length, value
end

-- Size: Session Id
iex_equities_tops_iextp_v1_6_6_size_of.session_id = 4

-- Display: Session Id
iex_equities_tops_iextp_v1_6_6_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
iex_equities_tops_iextp_v1_6_6_dissect.session_id = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.session_id(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Channel Id
iex_equities_tops_iextp_v1_6_6_size_of.channel_id = 4

-- Display: Channel Id
iex_equities_tops_iextp_v1_6_6_display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
iex_equities_tops_iextp_v1_6_6_dissect.channel_id = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.channel_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.channel_id(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Size: Message Protocol Id
iex_equities_tops_iextp_v1_6_6_size_of.message_protocol_id = 2

-- Display: Message Protocol Id
iex_equities_tops_iextp_v1_6_6_display.message_protocol_id = function(value)
  return "Message Protocol Id: "..value
end

-- Dissect: Message Protocol Id
iex_equities_tops_iextp_v1_6_6_dissect.message_protocol_id = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.message_protocol_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.message_protocol_id(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.message_protocol_id, range, value, display)

  return offset + length, value
end

-- Size: Reserved
iex_equities_tops_iextp_v1_6_6_size_of.reserved = 1

-- Display: Reserved
iex_equities_tops_iextp_v1_6_6_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
iex_equities_tops_iextp_v1_6_6_dissect.reserved = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.reserved
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = iex_equities_tops_iextp_v1_6_6_display.reserved(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Version
iex_equities_tops_iextp_v1_6_6_size_of.version = 1

-- Display: Version
iex_equities_tops_iextp_v1_6_6_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
iex_equities_tops_iextp_v1_6_6_dissect.version = function(buffer, offset, packet, parent)
  local length = iex_equities_tops_iextp_v1_6_6_size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_tops_iextp_v1_6_6_display.version(value, buffer, offset, packet, parent)

  parent:add(iex_equities_tops_iextp_v1_6_6.fields.version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Iex Tp Header
iex_equities_tops_iextp_v1_6_6_size_of.iex_tp_header = function(buffer, offset)
  local index = 0

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.version

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.reserved

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.message_protocol_id

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.channel_id

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.session_id

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.payload_length

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.message_count

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.stream_offset

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.first_message_sequence_number

  index = index + iex_equities_tops_iextp_v1_6_6_size_of.send_time

  return index
end

-- Display: Iex Tp Header
iex_equities_tops_iextp_v1_6_6_display.iex_tp_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Iex Tp Header
iex_equities_tops_iextp_v1_6_6_dissect.iex_tp_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = iex_equities_tops_iextp_v1_6_6_dissect.version(buffer, index, packet, parent)

  -- Reserved: 1 Byte
  index, reserved = iex_equities_tops_iextp_v1_6_6_dissect.reserved(buffer, index, packet, parent)

  -- Message Protocol Id: 2 Byte Unsigned Fixed Width Integer
  index, message_protocol_id = iex_equities_tops_iextp_v1_6_6_dissect.message_protocol_id(buffer, index, packet, parent)

  -- Channel Id: 4 Byte Unsigned Fixed Width Integer
  index, channel_id = iex_equities_tops_iextp_v1_6_6_dissect.channel_id(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = iex_equities_tops_iextp_v1_6_6_dissect.session_id(buffer, index, packet, parent)

  -- Payload Length: 2 Byte Unsigned Fixed Width Integer
  index, payload_length = iex_equities_tops_iextp_v1_6_6_dissect.payload_length(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = iex_equities_tops_iextp_v1_6_6_dissect.message_count(buffer, index, packet, parent)

  -- Stream Offset: 8 Byte Unsigned Fixed Width Integer
  index, stream_offset = iex_equities_tops_iextp_v1_6_6_dissect.stream_offset(buffer, index, packet, parent)

  -- First Message Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, first_message_sequence_number = iex_equities_tops_iextp_v1_6_6_dissect.first_message_sequence_number(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = iex_equities_tops_iextp_v1_6_6_dissect.send_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Iex Tp Header
iex_equities_tops_iextp_v1_6_6_dissect.iex_tp_header = function(buffer, offset, packet, parent)
  if show.iex_tp_header then
    -- Optionally add element to protocol tree
    local element = parent:add(iex_equities_tops_iextp_v1_6_6.fields.iex_tp_header, buffer(offset, 0))
    local index = iex_equities_tops_iextp_v1_6_6_dissect.iex_tp_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = iex_equities_tops_iextp_v1_6_6_display.iex_tp_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return iex_equities_tops_iextp_v1_6_6_dissect.iex_tp_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
iex_equities_tops_iextp_v1_6_6_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Iex Tp Header: Struct of 10 fields
  index, iex_tp_header = iex_equities_tops_iextp_v1_6_6_dissect.iex_tp_header(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 26, 2):le_uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = iex_equities_tops_iextp_v1_6_6_dissect.message(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function iex_equities_tops_iextp_v1_6_6.init()
end

-- Dissector for Iex Equities Tops IexTp 1.6.6
function iex_equities_tops_iextp_v1_6_6.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = iex_equities_tops_iextp_v1_6_6.name

  -- Dissect protocol
  local protocol = parent:add(iex_equities_tops_iextp_v1_6_6, buffer(), iex_equities_tops_iextp_v1_6_6.description, "("..buffer:len().." Bytes)")
  return iex_equities_tops_iextp_v1_6_6_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, iex_equities_tops_iextp_v1_6_6)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.iex_equities_tops_iextp_v1_6_6_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Iex Equities Tops IexTp 1.6.6
local function iex_equities_tops_iextp_v1_6_6_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.iex_equities_tops_iextp_v1_6_6_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = iex_equities_tops_iextp_v1_6_6
  iex_equities_tops_iextp_v1_6_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Iex Equities Tops IexTp 1.6.6
iex_equities_tops_iextp_v1_6_6:register_heuristic("udp", iex_equities_tops_iextp_v1_6_6_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Investors Exchange
--   Version: 1.6.6
--   Date: Tuesday, October 19, 2021
--   Specification: IEX TOPS Specification v1.66.pdf
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
