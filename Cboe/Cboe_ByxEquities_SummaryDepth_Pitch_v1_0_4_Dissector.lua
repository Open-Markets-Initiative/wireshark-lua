-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe ByxEquities SummaryDepth Pitch 1.0.4 Protocol
local omi_cboe_byxequities_summarydepth_pitch_v1_0_4 = Proto("Cboe.ByxEquities.SummaryDepth.Pitch.v1.0.4.Lua", "Cboe ByxEquities SummaryDepth Pitch 1.0.4")

-- Protocol table
local cboe_byxequities_summarydepth_pitch_v1_0_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe ByxEquities SummaryDepth Pitch 1.0.4 Fields
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.adap_block = ProtoField.new("Adap Block", "cboe.byxequities.summarydepth.pitch.v1.0.4.adapblock", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.adap_block_size = ProtoField.new("Adap Block Size", "cboe.byxequities.summarydepth.pitch.v1.0.4.adapblocksize", ftypes.UINT8)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.adap_blocks = ProtoField.new("Adap Blocks", "cboe.byxequities.summarydepth.pitch.v1.0.4.adapblocks", ftypes.UINT8)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.adap_flags = ProtoField.new("Adap Flags", "cboe.byxequities.summarydepth.pitch.v1.0.4.adapflags", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.adap_reserved_flags = ProtoField.new("Adap Reserved Flags", "cboe.byxequities.summarydepth.pitch.v1.0.4.adapreservedflags", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.block_type = ProtoField.new("Block Type", "cboe.byxequities.summarydepth.pitch.v1.0.4.blocktype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.cboe_cumulative_executed_volume = ProtoField.new("Cboe Cumulative Executed Volume", "cboe.byxequities.summarydepth.pitch.v1.0.4.cboecumulativeexecutedvolume", ftypes.UINT64)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.clear = ProtoField.new("Clear", "cboe.byxequities.summarydepth.pitch.v1.0.4.clear", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.complete = ProtoField.new("Complete", "cboe.byxequities.summarydepth.pitch.v1.0.4.complete", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.count = ProtoField.new("Count", "cboe.byxequities.summarydepth.pitch.v1.0.4.count", ftypes.UINT8)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.execution_id = ProtoField.new("Execution Id", "cboe.byxequities.summarydepth.pitch.v1.0.4.executionid", ftypes.UINT64)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.halt_status = ProtoField.new("Halt Status", "cboe.byxequities.summarydepth.pitch.v1.0.4.haltstatus", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.last_price = ProtoField.new("Last Price", "cboe.byxequities.summarydepth.pitch.v1.0.4.lastprice", ftypes.DOUBLE)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.last_quantity = ProtoField.new("Last Quantity", "cboe.byxequities.summarydepth.pitch.v1.0.4.lastquantity", ftypes.UINT64)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.last_update_timestamp = ProtoField.new("Last Update Timestamp", "cboe.byxequities.summarydepth.pitch.v1.0.4.lastupdatetimestamp", ftypes.UINT64)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.lastsale_eligible = ProtoField.new("Lastsale Eligible", "cboe.byxequities.summarydepth.pitch.v1.0.4.lastsaleeligible", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.length = ProtoField.new("Length", "cboe.byxequities.summarydepth.pitch.v1.0.4.length", ftypes.UINT16)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.long_update_adap_block = ProtoField.new("Long Update Adap Block", "cboe.byxequities.summarydepth.pitch.v1.0.4.longupdateadapblock", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.market_status = ProtoField.new("Market Status", "cboe.byxequities.summarydepth.pitch.v1.0.4.marketstatus", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.message = ProtoField.new("Message", "cboe.byxequities.summarydepth.pitch.v1.0.4.message", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.message_header = ProtoField.new("Message Header", "cboe.byxequities.summarydepth.pitch.v1.0.4.messageheader", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.message_length = ProtoField.new("Message Length", "cboe.byxequities.summarydepth.pitch.v1.0.4.messagelength", ftypes.UINT8)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.message_type = ProtoField.new("Message Type", "cboe.byxequities.summarydepth.pitch.v1.0.4.messagetype", ftypes.UINT8)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.packet = ProtoField.new("Packet", "cboe.byxequities.summarydepth.pitch.v1.0.4.packet", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.packet_header = ProtoField.new("Packet Header", "cboe.byxequities.summarydepth.pitch.v1.0.4.packetheader", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.price = ProtoField.new("Price", "cboe.byxequities.summarydepth.pitch.v1.0.4.price", ftypes.DOUBLE)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.quantity = ProtoField.new("Quantity", "cboe.byxequities.summarydepth.pitch.v1.0.4.quantity", ftypes.UINT32)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.byxequities.summarydepth.pitch.v1.0.4.regshoaction", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.reserved_alphanumeric_1 = ProtoField.new("Reserved Alphanumeric 1", "cboe.byxequities.summarydepth.pitch.v1.0.4.reservedalphanumeric1", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.reserved_binary_8 = ProtoField.new("Reserved Binary 8", "cboe.byxequities.summarydepth.pitch.v1.0.4.reservedbinary8", ftypes.UINT64)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.reserved_trade_flags = ProtoField.new("Reserved Trade Flags", "cboe.byxequities.summarydepth.pitch.v1.0.4.reservedtradeflags", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.retail_price_improvement = ProtoField.new("Retail Price Improvement", "cboe.byxequities.summarydepth.pitch.v1.0.4.retailpriceimprovement", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.sequence = ProtoField.new("Sequence", "cboe.byxequities.summarydepth.pitch.v1.0.4.sequence", ftypes.UINT32)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.session_indicator = ProtoField.new("Session Indicator", "cboe.byxequities.summarydepth.pitch.v1.0.4.sessionindicator", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.short_update_adap_block = ProtoField.new("Short Update Adap Block", "cboe.byxequities.summarydepth.pitch.v1.0.4.shortupdateadapblock", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.side = ProtoField.new("Side", "cboe.byxequities.summarydepth.pitch.v1.0.4.side", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.symbol = ProtoField.new("Symbol", "cboe.byxequities.summarydepth.pitch.v1.0.4.symbol", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.timestamp = ProtoField.new("Timestamp", "cboe.byxequities.summarydepth.pitch.v1.0.4.timestamp", ftypes.UINT64)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.trade_break_flags = ProtoField.new("Trade Break Flags", "cboe.byxequities.summarydepth.pitch.v1.0.4.tradebreakflags", ftypes.UINT8)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.trade_flags = ProtoField.new("Trade Flags", "cboe.byxequities.summarydepth.pitch.v1.0.4.tradeflags", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.byxequities.summarydepth.pitch.v1.0.4.transactiontime", ftypes.UINT64)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.unit = ProtoField.new("Unit", "cboe.byxequities.summarydepth.pitch.v1.0.4.unit", ftypes.UINT8)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.unused = ProtoField.new("Unused", "cboe.byxequities.summarydepth.pitch.v1.0.4.unused", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)

-- Cboe ByxEquities Pitch SummaryDepth 1.0.4 Application Messages
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.adap_message = ProtoField.new("Adap Message", "cboe.byxequities.summarydepth.pitch.v1.0.4.adapmessage", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.cboe_market_status_message = ProtoField.new("Cboe Market Status Message", "cboe.byxequities.summarydepth.pitch.v1.0.4.cboemarketstatusmessage", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.clear_quote_message = ProtoField.new("Clear Quote Message", "cboe.byxequities.summarydepth.pitch.v1.0.4.clearquotemessage", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.rpi_message = ProtoField.new("Rpi Message", "cboe.byxequities.summarydepth.pitch.v1.0.4.rpimessage", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.byxequities.summarydepth.pitch.v1.0.4.tradebreakmessage", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.trade_message = ProtoField.new("Trade Message", "cboe.byxequities.summarydepth.pitch.v1.0.4.trademessage", ftypes.STRING)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.byxequities.summarydepth.pitch.v1.0.4.tradingstatusmessage", ftypes.STRING)

-- Cboe ByxEquities SummaryDepth Pitch 1.0.4 generated fields
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.adap_block_index = ProtoField.new("Adap Block Index", "cboe.byxequities.summarydepth.pitch.v1.0.4.adapblockindex", ftypes.UINT16)
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.message_index = ProtoField.new("Message Index", "cboe.byxequities.summarydepth.pitch.v1.0.4.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe ByxEquities SummaryDepth Pitch 1.0.4 Element Dissection Options
show.adap_block = true
show.adap_flags = true
show.application_messages = true
show.long_update_adap_block = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.short_update_adap_block = true
show.trade_flags = true
show.message_index = true
show.adap_block_index = true

-- Register Cboe ByxEquities SummaryDepth Pitch 1.0.4 Show Options
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_adap_block = Pref.bool("Show Adap Block", show.adap_block, "Parse and add Adap Block to protocol tree")
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_adap_flags = Pref.bool("Show Adap Flags", show.adap_flags, "Parse and add Adap Flags to protocol tree")
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_long_update_adap_block = Pref.bool("Show Long Update Adap Block", show.long_update_adap_block, "Parse and add Long Update Adap Block to protocol tree")
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_short_update_adap_block = Pref.bool("Show Short Update Adap Block", show.short_update_adap_block, "Parse and add Short Update Adap Block to protocol tree")
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_adap_block_index = Pref.bool("Show Adap Block Index", show.adap_block_index, "Show generated adap block index in protocol tree")

-- Handle changed preferences
function omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs_changed()

  -- Check if show options have changed
  if show.adap_block ~= omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_adap_block then
    show.adap_block = omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_adap_block
  end
  if show.adap_flags ~= omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_adap_flags then
    show.adap_flags = omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_adap_flags
  end
  if show.application_messages ~= omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_application_messages then
    show.application_messages = omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_application_messages
  end
  if show.long_update_adap_block ~= omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_long_update_adap_block then
    show.long_update_adap_block = omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_long_update_adap_block
  end
  if show.message ~= omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_message then
    show.message = omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_message
  end
  if show.message_header ~= omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_message_header then
    show.message_header = omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_packet then
    show.packet = omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_packet_header then
    show.packet_header = omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_packet_header
  end
  if show.short_update_adap_block ~= omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_short_update_adap_block then
    show.short_update_adap_block = omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_short_update_adap_block
  end
  if show.trade_flags ~= omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_trade_flags then
    show.trade_flags = omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_trade_flags
  end
  if show.message_index ~= omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_message_index then
    show.message_index = omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_message_index
  end
  if show.adap_block_index ~= omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_adap_block_index then
    show.adap_block_index = omi_cboe_byxequities_summarydepth_pitch_v1_0_4.prefs.show_adap_block_index
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
-- Cboe ByxEquities SummaryDepth Pitch 1.0.4 Fields
-----------------------------------------------------------------------

-- Adap Block Size
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block_size = {}

-- Size: Adap Block Size
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block_size.size = 1

-- Display: Adap Block Size
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block_size.display = function(value)
  return "Adap Block Size: "..value
end

-- Dissect: Adap Block Size
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.adap_block_size, range, value, display)

  return offset + length, value
end

-- Adap Blocks
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_blocks = {}

-- Size: Adap Blocks
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_blocks.size = 1

-- Display: Adap Blocks
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_blocks.display = function(value)
  return "Adap Blocks: "..value
end

-- Dissect: Adap Blocks
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_blocks.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.adap_blocks.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.adap_blocks.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.adap_blocks, range, value, display)

  return offset + length, value
end

-- Cboe Cumulative Executed Volume
cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume = {}

-- Size: Cboe Cumulative Executed Volume
cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.size = 8

-- Display: Cboe Cumulative Executed Volume
cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.display = function(value)
  return "Cboe Cumulative Executed Volume: "..value
end

-- Dissect: Cboe Cumulative Executed Volume
cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.cboe_cumulative_executed_volume, range, value, display)

  return offset + length, value
end

-- Count
cboe_byxequities_summarydepth_pitch_v1_0_4.count = {}

-- Size: Count
cboe_byxequities_summarydepth_pitch_v1_0_4.count.size = 1

-- Display: Count
cboe_byxequities_summarydepth_pitch_v1_0_4.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_byxequities_summarydepth_pitch_v1_0_4.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.count, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_byxequities_summarydepth_pitch_v1_0_4.execution_id = {}

-- Size: Execution Id
cboe_byxequities_summarydepth_pitch_v1_0_4.execution_id.size = 8

-- Display: Execution Id
cboe_byxequities_summarydepth_pitch_v1_0_4.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_byxequities_summarydepth_pitch_v1_0_4.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Halt Status
cboe_byxequities_summarydepth_pitch_v1_0_4.halt_status = {}

-- Size: Halt Status
cboe_byxequities_summarydepth_pitch_v1_0_4.halt_status.size = 1

-- Display: Halt Status
cboe_byxequities_summarydepth_pitch_v1_0_4.halt_status.display = function(value)
  return "Halt Status: "..value
end

-- Dissect: Halt Status
cboe_byxequities_summarydepth_pitch_v1_0_4.halt_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.halt_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.halt_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.halt_status, range, value, display)

  return offset + length, value
end

-- Last Price
cboe_byxequities_summarydepth_pitch_v1_0_4.last_price = {}

-- Size: Last Price
cboe_byxequities_summarydepth_pitch_v1_0_4.last_price.size = 8

-- Display: Last Price
cboe_byxequities_summarydepth_pitch_v1_0_4.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
cboe_byxequities_summarydepth_pitch_v1_0_4.last_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Price
cboe_byxequities_summarydepth_pitch_v1_0_4.last_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.last_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_byxequities_summarydepth_pitch_v1_0_4.last_price.translate(raw)
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Quantity
cboe_byxequities_summarydepth_pitch_v1_0_4.last_quantity = {}

-- Size: Last Quantity
cboe_byxequities_summarydepth_pitch_v1_0_4.last_quantity.size = 8

-- Display: Last Quantity
cboe_byxequities_summarydepth_pitch_v1_0_4.last_quantity.display = function(value)
  return "Last Quantity: "..value
end

-- Dissect: Last Quantity
cboe_byxequities_summarydepth_pitch_v1_0_4.last_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.last_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.last_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.last_quantity, range, value, display)

  return offset + length, value
end

-- Last Update Timestamp
cboe_byxequities_summarydepth_pitch_v1_0_4.last_update_timestamp = {}

-- Size: Last Update Timestamp
cboe_byxequities_summarydepth_pitch_v1_0_4.last_update_timestamp.size = 8

-- Display: Last Update Timestamp
cboe_byxequities_summarydepth_pitch_v1_0_4.last_update_timestamp.display = function(value)
  return "Last Update Timestamp: "..value
end

-- Dissect: Last Update Timestamp
cboe_byxequities_summarydepth_pitch_v1_0_4.last_update_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.last_update_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.last_update_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.last_update_timestamp, range, value, display)

  return offset + length, value
end

-- Length
cboe_byxequities_summarydepth_pitch_v1_0_4.length = {}

-- Size: Length
cboe_byxequities_summarydepth_pitch_v1_0_4.length.size = 2

-- Display: Length
cboe_byxequities_summarydepth_pitch_v1_0_4.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_byxequities_summarydepth_pitch_v1_0_4.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.length, range, value, display)

  return offset + length, value
end

-- Market Status
cboe_byxequities_summarydepth_pitch_v1_0_4.market_status = {}

-- Size: Market Status
cboe_byxequities_summarydepth_pitch_v1_0_4.market_status.size = 1

-- Display: Market Status
cboe_byxequities_summarydepth_pitch_v1_0_4.market_status.display = function(value)
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
cboe_byxequities_summarydepth_pitch_v1_0_4.market_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.market_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.market_status, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_byxequities_summarydepth_pitch_v1_0_4.message_length = {}

-- Size: Message Length
cboe_byxequities_summarydepth_pitch_v1_0_4.message_length.size = 1

-- Display: Message Length
cboe_byxequities_summarydepth_pitch_v1_0_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_byxequities_summarydepth_pitch_v1_0_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_byxequities_summarydepth_pitch_v1_0_4.message_type = {}

-- Size: Message Type
cboe_byxequities_summarydepth_pitch_v1_0_4.message_type.size = 1

-- Display: Message Type
cboe_byxequities_summarydepth_pitch_v1_0_4.message_type.display = function(value)
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
cboe_byxequities_summarydepth_pitch_v1_0_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Price
cboe_byxequities_summarydepth_pitch_v1_0_4.price = {}

-- Size: Price
cboe_byxequities_summarydepth_pitch_v1_0_4.price.size = 4

-- Display: Price
cboe_byxequities_summarydepth_pitch_v1_0_4.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_byxequities_summarydepth_pitch_v1_0_4.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
cboe_byxequities_summarydepth_pitch_v1_0_4.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_byxequities_summarydepth_pitch_v1_0_4.price.translate(raw)
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
cboe_byxequities_summarydepth_pitch_v1_0_4.quantity = {}

-- Size: Quantity
cboe_byxequities_summarydepth_pitch_v1_0_4.quantity.size = 4

-- Display: Quantity
cboe_byxequities_summarydepth_pitch_v1_0_4.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_byxequities_summarydepth_pitch_v1_0_4.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
cboe_byxequities_summarydepth_pitch_v1_0_4.reg_sho_action = {}

-- Size: Reg Sho Action
cboe_byxequities_summarydepth_pitch_v1_0_4.reg_sho_action.size = 1

-- Display: Reg Sho Action
cboe_byxequities_summarydepth_pitch_v1_0_4.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_byxequities_summarydepth_pitch_v1_0_4.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reserved Alphanumeric 1
cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1 = {}

-- Size: Reserved Alphanumeric 1
cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size = 1

-- Display: Reserved Alphanumeric 1
cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.display = function(value)
  return "Reserved Alphanumeric 1: "..value
end

-- Dissect: Reserved Alphanumeric 1
cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.reserved_alphanumeric_1, range, value, display)

  return offset + length, value
end

-- Reserved Binary 8
cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_binary_8 = {}

-- Size: Reserved Binary 8
cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_binary_8.size = 8

-- Display: Reserved Binary 8
cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_binary_8.display = function(value)
  return "Reserved Binary 8: "..value
end

-- Dissect: Reserved Binary 8
cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_binary_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_binary_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_binary_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.reserved_binary_8, range, value, display)

  return offset + length, value
end

-- Retail Price Improvement
cboe_byxequities_summarydepth_pitch_v1_0_4.retail_price_improvement = {}

-- Size: Retail Price Improvement
cboe_byxequities_summarydepth_pitch_v1_0_4.retail_price_improvement.size = 1

-- Display: Retail Price Improvement
cboe_byxequities_summarydepth_pitch_v1_0_4.retail_price_improvement.display = function(value)
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
cboe_byxequities_summarydepth_pitch_v1_0_4.retail_price_improvement.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.retail_price_improvement.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.retail_price_improvement.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.retail_price_improvement, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_byxequities_summarydepth_pitch_v1_0_4.sequence = {}

-- Size: Sequence
cboe_byxequities_summarydepth_pitch_v1_0_4.sequence.size = 4

-- Display: Sequence
cboe_byxequities_summarydepth_pitch_v1_0_4.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_byxequities_summarydepth_pitch_v1_0_4.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Indicator
cboe_byxequities_summarydepth_pitch_v1_0_4.session_indicator = {}

-- Size: Session Indicator
cboe_byxequities_summarydepth_pitch_v1_0_4.session_indicator.size = 1

-- Display: Session Indicator
cboe_byxequities_summarydepth_pitch_v1_0_4.session_indicator.display = function(value)
  if value == "R" then
    return "Session Indicator: Regular Trading Session (R)"
  end
  if value == "P" then
    return "Session Indicator: Pre Or Post Market Session (P)"
  end

  return "Session Indicator: Unknown("..value..")"
end

-- Dissect: Session Indicator
cboe_byxequities_summarydepth_pitch_v1_0_4.session_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.session_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.session_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.session_indicator, range, value, display)

  return offset + length, value
end

-- Side
cboe_byxequities_summarydepth_pitch_v1_0_4.side = {}

-- Size: Side
cboe_byxequities_summarydepth_pitch_v1_0_4.side.size = 1

-- Display: Side
cboe_byxequities_summarydepth_pitch_v1_0_4.side.display = function(value)
  return "Side: "..value
end

-- Dissect: Side
cboe_byxequities_summarydepth_pitch_v1_0_4.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.side, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_byxequities_summarydepth_pitch_v1_0_4.symbol = {}

-- Size: Symbol
cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.size = 8

-- Display: Symbol
cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_byxequities_summarydepth_pitch_v1_0_4.timestamp = {}

-- Size: Timestamp
cboe_byxequities_summarydepth_pitch_v1_0_4.timestamp.size = 8

-- Display: Timestamp
cboe_byxequities_summarydepth_pitch_v1_0_4.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_byxequities_summarydepth_pitch_v1_0_4.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Break Flags
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_flags = {}

-- Size: Trade Break Flags
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_flags.size = 1

-- Display: Trade Break Flags
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_flags.display = function(value)
  return "Trade Break Flags: "..value
end

-- Dissect: Trade Break Flags
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_flags.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_flags.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.trade_break_flags, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_byxequities_summarydepth_pitch_v1_0_4.transaction_time = {}

-- Size: Transaction Time
cboe_byxequities_summarydepth_pitch_v1_0_4.transaction_time.size = 8

-- Display: Transaction Time
cboe_byxequities_summarydepth_pitch_v1_0_4.transaction_time.display = function(value)
  return "Transaction Time: "..value
end

-- Dissect: Transaction Time
cboe_byxequities_summarydepth_pitch_v1_0_4.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Unit
cboe_byxequities_summarydepth_pitch_v1_0_4.unit = {}

-- Size: Unit
cboe_byxequities_summarydepth_pitch_v1_0_4.unit.size = 1

-- Display: Unit
cboe_byxequities_summarydepth_pitch_v1_0_4.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_byxequities_summarydepth_pitch_v1_0_4.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_byxequities_summarydepth_pitch_v1_0_4.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.unit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe ByxEquities SummaryDepth Pitch 1.0.4
-----------------------------------------------------------------------

-- Trading Status Message
cboe_byxequities_summarydepth_pitch_v1_0_4.trading_status_message = {}

-- Size: Trading Status Message
cboe_byxequities_summarydepth_pitch_v1_0_4.trading_status_message.size =
  cboe_byxequities_summarydepth_pitch_v1_0_4.timestamp.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.halt_status.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.reg_sho_action.size

-- Display: Trading Status Message
cboe_byxequities_summarydepth_pitch_v1_0_4.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_byxequities_summarydepth_pitch_v1_0_4.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_byxequities_summarydepth_pitch_v1_0_4.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.dissect(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: Alphanumeric
  index, reserved_alphanumeric_1 = cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect(buffer, index, packet, parent)

  -- Halt Status: Alphanumeric
  index, halt_status = cboe_byxequities_summarydepth_pitch_v1_0_4.halt_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = cboe_byxequities_summarydepth_pitch_v1_0_4.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_byxequities_summarydepth_pitch_v1_0_4.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_byxequities_summarydepth_pitch_v1_0_4.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_summarydepth_pitch_v1_0_4.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_summarydepth_pitch_v1_0_4.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_message = {}

-- Size: Trade Break Message
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_message.size =
  cboe_byxequities_summarydepth_pitch_v1_0_4.transaction_time.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.execution_id.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_binary_8.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_flags.size

-- Display: Trade Break Message
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: Binary
  index, transaction_time = cboe_byxequities_summarydepth_pitch_v1_0_4.transaction_time.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.dissect(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: Alphanumeric
  index, reserved_alphanumeric_1 = cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_byxequities_summarydepth_pitch_v1_0_4.execution_id.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume: Binary
  index, cboe_cumulative_executed_volume = cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.dissect(buffer, index, packet, parent)

  -- Reserved Binary 8: Binary
  index, reserved_binary_8 = cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_binary_8.dissect(buffer, index, packet, parent)

  -- Trade Break Flags: Binary
  index, trade_break_flags = cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_flags = {}

-- Size: Trade Flags
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_flags.size = 1

-- Display: Trade Flags
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Unused flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Unused"
  end
  -- Is Lastsale Eligible flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Lastsale Eligible"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Flags
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_flags.bits = function(range, value, packet, parent)

  -- Unused: 1 Bit
  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.unused, range, value)

  -- Lastsale Eligible: 1 Bit
  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.lastsale_eligible, range, value)

  -- Reserved Trade Flags: 6 Bit
  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.reserved_trade_flags, range, value)
end

-- Dissect: Trade Flags
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_byxequities_summarydepth_pitch_v1_0_4.trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.trade_flags, range, display)

  if show.trade_flags then
    cboe_byxequities_summarydepth_pitch_v1_0_4.trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Message
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_message = {}

-- Size: Trade Message
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_message.size =
  cboe_byxequities_summarydepth_pitch_v1_0_4.transaction_time.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.execution_id.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.last_price.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.last_quantity.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_binary_8.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.trade_flags.size

-- Display: Trade Message
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: Binary
  index, transaction_time = cboe_byxequities_summarydepth_pitch_v1_0_4.transaction_time.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.dissect(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: Alphanumeric
  index, reserved_alphanumeric_1 = cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_byxequities_summarydepth_pitch_v1_0_4.execution_id.dissect(buffer, index, packet, parent)

  -- Last Price: Binary 8.4 Price
  index, last_price = cboe_byxequities_summarydepth_pitch_v1_0_4.last_price.dissect(buffer, index, packet, parent)

  -- Last Quantity: Binary
  index, last_quantity = cboe_byxequities_summarydepth_pitch_v1_0_4.last_quantity.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume: Binary
  index, cboe_cumulative_executed_volume = cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_cumulative_executed_volume.dissect(buffer, index, packet, parent)

  -- Reserved Binary 8: Binary
  index, reserved_binary_8 = cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_binary_8.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 3 fields
  index, trade_flags = cboe_byxequities_summarydepth_pitch_v1_0_4.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
cboe_byxequities_summarydepth_pitch_v1_0_4.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.trade_message, buffer(offset, 0))
    local index = cboe_byxequities_summarydepth_pitch_v1_0_4.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_summarydepth_pitch_v1_0_4.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_summarydepth_pitch_v1_0_4.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Rpi Message
cboe_byxequities_summarydepth_pitch_v1_0_4.rpi_message = {}

-- Size: Rpi Message
cboe_byxequities_summarydepth_pitch_v1_0_4.rpi_message.size =
  cboe_byxequities_summarydepth_pitch_v1_0_4.timestamp.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.retail_price_improvement.size

-- Display: Rpi Message
cboe_byxequities_summarydepth_pitch_v1_0_4.rpi_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rpi Message
cboe_byxequities_summarydepth_pitch_v1_0_4.rpi_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_byxequities_summarydepth_pitch_v1_0_4.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.dissect(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: Alphanumeric
  index, reserved_alphanumeric_1 = cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect(buffer, index, packet, parent)

  -- Retail Price Improvement: Alphanumeric
  index, retail_price_improvement = cboe_byxequities_summarydepth_pitch_v1_0_4.retail_price_improvement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rpi Message
cboe_byxequities_summarydepth_pitch_v1_0_4.rpi_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.rpi_message, buffer(offset, 0))
    local index = cboe_byxequities_summarydepth_pitch_v1_0_4.rpi_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_summarydepth_pitch_v1_0_4.rpi_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_summarydepth_pitch_v1_0_4.rpi_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Update Adap Block
cboe_byxequities_summarydepth_pitch_v1_0_4.long_update_adap_block = {}

-- Size: Long Update Adap Block
cboe_byxequities_summarydepth_pitch_v1_0_4.long_update_adap_block.size =
  cboe_byxequities_summarydepth_pitch_v1_0_4.side.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.price.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.quantity.size

-- Display: Long Update Adap Block
cboe_byxequities_summarydepth_pitch_v1_0_4.long_update_adap_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Update Adap Block
cboe_byxequities_summarydepth_pitch_v1_0_4.long_update_adap_block.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: Alphanumeric
  index, side = cboe_byxequities_summarydepth_pitch_v1_0_4.side.dissect(buffer, index, packet, parent)

  -- Price: Binary 4.4 Price
  index, price = cboe_byxequities_summarydepth_pitch_v1_0_4.price.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_byxequities_summarydepth_pitch_v1_0_4.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Update Adap Block
cboe_byxequities_summarydepth_pitch_v1_0_4.long_update_adap_block.dissect = function(buffer, offset, packet, parent)
  if show.long_update_adap_block then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.long_update_adap_block, buffer(offset, 0))
    local index = cboe_byxequities_summarydepth_pitch_v1_0_4.long_update_adap_block.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_summarydepth_pitch_v1_0_4.long_update_adap_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_summarydepth_pitch_v1_0_4.long_update_adap_block.fields(buffer, offset, packet, parent)
  end
end

-- Short Update Adap Block
cboe_byxequities_summarydepth_pitch_v1_0_4.short_update_adap_block = {}

-- Size: Short Update Adap Block
cboe_byxequities_summarydepth_pitch_v1_0_4.short_update_adap_block.size =
  cboe_byxequities_summarydepth_pitch_v1_0_4.side.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.price.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.quantity.size

-- Display: Short Update Adap Block
cboe_byxequities_summarydepth_pitch_v1_0_4.short_update_adap_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Update Adap Block
cboe_byxequities_summarydepth_pitch_v1_0_4.short_update_adap_block.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: Alphanumeric
  index, side = cboe_byxequities_summarydepth_pitch_v1_0_4.side.dissect(buffer, index, packet, parent)

  -- Price: Binary 4.4 Price
  index, price = cboe_byxequities_summarydepth_pitch_v1_0_4.price.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_byxequities_summarydepth_pitch_v1_0_4.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Update Adap Block
cboe_byxequities_summarydepth_pitch_v1_0_4.short_update_adap_block.dissect = function(buffer, offset, packet, parent)
  if show.short_update_adap_block then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.short_update_adap_block, buffer(offset, 0))
    local index = cboe_byxequities_summarydepth_pitch_v1_0_4.short_update_adap_block.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_summarydepth_pitch_v1_0_4.short_update_adap_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_summarydepth_pitch_v1_0_4.short_update_adap_block.fields(buffer, offset, packet, parent)
  end
end

-- Adap Update
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_update = {}

-- Dissect: Adap Update
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_update.dissect = function(buffer, offset, packet, parent, adap_block_size)
  -- Dissect Short Update Adap Block
  if adap_block_size == 10 then
    return cboe_byxequities_summarydepth_pitch_v1_0_4.short_update_adap_block.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Update Adap Block
  if adap_block_size == 18 then
    return cboe_byxequities_summarydepth_pitch_v1_0_4.long_update_adap_block.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Adap Block
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block = {}

-- Calculate size of: Adap Block
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block.size = function(buffer, offset)
  local index = 0

  index = index + cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block_size.size

  -- Calculate runtime size of Adap Update field
  local adap_update_offset = offset + index
  local adap_update_type = buffer(adap_update_offset - 1, 1):le_uint()
  index = index + cboe_byxequities_summarydepth_pitch_v1_0_4.adap_update.size(buffer, adap_update_offset, adap_update_type)

  return index
end

-- Display: Adap Block
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Adap Block
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block.fields = function(buffer, offset, packet, parent, adap_block_index)
  local index = offset

  -- Implicit Adap Block Index
  if adap_block_index ~= nil and show.adap_block_index then
    local iteration = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.adap_block_index, adap_block_index)
    iteration:set_generated()
  end

  -- Adap Block Size: Binary
  index, adap_block_size = cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block_size.dissect(buffer, index, packet, parent)

  -- Adap Update: Runtime Type with 2 branches
  index = cboe_byxequities_summarydepth_pitch_v1_0_4.adap_update.dissect(buffer, index, packet, parent, adap_block_size)

  return index
end

-- Dissect: Adap Block
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block.dissect = function(buffer, offset, packet, parent, adap_block_index)
  if show.adap_block then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.adap_block, buffer(offset, 0))
    local index = cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block.fields(buffer, offset, packet, parent, adap_block_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block.fields(buffer, offset, packet, parent, adap_block_index)
  end
end

-- Adap Flags
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_flags = {}

-- Size: Adap Flags
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_flags.size = 1

-- Display: Adap Flags
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Clear flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Clear"
  end
  -- Is Complete flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Complete"
  end
  -- Is Block Type flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Block Type"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Adap Flags
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_flags.bits = function(range, value, packet, parent)

  -- Clear: 1 Bit
  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.clear, range, value)

  -- Complete: 1 Bit
  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.complete, range, value)

  -- Block Type: 1 Bit
  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.block_type, range, value)

  -- Adap Reserved Flags: 5 Bit
  parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.adap_reserved_flags, range, value)
end

-- Dissect: Adap Flags
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_byxequities_summarydepth_pitch_v1_0_4.adap_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_byxequities_summarydepth_pitch_v1_0_4.adap_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.adap_flags, range, display)

  if show.adap_flags then
    cboe_byxequities_summarydepth_pitch_v1_0_4.adap_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Adap Message
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_message = {}

-- Calculate size of: Adap Message
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_byxequities_summarydepth_pitch_v1_0_4.last_update_timestamp.size

  index = index + cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.size

  index = index + cboe_byxequities_summarydepth_pitch_v1_0_4.adap_flags.size

  index = index + cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size

  index = index + cboe_byxequities_summarydepth_pitch_v1_0_4.adap_blocks.size

  -- Calculate field size from count
  local adap_block_count = buffer(offset + index - 1, 1):le_uint()
  for i = 1, adap_block_count do
    index = index + cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block.size(buffer, offset + index)
  end
  return index
end

-- Display: Adap Message
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Adap Message
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_byxequities_summarydepth_pitch_v1_0_4.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.dissect(buffer, index, packet, parent)

  -- Adap Flags: Struct of 4 fields
  index, adap_flags = cboe_byxequities_summarydepth_pitch_v1_0_4.adap_flags.dissect(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: Alphanumeric
  index, reserved_alphanumeric_1 = cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect(buffer, index, packet, parent)

  -- Adap Blocks: Binary
  index, adap_blocks = cboe_byxequities_summarydepth_pitch_v1_0_4.adap_blocks.dissect(buffer, index, packet, parent)

  -- Repeating: Adap Block
  for adap_block_index = 1, adap_blocks do
    index, adap_block = cboe_byxequities_summarydepth_pitch_v1_0_4.adap_block.dissect(buffer, index, packet, parent, adap_block_index)
  end

  return index
end

-- Dissect: Adap Message
cboe_byxequities_summarydepth_pitch_v1_0_4.adap_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.adap_message, buffer(offset, 0))
    local index = cboe_byxequities_summarydepth_pitch_v1_0_4.adap_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_summarydepth_pitch_v1_0_4.adap_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_summarydepth_pitch_v1_0_4.adap_message.fields(buffer, offset, packet, parent)
  end
end

-- Cboe Market Status Message
cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_market_status_message = {}

-- Size: Cboe Market Status Message
cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_market_status_message.size =
  cboe_byxequities_summarydepth_pitch_v1_0_4.timestamp.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.market_status.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.session_indicator.size

-- Display: Cboe Market Status Message
cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cboe Market Status Message
cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_byxequities_summarydepth_pitch_v1_0_4.timestamp.dissect(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: Alphanumeric
  index, reserved_alphanumeric_1 = cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect(buffer, index, packet, parent)

  -- Market Status: Alphanumeric
  index, market_status = cboe_byxequities_summarydepth_pitch_v1_0_4.market_status.dissect(buffer, index, packet, parent)

  -- Session Indicator: Alphanumeric
  index, session_indicator = cboe_byxequities_summarydepth_pitch_v1_0_4.session_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cboe Market Status Message
cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.cboe_market_status_message, buffer(offset, 0))
    local index = cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Clear Quote Message
cboe_byxequities_summarydepth_pitch_v1_0_4.clear_quote_message = {}

-- Size: Clear Quote Message
cboe_byxequities_summarydepth_pitch_v1_0_4.clear_quote_message.size =
  cboe_byxequities_summarydepth_pitch_v1_0_4.last_update_timestamp.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.size

-- Display: Clear Quote Message
cboe_byxequities_summarydepth_pitch_v1_0_4.clear_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clear Quote Message
cboe_byxequities_summarydepth_pitch_v1_0_4.clear_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_byxequities_summarydepth_pitch_v1_0_4.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_byxequities_summarydepth_pitch_v1_0_4.symbol.dissect(buffer, index, packet, parent)

  -- Reserved Alphanumeric 1: Alphanumeric
  index, reserved_alphanumeric_1 = cboe_byxequities_summarydepth_pitch_v1_0_4.reserved_alphanumeric_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Quote Message
cboe_byxequities_summarydepth_pitch_v1_0_4.clear_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.clear_quote_message, buffer(offset, 0))
    local index = cboe_byxequities_summarydepth_pitch_v1_0_4.clear_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_summarydepth_pitch_v1_0_4.clear_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_summarydepth_pitch_v1_0_4.clear_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_byxequities_summarydepth_pitch_v1_0_4.payload = {}

-- Dissect: Payload
cboe_byxequities_summarydepth_pitch_v1_0_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Clear Quote Message
  if message_type == 0xA2 then
    return cboe_byxequities_summarydepth_pitch_v1_0_4.clear_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cboe Market Status Message
  if message_type == 0xA6 then
    return cboe_byxequities_summarydepth_pitch_v1_0_4.cboe_market_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Adap Message
  if message_type == 0xA7 then
    return cboe_byxequities_summarydepth_pitch_v1_0_4.adap_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rpi Message
  if message_type == 0xA8 then
    return cboe_byxequities_summarydepth_pitch_v1_0_4.rpi_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0xA9 then
    return cboe_byxequities_summarydepth_pitch_v1_0_4.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0xAA then
    return cboe_byxequities_summarydepth_pitch_v1_0_4.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0xAB then
    return cboe_byxequities_summarydepth_pitch_v1_0_4.trading_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_byxequities_summarydepth_pitch_v1_0_4.message_header = {}

-- Size: Message Header
cboe_byxequities_summarydepth_pitch_v1_0_4.message_header.size =
  cboe_byxequities_summarydepth_pitch_v1_0_4.message_length.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.message_type.size

-- Display: Message Header
cboe_byxequities_summarydepth_pitch_v1_0_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_byxequities_summarydepth_pitch_v1_0_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_byxequities_summarydepth_pitch_v1_0_4.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, message_type = cboe_byxequities_summarydepth_pitch_v1_0_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_byxequities_summarydepth_pitch_v1_0_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.message_header, buffer(offset, 0))
    local index = cboe_byxequities_summarydepth_pitch_v1_0_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_summarydepth_pitch_v1_0_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_summarydepth_pitch_v1_0_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_byxequities_summarydepth_pitch_v1_0_4.message = {}

-- Display: Message
cboe_byxequities_summarydepth_pitch_v1_0_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_byxequities_summarydepth_pitch_v1_0_4.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_byxequities_summarydepth_pitch_v1_0_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 7 branches
  index = cboe_byxequities_summarydepth_pitch_v1_0_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_byxequities_summarydepth_pitch_v1_0_4.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.message, buffer(offset, 0))
    local current = cboe_byxequities_summarydepth_pitch_v1_0_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_byxequities_summarydepth_pitch_v1_0_4.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_byxequities_summarydepth_pitch_v1_0_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_byxequities_summarydepth_pitch_v1_0_4.packet_header = {}

-- Size: Packet Header
cboe_byxequities_summarydepth_pitch_v1_0_4.packet_header.size =
  cboe_byxequities_summarydepth_pitch_v1_0_4.length.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.count.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.unit.size + 
  cboe_byxequities_summarydepth_pitch_v1_0_4.sequence.size

-- Display: Packet Header
cboe_byxequities_summarydepth_pitch_v1_0_4.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_byxequities_summarydepth_pitch_v1_0_4.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_byxequities_summarydepth_pitch_v1_0_4.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_byxequities_summarydepth_pitch_v1_0_4.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_byxequities_summarydepth_pitch_v1_0_4.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_byxequities_summarydepth_pitch_v1_0_4.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_byxequities_summarydepth_pitch_v1_0_4.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4.fields.packet_header, buffer(offset, 0))
    local index = cboe_byxequities_summarydepth_pitch_v1_0_4.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_byxequities_summarydepth_pitch_v1_0_4.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_byxequities_summarydepth_pitch_v1_0_4.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_byxequities_summarydepth_pitch_v1_0_4.packet = {}

-- Dissect Packet
cboe_byxequities_summarydepth_pitch_v1_0_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_byxequities_summarydepth_pitch_v1_0_4.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_byxequities_summarydepth_pitch_v1_0_4.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_byxequities_summarydepth_pitch_v1_0_4.init()
end

-- Dissector for Cboe ByxEquities SummaryDepth Pitch 1.0.4
function omi_cboe_byxequities_summarydepth_pitch_v1_0_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_byxequities_summarydepth_pitch_v1_0_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_byxequities_summarydepth_pitch_v1_0_4, buffer(), omi_cboe_byxequities_summarydepth_pitch_v1_0_4.description, "("..buffer:len().." Bytes)")
  return cboe_byxequities_summarydepth_pitch_v1_0_4.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_byxequities_summarydepth_pitch_v1_0_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_byxequities_summarydepth_pitch_v1_0_4.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe ByxEquities SummaryDepth Pitch 1.0.4
local function omi_cboe_byxequities_summarydepth_pitch_v1_0_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_byxequities_summarydepth_pitch_v1_0_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_byxequities_summarydepth_pitch_v1_0_4
  omi_cboe_byxequities_summarydepth_pitch_v1_0_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe ByxEquities SummaryDepth Pitch 1.0.4
omi_cboe_byxequities_summarydepth_pitch_v1_0_4:register_heuristic("udp", omi_cboe_byxequities_summarydepth_pitch_v1_0_4_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
