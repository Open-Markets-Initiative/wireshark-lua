-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe TitaniumEquities OneFeed Pitch 1.4.13 Protocol
local omi_cboe_titaniumequities_onefeed_pitch_v1_4_13 = Proto("Cboe.TitaniumEquities.OneFeed.Pitch.v1.4.13.Lua", "Cboe TitaniumEquities OneFeed Pitch 1.4.13")

-- Protocol table
local cboe_titaniumequities_onefeed_pitch_v1_4_13 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe TitaniumEquities OneFeed Pitch 1.4.13 Fields
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.adap_block = ProtoField.new("Adap Block", "cboe.titaniumequities.onefeed.pitch.v1.4.13.adapblock", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.adap_block_size = ProtoField.new("Adap Block Size", "cboe.titaniumequities.onefeed.pitch.v1.4.13.adapblocksize", ftypes.UINT8)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.adap_blocks = ProtoField.new("Adap Blocks", "cboe.titaniumequities.onefeed.pitch.v1.4.13.adapblocks", ftypes.UINT8)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.adap_complete = ProtoField.new("Adap Complete", "cboe.titaniumequities.onefeed.pitch.v1.4.13.adapcomplete", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.adap_flags = ProtoField.new("Adap Flags", "cboe.titaniumequities.onefeed.pitch.v1.4.13.adapflags", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.cboe_cumulative_executed_volume = ProtoField.new("Cboe Cumulative Executed Volume", "cboe.titaniumequities.onefeed.pitch.v1.4.13.cboecumulativeexecutedvolume", ftypes.UINT64)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.clear_adap = ProtoField.new("Clear Adap", "cboe.titaniumequities.onefeed.pitch.v1.4.13.clearadap", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.closing_price = ProtoField.new("Closing Price", "cboe.titaniumequities.onefeed.pitch.v1.4.13.closingprice", ftypes.DOUBLE)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.consolidated_best_ask_price = ProtoField.new("Consolidated Best Ask Price", "cboe.titaniumequities.onefeed.pitch.v1.4.13.consolidatedbestaskprice", ftypes.DOUBLE)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.consolidated_best_ask_quantity = ProtoField.new("Consolidated Best Ask Quantity", "cboe.titaniumequities.onefeed.pitch.v1.4.13.consolidatedbestaskquantity", ftypes.UINT64)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.consolidated_best_bid_price = ProtoField.new("Consolidated Best Bid Price", "cboe.titaniumequities.onefeed.pitch.v1.4.13.consolidatedbestbidprice", ftypes.DOUBLE)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.consolidated_best_bid_quantity = ProtoField.new("Consolidated Best Bid Quantity", "cboe.titaniumequities.onefeed.pitch.v1.4.13.consolidatedbestbidquantity", ftypes.UINT64)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.consolidated_best_quote_price = ProtoField.new("Consolidated Best Quote Price", "cboe.titaniumequities.onefeed.pitch.v1.4.13.consolidatedbestquoteprice", ftypes.DOUBLE)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.consolidated_quote_quantity = ProtoField.new("Consolidated Quote Quantity", "cboe.titaniumequities.onefeed.pitch.v1.4.13.consolidatedquotequantity", ftypes.UINT64)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.count = ProtoField.new("Count", "cboe.titaniumequities.onefeed.pitch.v1.4.13.count", ftypes.UINT8)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.data_source = ProtoField.new("Data Source", "cboe.titaniumequities.onefeed.pitch.v1.4.13.datasource", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.fractional_symbol_summary_flags = ProtoField.new("Fractional Symbol Summary Flags", "cboe.titaniumequities.onefeed.pitch.v1.4.13.fractionalsymbolsummaryflags", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.fractional_trade_break_flags = ProtoField.new("Fractional Trade Break Flags", "cboe.titaniumequities.onefeed.pitch.v1.4.13.fractionaltradebreakflags", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.fractional_trade_flags = ProtoField.new("Fractional Trade Flags", "cboe.titaniumequities.onefeed.pitch.v1.4.13.fractionaltradeflags", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.high_price = ProtoField.new("High Price", "cboe.titaniumequities.onefeed.pitch.v1.4.13.highprice", ftypes.DOUBLE)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.last_price = ProtoField.new("Last Price", "cboe.titaniumequities.onefeed.pitch.v1.4.13.lastprice", ftypes.DOUBLE)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.last_quantity = ProtoField.new("Last Quantity", "cboe.titaniumequities.onefeed.pitch.v1.4.13.lastquantity", ftypes.UINT64)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.last_sale_eligible = ProtoField.new("Last Sale Eligible", "cboe.titaniumequities.onefeed.pitch.v1.4.13.lastsaleeligible", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.last_update_timestamp = ProtoField.new("Last Update Timestamp", "cboe.titaniumequities.onefeed.pitch.v1.4.13.lastupdatetimestamp", ftypes.UINT64)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.length = ProtoField.new("Length", "cboe.titaniumequities.onefeed.pitch.v1.4.13.length", ftypes.UINT16)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.long_update_adap_block = ProtoField.new("Long Update Adap Block", "cboe.titaniumequities.onefeed.pitch.v1.4.13.longupdateadapblock", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.low_price = ProtoField.new("Low Price", "cboe.titaniumequities.onefeed.pitch.v1.4.13.lowprice", ftypes.DOUBLE)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.market_center = ProtoField.new("Market Center", "cboe.titaniumequities.onefeed.pitch.v1.4.13.marketcenter", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.market_center_execution_id = ProtoField.new("Market Center Execution Id", "cboe.titaniumequities.onefeed.pitch.v1.4.13.marketcenterexecutionid", ftypes.UINT64)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.market_status = ProtoField.new("Market Status", "cboe.titaniumequities.onefeed.pitch.v1.4.13.marketstatus", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.message = ProtoField.new("Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.message", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.message_header = ProtoField.new("Message Header", "cboe.titaniumequities.onefeed.pitch.v1.4.13.messageheader", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.message_length = ProtoField.new("Message Length", "cboe.titaniumequities.onefeed.pitch.v1.4.13.messagelength", ftypes.UINT8)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.message_type = ProtoField.new("Message Type", "cboe.titaniumequities.onefeed.pitch.v1.4.13.messagetype", ftypes.UINT8)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.national_cumulative_volume = ProtoField.new("National Cumulative Volume", "cboe.titaniumequities.onefeed.pitch.v1.4.13.nationalcumulativevolume", ftypes.DOUBLE)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.national_volume_status = ProtoField.new("National Volume Status", "cboe.titaniumequities.onefeed.pitch.v1.4.13.nationalvolumestatus", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.open_close_indicator = ProtoField.new("Open Close Indicator", "cboe.titaniumequities.onefeed.pitch.v1.4.13.opencloseindicator", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.opening_price = ProtoField.new("Opening Price", "cboe.titaniumequities.onefeed.pitch.v1.4.13.openingprice", ftypes.DOUBLE)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.packet = ProtoField.new("Packet", "cboe.titaniumequities.onefeed.pitch.v1.4.13.packet", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.packet_header = ProtoField.new("Packet Header", "cboe.titaniumequities.onefeed.pitch.v1.4.13.packetheader", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.price = ProtoField.new("Price", "cboe.titaniumequities.onefeed.pitch.v1.4.13.price", ftypes.DOUBLE)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.quantity = ProtoField.new("Quantity", "cboe.titaniumequities.onefeed.pitch.v1.4.13.quantity", ftypes.UINT32)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.titaniumequities.onefeed.pitch.v1.4.13.regshoaction", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.reserved_5 = ProtoField.new("Reserved 5", "cboe.titaniumequities.onefeed.pitch.v1.4.13.reserved5", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.reserved_6 = ProtoField.new("Reserved 6", "cboe.titaniumequities.onefeed.pitch.v1.4.13.reserved6", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.reserved_7 = ProtoField.new("Reserved 7", "cboe.titaniumequities.onefeed.pitch.v1.4.13.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.reserved_binary_1 = ProtoField.new("Reserved Binary 1", "cboe.titaniumequities.onefeed.pitch.v1.4.13.reservedbinary1", ftypes.UINT8)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.retail_price_improvement = ProtoField.new("Retail Price Improvement", "cboe.titaniumequities.onefeed.pitch.v1.4.13.retailpriceimprovement", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.sequence = ProtoField.new("Sequence", "cboe.titaniumequities.onefeed.pitch.v1.4.13.sequence", ftypes.UINT32)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.session_indicator = ProtoField.new("Session Indicator", "cboe.titaniumequities.onefeed.pitch.v1.4.13.sessionindicator", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.short_long_blocks = ProtoField.new("Short Long Blocks", "cboe.titaniumequities.onefeed.pitch.v1.4.13.shortlongblocks", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.short_update_adap_block = ProtoField.new("Short Update Adap Block", "cboe.titaniumequities.onefeed.pitch.v1.4.13.shortupdateadapblock", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.side = ProtoField.new("Side", "cboe.titaniumequities.onefeed.pitch.v1.4.13.side", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.titaniumequities.onefeed.pitch.v1.4.13.sideindicator", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.sip_volume_status = ProtoField.new("Sip Volume Status", "cboe.titaniumequities.onefeed.pitch.v1.4.13.sipvolumestatus", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.symbol_alphanumeric_14 = ProtoField.new("Symbol Alphanumeric 14", "cboe.titaniumequities.onefeed.pitch.v1.4.13.symbolalphanumeric14", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.symbol_alphanumeric_8 = ProtoField.new("Symbol Alphanumeric 8", "cboe.titaniumequities.onefeed.pitch.v1.4.13.symbolalphanumeric8", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.timestamp = ProtoField.new("Timestamp", "cboe.titaniumequities.onefeed.pitch.v1.4.13.timestamp", ftypes.UINT64)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.trading_status = ProtoField.new("Trading Status", "cboe.titaniumequities.onefeed.pitch.v1.4.13.tradingstatus", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.titaniumequities.onefeed.pitch.v1.4.13.transactiontime", ftypes.UINT64)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.unit = ProtoField.new("Unit", "cboe.titaniumequities.onefeed.pitch.v1.4.13.unit", ftypes.UINT8)

-- Cboe TitaniumEquities Pitch OneFeed 1.4.13 Application Messages
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.adap_message = ProtoField.new("Adap Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.adapmessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.best_quote_update_message = ProtoField.new("Best Quote Update Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.bestquoteupdatemessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.cboe_market_status_message = ProtoField.new("Cboe Market Status Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.cboemarketstatusmessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.clear_quote_message = ProtoField.new("Clear Quote Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.clearquotemessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_adap_message = ProtoField.new("Expanded Adap Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.expandedadapmessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_best_quote_update_message = ProtoField.new("Expanded Best Quote Update Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.expandedbestquoteupdatemessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_clear_quote_message = ProtoField.new("Expanded Clear Quote Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.expandedclearquotemessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_fractional_end_of_day_summary_message = ProtoField.new("Expanded Fractional End Of Day Summary Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.expandedfractionalendofdaysummarymessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_fractional_symbol_summary_message = ProtoField.new("Expanded Fractional Symbol Summary Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.expandedfractionalsymbolsummarymessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_fractional_trade_break_message = ProtoField.new("Expanded Fractional Trade Break Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.expandedfractionaltradebreakmessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_fractional_trade_message = ProtoField.new("Expanded Fractional Trade Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.expandedfractionaltrademessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_opening_closing_price_message = ProtoField.new("Expanded Opening Closing Price Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.expandedopeningclosingpricemessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_trading_status_message = ProtoField.new("Expanded Trading Status Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.expandedtradingstatusmessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.fractional_end_of_day_summary_message = ProtoField.new("Fractional End Of Day Summary Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.fractionalendofdaysummarymessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.fractional_symbol_summary_message = ProtoField.new("Fractional Symbol Summary Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.fractionalsymbolsummarymessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.fractional_trade_break_message = ProtoField.new("Fractional Trade Break Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.fractionaltradebreakmessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.fractional_trade_message = ProtoField.new("Fractional Trade Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.fractionaltrademessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.opening_closing_price_message = ProtoField.new("Opening Closing Price Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.openingclosingpricemessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.rpi_message = ProtoField.new("Rpi Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.rpimessage", ftypes.STRING)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.titaniumequities.onefeed.pitch.v1.4.13.tradingstatusmessage", ftypes.STRING)

-- Cboe TitaniumEquities OneFeed Pitch 1.4.13 generated fields
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.adap_block_index = ProtoField.new("Adap Block Index", "cboe.titaniumequities.onefeed.pitch.v1.4.13.adapblockindex", ftypes.UINT16)
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.message_index = ProtoField.new("Message Index", "cboe.titaniumequities.onefeed.pitch.v1.4.13.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe TitaniumEquities OneFeed Pitch 1.4.13 Element Dissection Options
show.adap_block = true
show.adap_flags = true
show.application_messages = true
show.fractional_symbol_summary_flags = true
show.fractional_trade_break_flags = true
show.fractional_trade_flags = true
show.long_update_adap_block = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.short_update_adap_block = true
show.message_index = true
show.adap_block_index = true

-- Register Cboe TitaniumEquities OneFeed Pitch 1.4.13 Show Options
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_adap_block = Pref.bool("Show Adap Block", show.adap_block, "Parse and add Adap Block to protocol tree")
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_adap_flags = Pref.bool("Show Adap Flags", show.adap_flags, "Parse and add Adap Flags to protocol tree")
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_fractional_symbol_summary_flags = Pref.bool("Show Fractional Symbol Summary Flags", show.fractional_symbol_summary_flags, "Parse and add Fractional Symbol Summary Flags to protocol tree")
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_fractional_trade_break_flags = Pref.bool("Show Fractional Trade Break Flags", show.fractional_trade_break_flags, "Parse and add Fractional Trade Break Flags to protocol tree")
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_fractional_trade_flags = Pref.bool("Show Fractional Trade Flags", show.fractional_trade_flags, "Parse and add Fractional Trade Flags to protocol tree")
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_long_update_adap_block = Pref.bool("Show Long Update Adap Block", show.long_update_adap_block, "Parse and add Long Update Adap Block to protocol tree")
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_short_update_adap_block = Pref.bool("Show Short Update Adap Block", show.short_update_adap_block, "Parse and add Short Update Adap Block to protocol tree")
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_adap_block_index = Pref.bool("Show Adap Block Index", show.adap_block_index, "Show generated adap block index in protocol tree")

-- Handle changed preferences
function omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs_changed()

  -- Check if show options have changed
  if show.adap_block ~= omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_adap_block then
    show.adap_block = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_adap_block
  end
  if show.adap_flags ~= omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_adap_flags then
    show.adap_flags = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_adap_flags
  end
  if show.application_messages ~= omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_application_messages then
    show.application_messages = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_application_messages
  end
  if show.fractional_symbol_summary_flags ~= omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_fractional_symbol_summary_flags then
    show.fractional_symbol_summary_flags = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_fractional_symbol_summary_flags
  end
  if show.fractional_trade_break_flags ~= omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_fractional_trade_break_flags then
    show.fractional_trade_break_flags = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_fractional_trade_break_flags
  end
  if show.fractional_trade_flags ~= omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_fractional_trade_flags then
    show.fractional_trade_flags = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_fractional_trade_flags
  end
  if show.long_update_adap_block ~= omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_long_update_adap_block then
    show.long_update_adap_block = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_long_update_adap_block
  end
  if show.message ~= omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_message then
    show.message = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_message
  end
  if show.message_header ~= omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_message_header then
    show.message_header = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_packet then
    show.packet = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_packet_header then
    show.packet_header = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_packet_header
  end
  if show.short_update_adap_block ~= omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_short_update_adap_block then
    show.short_update_adap_block = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_short_update_adap_block
  end
  if show.message_index ~= omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_message_index then
    show.message_index = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_message_index
  end
  if show.adap_block_index ~= omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_adap_block_index then
    show.adap_block_index = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.prefs.show_adap_block_index
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
-- Cboe TitaniumEquities OneFeed Pitch 1.4.13 Fields
-----------------------------------------------------------------------

-- Adap Block Size
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block_size = {}

-- Size: Adap Block Size
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block_size.size = 1

-- Display: Adap Block Size
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block_size.display = function(value)
  return "Adap Block Size: "..value
end

-- Dissect: Adap Block Size
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.adap_block_size, range, value, display)

  return offset + length, value
end

-- Adap Blocks
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_blocks = {}

-- Size: Adap Blocks
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_blocks.size = 1

-- Display: Adap Blocks
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_blocks.display = function(value)
  return "Adap Blocks: "..value
end

-- Dissect: Adap Blocks
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_blocks.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_blocks.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_blocks.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.adap_blocks, range, value, display)

  return offset + length, value
end

-- Cboe Cumulative Executed Volume
cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume = {}

-- Size: Cboe Cumulative Executed Volume
cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.size = 8

-- Display: Cboe Cumulative Executed Volume
cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.display = function(value)
  return "Cboe Cumulative Executed Volume: "..value
end

-- Dissect: Cboe Cumulative Executed Volume
cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.cboe_cumulative_executed_volume, range, value, display)

  return offset + length, value
end

-- Closing Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.closing_price = {}

-- Size: Closing Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.closing_price.size = 8

-- Display: Closing Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Translate: Closing Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.closing_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Closing Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumequities_onefeed_pitch_v1_4_13.closing_price.translate(raw)
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Consolidated Best Ask Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_price = {}

-- Size: Consolidated Best Ask Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_price.size = 8

-- Display: Consolidated Best Ask Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_price.display = function(value)
  return "Consolidated Best Ask Price: "..value
end

-- Translate: Consolidated Best Ask Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated Best Ask Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_price.translate(raw)
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.consolidated_best_ask_price, range, value, display)

  return offset + length, value
end

-- Consolidated Best Ask Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_quantity = {}

-- Size: Consolidated Best Ask Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_quantity.size = 8

-- Display: Consolidated Best Ask Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_quantity.display = function(value)
  return "Consolidated Best Ask Quantity: "..value
end

-- Dissect: Consolidated Best Ask Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.consolidated_best_ask_quantity, range, value, display)

  return offset + length, value
end

-- Consolidated Best Bid Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_price = {}

-- Size: Consolidated Best Bid Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_price.size = 8

-- Display: Consolidated Best Bid Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_price.display = function(value)
  return "Consolidated Best Bid Price: "..value
end

-- Translate: Consolidated Best Bid Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated Best Bid Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_price.translate(raw)
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.consolidated_best_bid_price, range, value, display)

  return offset + length, value
end

-- Consolidated Best Bid Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_quantity = {}

-- Size: Consolidated Best Bid Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_quantity.size = 8

-- Display: Consolidated Best Bid Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_quantity.display = function(value)
  return "Consolidated Best Bid Quantity: "..value
end

-- Dissect: Consolidated Best Bid Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.consolidated_best_bid_quantity, range, value, display)

  return offset + length, value
end

-- Consolidated Best Quote Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_quote_price = {}

-- Size: Consolidated Best Quote Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_quote_price.size = 8

-- Display: Consolidated Best Quote Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_quote_price.display = function(value)
  return "Consolidated Best Quote Price: "..value
end

-- Translate: Consolidated Best Quote Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_quote_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated Best Quote Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_quote_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_quote_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_quote_price.translate(raw)
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_quote_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.consolidated_best_quote_price, range, value, display)

  return offset + length, value
end

-- Consolidated Quote Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_quote_quantity = {}

-- Size: Consolidated Quote Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_quote_quantity.size = 8

-- Display: Consolidated Quote Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_quote_quantity.display = function(value)
  return "Consolidated Quote Quantity: "..value
end

-- Dissect: Consolidated Quote Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_quote_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_quote_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_quote_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.consolidated_quote_quantity, range, value, display)

  return offset + length, value
end

-- Count
cboe_titaniumequities_onefeed_pitch_v1_4_13.count = {}

-- Size: Count
cboe_titaniumequities_onefeed_pitch_v1_4_13.count.size = 1

-- Display: Count
cboe_titaniumequities_onefeed_pitch_v1_4_13.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_titaniumequities_onefeed_pitch_v1_4_13.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.count, range, value, display)

  return offset + length, value
end

-- Data Source
cboe_titaniumequities_onefeed_pitch_v1_4_13.data_source = {}

-- Size: Data Source
cboe_titaniumequities_onefeed_pitch_v1_4_13.data_source.size = 1

-- Display: Data Source
cboe_titaniumequities_onefeed_pitch_v1_4_13.data_source.display = function(value)
  if value == "C" then
    return "Data Source: Cta (C)"
  end
  if value == "U" then
    return "Data Source: Utp (U)"
  end
  if value == "i" then
    return "Data Source: Indicative Value (i)"
  end
  if value == "c" then
    return "Data Source: Calculated Value From Tmx Ip (c)"
  end

  return "Data Source: Unknown("..value..")"
end

-- Dissect: Data Source
cboe_titaniumequities_onefeed_pitch_v1_4_13.data_source.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.data_source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.data_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.data_source, range, value, display)

  return offset + length, value
end

-- High Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.high_price = {}

-- Size: High Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.high_price.size = 8

-- Display: High Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.high_price.display = function(value)
  return "High Price: "..value
end

-- Translate: High Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.high_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: High Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.high_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.high_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumequities_onefeed_pitch_v1_4_13.high_price.translate(raw)
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.high_price, range, value, display)

  return offset + length, value
end

-- Last Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.last_price = {}

-- Size: Last Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.last_price.size = 8

-- Display: Last Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.last_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.last_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_price.translate(raw)
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.last_quantity = {}

-- Size: Last Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.last_quantity.size = 8

-- Display: Last Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.last_quantity.display = function(value)
  return "Last Quantity: "..value
end

-- Dissect: Last Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.last_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.last_quantity, range, value, display)

  return offset + length, value
end

-- Last Update Timestamp
cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp = {}

-- Size: Last Update Timestamp
cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.size = 8

-- Display: Last Update Timestamp
cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.display = function(value)
  return "Last Update Timestamp: "..value
end

-- Dissect: Last Update Timestamp
cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.last_update_timestamp, range, value, display)

  return offset + length, value
end

-- Length
cboe_titaniumequities_onefeed_pitch_v1_4_13.length = {}

-- Size: Length
cboe_titaniumequities_onefeed_pitch_v1_4_13.length.size = 2

-- Display: Length
cboe_titaniumequities_onefeed_pitch_v1_4_13.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_titaniumequities_onefeed_pitch_v1_4_13.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.length, range, value, display)

  return offset + length, value
end

-- Low Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.low_price = {}

-- Size: Low Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.low_price.size = 8

-- Display: Low Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.low_price.display = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.low_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Low Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.low_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.low_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumequities_onefeed_pitch_v1_4_13.low_price.translate(raw)
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.low_price, range, value, display)

  return offset + length, value
end

-- Market Center
cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center = {}

-- Size: Market Center
cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size = 1

-- Display: Market Center
cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.display = function(value)
  if value == "Y" then
    return "Market Center: Byx (Y)"
  end
  if value == "Z" then
    return "Market Center: Bzx (Z)"
  end
  if value == "A" then
    return "Market Center: Edga (A)"
  end
  if value == "X" then
    return "Market Center: Edgx (X)"
  end
  if value == "L" then
    return "Market Center: Neol (L)"
  end
  if value == "N" then
    return "Market Center: Neon (N)"
  end
  if value == "D" then
    return "Market Center: Neod (D)"
  end
  if value == "M" then
    return "Market Center: Match Now (M)"
  end
  if value == "r" then
    return "Market Center: Neo Cross (r)"
  end
  if value == "t" then
    return "Market Center: Neosst (t)"
  end

  return "Market Center: Unknown("..value..")"
end

-- Dissect: Market Center
cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.market_center, range, value, display)

  return offset + length, value
end

-- Market Center Execution Id
cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center_execution_id = {}

-- Size: Market Center Execution Id
cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center_execution_id.size = 8

-- Display: Market Center Execution Id
cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center_execution_id.display = function(value)
  return "Market Center Execution Id: "..value
end

-- Dissect: Market Center Execution Id
cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center_execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center_execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center_execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.market_center_execution_id, range, value, display)

  return offset + length, value
end

-- Market Status
cboe_titaniumequities_onefeed_pitch_v1_4_13.market_status = {}

-- Size: Market Status
cboe_titaniumequities_onefeed_pitch_v1_4_13.market_status.size = 1

-- Display: Market Status
cboe_titaniumequities_onefeed_pitch_v1_4_13.market_status.display = function(value)
  if value == "N" then
    return "Market Status: Normal (N)"
  end
  if value == "E" then
    return "Market Status: Excluded From Symbol Summary And Adap Updates (E)"
  end
  if value == "I" then
    return "Market Status: Incomplete (I)"
  end

  return "Market Status: Unknown("..value..")"
end

-- Dissect: Market Status
cboe_titaniumequities_onefeed_pitch_v1_4_13.market_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.market_status, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_titaniumequities_onefeed_pitch_v1_4_13.message_length = {}

-- Size: Message Length
cboe_titaniumequities_onefeed_pitch_v1_4_13.message_length.size = 1

-- Display: Message Length
cboe_titaniumequities_onefeed_pitch_v1_4_13.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_titaniumequities_onefeed_pitch_v1_4_13.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_titaniumequities_onefeed_pitch_v1_4_13.message_type = {}

-- Size: Message Type
cboe_titaniumequities_onefeed_pitch_v1_4_13.message_type.size = 1

-- Display: Message Type
cboe_titaniumequities_onefeed_pitch_v1_4_13.message_type.display = function(value)
  if value == 0xA2 then
    return "Message Type: Clear Quote Message (0xA2)"
  end
  if value == 0xF0 then
    return "Message Type: Expanded Clear Quote Message (0xF0)"
  end
  if value == 0xE7 then
    return "Message Type: Fractional Symbol Summary Message (0xE7)"
  end
  if value == 0xEB then
    return "Message Type: Expanded Fractional Symbol Summary Message (0xEB)"
  end
  if value == 0xA5 then
    return "Message Type: Best Quote Update Message (0xA5)"
  end
  if value == 0xF2 then
    return "Message Type: Expanded Best Quote Update Message (0xF2)"
  end
  if value == 0xA6 then
    return "Message Type: Cboe Market Status Message (0xA6)"
  end
  if value == 0xA7 then
    return "Message Type: Adap Message (0xA7)"
  end
  if value == 0xF3 then
    return "Message Type: Expanded Adap Message (0xF3)"
  end
  if value == 0xA8 then
    return "Message Type: Rpi Message (0xA8)"
  end
  if value == 0xE8 then
    return "Message Type: Fractional Trade Message (0xE8)"
  end
  if value == 0xEC then
    return "Message Type: Expanded Fractional Trade Message (0xEC)"
  end
  if value == 0xE9 then
    return "Message Type: Fractional Trade Break Message (0xE9)"
  end
  if value == 0xED then
    return "Message Type: Expanded Fractional Trade Break Message (0xED)"
  end
  if value == 0xAB then
    return "Message Type: Trading Status Message (0xAB)"
  end
  if value == 0xF6 then
    return "Message Type: Expanded Trading Status Message (0xF6)"
  end
  if value == 0xB0 then
    return "Message Type: Opening Closing Price Message (0xB0)"
  end
  if value == 0xF7 then
    return "Message Type: Expanded Opening Closing Price Message (0xF7)"
  end
  if value == 0xEA then
    return "Message Type: Fractional End Of Day Summary Message (0xEA)"
  end
  if value == 0xEF then
    return "Message Type: Expanded Fractional End Of Day Summary Message (0xEF)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_titaniumequities_onefeed_pitch_v1_4_13.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.message_type, range, value, display)

  return offset + length, value
end

-- National Cumulative Volume
cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume = {}

-- Size: National Cumulative Volume
cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.size = 8

-- Display: National Cumulative Volume
cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.display = function(value)
  return "National Cumulative Volume: "..value
end

-- Translate: National Cumulative Volume
cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Cumulative Volume
cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.translate(raw)
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.national_cumulative_volume, range, value, display)

  return offset + length, value
end

-- Open Close Indicator
cboe_titaniumequities_onefeed_pitch_v1_4_13.open_close_indicator = {}

-- Size: Open Close Indicator
cboe_titaniumequities_onefeed_pitch_v1_4_13.open_close_indicator.size = 1

-- Display: Open Close Indicator
cboe_titaniumequities_onefeed_pitch_v1_4_13.open_close_indicator.display = function(value)
  if value == "O" then
    return "Open Close Indicator: Opening Price (O)"
  end
  if value == "C" then
    return "Open Close Indicator: Closing Price (C)"
  end

  return "Open Close Indicator: Unknown("..value..")"
end

-- Dissect: Open Close Indicator
cboe_titaniumequities_onefeed_pitch_v1_4_13.open_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.open_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.open_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.open_close_indicator, range, value, display)

  return offset + length, value
end

-- Opening Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_price = {}

-- Size: Opening Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_price.size = 8

-- Display: Opening Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Translate: Opening Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Opening Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_price.translate(raw)
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.price = {}

-- Size: Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.price.size = 8

-- Display: Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_titaniumequities_onefeed_pitch_v1_4_13.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumequities_onefeed_pitch_v1_4_13.price.translate(raw)
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.quantity = {}

-- Size: Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.quantity.size = 4

-- Display: Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_titaniumequities_onefeed_pitch_v1_4_13.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
cboe_titaniumequities_onefeed_pitch_v1_4_13.reg_sho_action = {}

-- Size: Reg Sho Action
cboe_titaniumequities_onefeed_pitch_v1_4_13.reg_sho_action.size = 1

-- Display: Reg Sho Action
cboe_titaniumequities_onefeed_pitch_v1_4_13.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_titaniumequities_onefeed_pitch_v1_4_13.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reserved Binary 1
cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1 = {}

-- Size: Reserved Binary 1
cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1.size = 1

-- Display: Reserved Binary 1
cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1.display = function(value)
  return "Reserved Binary 1: "..value
end

-- Dissect: Reserved Binary 1
cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.reserved_binary_1, range, value, display)

  return offset + length, value
end

-- Retail Price Improvement
cboe_titaniumequities_onefeed_pitch_v1_4_13.retail_price_improvement = {}

-- Size: Retail Price Improvement
cboe_titaniumequities_onefeed_pitch_v1_4_13.retail_price_improvement.size = 1

-- Display: Retail Price Improvement
cboe_titaniumequities_onefeed_pitch_v1_4_13.retail_price_improvement.display = function(value)
  if value == "B" then
    return "Retail Price Improvement: Buy Side Rpi (B)"
  end
  if value == "S" then
    return "Retail Price Improvement: Sell Side Rpi (S)"
  end
  if value == "A" then
    return "Retail Price Improvement: Buy And Sell Rpi (A)"
  end
  if value == "N" then
    return "Retail Price Improvement: No Rpi (N)"
  end

  return "Retail Price Improvement: Unknown("..value..")"
end

-- Dissect: Retail Price Improvement
cboe_titaniumequities_onefeed_pitch_v1_4_13.retail_price_improvement.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.retail_price_improvement.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.retail_price_improvement.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.retail_price_improvement, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_titaniumequities_onefeed_pitch_v1_4_13.sequence = {}

-- Size: Sequence
cboe_titaniumequities_onefeed_pitch_v1_4_13.sequence.size = 4

-- Display: Sequence
cboe_titaniumequities_onefeed_pitch_v1_4_13.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_titaniumequities_onefeed_pitch_v1_4_13.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Indicator
cboe_titaniumequities_onefeed_pitch_v1_4_13.session_indicator = {}

-- Size: Session Indicator
cboe_titaniumequities_onefeed_pitch_v1_4_13.session_indicator.size = 1

-- Display: Session Indicator
cboe_titaniumequities_onefeed_pitch_v1_4_13.session_indicator.display = function(value)
  if value == "R" then
    return "Session Indicator: Regular Trading Session (R)"
  end
  if value == "P" then
    return "Session Indicator: Pre Or Postmarket Session (P)"
  end

  return "Session Indicator: Unknown("..value..")"
end

-- Dissect: Session Indicator
cboe_titaniumequities_onefeed_pitch_v1_4_13.session_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.session_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.session_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.session_indicator, range, value, display)

  return offset + length, value
end

-- Side
cboe_titaniumequities_onefeed_pitch_v1_4_13.side = {}

-- Size: Side
cboe_titaniumequities_onefeed_pitch_v1_4_13.side.size = 1

-- Display: Side
cboe_titaniumequities_onefeed_pitch_v1_4_13.side.display = function(value)
  return "Side: "..value
end

-- Dissect: Side
cboe_titaniumequities_onefeed_pitch_v1_4_13.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.side, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_titaniumequities_onefeed_pitch_v1_4_13.side_indicator = {}

-- Size: Side Indicator
cboe_titaniumequities_onefeed_pitch_v1_4_13.side_indicator.size = 1

-- Display: Side Indicator
cboe_titaniumequities_onefeed_pitch_v1_4_13.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Side (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Side (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_titaniumequities_onefeed_pitch_v1_4_13.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Symbol Alphanumeric 14
cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14 = {}

-- Size: Symbol Alphanumeric 14
cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.size = 14

-- Display: Symbol Alphanumeric 14
cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.display = function(value)
  return "Symbol Alphanumeric 14: "..value
end

-- Dissect: Symbol Alphanumeric 14
cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.symbol_alphanumeric_14, range, value, display)

  return offset + length, value
end

-- Symbol Alphanumeric 8
cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8 = {}

-- Size: Symbol Alphanumeric 8
cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.size = 8

-- Display: Symbol Alphanumeric 8
cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.display = function(value)
  return "Symbol Alphanumeric 8: "..value
end

-- Dissect: Symbol Alphanumeric 8
cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.symbol_alphanumeric_8, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp = {}

-- Size: Timestamp
cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.size = 8

-- Display: Timestamp
cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status = {}

-- Size: Trading Status
cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status.size = 1

-- Display: Trading Status
cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status.display = function(value)
  if value == "A" then
    return "Trading Status: Accepting Orders For Queuing (A)"
  end
  if value == "F" then
    return "Trading Status: Halted Full (F)"
  end
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "M" then
    return "Trading Status: Delayed Closing (M)"
  end
  if value == "O" then
    return "Trading Status: Preclose (O)"
  end
  if value == "P" then
    return "Trading Status: Postclose (P)"
  end
  if value == "Q" then
    return "Trading Status: Quote Only (Q)"
  end
  if value == "S" then
    return "Trading Status: Exchange Specific Suspension (S)"
  end
  if value == "T" then
    return "Trading Status: Trading (T)"
  end
  if value == "X" then
    return "Trading Status: Extended Trading (X)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_titaniumequities_onefeed_pitch_v1_4_13.transaction_time = {}

-- Size: Transaction Time
cboe_titaniumequities_onefeed_pitch_v1_4_13.transaction_time.size = 8

-- Display: Transaction Time
cboe_titaniumequities_onefeed_pitch_v1_4_13.transaction_time.display = function(value)
  return "Transaction Time: "..value
end

-- Dissect: Transaction Time
cboe_titaniumequities_onefeed_pitch_v1_4_13.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Unit
cboe_titaniumequities_onefeed_pitch_v1_4_13.unit = {}

-- Size: Unit
cboe_titaniumequities_onefeed_pitch_v1_4_13.unit.size = 1

-- Display: Unit
cboe_titaniumequities_onefeed_pitch_v1_4_13.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_titaniumequities_onefeed_pitch_v1_4_13.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumequities_onefeed_pitch_v1_4_13.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.unit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe TitaniumEquities OneFeed Pitch 1.4.13
-----------------------------------------------------------------------

-- Expanded Fractional End Of Day Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_end_of_day_summary_message = {}

-- Size: Expanded Fractional End Of Day Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_end_of_day_summary_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.data_source.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.closing_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.high_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.low_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.size

-- Display: Expanded Fractional End Of Day Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Fractional End Of Day Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 14: Alphanumeric
  index, symbol_alphanumeric_14 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.dissect(buffer, index, packet, parent)

  -- Data Source: Alphanumeric
  index, data_source = cboe_titaniumequities_onefeed_pitch_v1_4_13.data_source.dissect(buffer, index, packet, parent)

  -- Opening Price: Binary 8.4 Price
  index, opening_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_price.dissect(buffer, index, packet, parent)

  -- Closing Price: Binary 8.4 Price
  index, closing_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.closing_price.dissect(buffer, index, packet, parent)

  -- High Price: Binary 8.4 Price
  index, high_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Binary 8.4 Price
  index, low_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.low_price.dissect(buffer, index, packet, parent)

  -- National Cumulative Volume: Binary 12.6
  index, national_cumulative_volume = cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Fractional End Of Day Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_fractional_end_of_day_summary_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional End Of Day Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_end_of_day_summary_message = {}

-- Size: Fractional End Of Day Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_end_of_day_summary_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.data_source.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.closing_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.high_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.low_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.size

-- Display: Fractional End Of Day Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional End Of Day Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Data Source: Alphanumeric
  index, data_source = cboe_titaniumequities_onefeed_pitch_v1_4_13.data_source.dissect(buffer, index, packet, parent)

  -- Opening Price: Binary 8.4 Price
  index, opening_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_price.dissect(buffer, index, packet, parent)

  -- Closing Price: Binary 8.4 Price
  index, closing_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.closing_price.dissect(buffer, index, packet, parent)

  -- High Price: Binary 8.4 Price
  index, high_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Binary 8.4 Price
  index, low_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.low_price.dissect(buffer, index, packet, parent)

  -- National Cumulative Volume: Binary 12.6
  index, national_cumulative_volume = cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional End Of Day Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.fractional_end_of_day_summary_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Opening Closing Price Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_opening_closing_price_message = {}

-- Size: Expanded Opening Closing Price Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_opening_closing_price_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.open_close_indicator.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.price.size

-- Display: Expanded Opening Closing Price Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_opening_closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Opening Closing Price Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_opening_closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 14: Alphanumeric
  index, symbol_alphanumeric_14 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.dissect(buffer, index, packet, parent)

  -- Open Close Indicator: Alphanumeric
  index, open_close_indicator = cboe_titaniumequities_onefeed_pitch_v1_4_13.open_close_indicator.dissect(buffer, index, packet, parent)

  -- Price: Binary 8.4 Price
  index, price = cboe_titaniumequities_onefeed_pitch_v1_4_13.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Opening Closing Price Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_opening_closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_opening_closing_price_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_opening_closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_opening_closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_opening_closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Opening Closing Price Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_closing_price_message = {}

-- Size: Opening Closing Price Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_closing_price_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.open_close_indicator.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.price.size

-- Display: Opening Closing Price Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Opening Closing Price Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.dissect(buffer, index, packet, parent)

  -- Open Close Indicator: Alphanumeric
  index, open_close_indicator = cboe_titaniumequities_onefeed_pitch_v1_4_13.open_close_indicator.dissect(buffer, index, packet, parent)

  -- Price: Binary 8.4 Price
  index, price = cboe_titaniumequities_onefeed_pitch_v1_4_13.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Opening Closing Price Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.opening_closing_price_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Trading Status Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_trading_status_message = {}

-- Size: Expanded Trading Status Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_trading_status_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.reg_sho_action.size

-- Display: Expanded Trading Status Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Trading Status Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 14: Alphanumeric
  index, symbol_alphanumeric_14 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = cboe_titaniumequities_onefeed_pitch_v1_4_13.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Trading Status Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_trading_status_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status_message = {}

-- Size: Trading Status Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.reg_sho_action.size

-- Display: Trading Status Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = cboe_titaniumequities_onefeed_pitch_v1_4_13.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Fractional Trade Break Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_break_message = {}

-- Size: Expanded Fractional Trade Break Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_break_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.transaction_time.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center_execution_id.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1.size

-- Display: Expanded Fractional Trade Break Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Fractional Trade Break Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: Binary
  index, transaction_time = cboe_titaniumequities_onefeed_pitch_v1_4_13.transaction_time.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 14: Alphanumeric
  index, symbol_alphanumeric_14 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.dissect(buffer, index, packet, parent)

  -- Market Center Execution Id: Binary
  index, market_center_execution_id = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center_execution_id.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume: Binary
  index, cboe_cumulative_executed_volume = cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.dissect(buffer, index, packet, parent)

  -- National Cumulative Volume: Binary 12.6
  index, national_cumulative_volume = cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.dissect(buffer, index, packet, parent)

  -- Reserved Binary 1: Binary
  index, reserved_binary_1 = cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Fractional Trade Break Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_fractional_trade_break_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Trade Break Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_flags = {}

-- Size: Fractional Trade Break Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_flags.size = 1

-- Display: Fractional Trade Break Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Sip Volume Status flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Sip Volume Status"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Fractional Trade Break Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_flags.bits = function(range, value, packet, parent)

  -- Sip Volume Status: 1 Bit
  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.sip_volume_status, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.reserved_7, range, value)
end

-- Dissect: Fractional Trade Break Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.fractional_trade_break_flags, range, display)

  if show.fractional_trade_break_flags then
    cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Fractional Trade Break Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_message = {}

-- Size: Fractional Trade Break Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.transaction_time.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center_execution_id.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_flags.size

-- Display: Fractional Trade Break Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Trade Break Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: Binary
  index, transaction_time = cboe_titaniumequities_onefeed_pitch_v1_4_13.transaction_time.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.dissect(buffer, index, packet, parent)

  -- Market Center Execution Id: Binary
  index, market_center_execution_id = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center_execution_id.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume: Binary
  index, cboe_cumulative_executed_volume = cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.dissect(buffer, index, packet, parent)

  -- National Cumulative Volume: Binary 12.6
  index, national_cumulative_volume = cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.dissect(buffer, index, packet, parent)

  -- Fractional Trade Break Flags: Struct of 2 fields
  index, fractional_trade_break_flags = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Trade Break Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.fractional_trade_break_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Fractional Trade Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_message = {}

-- Size: Expanded Fractional Trade Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.transaction_time.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center_execution_id.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.last_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.last_quantity.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1.size

-- Display: Expanded Fractional Trade Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Fractional Trade Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: Binary
  index, transaction_time = cboe_titaniumequities_onefeed_pitch_v1_4_13.transaction_time.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 14: Alphanumeric
  index, symbol_alphanumeric_14 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.dissect(buffer, index, packet, parent)

  -- Market Center Execution Id: Binary
  index, market_center_execution_id = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center_execution_id.dissect(buffer, index, packet, parent)

  -- Last Price: Binary 8.4 Price
  index, last_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_price.dissect(buffer, index, packet, parent)

  -- Last Quantity: Binary
  index, last_quantity = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_quantity.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume: Binary
  index, cboe_cumulative_executed_volume = cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.dissect(buffer, index, packet, parent)

  -- National Cumulative Volume: Binary 12.6
  index, national_cumulative_volume = cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.dissect(buffer, index, packet, parent)

  -- Reserved Binary 1: Binary
  index, reserved_binary_1 = cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Fractional Trade Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_fractional_trade_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Trade Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_flags = {}

-- Size: Fractional Trade Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_flags.size = 1

-- Display: Fractional Trade Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is National Volume Status flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "National Volume Status"
  end
  -- Is Last Sale Eligible flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Last Sale Eligible"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Fractional Trade Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_flags.bits = function(range, value, packet, parent)

  -- National Volume Status: 1 Bit
  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.national_volume_status, range, value)

  -- Last Sale Eligible: 1 Bit
  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.last_sale_eligible, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.reserved_6, range, value)
end

-- Dissect: Fractional Trade Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.fractional_trade_flags, range, display)

  if show.fractional_trade_flags then
    cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Fractional Trade Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_message = {}

-- Size: Fractional Trade Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.transaction_time.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center_execution_id.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.last_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.last_quantity.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_flags.size

-- Display: Fractional Trade Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Trade Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: Binary
  index, transaction_time = cboe_titaniumequities_onefeed_pitch_v1_4_13.transaction_time.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.dissect(buffer, index, packet, parent)

  -- Market Center Execution Id: Binary
  index, market_center_execution_id = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center_execution_id.dissect(buffer, index, packet, parent)

  -- Last Price: Binary 8.4 Price
  index, last_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_price.dissect(buffer, index, packet, parent)

  -- Last Quantity: Binary
  index, last_quantity = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_quantity.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume: Binary
  index, cboe_cumulative_executed_volume = cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.dissect(buffer, index, packet, parent)

  -- National Cumulative Volume: Binary 12.6
  index, national_cumulative_volume = cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.dissect(buffer, index, packet, parent)

  -- Fractional Trade Flags: Struct of 3 fields
  index, fractional_trade_flags = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Trade Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.fractional_trade_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Rpi Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.rpi_message = {}

-- Size: Rpi Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.rpi_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.retail_price_improvement.size

-- Display: Rpi Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.rpi_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rpi Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.rpi_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.dissect(buffer, index, packet, parent)

  -- Retail Price Improvement: Alphanumeric
  index, retail_price_improvement = cboe_titaniumequities_onefeed_pitch_v1_4_13.retail_price_improvement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rpi Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.rpi_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.rpi_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.rpi_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.rpi_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.rpi_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Update Adap Block
cboe_titaniumequities_onefeed_pitch_v1_4_13.long_update_adap_block = {}

-- Size: Long Update Adap Block
cboe_titaniumequities_onefeed_pitch_v1_4_13.long_update_adap_block.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.side.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.quantity.size

-- Display: Long Update Adap Block
cboe_titaniumequities_onefeed_pitch_v1_4_13.long_update_adap_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Update Adap Block
cboe_titaniumequities_onefeed_pitch_v1_4_13.long_update_adap_block.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_titaniumequities_onefeed_pitch_v1_4_13.side.dissect(buffer, index, packet, parent)

  -- Price: Binary 8.4 Price
  index, price = cboe_titaniumequities_onefeed_pitch_v1_4_13.price.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_titaniumequities_onefeed_pitch_v1_4_13.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Update Adap Block
cboe_titaniumequities_onefeed_pitch_v1_4_13.long_update_adap_block.dissect = function(buffer, offset, packet, parent)
  if show.long_update_adap_block then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.long_update_adap_block, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.long_update_adap_block.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.long_update_adap_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.long_update_adap_block.fields(buffer, offset, packet, parent)
  end
end

-- Short Update Adap Block
cboe_titaniumequities_onefeed_pitch_v1_4_13.short_update_adap_block = {}

-- Size: Short Update Adap Block
cboe_titaniumequities_onefeed_pitch_v1_4_13.short_update_adap_block.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.side.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.quantity.size

-- Display: Short Update Adap Block
cboe_titaniumequities_onefeed_pitch_v1_4_13.short_update_adap_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Update Adap Block
cboe_titaniumequities_onefeed_pitch_v1_4_13.short_update_adap_block.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_titaniumequities_onefeed_pitch_v1_4_13.side.dissect(buffer, index, packet, parent)

  -- Price: Binary 8.4 Price
  index, price = cboe_titaniumequities_onefeed_pitch_v1_4_13.price.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_titaniumequities_onefeed_pitch_v1_4_13.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Update Adap Block
cboe_titaniumequities_onefeed_pitch_v1_4_13.short_update_adap_block.dissect = function(buffer, offset, packet, parent)
  if show.short_update_adap_block then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.short_update_adap_block, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.short_update_adap_block.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.short_update_adap_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.short_update_adap_block.fields(buffer, offset, packet, parent)
  end
end

-- Adap Update
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_update = {}

-- Dissect: Adap Update
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_update.dissect = function(buffer, offset, packet, parent, adap_block_size)
  -- Dissect Short Update Adap Block
  if adap_block_size == 10 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.short_update_adap_block.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Update Adap Block
  if adap_block_size == 18 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.long_update_adap_block.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Adap Block
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block = {}

-- Calculate size of: Adap Block
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block.size = function(buffer, offset)
  local index = 0

  -- Calculate runtime size of Adap Update field
  local adap_update_offset = offset + index
  local adap_update_type = buffer(adap_update_offset - 1, 1):le_uint()
  index = index + cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_update.size(buffer, adap_update_offset, adap_update_type)

  return index
end

-- Display: Adap Block
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Adap Block
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block.fields = function(buffer, offset, packet, parent, adap_block_index)
  local index = offset

  -- Implicit Adap Block Index
  if adap_block_index ~= nil and show.adap_block_index then
    local iteration = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.adap_block_index, adap_block_index)
    iteration:set_generated()
  end

  -- Dependency element: Adap Block Size
  local adap_block_size = buffer(offset - 1, 1):le_uint()

  -- Adap Update: Runtime Type with 2 branches
  index = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_update.dissect(buffer, index, packet, parent, adap_block_size)

  return index
end

-- Dissect: Adap Block
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block.dissect = function(buffer, offset, packet, parent, adap_block_index)
  if show.adap_block then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.adap_block, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block.fields(buffer, offset, packet, parent, adap_block_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block.fields(buffer, offset, packet, parent, adap_block_index)
  end
end

-- Adap Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_flags = {}

-- Size: Adap Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_flags.size = 1

-- Display: Adap Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Clear Adap flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Clear Adap"
  end
  -- Is Adap Complete flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Adap Complete"
  end
  -- Is Short Long Blocks flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Short Long Blocks"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Adap Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_flags.bits = function(range, value, packet, parent)

  -- Clear Adap: 1 Bit
  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.clear_adap, range, value)

  -- Adap Complete: 1 Bit
  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.adap_complete, range, value)

  -- Short Long Blocks: 1 Bit
  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.short_long_blocks, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.reserved_5, range, value)
end

-- Dissect: Adap Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.adap_flags, range, display)

  if show.adap_flags then
    cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Expanded Adap Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_adap_message = {}

-- Calculate size of: Expanded Adap Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_adap_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.size

  index = index + cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.size

  index = index + cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_flags.size

  index = index + cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1.size

  index = index + cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_blocks.size

  index = index + cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block_size.size

  -- Calculate field size from count
  local adap_block_count = buffer(offset + index - 1, 2):le_uint()
  for i = 1, adap_block_count do
    index = index + cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block.size(buffer, offset + index)
  end
  return index
end

-- Display: Expanded Adap Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_adap_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Adap Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_adap_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 14: Alphanumeric
  index, symbol_alphanumeric_14 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.dissect(buffer, index, packet, parent)

  -- Adap Flags: Struct of 4 fields
  index, adap_flags = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_flags.dissect(buffer, index, packet, parent)

  -- Reserved Binary 1: Binary
  index, reserved_binary_1 = cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1.dissect(buffer, index, packet, parent)

  -- Adap Blocks: Binary
  index, adap_blocks = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_blocks.dissect(buffer, index, packet, parent)

  -- Adap Block Size: Binary
  index, adap_block_size = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block_size.dissect(buffer, index, packet, parent)

  -- Repeating: Adap Block
  for adap_block_index = 1, adap_blocks do
    index, adap_block = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block.dissect(buffer, index, packet, parent, adap_block_index)
  end

  return index
end

-- Dissect: Expanded Adap Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_adap_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_adap_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_adap_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_adap_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_adap_message.fields(buffer, offset, packet, parent)
  end
end

-- Adap Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_message = {}

-- Calculate size of: Adap Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.size

  index = index + cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.size

  index = index + cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_flags.size

  index = index + cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1.size

  index = index + cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_blocks.size

  index = index + cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block_size.size

  -- Calculate field size from count
  local adap_block_count = buffer(offset + index - 1, 2):le_uint()
  for i = 1, adap_block_count do
    index = index + cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block.size(buffer, offset + index)
  end
  return index
end

-- Display: Adap Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Adap Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Adap Flags: Struct of 4 fields
  index, adap_flags = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_flags.dissect(buffer, index, packet, parent)

  -- Reserved Binary 1: Binary
  index, reserved_binary_1 = cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1.dissect(buffer, index, packet, parent)

  -- Adap Blocks: Binary
  index, adap_blocks = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_blocks.dissect(buffer, index, packet, parent)

  -- Adap Block Size: Binary
  index, adap_block_size = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block_size.dissect(buffer, index, packet, parent)

  -- Repeating: Adap Block
  for adap_block_index = 1, adap_blocks do
    index, adap_block = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_block.dissect(buffer, index, packet, parent, adap_block_index)
  end

  return index
end

-- Dissect: Adap Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.adap_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_message.fields(buffer, offset, packet, parent)
  end
end

-- Cboe Market Status Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_market_status_message = {}

-- Size: Cboe Market Status Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_market_status_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_status.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.session_indicator.size

-- Display: Cboe Market Status Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cboe Market Status Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.timestamp.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.dissect(buffer, index, packet, parent)

  -- Market Status: Alphanumeric
  index, market_status = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_status.dissect(buffer, index, packet, parent)

  -- Session Indicator: Alphanumeric
  index, session_indicator = cboe_titaniumequities_onefeed_pitch_v1_4_13.session_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cboe Market Status Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.cboe_market_status_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Best Quote Update Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_best_quote_update_message = {}

-- Size: Expanded Best Quote Update Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_best_quote_update_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.side_indicator.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_quote_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_quote_quantity.size

-- Display: Expanded Best Quote Update Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_best_quote_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Best Quote Update Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_best_quote_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 14: Alphanumeric
  index, symbol_alphanumeric_14 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumequities_onefeed_pitch_v1_4_13.side_indicator.dissect(buffer, index, packet, parent)

  -- Consolidated Best Quote Price: Binary 8.4 Price
  index, consolidated_best_quote_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_quote_price.dissect(buffer, index, packet, parent)

  -- Consolidated Quote Quantity: Binary
  index, consolidated_quote_quantity = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_quote_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Best Quote Update Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_best_quote_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_best_quote_update_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_best_quote_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_best_quote_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_best_quote_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Quote Update Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.best_quote_update_message = {}

-- Size: Best Quote Update Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.best_quote_update_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.side_indicator.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_quote_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_quote_quantity.size

-- Display: Best Quote Update Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.best_quote_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Quote Update Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.best_quote_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumequities_onefeed_pitch_v1_4_13.side_indicator.dissect(buffer, index, packet, parent)

  -- Consolidated Best Quote Price: Binary 8.4 Price
  index, consolidated_best_quote_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_quote_price.dissect(buffer, index, packet, parent)

  -- Consolidated Quote Quantity: Binary
  index, consolidated_quote_quantity = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_quote_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Quote Update Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.best_quote_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.best_quote_update_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.best_quote_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.best_quote_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.best_quote_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Fractional Symbol Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_symbol_summary_message = {}

-- Size: Expanded Fractional Symbol Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_symbol_summary_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_quantity.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_quantity.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1.size

-- Display: Expanded Fractional Symbol Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_symbol_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Fractional Symbol Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_symbol_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 14: Alphanumeric
  index, symbol_alphanumeric_14 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume: Binary
  index, cboe_cumulative_executed_volume = cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.dissect(buffer, index, packet, parent)

  -- Consolidated Best Bid Price: Binary 8.4 Price
  index, consolidated_best_bid_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_price.dissect(buffer, index, packet, parent)

  -- Consolidated Best Bid Quantity: Binary
  index, consolidated_best_bid_quantity = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_quantity.dissect(buffer, index, packet, parent)

  -- Consolidated Best Ask Price: Binary 8.4 Price
  index, consolidated_best_ask_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_price.dissect(buffer, index, packet, parent)

  -- Consolidated Best Ask Quantity: Binary
  index, consolidated_best_ask_quantity = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_quantity.dissect(buffer, index, packet, parent)

  -- National Cumulative Volume: Binary 12.6
  index, national_cumulative_volume = cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.dissect(buffer, index, packet, parent)

  -- Reserved Binary 1: Binary
  index, reserved_binary_1 = cboe_titaniumequities_onefeed_pitch_v1_4_13.reserved_binary_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Fractional Symbol Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_symbol_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_fractional_symbol_summary_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_symbol_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_symbol_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_symbol_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Symbol Summary Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_flags = {}

-- Size: Fractional Symbol Summary Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_flags.size = 1

-- Display: Fractional Symbol Summary Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is National Volume Status flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "National Volume Status"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Fractional Symbol Summary Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_flags.bits = function(range, value, packet, parent)

  -- National Volume Status: 1 Bit
  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.national_volume_status, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.reserved_7, range, value)
end

-- Dissect: Fractional Symbol Summary Flags
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.fractional_symbol_summary_flags, range, display)

  if show.fractional_symbol_summary_flags then
    cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Fractional Symbol Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_message = {}

-- Size: Fractional Symbol Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_quantity.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_price.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_quantity.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_flags.size

-- Display: Fractional Symbol Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Symbol Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume: Binary
  index, cboe_cumulative_executed_volume = cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_cumulative_executed_volume.dissect(buffer, index, packet, parent)

  -- Consolidated Best Bid Price: Binary 8.4 Price
  index, consolidated_best_bid_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_price.dissect(buffer, index, packet, parent)

  -- Consolidated Best Bid Quantity: Binary
  index, consolidated_best_bid_quantity = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_bid_quantity.dissect(buffer, index, packet, parent)

  -- Consolidated Best Ask Price: Binary 8.4 Price
  index, consolidated_best_ask_price = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_price.dissect(buffer, index, packet, parent)

  -- Consolidated Best Ask Quantity: Binary
  index, consolidated_best_ask_quantity = cboe_titaniumequities_onefeed_pitch_v1_4_13.consolidated_best_ask_quantity.dissect(buffer, index, packet, parent)

  -- National Cumulative Volume: Binary 12.6
  index, national_cumulative_volume = cboe_titaniumequities_onefeed_pitch_v1_4_13.national_cumulative_volume.dissect(buffer, index, packet, parent)

  -- Fractional Symbol Summary Flags: Struct of 2 fields
  index, fractional_symbol_summary_flags = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Symbol Summary Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.fractional_symbol_summary_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Expanded Clear Quote Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_clear_quote_message = {}

-- Size: Expanded Clear Quote Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_clear_quote_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size

-- Display: Expanded Clear Quote Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_clear_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expanded Clear Quote Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_clear_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 14: Alphanumeric
  index, symbol_alphanumeric_14 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_14.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expanded Clear Quote Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_clear_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.expanded_clear_quote_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_clear_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_clear_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_clear_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Clear Quote Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.clear_quote_message = {}

-- Size: Clear Quote Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.clear_quote_message.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.size

-- Display: Clear Quote Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.clear_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clear Quote Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.clear_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumequities_onefeed_pitch_v1_4_13.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 8: Alphanumeric
  index, symbol_alphanumeric_8 = cboe_titaniumequities_onefeed_pitch_v1_4_13.symbol_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumequities_onefeed_pitch_v1_4_13.market_center.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Quote Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.clear_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.clear_quote_message, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.clear_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.clear_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.clear_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titaniumequities_onefeed_pitch_v1_4_13.payload = {}

-- Dissect: Payload
cboe_titaniumequities_onefeed_pitch_v1_4_13.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Clear Quote Message
  if message_type == 0xA2 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.clear_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Clear Quote Message
  if message_type == 0xF0 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_clear_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Symbol Summary Message
  if message_type == 0xE7 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_symbol_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Fractional Symbol Summary Message
  if message_type == 0xEB then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_symbol_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Quote Update Message
  if message_type == 0xA5 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.best_quote_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Best Quote Update Message
  if message_type == 0xF2 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_best_quote_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cboe Market Status Message
  if message_type == 0xA6 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.cboe_market_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Adap Message
  if message_type == 0xA7 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.adap_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Adap Message
  if message_type == 0xF3 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_adap_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rpi Message
  if message_type == 0xA8 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.rpi_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Trade Message
  if message_type == 0xE8 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Fractional Trade Message
  if message_type == 0xEC then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Trade Break Message
  if message_type == 0xE9 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Fractional Trade Break Message
  if message_type == 0xED then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0xAB then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Trading Status Message
  if message_type == 0xF6 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Opening Closing Price Message
  if message_type == 0xB0 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.opening_closing_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Opening Closing Price Message
  if message_type == 0xF7 then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_opening_closing_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional End Of Day Summary Message
  if message_type == 0xEA then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.fractional_end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Expanded Fractional End Of Day Summary Message
  if message_type == 0xEF then
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.expanded_fractional_end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_titaniumequities_onefeed_pitch_v1_4_13.message_header = {}

-- Size: Message Header
cboe_titaniumequities_onefeed_pitch_v1_4_13.message_header.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.message_length.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.message_type.size

-- Display: Message Header
cboe_titaniumequities_onefeed_pitch_v1_4_13.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_titaniumequities_onefeed_pitch_v1_4_13.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_titaniumequities_onefeed_pitch_v1_4_13.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 20 values
  index, message_type = cboe_titaniumequities_onefeed_pitch_v1_4_13.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_titaniumequities_onefeed_pitch_v1_4_13.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.message_header, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.message = {}

-- Display: Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_titaniumequities_onefeed_pitch_v1_4_13.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 20 branches
  index = cboe_titaniumequities_onefeed_pitch_v1_4_13.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_titaniumequities_onefeed_pitch_v1_4_13.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.message, buffer(offset, 0))
    local current = cboe_titaniumequities_onefeed_pitch_v1_4_13.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_titaniumequities_onefeed_pitch_v1_4_13.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_titaniumequities_onefeed_pitch_v1_4_13.packet_header = {}

-- Size: Packet Header
cboe_titaniumequities_onefeed_pitch_v1_4_13.packet_header.size =
  cboe_titaniumequities_onefeed_pitch_v1_4_13.length.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.count.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.unit.size + 
  cboe_titaniumequities_onefeed_pitch_v1_4_13.sequence.size

-- Display: Packet Header
cboe_titaniumequities_onefeed_pitch_v1_4_13.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_titaniumequities_onefeed_pitch_v1_4_13.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_titaniumequities_onefeed_pitch_v1_4_13.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_titaniumequities_onefeed_pitch_v1_4_13.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_titaniumequities_onefeed_pitch_v1_4_13.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_titaniumequities_onefeed_pitch_v1_4_13.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_titaniumequities_onefeed_pitch_v1_4_13.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.fields.packet_header, buffer(offset, 0))
    local index = cboe_titaniumequities_onefeed_pitch_v1_4_13.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumequities_onefeed_pitch_v1_4_13.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumequities_onefeed_pitch_v1_4_13.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_titaniumequities_onefeed_pitch_v1_4_13.packet = {}

-- Verify required size of Udp packet
cboe_titaniumequities_onefeed_pitch_v1_4_13.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_titaniumequities_onefeed_pitch_v1_4_13.packet_header.size
end

-- Dissect Packet
cboe_titaniumequities_onefeed_pitch_v1_4_13.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_titaniumequities_onefeed_pitch_v1_4_13.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_titaniumequities_onefeed_pitch_v1_4_13.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.init()
end

-- Dissector for Cboe TitaniumEquities OneFeed Pitch 1.4.13
function omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titaniumequities_onefeed_pitch_v1_4_13, buffer(), omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.description, "("..buffer:len().." Bytes)")
  return cboe_titaniumequities_onefeed_pitch_v1_4_13.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_titaniumequities_onefeed_pitch_v1_4_13)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe TitaniumEquities OneFeed Pitch 1.4.13 (Udp)
local function omi_cboe_titaniumequities_onefeed_pitch_v1_4_13_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titaniumequities_onefeed_pitch_v1_4_13.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titaniumequities_onefeed_pitch_v1_4_13
  omi_cboe_titaniumequities_onefeed_pitch_v1_4_13.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe TitaniumEquities OneFeed Pitch 1.4.13
omi_cboe_titaniumequities_onefeed_pitch_v1_4_13:register_heuristic("udp", omi_cboe_titaniumequities_onefeed_pitch_v1_4_13_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.4.13
--   Date: Monday, March 16, 2026
--   Specification: Cboe_Equities_One_Feed_Specification.pdf
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
