-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Iex Equities Deep IexTp 1.0.8 Protocol
local omi_iex_equities_deep_iextp_v1_0_8 = Proto("Iex.Equities.Deep.IexTp.v1.0.8.Lua", "Iex Equities Deep IexTp 1.0.8")

-- Protocol table
local iex_equities_deep_iextp_v1_0_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Iex Equities Deep IexTp 1.0.8 Fields
omi_iex_equities_deep_iextp_v1_0_8.fields.adjusted_poc_price = ProtoField.new("Adjusted Poc Price", "iex.equities.deep.iextp.v1.0.8.adjustedpocprice", ftypes.DOUBLE)
omi_iex_equities_deep_iextp_v1_0_8.fields.auction_book_clearing_price = ProtoField.new("Auction Book Clearing Price", "iex.equities.deep.iextp.v1.0.8.auctionbookclearingprice", ftypes.DOUBLE)
omi_iex_equities_deep_iextp_v1_0_8.fields.auction_type = ProtoField.new("Auction Type", "iex.equities.deep.iextp.v1.0.8.auctiontype", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.channel_id = ProtoField.new("Channel Id", "iex.equities.deep.iextp.v1.0.8.channelid", ftypes.UINT32)
omi_iex_equities_deep_iextp_v1_0_8.fields.collar_reference_price = ProtoField.new("Collar Reference Price", "iex.equities.deep.iextp.v1.0.8.collarreferenceprice", ftypes.DOUBLE)
omi_iex_equities_deep_iextp_v1_0_8.fields.detail = ProtoField.new("Detail", "iex.equities.deep.iextp.v1.0.8.detail", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.etp = ProtoField.new("Etp", "iex.equities.deep.iextp.v1.0.8.etp", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_iex_equities_deep_iextp_v1_0_8.fields.event_flags = ProtoField.new("Event Flags", "iex.equities.deep.iextp.v1.0.8.eventflags", ftypes.UINT8)
omi_iex_equities_deep_iextp_v1_0_8.fields.extended_hours = ProtoField.new("Extended Hours", "iex.equities.deep.iextp.v1.0.8.extendedhours", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_iex_equities_deep_iextp_v1_0_8.fields.extension_number = ProtoField.new("Extension Number", "iex.equities.deep.iextp.v1.0.8.extensionnumber", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.first_message_sequence_number = ProtoField.new("First Message Sequence Number", "iex.equities.deep.iextp.v1.0.8.firstmessagesequencenumber", ftypes.UINT64)
omi_iex_equities_deep_iextp_v1_0_8.fields.iextp_header = ProtoField.new("Iextp Header", "iex.equities.deep.iextp.v1.0.8.iextpheader", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "iex.equities.deep.iextp.v1.0.8.imbalanceshares", ftypes.UINT32)
omi_iex_equities_deep_iextp_v1_0_8.fields.imbalance_side = ProtoField.new("Imbalance Side", "iex.equities.deep.iextp.v1.0.8.imbalanceside", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.indicative_clearing_price = ProtoField.new("Indicative Clearing Price", "iex.equities.deep.iextp.v1.0.8.indicativeclearingprice", ftypes.DOUBLE)
omi_iex_equities_deep_iextp_v1_0_8.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "iex.equities.deep.iextp.v1.0.8.intermarketsweep", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_iex_equities_deep_iextp_v1_0_8.fields.lower_auction_collar = ProtoField.new("Lower Auction Collar", "iex.equities.deep.iextp.v1.0.8.lowerauctioncollar", ftypes.DOUBLE)
omi_iex_equities_deep_iextp_v1_0_8.fields.luld_tier = ProtoField.new("Luld Tier", "iex.equities.deep.iextp.v1.0.8.luldtier", ftypes.UINT8)
omi_iex_equities_deep_iextp_v1_0_8.fields.message = ProtoField.new("Message", "iex.equities.deep.iextp.v1.0.8.message", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.message_count = ProtoField.new("Message Count", "iex.equities.deep.iextp.v1.0.8.messagecount", ftypes.UINT16)
omi_iex_equities_deep_iextp_v1_0_8.fields.message_data = ProtoField.new("Message Data", "iex.equities.deep.iextp.v1.0.8.messagedata", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.message_header = ProtoField.new("Message Header", "iex.equities.deep.iextp.v1.0.8.messageheader", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.message_length = ProtoField.new("Message Length", "iex.equities.deep.iextp.v1.0.8.messagelength", ftypes.UINT16)
omi_iex_equities_deep_iextp_v1_0_8.fields.message_protocol_id = ProtoField.new("Message Protocol Id", "iex.equities.deep.iextp.v1.0.8.messageprotocolid", ftypes.UINT16)
omi_iex_equities_deep_iextp_v1_0_8.fields.message_type = ProtoField.new("Message Type", "iex.equities.deep.iextp.v1.0.8.messagetype", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.odd_lot = ProtoField.new("Odd Lot", "iex.equities.deep.iextp.v1.0.8.oddlot", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_iex_equities_deep_iextp_v1_0_8.fields.official_price = ProtoField.new("Official Price", "iex.equities.deep.iextp.v1.0.8.officialprice", ftypes.DOUBLE)
omi_iex_equities_deep_iextp_v1_0_8.fields.operational_halt_status = ProtoField.new("Operational Halt Status", "iex.equities.deep.iextp.v1.0.8.operationalhaltstatus", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.packet = ProtoField.new("Packet", "iex.equities.deep.iextp.v1.0.8.packet", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.paired_shares = ProtoField.new("Paired Shares", "iex.equities.deep.iextp.v1.0.8.pairedshares", ftypes.UINT32)
omi_iex_equities_deep_iextp_v1_0_8.fields.payload_length = ProtoField.new("Payload Length", "iex.equities.deep.iextp.v1.0.8.payloadlength", ftypes.UINT16)
omi_iex_equities_deep_iextp_v1_0_8.fields.price = ProtoField.new("Price", "iex.equities.deep.iextp.v1.0.8.price", ftypes.DOUBLE)
omi_iex_equities_deep_iextp_v1_0_8.fields.price_type = ProtoField.new("Price Type", "iex.equities.deep.iextp.v1.0.8.pricetype", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.reason = ProtoField.new("Reason", "iex.equities.deep.iextp.v1.0.8.reason", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.reference_price = ProtoField.new("Reference Price", "iex.equities.deep.iextp.v1.0.8.referenceprice", ftypes.DOUBLE)
omi_iex_equities_deep_iextp_v1_0_8.fields.reserved = ProtoField.new("Reserved", "iex.equities.deep.iextp.v1.0.8.reserved", ftypes.BYTES)
omi_iex_equities_deep_iextp_v1_0_8.fields.retail_liquidity_indicator = ProtoField.new("Retail Liquidity Indicator", "iex.equities.deep.iextp.v1.0.8.retailliquidityindicator", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.round_lot_size = ProtoField.new("Round Lot Size", "iex.equities.deep.iextp.v1.0.8.roundlotsize", ftypes.UINT32)
omi_iex_equities_deep_iextp_v1_0_8.fields.sale_condition_flags = ProtoField.new("Sale Condition Flags", "iex.equities.deep.iextp.v1.0.8.saleconditionflags", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.scheduled_auction_time = ProtoField.new("Scheduled Auction Time", "iex.equities.deep.iextp.v1.0.8.scheduledauctiontime", ftypes.UINT32)
omi_iex_equities_deep_iextp_v1_0_8.fields.security_directory_flags = ProtoField.new("Security Directory Flags", "iex.equities.deep.iextp.v1.0.8.securitydirectoryflags", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.security_event = ProtoField.new("Security Event", "iex.equities.deep.iextp.v1.0.8.securityevent", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.send_time = ProtoField.new("Send Time", "iex.equities.deep.iextp.v1.0.8.sendtime", ftypes.UINT64)
omi_iex_equities_deep_iextp_v1_0_8.fields.session_id = ProtoField.new("Session Id", "iex.equities.deep.iextp.v1.0.8.sessionid", ftypes.UINT32)
omi_iex_equities_deep_iextp_v1_0_8.fields.short_sale_price_test_status = ProtoField.new("Short Sale Price Test Status", "iex.equities.deep.iextp.v1.0.8.shortsalepriceteststatus", ftypes.UINT8)
omi_iex_equities_deep_iextp_v1_0_8.fields.singleprice_cross_trade = ProtoField.new("Singleprice Cross Trade", "iex.equities.deep.iextp.v1.0.8.singlepricecrosstrade", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_iex_equities_deep_iextp_v1_0_8.fields.size = ProtoField.new("Size", "iex.equities.deep.iextp.v1.0.8.size", ftypes.UINT32)
omi_iex_equities_deep_iextp_v1_0_8.fields.stream_offset = ProtoField.new("Stream Offset", "iex.equities.deep.iextp.v1.0.8.streamoffset", ftypes.UINT64)
omi_iex_equities_deep_iextp_v1_0_8.fields.symbol = ProtoField.new("Symbol", "iex.equities.deep.iextp.v1.0.8.symbol", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.system_event = ProtoField.new("System Event", "iex.equities.deep.iextp.v1.0.8.systemevent", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.test_security = ProtoField.new("Test Security", "iex.equities.deep.iextp.v1.0.8.testsecurity", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_iex_equities_deep_iextp_v1_0_8.fields.timestamp = ProtoField.new("Timestamp", "iex.equities.deep.iextp.v1.0.8.timestamp", ftypes.INT64)
omi_iex_equities_deep_iextp_v1_0_8.fields.trade_id = ProtoField.new("Trade Id", "iex.equities.deep.iextp.v1.0.8.tradeid", ftypes.UINT64)
omi_iex_equities_deep_iextp_v1_0_8.fields.trade_through_exempt = ProtoField.new("Trade Through Exempt", "iex.equities.deep.iextp.v1.0.8.tradethroughexempt", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_iex_equities_deep_iextp_v1_0_8.fields.trading_status = ProtoField.new("Trading Status", "iex.equities.deep.iextp.v1.0.8.tradingstatus", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.unused_3 = ProtoField.new("Unused 3", "iex.equities.deep.iextp.v1.0.8.unused3", ftypes.UINT8, nil, base.DEC, 0x07)
omi_iex_equities_deep_iextp_v1_0_8.fields.unused_5 = ProtoField.new("Unused 5", "iex.equities.deep.iextp.v1.0.8.unused5", ftypes.UINT8, nil, base.DEC, 0x1F)
omi_iex_equities_deep_iextp_v1_0_8.fields.upper_auction_collar = ProtoField.new("Upper Auction Collar", "iex.equities.deep.iextp.v1.0.8.upperauctioncollar", ftypes.DOUBLE)
omi_iex_equities_deep_iextp_v1_0_8.fields.version = ProtoField.new("Version", "iex.equities.deep.iextp.v1.0.8.version", ftypes.UINT8)
omi_iex_equities_deep_iextp_v1_0_8.fields.when_issued = ProtoField.new("When Issued", "iex.equities.deep.iextp.v1.0.8.whenissued", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)

-- Iex Equities Deep IexTp 1.0.8 messages
omi_iex_equities_deep_iextp_v1_0_8.fields.auction_information_message = ProtoField.new("Auction Information Message", "iex.equities.deep.iextp.v1.0.8.auctioninformationmessage", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.official_price_message = ProtoField.new("Official Price Message", "iex.equities.deep.iextp.v1.0.8.officialpricemessage", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.operational_halt_status_message = ProtoField.new("Operational Halt Status Message", "iex.equities.deep.iextp.v1.0.8.operationalhaltstatusmessage", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.price_level_buy_update_message = ProtoField.new("Price Level Buy Update Message", "iex.equities.deep.iextp.v1.0.8.pricelevelbuyupdatemessage", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.price_level_sell_update_message = ProtoField.new("Price Level Sell Update Message", "iex.equities.deep.iextp.v1.0.8.pricelevelsellupdatemessage", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.retail_liquidity_indicator_message = ProtoField.new("Retail Liquidity Indicator Message", "iex.equities.deep.iextp.v1.0.8.retailliquidityindicatormessage", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.security_directory_message = ProtoField.new("Security Directory Message", "iex.equities.deep.iextp.v1.0.8.securitydirectorymessage", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.security_event_message = ProtoField.new("Security Event Message", "iex.equities.deep.iextp.v1.0.8.securityeventmessage", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.short_sale_price_test_status_message = ProtoField.new("Short Sale Price Test Status Message", "iex.equities.deep.iextp.v1.0.8.shortsalepriceteststatusmessage", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.system_event_message = ProtoField.new("System Event Message", "iex.equities.deep.iextp.v1.0.8.systemeventmessage", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.trade_break_message = ProtoField.new("Trade Break Message", "iex.equities.deep.iextp.v1.0.8.tradebreakmessage", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.trade_report_message = ProtoField.new("Trade Report Message", "iex.equities.deep.iextp.v1.0.8.tradereportmessage", ftypes.STRING)
omi_iex_equities_deep_iextp_v1_0_8.fields.trading_status_message = ProtoField.new("Trading Status Message", "iex.equities.deep.iextp.v1.0.8.tradingstatusmessage", ftypes.STRING)

-- Iex Equities Deep IexTp 1.0.8 generated fields
omi_iex_equities_deep_iextp_v1_0_8.fields.message_index = ProtoField.new("Message Index", "iex.equities.deep.iextp.v1.0.8.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Iex Equities Deep IexTp 1.0.8 Element Dissection Options
show.auction_information_message = true
show.iextp_header = true
show.message = true
show.message_header = true
show.official_price_message = true
show.operational_halt_status_message = true
show.packet = true
show.price_level_buy_update_message = true
show.price_level_sell_update_message = true
show.retail_liquidity_indicator_message = true
show.sale_condition_flags = true
show.security_directory_flags = true
show.security_directory_message = true
show.security_event_message = true
show.short_sale_price_test_status_message = true
show.system_event_message = true
show.trade_break_message = true
show.trade_report_message = true
show.trading_status_message = true
show.message_data = false

-- Register Iex Equities Deep IexTp 1.0.8 Show Options
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_auction_information_message = Pref.bool("Show Auction Information Message", show.auction_information_message, "Parse and add Auction Information Message to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_iextp_header = Pref.bool("Show Iextp Header", show.iextp_header, "Parse and add Iextp Header to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_official_price_message = Pref.bool("Show Official Price Message", show.official_price_message, "Parse and add Official Price Message to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_operational_halt_status_message = Pref.bool("Show Operational Halt Status Message", show.operational_halt_status_message, "Parse and add Operational Halt Status Message to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_price_level_buy_update_message = Pref.bool("Show Price Level Buy Update Message", show.price_level_buy_update_message, "Parse and add Price Level Buy Update Message to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_price_level_sell_update_message = Pref.bool("Show Price Level Sell Update Message", show.price_level_sell_update_message, "Parse and add Price Level Sell Update Message to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_retail_liquidity_indicator_message = Pref.bool("Show Retail Liquidity Indicator Message", show.retail_liquidity_indicator_message, "Parse and add Retail Liquidity Indicator Message to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_sale_condition_flags = Pref.bool("Show Sale Condition Flags", show.sale_condition_flags, "Parse and add Sale Condition Flags to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_security_directory_flags = Pref.bool("Show Security Directory Flags", show.security_directory_flags, "Parse and add Security Directory Flags to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_security_directory_message = Pref.bool("Show Security Directory Message", show.security_directory_message, "Parse and add Security Directory Message to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_security_event_message = Pref.bool("Show Security Event Message", show.security_event_message, "Parse and add Security Event Message to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_short_sale_price_test_status_message = Pref.bool("Show Short Sale Price Test Status Message", show.short_sale_price_test_status_message, "Parse and add Short Sale Price Test Status Message to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_trade_report_message = Pref.bool("Show Trade Report Message", show.trade_report_message, "Parse and add Trade Report Message to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
omi_iex_equities_deep_iextp_v1_0_8.prefs.show_message_data = Pref.bool("Show Message Data", show.message_data, "Parse and add Message Data to protocol tree")

-- Handle changed preferences
function omi_iex_equities_deep_iextp_v1_0_8.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.auction_information_message ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_auction_information_message then
    show.auction_information_message = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_auction_information_message
    changed = true
  end
  if show.iextp_header ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_iextp_header then
    show.iextp_header = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_iextp_header
    changed = true
  end
  if show.message ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_message then
    show.message = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_message_header then
    show.message_header = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_message_header
    changed = true
  end
  if show.official_price_message ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_official_price_message then
    show.official_price_message = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_official_price_message
    changed = true
  end
  if show.operational_halt_status_message ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_operational_halt_status_message then
    show.operational_halt_status_message = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_operational_halt_status_message
    changed = true
  end
  if show.packet ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_packet then
    show.packet = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_packet
    changed = true
  end
  if show.price_level_buy_update_message ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_price_level_buy_update_message then
    show.price_level_buy_update_message = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_price_level_buy_update_message
    changed = true
  end
  if show.price_level_sell_update_message ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_price_level_sell_update_message then
    show.price_level_sell_update_message = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_price_level_sell_update_message
    changed = true
  end
  if show.retail_liquidity_indicator_message ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_retail_liquidity_indicator_message then
    show.retail_liquidity_indicator_message = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_retail_liquidity_indicator_message
    changed = true
  end
  if show.sale_condition_flags ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_sale_condition_flags then
    show.sale_condition_flags = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_sale_condition_flags
    changed = true
  end
  if show.security_directory_flags ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_security_directory_flags then
    show.security_directory_flags = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_security_directory_flags
    changed = true
  end
  if show.security_directory_message ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_security_directory_message then
    show.security_directory_message = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_security_directory_message
    changed = true
  end
  if show.security_event_message ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_security_event_message then
    show.security_event_message = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_security_event_message
    changed = true
  end
  if show.short_sale_price_test_status_message ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_short_sale_price_test_status_message then
    show.short_sale_price_test_status_message = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_short_sale_price_test_status_message
    changed = true
  end
  if show.system_event_message ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_system_event_message then
    show.system_event_message = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_system_event_message
    changed = true
  end
  if show.trade_break_message ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_trade_break_message then
    show.trade_break_message = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_report_message ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_trade_report_message then
    show.trade_report_message = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_trade_report_message
    changed = true
  end
  if show.trading_status_message ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_trading_status_message then
    show.trading_status_message = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_trading_status_message
    changed = true
  end
  if show.message_data ~= omi_iex_equities_deep_iextp_v1_0_8.prefs.show_message_data then
    show.message_data = omi_iex_equities_deep_iextp_v1_0_8.prefs.show_message_data
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
-- Dissect Iex Equities Deep IexTp 1.0.8
-----------------------------------------------------------------------

-- Upper Auction Collar
iex_equities_deep_iextp_v1_0_8.upper_auction_collar = {}

-- Size: Upper Auction Collar
iex_equities_deep_iextp_v1_0_8.upper_auction_collar.size = 8

-- Display: Upper Auction Collar
iex_equities_deep_iextp_v1_0_8.upper_auction_collar.display = function(value)
  return "Upper Auction Collar: "..value
end

-- Translate: Upper Auction Collar
iex_equities_deep_iextp_v1_0_8.upper_auction_collar.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Upper Auction Collar
iex_equities_deep_iextp_v1_0_8.upper_auction_collar.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.upper_auction_collar.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_equities_deep_iextp_v1_0_8.upper_auction_collar.translate(raw)
  local display = iex_equities_deep_iextp_v1_0_8.upper_auction_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.upper_auction_collar, range, value, display)

  return offset + length, value
end

-- Lower Auction Collar
iex_equities_deep_iextp_v1_0_8.lower_auction_collar = {}

-- Size: Lower Auction Collar
iex_equities_deep_iextp_v1_0_8.lower_auction_collar.size = 8

-- Display: Lower Auction Collar
iex_equities_deep_iextp_v1_0_8.lower_auction_collar.display = function(value)
  return "Lower Auction Collar: "..value
end

-- Translate: Lower Auction Collar
iex_equities_deep_iextp_v1_0_8.lower_auction_collar.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Lower Auction Collar
iex_equities_deep_iextp_v1_0_8.lower_auction_collar.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.lower_auction_collar.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_equities_deep_iextp_v1_0_8.lower_auction_collar.translate(raw)
  local display = iex_equities_deep_iextp_v1_0_8.lower_auction_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.lower_auction_collar, range, value, display)

  return offset + length, value
end

-- Collar Reference Price
iex_equities_deep_iextp_v1_0_8.collar_reference_price = {}

-- Size: Collar Reference Price
iex_equities_deep_iextp_v1_0_8.collar_reference_price.size = 8

-- Display: Collar Reference Price
iex_equities_deep_iextp_v1_0_8.collar_reference_price.display = function(value)
  return "Collar Reference Price: "..value
end

-- Translate: Collar Reference Price
iex_equities_deep_iextp_v1_0_8.collar_reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Collar Reference Price
iex_equities_deep_iextp_v1_0_8.collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_equities_deep_iextp_v1_0_8.collar_reference_price.translate(raw)
  local display = iex_equities_deep_iextp_v1_0_8.collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.collar_reference_price, range, value, display)

  return offset + length, value
end

-- Auction Book Clearing Price
iex_equities_deep_iextp_v1_0_8.auction_book_clearing_price = {}

-- Size: Auction Book Clearing Price
iex_equities_deep_iextp_v1_0_8.auction_book_clearing_price.size = 8

-- Display: Auction Book Clearing Price
iex_equities_deep_iextp_v1_0_8.auction_book_clearing_price.display = function(value)
  return "Auction Book Clearing Price: "..value
end

-- Translate: Auction Book Clearing Price
iex_equities_deep_iextp_v1_0_8.auction_book_clearing_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Book Clearing Price
iex_equities_deep_iextp_v1_0_8.auction_book_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.auction_book_clearing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_equities_deep_iextp_v1_0_8.auction_book_clearing_price.translate(raw)
  local display = iex_equities_deep_iextp_v1_0_8.auction_book_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.auction_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Scheduled Auction Time
iex_equities_deep_iextp_v1_0_8.scheduled_auction_time = {}

-- Size: Scheduled Auction Time
iex_equities_deep_iextp_v1_0_8.scheduled_auction_time.size = 4

-- Display: Scheduled Auction Time
iex_equities_deep_iextp_v1_0_8.scheduled_auction_time.display = function(value)
  -- Parse unix timestamp
  return "Scheduled Auction Time: "..os.date("%x %H:%M:%S", value)
end

-- Dissect: Scheduled Auction Time
iex_equities_deep_iextp_v1_0_8.scheduled_auction_time.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.scheduled_auction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deep_iextp_v1_0_8.scheduled_auction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.scheduled_auction_time, range, value, display)

  return offset + length, value
end

-- Extension Number
iex_equities_deep_iextp_v1_0_8.extension_number = {}

-- Size: Extension Number
iex_equities_deep_iextp_v1_0_8.extension_number.size = 1

-- Display: Extension Number
iex_equities_deep_iextp_v1_0_8.extension_number.display = function(value)
  return "Extension Number: "..value
end

-- Dissect: Extension Number
iex_equities_deep_iextp_v1_0_8.extension_number.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.extension_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deep_iextp_v1_0_8.extension_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.extension_number, range, value, display)

  return offset + length, value
end

-- Imbalance Side
iex_equities_deep_iextp_v1_0_8.imbalance_side = {}

-- Size: Imbalance Side
iex_equities_deep_iextp_v1_0_8.imbalance_side.size = 1

-- Display: Imbalance Side
iex_equities_deep_iextp_v1_0_8.imbalance_side.display = function(value)
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
iex_equities_deep_iextp_v1_0_8.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deep_iextp_v1_0_8.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Imbalance Shares
iex_equities_deep_iextp_v1_0_8.imbalance_shares = {}

-- Size: Imbalance Shares
iex_equities_deep_iextp_v1_0_8.imbalance_shares.size = 4

-- Display: Imbalance Shares
iex_equities_deep_iextp_v1_0_8.imbalance_shares.display = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
iex_equities_deep_iextp_v1_0_8.imbalance_shares.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.imbalance_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deep_iextp_v1_0_8.imbalance_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Indicative Clearing Price
iex_equities_deep_iextp_v1_0_8.indicative_clearing_price = {}

-- Size: Indicative Clearing Price
iex_equities_deep_iextp_v1_0_8.indicative_clearing_price.size = 8

-- Display: Indicative Clearing Price
iex_equities_deep_iextp_v1_0_8.indicative_clearing_price.display = function(value)
  return "Indicative Clearing Price: "..value
end

-- Translate: Indicative Clearing Price
iex_equities_deep_iextp_v1_0_8.indicative_clearing_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Clearing Price
iex_equities_deep_iextp_v1_0_8.indicative_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.indicative_clearing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_equities_deep_iextp_v1_0_8.indicative_clearing_price.translate(raw)
  local display = iex_equities_deep_iextp_v1_0_8.indicative_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.indicative_clearing_price, range, value, display)

  return offset + length, value
end

-- Reference Price
iex_equities_deep_iextp_v1_0_8.reference_price = {}

-- Size: Reference Price
iex_equities_deep_iextp_v1_0_8.reference_price.size = 8

-- Display: Reference Price
iex_equities_deep_iextp_v1_0_8.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
iex_equities_deep_iextp_v1_0_8.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
iex_equities_deep_iextp_v1_0_8.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_equities_deep_iextp_v1_0_8.reference_price.translate(raw)
  local display = iex_equities_deep_iextp_v1_0_8.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Paired Shares
iex_equities_deep_iextp_v1_0_8.paired_shares = {}

-- Size: Paired Shares
iex_equities_deep_iextp_v1_0_8.paired_shares.size = 4

-- Display: Paired Shares
iex_equities_deep_iextp_v1_0_8.paired_shares.display = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
iex_equities_deep_iextp_v1_0_8.paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.paired_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deep_iextp_v1_0_8.paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Symbol
iex_equities_deep_iextp_v1_0_8.symbol = {}

-- Size: Symbol
iex_equities_deep_iextp_v1_0_8.symbol.size = 8

-- Display: Symbol
iex_equities_deep_iextp_v1_0_8.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
iex_equities_deep_iextp_v1_0_8.symbol.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = iex_equities_deep_iextp_v1_0_8.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
iex_equities_deep_iextp_v1_0_8.timestamp = {}

-- Size: Timestamp
iex_equities_deep_iextp_v1_0_8.timestamp.size = 8

-- Display: Timestamp
iex_equities_deep_iextp_v1_0_8.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
iex_equities_deep_iextp_v1_0_8.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = iex_equities_deep_iextp_v1_0_8.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Auction Type
iex_equities_deep_iextp_v1_0_8.auction_type = {}

-- Size: Auction Type
iex_equities_deep_iextp_v1_0_8.auction_type.size = 1

-- Display: Auction Type
iex_equities_deep_iextp_v1_0_8.auction_type.display = function(value)
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
iex_equities_deep_iextp_v1_0_8.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deep_iextp_v1_0_8.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Auction Information Message
iex_equities_deep_iextp_v1_0_8.auction_information_message = {}

-- Size: Auction Information Message
iex_equities_deep_iextp_v1_0_8.auction_information_message.size =
  iex_equities_deep_iextp_v1_0_8.auction_type.size + 
  iex_equities_deep_iextp_v1_0_8.timestamp.size + 
  iex_equities_deep_iextp_v1_0_8.symbol.size + 
  iex_equities_deep_iextp_v1_0_8.paired_shares.size + 
  iex_equities_deep_iextp_v1_0_8.reference_price.size + 
  iex_equities_deep_iextp_v1_0_8.indicative_clearing_price.size + 
  iex_equities_deep_iextp_v1_0_8.imbalance_shares.size + 
  iex_equities_deep_iextp_v1_0_8.imbalance_side.size + 
  iex_equities_deep_iextp_v1_0_8.extension_number.size + 
  iex_equities_deep_iextp_v1_0_8.scheduled_auction_time.size + 
  iex_equities_deep_iextp_v1_0_8.auction_book_clearing_price.size + 
  iex_equities_deep_iextp_v1_0_8.collar_reference_price.size + 
  iex_equities_deep_iextp_v1_0_8.lower_auction_collar.size + 
  iex_equities_deep_iextp_v1_0_8.upper_auction_collar.size

-- Display: Auction Information Message
iex_equities_deep_iextp_v1_0_8.auction_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Information Message
iex_equities_deep_iextp_v1_0_8.auction_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Auction Type: Byte
  index, auction_type = iex_equities_deep_iextp_v1_0_8.auction_type.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deep_iextp_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deep_iextp_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Paired Shares: Integer
  index, paired_shares = iex_equities_deep_iextp_v1_0_8.paired_shares.dissect(buffer, index, packet, parent)

  -- Reference Price: Price
  index, reference_price = iex_equities_deep_iextp_v1_0_8.reference_price.dissect(buffer, index, packet, parent)

  -- Indicative Clearing Price: Price
  index, indicative_clearing_price = iex_equities_deep_iextp_v1_0_8.indicative_clearing_price.dissect(buffer, index, packet, parent)

  -- Imbalance Shares: Integer
  index, imbalance_shares = iex_equities_deep_iextp_v1_0_8.imbalance_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Side: Byte
  index, imbalance_side = iex_equities_deep_iextp_v1_0_8.imbalance_side.dissect(buffer, index, packet, parent)

  -- Extension Number: Byte
  index, extension_number = iex_equities_deep_iextp_v1_0_8.extension_number.dissect(buffer, index, packet, parent)

  -- Scheduled Auction Time: Event Time
  index, scheduled_auction_time = iex_equities_deep_iextp_v1_0_8.scheduled_auction_time.dissect(buffer, index, packet, parent)

  -- Auction Book Clearing Price: Price
  index, auction_book_clearing_price = iex_equities_deep_iextp_v1_0_8.auction_book_clearing_price.dissect(buffer, index, packet, parent)

  -- Collar Reference Price: Price
  index, collar_reference_price = iex_equities_deep_iextp_v1_0_8.collar_reference_price.dissect(buffer, index, packet, parent)

  -- Lower Auction Collar: Price
  index, lower_auction_collar = iex_equities_deep_iextp_v1_0_8.lower_auction_collar.dissect(buffer, index, packet, parent)

  -- Upper Auction Collar: Price
  index, upper_auction_collar = iex_equities_deep_iextp_v1_0_8.upper_auction_collar.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Information Message
iex_equities_deep_iextp_v1_0_8.auction_information_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_information_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.auction_information_message, buffer(offset, 0))
    local index = iex_equities_deep_iextp_v1_0_8.auction_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_deep_iextp_v1_0_8.auction_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_deep_iextp_v1_0_8.auction_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Id
iex_equities_deep_iextp_v1_0_8.trade_id = {}

-- Size: Trade Id
iex_equities_deep_iextp_v1_0_8.trade_id.size = 8

-- Display: Trade Id
iex_equities_deep_iextp_v1_0_8.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
iex_equities_deep_iextp_v1_0_8.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_deep_iextp_v1_0_8.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Price
iex_equities_deep_iextp_v1_0_8.price = {}

-- Size: Price
iex_equities_deep_iextp_v1_0_8.price.size = 8

-- Display: Price
iex_equities_deep_iextp_v1_0_8.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
iex_equities_deep_iextp_v1_0_8.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
iex_equities_deep_iextp_v1_0_8.price.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_equities_deep_iextp_v1_0_8.price.translate(raw)
  local display = iex_equities_deep_iextp_v1_0_8.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.price, range, value, display)

  return offset + length, value
end

-- Size
iex_equities_deep_iextp_v1_0_8.size = {}

-- Size: Size
iex_equities_deep_iextp_v1_0_8.size.size = 4

-- Display: Size
iex_equities_deep_iextp_v1_0_8.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
iex_equities_deep_iextp_v1_0_8.size.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deep_iextp_v1_0_8.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.size, range, value, display)

  return offset + length, value
end

-- Sale Condition Flags
iex_equities_deep_iextp_v1_0_8.sale_condition_flags = {}

-- Size: Sale Condition Flags
iex_equities_deep_iextp_v1_0_8.sale_condition_flags.size = 1

-- Display: Sale Condition Flags
iex_equities_deep_iextp_v1_0_8.sale_condition_flags.display = function(buffer, packet, parent)
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
iex_equities_deep_iextp_v1_0_8.sale_condition_flags.bits = function(buffer, offset, packet, parent)

  -- Intermarket Sweep: 1 Bit
  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.intermarket_sweep, buffer(offset, 1))

  -- Extended Hours: 1 Bit
  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.extended_hours, buffer(offset, 1))

  -- Odd Lot: 1 Bit
  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.odd_lot, buffer(offset, 1))

  -- Trade Through Exempt: 1 Bit
  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.trade_through_exempt, buffer(offset, 1))

  -- Singleprice Cross Trade: 1 Bit
  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.singleprice_cross_trade, buffer(offset, 1))

  -- Unused 3: 3 Bit
  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.unused_3, buffer(offset, 1))
end

-- Dissect: Sale Condition Flags
iex_equities_deep_iextp_v1_0_8.sale_condition_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = iex_equities_deep_iextp_v1_0_8.sale_condition_flags.display(range, packet, parent)
  local element = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.sale_condition_flags, range, display)

  if show.sale_condition_flags then
    iex_equities_deep_iextp_v1_0_8.sale_condition_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Trade Break Message
iex_equities_deep_iextp_v1_0_8.trade_break_message = {}

-- Size: Trade Break Message
iex_equities_deep_iextp_v1_0_8.trade_break_message.size =
  iex_equities_deep_iextp_v1_0_8.sale_condition_flags.size + 
  iex_equities_deep_iextp_v1_0_8.timestamp.size + 
  iex_equities_deep_iextp_v1_0_8.symbol.size + 
  iex_equities_deep_iextp_v1_0_8.size.size + 
  iex_equities_deep_iextp_v1_0_8.price.size + 
  iex_equities_deep_iextp_v1_0_8.trade_id.size

-- Display: Trade Break Message
iex_equities_deep_iextp_v1_0_8.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
iex_equities_deep_iextp_v1_0_8.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Condition Flags: Struct of 6 fields
  index, sale_condition_flags = iex_equities_deep_iextp_v1_0_8.sale_condition_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deep_iextp_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deep_iextp_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_equities_deep_iextp_v1_0_8.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_equities_deep_iextp_v1_0_8.price.dissect(buffer, index, packet, parent)

  -- Trade Id: Long
  index, trade_id = iex_equities_deep_iextp_v1_0_8.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
iex_equities_deep_iextp_v1_0_8.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_break_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.trade_break_message, buffer(offset, 0))
    local index = iex_equities_deep_iextp_v1_0_8.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_deep_iextp_v1_0_8.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_deep_iextp_v1_0_8.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Official Price
iex_equities_deep_iextp_v1_0_8.official_price = {}

-- Size: Official Price
iex_equities_deep_iextp_v1_0_8.official_price.size = 8

-- Display: Official Price
iex_equities_deep_iextp_v1_0_8.official_price.display = function(value)
  return "Official Price: "..value
end

-- Translate: Official Price
iex_equities_deep_iextp_v1_0_8.official_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Official Price
iex_equities_deep_iextp_v1_0_8.official_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.official_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_equities_deep_iextp_v1_0_8.official_price.translate(raw)
  local display = iex_equities_deep_iextp_v1_0_8.official_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.official_price, range, value, display)

  return offset + length, value
end

-- Price Type
iex_equities_deep_iextp_v1_0_8.price_type = {}

-- Size: Price Type
iex_equities_deep_iextp_v1_0_8.price_type.size = 1

-- Display: Price Type
iex_equities_deep_iextp_v1_0_8.price_type.display = function(value)
  if value == "Q" then
    return "Price Type: Iex Official Opening Price (Q)"
  end
  if value == "M" then
    return "Price Type: Iex Official Closing Price (M)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
iex_equities_deep_iextp_v1_0_8.price_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deep_iextp_v1_0_8.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.price_type, range, value, display)

  return offset + length, value
end

-- Official Price Message
iex_equities_deep_iextp_v1_0_8.official_price_message = {}

-- Size: Official Price Message
iex_equities_deep_iextp_v1_0_8.official_price_message.size =
  iex_equities_deep_iextp_v1_0_8.price_type.size + 
  iex_equities_deep_iextp_v1_0_8.timestamp.size + 
  iex_equities_deep_iextp_v1_0_8.symbol.size + 
  iex_equities_deep_iextp_v1_0_8.official_price.size

-- Display: Official Price Message
iex_equities_deep_iextp_v1_0_8.official_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Official Price Message
iex_equities_deep_iextp_v1_0_8.official_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Type: Byte
  index, price_type = iex_equities_deep_iextp_v1_0_8.price_type.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deep_iextp_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deep_iextp_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Official Price: Price
  index, official_price = iex_equities_deep_iextp_v1_0_8.official_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Official Price Message
iex_equities_deep_iextp_v1_0_8.official_price_message.dissect = function(buffer, offset, packet, parent)
  if show.official_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.official_price_message, buffer(offset, 0))
    local index = iex_equities_deep_iextp_v1_0_8.official_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_deep_iextp_v1_0_8.official_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_deep_iextp_v1_0_8.official_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
iex_equities_deep_iextp_v1_0_8.trade_report_message = {}

-- Size: Trade Report Message
iex_equities_deep_iextp_v1_0_8.trade_report_message.size =
  iex_equities_deep_iextp_v1_0_8.sale_condition_flags.size + 
  iex_equities_deep_iextp_v1_0_8.timestamp.size + 
  iex_equities_deep_iextp_v1_0_8.symbol.size + 
  iex_equities_deep_iextp_v1_0_8.size.size + 
  iex_equities_deep_iextp_v1_0_8.price.size + 
  iex_equities_deep_iextp_v1_0_8.trade_id.size

-- Display: Trade Report Message
iex_equities_deep_iextp_v1_0_8.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
iex_equities_deep_iextp_v1_0_8.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Condition Flags: Struct of 6 fields
  index, sale_condition_flags = iex_equities_deep_iextp_v1_0_8.sale_condition_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deep_iextp_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deep_iextp_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_equities_deep_iextp_v1_0_8.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_equities_deep_iextp_v1_0_8.price.dissect(buffer, index, packet, parent)

  -- Trade Id: Long
  index, trade_id = iex_equities_deep_iextp_v1_0_8.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
iex_equities_deep_iextp_v1_0_8.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_report_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.trade_report_message, buffer(offset, 0))
    local index = iex_equities_deep_iextp_v1_0_8.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_deep_iextp_v1_0_8.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_deep_iextp_v1_0_8.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Flags
iex_equities_deep_iextp_v1_0_8.event_flags = {}

-- Size: Event Flags
iex_equities_deep_iextp_v1_0_8.event_flags.size = 1

-- Display: Event Flags
iex_equities_deep_iextp_v1_0_8.event_flags.display = function(value)
  if value == 0 then
    return "Event Flags: Order Book Is Processing An Event (0)"
  end
  if value == 1 then
    return "Event Flags: Event Processing Complete (1)"
  end

  return "Event Flags: Unknown("..value..")"
end

-- Dissect: Event Flags
iex_equities_deep_iextp_v1_0_8.event_flags.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.event_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = iex_equities_deep_iextp_v1_0_8.event_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.event_flags, range, value, display)

  return offset + length, value
end

-- Price Level Sell Update Message
iex_equities_deep_iextp_v1_0_8.price_level_sell_update_message = {}

-- Size: Price Level Sell Update Message
iex_equities_deep_iextp_v1_0_8.price_level_sell_update_message.size =
  iex_equities_deep_iextp_v1_0_8.event_flags.size + 
  iex_equities_deep_iextp_v1_0_8.timestamp.size + 
  iex_equities_deep_iextp_v1_0_8.symbol.size + 
  iex_equities_deep_iextp_v1_0_8.size.size + 
  iex_equities_deep_iextp_v1_0_8.price.size

-- Display: Price Level Sell Update Message
iex_equities_deep_iextp_v1_0_8.price_level_sell_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Level Sell Update Message
iex_equities_deep_iextp_v1_0_8.price_level_sell_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Flags: Byte (int)
  index, event_flags = iex_equities_deep_iextp_v1_0_8.event_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deep_iextp_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deep_iextp_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_equities_deep_iextp_v1_0_8.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_equities_deep_iextp_v1_0_8.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Level Sell Update Message
iex_equities_deep_iextp_v1_0_8.price_level_sell_update_message.dissect = function(buffer, offset, packet, parent)
  if show.price_level_sell_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.price_level_sell_update_message, buffer(offset, 0))
    local index = iex_equities_deep_iextp_v1_0_8.price_level_sell_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_deep_iextp_v1_0_8.price_level_sell_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_deep_iextp_v1_0_8.price_level_sell_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Level Buy Update Message
iex_equities_deep_iextp_v1_0_8.price_level_buy_update_message = {}

-- Size: Price Level Buy Update Message
iex_equities_deep_iextp_v1_0_8.price_level_buy_update_message.size =
  iex_equities_deep_iextp_v1_0_8.event_flags.size + 
  iex_equities_deep_iextp_v1_0_8.timestamp.size + 
  iex_equities_deep_iextp_v1_0_8.symbol.size + 
  iex_equities_deep_iextp_v1_0_8.size.size + 
  iex_equities_deep_iextp_v1_0_8.price.size

-- Display: Price Level Buy Update Message
iex_equities_deep_iextp_v1_0_8.price_level_buy_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Level Buy Update Message
iex_equities_deep_iextp_v1_0_8.price_level_buy_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Flags: Byte (int)
  index, event_flags = iex_equities_deep_iextp_v1_0_8.event_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deep_iextp_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deep_iextp_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_equities_deep_iextp_v1_0_8.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_equities_deep_iextp_v1_0_8.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Level Buy Update Message
iex_equities_deep_iextp_v1_0_8.price_level_buy_update_message.dissect = function(buffer, offset, packet, parent)
  if show.price_level_buy_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.price_level_buy_update_message, buffer(offset, 0))
    local index = iex_equities_deep_iextp_v1_0_8.price_level_buy_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_deep_iextp_v1_0_8.price_level_buy_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_deep_iextp_v1_0_8.price_level_buy_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Event
iex_equities_deep_iextp_v1_0_8.security_event = {}

-- Size: Security Event
iex_equities_deep_iextp_v1_0_8.security_event.size = 1

-- Display: Security Event
iex_equities_deep_iextp_v1_0_8.security_event.display = function(value)
  if value == "O" then
    return "Security Event: Opening Process Complete (O)"
  end
  if value == "C" then
    return "Security Event: Closing Process Complete (C)"
  end

  return "Security Event: Unknown("..value..")"
end

-- Dissect: Security Event
iex_equities_deep_iextp_v1_0_8.security_event.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.security_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deep_iextp_v1_0_8.security_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.security_event, range, value, display)

  return offset + length, value
end

-- Security Event Message
iex_equities_deep_iextp_v1_0_8.security_event_message = {}

-- Size: Security Event Message
iex_equities_deep_iextp_v1_0_8.security_event_message.size =
  iex_equities_deep_iextp_v1_0_8.security_event.size + 
  iex_equities_deep_iextp_v1_0_8.timestamp.size + 
  iex_equities_deep_iextp_v1_0_8.symbol.size

-- Display: Security Event Message
iex_equities_deep_iextp_v1_0_8.security_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Event Message
iex_equities_deep_iextp_v1_0_8.security_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Event: Byte
  index, security_event = iex_equities_deep_iextp_v1_0_8.security_event.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deep_iextp_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deep_iextp_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Event Message
iex_equities_deep_iextp_v1_0_8.security_event_message.dissect = function(buffer, offset, packet, parent)
  if show.security_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.security_event_message, buffer(offset, 0))
    local index = iex_equities_deep_iextp_v1_0_8.security_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_deep_iextp_v1_0_8.security_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_deep_iextp_v1_0_8.security_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Detail
iex_equities_deep_iextp_v1_0_8.detail = {}

-- Size: Detail
iex_equities_deep_iextp_v1_0_8.detail.size = 1

-- Display: Detail
iex_equities_deep_iextp_v1_0_8.detail.display = function(value)
  if value == " " then
    return "Detail: No Price Test In Place (<whitespace>)"
  end
  if value == "A" then
    return "Detail: Short Sale Price Test Restriction In Effect Due To An Intraday Price Drop In The Security (A)"
  end
  if value == "C" then
    return "Detail: Short Sale Price Test Restriction Remains In Effect From Prior Day (C)"
  end
  if value == "D" then
    return "Detail: Short Sale Price Test Restriction Deactivated (D)"
  end
  if value == "N" then
    return "Detail: Not Available (N)"
  end

  return "Detail: Unknown("..value..")"
end

-- Dissect: Detail
iex_equities_deep_iextp_v1_0_8.detail.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.detail.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deep_iextp_v1_0_8.detail.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.detail, range, value, display)

  return offset + length, value
end

-- Short Sale Price Test Status
iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status = {}

-- Size: Short Sale Price Test Status
iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status.size = 1

-- Display: Short Sale Price Test Status
iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status.display = function(value)
  if value == 0 then
    return "Short Sale Price Test Status: Not In Effect (0)"
  end
  if value == 1 then
    return "Short Sale Price Test Status: In Effect (1)"
  end

  return "Short Sale Price Test Status: Unknown("..value..")"
end

-- Dissect: Short Sale Price Test Status
iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.short_sale_price_test_status, range, value, display)

  return offset + length, value
end

-- Short Sale Price Test Status Message
iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status_message = {}

-- Size: Short Sale Price Test Status Message
iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status_message.size =
  iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status.size + 
  iex_equities_deep_iextp_v1_0_8.timestamp.size + 
  iex_equities_deep_iextp_v1_0_8.symbol.size + 
  iex_equities_deep_iextp_v1_0_8.detail.size

-- Display: Short Sale Price Test Status Message
iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Sale Price Test Status Message
iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Short Sale Price Test Status: Byte (int)
  index, short_sale_price_test_status = iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deep_iextp_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deep_iextp_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Detail: Byte
  index, detail = iex_equities_deep_iextp_v1_0_8.detail.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Sale Price Test Status Message
iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status_message.dissect = function(buffer, offset, packet, parent)
  if show.short_sale_price_test_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.short_sale_price_test_status_message, buffer(offset, 0))
    local index = iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Operational Halt Status
iex_equities_deep_iextp_v1_0_8.operational_halt_status = {}

-- Size: Operational Halt Status
iex_equities_deep_iextp_v1_0_8.operational_halt_status.size = 1

-- Display: Operational Halt Status
iex_equities_deep_iextp_v1_0_8.operational_halt_status.display = function(value)
  if value == "O" then
    return "Operational Halt Status: Iex Specific Operational Trading Halt (O)"
  end
  if value == "N" then
    return "Operational Halt Status: Not Operationally Halted On Iex (N)"
  end

  return "Operational Halt Status: Unknown("..value..")"
end

-- Dissect: Operational Halt Status
iex_equities_deep_iextp_v1_0_8.operational_halt_status.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.operational_halt_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deep_iextp_v1_0_8.operational_halt_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.operational_halt_status, range, value, display)

  return offset + length, value
end

-- Operational Halt Status Message
iex_equities_deep_iextp_v1_0_8.operational_halt_status_message = {}

-- Size: Operational Halt Status Message
iex_equities_deep_iextp_v1_0_8.operational_halt_status_message.size =
  iex_equities_deep_iextp_v1_0_8.operational_halt_status.size + 
  iex_equities_deep_iextp_v1_0_8.timestamp.size + 
  iex_equities_deep_iextp_v1_0_8.symbol.size

-- Display: Operational Halt Status Message
iex_equities_deep_iextp_v1_0_8.operational_halt_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Status Message
iex_equities_deep_iextp_v1_0_8.operational_halt_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Operational Halt Status: Byte
  index, operational_halt_status = iex_equities_deep_iextp_v1_0_8.operational_halt_status.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deep_iextp_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deep_iextp_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Status Message
iex_equities_deep_iextp_v1_0_8.operational_halt_status_message.dissect = function(buffer, offset, packet, parent)
  if show.operational_halt_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.operational_halt_status_message, buffer(offset, 0))
    local index = iex_equities_deep_iextp_v1_0_8.operational_halt_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_deep_iextp_v1_0_8.operational_halt_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_deep_iextp_v1_0_8.operational_halt_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Retail Liquidity Indicator
iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator = {}

-- Size: Retail Liquidity Indicator
iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator.size = 1

-- Display: Retail Liquidity Indicator
iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator.display = function(value)
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
iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.retail_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Retail Liquidity Indicator Message
iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator_message = {}

-- Size: Retail Liquidity Indicator Message
iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator_message.size =
  iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator.size + 
  iex_equities_deep_iextp_v1_0_8.timestamp.size + 
  iex_equities_deep_iextp_v1_0_8.symbol.size

-- Display: Retail Liquidity Indicator Message
iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Liquidity Indicator Message
iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Retail Liquidity Indicator: Byte
  index, retail_liquidity_indicator = iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deep_iextp_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deep_iextp_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Liquidity Indicator Message
iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.retail_liquidity_indicator_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.retail_liquidity_indicator_message, buffer(offset, 0))
    local index = iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Reason
iex_equities_deep_iextp_v1_0_8.reason = {}

-- Size: Reason
iex_equities_deep_iextp_v1_0_8.reason.size = 4

-- Display: Reason
iex_equities_deep_iextp_v1_0_8.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
iex_equities_deep_iextp_v1_0_8.reason.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = iex_equities_deep_iextp_v1_0_8.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.reason, range, value, display)

  return offset + length, value
end

-- Trading Status
iex_equities_deep_iextp_v1_0_8.trading_status = {}

-- Size: Trading Status
iex_equities_deep_iextp_v1_0_8.trading_status.size = 1

-- Display: Trading Status
iex_equities_deep_iextp_v1_0_8.trading_status.display = function(value)
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
iex_equities_deep_iextp_v1_0_8.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deep_iextp_v1_0_8.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Trading Status Message
iex_equities_deep_iextp_v1_0_8.trading_status_message = {}

-- Size: Trading Status Message
iex_equities_deep_iextp_v1_0_8.trading_status_message.size =
  iex_equities_deep_iextp_v1_0_8.trading_status.size + 
  iex_equities_deep_iextp_v1_0_8.timestamp.size + 
  iex_equities_deep_iextp_v1_0_8.symbol.size + 
  iex_equities_deep_iextp_v1_0_8.reason.size

-- Display: Trading Status Message
iex_equities_deep_iextp_v1_0_8.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
iex_equities_deep_iextp_v1_0_8.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Status: Byte
  index, trading_status = iex_equities_deep_iextp_v1_0_8.trading_status.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deep_iextp_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deep_iextp_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Reason: String
  index, reason = iex_equities_deep_iextp_v1_0_8.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
iex_equities_deep_iextp_v1_0_8.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.trading_status_message, buffer(offset, 0))
    local index = iex_equities_deep_iextp_v1_0_8.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_deep_iextp_v1_0_8.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_deep_iextp_v1_0_8.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Luld Tier
iex_equities_deep_iextp_v1_0_8.luld_tier = {}

-- Size: Luld Tier
iex_equities_deep_iextp_v1_0_8.luld_tier.size = 1

-- Display: Luld Tier
iex_equities_deep_iextp_v1_0_8.luld_tier.display = function(value)
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
iex_equities_deep_iextp_v1_0_8.luld_tier.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.luld_tier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = iex_equities_deep_iextp_v1_0_8.luld_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.luld_tier, range, value, display)

  return offset + length, value
end

-- Adjusted Poc Price
iex_equities_deep_iextp_v1_0_8.adjusted_poc_price = {}

-- Size: Adjusted Poc Price
iex_equities_deep_iextp_v1_0_8.adjusted_poc_price.size = 8

-- Display: Adjusted Poc Price
iex_equities_deep_iextp_v1_0_8.adjusted_poc_price.display = function(value)
  return "Adjusted Poc Price: "..value
end

-- Translate: Adjusted Poc Price
iex_equities_deep_iextp_v1_0_8.adjusted_poc_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Adjusted Poc Price
iex_equities_deep_iextp_v1_0_8.adjusted_poc_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.adjusted_poc_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_equities_deep_iextp_v1_0_8.adjusted_poc_price.translate(raw)
  local display = iex_equities_deep_iextp_v1_0_8.adjusted_poc_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.adjusted_poc_price, range, value, display)

  return offset + length, value
end

-- Round Lot Size
iex_equities_deep_iextp_v1_0_8.round_lot_size = {}

-- Size: Round Lot Size
iex_equities_deep_iextp_v1_0_8.round_lot_size.size = 4

-- Display: Round Lot Size
iex_equities_deep_iextp_v1_0_8.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
iex_equities_deep_iextp_v1_0_8.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deep_iextp_v1_0_8.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Security Directory Flags
iex_equities_deep_iextp_v1_0_8.security_directory_flags = {}

-- Size: Security Directory Flags
iex_equities_deep_iextp_v1_0_8.security_directory_flags.size = 1

-- Display: Security Directory Flags
iex_equities_deep_iextp_v1_0_8.security_directory_flags.display = function(buffer, packet, parent)
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
iex_equities_deep_iextp_v1_0_8.security_directory_flags.bits = function(buffer, offset, packet, parent)

  -- Test Security: 1 Bit
  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.test_security, buffer(offset, 1))

  -- When Issued: 1 Bit
  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.when_issued, buffer(offset, 1))

  -- Etp: 1 Bit
  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.etp, buffer(offset, 1))

  -- Unused 5: 5 Bit
  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.unused_5, buffer(offset, 1))
end

-- Dissect: Security Directory Flags
iex_equities_deep_iextp_v1_0_8.security_directory_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = iex_equities_deep_iextp_v1_0_8.security_directory_flags.display(range, packet, parent)
  local element = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.security_directory_flags, range, display)

  if show.security_directory_flags then
    iex_equities_deep_iextp_v1_0_8.security_directory_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Security Directory Message
iex_equities_deep_iextp_v1_0_8.security_directory_message = {}

-- Size: Security Directory Message
iex_equities_deep_iextp_v1_0_8.security_directory_message.size =
  iex_equities_deep_iextp_v1_0_8.security_directory_flags.size + 
  iex_equities_deep_iextp_v1_0_8.timestamp.size + 
  iex_equities_deep_iextp_v1_0_8.symbol.size + 
  iex_equities_deep_iextp_v1_0_8.round_lot_size.size + 
  iex_equities_deep_iextp_v1_0_8.adjusted_poc_price.size + 
  iex_equities_deep_iextp_v1_0_8.luld_tier.size

-- Display: Security Directory Message
iex_equities_deep_iextp_v1_0_8.security_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Directory Message
iex_equities_deep_iextp_v1_0_8.security_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Directory Flags: Struct of 4 fields
  index, security_directory_flags = iex_equities_deep_iextp_v1_0_8.security_directory_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deep_iextp_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_equities_deep_iextp_v1_0_8.symbol.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = iex_equities_deep_iextp_v1_0_8.round_lot_size.dissect(buffer, index, packet, parent)

  -- Adjusted Poc Price: Price
  index, adjusted_poc_price = iex_equities_deep_iextp_v1_0_8.adjusted_poc_price.dissect(buffer, index, packet, parent)

  -- Luld Tier: Byte (int)
  index, luld_tier = iex_equities_deep_iextp_v1_0_8.luld_tier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Directory Message
iex_equities_deep_iextp_v1_0_8.security_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.security_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.security_directory_message, buffer(offset, 0))
    local index = iex_equities_deep_iextp_v1_0_8.security_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_deep_iextp_v1_0_8.security_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_deep_iextp_v1_0_8.security_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event
iex_equities_deep_iextp_v1_0_8.system_event = {}

-- Size: System Event
iex_equities_deep_iextp_v1_0_8.system_event.size = 1

-- Display: System Event
iex_equities_deep_iextp_v1_0_8.system_event.display = function(value)
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
iex_equities_deep_iextp_v1_0_8.system_event.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.system_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deep_iextp_v1_0_8.system_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.system_event, range, value, display)

  return offset + length, value
end

-- System Event Message
iex_equities_deep_iextp_v1_0_8.system_event_message = {}

-- Size: System Event Message
iex_equities_deep_iextp_v1_0_8.system_event_message.size =
  iex_equities_deep_iextp_v1_0_8.system_event.size + 
  iex_equities_deep_iextp_v1_0_8.timestamp.size

-- Display: System Event Message
iex_equities_deep_iextp_v1_0_8.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
iex_equities_deep_iextp_v1_0_8.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- System Event: Byte
  index, system_event = iex_equities_deep_iextp_v1_0_8.system_event.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_equities_deep_iextp_v1_0_8.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
iex_equities_deep_iextp_v1_0_8.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.system_event_message, buffer(offset, 0))
    local index = iex_equities_deep_iextp_v1_0_8.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_deep_iextp_v1_0_8.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_deep_iextp_v1_0_8.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Data
iex_equities_deep_iextp_v1_0_8.message_data = {}

-- Size: Message Data
iex_equities_deep_iextp_v1_0_8.message_data.size = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return iex_equities_deep_iextp_v1_0_8.system_event_message.size
  end
  -- Size of Security Directory Message
  if message_type == "D" then
    return iex_equities_deep_iextp_v1_0_8.security_directory_message.size
  end
  -- Size of Trading Status Message
  if message_type == "H" then
    return iex_equities_deep_iextp_v1_0_8.trading_status_message.size
  end
  -- Size of Retail Liquidity Indicator Message
  if message_type == "I" then
    return iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator_message.size
  end
  -- Size of Operational Halt Status Message
  if message_type == "O" then
    return iex_equities_deep_iextp_v1_0_8.operational_halt_status_message.size
  end
  -- Size of Short Sale Price Test Status Message
  if message_type == "P" then
    return iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status_message.size
  end
  -- Size of Security Event Message
  if message_type == "E" then
    return iex_equities_deep_iextp_v1_0_8.security_event_message.size
  end
  -- Size of Price Level Buy Update Message
  if message_type == "8" then
    return iex_equities_deep_iextp_v1_0_8.price_level_buy_update_message.size
  end
  -- Size of Price Level Sell Update Message
  if message_type == "5" then
    return iex_equities_deep_iextp_v1_0_8.price_level_sell_update_message.size
  end
  -- Size of Trade Report Message
  if message_type == "T" then
    return iex_equities_deep_iextp_v1_0_8.trade_report_message.size
  end
  -- Size of Official Price Message
  if message_type == "X" then
    return iex_equities_deep_iextp_v1_0_8.official_price_message.size
  end
  -- Size of Trade Break Message
  if message_type == "B" then
    return iex_equities_deep_iextp_v1_0_8.trade_break_message.size
  end
  -- Size of Auction Information Message
  if message_type == "A" then
    return iex_equities_deep_iextp_v1_0_8.auction_information_message.size
  end

  return 0
end

-- Display: Message Data
iex_equities_deep_iextp_v1_0_8.message_data.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message Data
iex_equities_deep_iextp_v1_0_8.message_data.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return iex_equities_deep_iextp_v1_0_8.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Directory Message
  if message_type == "D" then
    return iex_equities_deep_iextp_v1_0_8.security_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == "H" then
    return iex_equities_deep_iextp_v1_0_8.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Liquidity Indicator Message
  if message_type == "I" then
    return iex_equities_deep_iextp_v1_0_8.retail_liquidity_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Status Message
  if message_type == "O" then
    return iex_equities_deep_iextp_v1_0_8.operational_halt_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Sale Price Test Status Message
  if message_type == "P" then
    return iex_equities_deep_iextp_v1_0_8.short_sale_price_test_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Event Message
  if message_type == "E" then
    return iex_equities_deep_iextp_v1_0_8.security_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Level Buy Update Message
  if message_type == "8" then
    return iex_equities_deep_iextp_v1_0_8.price_level_buy_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Level Sell Update Message
  if message_type == "5" then
    return iex_equities_deep_iextp_v1_0_8.price_level_sell_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "T" then
    return iex_equities_deep_iextp_v1_0_8.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Official Price Message
  if message_type == "X" then
    return iex_equities_deep_iextp_v1_0_8.official_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == "B" then
    return iex_equities_deep_iextp_v1_0_8.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Information Message
  if message_type == "A" then
    return iex_equities_deep_iextp_v1_0_8.auction_information_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message Data
iex_equities_deep_iextp_v1_0_8.message_data.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.message_data then
    return iex_equities_deep_iextp_v1_0_8.message_data.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = iex_equities_deep_iextp_v1_0_8.message_data.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = iex_equities_deep_iextp_v1_0_8.message_data.display(buffer, packet, parent)
  local element = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.message_data, range, display)

  return iex_equities_deep_iextp_v1_0_8.message_data.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
iex_equities_deep_iextp_v1_0_8.message_type = {}

-- Size: Message Type
iex_equities_deep_iextp_v1_0_8.message_type.size = 1

-- Display: Message Type
iex_equities_deep_iextp_v1_0_8.message_type.display = function(value)
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
  if value == "E" then
    return "Message Type: Security Event Message (E)"
  end
  if value == "8" then
    return "Message Type: Price Level Buy Update Message (8)"
  end
  if value == "5" then
    return "Message Type: Price Level Sell Update Message (5)"
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
iex_equities_deep_iextp_v1_0_8.message_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_deep_iextp_v1_0_8.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
iex_equities_deep_iextp_v1_0_8.message_length = {}

-- Size: Message Length
iex_equities_deep_iextp_v1_0_8.message_length.size = 2

-- Display: Message Length
iex_equities_deep_iextp_v1_0_8.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
iex_equities_deep_iextp_v1_0_8.message_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deep_iextp_v1_0_8.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
iex_equities_deep_iextp_v1_0_8.message_header = {}

-- Size: Message Header
iex_equities_deep_iextp_v1_0_8.message_header.size =
  iex_equities_deep_iextp_v1_0_8.message_length.size + 
  iex_equities_deep_iextp_v1_0_8.message_type.size

-- Display: Message Header
iex_equities_deep_iextp_v1_0_8.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
iex_equities_deep_iextp_v1_0_8.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = iex_equities_deep_iextp_v1_0_8.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 13 values
  index, message_type = iex_equities_deep_iextp_v1_0_8.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
iex_equities_deep_iextp_v1_0_8.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.message_header, buffer(offset, 0))
    local index = iex_equities_deep_iextp_v1_0_8.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_deep_iextp_v1_0_8.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_deep_iextp_v1_0_8.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
iex_equities_deep_iextp_v1_0_8.message = {}

-- Display: Message
iex_equities_deep_iextp_v1_0_8.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
iex_equities_deep_iextp_v1_0_8.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = iex_equities_deep_iextp_v1_0_8.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Message Data: Runtime Type with 13 branches
  index = iex_equities_deep_iextp_v1_0_8.message_data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
iex_equities_deep_iextp_v1_0_8.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.message, buffer(offset, 0))
    local current = iex_equities_deep_iextp_v1_0_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = iex_equities_deep_iextp_v1_0_8.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    iex_equities_deep_iextp_v1_0_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
iex_equities_deep_iextp_v1_0_8.send_time = {}

-- Size: Send Time
iex_equities_deep_iextp_v1_0_8.send_time.size = 8

-- Display: Send Time
iex_equities_deep_iextp_v1_0_8.send_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Send Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
iex_equities_deep_iextp_v1_0_8.send_time.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_deep_iextp_v1_0_8.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.send_time, range, value, display)

  return offset + length, value
end

-- First Message Sequence Number
iex_equities_deep_iextp_v1_0_8.first_message_sequence_number = {}

-- Size: First Message Sequence Number
iex_equities_deep_iextp_v1_0_8.first_message_sequence_number.size = 8

-- Display: First Message Sequence Number
iex_equities_deep_iextp_v1_0_8.first_message_sequence_number.display = function(value)
  return "First Message Sequence Number: "..value
end

-- Dissect: First Message Sequence Number
iex_equities_deep_iextp_v1_0_8.first_message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.first_message_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_deep_iextp_v1_0_8.first_message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.first_message_sequence_number, range, value, display)

  return offset + length, value
end

-- Stream Offset
iex_equities_deep_iextp_v1_0_8.stream_offset = {}

-- Size: Stream Offset
iex_equities_deep_iextp_v1_0_8.stream_offset.size = 8

-- Display: Stream Offset
iex_equities_deep_iextp_v1_0_8.stream_offset.display = function(value)
  return "Stream Offset: "..value
end

-- Dissect: Stream Offset
iex_equities_deep_iextp_v1_0_8.stream_offset.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.stream_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_deep_iextp_v1_0_8.stream_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.stream_offset, range, value, display)

  return offset + length, value
end

-- Message Count
iex_equities_deep_iextp_v1_0_8.message_count = {}

-- Size: Message Count
iex_equities_deep_iextp_v1_0_8.message_count.size = 2

-- Display: Message Count
iex_equities_deep_iextp_v1_0_8.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
iex_equities_deep_iextp_v1_0_8.message_count.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deep_iextp_v1_0_8.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.message_count, range, value, display)

  return offset + length, value
end

-- Payload Length
iex_equities_deep_iextp_v1_0_8.payload_length = {}

-- Size: Payload Length
iex_equities_deep_iextp_v1_0_8.payload_length.size = 2

-- Display: Payload Length
iex_equities_deep_iextp_v1_0_8.payload_length.display = function(value)
  return "Payload Length: "..value
end

-- Dissect: Payload Length
iex_equities_deep_iextp_v1_0_8.payload_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.payload_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deep_iextp_v1_0_8.payload_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.payload_length, range, value, display)

  return offset + length, value
end

-- Session Id
iex_equities_deep_iextp_v1_0_8.session_id = {}

-- Size: Session Id
iex_equities_deep_iextp_v1_0_8.session_id.size = 4

-- Display: Session Id
iex_equities_deep_iextp_v1_0_8.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
iex_equities_deep_iextp_v1_0_8.session_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deep_iextp_v1_0_8.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.session_id, range, value, display)

  return offset + length, value
end

-- Channel Id
iex_equities_deep_iextp_v1_0_8.channel_id = {}

-- Size: Channel Id
iex_equities_deep_iextp_v1_0_8.channel_id.size = 4

-- Display: Channel Id
iex_equities_deep_iextp_v1_0_8.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
iex_equities_deep_iextp_v1_0_8.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deep_iextp_v1_0_8.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Message Protocol Id
iex_equities_deep_iextp_v1_0_8.message_protocol_id = {}

-- Size: Message Protocol Id
iex_equities_deep_iextp_v1_0_8.message_protocol_id.size = 2

-- Display: Message Protocol Id
iex_equities_deep_iextp_v1_0_8.message_protocol_id.display = function(value)
  return "Message Protocol Id: "..value
end

-- Dissect: Message Protocol Id
iex_equities_deep_iextp_v1_0_8.message_protocol_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.message_protocol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deep_iextp_v1_0_8.message_protocol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.message_protocol_id, range, value, display)

  return offset + length, value
end

-- Reserved
iex_equities_deep_iextp_v1_0_8.reserved = {}

-- Size: Reserved
iex_equities_deep_iextp_v1_0_8.reserved.size = 1

-- Display: Reserved
iex_equities_deep_iextp_v1_0_8.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
iex_equities_deep_iextp_v1_0_8.reserved.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.reserved.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = iex_equities_deep_iextp_v1_0_8.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.reserved, range, value, display)

  return offset + length, value
end

-- Version
iex_equities_deep_iextp_v1_0_8.version = {}

-- Size: Version
iex_equities_deep_iextp_v1_0_8.version.size = 1

-- Display: Version
iex_equities_deep_iextp_v1_0_8.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
iex_equities_deep_iextp_v1_0_8.version.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_deep_iextp_v1_0_8.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_deep_iextp_v1_0_8.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.version, range, value, display)

  return offset + length, value
end

-- Iextp Header
iex_equities_deep_iextp_v1_0_8.iextp_header = {}

-- Size: Iextp Header
iex_equities_deep_iextp_v1_0_8.iextp_header.size =
  iex_equities_deep_iextp_v1_0_8.version.size + 
  iex_equities_deep_iextp_v1_0_8.reserved.size + 
  iex_equities_deep_iextp_v1_0_8.message_protocol_id.size + 
  iex_equities_deep_iextp_v1_0_8.channel_id.size + 
  iex_equities_deep_iextp_v1_0_8.session_id.size + 
  iex_equities_deep_iextp_v1_0_8.payload_length.size + 
  iex_equities_deep_iextp_v1_0_8.message_count.size + 
  iex_equities_deep_iextp_v1_0_8.stream_offset.size + 
  iex_equities_deep_iextp_v1_0_8.first_message_sequence_number.size + 
  iex_equities_deep_iextp_v1_0_8.send_time.size

-- Display: Iextp Header
iex_equities_deep_iextp_v1_0_8.iextp_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Iextp Header
iex_equities_deep_iextp_v1_0_8.iextp_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = iex_equities_deep_iextp_v1_0_8.version.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte
  index, reserved = iex_equities_deep_iextp_v1_0_8.reserved.dissect(buffer, index, packet, parent)

  -- Message Protocol Id: 2 Byte Unsigned Fixed Width Integer
  index, message_protocol_id = iex_equities_deep_iextp_v1_0_8.message_protocol_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 4 Byte Unsigned Fixed Width Integer
  index, channel_id = iex_equities_deep_iextp_v1_0_8.channel_id.dissect(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = iex_equities_deep_iextp_v1_0_8.session_id.dissect(buffer, index, packet, parent)

  -- Payload Length: 2 Byte Unsigned Fixed Width Integer
  index, payload_length = iex_equities_deep_iextp_v1_0_8.payload_length.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = iex_equities_deep_iextp_v1_0_8.message_count.dissect(buffer, index, packet, parent)

  -- Stream Offset: 8 Byte Unsigned Fixed Width Integer
  index, stream_offset = iex_equities_deep_iextp_v1_0_8.stream_offset.dissect(buffer, index, packet, parent)

  -- First Message Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, first_message_sequence_number = iex_equities_deep_iextp_v1_0_8.first_message_sequence_number.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = iex_equities_deep_iextp_v1_0_8.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Iextp Header
iex_equities_deep_iextp_v1_0_8.iextp_header.dissect = function(buffer, offset, packet, parent)
  if show.iextp_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_deep_iextp_v1_0_8.fields.iextp_header, buffer(offset, 0))
    local index = iex_equities_deep_iextp_v1_0_8.iextp_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_deep_iextp_v1_0_8.iextp_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_deep_iextp_v1_0_8.iextp_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
iex_equities_deep_iextp_v1_0_8.packet = {}

-- Dissect Packet
iex_equities_deep_iextp_v1_0_8.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Iextp Header: Struct of 10 fields
  index, iextp_header = iex_equities_deep_iextp_v1_0_8.iextp_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 26, 2):le_uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = iex_equities_deep_iextp_v1_0_8.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_iex_equities_deep_iextp_v1_0_8.init()
end

-- Dissector for Iex Equities Deep IexTp 1.0.8
function omi_iex_equities_deep_iextp_v1_0_8.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_iex_equities_deep_iextp_v1_0_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_iex_equities_deep_iextp_v1_0_8, buffer(), omi_iex_equities_deep_iextp_v1_0_8.description, "("..buffer:len().." Bytes)")
  return iex_equities_deep_iextp_v1_0_8.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_iex_equities_deep_iextp_v1_0_8)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
iex_equities_deep_iextp_v1_0_8.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Iex Equities Deep IexTp 1.0.8
local function omi_iex_equities_deep_iextp_v1_0_8_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not iex_equities_deep_iextp_v1_0_8.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_iex_equities_deep_iextp_v1_0_8
  omi_iex_equities_deep_iextp_v1_0_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Iex Equities Deep IexTp 1.0.8
omi_iex_equities_deep_iextp_v1_0_8:register_heuristic("udp", omi_iex_equities_deep_iextp_v1_0_8_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Investors Exchange
--   Version: 1.0.8
--   Date: Tuesday, February 27, 2018
--   Specification: IEX DEEP Specification v1.08.pdf
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
