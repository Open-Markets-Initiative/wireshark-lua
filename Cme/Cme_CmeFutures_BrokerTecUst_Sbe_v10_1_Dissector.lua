-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme CmeFutures BrokerTecUst Sbe 10.1 Protocol
local omi_cme_cmefutures_brokertecust_sbe_v10_1 = Proto("Cme.CmeFutures.BrokerTecUst.Sbe.v10.1.Lua", "Cme CmeFutures BrokerTecUst Sbe 10.1")

-- Protocol table
local cme_cmefutures_brokertecust_sbe_v10_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme CmeFutures BrokerTecUst Sbe 10.1 Fields
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.cmefutures.brokertecust.sbe.v10.1.binarypacketheader", ftypes.STRING)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.block_length = ProtoField.new("Block Length", "cme.cmefutures.brokertecust.sbe.v10.1.blocklength", ftypes.UINT16)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.coupon_rate = ProtoField.new("Coupon Rate", "cme.cmefutures.brokertecust.sbe.v10.1.couponrate", ftypes.STRING)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.exponent = ProtoField.new("Exponent", "cme.cmefutures.brokertecust.sbe.v10.1.exponent", ftypes.INT8)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.group_size = ProtoField.new("Group Size", "cme.cmefutures.brokertecust.sbe.v10.1.groupsize", ftypes.STRING)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.incremental_refresh_btec_group = ProtoField.new("Incremental Refresh Btec Group", "cme.cmefutures.brokertecust.sbe.v10.1.incrementalrefreshbtecgroup", ftypes.STRING)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.incremental_refresh_btec_groups = ProtoField.new("Incremental Refresh Btec Groups", "cme.cmefutures.brokertecust.sbe.v10.1.incrementalrefreshbtecgroups", ftypes.STRING)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.mantissa = ProtoField.new("Mantissa", "cme.cmefutures.brokertecust.sbe.v10.1.mantissa", ftypes.INT64)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.mantissa_32 = ProtoField.new("Mantissa 32", "cme.cmefutures.brokertecust.sbe.v10.1.mantissa32", ftypes.INT32)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.maturity_date = ProtoField.new("Maturity Date", "cme.cmefutures.brokertecust.sbe.v10.1.maturitydate", ftypes.UINT16)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.md_entry_px = ProtoField.new("Md Entry Px", "cme.cmefutures.brokertecust.sbe.v10.1.mdentrypx", ftypes.STRING)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.md_entry_size = ProtoField.new("Md Entry Size", "cme.cmefutures.brokertecust.sbe.v10.1.mdentrysize", ftypes.UINT32)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.md_entry_type = ProtoField.new("Md Entry Type", "cme.cmefutures.brokertecust.sbe.v10.1.mdentrytype", ftypes.STRING)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.md_price_level = ProtoField.new("Md Price Level", "cme.cmefutures.brokertecust.sbe.v10.1.mdpricelevel", ftypes.UINT8)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.md_update_action = ProtoField.new("Md Update Action", "cme.cmefutures.brokertecust.sbe.v10.1.mdupdateaction", ftypes.UINT8)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.message = ProtoField.new("Message", "cme.cmefutures.brokertecust.sbe.v10.1.message", ftypes.STRING)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.message_header = ProtoField.new("Message Header", "cme.cmefutures.brokertecust.sbe.v10.1.messageheader", ftypes.STRING)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.message_size = ProtoField.new("Message Size", "cme.cmefutures.brokertecust.sbe.v10.1.messagesize", ftypes.UINT16)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.num_in_group = ProtoField.new("Num In Group", "cme.cmefutures.brokertecust.sbe.v10.1.numingroup", ftypes.UINT8)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.packet = ProtoField.new("Packet", "cme.cmefutures.brokertecust.sbe.v10.1.packet", ftypes.STRING)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "cme.cmefutures.brokertecust.sbe.v10.1.packetsequencenumber", ftypes.UINT32)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.price_type = ProtoField.new("Price Type", "cme.cmefutures.brokertecust.sbe.v10.1.pricetype", ftypes.UINT8)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.schema_id = ProtoField.new("Schema Id", "cme.cmefutures.brokertecust.sbe.v10.1.schemaid", ftypes.UINT16)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.security_alt_id = ProtoField.new("Security Alt Id", "cme.cmefutures.brokertecust.sbe.v10.1.securityaltid", ftypes.STRING)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.security_alt_id_source = ProtoField.new("Security Alt Id Source", "cme.cmefutures.brokertecust.sbe.v10.1.securityaltidsource", ftypes.STRING)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.sending_time = ProtoField.new("Sending Time", "cme.cmefutures.brokertecust.sbe.v10.1.sendingtime", ftypes.UINT64)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.symbol = ProtoField.new("Symbol", "cme.cmefutures.brokertecust.sbe.v10.1.symbol", ftypes.STRING)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.template_id = ProtoField.new("Template Id", "cme.cmefutures.brokertecust.sbe.v10.1.templateid", ftypes.UINT16)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.trade_condition = ProtoField.new("Trade Condition", "cme.cmefutures.brokertecust.sbe.v10.1.tradecondition", ftypes.STRING)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.trade_date = ProtoField.new("Trade Date", "cme.cmefutures.brokertecust.sbe.v10.1.tradedate", ftypes.UINT16)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.trade_volume = ProtoField.new("Trade Volume", "cme.cmefutures.brokertecust.sbe.v10.1.tradevolume", ftypes.UINT32)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.transact_time = ProtoField.new("Transact Time", "cme.cmefutures.brokertecust.sbe.v10.1.transacttime", ftypes.UINT64)
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.version = ProtoField.new("Version", "cme.cmefutures.brokertecust.sbe.v10.1.version", ftypes.UINT16)

-- Cme CmeFutures Sbe BrokerTecUst 10.1 Application Messages
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.md_incremental_refresh_btec = ProtoField.new("Md Incremental Refresh Btec", "cme.cmefutures.brokertecust.sbe.v10.1.mdincrementalrefreshbtec", ftypes.STRING)

-- Cme CmeFutures BrokerTecUst Sbe 10.1 generated fields
omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.incremental_refresh_btec_group_index = ProtoField.new("Incremental Refresh Btec Group Index", "cme.cmefutures.brokertecust.sbe.v10.1.incrementalrefreshbtecgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cme CmeFutures BrokerTecUst Sbe 10.1 Element Dissection Options
show.binary_packet_header = true
show.coupon_rate = true
show.group_size = true
show.incremental_refresh_btec_group = true
show.incremental_refresh_btec_groups = true
show.md_entry_px = true
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.incremental_refresh_btec_group_index = true

-- Register Cme CmeFutures BrokerTecUst Sbe 10.1 Show Options
omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_binary_packet_header = Pref.bool("Show Binary Packet Header", show.binary_packet_header, "Parse and add Binary Packet Header to protocol tree")
omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_coupon_rate = Pref.bool("Show Coupon Rate", show.coupon_rate, "Parse and add Coupon Rate to protocol tree")
omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_incremental_refresh_btec_group = Pref.bool("Show Incremental Refresh Btec Group", show.incremental_refresh_btec_group, "Parse and add Incremental Refresh Btec Group to protocol tree")
omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_incremental_refresh_btec_groups = Pref.bool("Show Incremental Refresh Btec Groups", show.incremental_refresh_btec_groups, "Parse and add Incremental Refresh Btec Groups to protocol tree")
omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_md_entry_px = Pref.bool("Show Md Entry Px", show.md_entry_px, "Parse and add Md Entry Px to protocol tree")
omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_incremental_refresh_btec_group_index = Pref.bool("Show Incremental Refresh Btec Group Index", show.incremental_refresh_btec_group_index, "Show generated incremental refresh btec group index in protocol tree")

-- Handle changed preferences
function omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_application_messages then
    show.application_messages = omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_application_messages
  end
  if show.binary_packet_header ~= omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_binary_packet_header then
    show.binary_packet_header = omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_binary_packet_header
  end
  if show.coupon_rate ~= omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_coupon_rate then
    show.coupon_rate = omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_coupon_rate
  end
  if show.group_size ~= omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_group_size then
    show.group_size = omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_group_size
  end
  if show.incremental_refresh_btec_group ~= omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_incremental_refresh_btec_group then
    show.incremental_refresh_btec_group = omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_incremental_refresh_btec_group
  end
  if show.incremental_refresh_btec_groups ~= omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_incremental_refresh_btec_groups then
    show.incremental_refresh_btec_groups = omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_incremental_refresh_btec_groups
  end
  if show.md_entry_px ~= omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_md_entry_px then
    show.md_entry_px = omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_md_entry_px
  end
  if show.message ~= omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_message then
    show.message = omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_message
  end
  if show.message_header ~= omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_message_header then
    show.message_header = omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_message_header
  end
  if show.packet ~= omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_packet then
    show.packet = omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_packet
  end
  if show.incremental_refresh_btec_group_index ~= omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_incremental_refresh_btec_group_index then
    show.incremental_refresh_btec_group_index = omi_cme_cmefutures_brokertecust_sbe_v10_1.prefs.show_incremental_refresh_btec_group_index
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- Convert exponent to decimal
factor = function(value)
  if value == nil then
    return nil
  elseif value == -1 then
    return 10
  elseif value == -2 then
    return 100
  elseif value == -3 then
    return 1000
  elseif value == -4 then
    return 10000
  elseif value == -5 then
    return 100000
  elseif value == -6 then
    return 1000000
  elseif value == -7 then
    return 10000000
  elseif value == -8 then
    return 100000000
  elseif value == -9 then
    return 1000000000
  end

  return 1
end


-----------------------------------------------------------------------
-- Cme CmeFutures BrokerTecUst Sbe 10.1 Fields
-----------------------------------------------------------------------

-- Block Length
cme_cmefutures_brokertecust_sbe_v10_1.block_length = {}

-- Size: Block Length
cme_cmefutures_brokertecust_sbe_v10_1.block_length.size = 2

-- Display: Block Length
cme_cmefutures_brokertecust_sbe_v10_1.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_cmefutures_brokertecust_sbe_v10_1.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.block_length, range, value, display)

  return offset + length, value
end

-- Exponent
cme_cmefutures_brokertecust_sbe_v10_1.exponent = {}

-- Size: Exponent
cme_cmefutures_brokertecust_sbe_v10_1.exponent.size = 1

-- Display: Exponent
cme_cmefutures_brokertecust_sbe_v10_1.exponent.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Exponent: No Value"
  end

  return "Exponent: "..value
end

-- Dissect: Exponent
cme_cmefutures_brokertecust_sbe_v10_1.exponent.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.exponent.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.exponent, range, value, display)

  return offset + length, value
end

-- Mantissa
cme_cmefutures_brokertecust_sbe_v10_1.mantissa = {}

-- Size: Mantissa
cme_cmefutures_brokertecust_sbe_v10_1.mantissa.size = 8

-- Display: Mantissa
cme_cmefutures_brokertecust_sbe_v10_1.mantissa.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Mantissa: No Value"
  end

  return "Mantissa: "..value
end

-- Dissect: Mantissa
cme_cmefutures_brokertecust_sbe_v10_1.mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.mantissa, range, value, display)

  return offset + length, value
end

-- Mantissa 32
cme_cmefutures_brokertecust_sbe_v10_1.mantissa_32 = {}

-- Size: Mantissa 32
cme_cmefutures_brokertecust_sbe_v10_1.mantissa_32.size = 4

-- Display: Mantissa 32
cme_cmefutures_brokertecust_sbe_v10_1.mantissa_32.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Mantissa 32: No Value"
  end

  return "Mantissa 32: "..value
end

-- Dissect: Mantissa 32
cme_cmefutures_brokertecust_sbe_v10_1.mantissa_32.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.mantissa_32.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.mantissa_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.mantissa_32, range, value, display)

  return offset + length, value
end

-- Maturity Date
cme_cmefutures_brokertecust_sbe_v10_1.maturity_date = {}

-- Size: Maturity Date
cme_cmefutures_brokertecust_sbe_v10_1.maturity_date.size = 2

-- Display: Maturity Date
cme_cmefutures_brokertecust_sbe_v10_1.maturity_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cme_cmefutures_brokertecust_sbe_v10_1.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Md Entry Size
cme_cmefutures_brokertecust_sbe_v10_1.md_entry_size = {}

-- Size: Md Entry Size
cme_cmefutures_brokertecust_sbe_v10_1.md_entry_size.size = 4

-- Display: Md Entry Size
cme_cmefutures_brokertecust_sbe_v10_1.md_entry_size.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
cme_cmefutures_brokertecust_sbe_v10_1.md_entry_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.md_entry_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.md_entry_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Md Entry Type
cme_cmefutures_brokertecust_sbe_v10_1.md_entry_type = {}

-- Size: Md Entry Type
cme_cmefutures_brokertecust_sbe_v10_1.md_entry_type.size = 1

-- Display: Md Entry Type
cme_cmefutures_brokertecust_sbe_v10_1.md_entry_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Md Entry Type: No Value"
  end

  if value == "0" then
    return "Md Entry Type: Bid (0)"
  end
  if value == "1" then
    return "Md Entry Type: Offer (1)"
  end
  if value == "2" then
    return "Md Entry Type: Trade (2)"
  end
  if value == "4" then
    return "Md Entry Type: Open Price (4)"
  end
  if value == "5" then
    return "Md Entry Type: Close Price (5)"
  end
  if value == "7" then
    return "Md Entry Type: High Trade Price (7)"
  end
  if value == "8" then
    return "Md Entry Type: Low Trade Price (8)"
  end
  if value == "9" then
    return "Md Entry Type: Vwap (9)"
  end
  if value == "E" then
    return "Md Entry Type: Implied Bid (E)"
  end
  if value == "F" then
    return "Md Entry Type: Implied Offer (F)"
  end
  if value == "J" then
    return "Md Entry Type: Book Reset (J)"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
cme_cmefutures_brokertecust_sbe_v10_1.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.md_entry_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_cmefutures_brokertecust_sbe_v10_1.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Md Price Level
cme_cmefutures_brokertecust_sbe_v10_1.md_price_level = {}

-- Size: Md Price Level
cme_cmefutures_brokertecust_sbe_v10_1.md_price_level.size = 1

-- Display: Md Price Level
cme_cmefutures_brokertecust_sbe_v10_1.md_price_level.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Md Price Level: No Value"
  end

  return "Md Price Level: "..value
end

-- Dissect: Md Price Level
cme_cmefutures_brokertecust_sbe_v10_1.md_price_level.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.md_price_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.md_price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.md_price_level, range, value, display)

  return offset + length, value
end

-- Md Update Action
cme_cmefutures_brokertecust_sbe_v10_1.md_update_action = {}

-- Size: Md Update Action
cme_cmefutures_brokertecust_sbe_v10_1.md_update_action.size = 1

-- Display: Md Update Action
cme_cmefutures_brokertecust_sbe_v10_1.md_update_action.display = function(value)
  if value == 0 then
    return "Md Update Action: New (0)"
  end
  if value == 1 then
    return "Md Update Action: Update (1)"
  end
  if value == 2 then
    return "Md Update Action: Delete (2)"
  end

  return "Md Update Action: Unknown("..value..")"
end

-- Dissect: Md Update Action
cme_cmefutures_brokertecust_sbe_v10_1.md_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.md_update_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.md_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- Message Size
cme_cmefutures_brokertecust_sbe_v10_1.message_size = {}

-- Size: Message Size
cme_cmefutures_brokertecust_sbe_v10_1.message_size.size = 2

-- Display: Message Size
cme_cmefutures_brokertecust_sbe_v10_1.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_cmefutures_brokertecust_sbe_v10_1.message_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.message_size, range, value, display)

  return offset + length, value
end

-- Num In Group
cme_cmefutures_brokertecust_sbe_v10_1.num_in_group = {}

-- Size: Num In Group
cme_cmefutures_brokertecust_sbe_v10_1.num_in_group.size = 1

-- Display: Num In Group
cme_cmefutures_brokertecust_sbe_v10_1.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
cme_cmefutures_brokertecust_sbe_v10_1.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
cme_cmefutures_brokertecust_sbe_v10_1.packet_sequence_number = {}

-- Size: Packet Sequence Number
cme_cmefutures_brokertecust_sbe_v10_1.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
cme_cmefutures_brokertecust_sbe_v10_1.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
cme_cmefutures_brokertecust_sbe_v10_1.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Price Type
cme_cmefutures_brokertecust_sbe_v10_1.price_type = {}

-- Size: Price Type
cme_cmefutures_brokertecust_sbe_v10_1.price_type.size = 1

-- Display: Price Type
cme_cmefutures_brokertecust_sbe_v10_1.price_type.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Type: No Value"
  end

  return "Price Type: "..value
end

-- Dissect: Price Type
cme_cmefutures_brokertecust_sbe_v10_1.price_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.price_type, range, value, display)

  return offset + length, value
end

-- Schema Id
cme_cmefutures_brokertecust_sbe_v10_1.schema_id = {}

-- Size: Schema Id
cme_cmefutures_brokertecust_sbe_v10_1.schema_id.size = 2

-- Display: Schema Id
cme_cmefutures_brokertecust_sbe_v10_1.schema_id.display = function(value)
  if value == 10 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
cme_cmefutures_brokertecust_sbe_v10_1.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Security Alt Id
cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id = {}

-- Size: Security Alt Id
cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id.size = 12

-- Display: Security Alt Id
cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id: No Value"
  end

  return "Security Alt Id: "..value
end

-- Dissect: Security Alt Id
cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id.size
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

  local display = cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.security_alt_id, range, value, display)

  return offset + length, value
end

-- Security Alt Id Source
cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id_source = {}

-- Size: Security Alt Id Source
cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id_source.size = 1

-- Display: Security Alt Id Source
cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id_source.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id Source: No Value"
  end

  return "Security Alt Id Source: "..value
end

-- Dissect: Security Alt Id Source
cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id_source.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id_source.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.security_alt_id_source, range, value, display)

  return offset + length, value
end

-- Sending Time
cme_cmefutures_brokertecust_sbe_v10_1.sending_time = {}

-- Size: Sending Time
cme_cmefutures_brokertecust_sbe_v10_1.sending_time.size = 8

-- Display: Sending Time
cme_cmefutures_brokertecust_sbe_v10_1.sending_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Sending Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
cme_cmefutures_brokertecust_sbe_v10_1.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Symbol
cme_cmefutures_brokertecust_sbe_v10_1.symbol = {}

-- Size: Symbol
cme_cmefutures_brokertecust_sbe_v10_1.symbol.size = 20

-- Display: Symbol
cme_cmefutures_brokertecust_sbe_v10_1.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cme_cmefutures_brokertecust_sbe_v10_1.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.symbol.size
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

  local display = cme_cmefutures_brokertecust_sbe_v10_1.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Template Id
cme_cmefutures_brokertecust_sbe_v10_1.template_id = {}

-- Size: Template Id
cme_cmefutures_brokertecust_sbe_v10_1.template_id.size = 2

-- Display: Template Id
cme_cmefutures_brokertecust_sbe_v10_1.template_id.display = function(value)
  if value == 405 then
    return "Template Id: Md Incremental Refresh Btec (405)"
  end
  if value == 411 then
    return "Template Id: Admin Heartbeat (411)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
cme_cmefutures_brokertecust_sbe_v10_1.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Trade Condition
cme_cmefutures_brokertecust_sbe_v10_1.trade_condition = {}

-- Size: Trade Condition
cme_cmefutures_brokertecust_sbe_v10_1.trade_condition.size = 1

-- Display: Trade Condition
cme_cmefutures_brokertecust_sbe_v10_1.trade_condition.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Condition: No Value"
  end

  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
cme_cmefutures_brokertecust_sbe_v10_1.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.trade_condition.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_cmefutures_brokertecust_sbe_v10_1.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Date
cme_cmefutures_brokertecust_sbe_v10_1.trade_date = {}

-- Size: Trade Date
cme_cmefutures_brokertecust_sbe_v10_1.trade_date.size = 2

-- Display: Trade Date
cme_cmefutures_brokertecust_sbe_v10_1.trade_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
cme_cmefutures_brokertecust_sbe_v10_1.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Volume
cme_cmefutures_brokertecust_sbe_v10_1.trade_volume = {}

-- Size: Trade Volume
cme_cmefutures_brokertecust_sbe_v10_1.trade_volume.size = 4

-- Display: Trade Volume
cme_cmefutures_brokertecust_sbe_v10_1.trade_volume.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Trade Volume: No Value"
  end

  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
cme_cmefutures_brokertecust_sbe_v10_1.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.trade_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Transact Time
cme_cmefutures_brokertecust_sbe_v10_1.transact_time = {}

-- Size: Transact Time
cme_cmefutures_brokertecust_sbe_v10_1.transact_time.size = 8

-- Display: Transact Time
cme_cmefutures_brokertecust_sbe_v10_1.transact_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transact Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
cme_cmefutures_brokertecust_sbe_v10_1.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Version
cme_cmefutures_brokertecust_sbe_v10_1.version = {}

-- Size: Version
cme_cmefutures_brokertecust_sbe_v10_1.version.size = 2

-- Display: Version
cme_cmefutures_brokertecust_sbe_v10_1.version.display = function(value)
  if value == 1 then
    return "Version: Version"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
cme_cmefutures_brokertecust_sbe_v10_1.version.dissect = function(buffer, offset, packet, parent)
  local length = cme_cmefutures_brokertecust_sbe_v10_1.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_cmefutures_brokertecust_sbe_v10_1.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cme CmeFutures BrokerTecUst Sbe 10.1
-----------------------------------------------------------------------

-- Coupon Rate
cme_cmefutures_brokertecust_sbe_v10_1.coupon_rate = {}

-- Size: Coupon Rate
cme_cmefutures_brokertecust_sbe_v10_1.coupon_rate.size =
  cme_cmefutures_brokertecust_sbe_v10_1.mantissa_32.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.exponent.size

-- Display: Coupon Rate
cme_cmefutures_brokertecust_sbe_v10_1.coupon_rate.display = function(raw, value)
  if raw ~= nil then
    return "No Value"
  end

  return ""..value
end

-- Dissect Fields: Coupon Rate
cme_cmefutures_brokertecust_sbe_v10_1.coupon_rate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: int32
  index, mantissa_32 = cme_cmefutures_brokertecust_sbe_v10_1.mantissa_32.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = cme_cmefutures_brokertecust_sbe_v10_1.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local coupon_rate = mantissa_32 / factor( exponent )

  return index, coupon_rate
end

-- Dissect: Coupon Rate
cme_cmefutures_brokertecust_sbe_v10_1.coupon_rate.dissect = function(buffer, offset, packet, parent)
  if show.coupon_rate then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.coupon_rate, buffer(offset, 0))
    local index, value = cme_cmefutures_brokertecust_sbe_v10_1.coupon_rate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_cmefutures_brokertecust_sbe_v10_1.coupon_rate.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_cmefutures_brokertecust_sbe_v10_1.coupon_rate.fields(buffer, offset, packet, parent)
  end
end

-- Md Entry Px
cme_cmefutures_brokertecust_sbe_v10_1.md_entry_px = {}

-- Size: Md Entry Px
cme_cmefutures_brokertecust_sbe_v10_1.md_entry_px.size =
  cme_cmefutures_brokertecust_sbe_v10_1.mantissa.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.exponent.size

-- Display: Md Entry Px
cme_cmefutures_brokertecust_sbe_v10_1.md_entry_px.display = function(raw, value)
  if raw ~= nil then
    return "No Value"
  end

  return ""..value
end

-- Dissect Fields: Md Entry Px
cme_cmefutures_brokertecust_sbe_v10_1.md_entry_px.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: int64
  index, mantissa = cme_cmefutures_brokertecust_sbe_v10_1.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = cme_cmefutures_brokertecust_sbe_v10_1.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local md_entry_px = mantissa / factor( exponent )

  return index, md_entry_px
end

-- Dissect: Md Entry Px
cme_cmefutures_brokertecust_sbe_v10_1.md_entry_px.dissect = function(buffer, offset, packet, parent)
  if show.md_entry_px then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.md_entry_px, buffer(offset, 0))
    local index, value = cme_cmefutures_brokertecust_sbe_v10_1.md_entry_px.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_cmefutures_brokertecust_sbe_v10_1.md_entry_px.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_cmefutures_brokertecust_sbe_v10_1.md_entry_px.fields(buffer, offset, packet, parent)
  end
end

-- Incremental Refresh Btec Group
cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_group = {}

-- Size: Incremental Refresh Btec Group
cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_group.size =
  cme_cmefutures_brokertecust_sbe_v10_1.md_update_action.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.md_entry_type.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.md_entry_px.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.md_entry_size.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.md_price_level.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.trade_volume.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.symbol.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.maturity_date.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id_source.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.coupon_rate.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.trade_condition.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.price_type.size

-- Display: Incremental Refresh Btec Group
cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Btec Group
cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_group.fields = function(buffer, offset, packet, parent, incremental_refresh_btec_group_index)
  local index = offset

  -- Implicit Incremental Refresh Btec Group Index
  if incremental_refresh_btec_group_index ~= nil and show.incremental_refresh_btec_group_index then
    local iteration = parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.incremental_refresh_btec_group_index, incremental_refresh_btec_group_index)
    iteration:set_generated()
  end

  -- Md Update Action: UpdateAction
  index, md_update_action = cme_cmefutures_brokertecust_sbe_v10_1.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type: MDEntryType
  index, md_entry_type = cme_cmefutures_brokertecust_sbe_v10_1.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cme_cmefutures_brokertecust_sbe_v10_1.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: uInt32NULL
  index, md_entry_size = cme_cmefutures_brokertecust_sbe_v10_1.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Price Level: uInt8NULL
  index, md_price_level = cme_cmefutures_brokertecust_sbe_v10_1.md_price_level.dissect(buffer, index, packet, parent)

  -- Trade Volume: uInt32NULL
  index, trade_volume = cme_cmefutures_brokertecust_sbe_v10_1.trade_volume.dissect(buffer, index, packet, parent)

  -- Symbol: Symbol
  index, symbol = cme_cmefutures_brokertecust_sbe_v10_1.symbol.dissect(buffer, index, packet, parent)

  -- Maturity Date: LocalMktDate
  index, maturity_date = cme_cmefutures_brokertecust_sbe_v10_1.maturity_date.dissect(buffer, index, packet, parent)

  -- Security Alt Id: String12
  index, security_alt_id = cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id.dissect(buffer, index, packet, parent)

  -- Security Alt Id Source: CHAR
  index, security_alt_id_source = cme_cmefutures_brokertecust_sbe_v10_1.security_alt_id_source.dissect(buffer, index, packet, parent)

  -- Coupon Rate: Struct of 2 fields
  index, coupon_rate = cme_cmefutures_brokertecust_sbe_v10_1.coupon_rate.dissect(buffer, index, packet, parent)

  -- Trade Condition: CHAR
  index, trade_condition = cme_cmefutures_brokertecust_sbe_v10_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Price Type: uInt8NULL
  index, price_type = cme_cmefutures_brokertecust_sbe_v10_1.price_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incremental Refresh Btec Group
cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_group.dissect = function(buffer, offset, packet, parent, incremental_refresh_btec_group_index)
  if show.incremental_refresh_btec_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.incremental_refresh_btec_group, buffer(offset, 0))
    local index = cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_group.fields(buffer, offset, packet, parent, incremental_refresh_btec_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_group.fields(buffer, offset, packet, parent, incremental_refresh_btec_group_index)
  end
end

-- Group Size
cme_cmefutures_brokertecust_sbe_v10_1.group_size = {}

-- Size: Group Size
cme_cmefutures_brokertecust_sbe_v10_1.group_size.size =
  cme_cmefutures_brokertecust_sbe_v10_1.block_length.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.num_in_group.size

-- Display: Group Size
cme_cmefutures_brokertecust_sbe_v10_1.group_size.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
cme_cmefutures_brokertecust_sbe_v10_1.group_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = cme_cmefutures_brokertecust_sbe_v10_1.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = cme_cmefutures_brokertecust_sbe_v10_1.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_cmefutures_brokertecust_sbe_v10_1.group_size.dissect = function(buffer, offset, packet, parent)
  if show.group_size then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.group_size, buffer(offset, 0))
    local index = cme_cmefutures_brokertecust_sbe_v10_1.group_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_cmefutures_brokertecust_sbe_v10_1.group_size.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_cmefutures_brokertecust_sbe_v10_1.group_size.fields(buffer, offset, packet, parent)
  end
end

-- Incremental Refresh Btec Groups
cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_groups = {}

-- Calculate size of: Incremental Refresh Btec Groups
cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_cmefutures_brokertecust_sbe_v10_1.group_size.size

  -- Calculate field size from count
  local incremental_refresh_btec_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + incremental_refresh_btec_group_count * 62

  return index
end

-- Display: Incremental Refresh Btec Groups
cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Btec Groups
cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_cmefutures_brokertecust_sbe_v10_1.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Incremental Refresh Btec Group
  for incremental_refresh_btec_group_index = 1, num_in_group do
    index, incremental_refresh_btec_group = cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_group.dissect(buffer, index, packet, parent, incremental_refresh_btec_group_index)
  end

  return index
end

-- Dissect: Incremental Refresh Btec Groups
cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_groups.dissect = function(buffer, offset, packet, parent)
  if show.incremental_refresh_btec_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.incremental_refresh_btec_groups, buffer(offset, 0))
    local index = cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_groups.fields(buffer, offset, packet, parent)
  end
end

-- Md Incremental Refresh Btec
cme_cmefutures_brokertecust_sbe_v10_1.md_incremental_refresh_btec = {}

-- Calculate size of: Md Incremental Refresh Btec
cme_cmefutures_brokertecust_sbe_v10_1.md_incremental_refresh_btec.size = function(buffer, offset)
  local index = 0

  index = index + cme_cmefutures_brokertecust_sbe_v10_1.trade_date.size

  index = index + cme_cmefutures_brokertecust_sbe_v10_1.transact_time.size

  index = index + cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Btec
cme_cmefutures_brokertecust_sbe_v10_1.md_incremental_refresh_btec.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Btec
cme_cmefutures_brokertecust_sbe_v10_1.md_incremental_refresh_btec.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Date: LocalMktDate
  index, trade_date = cme_cmefutures_brokertecust_sbe_v10_1.trade_date.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_cmefutures_brokertecust_sbe_v10_1.transact_time.dissect(buffer, index, packet, parent)

  -- Incremental Refresh Btec Groups: Struct of 2 fields
  index, incremental_refresh_btec_groups = cme_cmefutures_brokertecust_sbe_v10_1.incremental_refresh_btec_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Btec
cme_cmefutures_brokertecust_sbe_v10_1.md_incremental_refresh_btec.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.md_incremental_refresh_btec, buffer(offset, 0))
    local index = cme_cmefutures_brokertecust_sbe_v10_1.md_incremental_refresh_btec.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_cmefutures_brokertecust_sbe_v10_1.md_incremental_refresh_btec.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_cmefutures_brokertecust_sbe_v10_1.md_incremental_refresh_btec.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cme_cmefutures_brokertecust_sbe_v10_1.payload = {}

-- Dissect: Payload
cme_cmefutures_brokertecust_sbe_v10_1.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Md Incremental Refresh Btec
  if template_id == 405 then
    return cme_cmefutures_brokertecust_sbe_v10_1.md_incremental_refresh_btec.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Admin Heartbeat
  if template_id == 411 then
    return offset
  end

  return offset
end

-- Message Header
cme_cmefutures_brokertecust_sbe_v10_1.message_header = {}

-- Size: Message Header
cme_cmefutures_brokertecust_sbe_v10_1.message_header.size =
  cme_cmefutures_brokertecust_sbe_v10_1.block_length.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.template_id.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.schema_id.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.version.size

-- Display: Message Header
cme_cmefutures_brokertecust_sbe_v10_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_cmefutures_brokertecust_sbe_v10_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = cme_cmefutures_brokertecust_sbe_v10_1.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = cme_cmefutures_brokertecust_sbe_v10_1.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = cme_cmefutures_brokertecust_sbe_v10_1.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = cme_cmefutures_brokertecust_sbe_v10_1.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_cmefutures_brokertecust_sbe_v10_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.message_header, buffer(offset, 0))
    local index = cme_cmefutures_brokertecust_sbe_v10_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_cmefutures_brokertecust_sbe_v10_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_cmefutures_brokertecust_sbe_v10_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cme_cmefutures_brokertecust_sbe_v10_1.message = {}

-- Display: Message
cme_cmefutures_brokertecust_sbe_v10_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cme_cmefutures_brokertecust_sbe_v10_1.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_cmefutures_brokertecust_sbe_v10_1.message_size.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_cmefutures_brokertecust_sbe_v10_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 2 branches
  index = cme_cmefutures_brokertecust_sbe_v10_1.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cme_cmefutures_brokertecust_sbe_v10_1.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.message, buffer(offset, 0))
    local current = cme_cmefutures_brokertecust_sbe_v10_1.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = cme_cmefutures_brokertecust_sbe_v10_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cme_cmefutures_brokertecust_sbe_v10_1.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Binary Packet Header
cme_cmefutures_brokertecust_sbe_v10_1.binary_packet_header = {}

-- Size: Binary Packet Header
cme_cmefutures_brokertecust_sbe_v10_1.binary_packet_header.size =
  cme_cmefutures_brokertecust_sbe_v10_1.packet_sequence_number.size + 
  cme_cmefutures_brokertecust_sbe_v10_1.sending_time.size

-- Display: Binary Packet Header
cme_cmefutures_brokertecust_sbe_v10_1.binary_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Packet Header
cme_cmefutures_brokertecust_sbe_v10_1.binary_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = cme_cmefutures_brokertecust_sbe_v10_1.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_cmefutures_brokertecust_sbe_v10_1.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
cme_cmefutures_brokertecust_sbe_v10_1.binary_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.binary_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1.fields.binary_packet_header, buffer(offset, 0))
    local index = cme_cmefutures_brokertecust_sbe_v10_1.binary_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_cmefutures_brokertecust_sbe_v10_1.binary_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_cmefutures_brokertecust_sbe_v10_1.binary_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cme_cmefutures_brokertecust_sbe_v10_1.packet = {}

-- Verify required size of Udp packet
cme_cmefutures_brokertecust_sbe_v10_1.packet.requiredsize = function(buffer)
  return buffer:len() >= cme_cmefutures_brokertecust_sbe_v10_1.binary_packet_header.size + cme_cmefutures_brokertecust_sbe_v10_1.message_size.size + cme_cmefutures_brokertecust_sbe_v10_1.message_header.size
end

-- Dissect Packet
cme_cmefutures_brokertecust_sbe_v10_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = cme_cmefutures_brokertecust_sbe_v10_1.binary_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = cme_cmefutures_brokertecust_sbe_v10_1.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cme_cmefutures_brokertecust_sbe_v10_1.init()
end

-- Dissector for Cme CmeFutures BrokerTecUst Sbe 10.1
function omi_cme_cmefutures_brokertecust_sbe_v10_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cme_cmefutures_brokertecust_sbe_v10_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_cme_cmefutures_brokertecust_sbe_v10_1, buffer(), omi_cme_cmefutures_brokertecust_sbe_v10_1.description, "("..buffer:len().." Bytes)")
  return cme_cmefutures_brokertecust_sbe_v10_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
cme_cmefutures_brokertecust_sbe_v10_1.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(18, 2):le_uint()

  if value == 10 then
    return true
  end

  return false
end

-- Verify Version Field
cme_cmefutures_brokertecust_sbe_v10_1.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme CmeFutures BrokerTecUst Sbe 10.1 (Udp)
local function omi_cme_cmefutures_brokertecust_sbe_v10_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_cmefutures_brokertecust_sbe_v10_1.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not cme_cmefutures_brokertecust_sbe_v10_1.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not cme_cmefutures_brokertecust_sbe_v10_1.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_cmefutures_brokertecust_sbe_v10_1
  omi_cme_cmefutures_brokertecust_sbe_v10_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme CmeFutures BrokerTecUst Sbe 10.1
omi_cme_cmefutures_brokertecust_sbe_v10_1:register_heuristic("udp", omi_cme_cmefutures_brokertecust_sbe_v10_1_udp_heuristic)

-- Register Cme CmeFutures BrokerTecUst Sbe 10.1 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cme_cmefutures_brokertecust_sbe_v10_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: CME Group
--   Version: 10.1
--   Date: Thursday, April 13, 2023
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
