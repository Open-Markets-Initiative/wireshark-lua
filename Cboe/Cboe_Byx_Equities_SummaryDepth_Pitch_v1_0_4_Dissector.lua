-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Byx Equities SummaryDepth Pitch 1.0.4 Protocol
local omi_cboe_byx_equities_summarydepth_pitch_v1_0_4 = Proto("Cboe.Byx.Equities.SummaryDepth.Pitch.v1.0.4.Lua", "Cboe Byx Equities SummaryDepth Pitch 1.0.4")

-- Protocol table
local cboe_byx_equities_summarydepth_pitch_v1_0_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Byx Equities SummaryDepth Pitch 1.0.4 Fields
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_block = ProtoField.new("Adap Block", "cboe.byx.equities.summarydepth.pitch.v1.0.4.adapblock", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_block_size = ProtoField.new("Adap Block Size", "cboe.byx.equities.summarydepth.pitch.v1.0.4.adapblocksize", ftypes.UINT8)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_blocks = ProtoField.new("Adap Blocks", "cboe.byx.equities.summarydepth.pitch.v1.0.4.adapblocks", ftypes.UINT8)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_flags = ProtoField.new("Adap Flags", "cboe.byx.equities.summarydepth.pitch.v1.0.4.adapflags", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_reserved_flags = ProtoField.new("Adap Reserved Flags", "cboe.byx.equities.summarydepth.pitch.v1.0.4.adapreservedflags", ftypes.UINT8, nil, base.DEC, 0xFC00)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_update = ProtoField.new("Adap Update", "cboe.byx.equities.summarydepth.pitch.v1.0.4.adapupdate", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.block_type = ProtoField.new("Block Type", "cboe.byx.equities.summarydepth.pitch.v1.0.4.blocktype", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x0200)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.cboe_cumulative_executed_volume = ProtoField.new("Cboe Cumulative Executed Volume", "cboe.byx.equities.summarydepth.pitch.v1.0.4.cboecumulativeexecutedvolume", ftypes.UINT64)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.clear = ProtoField.new("Clear", "cboe.byx.equities.summarydepth.pitch.v1.0.4.clear", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x0080)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.complete = ProtoField.new("Complete", "cboe.byx.equities.summarydepth.pitch.v1.0.4.complete", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.count = ProtoField.new("Count", "cboe.byx.equities.summarydepth.pitch.v1.0.4.count", ftypes.UINT8)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.execution_id = ProtoField.new("Execution Id", "cboe.byx.equities.summarydepth.pitch.v1.0.4.executionid", ftypes.UINT64)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.halt_status = ProtoField.new("Halt Status", "cboe.byx.equities.summarydepth.pitch.v1.0.4.haltstatus", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.last_price = ProtoField.new("Last Price", "cboe.byx.equities.summarydepth.pitch.v1.0.4.lastprice", ftypes.DOUBLE)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.last_quantity = ProtoField.new("Last Quantity", "cboe.byx.equities.summarydepth.pitch.v1.0.4.lastquantity", ftypes.UINT64)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.last_update_timestamp = ProtoField.new("Last Update Timestamp", "cboe.byx.equities.summarydepth.pitch.v1.0.4.lastupdatetimestamp", ftypes.UINT64)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.lastsale_eligible = ProtoField.new("Lastsale Eligible", "cboe.byx.equities.summarydepth.pitch.v1.0.4.lastsaleeligible", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.length = ProtoField.new("Length", "cboe.byx.equities.summarydepth.pitch.v1.0.4.length", ftypes.UINT16)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.long_update_adap_block = ProtoField.new("Long Update Adap Block", "cboe.byx.equities.summarydepth.pitch.v1.0.4.longupdateadapblock", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.market_status = ProtoField.new("Market Status", "cboe.byx.equities.summarydepth.pitch.v1.0.4.marketstatus", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message = ProtoField.new("Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.message", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message_header = ProtoField.new("Message Header", "cboe.byx.equities.summarydepth.pitch.v1.0.4.messageheader", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message_length = ProtoField.new("Message Length", "cboe.byx.equities.summarydepth.pitch.v1.0.4.messagelength", ftypes.UINT8)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message_type = ProtoField.new("Message Type", "cboe.byx.equities.summarydepth.pitch.v1.0.4.messagetype", ftypes.UINT8)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.packet = ProtoField.new("Packet", "cboe.byx.equities.summarydepth.pitch.v1.0.4.packet", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.packet_header = ProtoField.new("Packet Header", "cboe.byx.equities.summarydepth.pitch.v1.0.4.packetheader", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.payload = ProtoField.new("Payload", "cboe.byx.equities.summarydepth.pitch.v1.0.4.payload", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.price_binary_44_price_4 = ProtoField.new("Price Binary 44 Price 4", "cboe.byx.equities.summarydepth.pitch.v1.0.4.pricebinary44price4", ftypes.DOUBLE)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.price_binary_84_price_8 = ProtoField.new("Price Binary 84 Price 8", "cboe.byx.equities.summarydepth.pitch.v1.0.4.pricebinary84price8", ftypes.DOUBLE)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.byx.equities.summarydepth.pitch.v1.0.4.quantitylong", ftypes.UINT64)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.byx.equities.summarydepth.pitch.v1.0.4.quantityshort", ftypes.UINT32)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.byx.equities.summarydepth.pitch.v1.0.4.regshoaction", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reserved_alphanumeric_1 = ProtoField.new("Reserved Alphanumeric 1", "cboe.byx.equities.summarydepth.pitch.v1.0.4.reservedalphanumeric1", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reserved_binary_8 = ProtoField.new("Reserved Binary 8", "cboe.byx.equities.summarydepth.pitch.v1.0.4.reservedbinary8", ftypes.UINT64)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reserved_trade_flags = ProtoField.new("Reserved Trade Flags", "cboe.byx.equities.summarydepth.pitch.v1.0.4.reservedtradeflags", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.retail_price_improvement = ProtoField.new("Retail Price Improvement", "cboe.byx.equities.summarydepth.pitch.v1.0.4.retailpriceimprovement", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.sequence = ProtoField.new("Sequence", "cboe.byx.equities.summarydepth.pitch.v1.0.4.sequence", ftypes.UINT32)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.session_indicator = ProtoField.new("Session Indicator", "cboe.byx.equities.summarydepth.pitch.v1.0.4.sessionindicator", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.short_update_adap_block = ProtoField.new("Short Update Adap Block", "cboe.byx.equities.summarydepth.pitch.v1.0.4.shortupdateadapblock", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.side = ProtoField.new("Side", "cboe.byx.equities.summarydepth.pitch.v1.0.4.side", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.symbol = ProtoField.new("Symbol", "cboe.byx.equities.summarydepth.pitch.v1.0.4.symbol", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.timestamp = ProtoField.new("Timestamp", "cboe.byx.equities.summarydepth.pitch.v1.0.4.timestamp", ftypes.UINT64)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_break_flags = ProtoField.new("Trade Break Flags", "cboe.byx.equities.summarydepth.pitch.v1.0.4.tradebreakflags", ftypes.UINT8)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_flags = ProtoField.new("Trade Flags", "cboe.byx.equities.summarydepth.pitch.v1.0.4.tradeflags", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.byx.equities.summarydepth.pitch.v1.0.4.transactiontime", ftypes.UINT64)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.unit = ProtoField.new("Unit", "cboe.byx.equities.summarydepth.pitch.v1.0.4.unit", ftypes.UINT8)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.unused = ProtoField.new("Unused", "cboe.byx.equities.summarydepth.pitch.v1.0.4.unused", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)

-- Cboe Byx Equities SummaryDepth Pitch 1.0.4 messages
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_message = ProtoField.new("Adap Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.adapmessage", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.cboe_market_status_message = ProtoField.new("Cboe Market Status Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.cboemarketstatusmessage", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.clear_quote_message = ProtoField.new("Clear Quote Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.clearquotemessage", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.rpi_message = ProtoField.new("Rpi Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.rpimessage", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.tradebreakmessage", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_message = ProtoField.new("Trade Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.trademessage", ftypes.STRING)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.tradingstatusmessage", ftypes.STRING)

-- Cboe Byx Equities SummaryDepth Pitch 1.0.4 generated fields
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_block_index = ProtoField.new("Adap Block Index", "cboe.byx.equities.summarydepth.pitch.v1.0.4.adapblockindex", ftypes.UINT16)
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message_index = ProtoField.new("Message Index", "cboe.byx.equities.summarydepth.pitch.v1.0.4.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe Byx Equities SummaryDepth Pitch 1.0.4 Element Dissection Options
show.adap_block = true
show.adap_flags = true
show.adap_message = true
show.cboe_market_status_message = true
show.clear_quote_message = true
show.long_update_adap_block = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.rpi_message = true
show.short_update_adap_block = true
show.trade_break_message = true
show.trade_flags = true
show.trade_message = true
show.trading_status_message = true
show.adap_update = false
show.payload = false

-- Register Cboe Byx Equities SummaryDepth Pitch 1.0.4 Show Options
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_block = Pref.bool("Show Adap Block", show.adap_block, "Parse and add Adap Block to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_flags = Pref.bool("Show Adap Flags", show.adap_flags, "Parse and add Adap Flags to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_message = Pref.bool("Show Adap Message", show.adap_message, "Parse and add Adap Message to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_cboe_market_status_message = Pref.bool("Show Cboe Market Status Message", show.cboe_market_status_message, "Parse and add Cboe Market Status Message to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_clear_quote_message = Pref.bool("Show Clear Quote Message", show.clear_quote_message, "Parse and add Clear Quote Message to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_long_update_adap_block = Pref.bool("Show Long Update Adap Block", show.long_update_adap_block, "Parse and add Long Update Adap Block to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_rpi_message = Pref.bool("Show Rpi Message", show.rpi_message, "Parse and add Rpi Message to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_short_update_adap_block = Pref.bool("Show Short Update Adap Block", show.short_update_adap_block, "Parse and add Short Update Adap Block to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_update = Pref.bool("Show Adap Update", show.adap_update, "Parse and add Adap Update to protocol tree")
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.adap_block ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_block then
    show.adap_block = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_block
    changed = true
  end
  if show.adap_flags ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_flags then
    show.adap_flags = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_flags
    changed = true
  end
  if show.adap_message ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_message then
    show.adap_message = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_message
    changed = true
  end
  if show.cboe_market_status_message ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_cboe_market_status_message then
    show.cboe_market_status_message = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_cboe_market_status_message
    changed = true
  end
  if show.clear_quote_message ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_clear_quote_message then
    show.clear_quote_message = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_clear_quote_message
    changed = true
  end
  if show.long_update_adap_block ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_long_update_adap_block then
    show.long_update_adap_block = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_long_update_adap_block
    changed = true
  end
  if show.message ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_message then
    show.message = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_message_header then
    show.message_header = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_packet then
    show.packet = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_packet_header then
    show.packet_header = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_packet_header
    changed = true
  end
  if show.rpi_message ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_rpi_message then
    show.rpi_message = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_rpi_message
    changed = true
  end
  if show.short_update_adap_block ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_short_update_adap_block then
    show.short_update_adap_block = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_short_update_adap_block
    changed = true
  end
  if show.trade_break_message ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_break_message then
    show.trade_break_message = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_flags ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_flags then
    show.trade_flags = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_flags
    changed = true
  end
  if show.trade_message ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_message then
    show.trade_message = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_message
    changed = true
  end
  if show.trading_status_message ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trading_status_message then
    show.trading_status_message = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trading_status_message
    changed = true
  end
  if show.adap_update ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_update then
    show.adap_update = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_update
    changed = true
  end
  if show.payload ~= omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_payload then
    show.payload = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Byx Equities SummaryDepth Pitch 1.0.4
-----------------------------------------------------------------------

-- Reg Sho Action
cboe_byx_equities_summarydepth_pitch_v1_0_4.reg_sho_action = {}

-- Size: Reg Sho Action
cboe_byx_equities_summarydepth_pitch_v1_0_4.reg_sho_action.size = 1

-- Display: Reg Sho Action
cboe_byx_equities_summarydepth_pitch_v1_0_4.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_byx_equities_summarydepth_pitch_v1_0_4.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Halt Status
cboe_byx_equities_summarydepth_pitch_v1_0_4.halt_status = {}

-- Size: Halt Status
cboe_byx_equities_summarydepth_pitch_v1_0_4.halt_status.size = 1

-- Display: Halt Status
cboe_byx_equities_summarydepth_pitch_v1_0_4.halt_status.display = function(value)
  return "Halt Status: "..value
end

-- Dissect: Halt Status
cboe_byx_equities_summarydepth_pitch_v1_0_4.halt_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.halt_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.halt_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.halt_status, range, value, display)

  return offset + length, value
end

-- Reserved Alphanumeric 1
cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1 = {}

-- Size: Reserved Alphanumeric 1
cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size = 1

-- Display: Reserved Alphanumeric 1
cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.display = function(value)
  return "Reserved Alphanumeric 1: "..value
end

-- Dissect: Reserved Alphanumeric 1
cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reserved_alphanumeric_1, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol = {}

-- Size: Symbol
cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.size = 8

-- Display: Symbol
cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_byx_equities_summarydepth_pitch_v1_0_4.timestamp = {}

-- Size: Timestamp
cboe_byx_equities_summarydepth_pitch_v1_0_4.timestamp.size = 8

-- Display: Timestamp
cboe_byx_equities_summarydepth_pitch_v1_0_4.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_byx_equities_summarydepth_pitch_v1_0_4.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.trading_status_message = {}

-- Size: Trading Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.trading_status_message.size =
  cboe_byx_equities_summarydepth_pitch_v1_0_4.timestamp.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.halt_status.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.reg_sho_action.size

-- Display: Trading Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = cboe_byx_equities_summarydepth_pitch_v1_0_4.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.dissect(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: 1 Byte Ascii String
  index, reserved_alphanumeric_1 = cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect(buffer, index, packet, parent)

  -- Halt Status: 1 Byte Ascii String
  index, halt_status = cboe_byx_equities_summarydepth_pitch_v1_0_4.halt_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 2 values
  index, reg_sho_action = cboe_byx_equities_summarydepth_pitch_v1_0_4.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_byx_equities_summarydepth_pitch_v1_0_4.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_flags = {}

-- Size: Trade Break Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_flags.size = 1

-- Display: Trade Break Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_flags.display = function(value)
  return "Trade Break Flags: "..value
end

-- Dissect: Trade Break Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_flags.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_flags.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_break_flags, range, value, display)

  return offset + length, value
end

-- Reserved Binary 8
cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_binary_8 = {}

-- Size: Reserved Binary 8
cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_binary_8.size = 8

-- Display: Reserved Binary 8
cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_binary_8.display = function(value)
  return "Reserved Binary 8: "..value
end

-- Dissect: Reserved Binary 8
cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_binary_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_binary_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_binary_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reserved_binary_8, range, value, display)

  return offset + length, value
end

-- Cboe Cumulative Executed Volume
cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume = {}

-- Size: Cboe Cumulative Executed Volume
cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.size = 8

-- Display: Cboe Cumulative Executed Volume
cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.display = function(value)
  return "Cboe Cumulative Executed Volume: "..value
end

-- Dissect: Cboe Cumulative Executed Volume
cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.cboe_cumulative_executed_volume, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_byx_equities_summarydepth_pitch_v1_0_4.execution_id = {}

-- Size: Execution Id
cboe_byx_equities_summarydepth_pitch_v1_0_4.execution_id.size = 8

-- Display: Execution Id
cboe_byx_equities_summarydepth_pitch_v1_0_4.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_byx_equities_summarydepth_pitch_v1_0_4.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_byx_equities_summarydepth_pitch_v1_0_4.transaction_time = {}

-- Size: Transaction Time
cboe_byx_equities_summarydepth_pitch_v1_0_4.transaction_time.size = 8

-- Display: Transaction Time
cboe_byx_equities_summarydepth_pitch_v1_0_4.transaction_time.display = function(value)
  return "Transaction Time: "..value
end

-- Dissect: Transaction Time
cboe_byx_equities_summarydepth_pitch_v1_0_4.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Trade Break Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_message = {}

-- Size: Trade Break Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_message.size =
  cboe_byx_equities_summarydepth_pitch_v1_0_4.transaction_time.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.execution_id.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_binary_8.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_flags.size

-- Display: Trade Break Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_byx_equities_summarydepth_pitch_v1_0_4.transaction_time.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.dissect(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: 1 Byte Ascii String
  index, reserved_alphanumeric_1 = cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_byx_equities_summarydepth_pitch_v1_0_4.execution_id.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume: 8 Byte Unsigned Fixed Width Integer
  index, cboe_cumulative_executed_volume = cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.dissect(buffer, index, packet, parent)

  -- Reserved Binary 8: 8 Byte Unsigned Fixed Width Integer
  index, reserved_binary_8 = cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_binary_8.dissect(buffer, index, packet, parent)

  -- Trade Break Flags: 1 Byte Unsigned Fixed Width Integer
  index, trade_break_flags = cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_break_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_flags = {}

-- Size: Trade Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_flags.size = 1

-- Display: Trade Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_flags.display = function(buffer, packet, parent)
  local display = ""

  -- Is Lastsale Eligible flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Lastsale Eligible|"
  end
  -- Is Unused flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Unused|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trade Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_flags.bits = function(buffer, offset, packet, parent)

  -- Reserved Trade Flags: 6 Bit
  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reserved_trade_flags, buffer(offset, 1))

  -- Lastsale Eligible: 1 Bit
  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.lastsale_eligible, buffer(offset, 1))

  -- Unused: 1 Bit
  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.unused, buffer(offset, 1))
end

-- Dissect: Trade Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_flags.display(range, packet, parent)
  local element = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_flags, range, display)

  if show.trade_flags then
    cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Last Quantity
cboe_byx_equities_summarydepth_pitch_v1_0_4.last_quantity = {}

-- Size: Last Quantity
cboe_byx_equities_summarydepth_pitch_v1_0_4.last_quantity.size = 8

-- Display: Last Quantity
cboe_byx_equities_summarydepth_pitch_v1_0_4.last_quantity.display = function(value)
  return "Last Quantity: "..value
end

-- Dissect: Last Quantity
cboe_byx_equities_summarydepth_pitch_v1_0_4.last_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.last_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.last_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.last_quantity, range, value, display)

  return offset + length, value
end

-- Last Price
cboe_byx_equities_summarydepth_pitch_v1_0_4.last_price = {}

-- Size: Last Price
cboe_byx_equities_summarydepth_pitch_v1_0_4.last_price.size = 8

-- Display: Last Price
cboe_byx_equities_summarydepth_pitch_v1_0_4.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
cboe_byx_equities_summarydepth_pitch_v1_0_4.last_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Price
cboe_byx_equities_summarydepth_pitch_v1_0_4.last_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.last_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_byx_equities_summarydepth_pitch_v1_0_4.last_price.translate(raw)
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.last_price, range, value, display)

  return offset + length, value
end

-- Trade Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_message = {}

-- Size: Trade Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_message.size =
  cboe_byx_equities_summarydepth_pitch_v1_0_4.transaction_time.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.execution_id.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.last_price.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.last_quantity.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_binary_8.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_flags.size

-- Display: Trade Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_byx_equities_summarydepth_pitch_v1_0_4.transaction_time.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.dissect(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: 1 Byte Ascii String
  index, reserved_alphanumeric_1 = cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_byx_equities_summarydepth_pitch_v1_0_4.execution_id.dissect(buffer, index, packet, parent)

  -- Last Price: 8 Byte Unsigned Fixed Width Integer
  index, last_price = cboe_byx_equities_summarydepth_pitch_v1_0_4.last_price.dissect(buffer, index, packet, parent)

  -- Last Quantity: 8 Byte Unsigned Fixed Width Integer
  index, last_quantity = cboe_byx_equities_summarydepth_pitch_v1_0_4.last_quantity.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume: 8 Byte Unsigned Fixed Width Integer
  index, cboe_cumulative_executed_volume = cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.dissect(buffer, index, packet, parent)

  -- Reserved Binary 8: 8 Byte Unsigned Fixed Width Integer
  index, reserved_binary_8 = cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_binary_8.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 3 fields
  index, trade_flags = cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_message, buffer(offset, 0))
    local index = cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Retail Price Improvement
cboe_byx_equities_summarydepth_pitch_v1_0_4.retail_price_improvement = {}

-- Size: Retail Price Improvement
cboe_byx_equities_summarydepth_pitch_v1_0_4.retail_price_improvement.size = 1

-- Display: Retail Price Improvement
cboe_byx_equities_summarydepth_pitch_v1_0_4.retail_price_improvement.display = function(value)
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
cboe_byx_equities_summarydepth_pitch_v1_0_4.retail_price_improvement.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.retail_price_improvement.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.retail_price_improvement.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.retail_price_improvement, range, value, display)

  return offset + length, value
end

-- Rpi Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.rpi_message = {}

-- Size: Rpi Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.rpi_message.size =
  cboe_byx_equities_summarydepth_pitch_v1_0_4.timestamp.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.retail_price_improvement.size

-- Display: Rpi Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.rpi_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rpi Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.rpi_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = cboe_byx_equities_summarydepth_pitch_v1_0_4.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.dissect(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: 1 Byte Ascii String
  index, reserved_alphanumeric_1 = cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect(buffer, index, packet, parent)

  -- Retail Price Improvement: 1 Byte Ascii String Enum with 4 values
  index, retail_price_improvement = cboe_byx_equities_summarydepth_pitch_v1_0_4.retail_price_improvement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rpi Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.rpi_message.dissect = function(buffer, offset, packet, parent)
  if show.rpi_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.rpi_message, buffer(offset, 0))
    local index = cboe_byx_equities_summarydepth_pitch_v1_0_4.rpi_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.rpi_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.rpi_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity Long
cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_long = {}

-- Size: Quantity Long
cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_long.size = 8

-- Display: Quantity Long
cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Price Binary 84 Price 8
cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_84_price_8 = {}

-- Size: Price Binary 84 Price 8
cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_84_price_8.size = 8

-- Display: Price Binary 84 Price 8
cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_84_price_8.display = function(value)
  return "Price Binary 84 Price 8: "..value
end

-- Translate: Price Binary 84 Price 8
cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_84_price_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Binary 84 Price 8
cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_84_price_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_84_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_84_price_8.translate(raw)
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_84_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.price_binary_84_price_8, range, value, display)

  return offset + length, value
end

-- Side
cboe_byx_equities_summarydepth_pitch_v1_0_4.side = {}

-- Size: Side
cboe_byx_equities_summarydepth_pitch_v1_0_4.side.size = 1

-- Display: Side
cboe_byx_equities_summarydepth_pitch_v1_0_4.side.display = function(value)
  return "Side: "..value
end

-- Dissect: Side
cboe_byx_equities_summarydepth_pitch_v1_0_4.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.side, range, value, display)

  return offset + length, value
end

-- Long Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4.long_update_adap_block = {}

-- Size: Long Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4.long_update_adap_block.size =
  cboe_byx_equities_summarydepth_pitch_v1_0_4.side.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_84_price_8.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_long.size

-- Display: Long Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4.long_update_adap_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4.long_update_adap_block.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: 1 Byte Ascii String
  index, side = cboe_byx_equities_summarydepth_pitch_v1_0_4.side.dissect(buffer, index, packet, parent)

  -- Price Binary 84 Price 8: 8 Byte Unsigned Fixed Width Integer
  index, price_binary_84_price_8 = cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_84_price_8.dissect(buffer, index, packet, parent)

  -- Quantity Long: 8 Byte Unsigned Fixed Width Integer
  index, quantity_long = cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4.long_update_adap_block.dissect = function(buffer, offset, packet, parent)
  if show.long_update_adap_block then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.long_update_adap_block, buffer(offset, 0))
    local index = cboe_byx_equities_summarydepth_pitch_v1_0_4.long_update_adap_block.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.long_update_adap_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.long_update_adap_block.fields(buffer, offset, packet, parent)
  end
end

-- Quantity Short
cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_short = {}

-- Size: Quantity Short
cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_short.size = 4

-- Display: Quantity Short
cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Price Binary 44 Price 4
cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_44_price_4 = {}

-- Size: Price Binary 44 Price 4
cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_44_price_4.size = 4

-- Display: Price Binary 44 Price 4
cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_44_price_4.display = function(value)
  return "Price Binary 44 Price 4: "..value
end

-- Translate: Price Binary 44 Price 4
cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_44_price_4.translate = function(raw)
  return raw/10000
end

-- Dissect: Price Binary 44 Price 4
cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_44_price_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_44_price_4.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_44_price_4.translate(raw)
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_44_price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.price_binary_44_price_4, range, value, display)

  return offset + length, value
end

-- Short Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4.short_update_adap_block = {}

-- Size: Short Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4.short_update_adap_block.size =
  cboe_byx_equities_summarydepth_pitch_v1_0_4.side.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_44_price_4.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_short.size

-- Display: Short Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4.short_update_adap_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4.short_update_adap_block.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: 1 Byte Ascii String
  index, side = cboe_byx_equities_summarydepth_pitch_v1_0_4.side.dissect(buffer, index, packet, parent)

  -- Price Binary 44 Price 4: 4 Byte Unsigned Fixed Width Integer
  index, price_binary_44_price_4 = cboe_byx_equities_summarydepth_pitch_v1_0_4.price_binary_44_price_4.dissect(buffer, index, packet, parent)

  -- Quantity Short: 4 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_byx_equities_summarydepth_pitch_v1_0_4.quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4.short_update_adap_block.dissect = function(buffer, offset, packet, parent)
  if show.short_update_adap_block then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.short_update_adap_block, buffer(offset, 0))
    local index = cboe_byx_equities_summarydepth_pitch_v1_0_4.short_update_adap_block.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.short_update_adap_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.short_update_adap_block.fields(buffer, offset, packet, parent)
  end
end

-- Adap Update
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_update = {}

-- Calculate runtime size of: Adap Update
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_update.size = function(buffer, offset, adap_block_size)
  -- Size of Short Update Adap Block
  if adap_block_size == 10 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.short_update_adap_block.size(buffer, offset)
  end
  -- Size of Long Update Adap Block
  if adap_block_size == 18 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.long_update_adap_block.size(buffer, offset)
  end

  return 0
end

-- Display: Adap Update
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_update.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Adap Update
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_update.branches = function(buffer, offset, packet, parent, adap_block_size)
  -- Dissect Short Update Adap Block
  if adap_block_size == 10 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.short_update_adap_block.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Update Adap Block
  if adap_block_size == 18 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.long_update_adap_block.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Adap Update
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_update.dissect = function(buffer, offset, packet, parent, adap_block_size)
  if not show.adap_update then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_update.branches(buffer, offset, packet, parent, adap_block_size)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_update.size(buffer, offset, adap_block_size)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_update.display(buffer, packet, parent)
  local element = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_update, range, display)

  return cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_update.branches(buffer, offset, packet, parent, adap_block_size)
end

-- Adap Block Size
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block_size = {}

-- Size: Adap Block Size
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block_size.size = 1

-- Display: Adap Block Size
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block_size.display = function(value)
  return "Adap Block Size: "..value
end

-- Dissect: Adap Block Size
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_block_size, range, value, display)

  return offset + length, value
end

-- Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block = {}

-- Calculate size of: Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block.size = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block_size.size

  -- Calculate runtime size of Adap Update field
  local adap_update_offset = offset + index
  local adap_update_type = buffer(adap_update_offset - 1, 1):le_uint()
  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_update.size(buffer, adap_update_offset, adap_update_type)

  return index
end

-- Display: Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block.fields = function(buffer, offset, packet, parent, adap_block_index)
  local index = offset

  -- Implicit Adap Block Index
  if adap_block_index ~= nil then
    local iteration = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_block_index, adap_block_index)
    iteration:set_generated()
  end

  -- Adap Block Size: 1 Byte Unsigned Fixed Width Integer
  index, adap_block_size = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block_size.dissect(buffer, index, packet, parent)

  -- Adap Update: Runtime Type with 2 branches
  index = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_update.dissect(buffer, index, packet, parent, adap_block_size)

  return index
end

-- Dissect: Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.adap_block then
    local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_block, range, display)
  end

  return cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block.fields(buffer, offset, packet, parent)
end

-- Adap Blocks
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_blocks = {}

-- Size: Adap Blocks
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_blocks.size = 1

-- Display: Adap Blocks
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_blocks.display = function(value)
  return "Adap Blocks: "..value
end

-- Dissect: Adap Blocks
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_blocks.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_blocks.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_blocks.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_blocks, range, value, display)

  return offset + length, value
end

-- Adap Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_flags = {}

-- Size: Adap Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_flags.size = 1

-- Display: Adap Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_flags.display = function(buffer, packet, parent)
  local display = ""

  -- Is Block Type flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Block Type|"
  end
  -- Is Complete flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Complete|"
  end
  -- Is Clear flag set?
  if buffer:bitfield(8) > 0 then
    display = display.."Clear|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Adap Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_flags.bits = function(buffer, offset, packet, parent)

  -- Adap Reserved Flags: 6 Bit
  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_reserved_flags, buffer(offset, 1))

  -- Block Type: 1 Bit
  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.block_type, buffer(offset, 1))

  -- Complete: 1 Bit
  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.complete, buffer(offset, 1))

  -- Clear: 1 Bit
  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.clear, buffer(offset, 1))
end

-- Dissect: Adap Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_flags.display(range, packet, parent)
  local element = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_flags, range, display)

  if show.adap_flags then
    cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Last Update Timestamp
cboe_byx_equities_summarydepth_pitch_v1_0_4.last_update_timestamp = {}

-- Size: Last Update Timestamp
cboe_byx_equities_summarydepth_pitch_v1_0_4.last_update_timestamp.size = 8

-- Display: Last Update Timestamp
cboe_byx_equities_summarydepth_pitch_v1_0_4.last_update_timestamp.display = function(value)
  return "Last Update Timestamp: "..value
end

-- Dissect: Last Update Timestamp
cboe_byx_equities_summarydepth_pitch_v1_0_4.last_update_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.last_update_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.last_update_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.last_update_timestamp, range, value, display)

  return offset + length, value
end

-- Adap Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_message = {}

-- Calculate size of: Adap Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4.last_update_timestamp.size

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.size

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_flags.size

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_blocks.size

  -- Calculate field size from count
  local adap_block_count = buffer(offset + index - 1, 1):le_uint()
  for i = 1, adap_block_count do
    index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block.size(buffer, offset + index)
  end
  return index
end

-- Display: Adap Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Adap Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, last_update_timestamp = cboe_byx_equities_summarydepth_pitch_v1_0_4.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.dissect(buffer, index, packet, parent)

  -- Adap Flags: Struct of 4 fields
  index, adap_flags = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_flags.dissect(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: 1 Byte Ascii String
  index, reserved_alphanumeric_1 = cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect(buffer, index, packet, parent)

  -- Adap Blocks: 1 Byte Unsigned Fixed Width Integer
  index, adap_blocks = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_blocks.dissect(buffer, index, packet, parent)

  -- Repeating: Adap Block
  for adap_block_index = 1, adap_blocks do
    index, adap_block = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_block.dissect(buffer, index, packet, parent, adap_block_index)
  end

  return index
end

-- Dissect: Adap Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.adap_message then
    local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_message, range, display)
  end

  return cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_message.fields(buffer, offset, packet, parent)
end

-- Session Indicator
cboe_byx_equities_summarydepth_pitch_v1_0_4.session_indicator = {}

-- Size: Session Indicator
cboe_byx_equities_summarydepth_pitch_v1_0_4.session_indicator.size = 1

-- Display: Session Indicator
cboe_byx_equities_summarydepth_pitch_v1_0_4.session_indicator.display = function(value)
  if value == "R" then
    return "Session Indicator: Regular Trading Session (R)"
  end
  if value == "P" then
    return "Session Indicator: Pre Or Post Market Session (P)"
  end

  return "Session Indicator: Unknown("..value..")"
end

-- Dissect: Session Indicator
cboe_byx_equities_summarydepth_pitch_v1_0_4.session_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.session_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.session_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.session_indicator, range, value, display)

  return offset + length, value
end

-- Market Status
cboe_byx_equities_summarydepth_pitch_v1_0_4.market_status = {}

-- Size: Market Status
cboe_byx_equities_summarydepth_pitch_v1_0_4.market_status.size = 1

-- Display: Market Status
cboe_byx_equities_summarydepth_pitch_v1_0_4.market_status.display = function(value)
  if value == "N" then
    return "Market Status: Normal (N)"
  end
  if value == "E" then
    return "Market Status: Excluded From Adap Updates (E)"
  end
  if value == "I" then
    return "Market Status: Incomplete (I)"
  end

  return "Market Status: Unknown("..value..")"
end

-- Dissect: Market Status
cboe_byx_equities_summarydepth_pitch_v1_0_4.market_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.market_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.market_status, range, value, display)

  return offset + length, value
end

-- Cboe Market Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_market_status_message = {}

-- Size: Cboe Market Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_market_status_message.size =
  cboe_byx_equities_summarydepth_pitch_v1_0_4.timestamp.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.market_status.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.session_indicator.size

-- Display: Cboe Market Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cboe Market Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = cboe_byx_equities_summarydepth_pitch_v1_0_4.timestamp.dissect(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: 1 Byte Ascii String
  index, reserved_alphanumeric_1 = cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect(buffer, index, packet, parent)

  -- Market Status: 1 Byte Ascii String Enum with 3 values
  index, market_status = cboe_byx_equities_summarydepth_pitch_v1_0_4.market_status.dissect(buffer, index, packet, parent)

  -- Session Indicator: 1 Byte Ascii String Enum with 2 values
  index, session_indicator = cboe_byx_equities_summarydepth_pitch_v1_0_4.session_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cboe Market Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.cboe_market_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.cboe_market_status_message, buffer(offset, 0))
    local index = cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Clear Quote Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.clear_quote_message = {}

-- Size: Clear Quote Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.clear_quote_message.size =
  cboe_byx_equities_summarydepth_pitch_v1_0_4.last_update_timestamp.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size

-- Display: Clear Quote Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.clear_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clear Quote Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.clear_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, last_update_timestamp = cboe_byx_equities_summarydepth_pitch_v1_0_4.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_byx_equities_summarydepth_pitch_v1_0_4.symbol.dissect(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: 1 Byte Ascii String
  index, reserved_alphanumeric_1 = cboe_byx_equities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Quote Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.clear_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.clear_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.clear_quote_message, buffer(offset, 0))
    local index = cboe_byx_equities_summarydepth_pitch_v1_0_4.clear_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.clear_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.clear_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_byx_equities_summarydepth_pitch_v1_0_4.payload = {}

-- Calculate runtime size of: Payload
cboe_byx_equities_summarydepth_pitch_v1_0_4.payload.size = function(buffer, offset, message_type)
  -- Size of Clear Quote Message
  if message_type == 0xA2 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.clear_quote_message.size(buffer, offset)
  end
  -- Size of Cboe Market Status Message
  if message_type == 0xA6 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_market_status_message.size(buffer, offset)
  end
  -- Size of Adap Message
  if message_type == 0xA7 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_message.size(buffer, offset)
  end
  -- Size of Rpi Message
  if message_type == 0xA8 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.rpi_message.size(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == 0xA9 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_message.size(buffer, offset)
  end
  -- Size of Trade Break Message
  if message_type == 0xAA then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_message.size(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == 0xAB then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.trading_status_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_byx_equities_summarydepth_pitch_v1_0_4.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_byx_equities_summarydepth_pitch_v1_0_4.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Clear Quote Message
  if message_type == 0xA2 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.clear_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cboe Market Status Message
  if message_type == 0xA6 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.cboe_market_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Adap Message
  if message_type == 0xA7 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.adap_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rpi Message
  if message_type == 0xA8 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.rpi_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0xA9 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0xAA then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0xAB then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.trading_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_byx_equities_summarydepth_pitch_v1_0_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_byx_equities_summarydepth_pitch_v1_0_4.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.payload, range, display)

  return cboe_byx_equities_summarydepth_pitch_v1_0_4.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
cboe_byx_equities_summarydepth_pitch_v1_0_4.message_type = {}

-- Size: Message Type
cboe_byx_equities_summarydepth_pitch_v1_0_4.message_type.size = 1

-- Display: Message Type
cboe_byx_equities_summarydepth_pitch_v1_0_4.message_type.display = function(value)
  if value == 0xA2 then
    return "Message Type: Clear Quote Message (0xA2)"
  end
  if value == 0xA6 then
    return "Message Type: Cboe Market Status Message (0xA6)"
  end
  if value == 0xA7 then
    return "Message Type: Adap Message (0xA7)"
  end
  if value == 0xA8 then
    return "Message Type: Rpi Message (0xA8)"
  end
  if value == 0xA9 then
    return "Message Type: Trade Message (0xA9)"
  end
  if value == 0xAA then
    return "Message Type: Trade Break Message (0xAA)"
  end
  if value == 0xAB then
    return "Message Type: Trading Status Message (0xAB)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_byx_equities_summarydepth_pitch_v1_0_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_byx_equities_summarydepth_pitch_v1_0_4.message_length = {}

-- Size: Message Length
cboe_byx_equities_summarydepth_pitch_v1_0_4.message_length.size = 1

-- Display: Message Length
cboe_byx_equities_summarydepth_pitch_v1_0_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_byx_equities_summarydepth_pitch_v1_0_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
cboe_byx_equities_summarydepth_pitch_v1_0_4.message_header = {}

-- Size: Message Header
cboe_byx_equities_summarydepth_pitch_v1_0_4.message_header.size =
  cboe_byx_equities_summarydepth_pitch_v1_0_4.message_length.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.message_type.size

-- Display: Message Header
cboe_byx_equities_summarydepth_pitch_v1_0_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_byx_equities_summarydepth_pitch_v1_0_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_byx_equities_summarydepth_pitch_v1_0_4.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, message_type = cboe_byx_equities_summarydepth_pitch_v1_0_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_byx_equities_summarydepth_pitch_v1_0_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message_header, buffer(offset, 0))
    local index = cboe_byx_equities_summarydepth_pitch_v1_0_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.message = {}

-- Display: Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_byx_equities_summarydepth_pitch_v1_0_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 7 branches
  index = cboe_byx_equities_summarydepth_pitch_v1_0_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_byx_equities_summarydepth_pitch_v1_0_4.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message, buffer(offset, 0))
    local current = cboe_byx_equities_summarydepth_pitch_v1_0_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_byx_equities_summarydepth_pitch_v1_0_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Sequence
cboe_byx_equities_summarydepth_pitch_v1_0_4.sequence = {}

-- Size: Sequence
cboe_byx_equities_summarydepth_pitch_v1_0_4.sequence.size = 4

-- Display: Sequence
cboe_byx_equities_summarydepth_pitch_v1_0_4.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_byx_equities_summarydepth_pitch_v1_0_4.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.sequence, range, value, display)

  return offset + length, value
end

-- Unit
cboe_byx_equities_summarydepth_pitch_v1_0_4.unit = {}

-- Size: Unit
cboe_byx_equities_summarydepth_pitch_v1_0_4.unit.size = 1

-- Display: Unit
cboe_byx_equities_summarydepth_pitch_v1_0_4.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_byx_equities_summarydepth_pitch_v1_0_4.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.unit, range, value, display)

  return offset + length, value
end

-- Count
cboe_byx_equities_summarydepth_pitch_v1_0_4.count = {}

-- Size: Count
cboe_byx_equities_summarydepth_pitch_v1_0_4.count.size = 1

-- Display: Count
cboe_byx_equities_summarydepth_pitch_v1_0_4.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_byx_equities_summarydepth_pitch_v1_0_4.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.count, range, value, display)

  return offset + length, value
end

-- Length
cboe_byx_equities_summarydepth_pitch_v1_0_4.length = {}

-- Size: Length
cboe_byx_equities_summarydepth_pitch_v1_0_4.length.size = 2

-- Display: Length
cboe_byx_equities_summarydepth_pitch_v1_0_4.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_byx_equities_summarydepth_pitch_v1_0_4.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.length, range, value, display)

  return offset + length, value
end

-- Packet Header
cboe_byx_equities_summarydepth_pitch_v1_0_4.packet_header = {}

-- Size: Packet Header
cboe_byx_equities_summarydepth_pitch_v1_0_4.packet_header.size =
  cboe_byx_equities_summarydepth_pitch_v1_0_4.length.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.count.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.unit.size + 
  cboe_byx_equities_summarydepth_pitch_v1_0_4.sequence.size

-- Display: Packet Header
cboe_byx_equities_summarydepth_pitch_v1_0_4.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_byx_equities_summarydepth_pitch_v1_0_4.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_byx_equities_summarydepth_pitch_v1_0_4.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_byx_equities_summarydepth_pitch_v1_0_4.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_byx_equities_summarydepth_pitch_v1_0_4.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_byx_equities_summarydepth_pitch_v1_0_4.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_byx_equities_summarydepth_pitch_v1_0_4.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.packet_header, buffer(offset, 0))
    local index = cboe_byx_equities_summarydepth_pitch_v1_0_4.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_summarydepth_pitch_v1_0_4.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_byx_equities_summarydepth_pitch_v1_0_4.packet = {}

-- Dissect Packet
cboe_byx_equities_summarydepth_pitch_v1_0_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_byx_equities_summarydepth_pitch_v1_0_4.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_byx_equities_summarydepth_pitch_v1_0_4.message.dissect(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.init()
end

-- Dissector for Cboe Byx Equities SummaryDepth Pitch 1.0.4
function omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_byx_equities_summarydepth_pitch_v1_0_4, buffer(), omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.description, "("..buffer:len().." Bytes)")
  return cboe_byx_equities_summarydepth_pitch_v1_0_4.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_byx_equities_summarydepth_pitch_v1_0_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_byx_equities_summarydepth_pitch_v1_0_4.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Byx Equities SummaryDepth Pitch 1.0.4
local function omi_cboe_byx_equities_summarydepth_pitch_v1_0_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_byx_equities_summarydepth_pitch_v1_0_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_byx_equities_summarydepth_pitch_v1_0_4
  omi_cboe_byx_equities_summarydepth_pitch_v1_0_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Byx Equities SummaryDepth Pitch 1.0.4
omi_cboe_byx_equities_summarydepth_pitch_v1_0_4:register_heuristic("udp", omi_cboe_byx_equities_summarydepth_pitch_v1_0_4_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.4
--   Date: Monday, July 26, 2021
--   Specification: Cboe_US_Equities_Summary_Depth_Feed_Specification.pdf
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
