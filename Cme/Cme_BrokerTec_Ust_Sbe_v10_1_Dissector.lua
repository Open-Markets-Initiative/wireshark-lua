-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme BrokerTec Ust Sbe 10.1 Protocol
local cme_brokertec_ust_sbe_v10_1 = Proto("Cme.BrokerTec.Ust.Sbe.v10.1.Lua", "Cme BrokerTec Ust Sbe 10.1")

-- Component Tables
local show = {}
local format = {}
local cme_brokertec_ust_sbe_v10_1_display = {}
local cme_brokertec_ust_sbe_v10_1_dissect = {}
local cme_brokertec_ust_sbe_v10_1_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme BrokerTec Ust Sbe 10.1 Fields
cme_brokertec_ust_sbe_v10_1.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.brokertec.ust.sbe.v10.1.binarypacketheader", ftypes.STRING)
cme_brokertec_ust_sbe_v10_1.fields.block_length = ProtoField.new("Block Length", "cme.brokertec.ust.sbe.v10.1.blocklength", ftypes.UINT16)
cme_brokertec_ust_sbe_v10_1.fields.coupon_rate = ProtoField.new("Coupon Rate", "cme.brokertec.ust.sbe.v10.1.couponrate", ftypes.STRING)
cme_brokertec_ust_sbe_v10_1.fields.exponent = ProtoField.new("Exponent", "cme.brokertec.ust.sbe.v10.1.exponent", ftypes.INT8)
cme_brokertec_ust_sbe_v10_1.fields.group_size = ProtoField.new("Group Size", "cme.brokertec.ust.sbe.v10.1.groupsize", ftypes.STRING)
cme_brokertec_ust_sbe_v10_1.fields.m_d_incremental_refresh_btec_group = ProtoField.new("M D Incremental Refresh Btec Group", "cme.brokertec.ust.sbe.v10.1.mdincrementalrefreshbtecgroup", ftypes.STRING)
cme_brokertec_ust_sbe_v10_1.fields.m_d_incremental_refresh_btec_groups = ProtoField.new("M D Incremental Refresh Btec Groups", "cme.brokertec.ust.sbe.v10.1.mdincrementalrefreshbtecgroups", ftypes.STRING)
cme_brokertec_ust_sbe_v10_1.fields.mantissa_int_32 = ProtoField.new("Mantissa int 32", "cme.brokertec.ust.sbe.v10.1.mantissaint32", ftypes.INT32)
cme_brokertec_ust_sbe_v10_1.fields.mantissa_int_64 = ProtoField.new("Mantissa int 64", "cme.brokertec.ust.sbe.v10.1.mantissaint64", ftypes.INT64)
cme_brokertec_ust_sbe_v10_1.fields.maturity_date = ProtoField.new("Maturity Date", "cme.brokertec.ust.sbe.v10.1.maturitydate", ftypes.UINT16)
cme_brokertec_ust_sbe_v10_1.fields.md_entry_px = ProtoField.new("Md Entry Px", "cme.brokertec.ust.sbe.v10.1.mdentrypx", ftypes.STRING)
cme_brokertec_ust_sbe_v10_1.fields.md_entry_size = ProtoField.new("Md Entry Size", "cme.brokertec.ust.sbe.v10.1.mdentrysize", ftypes.UINT32)
cme_brokertec_ust_sbe_v10_1.fields.md_entry_type = ProtoField.new("Md Entry Type", "cme.brokertec.ust.sbe.v10.1.mdentrytype", ftypes.STRING)
cme_brokertec_ust_sbe_v10_1.fields.md_price_level = ProtoField.new("Md Price Level", "cme.brokertec.ust.sbe.v10.1.mdpricelevel", ftypes.UINT8)
cme_brokertec_ust_sbe_v10_1.fields.md_update_action = ProtoField.new("Md Update Action", "cme.brokertec.ust.sbe.v10.1.mdupdateaction", ftypes.UINT8)
cme_brokertec_ust_sbe_v10_1.fields.message = ProtoField.new("Message", "cme.brokertec.ust.sbe.v10.1.message", ftypes.STRING)
cme_brokertec_ust_sbe_v10_1.fields.message_header = ProtoField.new("Message Header", "cme.brokertec.ust.sbe.v10.1.messageheader", ftypes.STRING)
cme_brokertec_ust_sbe_v10_1.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cme.brokertec.ust.sbe.v10.1.messagesequencenumber", ftypes.UINT32)
cme_brokertec_ust_sbe_v10_1.fields.message_size = ProtoField.new("Message Size", "cme.brokertec.ust.sbe.v10.1.messagesize", ftypes.UINT16)
cme_brokertec_ust_sbe_v10_1.fields.num_in_group_uint_8 = ProtoField.new("Num In Group uint 8", "cme.brokertec.ust.sbe.v10.1.numingroupuint8", ftypes.UINT8)
cme_brokertec_ust_sbe_v10_1.fields.packet = ProtoField.new("Packet", "cme.brokertec.ust.sbe.v10.1.packet", ftypes.STRING)
cme_brokertec_ust_sbe_v10_1.fields.payload = ProtoField.new("Payload", "cme.brokertec.ust.sbe.v10.1.payload", ftypes.STRING)
cme_brokertec_ust_sbe_v10_1.fields.price_type = ProtoField.new("Price Type", "cme.brokertec.ust.sbe.v10.1.pricetype", ftypes.UINT8)
cme_brokertec_ust_sbe_v10_1.fields.schema_id = ProtoField.new("Schema Id", "cme.brokertec.ust.sbe.v10.1.schemaid", ftypes.UINT16)
cme_brokertec_ust_sbe_v10_1.fields.security_alt_id = ProtoField.new("Security Alt Id", "cme.brokertec.ust.sbe.v10.1.securityaltid", ftypes.STRING)
cme_brokertec_ust_sbe_v10_1.fields.security_alt_id_source = ProtoField.new("Security Alt Id Source", "cme.brokertec.ust.sbe.v10.1.securityaltidsource", ftypes.STRING)
cme_brokertec_ust_sbe_v10_1.fields.sending_time = ProtoField.new("Sending Time", "cme.brokertec.ust.sbe.v10.1.sendingtime", ftypes.UINT64)
cme_brokertec_ust_sbe_v10_1.fields.symbol = ProtoField.new("Symbol", "cme.brokertec.ust.sbe.v10.1.symbol", ftypes.STRING)
cme_brokertec_ust_sbe_v10_1.fields.template_id = ProtoField.new("Template Id", "cme.brokertec.ust.sbe.v10.1.templateid", ftypes.UINT16)
cme_brokertec_ust_sbe_v10_1.fields.trade_condition = ProtoField.new("Trade Condition", "cme.brokertec.ust.sbe.v10.1.tradecondition", ftypes.STRING)
cme_brokertec_ust_sbe_v10_1.fields.trade_date = ProtoField.new("Trade Date", "cme.brokertec.ust.sbe.v10.1.tradedate", ftypes.UINT16)
cme_brokertec_ust_sbe_v10_1.fields.trade_volume = ProtoField.new("Trade Volume", "cme.brokertec.ust.sbe.v10.1.tradevolume", ftypes.UINT32)
cme_brokertec_ust_sbe_v10_1.fields.transact_time = ProtoField.new("Transact Time", "cme.brokertec.ust.sbe.v10.1.transacttime", ftypes.UINT64)
cme_brokertec_ust_sbe_v10_1.fields.version = ProtoField.new("Version", "cme.brokertec.ust.sbe.v10.1.version", ftypes.UINT16)

-- Cme BrokerTec Ust Sbe 10.1 messages
cme_brokertec_ust_sbe_v10_1.fields.md_incremental_refresh_btec = ProtoField.new("Md Incremental Refresh Btec", "cme.brokertec.ust.sbe.v10.1.mdincrementalrefreshbtec", ftypes.STRING)

-- Cme BrokerTec Ust Sbe 10.1 generated fields
cme_brokertec_ust_sbe_v10_1.fields.m_d_incremental_refresh_btec_group_index = ProtoField.new("M D Incremental Refresh Btec Group Index", "cme.brokertec.ust.sbe.v10.1.mdincrementalrefreshbtecgroupindex", ftypes.UINT16)

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
cme_brokertec_ust_sbe_v10_1.prefs.show_binary_packet_header = Pref.bool("Show Binary Packet Header", show.binary_packet_header, "Parse and add Binary Packet Header to protocol tree")
cme_brokertec_ust_sbe_v10_1.prefs.show_coupon_rate = Pref.bool("Show Coupon Rate", show.coupon_rate, "Parse and add Coupon Rate to protocol tree")
cme_brokertec_ust_sbe_v10_1.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
cme_brokertec_ust_sbe_v10_1.prefs.show_m_d_incremental_refresh_btec_group = Pref.bool("Show M D Incremental Refresh Btec Group", show.m_d_incremental_refresh_btec_group, "Parse and add M D Incremental Refresh Btec Group to protocol tree")
cme_brokertec_ust_sbe_v10_1.prefs.show_m_d_incremental_refresh_btec_groups = Pref.bool("Show M D Incremental Refresh Btec Groups", show.m_d_incremental_refresh_btec_groups, "Parse and add M D Incremental Refresh Btec Groups to protocol tree")
cme_brokertec_ust_sbe_v10_1.prefs.show_md_entry_px = Pref.bool("Show Md Entry Px", show.md_entry_px, "Parse and add Md Entry Px to protocol tree")
cme_brokertec_ust_sbe_v10_1.prefs.show_md_incremental_refresh_btec = Pref.bool("Show Md Incremental Refresh Btec", show.md_incremental_refresh_btec, "Parse and add Md Incremental Refresh Btec to protocol tree")
cme_brokertec_ust_sbe_v10_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cme_brokertec_ust_sbe_v10_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cme_brokertec_ust_sbe_v10_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cme_brokertec_ust_sbe_v10_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cme_brokertec_ust_sbe_v10_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.binary_packet_header ~= cme_brokertec_ust_sbe_v10_1.prefs.show_binary_packet_header then
    show.binary_packet_header = cme_brokertec_ust_sbe_v10_1.prefs.show_binary_packet_header
    changed = true
  end
  if show.coupon_rate ~= cme_brokertec_ust_sbe_v10_1.prefs.show_coupon_rate then
    show.coupon_rate = cme_brokertec_ust_sbe_v10_1.prefs.show_coupon_rate
    changed = true
  end
  if show.group_size ~= cme_brokertec_ust_sbe_v10_1.prefs.show_group_size then
    show.group_size = cme_brokertec_ust_sbe_v10_1.prefs.show_group_size
    changed = true
  end
  if show.m_d_incremental_refresh_btec_group ~= cme_brokertec_ust_sbe_v10_1.prefs.show_m_d_incremental_refresh_btec_group then
    show.m_d_incremental_refresh_btec_group = cme_brokertec_ust_sbe_v10_1.prefs.show_m_d_incremental_refresh_btec_group
    changed = true
  end
  if show.m_d_incremental_refresh_btec_groups ~= cme_brokertec_ust_sbe_v10_1.prefs.show_m_d_incremental_refresh_btec_groups then
    show.m_d_incremental_refresh_btec_groups = cme_brokertec_ust_sbe_v10_1.prefs.show_m_d_incremental_refresh_btec_groups
    changed = true
  end
  if show.md_entry_px ~= cme_brokertec_ust_sbe_v10_1.prefs.show_md_entry_px then
    show.md_entry_px = cme_brokertec_ust_sbe_v10_1.prefs.show_md_entry_px
    changed = true
  end
  if show.md_incremental_refresh_btec ~= cme_brokertec_ust_sbe_v10_1.prefs.show_md_incremental_refresh_btec then
    show.md_incremental_refresh_btec = cme_brokertec_ust_sbe_v10_1.prefs.show_md_incremental_refresh_btec
    changed = true
  end
  if show.message ~= cme_brokertec_ust_sbe_v10_1.prefs.show_message then
    show.message = cme_brokertec_ust_sbe_v10_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= cme_brokertec_ust_sbe_v10_1.prefs.show_message_header then
    show.message_header = cme_brokertec_ust_sbe_v10_1.prefs.show_message_header
    changed = true
  end
  if show.packet ~= cme_brokertec_ust_sbe_v10_1.prefs.show_packet then
    show.packet = cme_brokertec_ust_sbe_v10_1.prefs.show_packet
    changed = true
  end
  if show.payload ~= cme_brokertec_ust_sbe_v10_1.prefs.show_payload then
    show.payload = cme_brokertec_ust_sbe_v10_1.prefs.show_payload
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

-- Size: Price Type
cme_brokertec_ust_sbe_v10_1_size_of.price_type = 1

-- Display: Price Type
cme_brokertec_ust_sbe_v10_1_display.price_type = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Type: No Value"
  end

  return "Price Type: "..value
end

-- Dissect: Price Type
cme_brokertec_ust_sbe_v10_1_dissect.price_type = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.price_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1_display.price_type(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.price_type, range, value, display)

  return offset + length, value
end

-- Size: Trade Condition
cme_brokertec_ust_sbe_v10_1_size_of.trade_condition = 1

-- Display: Trade Condition
cme_brokertec_ust_sbe_v10_1_display.trade_condition = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Condition: No Value"
  end

  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
cme_brokertec_ust_sbe_v10_1_dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.trade_condition
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_brokertec_ust_sbe_v10_1_display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Size: Exponent
cme_brokertec_ust_sbe_v10_1_size_of.exponent = 1

-- Display: Exponent
cme_brokertec_ust_sbe_v10_1_display.exponent = function(value)
  -- Check if field has value
  if value == 127 then
    return "Exponent: No Value"
  end

  return "Exponent: "..value
end

-- Dissect: Exponent
cme_brokertec_ust_sbe_v10_1_dissect.exponent = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.exponent
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_brokertec_ust_sbe_v10_1_display.exponent(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.exponent, range, value, display)

  return offset + length, value
end

-- Size: Mantissa int 32
cme_brokertec_ust_sbe_v10_1_size_of.mantissa_int_32 = 4

-- Display: Mantissa int 32
cme_brokertec_ust_sbe_v10_1_display.mantissa_int_32 = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Mantissa int 32: No Value"
  end

  return "Mantissa int 32: "..value
end

-- Dissect: Mantissa int 32
cme_brokertec_ust_sbe_v10_1_dissect.mantissa_int_32 = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.mantissa_int_32
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_brokertec_ust_sbe_v10_1_display.mantissa_int_32(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.mantissa_int_32, range, value, display)

  return offset + length, value
end

-- Calculate size of: Coupon Rate
cme_brokertec_ust_sbe_v10_1_size_of.coupon_rate = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.mantissa_int_32

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.exponent

  return index
end

-- Display: Coupon Rate
cme_brokertec_ust_sbe_v10_1_display.coupon_rate = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Coupon Rate
cme_brokertec_ust_sbe_v10_1_dissect.coupon_rate_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa int 32: 4 Byte Signed Fixed Width Integer Nullable
  index, mantissa_int_32 = cme_brokertec_ust_sbe_v10_1_dissect.mantissa_int_32(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_brokertec_ust_sbe_v10_1_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa_int_32, exponent
end

-- Dissect: Coupon Rate
cme_brokertec_ust_sbe_v10_1_dissect.coupon_rate = function(buffer, offset, packet, parent)
  if show.coupon_rate then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_brokertec_ust_sbe_v10_1.fields.coupon_rate, buffer(offset, 0))
    local index = cme_brokertec_ust_sbe_v10_1_dissect.coupon_rate_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ust_sbe_v10_1_display.coupon_rate(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ust_sbe_v10_1_dissect.coupon_rate_fields(buffer, offset, packet, parent)
  end
end

-- Size: Security Alt Id Source
cme_brokertec_ust_sbe_v10_1_size_of.security_alt_id_source = 1

-- Display: Security Alt Id Source
cme_brokertec_ust_sbe_v10_1_display.security_alt_id_source = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id Source: No Value"
  end

  return "Security Alt Id Source: "..value
end

-- Dissect: Security Alt Id Source
cme_brokertec_ust_sbe_v10_1_dissect.security_alt_id_source = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.security_alt_id_source
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_brokertec_ust_sbe_v10_1_display.security_alt_id_source(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.security_alt_id_source, range, value, display)

  return offset + length, value
end

-- Size: Security Alt Id
cme_brokertec_ust_sbe_v10_1_size_of.security_alt_id = 12

-- Display: Security Alt Id
cme_brokertec_ust_sbe_v10_1_display.security_alt_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id: No Value"
  end

  return "Security Alt Id: "..value
end

-- Dissect: Security Alt Id
cme_brokertec_ust_sbe_v10_1_dissect.security_alt_id = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.security_alt_id
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

  local display = cme_brokertec_ust_sbe_v10_1_display.security_alt_id(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.security_alt_id, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
cme_brokertec_ust_sbe_v10_1_size_of.maturity_date = 2

-- Display: Maturity Date
cme_brokertec_ust_sbe_v10_1_display.maturity_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cme_brokertec_ust_sbe_v10_1_dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.maturity_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1_display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Symbol
cme_brokertec_ust_sbe_v10_1_size_of.symbol = 20

-- Display: Symbol
cme_brokertec_ust_sbe_v10_1_display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cme_brokertec_ust_sbe_v10_1_dissect.symbol = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.symbol
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

  local display = cme_brokertec_ust_sbe_v10_1_display.symbol(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Trade Volume
cme_brokertec_ust_sbe_v10_1_size_of.trade_volume = 4

-- Display: Trade Volume
cme_brokertec_ust_sbe_v10_1_display.trade_volume = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Trade Volume: No Value"
  end

  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
cme_brokertec_ust_sbe_v10_1_dissect.trade_volume = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.trade_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1_display.trade_volume(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Size: Md Price Level
cme_brokertec_ust_sbe_v10_1_size_of.md_price_level = 1

-- Display: Md Price Level
cme_brokertec_ust_sbe_v10_1_display.md_price_level = function(value)
  -- Check if field has value
  if value == 255 then
    return "Md Price Level: No Value"
  end

  return "Md Price Level: "..value
end

-- Dissect: Md Price Level
cme_brokertec_ust_sbe_v10_1_dissect.md_price_level = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.md_price_level
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1_display.md_price_level(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.md_price_level, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Size
cme_brokertec_ust_sbe_v10_1_size_of.md_entry_size = 4

-- Display: Md Entry Size
cme_brokertec_ust_sbe_v10_1_display.md_entry_size = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
cme_brokertec_ust_sbe_v10_1_dissect.md_entry_size = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.md_entry_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1_display.md_entry_size(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Size: Mantissa int 64
cme_brokertec_ust_sbe_v10_1_size_of.mantissa_int_64 = 8

-- Display: Mantissa int 64
cme_brokertec_ust_sbe_v10_1_display.mantissa_int_64 = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Mantissa int 64: No Value"
  end

  return "Mantissa int 64: "..value
end

-- Dissect: Mantissa int 64
cme_brokertec_ust_sbe_v10_1_dissect.mantissa_int_64 = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.mantissa_int_64
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cme_brokertec_ust_sbe_v10_1_display.mantissa_int_64(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.mantissa_int_64, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Entry Px
cme_brokertec_ust_sbe_v10_1_size_of.md_entry_px = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.mantissa_int_64

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.exponent

  return index
end

-- Display: Md Entry Px
cme_brokertec_ust_sbe_v10_1_display.md_entry_px = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Entry Px
cme_brokertec_ust_sbe_v10_1_dissect.md_entry_px_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa int 64: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa_int_64 = cme_brokertec_ust_sbe_v10_1_dissect.mantissa_int_64(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_brokertec_ust_sbe_v10_1_dissect.exponent(buffer, index, packet, parent)

  return index, mantissa_int_64, exponent
end

-- Dissect: Md Entry Px
cme_brokertec_ust_sbe_v10_1_dissect.md_entry_px = function(buffer, offset, packet, parent)
  if show.md_entry_px then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_brokertec_ust_sbe_v10_1.fields.md_entry_px, buffer(offset, 0))
    local index = cme_brokertec_ust_sbe_v10_1_dissect.md_entry_px_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ust_sbe_v10_1_display.md_entry_px(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ust_sbe_v10_1_dissect.md_entry_px_fields(buffer, offset, packet, parent)
  end
end

-- Size: Md Entry Type
cme_brokertec_ust_sbe_v10_1_size_of.md_entry_type = 1

-- Display: Md Entry Type
cme_brokertec_ust_sbe_v10_1_display.md_entry_type = function(value)
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
cme_brokertec_ust_sbe_v10_1_dissect.md_entry_type = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.md_entry_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_brokertec_ust_sbe_v10_1_display.md_entry_type(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Size: Md Update Action
cme_brokertec_ust_sbe_v10_1_size_of.md_update_action = 1

-- Display: Md Update Action
cme_brokertec_ust_sbe_v10_1_display.md_update_action = function(value)
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
cme_brokertec_ust_sbe_v10_1_dissect.md_update_action = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.md_update_action
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1_display.md_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Btec Group
cme_brokertec_ust_sbe_v10_1_size_of.m_d_incremental_refresh_btec_group = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.md_update_action

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.md_entry_type

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.md_entry_px(buffer, offset + index)

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.md_entry_size

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.md_price_level

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.trade_volume

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.symbol

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.maturity_date

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.security_alt_id

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.security_alt_id_source

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.coupon_rate(buffer, offset + index)

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.trade_condition

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.price_type

  return index
end

-- Display: M D Incremental Refresh Btec Group
cme_brokertec_ust_sbe_v10_1_display.m_d_incremental_refresh_btec_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Btec Group
cme_brokertec_ust_sbe_v10_1_dissect.m_d_incremental_refresh_btec_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_btec_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Btec Group Index
  if m_d_incremental_refresh_btec_group_index ~= nil then
    local iteration = parent:add(cme_brokertec_ust_sbe_v10_1.fields.m_d_incremental_refresh_btec_group_index, m_d_incremental_refresh_btec_group_index)
    iteration:set_generated()
  end

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, md_update_action = cme_brokertec_ust_sbe_v10_1_dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String Enum with 11 values
  index, md_entry_type = cme_brokertec_ust_sbe_v10_1_dissect.md_entry_type(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cme_brokertec_ust_sbe_v10_1_dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size = cme_brokertec_ust_sbe_v10_1_dissect.md_entry_size(buffer, index, packet, parent)

  -- Md Price Level: 1 Byte Unsigned Fixed Width Integer Nullable
  index, md_price_level = cme_brokertec_ust_sbe_v10_1_dissect.md_price_level(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_volume = cme_brokertec_ust_sbe_v10_1_dissect.trade_volume(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_brokertec_ust_sbe_v10_1_dissect.symbol(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_brokertec_ust_sbe_v10_1_dissect.maturity_date(buffer, index, packet, parent)

  -- Security Alt Id: 12 Byte Ascii String
  index, security_alt_id = cme_brokertec_ust_sbe_v10_1_dissect.security_alt_id(buffer, index, packet, parent)

  -- Security Alt Id Source: 1 Byte Ascii String
  index, security_alt_id_source = cme_brokertec_ust_sbe_v10_1_dissect.security_alt_id_source(buffer, index, packet, parent)

  -- Coupon Rate: Struct of 2 fields
  index, coupon_rate = cme_brokertec_ust_sbe_v10_1_dissect.coupon_rate(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String
  index, trade_condition = cme_brokertec_ust_sbe_v10_1_dissect.trade_condition(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_type = cme_brokertec_ust_sbe_v10_1_dissect.price_type(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Btec Group
cme_brokertec_ust_sbe_v10_1_dissect.m_d_incremental_refresh_btec_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_btec_group_index)
  if show.m_d_incremental_refresh_btec_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_brokertec_ust_sbe_v10_1.fields.m_d_incremental_refresh_btec_group, buffer(offset, 0))
    local index = cme_brokertec_ust_sbe_v10_1_dissect.m_d_incremental_refresh_btec_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_btec_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ust_sbe_v10_1_display.m_d_incremental_refresh_btec_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ust_sbe_v10_1_dissect.m_d_incremental_refresh_btec_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_btec_group_index)
  end
end

-- Size: Num In Group uint 8
cme_brokertec_ust_sbe_v10_1_size_of.num_in_group_uint_8 = 1

-- Display: Num In Group uint 8
cme_brokertec_ust_sbe_v10_1_display.num_in_group_uint_8 = function(value)
  return "Num In Group uint 8: "..value
end

-- Dissect: Num In Group uint 8
cme_brokertec_ust_sbe_v10_1_dissect.num_in_group_uint_8 = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.num_in_group_uint_8
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1_display.num_in_group_uint_8(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.num_in_group_uint_8, range, value, display)

  return offset + length, value
end

-- Size: Block Length
cme_brokertec_ust_sbe_v10_1_size_of.block_length = 2

-- Display: Block Length
cme_brokertec_ust_sbe_v10_1_display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_brokertec_ust_sbe_v10_1_dissect.block_length = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1_display.block_length(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Size
cme_brokertec_ust_sbe_v10_1_size_of.group_size = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.block_length

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.num_in_group_uint_8

  return index
end

-- Display: Group Size
cme_brokertec_ust_sbe_v10_1_display.group_size = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
cme_brokertec_ust_sbe_v10_1_dissect.group_size_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_brokertec_ust_sbe_v10_1_dissect.block_length(buffer, index, packet, parent)

  -- Num In Group uint 8: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group_uint_8 = cme_brokertec_ust_sbe_v10_1_dissect.num_in_group_uint_8(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_brokertec_ust_sbe_v10_1_dissect.group_size = function(buffer, offset, packet, parent)
  if show.group_size then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_brokertec_ust_sbe_v10_1.fields.group_size, buffer(offset, 0))
    local index = cme_brokertec_ust_sbe_v10_1_dissect.group_size_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ust_sbe_v10_1_display.group_size(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ust_sbe_v10_1_dissect.group_size_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: M D Incremental Refresh Btec Groups
cme_brokertec_ust_sbe_v10_1_size_of.m_d_incremental_refresh_btec_groups = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_btec_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_btec_group_count * 62

  return index
end

-- Display: M D Incremental Refresh Btec Groups
cme_brokertec_ust_sbe_v10_1_display.m_d_incremental_refresh_btec_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Btec Groups
cme_brokertec_ust_sbe_v10_1_dissect.m_d_incremental_refresh_btec_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_brokertec_ust_sbe_v10_1_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Btec Group
  for m_d_incremental_refresh_btec_group_index = 1, num_in_group_uint_8 do
    index, m_d_incremental_refresh_btec_group = cme_brokertec_ust_sbe_v10_1_dissect.m_d_incremental_refresh_btec_group(buffer, index, packet, parent, m_d_incremental_refresh_btec_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Btec Groups
cme_brokertec_ust_sbe_v10_1_dissect.m_d_incremental_refresh_btec_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_btec_groups then
    local length = cme_brokertec_ust_sbe_v10_1_size_of.m_d_incremental_refresh_btec_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_brokertec_ust_sbe_v10_1_display.m_d_incremental_refresh_btec_groups(buffer, packet, parent)
    parent = parent:add(cme_brokertec_ust_sbe_v10_1.fields.m_d_incremental_refresh_btec_groups, range, display)
  end

  return cme_brokertec_ust_sbe_v10_1_dissect.m_d_incremental_refresh_btec_groups_fields(buffer, offset, packet, parent)
end

-- Size: Transact Time
cme_brokertec_ust_sbe_v10_1_size_of.transact_time = 8

-- Display: Transact Time
cme_brokertec_ust_sbe_v10_1_display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
cme_brokertec_ust_sbe_v10_1_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_brokertec_ust_sbe_v10_1_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
cme_brokertec_ust_sbe_v10_1_size_of.trade_date = 2

-- Display: Trade Date
cme_brokertec_ust_sbe_v10_1_display.trade_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
cme_brokertec_ust_sbe_v10_1_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Incremental Refresh Btec
cme_brokertec_ust_sbe_v10_1_size_of.md_incremental_refresh_btec = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.trade_date

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.transact_time

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.m_d_incremental_refresh_btec_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Btec
cme_brokertec_ust_sbe_v10_1_display.md_incremental_refresh_btec = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Btec
cme_brokertec_ust_sbe_v10_1_dissect.md_incremental_refresh_btec_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_brokertec_ust_sbe_v10_1_dissect.trade_date(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_brokertec_ust_sbe_v10_1_dissect.transact_time(buffer, index, packet, parent)

  -- M D Incremental Refresh Btec Groups: Struct of 2 fields
  index, m_d_incremental_refresh_btec_groups = cme_brokertec_ust_sbe_v10_1_dissect.m_d_incremental_refresh_btec_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Btec
cme_brokertec_ust_sbe_v10_1_dissect.md_incremental_refresh_btec = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_btec then
    local length = cme_brokertec_ust_sbe_v10_1_size_of.md_incremental_refresh_btec(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_brokertec_ust_sbe_v10_1_display.md_incremental_refresh_btec(buffer, packet, parent)
    parent = parent:add(cme_brokertec_ust_sbe_v10_1.fields.md_incremental_refresh_btec, range, display)
  end

  return cme_brokertec_ust_sbe_v10_1_dissect.md_incremental_refresh_btec_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
cme_brokertec_ust_sbe_v10_1_size_of.payload = function(buffer, offset, template_id)
  -- Size of Md Incremental Refresh Btec
  if template_id == 405 then
    return cme_brokertec_ust_sbe_v10_1_size_of.md_incremental_refresh_btec(buffer, offset)
  end
  -- Size of Admin Heartbeat
  if template_id == 411 then
    return 0
  end

  return 0
end

-- Display: Payload
cme_brokertec_ust_sbe_v10_1_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cme_brokertec_ust_sbe_v10_1_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Md Incremental Refresh Btec
  if template_id == 405 then
    return cme_brokertec_ust_sbe_v10_1_dissect.md_incremental_refresh_btec(buffer, offset, packet, parent)
  end
  -- Dissect Admin Heartbeat
  if template_id == 411 then
  end

  return offset
end

-- Dissect: Payload
cme_brokertec_ust_sbe_v10_1_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return cme_brokertec_ust_sbe_v10_1_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = cme_brokertec_ust_sbe_v10_1_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cme_brokertec_ust_sbe_v10_1_display.payload(buffer, packet, parent)
  local element = parent:add(cme_brokertec_ust_sbe_v10_1.fields.payload, range, display)

  return cme_brokertec_ust_sbe_v10_1_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
cme_brokertec_ust_sbe_v10_1_size_of.version = 2

-- Display: Version
cme_brokertec_ust_sbe_v10_1_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
cme_brokertec_ust_sbe_v10_1_dissect.version = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1_display.version(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
cme_brokertec_ust_sbe_v10_1_size_of.schema_id = 2

-- Display: Schema Id
cme_brokertec_ust_sbe_v10_1_display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
cme_brokertec_ust_sbe_v10_1_dissect.schema_id = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1_display.schema_id(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
cme_brokertec_ust_sbe_v10_1_size_of.template_id = 2

-- Display: Template Id
cme_brokertec_ust_sbe_v10_1_display.template_id = function(value)
  if value == 405 then
    return "Template Id: Md Incremental Refresh Btec (405)"
  end
  if value == 411 then
    return "Template Id: Admin Heartbeat (411)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
cme_brokertec_ust_sbe_v10_1_dissect.template_id = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1_display.template_id(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cme_brokertec_ust_sbe_v10_1_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.block_length

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.template_id

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.schema_id

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.version

  return index
end

-- Display: Message Header
cme_brokertec_ust_sbe_v10_1_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_brokertec_ust_sbe_v10_1_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_brokertec_ust_sbe_v10_1_dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, template_id = cme_brokertec_ust_sbe_v10_1_dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = cme_brokertec_ust_sbe_v10_1_dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = cme_brokertec_ust_sbe_v10_1_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_brokertec_ust_sbe_v10_1_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_brokertec_ust_sbe_v10_1.fields.message_header, buffer(offset, 0))
    local index = cme_brokertec_ust_sbe_v10_1_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ust_sbe_v10_1_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ust_sbe_v10_1_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Size: Message Size
cme_brokertec_ust_sbe_v10_1_size_of.message_size = 2

-- Display: Message Size
cme_brokertec_ust_sbe_v10_1_display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_brokertec_ust_sbe_v10_1_dissect.message_size = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.message_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1_display.message_size(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
cme_brokertec_ust_sbe_v10_1_size_of.message = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.message_size

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + cme_brokertec_ust_sbe_v10_1_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
cme_brokertec_ust_sbe_v10_1_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cme_brokertec_ust_sbe_v10_1_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_brokertec_ust_sbe_v10_1_dissect.message_size(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_brokertec_ust_sbe_v10_1_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 2 branches
  index = cme_brokertec_ust_sbe_v10_1_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cme_brokertec_ust_sbe_v10_1_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = cme_brokertec_ust_sbe_v10_1_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_brokertec_ust_sbe_v10_1_display.message(buffer, packet, parent)
    parent = parent:add(cme_brokertec_ust_sbe_v10_1.fields.message, range, display)
  end

  return cme_brokertec_ust_sbe_v10_1_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Sending Time
cme_brokertec_ust_sbe_v10_1_size_of.sending_time = 8

-- Display: Sending Time
cme_brokertec_ust_sbe_v10_1_display.sending_time = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
cme_brokertec_ust_sbe_v10_1_dissect.sending_time = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.sending_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_brokertec_ust_sbe_v10_1_display.sending_time(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Size: Message Sequence Number
cme_brokertec_ust_sbe_v10_1_size_of.message_sequence_number = 4

-- Display: Message Sequence Number
cme_brokertec_ust_sbe_v10_1_display.message_sequence_number = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
cme_brokertec_ust_sbe_v10_1_dissect.message_sequence_number = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ust_sbe_v10_1_size_of.message_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ust_sbe_v10_1_display.message_sequence_number(value, buffer, offset, packet, parent)

  parent:add(cme_brokertec_ust_sbe_v10_1.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Binary Packet Header
cme_brokertec_ust_sbe_v10_1_size_of.binary_packet_header = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.message_sequence_number

  index = index + cme_brokertec_ust_sbe_v10_1_size_of.sending_time

  return index
end

-- Display: Binary Packet Header
cme_brokertec_ust_sbe_v10_1_display.binary_packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Packet Header
cme_brokertec_ust_sbe_v10_1_dissect.binary_packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = cme_brokertec_ust_sbe_v10_1_dissect.message_sequence_number(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_brokertec_ust_sbe_v10_1_dissect.sending_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
cme_brokertec_ust_sbe_v10_1_dissect.binary_packet_header = function(buffer, offset, packet, parent)
  if show.binary_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_brokertec_ust_sbe_v10_1.fields.binary_packet_header, buffer(offset, 0))
    local index = cme_brokertec_ust_sbe_v10_1_dissect.binary_packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ust_sbe_v10_1_display.binary_packet_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ust_sbe_v10_1_dissect.binary_packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
cme_brokertec_ust_sbe_v10_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = cme_brokertec_ust_sbe_v10_1_dissect.binary_packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index, message = cme_brokertec_ust_sbe_v10_1_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cme_brokertec_ust_sbe_v10_1.init()
end

-- Dissector for Cme BrokerTec Ust Sbe 10.1
function cme_brokertec_ust_sbe_v10_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cme_brokertec_ust_sbe_v10_1.name

  -- Dissect protocol
  local protocol = parent:add(cme_brokertec_ust_sbe_v10_1, buffer(), cme_brokertec_ust_sbe_v10_1.description, "("..buffer:len().." Bytes)")
  return cme_brokertec_ust_sbe_v10_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cme_brokertec_ust_sbe_v10_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cme_brokertec_ust_sbe_v10_1_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(18, 2):le_uint()

  if value == 10 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme BrokerTec Ust Sbe 10.1
local function cme_brokertec_ust_sbe_v10_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cme_brokertec_ust_sbe_v10_1_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cme_brokertec_ust_sbe_v10_1
  cme_brokertec_ust_sbe_v10_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme BrokerTec Ust Sbe 10.1
cme_brokertec_ust_sbe_v10_1:register_heuristic("udp", cme_brokertec_ust_sbe_v10_1_heuristic)

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
