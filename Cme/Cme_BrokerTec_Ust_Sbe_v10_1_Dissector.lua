-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme BrokerTec Ust Sbe 10.1 Protocol
local omi_cme_brokertec_ust_sbe_v10_1 = Proto("Cme.BrokerTec.Ust.Sbe.v10.1.Lua", "Cme BrokerTec Ust Sbe 10.1")

-- Protocol table
local cme_brokertec_ust_sbe_v10_1 = {}

-- Component Tables
local show = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme BrokerTec Ust Sbe 10.1 Fields
omi_cme_brokertec_ust_sbe_v10_1.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.brokertec.ust.sbe.v10.1.binarypacketheader", ftypes.STRING)
omi_cme_brokertec_ust_sbe_v10_1.fields.block_length = ProtoField.new("Block Length", "cme.brokertec.ust.sbe.v10.1.blocklength", ftypes.UINT16)
omi_cme_brokertec_ust_sbe_v10_1.fields.coupon_rate = ProtoField.new("Coupon Rate", "cme.brokertec.ust.sbe.v10.1.couponrate", ftypes.STRING)
omi_cme_brokertec_ust_sbe_v10_1.fields.exponent = ProtoField.new("Exponent", "cme.brokertec.ust.sbe.v10.1.exponent", ftypes.INT8)
omi_cme_brokertec_ust_sbe_v10_1.fields.group_size = ProtoField.new("Group Size", "cme.brokertec.ust.sbe.v10.1.groupsize", ftypes.STRING)
omi_cme_brokertec_ust_sbe_v10_1.fields.m_d_incremental_refresh_btec_group = ProtoField.new("M D Incremental Refresh Btec Group", "cme.brokertec.ust.sbe.v10.1.mdincrementalrefreshbtecgroup", ftypes.STRING)
omi_cme_brokertec_ust_sbe_v10_1.fields.m_d_incremental_refresh_btec_groups = ProtoField.new("M D Incremental Refresh Btec Groups", "cme.brokertec.ust.sbe.v10.1.mdincrementalrefreshbtecgroups", ftypes.STRING)
omi_cme_brokertec_ust_sbe_v10_1.fields.mantissa_int_32 = ProtoField.new("Mantissa int 32", "cme.brokertec.ust.sbe.v10.1.mantissaint32", ftypes.INT32)
omi_cme_brokertec_ust_sbe_v10_1.fields.mantissa_int_64 = ProtoField.new("Mantissa int 64", "cme.brokertec.ust.sbe.v10.1.mantissaint64", ftypes.INT64)
omi_cme_brokertec_ust_sbe_v10_1.fields.maturity_date = ProtoField.new("Maturity Date", "cme.brokertec.ust.sbe.v10.1.maturitydate", ftypes.UINT16)
omi_cme_brokertec_ust_sbe_v10_1.fields.md_entry_px = ProtoField.new("Md Entry Px", "cme.brokertec.ust.sbe.v10.1.mdentrypx", ftypes.STRING)
omi_cme_brokertec_ust_sbe_v10_1.fields.md_entry_size = ProtoField.new("Md Entry Size", "cme.brokertec.ust.sbe.v10.1.mdentrysize", ftypes.UINT32)
omi_cme_brokertec_ust_sbe_v10_1.fields.md_entry_type = ProtoField.new("Md Entry Type", "cme.brokertec.ust.sbe.v10.1.mdentrytype", ftypes.STRING)
omi_cme_brokertec_ust_sbe_v10_1.fields.md_price_level = ProtoField.new("Md Price Level", "cme.brokertec.ust.sbe.v10.1.mdpricelevel", ftypes.UINT8)
omi_cme_brokertec_ust_sbe_v10_1.fields.md_update_action = ProtoField.new("Md Update Action", "cme.brokertec.ust.sbe.v10.1.mdupdateaction", ftypes.UINT8)
omi_cme_brokertec_ust_sbe_v10_1.fields.message = ProtoField.new("Message", "cme.brokertec.ust.sbe.v10.1.message", ftypes.STRING)
omi_cme_brokertec_ust_sbe_v10_1.fields.message_header = ProtoField.new("Message Header", "cme.brokertec.ust.sbe.v10.1.messageheader", ftypes.STRING)
omi_cme_brokertec_ust_sbe_v10_1.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cme.brokertec.ust.sbe.v10.1.messagesequencenumber", ftypes.UINT32)
omi_cme_brokertec_ust_sbe_v10_1.fields.message_size = ProtoField.new("Message Size", "cme.brokertec.ust.sbe.v10.1.messagesize", ftypes.UINT16)
omi_cme_brokertec_ust_sbe_v10_1.fields.num_in_group_uint_8 = ProtoField.new("Num In Group uint 8", "cme.brokertec.ust.sbe.v10.1.numingroupuint8", ftypes.UINT8)
omi_cme_brokertec_ust_sbe_v10_1.fields.packet = ProtoField.new("Packet", "cme.brokertec.ust.sbe.v10.1.packet", ftypes.STRING)
omi_cme_brokertec_ust_sbe_v10_1.fields.payload = ProtoField.new("Payload", "cme.brokertec.ust.sbe.v10.1.payload", ftypes.STRING)
omi_cme_brokertec_ust_sbe_v10_1.fields.price_type = ProtoField.new("Price Type", "cme.brokertec.ust.sbe.v10.1.pricetype", ftypes.UINT8)
omi_cme_brokertec_ust_sbe_v10_1.fields.schema_id = ProtoField.new("Schema Id", "cme.brokertec.ust.sbe.v10.1.schemaid", ftypes.UINT16)
omi_cme_brokertec_ust_sbe_v10_1.fields.security_alt_id = ProtoField.new("Security Alt Id", "cme.brokertec.ust.sbe.v10.1.securityaltid", ftypes.STRING)
omi_cme_brokertec_ust_sbe_v10_1.fields.security_alt_id_source = ProtoField.new("Security Alt Id Source", "cme.brokertec.ust.sbe.v10.1.securityaltidsource", ftypes.STRING)
omi_cme_brokertec_ust_sbe_v10_1.fields.sending_time = ProtoField.new("Sending Time", "cme.brokertec.ust.sbe.v10.1.sendingtime", ftypes.UINT64)
omi_cme_brokertec_ust_sbe_v10_1.fields.symbol = ProtoField.new("Symbol", "cme.brokertec.ust.sbe.v10.1.symbol", ftypes.STRING)
omi_cme_brokertec_ust_sbe_v10_1.fields.template_id = ProtoField.new("Template Id", "cme.brokertec.ust.sbe.v10.1.templateid", ftypes.UINT16)
omi_cme_brokertec_ust_sbe_v10_1.fields.trade_condition = ProtoField.new("Trade Condition", "cme.brokertec.ust.sbe.v10.1.tradecondition", ftypes.STRING)
omi_cme_brokertec_ust_sbe_v10_1.fields.trade_date = ProtoField.new("Trade Date", "cme.brokertec.ust.sbe.v10.1.tradedate", ftypes.UINT16)
omi_cme_brokertec_ust_sbe_v10_1.fields.trade_volume = ProtoField.new("Trade Volume", "cme.brokertec.ust.sbe.v10.1.tradevolume", ftypes.UINT32)
omi_cme_brokertec_ust_sbe_v10_1.fields.transact_time = ProtoField.new("Transact Time", "cme.brokertec.ust.sbe.v10.1.transacttime", ftypes.UINT64)
omi_cme_brokertec_ust_sbe_v10_1.fields.version = ProtoField.new("Version", "cme.brokertec.ust.sbe.v10.1.version", ftypes.UINT16)

-- Cme BrokerTec Ust Sbe 10.1 messages
omi_cme_brokertec_ust_sbe_v10_1.fields.md_incremental_refresh_btec = ProtoField.new("Md Incremental Refresh Btec", "cme.brokertec.ust.sbe.v10.1.mdincrementalrefreshbtec", ftypes.STRING)

-- Cme BrokerTec Ust Sbe 10.1 generated fields
omi_cme_brokertec_ust_sbe_v10_1.fields.m_d_incremental_refresh_btec_group_index = ProtoField.new("M D Incremental Refresh Btec Group Index", "cme.brokertec.ust.sbe.v10.1.mdincrementalrefreshbtecgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cme BrokerTec Ust Sbe 10.1 Element Dissection Options
show.binary_packet_header = true
show.coupon_rate = true
show.group_size = true
show.m_d_incremental_refresh_btec_group = true
show.m_d_incremental_refresh_btec_groups = true
show.md_entry_px = true
show.md_incremental_refresh_btec = true
show.message = true
show.message_header = true
show.packet = true
show.payload = false

-- Register Cme BrokerTec Ust Sbe 10.1 Show Options
omi_cme_brokertec_ust_sbe_v10_1.prefs.show_binary_packet_header = Pref.bool("Show Binary Packet Header", show.binary_packet_header, "Parse and add Binary Packet Header to protocol tree")
omi_cme_brokertec_ust_sbe_v10_1.prefs.show_coupon_rate = Pref.bool("Show Coupon Rate", show.coupon_rate, "Parse and add Coupon Rate to protocol tree")
omi_cme_brokertec_ust_sbe_v10_1.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
omi_cme_brokertec_ust_sbe_v10_1.prefs.show_m_d_incremental_refresh_btec_group = Pref.bool("Show M D Incremental Refresh Btec Group", show.m_d_incremental_refresh_btec_group, "Parse and add M D Incremental Refresh Btec Group to protocol tree")
omi_cme_brokertec_ust_sbe_v10_1.prefs.show_m_d_incremental_refresh_btec_groups = Pref.bool("Show M D Incremental Refresh Btec Groups", show.m_d_incremental_refresh_btec_groups, "Parse and add M D Incremental Refresh Btec Groups to protocol tree")
omi_cme_brokertec_ust_sbe_v10_1.prefs.show_md_entry_px = Pref.bool("Show Md Entry Px", show.md_entry_px, "Parse and add Md Entry Px to protocol tree")
omi_cme_brokertec_ust_sbe_v10_1.prefs.show_md_incremental_refresh_btec = Pref.bool("Show Md Incremental Refresh Btec", show.md_incremental_refresh_btec, "Parse and add Md Incremental Refresh Btec to protocol tree")
omi_cme_brokertec_ust_sbe_v10_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cme_brokertec_ust_sbe_v10_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cme_brokertec_ust_sbe_v10_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cme_brokertec_ust_sbe_v10_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_cme_brokertec_ust_sbe_v10_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.binary_packet_header ~= omi_cme_brokertec_ust_sbe_v10_1.prefs.show_binary_packet_header then
    show.binary_packet_header = omi_cme_brokertec_ust_sbe_v10_1.prefs.show_binary_packet_header
    changed = true
  end
  if show.coupon_rate ~= omi_cme_brokertec_ust_sbe_v10_1.prefs.show_coupon_rate then
    show.coupon_rate = omi_cme_brokertec_ust_sbe_v10_1.prefs.show_coupon_rate
    changed = true
  end
  if show.group_size ~= omi_cme_brokertec_ust_sbe_v10_1.prefs.show_group_size then
    show.group_size = omi_cme_brokertec_ust_sbe_v10_1.prefs.show_group_size
    changed = true
  end
  if show.m_d_incremental_refresh_btec_group ~= omi_cme_brokertec_ust_sbe_v10_1.prefs.show_m_d_incremental_refresh_btec_group then
    show.m_d_incremental_refresh_btec_group = omi_cme_brokertec_ust_sbe_v10_1.prefs.show_m_d_incremental_refresh_btec_group
    changed = true
  end
  if show.m_d_incremental_refresh_btec_groups ~= omi_cme_brokertec_ust_sbe_v10_1.prefs.show_m_d_incremental_refresh_btec_groups then
    show.m_d_incremental_refresh_btec_groups = omi_cme_brokertec_ust_sbe_v10_1.prefs.show_m_d_incremental_refresh_btec_groups
    changed = true
  end
  if show.md_entry_px ~= omi_cme_brokertec_ust_sbe_v10_1.prefs.show_md_entry_px then
    show.md_entry_px = omi_cme_brokertec_ust_sbe_v10_1.prefs.show_md_entry_px
    changed = true
  end
  if show.md_incremental_refresh_btec ~= omi_cme_brokertec_ust_sbe_v10_1.prefs.show_md_incremental_refresh_btec then
    show.md_incremental_refresh_btec = omi_cme_brokertec_ust_sbe_v10_1.prefs.show_md_incremental_refresh_btec
    changed = true
  end
  if show.message ~= omi_cme_brokertec_ust_sbe_v10_1.prefs.show_message then
    show.message = omi_cme_brokertec_ust_sbe_v10_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cme_brokertec_ust_sbe_v10_1.prefs.show_message_header then
    show.message_header = omi_cme_brokertec_ust_sbe_v10_1.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_cme_brokertec_ust_sbe_v10_1.prefs.show_packet then
    show.packet = omi_cme_brokertec_ust_sbe_v10_1.prefs.show_packet
    changed = true
  end
  if show.payload ~= omi_cme_brokertec_ust_sbe_v10_1.prefs.show_payload then
    show.payload = omi_cme_brokertec_ust_sbe_v10_1.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cme BrokerTec Ust Sbe 10.1
-----------------------------------------------------------------------

-- Admin Heartbeat
cme_brokertec_ust_sbe_v10_1.admin_heartbeat = {}

-- Price Type
cme_brokertec_ust_sbe_v10_1.price_type = {}

-- Size: Price Type
cme_brokertec_ust_sbe_v10_1.price_type.size = 1

-- Display: Price Type
cme_brokertec_ust_sbe_v10_1.price_type.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Type: No Value"
  end

  return "Price Type: "..value
end

-- Dissect: Price Type
cme_brokertec_ust_sbe_v10_1.price_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.price_type, range, value, display)

  return offset + length, value
end

-- Trade Condition
cme_brokertec_ust_sbe_v10_1.trade_condition = {}

-- Size: Trade Condition
cme_brokertec_ust_sbe_v10_1.trade_condition.size = 1

-- Display: Trade Condition
cme_brokertec_ust_sbe_v10_1.trade_condition.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Condition: No Value"
  end

  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
cme_brokertec_ust_sbe_v10_1.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.trade_condition.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_brokertec_ust_sbe_v10_1.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Exponent
cme_brokertec_ust_sbe_v10_1.exponent = {}

-- Size: Exponent
cme_brokertec_ust_sbe_v10_1.exponent.size = 1

-- Display: Exponent
cme_brokertec_ust_sbe_v10_1.exponent.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Exponent: No Value"
  end

  return "Exponent: "..value
end

-- Dissect: Exponent
cme_brokertec_ust_sbe_v10_1.exponent.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.exponent.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_brokertec_ust_sbe_v10_1.exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.exponent, range, value, display)

  return offset + length, value
end

-- Mantissa int 32
cme_brokertec_ust_sbe_v10_1.mantissa_int_32 = {}

-- Size: Mantissa int 32
cme_brokertec_ust_sbe_v10_1.mantissa_int_32.size = 4

-- Display: Mantissa int 32
cme_brokertec_ust_sbe_v10_1.mantissa_int_32.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Mantissa int 32: No Value"
  end

  return "Mantissa int 32: "..value
end

-- Dissect: Mantissa int 32
cme_brokertec_ust_sbe_v10_1.mantissa_int_32.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.mantissa_int_32.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_brokertec_ust_sbe_v10_1.mantissa_int_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.mantissa_int_32, range, value, display)

  return offset + length, value
end

-- Coupon Rate
cme_brokertec_ust_sbe_v10_1.coupon_rate = {}

-- Calculate size of: Coupon Rate
cme_brokertec_ust_sbe_v10_1.coupon_rate.size = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1.mantissa_int_32.size

  index = index + cme_brokertec_ust_sbe_v10_1.exponent.size

  return index
end

-- Display: Coupon Rate
cme_brokertec_ust_sbe_v10_1.coupon_rate.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Coupon Rate
cme_brokertec_ust_sbe_v10_1.coupon_rate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa int 32: 4 Byte Signed Fixed Width Integer Nullable
  index, mantissa_int_32 = cme_brokertec_ust_sbe_v10_1.mantissa_int_32.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_brokertec_ust_sbe_v10_1.exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Coupon Rate
cme_brokertec_ust_sbe_v10_1.coupon_rate.dissect = function(buffer, offset, packet, parent)
  if show.coupon_rate then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.coupon_rate, buffer(offset, 0))
    local index = cme_brokertec_ust_sbe_v10_1.coupon_rate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ust_sbe_v10_1.coupon_rate.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ust_sbe_v10_1.coupon_rate.fields(buffer, offset, packet, parent)
  end
end

-- Security Alt Id Source
cme_brokertec_ust_sbe_v10_1.security_alt_id_source = {}

-- Size: Security Alt Id Source
cme_brokertec_ust_sbe_v10_1.security_alt_id_source.size = 1

-- Display: Security Alt Id Source
cme_brokertec_ust_sbe_v10_1.security_alt_id_source.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id Source: No Value"
  end

  return "Security Alt Id Source: "..value
end

-- Dissect: Security Alt Id Source
cme_brokertec_ust_sbe_v10_1.security_alt_id_source.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.security_alt_id_source.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_brokertec_ust_sbe_v10_1.security_alt_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.security_alt_id_source, range, value, display)

  return offset + length, value
end

-- Security Alt Id
cme_brokertec_ust_sbe_v10_1.security_alt_id = {}

-- Size: Security Alt Id
cme_brokertec_ust_sbe_v10_1.security_alt_id.size = 12

-- Display: Security Alt Id
cme_brokertec_ust_sbe_v10_1.security_alt_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id: No Value"
  end

  return "Security Alt Id: "..value
end

-- Dissect: Security Alt Id
cme_brokertec_ust_sbe_v10_1.security_alt_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.security_alt_id.size
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

  local display = cme_brokertec_ust_sbe_v10_1.security_alt_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.security_alt_id, range, value, display)

  return offset + length, value
end

-- Maturity Date
cme_brokertec_ust_sbe_v10_1.maturity_date = {}

-- Size: Maturity Date
cme_brokertec_ust_sbe_v10_1.maturity_date.size = 2

-- Display: Maturity Date
cme_brokertec_ust_sbe_v10_1.maturity_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cme_brokertec_ust_sbe_v10_1.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Symbol
cme_brokertec_ust_sbe_v10_1.symbol = {}

-- Size: Symbol
cme_brokertec_ust_sbe_v10_1.symbol.size = 20

-- Display: Symbol
cme_brokertec_ust_sbe_v10_1.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cme_brokertec_ust_sbe_v10_1.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.symbol.size
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

  local display = cme_brokertec_ust_sbe_v10_1.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Trade Volume
cme_brokertec_ust_sbe_v10_1.trade_volume = {}

-- Size: Trade Volume
cme_brokertec_ust_sbe_v10_1.trade_volume.size = 4

-- Display: Trade Volume
cme_brokertec_ust_sbe_v10_1.trade_volume.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Trade Volume: No Value"
  end

  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
cme_brokertec_ust_sbe_v10_1.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.trade_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Md Price Level
cme_brokertec_ust_sbe_v10_1.md_price_level = {}

-- Size: Md Price Level
cme_brokertec_ust_sbe_v10_1.md_price_level.size = 1

-- Display: Md Price Level
cme_brokertec_ust_sbe_v10_1.md_price_level.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Md Price Level: No Value"
  end

  return "Md Price Level: "..value
end

-- Dissect: Md Price Level
cme_brokertec_ust_sbe_v10_1.md_price_level.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.md_price_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1.md_price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.md_price_level, range, value, display)

  return offset + length, value
end

-- Md Entry Size
cme_brokertec_ust_sbe_v10_1.md_entry_size = {}

-- Size: Md Entry Size
cme_brokertec_ust_sbe_v10_1.md_entry_size.size = 4

-- Display: Md Entry Size
cme_brokertec_ust_sbe_v10_1.md_entry_size.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
cme_brokertec_ust_sbe_v10_1.md_entry_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.md_entry_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1.md_entry_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Mantissa int 64
cme_brokertec_ust_sbe_v10_1.mantissa_int_64 = {}

-- Size: Mantissa int 64
cme_brokertec_ust_sbe_v10_1.mantissa_int_64.size = 8

-- Display: Mantissa int 64
cme_brokertec_ust_sbe_v10_1.mantissa_int_64.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Mantissa int 64: No Value"
  end

  return "Mantissa int 64: "..value
end

-- Dissect: Mantissa int 64
cme_brokertec_ust_sbe_v10_1.mantissa_int_64.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.mantissa_int_64.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cme_brokertec_ust_sbe_v10_1.mantissa_int_64.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.mantissa_int_64, range, value, display)

  return offset + length, value
end

-- Md Entry Px
cme_brokertec_ust_sbe_v10_1.md_entry_px = {}

-- Calculate size of: Md Entry Px
cme_brokertec_ust_sbe_v10_1.md_entry_px.size = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1.mantissa_int_64.size

  index = index + cme_brokertec_ust_sbe_v10_1.exponent.size

  return index
end

-- Display: Md Entry Px
cme_brokertec_ust_sbe_v10_1.md_entry_px.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Entry Px
cme_brokertec_ust_sbe_v10_1.md_entry_px.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa int 64: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa_int_64 = cme_brokertec_ust_sbe_v10_1.mantissa_int_64.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_brokertec_ust_sbe_v10_1.exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Entry Px
cme_brokertec_ust_sbe_v10_1.md_entry_px.dissect = function(buffer, offset, packet, parent)
  if show.md_entry_px then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.md_entry_px, buffer(offset, 0))
    local index = cme_brokertec_ust_sbe_v10_1.md_entry_px.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ust_sbe_v10_1.md_entry_px.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ust_sbe_v10_1.md_entry_px.fields(buffer, offset, packet, parent)
  end
end

-- Md Entry Type
cme_brokertec_ust_sbe_v10_1.md_entry_type = {}

-- Size: Md Entry Type
cme_brokertec_ust_sbe_v10_1.md_entry_type.size = 1

-- Display: Md Entry Type
cme_brokertec_ust_sbe_v10_1.md_entry_type.display = function(value)
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
cme_brokertec_ust_sbe_v10_1.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.md_entry_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_brokertec_ust_sbe_v10_1.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Md Update Action
cme_brokertec_ust_sbe_v10_1.md_update_action = {}

-- Size: Md Update Action
cme_brokertec_ust_sbe_v10_1.md_update_action.size = 1

-- Display: Md Update Action
cme_brokertec_ust_sbe_v10_1.md_update_action.display = function(value)
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
cme_brokertec_ust_sbe_v10_1.md_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.md_update_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1.md_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Btec Group
cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_group = {}

-- Calculate size of: M D Incremental Refresh Btec Group
cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1.md_update_action.size

  index = index + cme_brokertec_ust_sbe_v10_1.md_entry_type.size

  index = index + cme_brokertec_ust_sbe_v10_1.md_entry_px.size(buffer, offset + index)

  index = index + cme_brokertec_ust_sbe_v10_1.md_entry_size.size

  index = index + cme_brokertec_ust_sbe_v10_1.md_price_level.size

  index = index + cme_brokertec_ust_sbe_v10_1.trade_volume.size

  index = index + cme_brokertec_ust_sbe_v10_1.symbol.size

  index = index + cme_brokertec_ust_sbe_v10_1.maturity_date.size

  index = index + cme_brokertec_ust_sbe_v10_1.security_alt_id.size

  index = index + cme_brokertec_ust_sbe_v10_1.security_alt_id_source.size

  index = index + cme_brokertec_ust_sbe_v10_1.coupon_rate.size(buffer, offset + index)

  index = index + cme_brokertec_ust_sbe_v10_1.trade_condition.size

  index = index + cme_brokertec_ust_sbe_v10_1.price_type.size

  return index
end

-- Display: M D Incremental Refresh Btec Group
cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Btec Group
cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_btec_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Btec Group Index
  if m_d_incremental_refresh_btec_group_index ~= nil then
    local iteration = parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.m_d_incremental_refresh_btec_group_index, m_d_incremental_refresh_btec_group_index)
    iteration:set_generated()
  end

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, md_update_action = cme_brokertec_ust_sbe_v10_1.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String Enum with 11 values
  index, md_entry_type = cme_brokertec_ust_sbe_v10_1.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cme_brokertec_ust_sbe_v10_1.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size = cme_brokertec_ust_sbe_v10_1.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Price Level: 1 Byte Unsigned Fixed Width Integer Nullable
  index, md_price_level = cme_brokertec_ust_sbe_v10_1.md_price_level.dissect(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_volume = cme_brokertec_ust_sbe_v10_1.trade_volume.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_brokertec_ust_sbe_v10_1.symbol.dissect(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_brokertec_ust_sbe_v10_1.maturity_date.dissect(buffer, index, packet, parent)

  -- Security Alt Id: 12 Byte Ascii String
  index, security_alt_id = cme_brokertec_ust_sbe_v10_1.security_alt_id.dissect(buffer, index, packet, parent)

  -- Security Alt Id Source: 1 Byte Ascii String
  index, security_alt_id_source = cme_brokertec_ust_sbe_v10_1.security_alt_id_source.dissect(buffer, index, packet, parent)

  -- Coupon Rate: Struct of 2 fields
  index, coupon_rate = cme_brokertec_ust_sbe_v10_1.coupon_rate.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String
  index, trade_condition = cme_brokertec_ust_sbe_v10_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_type = cme_brokertec_ust_sbe_v10_1.price_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Btec Group
cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_btec_group_index)
  if show.m_d_incremental_refresh_btec_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.m_d_incremental_refresh_btec_group, buffer(offset, 0))
    local index = cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_btec_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_btec_group_index)
  end
end

-- Num In Group uint 8
cme_brokertec_ust_sbe_v10_1.num_in_group_uint_8 = {}

-- Size: Num In Group uint 8
cme_brokertec_ust_sbe_v10_1.num_in_group_uint_8.size = 1

-- Display: Num In Group uint 8
cme_brokertec_ust_sbe_v10_1.num_in_group_uint_8.display = function(value)
  return "Num In Group uint 8: "..value
end

-- Dissect: Num In Group uint 8
cme_brokertec_ust_sbe_v10_1.num_in_group_uint_8.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.num_in_group_uint_8.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1.num_in_group_uint_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.num_in_group_uint_8, range, value, display)

  return offset + length, value
end

-- Block Length
cme_brokertec_ust_sbe_v10_1.block_length = {}

-- Size: Block Length
cme_brokertec_ust_sbe_v10_1.block_length.size = 2

-- Display: Block Length
cme_brokertec_ust_sbe_v10_1.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_brokertec_ust_sbe_v10_1.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.block_length, range, value, display)

  return offset + length, value
end

-- Group Size
cme_brokertec_ust_sbe_v10_1.group_size = {}

-- Calculate size of: Group Size
cme_brokertec_ust_sbe_v10_1.group_size.size = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1.block_length.size

  index = index + cme_brokertec_ust_sbe_v10_1.num_in_group_uint_8.size

  return index
end

-- Display: Group Size
cme_brokertec_ust_sbe_v10_1.group_size.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
cme_brokertec_ust_sbe_v10_1.group_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_brokertec_ust_sbe_v10_1.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group uint 8: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group_uint_8 = cme_brokertec_ust_sbe_v10_1.num_in_group_uint_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_brokertec_ust_sbe_v10_1.group_size.dissect = function(buffer, offset, packet, parent)
  if show.group_size then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.group_size, buffer(offset, 0))
    local index = cme_brokertec_ust_sbe_v10_1.group_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ust_sbe_v10_1.group_size.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ust_sbe_v10_1.group_size.fields(buffer, offset, packet, parent)
  end
end

-- M D Incremental Refresh Btec Groups
cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_groups = {}

-- Calculate size of: M D Incremental Refresh Btec Groups
cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_btec_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_btec_group_count * 62

  return index
end

-- Display: M D Incremental Refresh Btec Groups
cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Btec Groups
cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_brokertec_ust_sbe_v10_1.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Btec Group
  for m_d_incremental_refresh_btec_group_index = 1, num_in_group_uint_8 do
    index, m_d_incremental_refresh_btec_group = cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_btec_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Btec Groups
cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_btec_groups then
    local length = cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.m_d_incremental_refresh_btec_groups, range, display)
  end

  return cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_groups.fields(buffer, offset, packet, parent)
end

-- Transact Time
cme_brokertec_ust_sbe_v10_1.transact_time = {}

-- Size: Transact Time
cme_brokertec_ust_sbe_v10_1.transact_time.size = 8

-- Display: Transact Time
cme_brokertec_ust_sbe_v10_1.transact_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
cme_brokertec_ust_sbe_v10_1.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_brokertec_ust_sbe_v10_1.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Trade Date
cme_brokertec_ust_sbe_v10_1.trade_date = {}

-- Size: Trade Date
cme_brokertec_ust_sbe_v10_1.trade_date.size = 2

-- Display: Trade Date
cme_brokertec_ust_sbe_v10_1.trade_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
cme_brokertec_ust_sbe_v10_1.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Md Incremental Refresh Btec
cme_brokertec_ust_sbe_v10_1.md_incremental_refresh_btec = {}

-- Calculate size of: Md Incremental Refresh Btec
cme_brokertec_ust_sbe_v10_1.md_incremental_refresh_btec.size = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1.trade_date.size

  index = index + cme_brokertec_ust_sbe_v10_1.transact_time.size

  index = index + cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Btec
cme_brokertec_ust_sbe_v10_1.md_incremental_refresh_btec.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Btec
cme_brokertec_ust_sbe_v10_1.md_incremental_refresh_btec.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_brokertec_ust_sbe_v10_1.trade_date.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_brokertec_ust_sbe_v10_1.transact_time.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Btec Groups: Struct of 2 fields
  index, m_d_incremental_refresh_btec_groups = cme_brokertec_ust_sbe_v10_1.m_d_incremental_refresh_btec_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Btec
cme_brokertec_ust_sbe_v10_1.md_incremental_refresh_btec.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_btec then
    local length = cme_brokertec_ust_sbe_v10_1.md_incremental_refresh_btec.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_brokertec_ust_sbe_v10_1.md_incremental_refresh_btec.display(buffer, packet, parent)
    parent = parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.md_incremental_refresh_btec, range, display)
  end

  return cme_brokertec_ust_sbe_v10_1.md_incremental_refresh_btec.fields(buffer, offset, packet, parent)
end

-- Payload
cme_brokertec_ust_sbe_v10_1.payload = {}

-- Calculate runtime size of: Payload
cme_brokertec_ust_sbe_v10_1.payload.size = function(buffer, offset, template_id)
  -- Size of Md Incremental Refresh Btec
  if template_id == 405 then
    return cme_brokertec_ust_sbe_v10_1.md_incremental_refresh_btec.size(buffer, offset)
  end
  -- Size of Admin Heartbeat
  if template_id == 411 then
    return 0
  end

  return 0
end

-- Display: Payload
cme_brokertec_ust_sbe_v10_1.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cme_brokertec_ust_sbe_v10_1.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Md Incremental Refresh Btec
  if template_id == 405 then
    return cme_brokertec_ust_sbe_v10_1.md_incremental_refresh_btec.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Admin Heartbeat
  if template_id == 411 then
  end

  return offset
end

-- Dissect: Payload
cme_brokertec_ust_sbe_v10_1.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return cme_brokertec_ust_sbe_v10_1.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = cme_brokertec_ust_sbe_v10_1.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cme_brokertec_ust_sbe_v10_1.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.payload, range, display)

  return cme_brokertec_ust_sbe_v10_1.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
cme_brokertec_ust_sbe_v10_1.version = {}

-- Size: Version
cme_brokertec_ust_sbe_v10_1.version.size = 2

-- Display: Version
cme_brokertec_ust_sbe_v10_1.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
cme_brokertec_ust_sbe_v10_1.version.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
cme_brokertec_ust_sbe_v10_1.schema_id = {}

-- Size: Schema Id
cme_brokertec_ust_sbe_v10_1.schema_id.size = 2

-- Display: Schema Id
cme_brokertec_ust_sbe_v10_1.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
cme_brokertec_ust_sbe_v10_1.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
cme_brokertec_ust_sbe_v10_1.template_id = {}

-- Size: Template Id
cme_brokertec_ust_sbe_v10_1.template_id.size = 2

-- Display: Template Id
cme_brokertec_ust_sbe_v10_1.template_id.display = function(value)
  if value == 405 then
    return "Template Id: Md Incremental Refresh Btec (405)"
  end
  if value == 411 then
    return "Template Id: Admin Heartbeat (411)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
cme_brokertec_ust_sbe_v10_1.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Message Header
cme_brokertec_ust_sbe_v10_1.message_header = {}

-- Calculate size of: Message Header
cme_brokertec_ust_sbe_v10_1.message_header.size = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1.block_length.size

  index = index + cme_brokertec_ust_sbe_v10_1.template_id.size

  index = index + cme_brokertec_ust_sbe_v10_1.schema_id.size

  index = index + cme_brokertec_ust_sbe_v10_1.version.size

  return index
end

-- Display: Message Header
cme_brokertec_ust_sbe_v10_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_brokertec_ust_sbe_v10_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_brokertec_ust_sbe_v10_1.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, template_id = cme_brokertec_ust_sbe_v10_1.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = cme_brokertec_ust_sbe_v10_1.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = cme_brokertec_ust_sbe_v10_1.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_brokertec_ust_sbe_v10_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.message_header, buffer(offset, 0))
    local index = cme_brokertec_ust_sbe_v10_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ust_sbe_v10_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ust_sbe_v10_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Size
cme_brokertec_ust_sbe_v10_1.message_size = {}

-- Size: Message Size
cme_brokertec_ust_sbe_v10_1.message_size.size = 2

-- Display: Message Size
cme_brokertec_ust_sbe_v10_1.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_brokertec_ust_sbe_v10_1.message_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message
cme_brokertec_ust_sbe_v10_1.message = {}

-- Calculate size of: Message
cme_brokertec_ust_sbe_v10_1.message.size = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1.message_size.size

  index = index + cme_brokertec_ust_sbe_v10_1.message_header.size(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + cme_brokertec_ust_sbe_v10_1.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
cme_brokertec_ust_sbe_v10_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cme_brokertec_ust_sbe_v10_1.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_brokertec_ust_sbe_v10_1.message_size.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_brokertec_ust_sbe_v10_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 2 branches
  index = cme_brokertec_ust_sbe_v10_1.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cme_brokertec_ust_sbe_v10_1.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = cme_brokertec_ust_sbe_v10_1.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_brokertec_ust_sbe_v10_1.message.display(buffer, packet, parent)
    parent = parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.message, range, display)
  end

  return cme_brokertec_ust_sbe_v10_1.message.fields(buffer, offset, packet, parent)
end

-- Sending Time
cme_brokertec_ust_sbe_v10_1.sending_time = {}

-- Size: Sending Time
cme_brokertec_ust_sbe_v10_1.sending_time.size = 8

-- Display: Sending Time
cme_brokertec_ust_sbe_v10_1.sending_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
cme_brokertec_ust_sbe_v10_1.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_brokertec_ust_sbe_v10_1.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
cme_brokertec_ust_sbe_v10_1.message_sequence_number = {}

-- Size: Message Sequence Number
cme_brokertec_ust_sbe_v10_1.message_sequence_number.size = 4

-- Display: Message Sequence Number
cme_brokertec_ust_sbe_v10_1.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
cme_brokertec_ust_sbe_v10_1.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1.message_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Binary Packet Header
cme_brokertec_ust_sbe_v10_1.binary_packet_header = {}

-- Calculate size of: Binary Packet Header
cme_brokertec_ust_sbe_v10_1.binary_packet_header.size = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1.message_sequence_number.size

  index = index + cme_brokertec_ust_sbe_v10_1.sending_time.size

  return index
end

-- Display: Binary Packet Header
cme_brokertec_ust_sbe_v10_1.binary_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Packet Header
cme_brokertec_ust_sbe_v10_1.binary_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = cme_brokertec_ust_sbe_v10_1.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_brokertec_ust_sbe_v10_1.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
cme_brokertec_ust_sbe_v10_1.binary_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.binary_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ust_sbe_v10_1.fields.binary_packet_header, buffer(offset, 0))
    local index = cme_brokertec_ust_sbe_v10_1.binary_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ust_sbe_v10_1.binary_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ust_sbe_v10_1.binary_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cme_brokertec_ust_sbe_v10_1.packet = {}

-- Dissect Packet
cme_brokertec_ust_sbe_v10_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = cme_brokertec_ust_sbe_v10_1.binary_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index, message = cme_brokertec_ust_sbe_v10_1.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cme_brokertec_ust_sbe_v10_1.init()
end

-- Dissector for Cme BrokerTec Ust Sbe 10.1
function omi_cme_brokertec_ust_sbe_v10_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cme_brokertec_ust_sbe_v10_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_cme_brokertec_ust_sbe_v10_1, buffer(), omi_cme_brokertec_ust_sbe_v10_1.description, "("..buffer:len().." Bytes)")
  return cme_brokertec_ust_sbe_v10_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cme_brokertec_ust_sbe_v10_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cme_brokertec_ust_sbe_v10_1.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
cme_brokertec_ust_sbe_v10_1.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(18, 2):le_uint()

  if value == 10 then
    return true
  end

  return false
end

-- Verify Version Field
cme_brokertec_ust_sbe_v10_1.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme BrokerTec Ust Sbe 10.1
local function omi_cme_brokertec_ust_sbe_v10_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_brokertec_ust_sbe_v10_1.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not cme_brokertec_ust_sbe_v10_1.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not cme_brokertec_ust_sbe_v10_1.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_brokertec_ust_sbe_v10_1
  omi_cme_brokertec_ust_sbe_v10_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme BrokerTec Ust Sbe 10.1
omi_cme_brokertec_ust_sbe_v10_1:register_heuristic("udp", omi_cme_brokertec_ust_sbe_v10_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Mercantile Exchange
--   Version: 10.1
--   Date: Thursday, April 13, 2023
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
