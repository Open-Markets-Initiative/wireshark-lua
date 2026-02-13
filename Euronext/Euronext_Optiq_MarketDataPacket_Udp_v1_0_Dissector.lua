-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Euronext Optiq MarketDataPacket Udp 1.0 Protocol
local omi_euronext_optiq_marketdatapacket_udp_v1_0 = Proto("Euronext.Optiq.MarketDataPacket.Udp.v1.0.Lua", "Euronext Optiq MarketDataPacket Udp 1.0")

-- Protocol table
local euronext_optiq_marketdatapacket_udp_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Euronext Optiq MarketDataPacket Udp 1.0 Fields
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.block_length = ProtoField.new("Block Length", "euronext.optiq.marketdatapacket.udp.v1.0.blocklength", ftypes.UINT16)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.channel_id = ProtoField.new("Channel Id", "euronext.optiq.marketdatapacket.udp.v1.0.channelid", ftypes.UINT16)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.compression = ProtoField.new("Compression", "euronext.optiq.marketdatapacket.udp.v1.0.compression", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.frame = ProtoField.new("Frame", "euronext.optiq.marketdatapacket.udp.v1.0.frame", ftypes.UINT16)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.has_end_of_day_snapshot = ProtoField.new("Has End Of Day Snapshot", "euronext.optiq.marketdatapacket.udp.v1.0.hasendofdaysnapshot", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.has_start_of_day_snapshot = ProtoField.new("Has Start Of Day Snapshot", "euronext.optiq.marketdatapacket.udp.v1.0.hasstartofdaysnapshot", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.has_status_message = ProtoField.new("Has Status Message", "euronext.optiq.marketdatapacket.udp.v1.0.hasstatusmessage", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.market_data_packet_header = ProtoField.new("Market Data Packet Header", "euronext.optiq.marketdatapacket.udp.v1.0.marketdatapacketheader", ftypes.STRING)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.mdg_restart_count = ProtoField.new("Mdg Restart Count", "euronext.optiq.marketdatapacket.udp.v1.0.mdgrestartcount", ftypes.UINT16, nil, base.DEC, 0x000E)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.message_header = ProtoField.new("Message Header", "euronext.optiq.marketdatapacket.udp.v1.0.messageheader", ftypes.STRING)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.optiq_message = ProtoField.new("Optiq Message", "euronext.optiq.marketdatapacket.udp.v1.0.optiqmessage", ftypes.STRING)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.packet = ProtoField.new("Packet", "euronext.optiq.marketdatapacket.udp.v1.0.packet", ftypes.STRING)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.packet_flags = ProtoField.new("Packet Flags", "euronext.optiq.marketdatapacket.udp.v1.0.packetflags", ftypes.STRING)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "euronext.optiq.marketdatapacket.udp.v1.0.packetsequencenumber", ftypes.UINT32)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.packet_time = ProtoField.new("Packet Time", "euronext.optiq.marketdatapacket.udp.v1.0.packettime", ftypes.UINT64)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.payload = ProtoField.new("Payload", "euronext.optiq.marketdatapacket.udp.v1.0.payload", ftypes.BYTES)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.psn_high_weight = ProtoField.new("Psn High Weight", "euronext.optiq.marketdatapacket.udp.v1.0.psnhighweight", ftypes.UINT16, nil, base.DEC, 0x0070)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.reserved_bits = ProtoField.new("Reserved Bits", "euronext.optiq.marketdatapacket.udp.v1.0.reservedbits", ftypes.UINT16, nil, base.DEC, 0xFC00)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.schema_id = ProtoField.new("Schema Id", "euronext.optiq.marketdatapacket.udp.v1.0.schemaid", ftypes.UINT16)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.schema_version = ProtoField.new("Schema Version", "euronext.optiq.marketdatapacket.udp.v1.0.schemaversion", ftypes.UINT16)
omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.template_id = ProtoField.new("Template Id", "euronext.optiq.marketdatapacket.udp.v1.0.templateid", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Euronext Optiq MarketDataPacket Udp 1.0 Element Dissection Options
show.market_data_packet_header = true
show.message_header = true
show.optiq_message = true
show.packet = true
show.packet_flags = true

-- Register Euronext Optiq MarketDataPacket Udp 1.0 Show Options
omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs.show_market_data_packet_header = Pref.bool("Show Market Data Packet Header", show.market_data_packet_header, "Parse and add Market Data Packet Header to protocol tree")
omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs.show_optiq_message = Pref.bool("Show Optiq Message", show.optiq_message, "Parse and add Optiq Message to protocol tree")
omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs.show_packet_flags = Pref.bool("Show Packet Flags", show.packet_flags, "Parse and add Packet Flags to protocol tree")

-- Handle changed preferences
function omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.market_data_packet_header ~= omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs.show_market_data_packet_header then
    show.market_data_packet_header = omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs.show_market_data_packet_header
    changed = true
  end
  if show.message_header ~= omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs.show_message_header then
    show.message_header = omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs.show_message_header
    changed = true
  end
  if show.optiq_message ~= omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs.show_optiq_message then
    show.optiq_message = omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs.show_optiq_message
    changed = true
  end
  if show.packet ~= omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs.show_packet then
    show.packet = omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs.show_packet
    changed = true
  end
  if show.packet_flags ~= omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs.show_packet_flags then
    show.packet_flags = omi_euronext_optiq_marketdatapacket_udp_v1_0.prefs.show_packet_flags
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------


-- LZ4 decompression
local function lz4_decompress(input, decompressed_size)
  local compressed_size = input:len()

  local compressed_position = 0
  local decompressed_position = 0

  local output = ByteArray.new()
  output:set_size(decompressed_size)

  while compressed_position < compressed_size do
    -- Read token
    local token = input:get_index(compressed_position)
    compressed_position = compressed_position + 1

    -- Literal length (high nibble)
    local literal_length = bit.rshift(token, 4)
    if literal_length == 15 then
      local extra
      repeat
        if compressed_position >= compressed_size then break end
        extra = input:get_index(compressed_position)
        compressed_position = compressed_position + 1
        literal_length = literal_length + extra
      until extra ~= 255
    end

    -- Cdecompressed_positiony literals
    for i = 0, literal_length - 1 do
      if compressed_position >= compressed_size then break end
      output:set_index(decompressed_position, input:get_index(compressed_position))
      decompressed_position = decompressed_position + 1
      compressed_position = compressed_position + 1
    end

    -- Check if we reached the end of input
    if compressed_position + 1 >= compressed_size then
      break
    end

    -- Match offset (2 bytes, little-endian)
    local match_offset = input:get_index(compressed_position) + input:get_index(compressed_position + 1) * 256
    compressed_position = compressed_position + 2

    -- Match length (low nibble + 4 minimum match)
    local match_length = bit.band(token, 0x0F) + 4
    if bit.band(token, 0x0F) == 15 then
      local extra
      repeat
        if compressed_position >= compressed_size then break end
        extra = input:get_index(compressed_position)
        compressed_position = compressed_position + 1
        match_length = match_length + extra
      until extra ~= 255
    end

    -- Cdecompressed_positiony match (byte-by-byte to handle overlapping cdecompressed_positionies)
    local match_pos = decompressed_position - match_offset
    for i = 0, match_length - 1 do
      output:set_index(decompressed_position, output:get_index(match_pos))
      decompressed_position = decompressed_position + 1
      match_pos = match_pos + 1
    end
  end

  output:set_size(decompressed_position)
  return output
end
-----------------------------------------------------------------------
-- Dissect Euronext Optiq MarketDataPacket Udp 1.0
-----------------------------------------------------------------------

-- Payload
euronext_optiq_marketdatapacket_udp_v1_0.payload = {}

-- Display: Payload
euronext_optiq_marketdatapacket_udp_v1_0.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
euronext_optiq_marketdatapacket_udp_v1_0.payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = euronext_optiq_marketdatapacket_udp_v1_0.payload.display(value, packet, parent, size)

  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.payload, range, value, display)

  return offset + size, value
end

-- Schema Version
euronext_optiq_marketdatapacket_udp_v1_0.schema_version = {}

-- Size: Schema Version
euronext_optiq_marketdatapacket_udp_v1_0.schema_version.size = 2

-- Display: Schema Version
euronext_optiq_marketdatapacket_udp_v1_0.schema_version.display = function(value)
  return "Schema Version: "..value
end

-- Dissect: Schema Version
euronext_optiq_marketdatapacket_udp_v1_0.schema_version.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatapacket_udp_v1_0.schema_version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatapacket_udp_v1_0.schema_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.schema_version, range, value, display)

  return offset + length, value
end

-- Schema Id
euronext_optiq_marketdatapacket_udp_v1_0.schema_id = {}

-- Size: Schema Id
euronext_optiq_marketdatapacket_udp_v1_0.schema_id.size = 2

-- Display: Schema Id
euronext_optiq_marketdatapacket_udp_v1_0.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
euronext_optiq_marketdatapacket_udp_v1_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatapacket_udp_v1_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatapacket_udp_v1_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
euronext_optiq_marketdatapacket_udp_v1_0.template_id = {}

-- Size: Template Id
euronext_optiq_marketdatapacket_udp_v1_0.template_id.size = 2

-- Display: Template Id
euronext_optiq_marketdatapacket_udp_v1_0.template_id.display = function(value)
  return "Template Id: "..value
end

-- Dissect: Template Id
euronext_optiq_marketdatapacket_udp_v1_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatapacket_udp_v1_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatapacket_udp_v1_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
euronext_optiq_marketdatapacket_udp_v1_0.block_length = {}

-- Size: Block Length
euronext_optiq_marketdatapacket_udp_v1_0.block_length.size = 2

-- Display: Block Length
euronext_optiq_marketdatapacket_udp_v1_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
euronext_optiq_marketdatapacket_udp_v1_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatapacket_udp_v1_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatapacket_udp_v1_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Message Header
euronext_optiq_marketdatapacket_udp_v1_0.message_header = {}

-- Size: Message Header
euronext_optiq_marketdatapacket_udp_v1_0.message_header.size =
  euronext_optiq_marketdatapacket_udp_v1_0.block_length.size + 
  euronext_optiq_marketdatapacket_udp_v1_0.template_id.size + 
  euronext_optiq_marketdatapacket_udp_v1_0.schema_id.size + 
  euronext_optiq_marketdatapacket_udp_v1_0.schema_version.size

-- Display: Message Header
euronext_optiq_marketdatapacket_udp_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
euronext_optiq_marketdatapacket_udp_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = euronext_optiq_marketdatapacket_udp_v1_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer
  index, template_id = euronext_optiq_marketdatapacket_udp_v1_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer
  index, schema_id = euronext_optiq_marketdatapacket_udp_v1_0.schema_id.dissect(buffer, index, packet, parent)

  -- Schema Version: 2 Byte Unsigned Fixed Width Integer
  index, schema_version = euronext_optiq_marketdatapacket_udp_v1_0.schema_version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
euronext_optiq_marketdatapacket_udp_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.message_header, buffer(offset, 0))
    local index = euronext_optiq_marketdatapacket_udp_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatapacket_udp_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatapacket_udp_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Frame
euronext_optiq_marketdatapacket_udp_v1_0.frame = {}

-- Size: Frame
euronext_optiq_marketdatapacket_udp_v1_0.frame.size = 2

-- Display: Frame
euronext_optiq_marketdatapacket_udp_v1_0.frame.display = function(value)
  return "Frame: "..value
end

-- Dissect: Frame
euronext_optiq_marketdatapacket_udp_v1_0.frame.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatapacket_udp_v1_0.frame.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatapacket_udp_v1_0.frame.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.frame, range, value, display)

  return offset + length, value
end

-- Optiq Message
euronext_optiq_marketdatapacket_udp_v1_0.optiq_message = {}

-- Display: Optiq Message
euronext_optiq_marketdatapacket_udp_v1_0.optiq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Optiq Message
euronext_optiq_marketdatapacket_udp_v1_0.optiq_message.fields = function(buffer, offset, packet, parent, size_of_optiq_message)
  local index = offset

  -- Frame: 2 Byte Unsigned Fixed Width Integer
  index, frame = euronext_optiq_marketdatapacket_udp_v1_0.frame.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = euronext_optiq_marketdatapacket_udp_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Payload
  local size_of_payload = frame - 10

  -- Payload: 0 Byte
  index, payload = euronext_optiq_marketdatapacket_udp_v1_0.payload.dissect(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Optiq Message
euronext_optiq_marketdatapacket_udp_v1_0.optiq_message.dissect = function(buffer, offset, packet, parent, size_of_optiq_message)
  local index = offset + size_of_optiq_message

  -- Optionally add group/struct element to protocol tree
  if show.optiq_message then
    parent = parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.optiq_message, buffer(offset, 0))
    local current = euronext_optiq_marketdatapacket_udp_v1_0.optiq_message.fields(buffer, offset, packet, parent, size_of_optiq_message)
    parent:set_len(size_of_optiq_message)
    local display = euronext_optiq_marketdatapacket_udp_v1_0.optiq_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    euronext_optiq_marketdatapacket_udp_v1_0.optiq_message.fields(buffer, offset, packet, parent, size_of_optiq_message)

    return index
  end
end

-- Channel Id
euronext_optiq_marketdatapacket_udp_v1_0.channel_id = {}

-- Size: Channel Id
euronext_optiq_marketdatapacket_udp_v1_0.channel_id.size = 2

-- Display: Channel Id
euronext_optiq_marketdatapacket_udp_v1_0.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
euronext_optiq_marketdatapacket_udp_v1_0.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatapacket_udp_v1_0.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatapacket_udp_v1_0.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Packet Flags
euronext_optiq_marketdatapacket_udp_v1_0.packet_flags = {}

-- Size: Packet Flags
euronext_optiq_marketdatapacket_udp_v1_0.packet_flags.size = 2

-- Display: Packet Flags
euronext_optiq_marketdatapacket_udp_v1_0.packet_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Compression flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Compression"
  end
  -- Is Has Start Of Day Snapshot flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Has Start Of Day Snapshot"
  end
  -- Is Has End Of Day Snapshot flag set?
  if bit.band(value, 0x0100) ~= 0 then
    flags[#flags + 1] = "Has End Of Day Snapshot"
  end
  -- Is Has Status Message flag set?
  if bit.band(value, 0x0200) ~= 0 then
    flags[#flags + 1] = "Has Status Message"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Packet Flags
euronext_optiq_marketdatapacket_udp_v1_0.packet_flags.bits = function(range, value, packet, parent)

  -- Compression: 1 Bit
  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.compression, range, value)

  -- Mdg Restart Count: 3 Bit Unsigned Fixed Width Integer
  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.mdg_restart_count, range, value)

  -- Psn High Weight: 3 Bit Unsigned Fixed Width Integer
  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.psn_high_weight, range, value)

  -- Has Start Of Day Snapshot: 1 Bit
  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.has_start_of_day_snapshot, range, value)

  -- Has End Of Day Snapshot: 1 Bit
  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.has_end_of_day_snapshot, range, value)

  -- Has Status Message: 1 Bit
  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.has_status_message, range, value)

  -- Reserved Bits: 6 Bit
  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.reserved_bits, range, value)
end

-- Dissect: Packet Flags
euronext_optiq_marketdatapacket_udp_v1_0.packet_flags.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_marketdatapacket_udp_v1_0.packet_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatapacket_udp_v1_0.packet_flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.packet_flags, range, display)

  if show.packet_flags then
    euronext_optiq_marketdatapacket_udp_v1_0.packet_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Packet Sequence Number
euronext_optiq_marketdatapacket_udp_v1_0.packet_sequence_number = {}

-- Size: Packet Sequence Number
euronext_optiq_marketdatapacket_udp_v1_0.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
euronext_optiq_marketdatapacket_udp_v1_0.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
euronext_optiq_marketdatapacket_udp_v1_0.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatapacket_udp_v1_0.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_marketdatapacket_udp_v1_0.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Packet Time
euronext_optiq_marketdatapacket_udp_v1_0.packet_time = {}

-- Size: Packet Time
euronext_optiq_marketdatapacket_udp_v1_0.packet_time.size = 8

-- Display: Packet Time
euronext_optiq_marketdatapacket_udp_v1_0.packet_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Packet Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Packet Time
euronext_optiq_marketdatapacket_udp_v1_0.packet_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_marketdatapacket_udp_v1_0.packet_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_marketdatapacket_udp_v1_0.packet_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.packet_time, range, value, display)

  return offset + length, value
end

-- Market Data Packet Header
euronext_optiq_marketdatapacket_udp_v1_0.market_data_packet_header = {}

-- Size: Market Data Packet Header
euronext_optiq_marketdatapacket_udp_v1_0.market_data_packet_header.size =
  euronext_optiq_marketdatapacket_udp_v1_0.packet_time.size + 
  euronext_optiq_marketdatapacket_udp_v1_0.packet_sequence_number.size + 
  euronext_optiq_marketdatapacket_udp_v1_0.packet_flags.size + 
  euronext_optiq_marketdatapacket_udp_v1_0.channel_id.size

-- Display: Market Data Packet Header
euronext_optiq_marketdatapacket_udp_v1_0.market_data_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Packet Header
euronext_optiq_marketdatapacket_udp_v1_0.market_data_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Time: 8 Byte Unsigned Fixed Width Integer
  index, packet_time = euronext_optiq_marketdatapacket_udp_v1_0.packet_time.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = euronext_optiq_marketdatapacket_udp_v1_0.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Flags: Struct of 7 fields
  index, packet_flags = euronext_optiq_marketdatapacket_udp_v1_0.packet_flags.dissect(buffer, index, packet, parent)

  -- Channel Id: 2 Byte Unsigned Fixed Width Integer
  index, channel_id = euronext_optiq_marketdatapacket_udp_v1_0.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Packet Header
euronext_optiq_marketdatapacket_udp_v1_0.market_data_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.market_data_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0.fields.market_data_packet_header, buffer(offset, 0))
    local index = euronext_optiq_marketdatapacket_udp_v1_0.market_data_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_marketdatapacket_udp_v1_0.market_data_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_marketdatapacket_udp_v1_0.market_data_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
euronext_optiq_marketdatapacket_udp_v1_0.packet = {}

-- Dissect Packet
euronext_optiq_marketdatapacket_udp_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Market Data Packet Header: Struct of 4 fields
  index, market_data_packet_header = euronext_optiq_marketdatapacket_udp_v1_0.market_data_packet_header.dissect(buffer, index, packet, parent)

  local optiq_message_conversion = bit.band(packet_flags, 0x0001) == 1

  if optiq_message_conversion then
    local compressed = buffer(index, buffer:len() - index):bytes()
    buffer = lz4_decompress(compressed, 8192):tvb("Decompressed")
    index = 0
  end

  -- Dependency for Optiq Message
  local end_of_payload = buffer:len()

  -- Optiq Message: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Frame
    local frame = buffer(index, 2):le_uint()

    -- Runtime Size Of: Optiq Message
    index, optiq_message = euronext_optiq_marketdatapacket_udp_v1_0.optiq_message.dissect(buffer, index, packet, parent, frame)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_euronext_optiq_marketdatapacket_udp_v1_0.init()
end

-- Dissector for Euronext Optiq MarketDataPacket Udp 1.0
function omi_euronext_optiq_marketdatapacket_udp_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_euronext_optiq_marketdatapacket_udp_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_euronext_optiq_marketdatapacket_udp_v1_0, buffer(), omi_euronext_optiq_marketdatapacket_udp_v1_0.description, "("..buffer:len().." Bytes)")
  return euronext_optiq_marketdatapacket_udp_v1_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_euronext_optiq_marketdatapacket_udp_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
euronext_optiq_marketdatapacket_udp_v1_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Euronext Optiq MarketDataPacket Udp 1.0
local function omi_euronext_optiq_marketdatapacket_udp_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not euronext_optiq_marketdatapacket_udp_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_euronext_optiq_marketdatapacket_udp_v1_0
  omi_euronext_optiq_marketdatapacket_udp_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Euronext Optiq MarketDataPacket Udp 1.0
omi_euronext_optiq_marketdatapacket_udp_v1_0:register_heuristic("udp", omi_euronext_optiq_marketdatapacket_udp_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: European New Exchange Technology
--   Version: 1.0
--   Date: Tuesday, May 16, 2023
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
