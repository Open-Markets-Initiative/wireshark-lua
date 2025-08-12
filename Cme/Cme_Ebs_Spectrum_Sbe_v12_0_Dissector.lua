-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Ebs Spectrum Sbe 12.0 Protocol
local cme_ebs_spectrum_sbe_v12_0 = Proto("Cme.Ebs.Spectrum.Sbe.v12.0.Lua", "Cme Ebs Spectrum Sbe 12.0")

-- Component Tables
local show = {}
local format = {}
local cme_ebs_spectrum_sbe_v12_0_display = {}
local cme_ebs_spectrum_sbe_v12_0_dissect = {}
local cme_ebs_spectrum_sbe_v12_0_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Ebs Spectrum Sbe 12.0 Fields
cme_ebs_spectrum_sbe_v12_0.fields.aggressor_side = ProtoField.new("Aggressor Side", "cme.ebs.spectrum.sbe.v12.0.aggressorside", ftypes.UINT8)
cme_ebs_spectrum_sbe_v12_0.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.ebs.spectrum.sbe.v12.0.binarypacketheader", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.block_length = ProtoField.new("Block Length", "cme.ebs.spectrum.sbe.v12.0.blocklength", ftypes.UINT16)
cme_ebs_spectrum_sbe_v12_0.fields.financial_instrument_full_name = ProtoField.new("Financial Instrument Full Name", "cme.ebs.spectrum.sbe.v12.0.financialinstrumentfullname", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.global_day_roll = ProtoField.new("Global Day Roll", "cme.ebs.spectrum.sbe.v12.0.globaldayroll", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.group_size = ProtoField.new("Group Size", "cme.ebs.spectrum.sbe.v12.0.groupsize", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.instrument_guid = ProtoField.new("Instrument Guid", "cme.ebs.spectrum.sbe.v12.0.instrumentguid", ftypes.UINT64)
cme_ebs_spectrum_sbe_v12_0.fields.m_d_incremental_refresh_spectrum_group = ProtoField.new("M D Incremental Refresh Spectrum Group", "cme.ebs.spectrum.sbe.v12.0.mdincrementalrefreshspectrumgroup", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.m_d_incremental_refresh_spectrum_groups = ProtoField.new("M D Incremental Refresh Spectrum Groups", "cme.ebs.spectrum.sbe.v12.0.mdincrementalrefreshspectrumgroups", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.m_d_incremental_refresh_ticker_group = ProtoField.new("M D Incremental Refresh Ticker Group", "cme.ebs.spectrum.sbe.v12.0.mdincrementalrefreshtickergroup", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.m_d_incremental_refresh_ticker_groups = ProtoField.new("M D Incremental Refresh Ticker Groups", "cme.ebs.spectrum.sbe.v12.0.mdincrementalrefreshtickergroups", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.m_d_snapshot_refresh_spectrum_group = ProtoField.new("M D Snapshot Refresh Spectrum Group", "cme.ebs.spectrum.sbe.v12.0.mdsnapshotrefreshspectrumgroup", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.m_d_snapshot_refresh_spectrum_groups = ProtoField.new("M D Snapshot Refresh Spectrum Groups", "cme.ebs.spectrum.sbe.v12.0.mdsnapshotrefreshspectrumgroups", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.m_d_snapshot_refresh_ticker_group = ProtoField.new("M D Snapshot Refresh Ticker Group", "cme.ebs.spectrum.sbe.v12.0.mdsnapshotrefreshtickergroup", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.m_d_snapshot_refresh_ticker_groups = ProtoField.new("M D Snapshot Refresh Ticker Groups", "cme.ebs.spectrum.sbe.v12.0.mdsnapshotrefreshtickergroups", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.md_entry_px = ProtoField.new("Md Entry Px", "cme.ebs.spectrum.sbe.v12.0.mdentrypx", ftypes.DOUBLE)
cme_ebs_spectrum_sbe_v12_0.fields.md_entry_size = ProtoField.new("Md Entry Size", "cme.ebs.spectrum.sbe.v12.0.mdentrysize", ftypes.UINT64)
cme_ebs_spectrum_sbe_v12_0.fields.md_entry_time = ProtoField.new("Md Entry Time", "cme.ebs.spectrum.sbe.v12.0.mdentrytime", ftypes.UINT64)
cme_ebs_spectrum_sbe_v12_0.fields.md_entry_type_spectrum_entry_type = ProtoField.new("Md Entry Type Spectrum Entry Type", "cme.ebs.spectrum.sbe.v12.0.mdentrytypespectrumentrytype", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.md_entry_type_ticker_entry_type = ProtoField.new("Md Entry Type Ticker Entry Type", "cme.ebs.spectrum.sbe.v12.0.mdentrytypetickerentrytype", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.md_incremental_refresh_spectrum = ProtoField.new("Md Incremental Refresh Spectrum", "cme.ebs.spectrum.sbe.v12.0.mdincrementalrefreshspectrum", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.md_incremental_refresh_ticker = ProtoField.new("Md Incremental Refresh Ticker", "cme.ebs.spectrum.sbe.v12.0.mdincrementalrefreshticker", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.md_snapshot_refresh_spectrum = ProtoField.new("Md Snapshot Refresh Spectrum", "cme.ebs.spectrum.sbe.v12.0.mdsnapshotrefreshspectrum", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.md_snapshot_refresh_ticker = ProtoField.new("Md Snapshot Refresh Ticker", "cme.ebs.spectrum.sbe.v12.0.mdsnapshotrefreshticker", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.message = ProtoField.new("Message", "cme.ebs.spectrum.sbe.v12.0.message", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.message_header = ProtoField.new("Message Header", "cme.ebs.spectrum.sbe.v12.0.messageheader", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cme.ebs.spectrum.sbe.v12.0.messagesequencenumber", ftypes.UINT32)
cme_ebs_spectrum_sbe_v12_0.fields.message_size = ProtoField.new("Message Size", "cme.ebs.spectrum.sbe.v12.0.messagesize", ftypes.UINT16)
cme_ebs_spectrum_sbe_v12_0.fields.num_in_group_uint_8 = ProtoField.new("Num In Group uint 8", "cme.ebs.spectrum.sbe.v12.0.numingroupuint8", ftypes.UINT8)
cme_ebs_spectrum_sbe_v12_0.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "cme.ebs.spectrum.sbe.v12.0.openclosesettlflag", ftypes.UINT8)
cme_ebs_spectrum_sbe_v12_0.fields.packet = ProtoField.new("Packet", "cme.ebs.spectrum.sbe.v12.0.packet", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.payload = ProtoField.new("Payload", "cme.ebs.spectrum.sbe.v12.0.payload", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.schema_id = ProtoField.new("Schema Id", "cme.ebs.spectrum.sbe.v12.0.schemaid", ftypes.UINT16)
cme_ebs_spectrum_sbe_v12_0.fields.security_id = ProtoField.new("Security Id", "cme.ebs.spectrum.sbe.v12.0.securityid", ftypes.INT32)
cme_ebs_spectrum_sbe_v12_0.fields.security_trading_event = ProtoField.new("Security Trading Event", "cme.ebs.spectrum.sbe.v12.0.securitytradingevent", ftypes.UINT8)
cme_ebs_spectrum_sbe_v12_0.fields.sending_time = ProtoField.new("Sending Time", "cme.ebs.spectrum.sbe.v12.0.sendingtime", ftypes.UINT64)
cme_ebs_spectrum_sbe_v12_0.fields.symbol = ProtoField.new("Symbol", "cme.ebs.spectrum.sbe.v12.0.symbol", ftypes.STRING)
cme_ebs_spectrum_sbe_v12_0.fields.template_id = ProtoField.new("Template Id", "cme.ebs.spectrum.sbe.v12.0.templateid", ftypes.UINT16)
cme_ebs_spectrum_sbe_v12_0.fields.trading_session_id = ProtoField.new("Trading Session Id", "cme.ebs.spectrum.sbe.v12.0.tradingsessionid", ftypes.UINT8)
cme_ebs_spectrum_sbe_v12_0.fields.transact_time = ProtoField.new("Transact Time", "cme.ebs.spectrum.sbe.v12.0.transacttime", ftypes.UINT64)
cme_ebs_spectrum_sbe_v12_0.fields.version = ProtoField.new("Version", "cme.ebs.spectrum.sbe.v12.0.version", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cme Ebs Spectrum Sbe 12.0 Element Dissection Options
show.binary_packet_header = true
show.global_day_roll = true
show.group_size = true
show.m_d_incremental_refresh_spectrum_group = true
show.m_d_incremental_refresh_spectrum_groups = true
show.m_d_incremental_refresh_ticker_group = true
show.m_d_incremental_refresh_ticker_groups = true
show.m_d_snapshot_refresh_spectrum_group = true
show.m_d_snapshot_refresh_spectrum_groups = true
show.m_d_snapshot_refresh_ticker_group = true
show.m_d_snapshot_refresh_ticker_groups = true
show.md_incremental_refresh_spectrum = true
show.md_incremental_refresh_ticker = true
show.md_snapshot_refresh_spectrum = true
show.md_snapshot_refresh_ticker = true
show.message = true
show.message_header = true
show.packet = true
show.payload = false

-- Register Cme Ebs Spectrum Sbe 12.0 Show Options
cme_ebs_spectrum_sbe_v12_0.prefs.show_binary_packet_header = Pref.bool("Show Binary Packet Header", show.binary_packet_header, "Parse and add Binary Packet Header to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_global_day_roll = Pref.bool("Show Global Day Roll", show.global_day_roll, "Parse and add Global Day Roll to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_incremental_refresh_spectrum_group = Pref.bool("Show M D Incremental Refresh Spectrum Group", show.m_d_incremental_refresh_spectrum_group, "Parse and add M D Incremental Refresh Spectrum Group to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_incremental_refresh_spectrum_groups = Pref.bool("Show M D Incremental Refresh Spectrum Groups", show.m_d_incremental_refresh_spectrum_groups, "Parse and add M D Incremental Refresh Spectrum Groups to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_incremental_refresh_ticker_group = Pref.bool("Show M D Incremental Refresh Ticker Group", show.m_d_incremental_refresh_ticker_group, "Parse and add M D Incremental Refresh Ticker Group to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_incremental_refresh_ticker_groups = Pref.bool("Show M D Incremental Refresh Ticker Groups", show.m_d_incremental_refresh_ticker_groups, "Parse and add M D Incremental Refresh Ticker Groups to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_snapshot_refresh_spectrum_group = Pref.bool("Show M D Snapshot Refresh Spectrum Group", show.m_d_snapshot_refresh_spectrum_group, "Parse and add M D Snapshot Refresh Spectrum Group to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_snapshot_refresh_spectrum_groups = Pref.bool("Show M D Snapshot Refresh Spectrum Groups", show.m_d_snapshot_refresh_spectrum_groups, "Parse and add M D Snapshot Refresh Spectrum Groups to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_snapshot_refresh_ticker_group = Pref.bool("Show M D Snapshot Refresh Ticker Group", show.m_d_snapshot_refresh_ticker_group, "Parse and add M D Snapshot Refresh Ticker Group to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_snapshot_refresh_ticker_groups = Pref.bool("Show M D Snapshot Refresh Ticker Groups", show.m_d_snapshot_refresh_ticker_groups, "Parse and add M D Snapshot Refresh Ticker Groups to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_md_incremental_refresh_spectrum = Pref.bool("Show Md Incremental Refresh Spectrum", show.md_incremental_refresh_spectrum, "Parse and add Md Incremental Refresh Spectrum to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_md_incremental_refresh_ticker = Pref.bool("Show Md Incremental Refresh Ticker", show.md_incremental_refresh_ticker, "Parse and add Md Incremental Refresh Ticker to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_md_snapshot_refresh_spectrum = Pref.bool("Show Md Snapshot Refresh Spectrum", show.md_snapshot_refresh_spectrum, "Parse and add Md Snapshot Refresh Spectrum to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_md_snapshot_refresh_ticker = Pref.bool("Show Md Snapshot Refresh Ticker", show.md_snapshot_refresh_ticker, "Parse and add Md Snapshot Refresh Ticker to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cme_ebs_spectrum_sbe_v12_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cme_ebs_spectrum_sbe_v12_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.binary_packet_header ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_binary_packet_header then
    show.binary_packet_header = cme_ebs_spectrum_sbe_v12_0.prefs.show_binary_packet_header
    changed = true
  end
  if show.global_day_roll ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_global_day_roll then
    show.global_day_roll = cme_ebs_spectrum_sbe_v12_0.prefs.show_global_day_roll
    changed = true
  end
  if show.group_size ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_group_size then
    show.group_size = cme_ebs_spectrum_sbe_v12_0.prefs.show_group_size
    changed = true
  end
  if show.m_d_incremental_refresh_spectrum_group ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_incremental_refresh_spectrum_group then
    show.m_d_incremental_refresh_spectrum_group = cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_incremental_refresh_spectrum_group
    changed = true
  end
  if show.m_d_incremental_refresh_spectrum_groups ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_incremental_refresh_spectrum_groups then
    show.m_d_incremental_refresh_spectrum_groups = cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_incremental_refresh_spectrum_groups
    changed = true
  end
  if show.m_d_incremental_refresh_ticker_group ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_incremental_refresh_ticker_group then
    show.m_d_incremental_refresh_ticker_group = cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_incremental_refresh_ticker_group
    changed = true
  end
  if show.m_d_incremental_refresh_ticker_groups ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_incremental_refresh_ticker_groups then
    show.m_d_incremental_refresh_ticker_groups = cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_incremental_refresh_ticker_groups
    changed = true
  end
  if show.m_d_snapshot_refresh_spectrum_group ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_snapshot_refresh_spectrum_group then
    show.m_d_snapshot_refresh_spectrum_group = cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_snapshot_refresh_spectrum_group
    changed = true
  end
  if show.m_d_snapshot_refresh_spectrum_groups ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_snapshot_refresh_spectrum_groups then
    show.m_d_snapshot_refresh_spectrum_groups = cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_snapshot_refresh_spectrum_groups
    changed = true
  end
  if show.m_d_snapshot_refresh_ticker_group ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_snapshot_refresh_ticker_group then
    show.m_d_snapshot_refresh_ticker_group = cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_snapshot_refresh_ticker_group
    changed = true
  end
  if show.m_d_snapshot_refresh_ticker_groups ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_snapshot_refresh_ticker_groups then
    show.m_d_snapshot_refresh_ticker_groups = cme_ebs_spectrum_sbe_v12_0.prefs.show_m_d_snapshot_refresh_ticker_groups
    changed = true
  end
  if show.md_incremental_refresh_spectrum ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_md_incremental_refresh_spectrum then
    show.md_incremental_refresh_spectrum = cme_ebs_spectrum_sbe_v12_0.prefs.show_md_incremental_refresh_spectrum
    changed = true
  end
  if show.md_incremental_refresh_ticker ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_md_incremental_refresh_ticker then
    show.md_incremental_refresh_ticker = cme_ebs_spectrum_sbe_v12_0.prefs.show_md_incremental_refresh_ticker
    changed = true
  end
  if show.md_snapshot_refresh_spectrum ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_md_snapshot_refresh_spectrum then
    show.md_snapshot_refresh_spectrum = cme_ebs_spectrum_sbe_v12_0.prefs.show_md_snapshot_refresh_spectrum
    changed = true
  end
  if show.md_snapshot_refresh_ticker ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_md_snapshot_refresh_ticker then
    show.md_snapshot_refresh_ticker = cme_ebs_spectrum_sbe_v12_0.prefs.show_md_snapshot_refresh_ticker
    changed = true
  end
  if show.message ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_message then
    show.message = cme_ebs_spectrum_sbe_v12_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_message_header then
    show.message_header = cme_ebs_spectrum_sbe_v12_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_packet then
    show.packet = cme_ebs_spectrum_sbe_v12_0.prefs.show_packet
    changed = true
  end
  if show.payload ~= cme_ebs_spectrum_sbe_v12_0.prefs.show_payload then
    show.payload = cme_ebs_spectrum_sbe_v12_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cme Ebs Spectrum Sbe 12.0
-----------------------------------------------------------------------

-- Size: Security Trading Event
cme_ebs_spectrum_sbe_v12_0_size_of.security_trading_event = 1

-- Display: Security Trading Event
cme_ebs_spectrum_sbe_v12_0_display.security_trading_event = function(value)
  if value == 4 then
    return "Security Trading Event: Global Day Roll (4)"
  end

  return "Security Trading Event: Unknown("..value..")"
end

-- Dissect: Security Trading Event
cme_ebs_spectrum_sbe_v12_0_dissect.security_trading_event = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.security_trading_event
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_spectrum_sbe_v12_0_display.security_trading_event(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.security_trading_event, range, value, display)

  return offset + length, value
end

-- Size: Transact Time
cme_ebs_spectrum_sbe_v12_0_size_of.transact_time = 8

-- Display: Transact Time
cme_ebs_spectrum_sbe_v12_0_display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
cme_ebs_spectrum_sbe_v12_0_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_spectrum_sbe_v12_0_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Global Day Roll
cme_ebs_spectrum_sbe_v12_0_size_of.global_day_roll = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.transact_time

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.security_trading_event

  return index
end

-- Display: Global Day Roll
cme_ebs_spectrum_sbe_v12_0_display.global_day_roll = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Day Roll
cme_ebs_spectrum_sbe_v12_0_dissect.global_day_roll_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_ebs_spectrum_sbe_v12_0_dissect.transact_time(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, security_trading_event = cme_ebs_spectrum_sbe_v12_0_dissect.security_trading_event(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Day Roll
cme_ebs_spectrum_sbe_v12_0_dissect.global_day_roll = function(buffer, offset, packet, parent)
  if show.global_day_roll then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.global_day_roll, buffer(offset, 0))
    local index = cme_ebs_spectrum_sbe_v12_0_dissect.global_day_roll_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.global_day_roll(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cme_ebs_spectrum_sbe_v12_0_dissect.global_day_roll_fields(buffer, offset, packet, parent)
  end
end

-- Size: Aggressor Side
cme_ebs_spectrum_sbe_v12_0_size_of.aggressor_side = 1

-- Display: Aggressor Side
cme_ebs_spectrum_sbe_v12_0_display.aggressor_side = function(value)
  if value == 255 then
    return "Aggressor Side: No Value"
  end
  if value == 1 then
    return "Aggressor Side: Buy (1)"
  end
  if value == 2 then
    return "Aggressor Side: Sell (2)"
  end

  return "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
cme_ebs_spectrum_sbe_v12_0_dissect.aggressor_side = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.aggressor_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_spectrum_sbe_v12_0_display.aggressor_side(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Id
cme_ebs_spectrum_sbe_v12_0_size_of.trading_session_id = 1

-- Display: Trading Session Id
cme_ebs_spectrum_sbe_v12_0_display.trading_session_id = function(value)
  if value == 255 then
    return "Trading Session Id: No Value"
  end
  if value == 0 then
    return "Trading Session Id: Gl (0)"
  end
  if value == 1 then
    return "Trading Session Id: Sy (1)"
  end
  if value == 2 then
    return "Trading Session Id: Tk (2)"
  end
  if value == 3 then
    return "Trading Session Id: Hk (3)"
  end
  if value == 4 then
    return "Trading Session Id: Ln (4)"
  end
  if value == 5 then
    return "Trading Session Id: Ny (5)"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
cme_ebs_spectrum_sbe_v12_0_dissect.trading_session_id = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.trading_session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_spectrum_sbe_v12_0_display.trading_session_id(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Size: Open Close Settl Flag
cme_ebs_spectrum_sbe_v12_0_size_of.open_close_settl_flag = 1

-- Display: Open Close Settl Flag
cme_ebs_spectrum_sbe_v12_0_display.open_close_settl_flag = function(value)
  if value == 0 then
    return "Open Close Settl Flag: Current Day (0)"
  end
  if value == 4 then
    return "Open Close Settl Flag: Previous Day (4)"
  end

  return "Open Close Settl Flag: Unknown("..value..")"
end

-- Dissect: Open Close Settl Flag
cme_ebs_spectrum_sbe_v12_0_dissect.open_close_settl_flag = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.open_close_settl_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_spectrum_sbe_v12_0_display.open_close_settl_flag(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.open_close_settl_flag, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Time
cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_time = 8

-- Display: Md Entry Time
cme_ebs_spectrum_sbe_v12_0_display.md_entry_time = function(value)
  return "Md Entry Time: "..value
end

-- Dissect: Md Entry Time
cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_time = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_spectrum_sbe_v12_0_display.md_entry_time(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.md_entry_time, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Size
cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_size = 8

-- Display: Md Entry Size
cme_ebs_spectrum_sbe_v12_0_display.md_entry_size = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_size = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_spectrum_sbe_v12_0_display.md_entry_size(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Px
cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_px = 8

-- Display: Md Entry Px
cme_ebs_spectrum_sbe_v12_0_display.md_entry_px = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Translate: Md Entry Px
translate.md_entry_px = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Md Entry Px
cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_px = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.md_entry_px(raw)
  local display = cme_ebs_spectrum_sbe_v12_0_display.md_entry_px(raw, value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Type Ticker Entry Type
cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_type_ticker_entry_type = 1

-- Display: Md Entry Type Ticker Entry Type
cme_ebs_spectrum_sbe_v12_0_display.md_entry_type_ticker_entry_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Md Entry Type Ticker Entry Type: No Value"
  end

  if value == "k" then
    return "Md Entry Type Ticker Entry Type: Touch High (k)"
  end
  if value == "l" then
    return "Md Entry Type Ticker Entry Type: Touch Low (l)"
  end
  if value == "m" then
    return "Md Entry Type Ticker Entry Type: Open Best Bid (m)"
  end
  if value == "n" then
    return "Md Entry Type Ticker Entry Type: Open Best Offer (n)"
  end
  if value == "o" then
    return "Md Entry Type Ticker Entry Type: Close Best Bid (o)"
  end
  if value == "p" then
    return "Md Entry Type Ticker Entry Type: Close Best Offer (p)"
  end
  if value == "q" then
    return "Md Entry Type Ticker Entry Type: Market High (q)"
  end
  if value == "r" then
    return "Md Entry Type Ticker Entry Type: Market Low (r)"
  end
  if value == "w" then
    return "Md Entry Type Ticker Entry Type: Market Best Offer (w)"
  end
  if value == "x" then
    return "Md Entry Type Ticker Entry Type: Market Best Bid (x)"
  end
  if value == "y" then
    return "Md Entry Type Ticker Entry Type: Paid (y)"
  end
  if value == "z" then
    return "Md Entry Type Ticker Entry Type: Given (z)"
  end

  return "Md Entry Type Ticker Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type Ticker Entry Type
cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_type_ticker_entry_type = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_type_ticker_entry_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_spectrum_sbe_v12_0_display.md_entry_type_ticker_entry_type(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.md_entry_type_ticker_entry_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Snapshot Refresh Ticker Group
cme_ebs_spectrum_sbe_v12_0_size_of.m_d_snapshot_refresh_ticker_group = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_type_ticker_entry_type

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_px

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_size

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_time

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.open_close_settl_flag

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.trading_session_id

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.aggressor_side

  return index
end

-- Display: M D Snapshot Refresh Ticker Group
cme_ebs_spectrum_sbe_v12_0_display.m_d_snapshot_refresh_ticker_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Snapshot Refresh Ticker Group
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_ticker_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Type Ticker Entry Type: 1 Byte Ascii String Enum with 12 values
  index, md_entry_type_ticker_entry_type = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_type_ticker_entry_type(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_size(buffer, index, packet, parent)

  -- Md Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_time = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_time(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, open_close_settl_flag = cme_ebs_spectrum_sbe_v12_0_dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trading_session_id = cme_ebs_spectrum_sbe_v12_0_dissect.trading_session_id(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, aggressor_side = cme_ebs_spectrum_sbe_v12_0_dissect.aggressor_side(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Snapshot Refresh Ticker Group
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_ticker_group = function(buffer, offset, packet, parent)
  if show.m_d_snapshot_refresh_ticker_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.m_d_snapshot_refresh_ticker_group, buffer(offset, 0))
    local index = cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_ticker_group_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.m_d_snapshot_refresh_ticker_group(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_ticker_group_fields(buffer, offset, packet, parent)
  end
end

-- Size: Num In Group uint 8
cme_ebs_spectrum_sbe_v12_0_size_of.num_in_group_uint_8 = 1

-- Display: Num In Group uint 8
cme_ebs_spectrum_sbe_v12_0_display.num_in_group_uint_8 = function(value)
  return "Num In Group uint 8: "..value
end

-- Dissect: Num In Group uint 8
cme_ebs_spectrum_sbe_v12_0_dissect.num_in_group_uint_8 = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.num_in_group_uint_8
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_spectrum_sbe_v12_0_display.num_in_group_uint_8(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.num_in_group_uint_8, range, value, display)

  return offset + length, value
end

-- Size: Block Length
cme_ebs_spectrum_sbe_v12_0_size_of.block_length = 2

-- Display: Block Length
cme_ebs_spectrum_sbe_v12_0_display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_ebs_spectrum_sbe_v12_0_dissect.block_length = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_spectrum_sbe_v12_0_display.block_length(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Size
cme_ebs_spectrum_sbe_v12_0_size_of.group_size = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.block_length

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.num_in_group_uint_8

  return index
end

-- Display: Group Size
cme_ebs_spectrum_sbe_v12_0_display.group_size = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
cme_ebs_spectrum_sbe_v12_0_dissect.group_size_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_ebs_spectrum_sbe_v12_0_dissect.block_length(buffer, index, packet, parent)

  -- Num In Group uint 8: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group_uint_8 = cme_ebs_spectrum_sbe_v12_0_dissect.num_in_group_uint_8(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_ebs_spectrum_sbe_v12_0_dissect.group_size = function(buffer, offset, packet, parent)
  if show.group_size then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.group_size, buffer(offset, 0))
    local index = cme_ebs_spectrum_sbe_v12_0_dissect.group_size_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.group_size(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cme_ebs_spectrum_sbe_v12_0_dissect.group_size_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: M D Snapshot Refresh Ticker Groups
cme_ebs_spectrum_sbe_v12_0_size_of.m_d_snapshot_refresh_ticker_groups = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_snapshot_refresh_ticker_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_snapshot_refresh_ticker_group_count * 28

  return index
end

-- Display: M D Snapshot Refresh Ticker Groups
cme_ebs_spectrum_sbe_v12_0_display.m_d_snapshot_refresh_ticker_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Snapshot Refresh Ticker Groups
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_ticker_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_spectrum_sbe_v12_0_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- M D Snapshot Refresh Ticker Group: Struct of 7 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_ticker_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Snapshot Refresh Ticker Groups
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_ticker_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_snapshot_refresh_ticker_groups then
    local length = cme_ebs_spectrum_sbe_v12_0_size_of.m_d_snapshot_refresh_ticker_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.m_d_snapshot_refresh_ticker_groups(buffer, packet, parent)
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.m_d_snapshot_refresh_ticker_groups, range, display)
  end

  return cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_ticker_groups_fields(buffer, offset, packet, parent)
end

-- Size: Security Id
cme_ebs_spectrum_sbe_v12_0_size_of.security_id = 4

-- Display: Security Id
cme_ebs_spectrum_sbe_v12_0_display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
cme_ebs_spectrum_sbe_v12_0_dissect.security_id = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.security_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_ebs_spectrum_sbe_v12_0_display.security_id(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Size: Instrument Guid
cme_ebs_spectrum_sbe_v12_0_size_of.instrument_guid = 8

-- Display: Instrument Guid
cme_ebs_spectrum_sbe_v12_0_display.instrument_guid = function(value)
  return "Instrument Guid: "..value
end

-- Dissect: Instrument Guid
cme_ebs_spectrum_sbe_v12_0_dissect.instrument_guid = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.instrument_guid
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_spectrum_sbe_v12_0_display.instrument_guid(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.instrument_guid, range, value, display)

  return offset + length, value
end

-- Size: Symbol
cme_ebs_spectrum_sbe_v12_0_size_of.symbol = 20

-- Display: Symbol
cme_ebs_spectrum_sbe_v12_0_display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cme_ebs_spectrum_sbe_v12_0_dissect.symbol = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.symbol
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

  local display = cme_ebs_spectrum_sbe_v12_0_display.symbol(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Financial Instrument Full Name
cme_ebs_spectrum_sbe_v12_0_size_of.financial_instrument_full_name = 35

-- Display: Financial Instrument Full Name
cme_ebs_spectrum_sbe_v12_0_display.financial_instrument_full_name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Financial Instrument Full Name: No Value"
  end

  return "Financial Instrument Full Name: "..value
end

-- Dissect: Financial Instrument Full Name
cme_ebs_spectrum_sbe_v12_0_dissect.financial_instrument_full_name = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.financial_instrument_full_name
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

  local display = cme_ebs_spectrum_sbe_v12_0_display.financial_instrument_full_name(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.financial_instrument_full_name, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Snapshot Refresh Ticker
cme_ebs_spectrum_sbe_v12_0_size_of.md_snapshot_refresh_ticker = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.transact_time

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.match_event_indicator

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.financial_instrument_full_name

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.symbol

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.instrument_guid

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.security_id

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.m_d_snapshot_refresh_ticker_groups(buffer, offset + index)

  return index
end

-- Display: Md Snapshot Refresh Ticker
cme_ebs_spectrum_sbe_v12_0_display.md_snapshot_refresh_ticker = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Snapshot Refresh Ticker
cme_ebs_spectrum_sbe_v12_0_dissect.md_snapshot_refresh_ticker_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_ebs_spectrum_sbe_v12_0_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator
  index, match_event_indicator = cme_ebs_spectrum_sbe_v12_0_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_ebs_spectrum_sbe_v12_0_dissect.financial_instrument_full_name(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_ebs_spectrum_sbe_v12_0_dissect.symbol(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer
  index, instrument_guid = cme_ebs_spectrum_sbe_v12_0_dissect.instrument_guid(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_ebs_spectrum_sbe_v12_0_dissect.security_id(buffer, index, packet, parent)

  -- M D Snapshot Refresh Ticker Groups: Struct of 2 fields
  index, m_d_snapshot_refresh_ticker_groups = cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_ticker_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Snapshot Refresh Ticker
cme_ebs_spectrum_sbe_v12_0_dissect.md_snapshot_refresh_ticker = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_snapshot_refresh_ticker then
    local length = cme_ebs_spectrum_sbe_v12_0_size_of.md_snapshot_refresh_ticker(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.md_snapshot_refresh_ticker(buffer, packet, parent)
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.md_snapshot_refresh_ticker, range, display)
  end

  return cme_ebs_spectrum_sbe_v12_0_dissect.md_snapshot_refresh_ticker_fields(buffer, offset, packet, parent)
end

-- Size: Md Entry Type Spectrum Entry Type
cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_type_spectrum_entry_type = 1

-- Display: Md Entry Type Spectrum Entry Type
cme_ebs_spectrum_sbe_v12_0_display.md_entry_type_spectrum_entry_type = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Md Entry Type Spectrum Entry Type: No Value"
  end

  if value == "9" then
    return "Md Entry Type Spectrum Entry Type: Vwap (9)"
  end
  if value == "t" then
    return "Md Entry Type Spectrum Entry Type: Twap (t)"
  end

  return "Md Entry Type Spectrum Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type Spectrum Entry Type
cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_type_spectrum_entry_type = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_type_spectrum_entry_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_ebs_spectrum_sbe_v12_0_display.md_entry_type_spectrum_entry_type(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.md_entry_type_spectrum_entry_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Snapshot Refresh Spectrum Group
cme_ebs_spectrum_sbe_v12_0_size_of.m_d_snapshot_refresh_spectrum_group = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_type_spectrum_entry_type

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_px

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_size

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_time

  return index
end

-- Display: M D Snapshot Refresh Spectrum Group
cme_ebs_spectrum_sbe_v12_0_display.m_d_snapshot_refresh_spectrum_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Snapshot Refresh Spectrum Group
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_spectrum_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Type Spectrum Entry Type: 1 Byte Ascii String Enum with 2 values
  index, md_entry_type_spectrum_entry_type = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_type_spectrum_entry_type(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_size(buffer, index, packet, parent)

  -- Md Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_time = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_time(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Snapshot Refresh Spectrum Group
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_spectrum_group = function(buffer, offset, packet, parent)
  if show.m_d_snapshot_refresh_spectrum_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.m_d_snapshot_refresh_spectrum_group, buffer(offset, 0))
    local index = cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_spectrum_group_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.m_d_snapshot_refresh_spectrum_group(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_spectrum_group_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: M D Snapshot Refresh Spectrum Groups
cme_ebs_spectrum_sbe_v12_0_size_of.m_d_snapshot_refresh_spectrum_groups = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_snapshot_refresh_spectrum_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_snapshot_refresh_spectrum_group_count * 25

  return index
end

-- Display: M D Snapshot Refresh Spectrum Groups
cme_ebs_spectrum_sbe_v12_0_display.m_d_snapshot_refresh_spectrum_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Snapshot Refresh Spectrum Groups
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_spectrum_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_spectrum_sbe_v12_0_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- M D Snapshot Refresh Spectrum Group: Struct of 4 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_spectrum_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Snapshot Refresh Spectrum Groups
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_spectrum_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_snapshot_refresh_spectrum_groups then
    local length = cme_ebs_spectrum_sbe_v12_0_size_of.m_d_snapshot_refresh_spectrum_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.m_d_snapshot_refresh_spectrum_groups(buffer, packet, parent)
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.m_d_snapshot_refresh_spectrum_groups, range, display)
  end

  return cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_spectrum_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Snapshot Refresh Spectrum
cme_ebs_spectrum_sbe_v12_0_size_of.md_snapshot_refresh_spectrum = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.transact_time

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.match_event_indicator

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.financial_instrument_full_name

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.symbol

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.instrument_guid

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.security_id

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.m_d_snapshot_refresh_spectrum_groups(buffer, offset + index)

  return index
end

-- Display: Md Snapshot Refresh Spectrum
cme_ebs_spectrum_sbe_v12_0_display.md_snapshot_refresh_spectrum = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Snapshot Refresh Spectrum
cme_ebs_spectrum_sbe_v12_0_dissect.md_snapshot_refresh_spectrum_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_ebs_spectrum_sbe_v12_0_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator
  index, match_event_indicator = cme_ebs_spectrum_sbe_v12_0_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_ebs_spectrum_sbe_v12_0_dissect.financial_instrument_full_name(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_ebs_spectrum_sbe_v12_0_dissect.symbol(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer
  index, instrument_guid = cme_ebs_spectrum_sbe_v12_0_dissect.instrument_guid(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_ebs_spectrum_sbe_v12_0_dissect.security_id(buffer, index, packet, parent)

  -- M D Snapshot Refresh Spectrum Groups: Struct of 2 fields
  index, m_d_snapshot_refresh_spectrum_groups = cme_ebs_spectrum_sbe_v12_0_dissect.m_d_snapshot_refresh_spectrum_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Snapshot Refresh Spectrum
cme_ebs_spectrum_sbe_v12_0_dissect.md_snapshot_refresh_spectrum = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_snapshot_refresh_spectrum then
    local length = cme_ebs_spectrum_sbe_v12_0_size_of.md_snapshot_refresh_spectrum(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.md_snapshot_refresh_spectrum(buffer, packet, parent)
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.md_snapshot_refresh_spectrum, range, display)
  end

  return cme_ebs_spectrum_sbe_v12_0_dissect.md_snapshot_refresh_spectrum_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Ticker Group
cme_ebs_spectrum_sbe_v12_0_size_of.m_d_incremental_refresh_ticker_group = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_type_ticker_entry_type

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.security_id

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.symbol

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.instrument_guid

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.financial_instrument_full_name

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_px

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_size

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_time

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.open_close_settl_flag

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.trading_session_id

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.aggressor_side

  return index
end

-- Display: M D Incremental Refresh Ticker Group
cme_ebs_spectrum_sbe_v12_0_display.m_d_incremental_refresh_ticker_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Ticker Group
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_ticker_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Type Ticker Entry Type: 1 Byte Ascii String Enum with 12 values
  index, md_entry_type_ticker_entry_type = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_type_ticker_entry_type(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_ebs_spectrum_sbe_v12_0_dissect.security_id(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_ebs_spectrum_sbe_v12_0_dissect.symbol(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer
  index, instrument_guid = cme_ebs_spectrum_sbe_v12_0_dissect.instrument_guid(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_ebs_spectrum_sbe_v12_0_dissect.financial_instrument_full_name(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_size(buffer, index, packet, parent)

  -- Md Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_time = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_time(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, open_close_settl_flag = cme_ebs_spectrum_sbe_v12_0_dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trading_session_id = cme_ebs_spectrum_sbe_v12_0_dissect.trading_session_id(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, aggressor_side = cme_ebs_spectrum_sbe_v12_0_dissect.aggressor_side(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Ticker Group
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_ticker_group = function(buffer, offset, packet, parent)
  if show.m_d_incremental_refresh_ticker_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.m_d_incremental_refresh_ticker_group, buffer(offset, 0))
    local index = cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_ticker_group_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.m_d_incremental_refresh_ticker_group(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_ticker_group_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: M D Incremental Refresh Ticker Groups
cme_ebs_spectrum_sbe_v12_0_size_of.m_d_incremental_refresh_ticker_groups = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_ticker_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_ticker_group_count * 95

  return index
end

-- Display: M D Incremental Refresh Ticker Groups
cme_ebs_spectrum_sbe_v12_0_display.m_d_incremental_refresh_ticker_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Ticker Groups
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_ticker_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_spectrum_sbe_v12_0_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Ticker Group: Struct of 11 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_ticker_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Ticker Groups
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_ticker_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_ticker_groups then
    local length = cme_ebs_spectrum_sbe_v12_0_size_of.m_d_incremental_refresh_ticker_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.m_d_incremental_refresh_ticker_groups(buffer, packet, parent)
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.m_d_incremental_refresh_ticker_groups, range, display)
  end

  return cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_ticker_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Ticker
cme_ebs_spectrum_sbe_v12_0_size_of.md_incremental_refresh_ticker = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.transact_time

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.match_event_indicator

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.m_d_incremental_refresh_ticker_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Ticker
cme_ebs_spectrum_sbe_v12_0_display.md_incremental_refresh_ticker = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Ticker
cme_ebs_spectrum_sbe_v12_0_dissect.md_incremental_refresh_ticker_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_ebs_spectrum_sbe_v12_0_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator
  index, match_event_indicator = cme_ebs_spectrum_sbe_v12_0_dissect.match_event_indicator(buffer, index, packet, parent)

  -- M D Incremental Refresh Ticker Groups: Struct of 2 fields
  index, m_d_incremental_refresh_ticker_groups = cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_ticker_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Ticker
cme_ebs_spectrum_sbe_v12_0_dissect.md_incremental_refresh_ticker = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_ticker then
    local length = cme_ebs_spectrum_sbe_v12_0_size_of.md_incremental_refresh_ticker(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.md_incremental_refresh_ticker(buffer, packet, parent)
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.md_incremental_refresh_ticker, range, display)
  end

  return cme_ebs_spectrum_sbe_v12_0_dissect.md_incremental_refresh_ticker_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Spectrum Group
cme_ebs_spectrum_sbe_v12_0_size_of.m_d_incremental_refresh_spectrum_group = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_type_spectrum_entry_type

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.financial_instrument_full_name

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.symbol

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.instrument_guid

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.security_id

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_px

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_size

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.md_entry_time

  return index
end

-- Display: M D Incremental Refresh Spectrum Group
cme_ebs_spectrum_sbe_v12_0_display.m_d_incremental_refresh_spectrum_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Spectrum Group
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_spectrum_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Type Spectrum Entry Type: 1 Byte Ascii String Enum with 2 values
  index, md_entry_type_spectrum_entry_type = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_type_spectrum_entry_type(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_ebs_spectrum_sbe_v12_0_dissect.financial_instrument_full_name(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_ebs_spectrum_sbe_v12_0_dissect.symbol(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer
  index, instrument_guid = cme_ebs_spectrum_sbe_v12_0_dissect.instrument_guid(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_ebs_spectrum_sbe_v12_0_dissect.security_id(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_size(buffer, index, packet, parent)

  -- Md Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_time = cme_ebs_spectrum_sbe_v12_0_dissect.md_entry_time(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Spectrum Group
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_spectrum_group = function(buffer, offset, packet, parent)
  if show.m_d_incremental_refresh_spectrum_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.m_d_incremental_refresh_spectrum_group, buffer(offset, 0))
    local index = cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_spectrum_group_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.m_d_incremental_refresh_spectrum_group(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_spectrum_group_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: M D Incremental Refresh Spectrum Groups
cme_ebs_spectrum_sbe_v12_0_size_of.m_d_incremental_refresh_spectrum_groups = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_spectrum_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_spectrum_group_count * 92

  return index
end

-- Display: M D Incremental Refresh Spectrum Groups
cme_ebs_spectrum_sbe_v12_0_display.m_d_incremental_refresh_spectrum_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Spectrum Groups
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_spectrum_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_ebs_spectrum_sbe_v12_0_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Spectrum Group: Struct of 8 fields
  for i = 1, num_in_group_uint_8 do
    index = cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_spectrum_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Spectrum Groups
cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_spectrum_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_spectrum_groups then
    local length = cme_ebs_spectrum_sbe_v12_0_size_of.m_d_incremental_refresh_spectrum_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.m_d_incremental_refresh_spectrum_groups(buffer, packet, parent)
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.m_d_incremental_refresh_spectrum_groups, range, display)
  end

  return cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_spectrum_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Spectrum
cme_ebs_spectrum_sbe_v12_0_size_of.md_incremental_refresh_spectrum = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.transact_time

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.match_event_indicator

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.m_d_incremental_refresh_spectrum_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Spectrum
cme_ebs_spectrum_sbe_v12_0_display.md_incremental_refresh_spectrum = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Spectrum
cme_ebs_spectrum_sbe_v12_0_dissect.md_incremental_refresh_spectrum_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_ebs_spectrum_sbe_v12_0_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator
  index, match_event_indicator = cme_ebs_spectrum_sbe_v12_0_dissect.match_event_indicator(buffer, index, packet, parent)

  -- M D Incremental Refresh Spectrum Groups: Struct of 2 fields
  index, m_d_incremental_refresh_spectrum_groups = cme_ebs_spectrum_sbe_v12_0_dissect.m_d_incremental_refresh_spectrum_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Spectrum
cme_ebs_spectrum_sbe_v12_0_dissect.md_incremental_refresh_spectrum = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_spectrum then
    local length = cme_ebs_spectrum_sbe_v12_0_size_of.md_incremental_refresh_spectrum(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.md_incremental_refresh_spectrum(buffer, packet, parent)
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.md_incremental_refresh_spectrum, range, display)
  end

  return cme_ebs_spectrum_sbe_v12_0_dissect.md_incremental_refresh_spectrum_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
cme_ebs_spectrum_sbe_v12_0_size_of.payload = function(buffer, offset, template_id)
  -- Size of Admin Heartbeat
  if template_id == 302 then
    return 0
  end
  -- Size of Md Incremental Refresh Spectrum
  if template_id == 303 then
    return cme_ebs_spectrum_sbe_v12_0_size_of.md_incremental_refresh_spectrum(buffer, offset)
  end
  -- Size of Md Incremental Refresh Ticker
  if template_id == 304 then
    return cme_ebs_spectrum_sbe_v12_0_size_of.md_incremental_refresh_ticker(buffer, offset)
  end
  -- Size of Md Snapshot Refresh Spectrum
  if template_id == 305 then
    return cme_ebs_spectrum_sbe_v12_0_size_of.md_snapshot_refresh_spectrum(buffer, offset)
  end
  -- Size of Md Snapshot Refresh Ticker
  if template_id == 306 then
    return cme_ebs_spectrum_sbe_v12_0_size_of.md_snapshot_refresh_ticker(buffer, offset)
  end
  -- Size of Global Day Roll
  if template_id == 307 then
    return cme_ebs_spectrum_sbe_v12_0_size_of.global_day_roll(buffer, offset)
  end

  return 0
end

-- Display: Payload
cme_ebs_spectrum_sbe_v12_0_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cme_ebs_spectrum_sbe_v12_0_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Admin Heartbeat
  if template_id == 302 then
  end
  -- Dissect Md Incremental Refresh Spectrum
  if template_id == 303 then
    return cme_ebs_spectrum_sbe_v12_0_dissect.md_incremental_refresh_spectrum(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Ticker
  if template_id == 304 then
    return cme_ebs_spectrum_sbe_v12_0_dissect.md_incremental_refresh_ticker(buffer, offset, packet, parent)
  end
  -- Dissect Md Snapshot Refresh Spectrum
  if template_id == 305 then
    return cme_ebs_spectrum_sbe_v12_0_dissect.md_snapshot_refresh_spectrum(buffer, offset, packet, parent)
  end
  -- Dissect Md Snapshot Refresh Ticker
  if template_id == 306 then
    return cme_ebs_spectrum_sbe_v12_0_dissect.md_snapshot_refresh_ticker(buffer, offset, packet, parent)
  end
  -- Dissect Global Day Roll
  if template_id == 307 then
    return cme_ebs_spectrum_sbe_v12_0_dissect.global_day_roll(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cme_ebs_spectrum_sbe_v12_0_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return cme_ebs_spectrum_sbe_v12_0_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = cme_ebs_spectrum_sbe_v12_0_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cme_ebs_spectrum_sbe_v12_0_display.payload(buffer, packet, parent)
  local element = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.payload, range, display)

  return cme_ebs_spectrum_sbe_v12_0_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
cme_ebs_spectrum_sbe_v12_0_size_of.version = 2

-- Display: Version
cme_ebs_spectrum_sbe_v12_0_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
cme_ebs_spectrum_sbe_v12_0_dissect.version = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_spectrum_sbe_v12_0_display.version(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
cme_ebs_spectrum_sbe_v12_0_size_of.schema_id = 2

-- Display: Schema Id
cme_ebs_spectrum_sbe_v12_0_display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
cme_ebs_spectrum_sbe_v12_0_dissect.schema_id = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_spectrum_sbe_v12_0_display.schema_id(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
cme_ebs_spectrum_sbe_v12_0_size_of.template_id = 2

-- Display: Template Id
cme_ebs_spectrum_sbe_v12_0_display.template_id = function(value)
  if value == 302 then
    return "Template Id: Admin Heartbeat (302)"
  end
  if value == 303 then
    return "Template Id: Md Incremental Refresh Spectrum (303)"
  end
  if value == 304 then
    return "Template Id: Md Incremental Refresh Ticker (304)"
  end
  if value == 305 then
    return "Template Id: Md Snapshot Refresh Spectrum (305)"
  end
  if value == 306 then
    return "Template Id: Md Snapshot Refresh Ticker (306)"
  end
  if value == 307 then
    return "Template Id: Global Day Roll (307)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
cme_ebs_spectrum_sbe_v12_0_dissect.template_id = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_spectrum_sbe_v12_0_display.template_id(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cme_ebs_spectrum_sbe_v12_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.block_length

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.template_id

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.schema_id

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.version

  return index
end

-- Display: Message Header
cme_ebs_spectrum_sbe_v12_0_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_ebs_spectrum_sbe_v12_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_ebs_spectrum_sbe_v12_0_dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, template_id = cme_ebs_spectrum_sbe_v12_0_dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = cme_ebs_spectrum_sbe_v12_0_dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = cme_ebs_spectrum_sbe_v12_0_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_ebs_spectrum_sbe_v12_0_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.message_header, buffer(offset, 0))
    local index = cme_ebs_spectrum_sbe_v12_0_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cme_ebs_spectrum_sbe_v12_0_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Size: Message Size
cme_ebs_spectrum_sbe_v12_0_size_of.message_size = 2

-- Display: Message Size
cme_ebs_spectrum_sbe_v12_0_display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_ebs_spectrum_sbe_v12_0_dissect.message_size = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.message_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_spectrum_sbe_v12_0_display.message_size(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
cme_ebs_spectrum_sbe_v12_0_size_of.message = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.message_size

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
cme_ebs_spectrum_sbe_v12_0_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cme_ebs_spectrum_sbe_v12_0_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_ebs_spectrum_sbe_v12_0_dissect.message_size(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_ebs_spectrum_sbe_v12_0_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 6 branches
  index = cme_ebs_spectrum_sbe_v12_0_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cme_ebs_spectrum_sbe_v12_0_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = cme_ebs_spectrum_sbe_v12_0_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.message(buffer, packet, parent)
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.message, range, display)
  end

  return cme_ebs_spectrum_sbe_v12_0_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Sending Time
cme_ebs_spectrum_sbe_v12_0_size_of.sending_time = 8

-- Display: Sending Time
cme_ebs_spectrum_sbe_v12_0_display.sending_time = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
cme_ebs_spectrum_sbe_v12_0_dissect.sending_time = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.sending_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_ebs_spectrum_sbe_v12_0_display.sending_time(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Size: Message Sequence Number
cme_ebs_spectrum_sbe_v12_0_size_of.message_sequence_number = 4

-- Display: Message Sequence Number
cme_ebs_spectrum_sbe_v12_0_display.message_sequence_number = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
cme_ebs_spectrum_sbe_v12_0_dissect.message_sequence_number = function(buffer, offset, packet, parent)
  local length = cme_ebs_spectrum_sbe_v12_0_size_of.message_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_ebs_spectrum_sbe_v12_0_display.message_sequence_number(value, buffer, offset, packet, parent)

  parent:add(cme_ebs_spectrum_sbe_v12_0.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Binary Packet Header
cme_ebs_spectrum_sbe_v12_0_size_of.binary_packet_header = function(buffer, offset)
  local index = 0

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.message_sequence_number

  index = index + cme_ebs_spectrum_sbe_v12_0_size_of.sending_time

  return index
end

-- Display: Binary Packet Header
cme_ebs_spectrum_sbe_v12_0_display.binary_packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Packet Header
cme_ebs_spectrum_sbe_v12_0_dissect.binary_packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = cme_ebs_spectrum_sbe_v12_0_dissect.message_sequence_number(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_ebs_spectrum_sbe_v12_0_dissect.sending_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
cme_ebs_spectrum_sbe_v12_0_dissect.binary_packet_header = function(buffer, offset, packet, parent)
  if show.binary_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_ebs_spectrum_sbe_v12_0.fields.binary_packet_header, buffer(offset, 0))
    local index = cme_ebs_spectrum_sbe_v12_0_dissect.binary_packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_ebs_spectrum_sbe_v12_0_display.binary_packet_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cme_ebs_spectrum_sbe_v12_0_dissect.binary_packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
cme_ebs_spectrum_sbe_v12_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = cme_ebs_spectrum_sbe_v12_0_dissect.binary_packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index = cme_ebs_spectrum_sbe_v12_0_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cme_ebs_spectrum_sbe_v12_0.init()
end

-- Dissector for Cme Ebs Spectrum Sbe 12.0
function cme_ebs_spectrum_sbe_v12_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cme_ebs_spectrum_sbe_v12_0.name

  -- Dissect protocol
  local protocol = parent:add(cme_ebs_spectrum_sbe_v12_0, buffer(), cme_ebs_spectrum_sbe_v12_0.description, "("..buffer:len().." Bytes)")
  return cme_ebs_spectrum_sbe_v12_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cme_ebs_spectrum_sbe_v12_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cme_ebs_spectrum_sbe_v12_0_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(18, 2):le_uint()

  if value == 12 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Ebs Spectrum Sbe 12.0
local function cme_ebs_spectrum_sbe_v12_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cme_ebs_spectrum_sbe_v12_0_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cme_ebs_spectrum_sbe_v12_0
  cme_ebs_spectrum_sbe_v12_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme Ebs Spectrum Sbe 12.0
cme_ebs_spectrum_sbe_v12_0:register_heuristic("udp", cme_ebs_spectrum_sbe_v12_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Mercantile Exchange
--   Version: 12.0
--   Date: Friday, April 8, 2022
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
