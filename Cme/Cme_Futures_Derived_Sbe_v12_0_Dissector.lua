-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Futures Derived Sbe 12.0 Protocol
local omi_cme_futures_derived_sbe_v12_0 = Proto("Cme.Futures.Derived.Sbe.v12.0.Lua", "Cme Futures Derived Sbe 12.0")

-- Protocol table
local cme_futures_derived_sbe_v12_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Futures Derived Sbe 12.0 Fields
omi_cme_futures_derived_sbe_v12_0.fields.aggressor_side = ProtoField.new("Aggressor Side", "cme.futures.derived.sbe.v12.0.aggressorside", ftypes.UINT8)
omi_cme_futures_derived_sbe_v12_0.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.futures.derived.sbe.v12.0.binarypacketheader", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.block_length = ProtoField.new("Block Length", "cme.futures.derived.sbe.v12.0.blocklength", ftypes.UINT16)
omi_cme_futures_derived_sbe_v12_0.fields.financial_instrument_full_name = ProtoField.new("Financial Instrument Full Name", "cme.futures.derived.sbe.v12.0.financialinstrumentfullname", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.group_size = ProtoField.new("Group Size", "cme.futures.derived.sbe.v12.0.groupsize", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.incremental_refresh_spectrum_group = ProtoField.new("Incremental Refresh Spectrum Group", "cme.futures.derived.sbe.v12.0.incrementalrefreshspectrumgroup", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.incremental_refresh_spectrum_groups = ProtoField.new("Incremental Refresh Spectrum Groups", "cme.futures.derived.sbe.v12.0.incrementalrefreshspectrumgroups", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.incremental_refresh_ticker_group = ProtoField.new("Incremental Refresh Ticker Group", "cme.futures.derived.sbe.v12.0.incrementalrefreshtickergroup", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.incremental_refresh_ticker_groups = ProtoField.new("Incremental Refresh Ticker Groups", "cme.futures.derived.sbe.v12.0.incrementalrefreshtickergroups", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.instrument_guid = ProtoField.new("Instrument Guid", "cme.futures.derived.sbe.v12.0.instrumentguid", ftypes.UINT64)
omi_cme_futures_derived_sbe_v12_0.fields.md_entry_px = ProtoField.new("Md Entry Px", "cme.futures.derived.sbe.v12.0.mdentrypx", ftypes.DOUBLE)
omi_cme_futures_derived_sbe_v12_0.fields.md_entry_size = ProtoField.new("Md Entry Size", "cme.futures.derived.sbe.v12.0.mdentrysize", ftypes.UINT64)
omi_cme_futures_derived_sbe_v12_0.fields.md_entry_time = ProtoField.new("Md Entry Time", "cme.futures.derived.sbe.v12.0.mdentrytime", ftypes.UINT64)
omi_cme_futures_derived_sbe_v12_0.fields.md_entry_type_spectrum_entry_type = ProtoField.new("Md Entry Type Spectrum Entry Type", "cme.futures.derived.sbe.v12.0.mdentrytypespectrumentrytype", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.md_entry_type_ticker_entry_type = ProtoField.new("Md Entry Type Ticker Entry Type", "cme.futures.derived.sbe.v12.0.mdentrytypetickerentrytype", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.message = ProtoField.new("Message", "cme.futures.derived.sbe.v12.0.message", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.message_header = ProtoField.new("Message Header", "cme.futures.derived.sbe.v12.0.messageheader", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.message_size = ProtoField.new("Message Size", "cme.futures.derived.sbe.v12.0.messagesize", ftypes.UINT16)
omi_cme_futures_derived_sbe_v12_0.fields.num_in_group = ProtoField.new("Num In Group", "cme.futures.derived.sbe.v12.0.numingroup", ftypes.UINT8)
omi_cme_futures_derived_sbe_v12_0.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "cme.futures.derived.sbe.v12.0.openclosesettlflag", ftypes.UINT8)
omi_cme_futures_derived_sbe_v12_0.fields.packet = ProtoField.new("Packet", "cme.futures.derived.sbe.v12.0.packet", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "cme.futures.derived.sbe.v12.0.packetsequencenumber", ftypes.UINT32)
omi_cme_futures_derived_sbe_v12_0.fields.payload = ProtoField.new("Payload", "cme.futures.derived.sbe.v12.0.payload", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.schema_id = ProtoField.new("Schema Id", "cme.futures.derived.sbe.v12.0.schemaid", ftypes.UINT16)
omi_cme_futures_derived_sbe_v12_0.fields.security_id = ProtoField.new("Security Id", "cme.futures.derived.sbe.v12.0.securityid", ftypes.INT32)
omi_cme_futures_derived_sbe_v12_0.fields.security_trading_event = ProtoField.new("Security Trading Event", "cme.futures.derived.sbe.v12.0.securitytradingevent", ftypes.UINT8)
omi_cme_futures_derived_sbe_v12_0.fields.sending_time = ProtoField.new("Sending Time", "cme.futures.derived.sbe.v12.0.sendingtime", ftypes.UINT64)
omi_cme_futures_derived_sbe_v12_0.fields.snapshot_refresh_spectrum_group = ProtoField.new("Snapshot Refresh Spectrum Group", "cme.futures.derived.sbe.v12.0.snapshotrefreshspectrumgroup", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.snapshot_refresh_spectrum_groups = ProtoField.new("Snapshot Refresh Spectrum Groups", "cme.futures.derived.sbe.v12.0.snapshotrefreshspectrumgroups", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.snapshot_refresh_ticker_group = ProtoField.new("Snapshot Refresh Ticker Group", "cme.futures.derived.sbe.v12.0.snapshotrefreshtickergroup", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.snapshot_refresh_ticker_groups = ProtoField.new("Snapshot Refresh Ticker Groups", "cme.futures.derived.sbe.v12.0.snapshotrefreshtickergroups", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.symbol = ProtoField.new("Symbol", "cme.futures.derived.sbe.v12.0.symbol", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.template_id = ProtoField.new("Template Id", "cme.futures.derived.sbe.v12.0.templateid", ftypes.UINT16)
omi_cme_futures_derived_sbe_v12_0.fields.trading_session_id = ProtoField.new("Trading Session Id", "cme.futures.derived.sbe.v12.0.tradingsessionid", ftypes.UINT8)
omi_cme_futures_derived_sbe_v12_0.fields.transact_time = ProtoField.new("Transact Time", "cme.futures.derived.sbe.v12.0.transacttime", ftypes.UINT64)
omi_cme_futures_derived_sbe_v12_0.fields.version = ProtoField.new("Version", "cme.futures.derived.sbe.v12.0.version", ftypes.UINT16)

-- Cme Futures Derived Sbe 12.0 messages
omi_cme_futures_derived_sbe_v12_0.fields.global_day_roll = ProtoField.new("Global Day Roll", "cme.futures.derived.sbe.v12.0.globaldayroll", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.md_incremental_refresh_spectrum = ProtoField.new("Md Incremental Refresh Spectrum", "cme.futures.derived.sbe.v12.0.mdincrementalrefreshspectrum", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.md_incremental_refresh_ticker = ProtoField.new("Md Incremental Refresh Ticker", "cme.futures.derived.sbe.v12.0.mdincrementalrefreshticker", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.md_snapshot_refresh_spectrum = ProtoField.new("Md Snapshot Refresh Spectrum", "cme.futures.derived.sbe.v12.0.mdsnapshotrefreshspectrum", ftypes.STRING)
omi_cme_futures_derived_sbe_v12_0.fields.md_snapshot_refresh_ticker = ProtoField.new("Md Snapshot Refresh Ticker", "cme.futures.derived.sbe.v12.0.mdsnapshotrefreshticker", ftypes.STRING)

-- Cme Futures Derived Sbe 12.0 generated fields
omi_cme_futures_derived_sbe_v12_0.fields.incremental_refresh_spectrum_group_index = ProtoField.new("Incremental Refresh Spectrum Group Index", "cme.futures.derived.sbe.v12.0.incrementalrefreshspectrumgroupindex", ftypes.UINT16)
omi_cme_futures_derived_sbe_v12_0.fields.incremental_refresh_ticker_group_index = ProtoField.new("Incremental Refresh Ticker Group Index", "cme.futures.derived.sbe.v12.0.incrementalrefreshtickergroupindex", ftypes.UINT16)
omi_cme_futures_derived_sbe_v12_0.fields.snapshot_refresh_spectrum_group_index = ProtoField.new("Snapshot Refresh Spectrum Group Index", "cme.futures.derived.sbe.v12.0.snapshotrefreshspectrumgroupindex", ftypes.UINT16)
omi_cme_futures_derived_sbe_v12_0.fields.snapshot_refresh_ticker_group_index = ProtoField.new("Snapshot Refresh Ticker Group Index", "cme.futures.derived.sbe.v12.0.snapshotrefreshtickergroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cme Futures Derived Sbe 12.0 Element Dissection Options
show.binary_packet_header = true
show.global_day_roll = true
show.group_size = true
show.incremental_refresh_spectrum_group = true
show.incremental_refresh_spectrum_groups = true
show.incremental_refresh_ticker_group = true
show.incremental_refresh_ticker_groups = true
show.md_incremental_refresh_spectrum = true
show.md_incremental_refresh_ticker = true
show.md_snapshot_refresh_spectrum = true
show.md_snapshot_refresh_ticker = true
show.message = true
show.message_header = true
show.packet = true
show.snapshot_refresh_spectrum_group = true
show.snapshot_refresh_spectrum_groups = true
show.snapshot_refresh_ticker_group = true
show.snapshot_refresh_ticker_groups = true
show.payload = false

-- Register Cme Futures Derived Sbe 12.0 Show Options
omi_cme_futures_derived_sbe_v12_0.prefs.show_binary_packet_header = Pref.bool("Show Binary Packet Header", show.binary_packet_header, "Parse and add Binary Packet Header to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_global_day_roll = Pref.bool("Show Global Day Roll", show.global_day_roll, "Parse and add Global Day Roll to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_incremental_refresh_spectrum_group = Pref.bool("Show Incremental Refresh Spectrum Group", show.incremental_refresh_spectrum_group, "Parse and add Incremental Refresh Spectrum Group to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_incremental_refresh_spectrum_groups = Pref.bool("Show Incremental Refresh Spectrum Groups", show.incremental_refresh_spectrum_groups, "Parse and add Incremental Refresh Spectrum Groups to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_incremental_refresh_ticker_group = Pref.bool("Show Incremental Refresh Ticker Group", show.incremental_refresh_ticker_group, "Parse and add Incremental Refresh Ticker Group to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_incremental_refresh_ticker_groups = Pref.bool("Show Incremental Refresh Ticker Groups", show.incremental_refresh_ticker_groups, "Parse and add Incremental Refresh Ticker Groups to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_md_incremental_refresh_spectrum = Pref.bool("Show Md Incremental Refresh Spectrum", show.md_incremental_refresh_spectrum, "Parse and add Md Incremental Refresh Spectrum to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_md_incremental_refresh_ticker = Pref.bool("Show Md Incremental Refresh Ticker", show.md_incremental_refresh_ticker, "Parse and add Md Incremental Refresh Ticker to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_md_snapshot_refresh_spectrum = Pref.bool("Show Md Snapshot Refresh Spectrum", show.md_snapshot_refresh_spectrum, "Parse and add Md Snapshot Refresh Spectrum to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_md_snapshot_refresh_ticker = Pref.bool("Show Md Snapshot Refresh Ticker", show.md_snapshot_refresh_ticker, "Parse and add Md Snapshot Refresh Ticker to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_snapshot_refresh_spectrum_group = Pref.bool("Show Snapshot Refresh Spectrum Group", show.snapshot_refresh_spectrum_group, "Parse and add Snapshot Refresh Spectrum Group to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_snapshot_refresh_spectrum_groups = Pref.bool("Show Snapshot Refresh Spectrum Groups", show.snapshot_refresh_spectrum_groups, "Parse and add Snapshot Refresh Spectrum Groups to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_snapshot_refresh_ticker_group = Pref.bool("Show Snapshot Refresh Ticker Group", show.snapshot_refresh_ticker_group, "Parse and add Snapshot Refresh Ticker Group to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_snapshot_refresh_ticker_groups = Pref.bool("Show Snapshot Refresh Ticker Groups", show.snapshot_refresh_ticker_groups, "Parse and add Snapshot Refresh Ticker Groups to protocol tree")
omi_cme_futures_derived_sbe_v12_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_cme_futures_derived_sbe_v12_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.binary_packet_header ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_binary_packet_header then
    show.binary_packet_header = omi_cme_futures_derived_sbe_v12_0.prefs.show_binary_packet_header
    changed = true
  end
  if show.global_day_roll ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_global_day_roll then
    show.global_day_roll = omi_cme_futures_derived_sbe_v12_0.prefs.show_global_day_roll
    changed = true
  end
  if show.group_size ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_group_size then
    show.group_size = omi_cme_futures_derived_sbe_v12_0.prefs.show_group_size
    changed = true
  end
  if show.incremental_refresh_spectrum_group ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_incremental_refresh_spectrum_group then
    show.incremental_refresh_spectrum_group = omi_cme_futures_derived_sbe_v12_0.prefs.show_incremental_refresh_spectrum_group
    changed = true
  end
  if show.incremental_refresh_spectrum_groups ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_incremental_refresh_spectrum_groups then
    show.incremental_refresh_spectrum_groups = omi_cme_futures_derived_sbe_v12_0.prefs.show_incremental_refresh_spectrum_groups
    changed = true
  end
  if show.incremental_refresh_ticker_group ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_incremental_refresh_ticker_group then
    show.incremental_refresh_ticker_group = omi_cme_futures_derived_sbe_v12_0.prefs.show_incremental_refresh_ticker_group
    changed = true
  end
  if show.incremental_refresh_ticker_groups ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_incremental_refresh_ticker_groups then
    show.incremental_refresh_ticker_groups = omi_cme_futures_derived_sbe_v12_0.prefs.show_incremental_refresh_ticker_groups
    changed = true
  end
  if show.md_incremental_refresh_spectrum ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_md_incremental_refresh_spectrum then
    show.md_incremental_refresh_spectrum = omi_cme_futures_derived_sbe_v12_0.prefs.show_md_incremental_refresh_spectrum
    changed = true
  end
  if show.md_incremental_refresh_ticker ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_md_incremental_refresh_ticker then
    show.md_incremental_refresh_ticker = omi_cme_futures_derived_sbe_v12_0.prefs.show_md_incremental_refresh_ticker
    changed = true
  end
  if show.md_snapshot_refresh_spectrum ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_md_snapshot_refresh_spectrum then
    show.md_snapshot_refresh_spectrum = omi_cme_futures_derived_sbe_v12_0.prefs.show_md_snapshot_refresh_spectrum
    changed = true
  end
  if show.md_snapshot_refresh_ticker ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_md_snapshot_refresh_ticker then
    show.md_snapshot_refresh_ticker = omi_cme_futures_derived_sbe_v12_0.prefs.show_md_snapshot_refresh_ticker
    changed = true
  end
  if show.message ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_message then
    show.message = omi_cme_futures_derived_sbe_v12_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_message_header then
    show.message_header = omi_cme_futures_derived_sbe_v12_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_packet then
    show.packet = omi_cme_futures_derived_sbe_v12_0.prefs.show_packet
    changed = true
  end
  if show.snapshot_refresh_spectrum_group ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_snapshot_refresh_spectrum_group then
    show.snapshot_refresh_spectrum_group = omi_cme_futures_derived_sbe_v12_0.prefs.show_snapshot_refresh_spectrum_group
    changed = true
  end
  if show.snapshot_refresh_spectrum_groups ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_snapshot_refresh_spectrum_groups then
    show.snapshot_refresh_spectrum_groups = omi_cme_futures_derived_sbe_v12_0.prefs.show_snapshot_refresh_spectrum_groups
    changed = true
  end
  if show.snapshot_refresh_ticker_group ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_snapshot_refresh_ticker_group then
    show.snapshot_refresh_ticker_group = omi_cme_futures_derived_sbe_v12_0.prefs.show_snapshot_refresh_ticker_group
    changed = true
  end
  if show.snapshot_refresh_ticker_groups ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_snapshot_refresh_ticker_groups then
    show.snapshot_refresh_ticker_groups = omi_cme_futures_derived_sbe_v12_0.prefs.show_snapshot_refresh_ticker_groups
    changed = true
  end
  if show.payload ~= omi_cme_futures_derived_sbe_v12_0.prefs.show_payload then
    show.payload = omi_cme_futures_derived_sbe_v12_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cme Futures Derived Sbe 12.0
-----------------------------------------------------------------------

-- Security Trading Event
cme_futures_derived_sbe_v12_0.security_trading_event = {}

-- Size: Security Trading Event
cme_futures_derived_sbe_v12_0.security_trading_event.size = 1

-- Display: Security Trading Event
cme_futures_derived_sbe_v12_0.security_trading_event.display = function(value)
  if value == 4 then
    return "Security Trading Event: Global Day Roll (4)"
  end

  return "Security Trading Event: Unknown("..value..")"
end

-- Dissect: Security Trading Event
cme_futures_derived_sbe_v12_0.security_trading_event.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.security_trading_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_derived_sbe_v12_0.security_trading_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.security_trading_event, range, value, display)

  return offset + length, value
end

-- Transact Time
cme_futures_derived_sbe_v12_0.transact_time = {}

-- Size: Transact Time
cme_futures_derived_sbe_v12_0.transact_time.size = 8

-- Display: Transact Time
cme_futures_derived_sbe_v12_0.transact_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
cme_futures_derived_sbe_v12_0.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_derived_sbe_v12_0.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Global Day Roll
cme_futures_derived_sbe_v12_0.global_day_roll = {}

-- Size: Global Day Roll
cme_futures_derived_sbe_v12_0.global_day_roll.size =
  cme_futures_derived_sbe_v12_0.transact_time.size + 
  cme_futures_derived_sbe_v12_0.security_trading_event.size

-- Display: Global Day Roll
cme_futures_derived_sbe_v12_0.global_day_roll.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Day Roll
cme_futures_derived_sbe_v12_0.global_day_roll.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_derived_sbe_v12_0.transact_time.dissect(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, security_trading_event = cme_futures_derived_sbe_v12_0.security_trading_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Day Roll
cme_futures_derived_sbe_v12_0.global_day_roll.dissect = function(buffer, offset, packet, parent)
  if show.global_day_roll then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.global_day_roll, buffer(offset, 0))
    local index = cme_futures_derived_sbe_v12_0.global_day_roll.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_derived_sbe_v12_0.global_day_roll.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_derived_sbe_v12_0.global_day_roll.fields(buffer, offset, packet, parent)
  end
end

-- Aggressor Side
cme_futures_derived_sbe_v12_0.aggressor_side = {}

-- Size: Aggressor Side
cme_futures_derived_sbe_v12_0.aggressor_side.size = 1

-- Display: Aggressor Side
cme_futures_derived_sbe_v12_0.aggressor_side.display = function(value)
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
cme_futures_derived_sbe_v12_0.aggressor_side.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.aggressor_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_derived_sbe_v12_0.aggressor_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Trading Session Id
cme_futures_derived_sbe_v12_0.trading_session_id = {}

-- Size: Trading Session Id
cme_futures_derived_sbe_v12_0.trading_session_id.size = 1

-- Display: Trading Session Id
cme_futures_derived_sbe_v12_0.trading_session_id.display = function(value)
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
cme_futures_derived_sbe_v12_0.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_derived_sbe_v12_0.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Open Close Settl Flag
cme_futures_derived_sbe_v12_0.open_close_settl_flag = {}

-- Size: Open Close Settl Flag
cme_futures_derived_sbe_v12_0.open_close_settl_flag.size = 1

-- Display: Open Close Settl Flag
cme_futures_derived_sbe_v12_0.open_close_settl_flag.display = function(value)
  if value == 0 then
    return "Open Close Settl Flag: Current Day (0)"
  end
  if value == 4 then
    return "Open Close Settl Flag: Previous Day (4)"
  end

  return "Open Close Settl Flag: Unknown("..value..")"
end

-- Dissect: Open Close Settl Flag
cme_futures_derived_sbe_v12_0.open_close_settl_flag.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.open_close_settl_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_derived_sbe_v12_0.open_close_settl_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.open_close_settl_flag, range, value, display)

  return offset + length, value
end

-- Md Entry Time
cme_futures_derived_sbe_v12_0.md_entry_time = {}

-- Size: Md Entry Time
cme_futures_derived_sbe_v12_0.md_entry_time.size = 8

-- Display: Md Entry Time
cme_futures_derived_sbe_v12_0.md_entry_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Md Entry Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Md Entry Time
cme_futures_derived_sbe_v12_0.md_entry_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.md_entry_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_derived_sbe_v12_0.md_entry_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.md_entry_time, range, value, display)

  return offset + length, value
end

-- Md Entry Size
cme_futures_derived_sbe_v12_0.md_entry_size = {}

-- Size: Md Entry Size
cme_futures_derived_sbe_v12_0.md_entry_size.size = 8

-- Display: Md Entry Size
cme_futures_derived_sbe_v12_0.md_entry_size.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
cme_futures_derived_sbe_v12_0.md_entry_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.md_entry_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_derived_sbe_v12_0.md_entry_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Md Entry Px
cme_futures_derived_sbe_v12_0.md_entry_px = {}

-- Size: Md Entry Px
cme_futures_derived_sbe_v12_0.md_entry_px.size = 8

-- Display: Md Entry Px
cme_futures_derived_sbe_v12_0.md_entry_px.display = function(value)
  return "Md Entry Px: "..value
end

-- Translate: Md Entry Px
cme_futures_derived_sbe_v12_0.md_entry_px.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Md Entry Px
cme_futures_derived_sbe_v12_0.md_entry_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.md_entry_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_derived_sbe_v12_0.md_entry_px.translate(raw)
  local display = cme_futures_derived_sbe_v12_0.md_entry_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Md Entry Type Ticker Entry Type
cme_futures_derived_sbe_v12_0.md_entry_type_ticker_entry_type = {}

-- Size: Md Entry Type Ticker Entry Type
cme_futures_derived_sbe_v12_0.md_entry_type_ticker_entry_type.size = 1

-- Display: Md Entry Type Ticker Entry Type
cme_futures_derived_sbe_v12_0.md_entry_type_ticker_entry_type.display = function(value)
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
cme_futures_derived_sbe_v12_0.md_entry_type_ticker_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.md_entry_type_ticker_entry_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_derived_sbe_v12_0.md_entry_type_ticker_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.md_entry_type_ticker_entry_type, range, value, display)

  return offset + length, value
end

-- Snapshot Refresh Ticker Group
cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_group = {}

-- Size: Snapshot Refresh Ticker Group
cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_group.size =
  cme_futures_derived_sbe_v12_0.md_entry_type_ticker_entry_type.size + 
  cme_futures_derived_sbe_v12_0.md_entry_px.size + 
  cme_futures_derived_sbe_v12_0.md_entry_size.size + 
  cme_futures_derived_sbe_v12_0.md_entry_time.size + 
  cme_futures_derived_sbe_v12_0.open_close_settl_flag.size + 
  cme_futures_derived_sbe_v12_0.trading_session_id.size + 
  cme_futures_derived_sbe_v12_0.aggressor_side.size

-- Display: Snapshot Refresh Ticker Group
cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Refresh Ticker Group
cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_group.fields = function(buffer, offset, packet, parent, snapshot_refresh_ticker_group_index)
  local index = offset

  -- Implicit Snapshot Refresh Ticker Group Index
  if snapshot_refresh_ticker_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.snapshot_refresh_ticker_group_index, snapshot_refresh_ticker_group_index)
    iteration:set_generated()
  end

  -- Md Entry Type Ticker Entry Type: 1 Byte Ascii String Enum with 12 values
  index, md_entry_type_ticker_entry_type = cme_futures_derived_sbe_v12_0.md_entry_type_ticker_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_derived_sbe_v12_0.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size = cme_futures_derived_sbe_v12_0.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_time = cme_futures_derived_sbe_v12_0.md_entry_time.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, open_close_settl_flag = cme_futures_derived_sbe_v12_0.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trading_session_id = cme_futures_derived_sbe_v12_0.trading_session_id.dissect(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, aggressor_side = cme_futures_derived_sbe_v12_0.aggressor_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Refresh Ticker Group
cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_group.dissect = function(buffer, offset, packet, parent, snapshot_refresh_ticker_group_index)
  if show.snapshot_refresh_ticker_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.snapshot_refresh_ticker_group, buffer(offset, 0))
    local index = cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_group.fields(buffer, offset, packet, parent, snapshot_refresh_ticker_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_group.fields(buffer, offset, packet, parent, snapshot_refresh_ticker_group_index)
  end
end

-- Num In Group
cme_futures_derived_sbe_v12_0.num_in_group = {}

-- Size: Num In Group
cme_futures_derived_sbe_v12_0.num_in_group.size = 1

-- Display: Num In Group
cme_futures_derived_sbe_v12_0.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
cme_futures_derived_sbe_v12_0.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_derived_sbe_v12_0.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Block Length
cme_futures_derived_sbe_v12_0.block_length = {}

-- Size: Block Length
cme_futures_derived_sbe_v12_0.block_length.size = 2

-- Display: Block Length
cme_futures_derived_sbe_v12_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_futures_derived_sbe_v12_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_derived_sbe_v12_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Group Size
cme_futures_derived_sbe_v12_0.group_size = {}

-- Size: Group Size
cme_futures_derived_sbe_v12_0.group_size.size =
  cme_futures_derived_sbe_v12_0.block_length.size + 
  cme_futures_derived_sbe_v12_0.num_in_group.size

-- Display: Group Size
cme_futures_derived_sbe_v12_0.group_size.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
cme_futures_derived_sbe_v12_0.group_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_derived_sbe_v12_0.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = cme_futures_derived_sbe_v12_0.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_futures_derived_sbe_v12_0.group_size.dissect = function(buffer, offset, packet, parent)
  if show.group_size then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.group_size, buffer(offset, 0))
    local index = cme_futures_derived_sbe_v12_0.group_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_derived_sbe_v12_0.group_size.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_derived_sbe_v12_0.group_size.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Refresh Ticker Groups
cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_groups = {}

-- Calculate size of: Snapshot Refresh Ticker Groups
cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_derived_sbe_v12_0.group_size.size

  -- Calculate field size from count
  local snapshot_refresh_ticker_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_refresh_ticker_group_count * 28

  return index
end

-- Display: Snapshot Refresh Ticker Groups
cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Refresh Ticker Groups
cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_derived_sbe_v12_0.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Refresh Ticker Group
  for snapshot_refresh_ticker_group_index = 1, num_in_group do
    index, snapshot_refresh_ticker_group = cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_group.dissect(buffer, index, packet, parent, snapshot_refresh_ticker_group_index)
  end

  return index
end

-- Dissect: Snapshot Refresh Ticker Groups
cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_refresh_ticker_groups then
    local length = cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.snapshot_refresh_ticker_groups, range, display)
  end

  return cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_groups.fields(buffer, offset, packet, parent)
end

-- Security Id
cme_futures_derived_sbe_v12_0.security_id = {}

-- Size: Security Id
cme_futures_derived_sbe_v12_0.security_id.size = 4

-- Display: Security Id
cme_futures_derived_sbe_v12_0.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
cme_futures_derived_sbe_v12_0.security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_derived_sbe_v12_0.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Instrument Guid
cme_futures_derived_sbe_v12_0.instrument_guid = {}

-- Size: Instrument Guid
cme_futures_derived_sbe_v12_0.instrument_guid.size = 8

-- Display: Instrument Guid
cme_futures_derived_sbe_v12_0.instrument_guid.display = function(value)
  return "Instrument Guid: "..value
end

-- Dissect: Instrument Guid
cme_futures_derived_sbe_v12_0.instrument_guid.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.instrument_guid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_derived_sbe_v12_0.instrument_guid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.instrument_guid, range, value, display)

  return offset + length, value
end

-- Symbol
cme_futures_derived_sbe_v12_0.symbol = {}

-- Size: Symbol
cme_futures_derived_sbe_v12_0.symbol.size = 20

-- Display: Symbol
cme_futures_derived_sbe_v12_0.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cme_futures_derived_sbe_v12_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.symbol.size
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

  local display = cme_futures_derived_sbe_v12_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Financial Instrument Full Name
cme_futures_derived_sbe_v12_0.financial_instrument_full_name = {}

-- Size: Financial Instrument Full Name
cme_futures_derived_sbe_v12_0.financial_instrument_full_name.size = 35

-- Display: Financial Instrument Full Name
cme_futures_derived_sbe_v12_0.financial_instrument_full_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Financial Instrument Full Name: No Value"
  end

  return "Financial Instrument Full Name: "..value
end

-- Dissect: Financial Instrument Full Name
cme_futures_derived_sbe_v12_0.financial_instrument_full_name.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.financial_instrument_full_name.size
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

  local display = cme_futures_derived_sbe_v12_0.financial_instrument_full_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.financial_instrument_full_name, range, value, display)

  return offset + length, value
end

-- Md Snapshot Refresh Ticker
cme_futures_derived_sbe_v12_0.md_snapshot_refresh_ticker = {}

-- Calculate size of: Md Snapshot Refresh Ticker
cme_futures_derived_sbe_v12_0.md_snapshot_refresh_ticker.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_derived_sbe_v12_0.transact_time.size

  index = index + cme_futures_derived_sbe_v12_0.match_event_indicator.size

  index = index + cme_futures_derived_sbe_v12_0.financial_instrument_full_name.size

  index = index + cme_futures_derived_sbe_v12_0.symbol.size

  index = index + cme_futures_derived_sbe_v12_0.instrument_guid.size

  index = index + cme_futures_derived_sbe_v12_0.security_id.size

  index = index + cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Snapshot Refresh Ticker
cme_futures_derived_sbe_v12_0.md_snapshot_refresh_ticker.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Snapshot Refresh Ticker
cme_futures_derived_sbe_v12_0.md_snapshot_refresh_ticker.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_derived_sbe_v12_0.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator
  index, match_event_indicator = cme_futures_derived_sbe_v12_0.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_futures_derived_sbe_v12_0.financial_instrument_full_name.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_derived_sbe_v12_0.symbol.dissect(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer
  index, instrument_guid = cme_futures_derived_sbe_v12_0.instrument_guid.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_derived_sbe_v12_0.security_id.dissect(buffer, index, packet, parent)

  -- Snapshot Refresh Ticker Groups: Struct of 2 fields
  index, snapshot_refresh_ticker_groups = cme_futures_derived_sbe_v12_0.snapshot_refresh_ticker_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Snapshot Refresh Ticker
cme_futures_derived_sbe_v12_0.md_snapshot_refresh_ticker.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_snapshot_refresh_ticker then
    local length = cme_futures_derived_sbe_v12_0.md_snapshot_refresh_ticker.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_derived_sbe_v12_0.md_snapshot_refresh_ticker.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.md_snapshot_refresh_ticker, range, display)
  end

  return cme_futures_derived_sbe_v12_0.md_snapshot_refresh_ticker.fields(buffer, offset, packet, parent)
end

-- Md Entry Type Spectrum Entry Type
cme_futures_derived_sbe_v12_0.md_entry_type_spectrum_entry_type = {}

-- Size: Md Entry Type Spectrum Entry Type
cme_futures_derived_sbe_v12_0.md_entry_type_spectrum_entry_type.size = 1

-- Display: Md Entry Type Spectrum Entry Type
cme_futures_derived_sbe_v12_0.md_entry_type_spectrum_entry_type.display = function(value)
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
cme_futures_derived_sbe_v12_0.md_entry_type_spectrum_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.md_entry_type_spectrum_entry_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_derived_sbe_v12_0.md_entry_type_spectrum_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.md_entry_type_spectrum_entry_type, range, value, display)

  return offset + length, value
end

-- Snapshot Refresh Spectrum Group
cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_group = {}

-- Size: Snapshot Refresh Spectrum Group
cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_group.size =
  cme_futures_derived_sbe_v12_0.md_entry_type_spectrum_entry_type.size + 
  cme_futures_derived_sbe_v12_0.md_entry_px.size + 
  cme_futures_derived_sbe_v12_0.md_entry_size.size + 
  cme_futures_derived_sbe_v12_0.md_entry_time.size

-- Display: Snapshot Refresh Spectrum Group
cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Refresh Spectrum Group
cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_group.fields = function(buffer, offset, packet, parent, snapshot_refresh_spectrum_group_index)
  local index = offset

  -- Implicit Snapshot Refresh Spectrum Group Index
  if snapshot_refresh_spectrum_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.snapshot_refresh_spectrum_group_index, snapshot_refresh_spectrum_group_index)
    iteration:set_generated()
  end

  -- Md Entry Type Spectrum Entry Type: 1 Byte Ascii String Enum with 2 values
  index, md_entry_type_spectrum_entry_type = cme_futures_derived_sbe_v12_0.md_entry_type_spectrum_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_derived_sbe_v12_0.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size = cme_futures_derived_sbe_v12_0.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_time = cme_futures_derived_sbe_v12_0.md_entry_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Refresh Spectrum Group
cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_group.dissect = function(buffer, offset, packet, parent, snapshot_refresh_spectrum_group_index)
  if show.snapshot_refresh_spectrum_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.snapshot_refresh_spectrum_group, buffer(offset, 0))
    local index = cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_group.fields(buffer, offset, packet, parent, snapshot_refresh_spectrum_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_group.fields(buffer, offset, packet, parent, snapshot_refresh_spectrum_group_index)
  end
end

-- Snapshot Refresh Spectrum Groups
cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_groups = {}

-- Calculate size of: Snapshot Refresh Spectrum Groups
cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_derived_sbe_v12_0.group_size.size

  -- Calculate field size from count
  local snapshot_refresh_spectrum_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_refresh_spectrum_group_count * 25

  return index
end

-- Display: Snapshot Refresh Spectrum Groups
cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Refresh Spectrum Groups
cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_derived_sbe_v12_0.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Refresh Spectrum Group
  for snapshot_refresh_spectrum_group_index = 1, num_in_group do
    index, snapshot_refresh_spectrum_group = cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_group.dissect(buffer, index, packet, parent, snapshot_refresh_spectrum_group_index)
  end

  return index
end

-- Dissect: Snapshot Refresh Spectrum Groups
cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_refresh_spectrum_groups then
    local length = cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.snapshot_refresh_spectrum_groups, range, display)
  end

  return cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_groups.fields(buffer, offset, packet, parent)
end

-- Md Snapshot Refresh Spectrum
cme_futures_derived_sbe_v12_0.md_snapshot_refresh_spectrum = {}

-- Calculate size of: Md Snapshot Refresh Spectrum
cme_futures_derived_sbe_v12_0.md_snapshot_refresh_spectrum.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_derived_sbe_v12_0.transact_time.size

  index = index + cme_futures_derived_sbe_v12_0.match_event_indicator.size

  index = index + cme_futures_derived_sbe_v12_0.financial_instrument_full_name.size

  index = index + cme_futures_derived_sbe_v12_0.symbol.size

  index = index + cme_futures_derived_sbe_v12_0.instrument_guid.size

  index = index + cme_futures_derived_sbe_v12_0.security_id.size

  index = index + cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Snapshot Refresh Spectrum
cme_futures_derived_sbe_v12_0.md_snapshot_refresh_spectrum.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Snapshot Refresh Spectrum
cme_futures_derived_sbe_v12_0.md_snapshot_refresh_spectrum.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_derived_sbe_v12_0.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator
  index, match_event_indicator = cme_futures_derived_sbe_v12_0.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_futures_derived_sbe_v12_0.financial_instrument_full_name.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_derived_sbe_v12_0.symbol.dissect(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer
  index, instrument_guid = cme_futures_derived_sbe_v12_0.instrument_guid.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_derived_sbe_v12_0.security_id.dissect(buffer, index, packet, parent)

  -- Snapshot Refresh Spectrum Groups: Struct of 2 fields
  index, snapshot_refresh_spectrum_groups = cme_futures_derived_sbe_v12_0.snapshot_refresh_spectrum_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Snapshot Refresh Spectrum
cme_futures_derived_sbe_v12_0.md_snapshot_refresh_spectrum.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_snapshot_refresh_spectrum then
    local length = cme_futures_derived_sbe_v12_0.md_snapshot_refresh_spectrum.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_derived_sbe_v12_0.md_snapshot_refresh_spectrum.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.md_snapshot_refresh_spectrum, range, display)
  end

  return cme_futures_derived_sbe_v12_0.md_snapshot_refresh_spectrum.fields(buffer, offset, packet, parent)
end

-- Incremental Refresh Ticker Group
cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_group = {}

-- Size: Incremental Refresh Ticker Group
cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_group.size =
  cme_futures_derived_sbe_v12_0.md_entry_type_ticker_entry_type.size + 
  cme_futures_derived_sbe_v12_0.security_id.size + 
  cme_futures_derived_sbe_v12_0.symbol.size + 
  cme_futures_derived_sbe_v12_0.instrument_guid.size + 
  cme_futures_derived_sbe_v12_0.financial_instrument_full_name.size + 
  cme_futures_derived_sbe_v12_0.md_entry_px.size + 
  cme_futures_derived_sbe_v12_0.md_entry_size.size + 
  cme_futures_derived_sbe_v12_0.md_entry_time.size + 
  cme_futures_derived_sbe_v12_0.open_close_settl_flag.size + 
  cme_futures_derived_sbe_v12_0.trading_session_id.size + 
  cme_futures_derived_sbe_v12_0.aggressor_side.size

-- Display: Incremental Refresh Ticker Group
cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Ticker Group
cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_group.fields = function(buffer, offset, packet, parent, incremental_refresh_ticker_group_index)
  local index = offset

  -- Implicit Incremental Refresh Ticker Group Index
  if incremental_refresh_ticker_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.incremental_refresh_ticker_group_index, incremental_refresh_ticker_group_index)
    iteration:set_generated()
  end

  -- Md Entry Type Ticker Entry Type: 1 Byte Ascii String Enum with 12 values
  index, md_entry_type_ticker_entry_type = cme_futures_derived_sbe_v12_0.md_entry_type_ticker_entry_type.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_derived_sbe_v12_0.security_id.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_derived_sbe_v12_0.symbol.dissect(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer
  index, instrument_guid = cme_futures_derived_sbe_v12_0.instrument_guid.dissect(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_futures_derived_sbe_v12_0.financial_instrument_full_name.dissect(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_derived_sbe_v12_0.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size = cme_futures_derived_sbe_v12_0.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_time = cme_futures_derived_sbe_v12_0.md_entry_time.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, open_close_settl_flag = cme_futures_derived_sbe_v12_0.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trading_session_id = cme_futures_derived_sbe_v12_0.trading_session_id.dissect(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, aggressor_side = cme_futures_derived_sbe_v12_0.aggressor_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incremental Refresh Ticker Group
cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_group.dissect = function(buffer, offset, packet, parent, incremental_refresh_ticker_group_index)
  if show.incremental_refresh_ticker_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.incremental_refresh_ticker_group, buffer(offset, 0))
    local index = cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_group.fields(buffer, offset, packet, parent, incremental_refresh_ticker_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_group.fields(buffer, offset, packet, parent, incremental_refresh_ticker_group_index)
  end
end

-- Incremental Refresh Ticker Groups
cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_groups = {}

-- Calculate size of: Incremental Refresh Ticker Groups
cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_derived_sbe_v12_0.group_size.size

  -- Calculate field size from count
  local incremental_refresh_ticker_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + incremental_refresh_ticker_group_count * 95

  return index
end

-- Display: Incremental Refresh Ticker Groups
cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Ticker Groups
cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_derived_sbe_v12_0.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Incremental Refresh Ticker Group
  for incremental_refresh_ticker_group_index = 1, num_in_group do
    index, incremental_refresh_ticker_group = cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_group.dissect(buffer, index, packet, parent, incremental_refresh_ticker_group_index)
  end

  return index
end

-- Dissect: Incremental Refresh Ticker Groups
cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.incremental_refresh_ticker_groups then
    local length = cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.incremental_refresh_ticker_groups, range, display)
  end

  return cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Ticker
cme_futures_derived_sbe_v12_0.md_incremental_refresh_ticker = {}

-- Calculate size of: Md Incremental Refresh Ticker
cme_futures_derived_sbe_v12_0.md_incremental_refresh_ticker.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_derived_sbe_v12_0.transact_time.size

  index = index + cme_futures_derived_sbe_v12_0.match_event_indicator.size

  index = index + cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Ticker
cme_futures_derived_sbe_v12_0.md_incremental_refresh_ticker.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Ticker
cme_futures_derived_sbe_v12_0.md_incremental_refresh_ticker.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_derived_sbe_v12_0.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator
  index, match_event_indicator = cme_futures_derived_sbe_v12_0.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Incremental Refresh Ticker Groups: Struct of 2 fields
  index, incremental_refresh_ticker_groups = cme_futures_derived_sbe_v12_0.incremental_refresh_ticker_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Ticker
cme_futures_derived_sbe_v12_0.md_incremental_refresh_ticker.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_ticker then
    local length = cme_futures_derived_sbe_v12_0.md_incremental_refresh_ticker.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_derived_sbe_v12_0.md_incremental_refresh_ticker.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.md_incremental_refresh_ticker, range, display)
  end

  return cme_futures_derived_sbe_v12_0.md_incremental_refresh_ticker.fields(buffer, offset, packet, parent)
end

-- Incremental Refresh Spectrum Group
cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_group = {}

-- Size: Incremental Refresh Spectrum Group
cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_group.size =
  cme_futures_derived_sbe_v12_0.md_entry_type_spectrum_entry_type.size + 
  cme_futures_derived_sbe_v12_0.financial_instrument_full_name.size + 
  cme_futures_derived_sbe_v12_0.symbol.size + 
  cme_futures_derived_sbe_v12_0.instrument_guid.size + 
  cme_futures_derived_sbe_v12_0.security_id.size + 
  cme_futures_derived_sbe_v12_0.md_entry_px.size + 
  cme_futures_derived_sbe_v12_0.md_entry_size.size + 
  cme_futures_derived_sbe_v12_0.md_entry_time.size

-- Display: Incremental Refresh Spectrum Group
cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Spectrum Group
cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_group.fields = function(buffer, offset, packet, parent, incremental_refresh_spectrum_group_index)
  local index = offset

  -- Implicit Incremental Refresh Spectrum Group Index
  if incremental_refresh_spectrum_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.incremental_refresh_spectrum_group_index, incremental_refresh_spectrum_group_index)
    iteration:set_generated()
  end

  -- Md Entry Type Spectrum Entry Type: 1 Byte Ascii String Enum with 2 values
  index, md_entry_type_spectrum_entry_type = cme_futures_derived_sbe_v12_0.md_entry_type_spectrum_entry_type.dissect(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_futures_derived_sbe_v12_0.financial_instrument_full_name.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_derived_sbe_v12_0.symbol.dissect(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer
  index, instrument_guid = cme_futures_derived_sbe_v12_0.instrument_guid.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_derived_sbe_v12_0.security_id.dissect(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_derived_sbe_v12_0.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size = cme_futures_derived_sbe_v12_0.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_time = cme_futures_derived_sbe_v12_0.md_entry_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incremental Refresh Spectrum Group
cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_group.dissect = function(buffer, offset, packet, parent, incremental_refresh_spectrum_group_index)
  if show.incremental_refresh_spectrum_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.incremental_refresh_spectrum_group, buffer(offset, 0))
    local index = cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_group.fields(buffer, offset, packet, parent, incremental_refresh_spectrum_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_group.fields(buffer, offset, packet, parent, incremental_refresh_spectrum_group_index)
  end
end

-- Incremental Refresh Spectrum Groups
cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_groups = {}

-- Calculate size of: Incremental Refresh Spectrum Groups
cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_derived_sbe_v12_0.group_size.size

  -- Calculate field size from count
  local incremental_refresh_spectrum_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + incremental_refresh_spectrum_group_count * 92

  return index
end

-- Display: Incremental Refresh Spectrum Groups
cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Spectrum Groups
cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_derived_sbe_v12_0.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Incremental Refresh Spectrum Group
  for incremental_refresh_spectrum_group_index = 1, num_in_group do
    index, incremental_refresh_spectrum_group = cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_group.dissect(buffer, index, packet, parent, incremental_refresh_spectrum_group_index)
  end

  return index
end

-- Dissect: Incremental Refresh Spectrum Groups
cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.incremental_refresh_spectrum_groups then
    local length = cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.incremental_refresh_spectrum_groups, range, display)
  end

  return cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Spectrum
cme_futures_derived_sbe_v12_0.md_incremental_refresh_spectrum = {}

-- Calculate size of: Md Incremental Refresh Spectrum
cme_futures_derived_sbe_v12_0.md_incremental_refresh_spectrum.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_derived_sbe_v12_0.transact_time.size

  index = index + cme_futures_derived_sbe_v12_0.match_event_indicator.size

  index = index + cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Spectrum
cme_futures_derived_sbe_v12_0.md_incremental_refresh_spectrum.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Spectrum
cme_futures_derived_sbe_v12_0.md_incremental_refresh_spectrum.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_derived_sbe_v12_0.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator
  index, match_event_indicator = cme_futures_derived_sbe_v12_0.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Incremental Refresh Spectrum Groups: Struct of 2 fields
  index, incremental_refresh_spectrum_groups = cme_futures_derived_sbe_v12_0.incremental_refresh_spectrum_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Spectrum
cme_futures_derived_sbe_v12_0.md_incremental_refresh_spectrum.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_spectrum then
    local length = cme_futures_derived_sbe_v12_0.md_incremental_refresh_spectrum.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_derived_sbe_v12_0.md_incremental_refresh_spectrum.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.md_incremental_refresh_spectrum, range, display)
  end

  return cme_futures_derived_sbe_v12_0.md_incremental_refresh_spectrum.fields(buffer, offset, packet, parent)
end

-- Payload
cme_futures_derived_sbe_v12_0.payload = {}

-- Size: Payload
cme_futures_derived_sbe_v12_0.payload.size = function(buffer, offset, template_id)
  -- Size of Admin Heartbeat
  if template_id == 302 then
    return 0
  end
  -- Size of Md Incremental Refresh Spectrum
  if template_id == 303 then
    return cme_futures_derived_sbe_v12_0.md_incremental_refresh_spectrum.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Ticker
  if template_id == 304 then
    return cme_futures_derived_sbe_v12_0.md_incremental_refresh_ticker.size(buffer, offset)
  end
  -- Size of Md Snapshot Refresh Spectrum
  if template_id == 305 then
    return cme_futures_derived_sbe_v12_0.md_snapshot_refresh_spectrum.size(buffer, offset)
  end
  -- Size of Md Snapshot Refresh Ticker
  if template_id == 306 then
    return cme_futures_derived_sbe_v12_0.md_snapshot_refresh_ticker.size(buffer, offset)
  end
  -- Size of Global Day Roll
  if template_id == 307 then
    return cme_futures_derived_sbe_v12_0.global_day_roll.size
  end

  return 0
end

-- Display: Payload
cme_futures_derived_sbe_v12_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cme_futures_derived_sbe_v12_0.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Admin Heartbeat
  if template_id == 302 then
  end
  -- Dissect Md Incremental Refresh Spectrum
  if template_id == 303 then
    return cme_futures_derived_sbe_v12_0.md_incremental_refresh_spectrum.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Ticker
  if template_id == 304 then
    return cme_futures_derived_sbe_v12_0.md_incremental_refresh_ticker.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Snapshot Refresh Spectrum
  if template_id == 305 then
    return cme_futures_derived_sbe_v12_0.md_snapshot_refresh_spectrum.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Snapshot Refresh Ticker
  if template_id == 306 then
    return cme_futures_derived_sbe_v12_0.md_snapshot_refresh_ticker.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Global Day Roll
  if template_id == 307 then
    return cme_futures_derived_sbe_v12_0.global_day_roll.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cme_futures_derived_sbe_v12_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return cme_futures_derived_sbe_v12_0.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = cme_futures_derived_sbe_v12_0.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cme_futures_derived_sbe_v12_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.payload, range, display)

  return cme_futures_derived_sbe_v12_0.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
cme_futures_derived_sbe_v12_0.version = {}

-- Size: Version
cme_futures_derived_sbe_v12_0.version.size = 2

-- Display: Version
cme_futures_derived_sbe_v12_0.version.display = function(value)
  if value == 0 then
    return "Version: Version"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
cme_futures_derived_sbe_v12_0.version.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_derived_sbe_v12_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
cme_futures_derived_sbe_v12_0.schema_id = {}

-- Size: Schema Id
cme_futures_derived_sbe_v12_0.schema_id.size = 2

-- Display: Schema Id
cme_futures_derived_sbe_v12_0.schema_id.display = function(value)
  if value == 12 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
cme_futures_derived_sbe_v12_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_derived_sbe_v12_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
cme_futures_derived_sbe_v12_0.template_id = {}

-- Size: Template Id
cme_futures_derived_sbe_v12_0.template_id.size = 2

-- Display: Template Id
cme_futures_derived_sbe_v12_0.template_id.display = function(value)
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
cme_futures_derived_sbe_v12_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_derived_sbe_v12_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Message Header
cme_futures_derived_sbe_v12_0.message_header = {}

-- Size: Message Header
cme_futures_derived_sbe_v12_0.message_header.size =
  cme_futures_derived_sbe_v12_0.block_length.size + 
  cme_futures_derived_sbe_v12_0.template_id.size + 
  cme_futures_derived_sbe_v12_0.schema_id.size + 
  cme_futures_derived_sbe_v12_0.version.size

-- Display: Message Header
cme_futures_derived_sbe_v12_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_futures_derived_sbe_v12_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_derived_sbe_v12_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, template_id = cme_futures_derived_sbe_v12_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = cme_futures_derived_sbe_v12_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = cme_futures_derived_sbe_v12_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_futures_derived_sbe_v12_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.message_header, buffer(offset, 0))
    local index = cme_futures_derived_sbe_v12_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_derived_sbe_v12_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_derived_sbe_v12_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Size
cme_futures_derived_sbe_v12_0.message_size = {}

-- Size: Message Size
cme_futures_derived_sbe_v12_0.message_size.size = 2

-- Display: Message Size
cme_futures_derived_sbe_v12_0.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_futures_derived_sbe_v12_0.message_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_derived_sbe_v12_0.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message
cme_futures_derived_sbe_v12_0.message = {}

-- Display: Message
cme_futures_derived_sbe_v12_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cme_futures_derived_sbe_v12_0.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_futures_derived_sbe_v12_0.message_size.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_futures_derived_sbe_v12_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 6 branches
  index = cme_futures_derived_sbe_v12_0.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cme_futures_derived_sbe_v12_0.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.message, buffer(offset, 0))
    local current = cme_futures_derived_sbe_v12_0.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = cme_futures_derived_sbe_v12_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cme_futures_derived_sbe_v12_0.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Sending Time
cme_futures_derived_sbe_v12_0.sending_time = {}

-- Size: Sending Time
cme_futures_derived_sbe_v12_0.sending_time.size = 8

-- Display: Sending Time
cme_futures_derived_sbe_v12_0.sending_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
cme_futures_derived_sbe_v12_0.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_derived_sbe_v12_0.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
cme_futures_derived_sbe_v12_0.packet_sequence_number = {}

-- Size: Packet Sequence Number
cme_futures_derived_sbe_v12_0.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
cme_futures_derived_sbe_v12_0.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
cme_futures_derived_sbe_v12_0.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_derived_sbe_v12_0.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_derived_sbe_v12_0.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_derived_sbe_v12_0.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Binary Packet Header
cme_futures_derived_sbe_v12_0.binary_packet_header = {}

-- Size: Binary Packet Header
cme_futures_derived_sbe_v12_0.binary_packet_header.size =
  cme_futures_derived_sbe_v12_0.packet_sequence_number.size + 
  cme_futures_derived_sbe_v12_0.sending_time.size

-- Display: Binary Packet Header
cme_futures_derived_sbe_v12_0.binary_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Packet Header
cme_futures_derived_sbe_v12_0.binary_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = cme_futures_derived_sbe_v12_0.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_futures_derived_sbe_v12_0.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
cme_futures_derived_sbe_v12_0.binary_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.binary_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_derived_sbe_v12_0.fields.binary_packet_header, buffer(offset, 0))
    local index = cme_futures_derived_sbe_v12_0.binary_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_derived_sbe_v12_0.binary_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_derived_sbe_v12_0.binary_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cme_futures_derived_sbe_v12_0.packet = {}

-- Dissect Packet
cme_futures_derived_sbe_v12_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = cme_futures_derived_sbe_v12_0.binary_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = cme_futures_derived_sbe_v12_0.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cme_futures_derived_sbe_v12_0.init()
end

-- Dissector for Cme Futures Derived Sbe 12.0
function omi_cme_futures_derived_sbe_v12_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cme_futures_derived_sbe_v12_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_cme_futures_derived_sbe_v12_0, buffer(), omi_cme_futures_derived_sbe_v12_0.description, "("..buffer:len().." Bytes)")
  return cme_futures_derived_sbe_v12_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cme_futures_derived_sbe_v12_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cme_futures_derived_sbe_v12_0.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
cme_futures_derived_sbe_v12_0.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(18, 2):le_uint()

  if value == 12 then
    return true
  end

  return false
end

-- Verify Version Field
cme_futures_derived_sbe_v12_0.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Futures Derived Sbe 12.0
local function omi_cme_futures_derived_sbe_v12_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_futures_derived_sbe_v12_0.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not cme_futures_derived_sbe_v12_0.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not cme_futures_derived_sbe_v12_0.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_futures_derived_sbe_v12_0
  omi_cme_futures_derived_sbe_v12_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme Futures Derived Sbe 12.0
omi_cme_futures_derived_sbe_v12_0:register_heuristic("udp", omi_cme_futures_derived_sbe_v12_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Mercantile Exchange
--   Version: 12.0
--   Date: Saturday, January 4, 2020
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
