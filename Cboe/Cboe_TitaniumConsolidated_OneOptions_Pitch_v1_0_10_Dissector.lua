-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe TitaniumConsolidated OneOptions Pitch 1.0.10 Protocol
local omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10 = Proto("Omi.Cboe.TitaniumConsolidated.OneOptions.Pitch.v1.0.10", "Cboe TitaniumConsolidated OneOptions Pitch 1.0.10")

-- Protocol table
local cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe TitaniumConsolidated OneOptions Pitch 1.0.10 Fields
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.cboe_cumulative_executed_volume_long = ProtoField.new("Cboe Cumulative Executed Volume Long", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.cboecumulativeexecutedvolumelong", ftypes.UINT64)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.cboe_cumulative_executed_volume_short = ProtoField.new("Cboe Cumulative Executed Volume Short", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.cboecumulativeexecutedvolumeshort", ftypes.UINT32)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_ask_price_long = ProtoField.new("Consolidated Best Ask Price Long", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.consolidatedbestaskpricelong", ftypes.DOUBLE)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_ask_price_short = ProtoField.new("Consolidated Best Ask Price Short", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.consolidatedbestaskpriceshort", ftypes.DOUBLE)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_ask_quantity_long = ProtoField.new("Consolidated Best Ask Quantity Long", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.consolidatedbestaskquantitylong", ftypes.UINT64)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_ask_quantity_short = ProtoField.new("Consolidated Best Ask Quantity Short", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.consolidatedbestaskquantityshort", ftypes.UINT32)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_bid_price_long = ProtoField.new("Consolidated Best Bid Price Long", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.consolidatedbestbidpricelong", ftypes.DOUBLE)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_bid_price_short = ProtoField.new("Consolidated Best Bid Price Short", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.consolidatedbestbidpriceshort", ftypes.DOUBLE)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_bid_quantity_long = ProtoField.new("Consolidated Best Bid Quantity Long", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.consolidatedbestbidquantitylong", ftypes.UINT64)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_bid_quantity_short = ProtoField.new("Consolidated Best Bid Quantity Short", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.consolidatedbestbidquantityshort", ftypes.UINT32)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_quote_price = ProtoField.new("Consolidated Best Quote Price", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.consolidatedbestquoteprice", ftypes.DOUBLE)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_quote_quantity = ProtoField.new("Consolidated Quote Quantity", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.consolidatedquotequantity", ftypes.UINT64)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.count = ProtoField.new("Count", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.count", ftypes.UINT8)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.halt_status = ProtoField.new("Halt Status", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.haltstatus", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.last_price = ProtoField.new("Last Price", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.lastprice", ftypes.DOUBLE)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.last_quantity = ProtoField.new("Last Quantity", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.lastquantity", ftypes.UINT64)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.last_update_timestamp = ProtoField.new("Last Update Timestamp", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.lastupdatetimestamp", ftypes.UINT64)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.length = ProtoField.new("Length", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.length", ftypes.UINT16)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.market_center = ProtoField.new("Market Center", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.marketcenter", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.market_center_execution_id = ProtoField.new("Market Center Execution Id", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.marketcenterexecutionid", ftypes.UINT64)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.market_status = ProtoField.new("Market Status", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.marketstatus", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.message = ProtoField.new("Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.message", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.message_header = ProtoField.new("Message Header", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.messageheader", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.message_length = ProtoField.new("Message Length", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.messagelength", ftypes.UINT8)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.message_type = ProtoField.new("Message Type", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.messagetype", ftypes.UINT8)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.packet = ProtoField.new("Packet", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.packet", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.packet_header = ProtoField.new("Packet Header", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.packetheader", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.reserved1", ftypes.UINT8)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.reserved_5 = ProtoField.new("Reserved 5", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.reserved5", ftypes.BYTES)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.reserved_8 = ProtoField.new("Reserved 8", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.reserved8", ftypes.UINT64)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.reserved_9 = ProtoField.new("Reserved 9", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.reserved9", ftypes.BYTES)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.sequence = ProtoField.new("Sequence", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.sequence", ftypes.UINT32)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.sideindicator", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.symbol = ProtoField.new("Symbol", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.symbol", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.timestamp = ProtoField.new("Timestamp", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.timestamp", ftypes.UINT64)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.tradecondition", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.transactiontime", ftypes.UINT64)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.unit = ProtoField.new("Unit", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.unit", ftypes.UINT8)

-- Cboe TitaniumConsolidated Pitch OneOptions 1.0.10 Application Messages
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.best_quote_update_message = ProtoField.new("Best Quote Update Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.bestquoteupdatemessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.cboe_market_status_message = ProtoField.new("Cboe Market Status Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.cboemarketstatusmessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.long_symbol_summary_message = ProtoField.new("Long Symbol Summary Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.longsymbolsummarymessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.short_symbol_summary_message = ProtoField.new("Short Symbol Summary Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.shortsymbolsummarymessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.tradebreakmessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.trade_message = ProtoField.new("Trade Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.trademessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.tradingstatusmessage", ftypes.STRING)

-- Cboe TitaniumConsolidated OneOptions Pitch 1.0.10 generated fields
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.message_index = ProtoField.new("Message Index", "cboe.titaniumconsolidated.oneoptions.pitch.v1.0.10.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe TitaniumConsolidated OneOptions Pitch 1.0.10 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Cboe TitaniumConsolidated OneOptions Pitch 1.0.10 Show Options
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_application_messages then
    show.application_messages = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_application_messages
  end
  if show.message ~= omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_message then
    show.message = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_message
  end
  if show.message_header ~= omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_message_header then
    show.message_header = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_packet then
    show.packet = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_packet_header then
    show.packet_header = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_message_index then
    show.message_index = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.prefs.show_message_index
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
-- Cboe TitaniumConsolidated OneOptions Pitch 1.0.10 Fields
-----------------------------------------------------------------------

-- Cboe Cumulative Executed Volume Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_long = {}

-- Size: Cboe Cumulative Executed Volume Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_long.size = 8

-- Display: Cboe Cumulative Executed Volume Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_long.display = function(value)
  return "Cboe Cumulative Executed Volume Long: "..value
end

-- Dissect: Cboe Cumulative Executed Volume Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_long.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.cboe_cumulative_executed_volume_long, range, value, display)

  return offset + length, value
end

-- Cboe Cumulative Executed Volume Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_short = {}

-- Size: Cboe Cumulative Executed Volume Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_short.size = 4

-- Display: Cboe Cumulative Executed Volume Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_short.display = function(value)
  return "Cboe Cumulative Executed Volume Short: "..value
end

-- Dissect: Cboe Cumulative Executed Volume Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.cboe_cumulative_executed_volume_short, range, value, display)

  return offset + length, value
end

-- Consolidated Best Ask Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_long = {}

-- Size: Consolidated Best Ask Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_long.size = 8

-- Display: Consolidated Best Ask Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_long.display = function(value)
  return "Consolidated Best Ask Price Long: "..value
end

-- Translate: Consolidated Best Ask Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated Best Ask Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_long.translate(raw)
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_ask_price_long, range, value, display)

  return offset + length, value
end

-- Consolidated Best Ask Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_short = {}

-- Size: Consolidated Best Ask Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_short.size = 4

-- Display: Consolidated Best Ask Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_short.display = function(value)
  return "Consolidated Best Ask Price Short: "..value
end

-- Translate: Consolidated Best Ask Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_short.translate = function(raw)
  return raw/10000
end

-- Dissect: Consolidated Best Ask Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_short.translate(raw)
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_ask_price_short, range, value, display)

  return offset + length, value
end

-- Consolidated Best Ask Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_long = {}

-- Size: Consolidated Best Ask Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_long.size = 8

-- Display: Consolidated Best Ask Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_long.display = function(value)
  return "Consolidated Best Ask Quantity Long: "..value
end

-- Dissect: Consolidated Best Ask Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_ask_quantity_long, range, value, display)

  return offset + length, value
end

-- Consolidated Best Ask Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_short = {}

-- Size: Consolidated Best Ask Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_short.size = 4

-- Display: Consolidated Best Ask Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_short.display = function(value)
  return "Consolidated Best Ask Quantity Short: "..value
end

-- Dissect: Consolidated Best Ask Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_ask_quantity_short, range, value, display)

  return offset + length, value
end

-- Consolidated Best Bid Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_long = {}

-- Size: Consolidated Best Bid Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_long.size = 8

-- Display: Consolidated Best Bid Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_long.display = function(value)
  return "Consolidated Best Bid Price Long: "..value
end

-- Translate: Consolidated Best Bid Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated Best Bid Price Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_long.translate(raw)
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_bid_price_long, range, value, display)

  return offset + length, value
end

-- Consolidated Best Bid Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_short = {}

-- Size: Consolidated Best Bid Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_short.size = 4

-- Display: Consolidated Best Bid Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_short.display = function(value)
  return "Consolidated Best Bid Price Short: "..value
end

-- Translate: Consolidated Best Bid Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_short.translate = function(raw)
  return raw/10000
end

-- Dissect: Consolidated Best Bid Price Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_short.translate(raw)
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_bid_price_short, range, value, display)

  return offset + length, value
end

-- Consolidated Best Bid Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_long = {}

-- Size: Consolidated Best Bid Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_long.size = 8

-- Display: Consolidated Best Bid Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_long.display = function(value)
  return "Consolidated Best Bid Quantity Long: "..value
end

-- Dissect: Consolidated Best Bid Quantity Long
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_bid_quantity_long, range, value, display)

  return offset + length, value
end

-- Consolidated Best Bid Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_short = {}

-- Size: Consolidated Best Bid Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_short.size = 4

-- Display: Consolidated Best Bid Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_short.display = function(value)
  return "Consolidated Best Bid Quantity Short: "..value
end

-- Dissect: Consolidated Best Bid Quantity Short
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_bid_quantity_short, range, value, display)

  return offset + length, value
end

-- Consolidated Best Quote Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_quote_price = {}

-- Size: Consolidated Best Quote Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_quote_price.size = 8

-- Display: Consolidated Best Quote Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_quote_price.display = function(value)
  return "Consolidated Best Quote Price: "..value
end

-- Translate: Consolidated Best Quote Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_quote_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated Best Quote Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_quote_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_quote_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_quote_price.translate(raw)
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_quote_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_best_quote_price, range, value, display)

  return offset + length, value
end

-- Consolidated Quote Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_quote_quantity = {}

-- Size: Consolidated Quote Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_quote_quantity.size = 8

-- Display: Consolidated Quote Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_quote_quantity.display = function(value)
  return "Consolidated Quote Quantity: "..value
end

-- Dissect: Consolidated Quote Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_quote_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_quote_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_quote_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.consolidated_quote_quantity, range, value, display)

  return offset + length, value
end

-- Count
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.count = {}

-- Size: Count
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.count.size = 1

-- Display: Count
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.count, range, value, display)

  return offset + length, value
end

-- Halt Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.halt_status = {}

-- Size: Halt Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.halt_status.size = 1

-- Display: Halt Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.halt_status.display = function(value)
  if value == "H" then
    return "Halt Status: Halted (H)"
  end
  if value == "Q" then
    return "Halt Status: Quote Only (Q)"
  end
  if value == "R" then
    return "Halt Status: Opening Rotation (R)"
  end
  if value == "T" then
    return "Halt Status: Trading (T)"
  end

  return "Halt Status: Unknown("..value..")"
end

-- Dissect: Halt Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.halt_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.halt_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.halt_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.halt_status, range, value, display)

  return offset + length, value
end

-- Last Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_price = {}

-- Size: Last Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_price.size = 8

-- Display: Last Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Price
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_price.translate(raw)
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_quantity = {}

-- Size: Last Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_quantity.size = 8

-- Display: Last Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_quantity.display = function(value)
  return "Last Quantity: "..value
end

-- Dissect: Last Quantity
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.last_quantity, range, value, display)

  return offset + length, value
end

-- Last Update Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_update_timestamp = {}

-- Size: Last Update Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_update_timestamp.size = 8

-- Display: Last Update Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_update_timestamp.display = function(value)
  return "Last Update Timestamp: "..value
end

-- Dissect: Last Update Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_update_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_update_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_update_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.last_update_timestamp, range, value, display)

  return offset + length, value
end

-- Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.length = {}

-- Size: Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.length.size = 2

-- Display: Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.length, range, value, display)

  return offset + length, value
end

-- Market Center
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center = {}

-- Size: Market Center
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center.size = 1

-- Display: Market Center
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center.display = function(value)
  if value == "B" then
    return "Market Center: C 1 (B)"
  end
  if value == "W" then
    return "Market Center: C 2 (W)"
  end
  if value == "X" then
    return "Market Center: Edgx (X)"
  end
  if value == "Z" then
    return "Market Center: Bzx (Z)"
  end

  return "Market Center: Unknown("..value..")"
end

-- Dissect: Market Center
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.market_center, range, value, display)

  return offset + length, value
end

-- Market Center Execution Id
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center_execution_id = {}

-- Size: Market Center Execution Id
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center_execution_id.size = 8

-- Display: Market Center Execution Id
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center_execution_id.display = function(value)
  return "Market Center Execution Id: "..value
end

-- Dissect: Market Center Execution Id
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center_execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center_execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center_execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.market_center_execution_id, range, value, display)

  return offset + length, value
end

-- Market Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_status = {}

-- Size: Market Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_status.size = 1

-- Display: Market Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_status.display = function(value)
  if value == "N" then
    return "Market Status: Normal (N)"
  end
  if value == "E" then
    return "Market Status: Excluded From Symbol Summary Updates (E)"
  end
  if value == "I" then
    return "Market Status: Incomplete (I)"
  end

  return "Market Status: Unknown("..value..")"
end

-- Dissect: Market Status
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.market_status, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_length = {}

-- Size: Message Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_length.size = 1

-- Display: Message Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_type = {}

-- Size: Message Type
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_type.size = 1

-- Display: Message Type
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_type.display = function(value)
  if value == 0xA4 then
    return "Message Type: Short Symbol Summary Message (0xA4)"
  end
  if value == 0xA3 then
    return "Message Type: Long Symbol Summary Message (0xA3)"
  end
  if value == 0xA5 then
    return "Message Type: Best Quote Update Message (0xA5)"
  end
  if value == 0xA6 then
    return "Message Type: Cboe Market Status Message (0xA6)"
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
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.message_type, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_1 = {}

-- Size: Reserved 1
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_1.size = 1

-- Display: Reserved 1
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 5
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_5 = {}

-- Size: Reserved 5
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_5.size = 5

-- Display: Reserved 5
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Reserved 8
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_8 = {}

-- Size: Reserved 8
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_8.size = 8

-- Display: Reserved 8
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Reserved 9
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_9 = {}

-- Size: Reserved 9
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_9.size = 9

-- Display: Reserved 9
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_9.display = function(value)
  return "Reserved 9: "..value
end

-- Dissect: Reserved 9
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_9.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_9.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.reserved_9, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.sequence = {}

-- Size: Sequence
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.sequence.size = 4

-- Display: Sequence
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.sequence, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.side_indicator = {}

-- Size: Side Indicator
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.side_indicator.size = 1

-- Display: Side Indicator
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Side (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Side (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol = {}

-- Size: Symbol
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.size = 8

-- Display: Symbol
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.timestamp = {}

-- Size: Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.timestamp.size = 8

-- Display: Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_condition = {}

-- Size: Trade Condition
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_condition.size = 1

-- Display: Trade Condition
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_condition.display = function(value)
  if value == "a" then
    return "Trade Condition: Single Leg Auction Non Iso (a)"
  end
  if value == "b" then
    return "Trade Condition: Single Leg Auction Iso (b)"
  end
  if value == "c" then
    return "Trade Condition: Single Leg Cross Non Iso (c)"
  end
  if value == "d" then
    return "Trade Condition: Single Leg Cross Iso (d)"
  end
  if value == "e" then
    return "Trade Condition: Single Leg Floor Trade (e)"
  end
  if value == "f" then
    return "Trade Condition: Complex To Complex Electronic Trade (f)"
  end
  if value == "g" then
    return "Trade Condition: Complex Auction Trade (g)"
  end
  if value == "h" then
    return "Trade Condition: Complex Cross (h)"
  end
  if value == "i" then
    return "Trade Condition: Complex Floor Trade (i)"
  end
  if value == "j" then
    return "Trade Condition: Complex Electronic Trade Against Single Legs (j)"
  end
  if value == "k" then
    return "Trade Condition: Complex With Stock Options Auction Trade (k)"
  end
  if value == "m" then
    return "Trade Condition: Complex Floor Trade Against Single Legs (m)"
  end
  if value == "n" then
    return "Trade Condition: Complex With Stock Electronic Trade (n)"
  end
  if value == "o" then
    return "Trade Condition: Complex With Stock Cross (o)"
  end
  if value == "p" then
    return "Trade Condition: Complex With Stock Floor Trade (p)"
  end
  if value == "t" then
    return "Trade Condition: Complex Floor Trade Of Proprietary Products Marked As Combo Order (t)"
  end
  if value == "u" then
    return "Trade Condition: Multilateral Compression Trade Of Proprietary Products (u)"
  end
  if value == "v" then
    return "Trade Condition: Extended Hours Trade (v)"
  end
  if value == "l" then
    return "Trade Condition: Electronic Trade (l)"
  end
  if value == "K" then
    return "Trade Condition: Cabinet Order (K)"
  end
  if value == "O" then
    return "Trade Condition: Opening Trade (O)"
  end
  if value == "S" then
    return "Trade Condition: Iso (S)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.transaction_time = {}

-- Size: Transaction Time
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.transaction_time.size = 8

-- Display: Transaction Time
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.transaction_time.display = function(value)
  return "Transaction Time: "..value
end

-- Dissect: Transaction Time
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Unit
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.unit = {}

-- Size: Unit
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.unit.size = 1

-- Display: Unit
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.unit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe TitaniumConsolidated OneOptions Pitch 1.0.10
-----------------------------------------------------------------------

-- Trading Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trading_status_message = {}

-- Size: Trading Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trading_status_message.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.timestamp.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.halt_status.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_1.size

-- Display: Trading Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center.dissect(buffer, index, packet, parent)

  -- Halt Status: Alphanumeric
  index, halt_status = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.halt_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_break_message = {}

-- Size: Trade Break Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_break_message.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.transaction_time.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center_execution_id.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_long.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_9.size

-- Display: Trade Break Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: Binary
  index, transaction_time = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center.dissect(buffer, index, packet, parent)

  -- Market Center Execution Id: Binary
  index, market_center_execution_id = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center_execution_id.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume Long: Binary
  index, cboe_cumulative_executed_volume_long = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_long.dissect(buffer, index, packet, parent)

  -- Reserved 9: Binary
  index, reserved_9 = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_9.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_message = {}

-- Size: Trade Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_message.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.transaction_time.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center_execution_id.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_price.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_quantity.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_long.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_condition.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_8.size

-- Display: Trade Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: Binary
  index, transaction_time = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.transaction_time.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center.dissect(buffer, index, packet, parent)

  -- Market Center Execution Id: Binary
  index, market_center_execution_id = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center_execution_id.dissect(buffer, index, packet, parent)

  -- Last Price: Binary 8.4 Price
  index, last_price = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_price.dissect(buffer, index, packet, parent)

  -- Last Quantity: Binary
  index, last_quantity = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_quantity.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume Long: Binary
  index, cboe_cumulative_executed_volume_long = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_long.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_condition.dissect(buffer, index, packet, parent)

  -- Reserved 8: Binary
  index, reserved_8 = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.trade_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Cboe Market Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_market_status_message = {}

-- Size: Cboe Market Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_market_status_message.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.timestamp.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_status.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_1.size

-- Display: Cboe Market Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cboe Market Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.timestamp.dissect(buffer, index, packet, parent)

  -- Market Center: Alphanumeric
  index, market_center = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_center.dissect(buffer, index, packet, parent)

  -- Market Status: Alphanumeric
  index, market_status = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.market_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cboe Market Status Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.cboe_market_status_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Quote Update Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.best_quote_update_message = {}

-- Size: Best Quote Update Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.best_quote_update_message.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_update_timestamp.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.side_indicator.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_quote_price.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_quote_quantity.size

-- Display: Best Quote Update Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.best_quote_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Quote Update Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.best_quote_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.side_indicator.dissect(buffer, index, packet, parent)

  -- Consolidated Best Quote Price: Binary 8.4 Price
  index, consolidated_best_quote_price = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_quote_price.dissect(buffer, index, packet, parent)

  -- Consolidated Quote Quantity: Binary
  index, consolidated_quote_quantity = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_quote_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Quote Update Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.best_quote_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.best_quote_update_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.best_quote_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.best_quote_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.best_quote_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.long_symbol_summary_message = {}

-- Size: Long Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.long_symbol_summary_message.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_update_timestamp.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_long.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_long.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_long.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_long.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_long.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_9.size

-- Display: Long Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.long_symbol_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.long_symbol_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume Long: Binary
  index, cboe_cumulative_executed_volume_long = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_long.dissect(buffer, index, packet, parent)

  -- Consolidated Best Bid Price Long: Binary 8.4 Price
  index, consolidated_best_bid_price_long = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_long.dissect(buffer, index, packet, parent)

  -- Consolidated Best Bid Quantity Long: Binary
  index, consolidated_best_bid_quantity_long = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Consolidated Best Ask Price Long: Binary 8.4 Price
  index, consolidated_best_ask_price_long = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_long.dissect(buffer, index, packet, parent)

  -- Consolidated Best Ask Quantity Long: Binary
  index, consolidated_best_ask_quantity_long = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_long.dissect(buffer, index, packet, parent)

  -- Reserved 9: Binary
  index, reserved_9 = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_9.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.long_symbol_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.long_symbol_summary_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.long_symbol_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.long_symbol_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.long_symbol_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.short_symbol_summary_message = {}

-- Size: Short Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.short_symbol_summary_message.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_update_timestamp.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_short.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_short.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_short.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_short.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_short.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_5.size

-- Display: Short Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.short_symbol_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.short_symbol_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Timestamp: Binary
  index, last_update_timestamp = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.last_update_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.symbol.dissect(buffer, index, packet, parent)

  -- Cboe Cumulative Executed Volume Short: Binary
  index, cboe_cumulative_executed_volume_short = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_cumulative_executed_volume_short.dissect(buffer, index, packet, parent)

  -- Consolidated Best Bid Price Short: Binary 4.4 Price
  index, consolidated_best_bid_price_short = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_price_short.dissect(buffer, index, packet, parent)

  -- Consolidated Best Bid Quantity Short: Binary
  index, consolidated_best_bid_quantity_short = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_bid_quantity_short.dissect(buffer, index, packet, parent)

  -- Consolidated Best Ask Price Short: Binary 4.4 Price
  index, consolidated_best_ask_price_short = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_price_short.dissect(buffer, index, packet, parent)

  -- Consolidated Best Ask Quantity Short: Binary
  index, consolidated_best_ask_quantity_short = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.consolidated_best_ask_quantity_short.dissect(buffer, index, packet, parent)

  -- Reserved 5: Binary
  index, reserved_5 = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.reserved_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Symbol Summary Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.short_symbol_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.short_symbol_summary_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.short_symbol_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.short_symbol_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.short_symbol_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.payload = {}

-- Dissect: Payload
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Short Symbol Summary Message
  if message_type == 0xA4 then
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.short_symbol_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Symbol Summary Message
  if message_type == 0xA3 then
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.long_symbol_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Quote Update Message
  if message_type == 0xA5 then
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.best_quote_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cboe Market Status Message
  if message_type == 0xA6 then
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.cboe_market_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0xA9 then
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0xAA then
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0xAB then
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.trading_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_header = {}

-- Size: Message Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_header.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_length.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_type.size

-- Display: Message Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, message_type = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.message_header, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message = {}

-- Read runtime size of: Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 7 branches
  index = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.message, buffer(offset, 0))
    local current = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.messages = {}

-- Dissect: Messages
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.packet_header = {}

-- Size: Packet Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.packet_header.size =
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.length.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.count.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.unit.size + 
  cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.sequence.size

-- Display: Packet Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.fields.packet_header, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.packet = {}

-- Verify required size of Udp packet
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.packet_header.size
end

-- Dissect Packet
cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.init()
end

-- Dissector for Cboe TitaniumConsolidated OneOptions Pitch 1.0.10
function omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10, buffer(), omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.description, "("..buffer:len().." Bytes)")
  return cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe TitaniumConsolidated OneOptions Pitch 1.0.10 (Udp)
local function omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10
  omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe TitaniumConsolidated OneOptions Pitch 1.0.10
omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10:register_heuristic("udp", omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10_udp_heuristic)

-- Register Cboe TitaniumConsolidated OneOptions Pitch 1.0.10 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_titaniumconsolidated_oneoptions_pitch_v1_0_10)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.10
--   Date: Wednesday, April 1, 2026
--   Specification: Cboe_Options_One_Feed_Specification.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
