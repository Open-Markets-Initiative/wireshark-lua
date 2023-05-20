-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Byx Equities SummaryDepth Pitch 1.0.4 Protocol
local cboe_byx_equities_summarydepth_pitch_v1_0_4 = Proto("Cboe.Byx.Equities.SummaryDepth.Pitch.v1.0.4.Lua", "Cboe Byx Equities SummaryDepth Pitch 1.0.4")

-- Component Tables
local show = {}
local format = {}
local cboe_byx_equities_summarydepth_pitch_v1_0_4_display = {}
local cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect = {}
local cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Byx Equities SummaryDepth Pitch 1.0.4 Fields
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_block = ProtoField.new("Adap Block", "cboe.byx.equities.summarydepth.pitch.v1.0.4.adapblock", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_block_size = ProtoField.new("Adap Block Size", "cboe.byx.equities.summarydepth.pitch.v1.0.4.adapblocksize", ftypes.UINT8)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_blocks = ProtoField.new("Adap Blocks", "cboe.byx.equities.summarydepth.pitch.v1.0.4.adapblocks", ftypes.UINT8)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_flags = ProtoField.new("Adap Flags", "cboe.byx.equities.summarydepth.pitch.v1.0.4.adapflags", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_message = ProtoField.new("Adap Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.adapmessage", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_reserved_flags = ProtoField.new("Adap Reserved Flags", "cboe.byx.equities.summarydepth.pitch.v1.0.4.adapreservedflags", ftypes.UINT8, nil, base.DEC, "0xFC00")
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_update = ProtoField.new("Adap Update", "cboe.byx.equities.summarydepth.pitch.v1.0.4.adapupdate", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.block_type = ProtoField.new("Block Type", "cboe.byx.equities.summarydepth.pitch.v1.0.4.blocktype", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x0200")
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.cboe_cumulative_executed_volume = ProtoField.new("Cboe Cumulative Executed Volume", "cboe.byx.equities.summarydepth.pitch.v1.0.4.cboecumulativeexecutedvolume", ftypes.UINT64)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.cboe_market_status_message = ProtoField.new("Cboe Market Status Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.cboemarketstatusmessage", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.clear = ProtoField.new("Clear", "cboe.byx.equities.summarydepth.pitch.v1.0.4.clear", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x0080")
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.clear_quote_message = ProtoField.new("Clear Quote Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.clearquotemessage", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.complete = ProtoField.new("Complete", "cboe.byx.equities.summarydepth.pitch.v1.0.4.complete", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x0100")
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.count = ProtoField.new("Count", "cboe.byx.equities.summarydepth.pitch.v1.0.4.count", ftypes.UINT8)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.execution_id = ProtoField.new("Execution Id", "cboe.byx.equities.summarydepth.pitch.v1.0.4.executionid", ftypes.UINT64)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.halt_status = ProtoField.new("Halt Status", "cboe.byx.equities.summarydepth.pitch.v1.0.4.haltstatus", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.last_price = ProtoField.new("Last Price", "cboe.byx.equities.summarydepth.pitch.v1.0.4.lastprice", ftypes.DOUBLE)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.last_quantity = ProtoField.new("Last Quantity", "cboe.byx.equities.summarydepth.pitch.v1.0.4.lastquantity", ftypes.UINT64)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.last_update_timestamp = ProtoField.new("Last Update Timestamp", "cboe.byx.equities.summarydepth.pitch.v1.0.4.lastupdatetimestamp", ftypes.UINT64)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.lastsale_eligible = ProtoField.new("Lastsale Eligible", "cboe.byx.equities.summarydepth.pitch.v1.0.4.lastsaleeligible", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.length = ProtoField.new("Length", "cboe.byx.equities.summarydepth.pitch.v1.0.4.length", ftypes.UINT16)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.long_update_adap_block = ProtoField.new("Long Update Adap Block", "cboe.byx.equities.summarydepth.pitch.v1.0.4.longupdateadapblock", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.market_status = ProtoField.new("Market Status", "cboe.byx.equities.summarydepth.pitch.v1.0.4.marketstatus", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message = ProtoField.new("Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.message", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message_header = ProtoField.new("Message Header", "cboe.byx.equities.summarydepth.pitch.v1.0.4.messageheader", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message_length = ProtoField.new("Message Length", "cboe.byx.equities.summarydepth.pitch.v1.0.4.messagelength", ftypes.UINT8)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message_type = ProtoField.new("Message Type", "cboe.byx.equities.summarydepth.pitch.v1.0.4.messagetype", ftypes.UINT8)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.packet = ProtoField.new("Packet", "cboe.byx.equities.summarydepth.pitch.v1.0.4.packet", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.packet_header = ProtoField.new("Packet Header", "cboe.byx.equities.summarydepth.pitch.v1.0.4.packetheader", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.payload = ProtoField.new("Payload", "cboe.byx.equities.summarydepth.pitch.v1.0.4.payload", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.price_binary_44_price_4 = ProtoField.new("Price Binary 44 Price 4", "cboe.byx.equities.summarydepth.pitch.v1.0.4.pricebinary44price4", ftypes.DOUBLE)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.price_binary_84_price_8 = ProtoField.new("Price Binary 84 Price 8", "cboe.byx.equities.summarydepth.pitch.v1.0.4.pricebinary84price8", ftypes.DOUBLE)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.byx.equities.summarydepth.pitch.v1.0.4.quantitylong", ftypes.UINT64)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.byx.equities.summarydepth.pitch.v1.0.4.quantityshort", ftypes.UINT32)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.byx.equities.summarydepth.pitch.v1.0.4.regshoaction", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reserved_alphanumeric_1 = ProtoField.new("Reserved Alphanumeric 1", "cboe.byx.equities.summarydepth.pitch.v1.0.4.reservedalphanumeric1", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reserved_binary_8 = ProtoField.new("Reserved Binary 8", "cboe.byx.equities.summarydepth.pitch.v1.0.4.reservedbinary8", ftypes.UINT64)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reserved_trade_flags = ProtoField.new("Reserved Trade Flags", "cboe.byx.equities.summarydepth.pitch.v1.0.4.reservedtradeflags", ftypes.UINT8, nil, base.DEC, "0xFC")
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.retail_price_improvement = ProtoField.new("Retail Price Improvement", "cboe.byx.equities.summarydepth.pitch.v1.0.4.retailpriceimprovement", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.rpi_message = ProtoField.new("Rpi Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.rpimessage", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.sequence = ProtoField.new("Sequence", "cboe.byx.equities.summarydepth.pitch.v1.0.4.sequence", ftypes.UINT32)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.session_indicator = ProtoField.new("Session Indicator", "cboe.byx.equities.summarydepth.pitch.v1.0.4.sessionindicator", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.short_update_adap_block = ProtoField.new("Short Update Adap Block", "cboe.byx.equities.summarydepth.pitch.v1.0.4.shortupdateadapblock", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.side = ProtoField.new("Side", "cboe.byx.equities.summarydepth.pitch.v1.0.4.side", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.symbol = ProtoField.new("Symbol", "cboe.byx.equities.summarydepth.pitch.v1.0.4.symbol", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.timestamp = ProtoField.new("Timestamp", "cboe.byx.equities.summarydepth.pitch.v1.0.4.timestamp", ftypes.UINT64)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_break_flags = ProtoField.new("Trade Break Flags", "cboe.byx.equities.summarydepth.pitch.v1.0.4.tradebreakflags", ftypes.UINT8)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.tradebreakmessage", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_flags = ProtoField.new("Trade Flags", "cboe.byx.equities.summarydepth.pitch.v1.0.4.tradeflags", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_message = ProtoField.new("Trade Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.trademessage", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.byx.equities.summarydepth.pitch.v1.0.4.tradingstatusmessage", ftypes.STRING)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.byx.equities.summarydepth.pitch.v1.0.4.transactiontime", ftypes.UINT64)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.unit = ProtoField.new("Unit", "cboe.byx.equities.summarydepth.pitch.v1.0.4.unit", ftypes.UINT8)
cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.unused = ProtoField.new("Unused", "cboe.byx.equities.summarydepth.pitch.v1.0.4.unused", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

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
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_block = Pref.bool("Show Adap Block", show.adap_block, "Parse and add Adap Block to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_flags = Pref.bool("Show Adap Flags", show.adap_flags, "Parse and add Adap Flags to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_message = Pref.bool("Show Adap Message", show.adap_message, "Parse and add Adap Message to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_cboe_market_status_message = Pref.bool("Show Cboe Market Status Message", show.cboe_market_status_message, "Parse and add Cboe Market Status Message to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_clear_quote_message = Pref.bool("Show Clear Quote Message", show.clear_quote_message, "Parse and add Clear Quote Message to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_long_update_adap_block = Pref.bool("Show Long Update Adap Block", show.long_update_adap_block, "Parse and add Long Update Adap Block to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_rpi_message = Pref.bool("Show Rpi Message", show.rpi_message, "Parse and add Rpi Message to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_short_update_adap_block = Pref.bool("Show Short Update Adap Block", show.short_update_adap_block, "Parse and add Short Update Adap Block to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_update = Pref.bool("Show Adap Update", show.adap_update, "Parse and add Adap Update to protocol tree")
cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.adap_block ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_block then
    show.adap_block = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_block
    changed = true
  end
  if show.adap_flags ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_flags then
    show.adap_flags = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_flags
    changed = true
  end
  if show.adap_message ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_message then
    show.adap_message = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_message
    changed = true
  end
  if show.cboe_market_status_message ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_cboe_market_status_message then
    show.cboe_market_status_message = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_cboe_market_status_message
    changed = true
  end
  if show.clear_quote_message ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_clear_quote_message then
    show.clear_quote_message = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_clear_quote_message
    changed = true
  end
  if show.long_update_adap_block ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_long_update_adap_block then
    show.long_update_adap_block = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_long_update_adap_block
    changed = true
  end
  if show.message ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_message then
    show.message = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_message
    changed = true
  end
  if show.message_header ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_message_header then
    show.message_header = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_message_header
    changed = true
  end
  if show.packet ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_packet then
    show.packet = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_packet_header then
    show.packet_header = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_packet_header
    changed = true
  end
  if show.rpi_message ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_rpi_message then
    show.rpi_message = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_rpi_message
    changed = true
  end
  if show.short_update_adap_block ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_short_update_adap_block then
    show.short_update_adap_block = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_short_update_adap_block
    changed = true
  end
  if show.trade_break_message ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_break_message then
    show.trade_break_message = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_flags ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_flags then
    show.trade_flags = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_flags
    changed = true
  end
  if show.trade_message ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_message then
    show.trade_message = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trade_message
    changed = true
  end
  if show.trading_status_message ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trading_status_message then
    show.trading_status_message = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_trading_status_message
    changed = true
  end
  if show.adap_update ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_update then
    show.adap_update = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_adap_update
    changed = true
  end
  if show.payload ~= cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_payload then
    show.payload = cboe_byx_equities_summarydepth_pitch_v1_0_4.prefs.show_payload
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

-- Size: Reg Sho Action
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reg_sho_action = 1

-- Display: Reg Sho Action
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.reg_sho_action = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.reg_sho_action = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reg_sho_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.reg_sho_action(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Size: Halt Status
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.halt_status = 1

-- Display: Halt Status
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.halt_status = function(value)
  return "Halt Status: "..value
end

-- Dissect: Halt Status
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.halt_status = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.halt_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.halt_status(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.halt_status, range, value, display)

  return offset + length, value
end

-- Size: Reserved Alphanumeric 1
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reserved_alphanumeric_1 = 1

-- Display: Reserved Alphanumeric 1
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.reserved_alphanumeric_1 = function(value)
  return "Reserved Alphanumeric 1: "..value
end

-- Dissect: Reserved Alphanumeric 1
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.reserved_alphanumeric_1 = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reserved_alphanumeric_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.reserved_alphanumeric_1(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reserved_alphanumeric_1, range, value, display)

  return offset + length, value
end

-- Size: Symbol
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.symbol = 8

-- Display: Symbol
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.symbol = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.timestamp = 8

-- Display: Timestamp
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.trading_status_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.timestamp

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.symbol

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reserved_alphanumeric_1

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.halt_status

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reg_sho_action

  return index
end

-- Display: Trading Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.trading_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.symbol(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: 1 Byte Ascii String
  index, reserved_alphanumeric_1 = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.reserved_alphanumeric_1(buffer, index, packet, parent)

  -- Halt Status: 1 Byte Ascii String
  index, halt_status = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.halt_status(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 2 values
  index, reg_sho_action = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.reg_sho_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trading_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_status_message then
    local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.trading_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.trading_status_message(buffer, packet, parent)
    parent = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trading_status_message, range, display)
  end

  return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trading_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Break Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.trade_break_flags = 1

-- Display: Trade Break Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.trade_break_flags = function(value)
  return "Trade Break Flags: "..value
end

-- Dissect: Trade Break Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trade_break_flags = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.trade_break_flags
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.trade_break_flags(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_break_flags, range, value, display)

  return offset + length, value
end

-- Size: Reserved Binary 8
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reserved_binary_8 = 8

-- Display: Reserved Binary 8
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.reserved_binary_8 = function(value)
  return "Reserved Binary 8: "..value
end

-- Dissect: Reserved Binary 8
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.reserved_binary_8 = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reserved_binary_8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.reserved_binary_8(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reserved_binary_8, range, value, display)

  return offset + length, value
end

-- Size: Cboe Cumulative Executed Volume
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.cboe_cumulative_executed_volume = 8

-- Display: Cboe Cumulative Executed Volume
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.cboe_cumulative_executed_volume = function(value)
  return "Cboe Cumulative Executed Volume: "..value
end

-- Dissect: Cboe Cumulative Executed Volume
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.cboe_cumulative_executed_volume = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.cboe_cumulative_executed_volume
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.cboe_cumulative_executed_volume(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.cboe_cumulative_executed_volume, range, value, display)

  return offset + length, value
end

-- Size: Execution Id
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.execution_id = 8

-- Display: Execution Id
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.execution_id = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.execution_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.execution_id(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Size: Transaction Time
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.transaction_time = 8

-- Display: Transaction Time
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.transaction_time = function(value)
  return "Transaction Time: "..value
end

-- Dissect: Transaction Time
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.transaction_time = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.transaction_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.transaction_time(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Break Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.trade_break_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.transaction_time

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.symbol

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reserved_alphanumeric_1

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.execution_id

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.cboe_cumulative_executed_volume

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reserved_binary_8

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.trade_break_flags

  return index
end

-- Display: Trade Break Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.trade_break_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trade_break_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.transaction_time(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.symbol(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: 1 Byte Ascii String
  index, reserved_alphanumeric_1 = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.reserved_alphanumeric_1(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.execution_id(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume: 8 Byte Unsigned Fixed Width Integer
  index, cboe_cumulative_executed_volume = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.cboe_cumulative_executed_volume(buffer, index, packet, parent)

  -- Reserved Binary 8: 8 Byte Unsigned Fixed Width Integer
  index, reserved_binary_8 = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.reserved_binary_8(buffer, index, packet, parent)

  -- Trade Break Flags: 1 Byte Unsigned Fixed Width Integer
  index, trade_break_flags = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trade_break_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trade_break_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_break_message then
    local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.trade_break_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.trade_break_message(buffer, packet, parent)
    parent = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_break_message, range, display)
  end

  return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trade_break_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.trade_flags = 1

-- Display: Trade Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.trade_flags = function(buffer, packet, parent)
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
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trade_flags_bits = function(buffer, offset, packet, parent)

  -- Reserved Trade Flags: 6 Bit
  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.reserved_trade_flags, buffer(offset, 1))

  -- Lastsale Eligible: 1 Bit
  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.lastsale_eligible, buffer(offset, 1))

  -- Unused: 1 Bit
  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.unused, buffer(offset, 1))
end

-- Dissect: Trade Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trade_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.trade_flags(range, packet, parent)
  local element = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_flags, range, display)

  if show.trade_flags then
    cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trade_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Last Quantity
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.last_quantity = 8

-- Display: Last Quantity
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.last_quantity = function(value)
  return "Last Quantity: "..value
end

-- Dissect: Last Quantity
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.last_quantity = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.last_quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.last_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.last_quantity, range, value, display)

  return offset + length, value
end

-- Size: Last Price
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.last_price = 8

-- Display: Last Price
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.last_price = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
translate.last_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Last Price
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.last_price = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.last_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.last_price(raw)
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.last_price(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.last_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.trade_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.transaction_time

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.symbol

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reserved_alphanumeric_1

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.execution_id

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.last_price

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.last_quantity

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.cboe_cumulative_executed_volume

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reserved_binary_8

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.trade_flags

  return index
end

-- Display: Trade Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.transaction_time(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.symbol(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: 1 Byte Ascii String
  index, reserved_alphanumeric_1 = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.reserved_alphanumeric_1(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.execution_id(buffer, index, packet, parent)

  -- Last Price: 8 Byte Unsigned Fixed Width Integer
  index, last_price = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.last_price(buffer, index, packet, parent)

  -- Last Quantity: 8 Byte Unsigned Fixed Width Integer
  index, last_quantity = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.last_quantity(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume: 8 Byte Unsigned Fixed Width Integer
  index, cboe_cumulative_executed_volume = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.cboe_cumulative_executed_volume(buffer, index, packet, parent)

  -- Reserved Binary 8: 8 Byte Unsigned Fixed Width Integer
  index, reserved_binary_8 = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.reserved_binary_8(buffer, index, packet, parent)

  -- Trade Flags: Struct of 3 fields
  index, trade_flags = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trade_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_message then
    local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.trade_message(buffer, packet, parent)
    parent = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.trade_message, range, display)
  end

  return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Retail Price Improvement
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.retail_price_improvement = 1

-- Display: Retail Price Improvement
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.retail_price_improvement = function(value)
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
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.retail_price_improvement = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.retail_price_improvement
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.retail_price_improvement(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.retail_price_improvement, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rpi Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.rpi_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.timestamp

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.symbol

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reserved_alphanumeric_1

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.retail_price_improvement

  return index
end

-- Display: Rpi Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.rpi_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rpi Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.rpi_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.symbol(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: 1 Byte Ascii String
  index, reserved_alphanumeric_1 = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.reserved_alphanumeric_1(buffer, index, packet, parent)

  -- Retail Price Improvement: 1 Byte Ascii String Enum with 4 values
  index, retail_price_improvement = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.retail_price_improvement(buffer, index, packet, parent)

  return index
end

-- Dissect: Rpi Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.rpi_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rpi_message then
    local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.rpi_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.rpi_message(buffer, packet, parent)
    parent = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.rpi_message, range, display)
  end

  return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.rpi_message_fields(buffer, offset, packet, parent)
end

-- Size: Quantity Long
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.quantity_long = 8

-- Display: Quantity Long
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.quantity_long = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.quantity_long = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.quantity_long
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.quantity_long(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Size: Price Binary 84 Price 8
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.price_binary_84_price_8 = 8

-- Display: Price Binary 84 Price 8
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.price_binary_84_price_8 = function(value)
  return "Price Binary 84 Price 8: "..value
end

-- Translate: Price Binary 84 Price 8
translate.price_binary_84_price_8 = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Price Binary 84 Price 8
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.price_binary_84_price_8 = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.price_binary_84_price_8
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price_binary_84_price_8(raw)
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.price_binary_84_price_8(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.price_binary_84_price_8, range, value, display)

  return offset + length, value
end

-- Size: Side
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.side = 1

-- Display: Side
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.side = function(value)
  return "Side: "..value
end

-- Dissect: Side
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.side = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.side(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Long Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.long_update_adap_block = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.side

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.price_binary_84_price_8

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.quantity_long

  return index
end

-- Display: Long Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.long_update_adap_block = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.long_update_adap_block_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: 1 Byte Ascii String
  index, side = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.side(buffer, index, packet, parent)

  -- Price Binary 84 Price 8: 8 Byte Unsigned Fixed Width Integer
  index, price_binary_84_price_8 = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.price_binary_84_price_8(buffer, index, packet, parent)

  -- Quantity Long: 8 Byte Unsigned Fixed Width Integer
  index, quantity_long = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.quantity_long(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.long_update_adap_block = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_update_adap_block then
    local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.long_update_adap_block(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.long_update_adap_block(buffer, packet, parent)
    parent = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.long_update_adap_block, range, display)
  end

  return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.long_update_adap_block_fields(buffer, offset, packet, parent)
end

-- Size: Quantity Short
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.quantity_short = 4

-- Display: Quantity Short
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.quantity_short = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.quantity_short = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.quantity_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.quantity_short(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Size: Price Binary 44 Price 4
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.price_binary_44_price_4 = 4

-- Display: Price Binary 44 Price 4
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.price_binary_44_price_4 = function(value)
  return "Price Binary 44 Price 4: "..value
end

-- Translate: Price Binary 44 Price 4
translate.price_binary_44_price_4 = function(raw)
  return raw*10000
end

-- Dissect: Price Binary 44 Price 4
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.price_binary_44_price_4 = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.price_binary_44_price_4
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.price_binary_44_price_4(raw)
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.price_binary_44_price_4(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.price_binary_44_price_4, range, value, display)

  return offset + length, value
end

-- Calculate size of: Short Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.short_update_adap_block = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.side

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.price_binary_44_price_4

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.quantity_short

  return index
end

-- Display: Short Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.short_update_adap_block = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.short_update_adap_block_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: 1 Byte Ascii String
  index, side = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.side(buffer, index, packet, parent)

  -- Price Binary 44 Price 4: 4 Byte Unsigned Fixed Width Integer
  index, price_binary_44_price_4 = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.price_binary_44_price_4(buffer, index, packet, parent)

  -- Quantity Short: 4 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.quantity_short(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Update Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.short_update_adap_block = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_update_adap_block then
    local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.short_update_adap_block(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.short_update_adap_block(buffer, packet, parent)
    parent = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.short_update_adap_block, range, display)
  end

  return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.short_update_adap_block_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Adap Update
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_update = function(buffer, offset, adap_block_size)
  -- Size of Short Update Adap Block
  if adap_block_size == 10 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.short_update_adap_block(buffer, offset)
  end
  -- Size of Long Update Adap Block
  if adap_block_size == 18 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.long_update_adap_block(buffer, offset)
  end

  return 0
end

-- Display: Adap Update
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.adap_update = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Adap Update
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_update_branches = function(buffer, offset, packet, parent, adap_block_size)
  -- Dissect Short Update Adap Block
  if adap_block_size == 10 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.short_update_adap_block(buffer, offset, packet, parent)
  end
  -- Dissect Long Update Adap Block
  if adap_block_size == 18 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.long_update_adap_block(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Adap Update
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_update = function(buffer, offset, packet, parent, adap_block_size)
  if not show.adap_update then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_update_branches(buffer, offset, packet, parent, adap_block_size)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_update(buffer, offset, adap_block_size)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.adap_update(buffer, packet, parent)
  local element = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_update, range, display)

  return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_update_branches(buffer, offset, packet, parent, adap_block_size)
end

-- Size: Adap Block Size
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_block_size = 1

-- Display: Adap Block Size
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.adap_block_size = function(value)
  return "Adap Block Size: "..value
end

-- Dissect: Adap Block Size
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_block_size = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_block_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.adap_block_size(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_block_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_block = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_block_size

  -- Calculate runtime size of Adap Update field
  local adap_update_offset = offset + index
  local adap_update_type = buffer(adap_update_offset - 1, 1):le_uint()
  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_update(buffer, adap_update_offset, adap_update_type)

  return index
end

-- Display: Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.adap_block = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_block_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Adap Block Size: 1 Byte Unsigned Fixed Width Integer
  index, adap_block_size = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_block_size(buffer, index, packet, parent)

  -- Adap Update: Runtime Type with 2 branches
  index = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_update(buffer, index, packet, parent, adap_block_size)

  return index
end

-- Dissect: Adap Block
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_block = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.adap_block then
    local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_block(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.adap_block(buffer, packet, parent)
    parent = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_block, range, display)
  end

  return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_block_fields(buffer, offset, packet, parent)
end

-- Size: Adap Blocks
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_blocks = 1

-- Display: Adap Blocks
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.adap_blocks = function(value)
  return "Adap Blocks: "..value
end

-- Dissect: Adap Blocks
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_blocks = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_blocks
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.adap_blocks(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_blocks, range, value, display)

  return offset + length, value
end

-- Size: Adap Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_flags = 1

-- Display: Adap Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.adap_flags = function(buffer, packet, parent)
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
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_flags_bits = function(buffer, offset, packet, parent)

  -- Adap Reserved Flags: 6 Bit
  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_reserved_flags, buffer(offset, 1))

  -- Block Type: 1 Bit
  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.block_type, buffer(offset, 1))

  -- Complete: 1 Bit
  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.complete, buffer(offset, 1))

  -- Clear: 1 Bit
  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.clear, buffer(offset, 1))
end

-- Dissect: Adap Flags
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.adap_flags(range, packet, parent)
  local element = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_flags, range, display)

  if show.adap_flags then
    cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Last Update Timestamp
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.last_update_timestamp = 8

-- Display: Last Update Timestamp
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.last_update_timestamp = function(value)
  return "Last Update Timestamp: "..value
end

-- Dissect: Last Update Timestamp
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.last_update_timestamp = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.last_update_timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.last_update_timestamp(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.last_update_timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Adap Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.last_update_timestamp

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.symbol

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_flags

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reserved_alphanumeric_1

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_blocks

  -- Calculate field size from count
  local adap_block_count = buffer(offset + index - 1, 1):le_uint()
  for i = 1, adap_block_count do
    index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_block(buffer, offset + index)
  end
  return index
end

-- Display: Adap Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.adap_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Adap Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, last_update_timestamp = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.last_update_timestamp(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.symbol(buffer, index, packet, parent)

  -- Adap Flags: Struct of 4 fields
  index, adap_flags = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_flags(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: 1 Byte Ascii String
  index, reserved_alphanumeric_1 = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.reserved_alphanumeric_1(buffer, index, packet, parent)

  -- Adap Blocks: 1 Byte Unsigned Fixed Width Integer
  index, adap_blocks = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_blocks(buffer, index, packet, parent)

  -- Adap Block: Struct of 2 fields
  for i = 1, adap_blocks do
    index = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_block(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Adap Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.adap_message then
    local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.adap_message(buffer, packet, parent)
    parent = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.adap_message, range, display)
  end

  return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_message_fields(buffer, offset, packet, parent)
end

-- Size: Session Indicator
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.session_indicator = 1

-- Display: Session Indicator
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.session_indicator = function(value)
  if value == "R" then
    return "Session Indicator: Regular Trading Session (R)"
  end
  if value == "P" then
    return "Session Indicator: Pre Or Post Market Session (P)"
  end

  return "Session Indicator: Unknown("..value..")"
end

-- Dissect: Session Indicator
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.session_indicator = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.session_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.session_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.session_indicator, range, value, display)

  return offset + length, value
end

-- Size: Market Status
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.market_status = 1

-- Display: Market Status
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.market_status = function(value)
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
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.market_status = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.market_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.market_status(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.market_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cboe Market Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.cboe_market_status_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.timestamp

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reserved_alphanumeric_1

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.market_status

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.session_indicator

  return index
end

-- Display: Cboe Market Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.cboe_market_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cboe Market Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.cboe_market_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.timestamp(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: 1 Byte Ascii String
  index, reserved_alphanumeric_1 = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.reserved_alphanumeric_1(buffer, index, packet, parent)

  -- Market Status: 1 Byte Ascii String Enum with 3 values
  index, market_status = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.market_status(buffer, index, packet, parent)

  -- Session Indicator: 1 Byte Ascii String Enum with 2 values
  index, session_indicator = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.session_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Cboe Market Status Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.cboe_market_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cboe_market_status_message then
    local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.cboe_market_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.cboe_market_status_message(buffer, packet, parent)
    parent = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.cboe_market_status_message, range, display)
  end

  return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.cboe_market_status_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Clear Quote Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.clear_quote_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.last_update_timestamp

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.symbol

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.reserved_alphanumeric_1

  return index
end

-- Display: Clear Quote Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.clear_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Clear Quote Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.clear_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, last_update_timestamp = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.last_update_timestamp(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.symbol(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: 1 Byte Ascii String
  index, reserved_alphanumeric_1 = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.reserved_alphanumeric_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Quote Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.clear_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.clear_quote_message then
    local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.clear_quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.clear_quote_message(buffer, packet, parent)
    parent = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.clear_quote_message, range, display)
  end

  return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.clear_quote_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.payload = function(buffer, offset, message_type)
  -- Size of Clear Quote Message
  if message_type == 0xA2 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.clear_quote_message(buffer, offset)
  end
  -- Size of Cboe Market Status Message
  if message_type == 0xA6 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.cboe_market_status_message(buffer, offset)
  end
  -- Size of Adap Message
  if message_type == 0xA7 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.adap_message(buffer, offset)
  end
  -- Size of Rpi Message
  if message_type == 0xA8 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.rpi_message(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == 0xA9 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.trade_message(buffer, offset)
  end
  -- Size of Trade Break Message
  if message_type == 0xAA then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.trade_break_message(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == 0xAB then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.trading_status_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Clear Quote Message
  if message_type == 0xA2 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.clear_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Cboe Market Status Message
  if message_type == 0xA6 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.cboe_market_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Adap Message
  if message_type == 0xA7 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.adap_message(buffer, offset, packet, parent)
  end
  -- Dissect Rpi Message
  if message_type == 0xA8 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.rpi_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0xA9 then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0xAA then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trade_break_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0xAB then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.trading_status_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.payload(buffer, packet, parent)
  local element = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.payload, range, display)

  return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.message_type = 1

-- Display: Message Type
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.message_type = function(value)
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
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.message_type = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.message_length = 1

-- Display: Message Length
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.message_length = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.message_length

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.message_type

  return index
end

-- Display: Message Header
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, message_type = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.message_header(buffer, packet, parent)
    parent = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message_header, range, display)
  end

  return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 7 branches
  index = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.message(buffer, packet, parent)
    parent = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.message, range, display)
  end

  cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Sequence
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.sequence = 4

-- Display: Sequence
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.sequence = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.sequence
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.sequence(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Unit
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.unit = 1

-- Display: Unit
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.unit = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.unit = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.unit(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.unit, range, value, display)

  return offset + length, value
end

-- Size: Count
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.count = 1

-- Display: Count
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.count = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.count(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Length
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.length = 2

-- Display: Length
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.length = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.length(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.length

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.count

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.unit

  index = index + cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.sequence

  return index
end

-- Display: Packet Header
cboe_byx_equities_summarydepth_pitch_v1_0_4_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.length(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.count(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.unit(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.sequence(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = cboe_byx_equities_summarydepth_pitch_v1_0_4_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_byx_equities_summarydepth_pitch_v1_0_4_display.packet_header(buffer, packet, parent)
    parent = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4.fields.packet_header, range, display)
  end

  return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Message: Struct of 2 fields
    index = cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.message(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_byx_equities_summarydepth_pitch_v1_0_4.init()
end

-- Dissector for Cboe Byx Equities SummaryDepth Pitch 1.0.4
function cboe_byx_equities_summarydepth_pitch_v1_0_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_byx_equities_summarydepth_pitch_v1_0_4.name

  -- Dissect protocol
  local protocol = parent:add(cboe_byx_equities_summarydepth_pitch_v1_0_4, buffer(), cboe_byx_equities_summarydepth_pitch_v1_0_4.description, "("..buffer:len().." Bytes)")
  return cboe_byx_equities_summarydepth_pitch_v1_0_4_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cboe_byx_equities_summarydepth_pitch_v1_0_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_byx_equities_summarydepth_pitch_v1_0_4_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Byx Equities SummaryDepth Pitch 1.0.4
local function cboe_byx_equities_summarydepth_pitch_v1_0_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_byx_equities_summarydepth_pitch_v1_0_4_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_byx_equities_summarydepth_pitch_v1_0_4
  cboe_byx_equities_summarydepth_pitch_v1_0_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Byx Equities SummaryDepth Pitch 1.0.4
cboe_byx_equities_summarydepth_pitch_v1_0_4:register_heuristic("udp", cboe_byx_equities_summarydepth_pitch_v1_0_4_heuristic)

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
