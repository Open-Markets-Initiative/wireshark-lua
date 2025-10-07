-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Options DeepFeed Xdp 1.3.a Protocol
local omi_nyse_options_deepfeed_xdp_v1_3_a = Proto("Nyse.Options.DeepFeed.Xdp.v1.3.a.Lua", "Nyse Options DeepFeed Xdp 1.3.a")

-- Protocol table
local nyse_options_deepfeed_xdp_v1_3_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Options DeepFeed Xdp 1.3.a Fields
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.channel_id = ProtoField.new("Channel Id", "nyse.options.deepfeed.xdp.v1.3.a.channelid", ftypes.UINT8)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "nyse.options.deepfeed.xdp.v1.3.a.contractmultiplier", ftypes.UINT16)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.options.deepfeed.xdp.v1.3.a.deliveryflag", ftypes.UINT8)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.options.deepfeed.xdp.v1.3.a.exchangecode", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.first_level_customer_volume = ProtoField.new("First Level Customer Volume", "nyse.options.deepfeed.xdp.v1.3.a.firstlevelcustomervolume", ftypes.UINT16)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.first_level_price = ProtoField.new("First Level Price", "nyse.options.deepfeed.xdp.v1.3.a.firstlevelprice", ftypes.INT32)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.first_level_volume = ProtoField.new("First Level Volume", "nyse.options.deepfeed.xdp.v1.3.a.firstlevelvolume", ftypes.UINT16)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.first_volume = ProtoField.new("First Volume", "nyse.options.deepfeed.xdp.v1.3.a.firstvolume", ftypes.UINT16)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.group_id = ProtoField.new("Group Id", "nyse.options.deepfeed.xdp.v1.3.a.groupid", ftypes.UINT32)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.options.deepfeed.xdp.v1.3.a.haltcondition", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.market_id = ProtoField.new("Market Id", "nyse.options.deepfeed.xdp.v1.3.a.marketid", ftypes.UINT16)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.maturity_date = ProtoField.new("Maturity Date", "nyse.options.deepfeed.xdp.v1.3.a.maturitydate", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.message = ProtoField.new("Message", "nyse.options.deepfeed.xdp.v1.3.a.message", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.message_count = ProtoField.new("Message Count", "nyse.options.deepfeed.xdp.v1.3.a.messagecount", ftypes.UINT8)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.message_header = ProtoField.new("Message Header", "nyse.options.deepfeed.xdp.v1.3.a.messageheader", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.message_size = ProtoField.new("Message Size", "nyse.options.deepfeed.xdp.v1.3.a.messagesize", ftypes.UINT16)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.message_type = ProtoField.new("Message Type", "nyse.options.deepfeed.xdp.v1.3.a.messagetype", ftypes.UINT16)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.options.deepfeed.xdp.v1.3.a.nanoseconds", ftypes.UINT32)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.option_symbol_root = ProtoField.new("Option Symbol Root", "nyse.options.deepfeed.xdp.v1.3.a.optionsymbolroot", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.outright_market_depth_buy_message = ProtoField.new("Outright Market Depth Buy Message", "nyse.options.deepfeed.xdp.v1.3.a.outrightmarketdepthbuymessage", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.outright_market_depth_sell_message = ProtoField.new("Outright Market Depth Sell Message", "nyse.options.deepfeed.xdp.v1.3.a.outrightmarketdepthsellmessage", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.outright_series_status_message = ProtoField.new("Outright Series Status Message", "nyse.options.deepfeed.xdp.v1.3.a.outrightseriesstatusmessage", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.packet = ProtoField.new("Packet", "nyse.options.deepfeed.xdp.v1.3.a.packet", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.packet_header = ProtoField.new("Packet Header", "nyse.options.deepfeed.xdp.v1.3.a.packetheader", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.packet_size = ProtoField.new("Packet Size", "nyse.options.deepfeed.xdp.v1.3.a.packetsize", ftypes.UINT16)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.payload = ProtoField.new("Payload", "nyse.options.deepfeed.xdp.v1.3.a.payload", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.options.deepfeed.xdp.v1.3.a.priceresolution", ftypes.UINT8)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.options.deepfeed.xdp.v1.3.a.pricescalecode", ftypes.UINT8)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.product_id = ProtoField.new("Product Id", "nyse.options.deepfeed.xdp.v1.3.a.productid", ftypes.UINT8)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.put_or_call = ProtoField.new("Put Or Call", "nyse.options.deepfeed.xdp.v1.3.a.putorcall", ftypes.UINT8)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.options.deepfeed.xdp.v1.3.a.quotecondition", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.refresh_outright_market_depth_buy_message = ProtoField.new("Refresh Outright Market Depth Buy Message", "nyse.options.deepfeed.xdp.v1.3.a.refreshoutrightmarketdepthbuymessage", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.refresh_outright_market_depth_sell_message = ProtoField.new("Refresh Outright Market Depth Sell Message", "nyse.options.deepfeed.xdp.v1.3.a.refreshoutrightmarketdepthsellmessage", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.options.deepfeed.xdp.v1.3.a.reserved1", ftypes.BYTES)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.options.deepfeed.xdp.v1.3.a.reserved2", ftypes.BYTES)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.reserved_a_1 = ProtoField.new("Reserved A 1", "nyse.options.deepfeed.xdp.v1.3.a.reserveda1", ftypes.BYTES)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.reserved_b_1 = ProtoField.new("Reserved B 1", "nyse.options.deepfeed.xdp.v1.3.a.reservedb1", ftypes.BYTES)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.second_level_customer_volume = ProtoField.new("Second Level Customer Volume", "nyse.options.deepfeed.xdp.v1.3.a.secondlevelcustomervolume", ftypes.UINT16)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.second_level_price = ProtoField.new("Second Level Price", "nyse.options.deepfeed.xdp.v1.3.a.secondlevelprice", ftypes.INT32)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.second_level_volume = ProtoField.new("Second Level Volume", "nyse.options.deepfeed.xdp.v1.3.a.secondlevelvolume", ftypes.UINT16)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.second_volume = ProtoField.new("Second Volume", "nyse.options.deepfeed.xdp.v1.3.a.secondvolume", ftypes.UINT16)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.security_status = ProtoField.new("Security Status", "nyse.options.deepfeed.xdp.v1.3.a.securitystatus", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.security_type = ProtoField.new("Security Type", "nyse.options.deepfeed.xdp.v1.3.a.securitytype", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.options.deepfeed.xdp.v1.3.a.sequencenumber", ftypes.UINT32)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.options.deepfeed.xdp.v1.3.a.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.series_index = ProtoField.new("Series Index", "nyse.options.deepfeed.xdp.v1.3.a.seriesindex", ftypes.UINT32)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.series_index_mapping_message = ProtoField.new("Series Index Mapping Message", "nyse.options.deepfeed.xdp.v1.3.a.seriesindexmappingmessage", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.source_ns = ProtoField.new("Source Ns", "nyse.options.deepfeed.xdp.v1.3.a.sourcens", ftypes.UINT32)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.source_time = ProtoField.new("Source Time", "nyse.options.deepfeed.xdp.v1.3.a.sourcetime", ftypes.UINT32)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.options.deepfeed.xdp.v1.3.a.sourcetimens", ftypes.UINT32)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.stream_id = ProtoField.new("Stream Id", "nyse.options.deepfeed.xdp.v1.3.a.streamid", ftypes.UINT16)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.stream_id_message = ProtoField.new("Stream Id Message", "nyse.options.deepfeed.xdp.v1.3.a.streamidmessage", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.strike_price = ProtoField.new("Strike Price", "nyse.options.deepfeed.xdp.v1.3.a.strikeprice", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.options.deepfeed.xdp.v1.3.a.symbolseqnum", ftypes.UINT32)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.system_id = ProtoField.new("System Id", "nyse.options.deepfeed.xdp.v1.3.a.systemid", ftypes.UINT8)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.third_level_customer_volume = ProtoField.new("Third Level Customer Volume", "nyse.options.deepfeed.xdp.v1.3.a.thirdlevelcustomervolume", ftypes.UINT16)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.third_level_price = ProtoField.new("Third Level Price", "nyse.options.deepfeed.xdp.v1.3.a.thirdlevelprice", ftypes.INT32)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.third_level_volume = ProtoField.new("Third Level Volume", "nyse.options.deepfeed.xdp.v1.3.a.thirdlevelvolume", ftypes.UINT16)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.third_volume = ProtoField.new("Third Volume", "nyse.options.deepfeed.xdp.v1.3.a.thirdvolume", ftypes.UINT16)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.timestamp = ProtoField.new("Timestamp", "nyse.options.deepfeed.xdp.v1.3.a.timestamp", ftypes.UINT32)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.underlying_index = ProtoField.new("Underlying Index", "nyse.options.deepfeed.xdp.v1.3.a.underlyingindex", ftypes.UINT32)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.underlying_index_mapping_message = ProtoField.new("Underlying Index Mapping Message", "nyse.options.deepfeed.xdp.v1.3.a.underlyingindexmappingmessage", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.underlying_seq_num = ProtoField.new("Underlying Seq Num", "nyse.options.deepfeed.xdp.v1.3.a.underlyingseqnum", ftypes.UINT32)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.underlying_status_message = ProtoField.new("Underlying Status Message", "nyse.options.deepfeed.xdp.v1.3.a.underlyingstatusmessage", ftypes.STRING)
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nyse.options.deepfeed.xdp.v1.3.a.underlyingsymbol", ftypes.STRING)

-- Nyse Options DeepFeed Xdp 1.3.a generated fields
omi_nyse_options_deepfeed_xdp_v1_3_a.fields.message_index = ProtoField.new("Message Index", "nyse.options.deepfeed.xdp.v1.3.a.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse Options DeepFeed Xdp 1.3.a Element Dissection Options
show.message = true
show.message_header = true
show.outright_market_depth_buy_message = true
show.outright_market_depth_sell_message = true
show.outright_series_status_message = true
show.packet = true
show.packet_header = true
show.refresh_outright_market_depth_buy_message = true
show.refresh_outright_market_depth_sell_message = true
show.sequence_number_reset_message = true
show.series_index_mapping_message = true
show.stream_id_message = true
show.underlying_index_mapping_message = true
show.underlying_status_message = true
show.payload = false

-- Register Nyse Options DeepFeed Xdp 1.3.a Show Options
omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_outright_market_depth_buy_message = Pref.bool("Show Outright Market Depth Buy Message", show.outright_market_depth_buy_message, "Parse and add Outright Market Depth Buy Message to protocol tree")
omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_outright_market_depth_sell_message = Pref.bool("Show Outright Market Depth Sell Message", show.outright_market_depth_sell_message, "Parse and add Outright Market Depth Sell Message to protocol tree")
omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_outright_series_status_message = Pref.bool("Show Outright Series Status Message", show.outright_series_status_message, "Parse and add Outright Series Status Message to protocol tree")
omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_refresh_outright_market_depth_buy_message = Pref.bool("Show Refresh Outright Market Depth Buy Message", show.refresh_outright_market_depth_buy_message, "Parse and add Refresh Outright Market Depth Buy Message to protocol tree")
omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_refresh_outright_market_depth_sell_message = Pref.bool("Show Refresh Outright Market Depth Sell Message", show.refresh_outright_market_depth_sell_message, "Parse and add Refresh Outright Market Depth Sell Message to protocol tree")
omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_series_index_mapping_message = Pref.bool("Show Series Index Mapping Message", show.series_index_mapping_message, "Parse and add Series Index Mapping Message to protocol tree")
omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_stream_id_message = Pref.bool("Show Stream Id Message", show.stream_id_message, "Parse and add Stream Id Message to protocol tree")
omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_underlying_index_mapping_message = Pref.bool("Show Underlying Index Mapping Message", show.underlying_index_mapping_message, "Parse and add Underlying Index Mapping Message to protocol tree")
omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_underlying_status_message = Pref.bool("Show Underlying Status Message", show.underlying_status_message, "Parse and add Underlying Status Message to protocol tree")
omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nyse_options_deepfeed_xdp_v1_3_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_message then
    show.message = omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_message_header then
    show.message_header = omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_message_header
    changed = true
  end
  if show.outright_market_depth_buy_message ~= omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_outright_market_depth_buy_message then
    show.outright_market_depth_buy_message = omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_outright_market_depth_buy_message
    changed = true
  end
  if show.outright_market_depth_sell_message ~= omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_outright_market_depth_sell_message then
    show.outright_market_depth_sell_message = omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_outright_market_depth_sell_message
    changed = true
  end
  if show.outright_series_status_message ~= omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_outright_series_status_message then
    show.outright_series_status_message = omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_outright_series_status_message
    changed = true
  end
  if show.packet ~= omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_packet then
    show.packet = omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_packet_header then
    show.packet_header = omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_packet_header
    changed = true
  end
  if show.refresh_outright_market_depth_buy_message ~= omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_refresh_outright_market_depth_buy_message then
    show.refresh_outright_market_depth_buy_message = omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_refresh_outright_market_depth_buy_message
    changed = true
  end
  if show.refresh_outright_market_depth_sell_message ~= omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_refresh_outright_market_depth_sell_message then
    show.refresh_outright_market_depth_sell_message = omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_refresh_outright_market_depth_sell_message
    changed = true
  end
  if show.sequence_number_reset_message ~= omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.series_index_mapping_message ~= omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_series_index_mapping_message then
    show.series_index_mapping_message = omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_series_index_mapping_message
    changed = true
  end
  if show.stream_id_message ~= omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_stream_id_message then
    show.stream_id_message = omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_stream_id_message
    changed = true
  end
  if show.underlying_index_mapping_message ~= omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_underlying_index_mapping_message then
    show.underlying_index_mapping_message = omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_underlying_index_mapping_message
    changed = true
  end
  if show.underlying_status_message ~= omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_underlying_status_message then
    show.underlying_status_message = omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_underlying_status_message
    changed = true
  end
  if show.payload ~= omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_payload then
    show.payload = omi_nyse_options_deepfeed_xdp_v1_3_a.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Options DeepFeed Xdp 1.3.a
-----------------------------------------------------------------------

-- Channel Id
nyse_options_deepfeed_xdp_v1_3_a.channel_id = {}

-- Size: Channel Id
nyse_options_deepfeed_xdp_v1_3_a.channel_id.size = 1

-- Display: Channel Id
nyse_options_deepfeed_xdp_v1_3_a.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_options_deepfeed_xdp_v1_3_a.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_options_deepfeed_xdp_v1_3_a.product_id = {}

-- Size: Product Id
nyse_options_deepfeed_xdp_v1_3_a.product_id.size = 1

-- Display: Product Id
nyse_options_deepfeed_xdp_v1_3_a.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_options_deepfeed_xdp_v1_3_a.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.product_id, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_options_deepfeed_xdp_v1_3_a.source_time_ns = {}

-- Size: Source Time Ns
nyse_options_deepfeed_xdp_v1_3_a.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_options_deepfeed_xdp_v1_3_a.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_options_deepfeed_xdp_v1_3_a.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_options_deepfeed_xdp_v1_3_a.source_time = {}

-- Size: Source Time
nyse_options_deepfeed_xdp_v1_3_a.source_time.size = 4

-- Display: Source Time
nyse_options_deepfeed_xdp_v1_3_a.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_options_deepfeed_xdp_v1_3_a.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.source_time, range, value, display)

  return offset + length, value
end

-- Sequence Number Reset Message
nyse_options_deepfeed_xdp_v1_3_a.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_options_deepfeed_xdp_v1_3_a.sequence_number_reset_message.size =
  nyse_options_deepfeed_xdp_v1_3_a.source_time.size + 
  nyse_options_deepfeed_xdp_v1_3_a.source_time_ns.size + 
  nyse_options_deepfeed_xdp_v1_3_a.product_id.size + 
  nyse_options_deepfeed_xdp_v1_3_a.channel_id.size

-- Display: Sequence Number Reset Message
nyse_options_deepfeed_xdp_v1_3_a.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_options_deepfeed_xdp_v1_3_a.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_deepfeed_xdp_v1_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_deepfeed_xdp_v1_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_options_deepfeed_xdp_v1_3_a.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_options_deepfeed_xdp_v1_3_a.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_options_deepfeed_xdp_v1_3_a.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_options_deepfeed_xdp_v1_3_a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_deepfeed_xdp_v1_3_a.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_deepfeed_xdp_v1_3_a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 2
nyse_options_deepfeed_xdp_v1_3_a.reserved_2 = {}

-- Size: Reserved 2
nyse_options_deepfeed_xdp_v1_3_a.reserved_2.size = 2

-- Display: Reserved 2
nyse_options_deepfeed_xdp_v1_3_a.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_options_deepfeed_xdp_v1_3_a.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_deepfeed_xdp_v1_3_a.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Stream Id
nyse_options_deepfeed_xdp_v1_3_a.stream_id = {}

-- Size: Stream Id
nyse_options_deepfeed_xdp_v1_3_a.stream_id.size = 2

-- Display: Stream Id
nyse_options_deepfeed_xdp_v1_3_a.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
nyse_options_deepfeed_xdp_v1_3_a.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.stream_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Stream Id Message
nyse_options_deepfeed_xdp_v1_3_a.stream_id_message = {}

-- Size: Stream Id Message
nyse_options_deepfeed_xdp_v1_3_a.stream_id_message.size =
  nyse_options_deepfeed_xdp_v1_3_a.stream_id.size + 
  nyse_options_deepfeed_xdp_v1_3_a.reserved_2.size

-- Display: Stream Id Message
nyse_options_deepfeed_xdp_v1_3_a.stream_id_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Id Message
nyse_options_deepfeed_xdp_v1_3_a.stream_id_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index, stream_id = nyse_options_deepfeed_xdp_v1_3_a.stream_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_deepfeed_xdp_v1_3_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Id Message
nyse_options_deepfeed_xdp_v1_3_a.stream_id_message.dissect = function(buffer, offset, packet, parent)
  if show.stream_id_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.stream_id_message, buffer(offset, 0))
    local index = nyse_options_deepfeed_xdp_v1_3_a.stream_id_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_deepfeed_xdp_v1_3_a.stream_id_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_deepfeed_xdp_v1_3_a.stream_id_message.fields(buffer, offset, packet, parent)
  end
end

-- Group Id
nyse_options_deepfeed_xdp_v1_3_a.group_id = {}

-- Size: Group Id
nyse_options_deepfeed_xdp_v1_3_a.group_id.size = 4

-- Display: Group Id
nyse_options_deepfeed_xdp_v1_3_a.group_id.display = function(value)
  return "Group Id: "..value
end

-- Dissect: Group Id
nyse_options_deepfeed_xdp_v1_3_a.group_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.group_id, range, value, display)

  return offset + length, value
end

-- Option Symbol Root
nyse_options_deepfeed_xdp_v1_3_a.option_symbol_root = {}

-- Size: Option Symbol Root
nyse_options_deepfeed_xdp_v1_3_a.option_symbol_root.size = 5

-- Display: Option Symbol Root
nyse_options_deepfeed_xdp_v1_3_a.option_symbol_root.display = function(value)
  return "Option Symbol Root: "..value
end

-- Dissect: Option Symbol Root
nyse_options_deepfeed_xdp_v1_3_a.option_symbol_root.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.option_symbol_root.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_deepfeed_xdp_v1_3_a.option_symbol_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.option_symbol_root, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nyse_options_deepfeed_xdp_v1_3_a.underlying_symbol = {}

-- Size: Underlying Symbol
nyse_options_deepfeed_xdp_v1_3_a.underlying_symbol.size = 11

-- Display: Underlying Symbol
nyse_options_deepfeed_xdp_v1_3_a.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nyse_options_deepfeed_xdp_v1_3_a.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.underlying_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_deepfeed_xdp_v1_3_a.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_options_deepfeed_xdp_v1_3_a.price_scale_code = {}

-- Size: Price Scale Code
nyse_options_deepfeed_xdp_v1_3_a.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_options_deepfeed_xdp_v1_3_a.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_options_deepfeed_xdp_v1_3_a.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Strike Price
nyse_options_deepfeed_xdp_v1_3_a.strike_price = {}

-- Size: Strike Price
nyse_options_deepfeed_xdp_v1_3_a.strike_price.size = 10

-- Display: Strike Price
nyse_options_deepfeed_xdp_v1_3_a.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
nyse_options_deepfeed_xdp_v1_3_a.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.strike_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_deepfeed_xdp_v1_3_a.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Put Or Call
nyse_options_deepfeed_xdp_v1_3_a.put_or_call = {}

-- Size: Put Or Call
nyse_options_deepfeed_xdp_v1_3_a.put_or_call.size = 1

-- Display: Put Or Call
nyse_options_deepfeed_xdp_v1_3_a.put_or_call.display = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
nyse_options_deepfeed_xdp_v1_3_a.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Maturity Date
nyse_options_deepfeed_xdp_v1_3_a.maturity_date = {}

-- Size: Maturity Date
nyse_options_deepfeed_xdp_v1_3_a.maturity_date.size = 6

-- Display: Maturity Date
nyse_options_deepfeed_xdp_v1_3_a.maturity_date.display = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
nyse_options_deepfeed_xdp_v1_3_a.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.maturity_date.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_deepfeed_xdp_v1_3_a.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
nyse_options_deepfeed_xdp_v1_3_a.contract_multiplier = {}

-- Size: Contract Multiplier
nyse_options_deepfeed_xdp_v1_3_a.contract_multiplier.size = 2

-- Display: Contract Multiplier
nyse_options_deepfeed_xdp_v1_3_a.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
nyse_options_deepfeed_xdp_v1_3_a.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Underlying Index
nyse_options_deepfeed_xdp_v1_3_a.underlying_index = {}

-- Size: Underlying Index
nyse_options_deepfeed_xdp_v1_3_a.underlying_index.size = 4

-- Display: Underlying Index
nyse_options_deepfeed_xdp_v1_3_a.underlying_index.display = function(value)
  return "Underlying Index: "..value
end

-- Dissect: Underlying Index
nyse_options_deepfeed_xdp_v1_3_a.underlying_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.underlying_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.underlying_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.underlying_index, range, value, display)

  return offset + length, value
end

-- Reserved B 1
nyse_options_deepfeed_xdp_v1_3_a.reserved_b_1 = {}

-- Size: Reserved B 1
nyse_options_deepfeed_xdp_v1_3_a.reserved_b_1.size = 1

-- Display: Reserved B 1
nyse_options_deepfeed_xdp_v1_3_a.reserved_b_1.display = function(value)
  return "Reserved B 1: "..value
end

-- Dissect: Reserved B 1
nyse_options_deepfeed_xdp_v1_3_a.reserved_b_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.reserved_b_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_deepfeed_xdp_v1_3_a.reserved_b_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.reserved_b_1, range, value, display)

  return offset + length, value
end

-- System Id
nyse_options_deepfeed_xdp_v1_3_a.system_id = {}

-- Size: System Id
nyse_options_deepfeed_xdp_v1_3_a.system_id.size = 1

-- Display: System Id
nyse_options_deepfeed_xdp_v1_3_a.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_options_deepfeed_xdp_v1_3_a.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.system_id, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_options_deepfeed_xdp_v1_3_a.market_id = {}

-- Size: Market Id
nyse_options_deepfeed_xdp_v1_3_a.market_id.size = 2

-- Display: Market Id
nyse_options_deepfeed_xdp_v1_3_a.market_id.display = function(value)
  if value == 1 then
    return "Market Id: Nyse Cash (1)"
  end
  if value == 2 then
    return "Market Id: Europe Cash (2)"
  end
  if value == 3 then
    return "Market Id: Nyse Arca Cash (3)"
  end
  if value == 4 then
    return "Market Id: Nyse Arca Options (4)"
  end
  if value == 5 then
    return "Market Id: Nyse Arca Bonds (5)"
  end
  if value == 6 then
    return "Market Id: Arca Edge (6)"
  end
  if value == 7 then
    return "Market Id: Liffe (7)"
  end
  if value == 8 then
    return "Market Id: Nyse American Options (8)"
  end
  if value == 9 then
    return "Market Id: Nyse Mkt Cash (9)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
nyse_options_deepfeed_xdp_v1_3_a.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.market_id, range, value, display)

  return offset + length, value
end

-- Reserved A 1
nyse_options_deepfeed_xdp_v1_3_a.reserved_a_1 = {}

-- Size: Reserved A 1
nyse_options_deepfeed_xdp_v1_3_a.reserved_a_1.size = 1

-- Display: Reserved A 1
nyse_options_deepfeed_xdp_v1_3_a.reserved_a_1.display = function(value)
  return "Reserved A 1: "..value
end

-- Dissect: Reserved A 1
nyse_options_deepfeed_xdp_v1_3_a.reserved_a_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.reserved_a_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_deepfeed_xdp_v1_3_a.reserved_a_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.reserved_a_1, range, value, display)

  return offset + length, value
end

-- Series Index
nyse_options_deepfeed_xdp_v1_3_a.series_index = {}

-- Size: Series Index
nyse_options_deepfeed_xdp_v1_3_a.series_index.size = 4

-- Display: Series Index
nyse_options_deepfeed_xdp_v1_3_a.series_index.display = function(value)
  return "Series Index: "..value
end

-- Dissect: Series Index
nyse_options_deepfeed_xdp_v1_3_a.series_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.series_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.series_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.series_index, range, value, display)

  return offset + length, value
end

-- Series Index Mapping Message
nyse_options_deepfeed_xdp_v1_3_a.series_index_mapping_message = {}

-- Size: Series Index Mapping Message
nyse_options_deepfeed_xdp_v1_3_a.series_index_mapping_message.size =
  nyse_options_deepfeed_xdp_v1_3_a.series_index.size + 
  nyse_options_deepfeed_xdp_v1_3_a.channel_id.size + 
  nyse_options_deepfeed_xdp_v1_3_a.reserved_a_1.size + 
  nyse_options_deepfeed_xdp_v1_3_a.market_id.size + 
  nyse_options_deepfeed_xdp_v1_3_a.system_id.size + 
  nyse_options_deepfeed_xdp_v1_3_a.reserved_b_1.size + 
  nyse_options_deepfeed_xdp_v1_3_a.stream_id.size + 
  nyse_options_deepfeed_xdp_v1_3_a.underlying_index.size + 
  nyse_options_deepfeed_xdp_v1_3_a.contract_multiplier.size + 
  nyse_options_deepfeed_xdp_v1_3_a.maturity_date.size + 
  nyse_options_deepfeed_xdp_v1_3_a.put_or_call.size + 
  nyse_options_deepfeed_xdp_v1_3_a.strike_price.size + 
  nyse_options_deepfeed_xdp_v1_3_a.price_scale_code.size + 
  nyse_options_deepfeed_xdp_v1_3_a.underlying_symbol.size + 
  nyse_options_deepfeed_xdp_v1_3_a.option_symbol_root.size + 
  nyse_options_deepfeed_xdp_v1_3_a.group_id.size

-- Display: Series Index Mapping Message
nyse_options_deepfeed_xdp_v1_3_a.series_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Index Mapping Message
nyse_options_deepfeed_xdp_v1_3_a.series_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_deepfeed_xdp_v1_3_a.series_index.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_options_deepfeed_xdp_v1_3_a.channel_id.dissect(buffer, index, packet, parent)

  -- Reserved A 1: 1 Byte
  index, reserved_a_1 = nyse_options_deepfeed_xdp_v1_3_a.reserved_a_1.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_options_deepfeed_xdp_v1_3_a.market_id.dissect(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_options_deepfeed_xdp_v1_3_a.system_id.dissect(buffer, index, packet, parent)

  -- Reserved B 1: 1 Byte
  index, reserved_b_1 = nyse_options_deepfeed_xdp_v1_3_a.reserved_b_1.dissect(buffer, index, packet, parent)

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index, stream_id = nyse_options_deepfeed_xdp_v1_3_a.stream_id.dissect(buffer, index, packet, parent)

  -- Underlying Index: 4 Byte Unsigned Fixed Width Integer
  index, underlying_index = nyse_options_deepfeed_xdp_v1_3_a.underlying_index.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: 2 Byte Unsigned Fixed Width Integer
  index, contract_multiplier = nyse_options_deepfeed_xdp_v1_3_a.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Maturity Date: 6 Byte Ascii String
  index, maturity_date = nyse_options_deepfeed_xdp_v1_3_a.maturity_date.dissect(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = nyse_options_deepfeed_xdp_v1_3_a.put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: 10 Byte Ascii String
  index, strike_price = nyse_options_deepfeed_xdp_v1_3_a.strike_price.dissect(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index, price_scale_code = nyse_options_deepfeed_xdp_v1_3_a.price_scale_code.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index, underlying_symbol = nyse_options_deepfeed_xdp_v1_3_a.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Option Symbol Root: 5 Byte Ascii String
  index, option_symbol_root = nyse_options_deepfeed_xdp_v1_3_a.option_symbol_root.dissect(buffer, index, packet, parent)

  -- Group Id: 4 Byte Unsigned Fixed Width Integer
  index, group_id = nyse_options_deepfeed_xdp_v1_3_a.group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Index Mapping Message
nyse_options_deepfeed_xdp_v1_3_a.series_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.series_index_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.series_index_mapping_message, buffer(offset, 0))
    local index = nyse_options_deepfeed_xdp_v1_3_a.series_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_deepfeed_xdp_v1_3_a.series_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_deepfeed_xdp_v1_3_a.series_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 1
nyse_options_deepfeed_xdp_v1_3_a.reserved_1 = {}

-- Size: Reserved 1
nyse_options_deepfeed_xdp_v1_3_a.reserved_1.size = 1

-- Display: Reserved 1
nyse_options_deepfeed_xdp_v1_3_a.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_options_deepfeed_xdp_v1_3_a.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_deepfeed_xdp_v1_3_a.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_options_deepfeed_xdp_v1_3_a.price_resolution = {}

-- Size: Price Resolution
nyse_options_deepfeed_xdp_v1_3_a.price_resolution.size = 1

-- Display: Price Resolution
nyse_options_deepfeed_xdp_v1_3_a.price_resolution.display = function(value)
  if value == 0 then
    return "Price Resolution: All Penny (0)"
  end
  if value == 1 then
    return "Price Resolution: Penny Nickel (1)"
  end
  if value == 5 then
    return "Price Resolution: Nickel Dime (5)"
  end

  return "Price Resolution: Unknown("..value..")"
end

-- Dissect: Price Resolution
nyse_options_deepfeed_xdp_v1_3_a.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_options_deepfeed_xdp_v1_3_a.security_type = {}

-- Size: Security Type
nyse_options_deepfeed_xdp_v1_3_a.security_type.size = 1

-- Display: Security Type
nyse_options_deepfeed_xdp_v1_3_a.security_type.display = function(value)
  if value == "A" then
    return "Security Type: Adr (A)"
  end
  if value == "C" then
    return "Security Type: Common Stock (C)"
  end
  if value == "D" then
    return "Security Type: Debentures (D)"
  end
  if value == "E" then
    return "Security Type: Etf (E)"
  end
  if value == "F" then
    return "Security Type: Foreign (F)"
  end
  if value == "H" then
    return "Security Type: American Depository Shares (H)"
  end
  if value == "I" then
    return "Security Type: Units (I)"
  end
  if value == "M" then
    return "Security Type: Miscliquid Trust (M)"
  end
  if value == "O" then
    return "Security Type: Ordinary Shares (O)"
  end
  if value == "P" then
    return "Security Type: Preferred Stock (P)"
  end
  if value == "R" then
    return "Security Type: Rights (R)"
  end
  if value == "S" then
    return "Security Type: Shares Of Beneficiary Interest (S)"
  end
  if value == "T" then
    return "Security Type: Test (T)"
  end
  if value == "U" then
    return "Security Type: Units (U)"
  end
  if value == "W" then
    return "Security Type: Warrant (W)"
  end
  if value == "X" then
    return "Security Type: Index (X)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
nyse_options_deepfeed_xdp_v1_3_a.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_deepfeed_xdp_v1_3_a.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.security_type, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_options_deepfeed_xdp_v1_3_a.exchange_code = {}

-- Size: Exchange Code
nyse_options_deepfeed_xdp_v1_3_a.exchange_code.size = 1

-- Display: Exchange Code
nyse_options_deepfeed_xdp_v1_3_a.exchange_code.display = function(value)
  if value == "N" then
    return "Exchange Code: Nyse (N)"
  end
  if value == "P" then
    return "Exchange Code: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Exchange Code: Nasdaq (Q)"
  end
  if value == "A" then
    return "Exchange Code: Nyse Mkt (A)"
  end
  if value == "1" then
    return "Exchange Code: Global Otc (1)"
  end
  if value == "2" then
    return "Exchange Code: Arca Local Nontapeb Index (2)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
nyse_options_deepfeed_xdp_v1_3_a.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_deepfeed_xdp_v1_3_a.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Underlying Index Mapping Message
nyse_options_deepfeed_xdp_v1_3_a.underlying_index_mapping_message = {}

-- Size: Underlying Index Mapping Message
nyse_options_deepfeed_xdp_v1_3_a.underlying_index_mapping_message.size =
  nyse_options_deepfeed_xdp_v1_3_a.underlying_index.size + 
  nyse_options_deepfeed_xdp_v1_3_a.underlying_symbol.size + 
  nyse_options_deepfeed_xdp_v1_3_a.channel_id.size + 
  nyse_options_deepfeed_xdp_v1_3_a.market_id.size + 
  nyse_options_deepfeed_xdp_v1_3_a.system_id.size + 
  nyse_options_deepfeed_xdp_v1_3_a.exchange_code.size + 
  nyse_options_deepfeed_xdp_v1_3_a.price_scale_code.size + 
  nyse_options_deepfeed_xdp_v1_3_a.security_type.size + 
  nyse_options_deepfeed_xdp_v1_3_a.price_resolution.size + 
  nyse_options_deepfeed_xdp_v1_3_a.reserved_1.size

-- Display: Underlying Index Mapping Message
nyse_options_deepfeed_xdp_v1_3_a.underlying_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Index Mapping Message
nyse_options_deepfeed_xdp_v1_3_a.underlying_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Index: 4 Byte Unsigned Fixed Width Integer
  index, underlying_index = nyse_options_deepfeed_xdp_v1_3_a.underlying_index.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index, underlying_symbol = nyse_options_deepfeed_xdp_v1_3_a.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_options_deepfeed_xdp_v1_3_a.channel_id.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_options_deepfeed_xdp_v1_3_a.market_id.dissect(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_options_deepfeed_xdp_v1_3_a.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 6 values
  index, exchange_code = nyse_options_deepfeed_xdp_v1_3_a.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index, price_scale_code = nyse_options_deepfeed_xdp_v1_3_a.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 16 values
  index, security_type = nyse_options_deepfeed_xdp_v1_3_a.security_type.dissect(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_resolution = nyse_options_deepfeed_xdp_v1_3_a.price_resolution.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_options_deepfeed_xdp_v1_3_a.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Index Mapping Message
nyse_options_deepfeed_xdp_v1_3_a.underlying_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.underlying_index_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.underlying_index_mapping_message, buffer(offset, 0))
    local index = nyse_options_deepfeed_xdp_v1_3_a.underlying_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_deepfeed_xdp_v1_3_a.underlying_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_deepfeed_xdp_v1_3_a.underlying_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Third Level Customer Volume
nyse_options_deepfeed_xdp_v1_3_a.third_level_customer_volume = {}

-- Size: Third Level Customer Volume
nyse_options_deepfeed_xdp_v1_3_a.third_level_customer_volume.size = 2

-- Display: Third Level Customer Volume
nyse_options_deepfeed_xdp_v1_3_a.third_level_customer_volume.display = function(value)
  return "Third Level Customer Volume: "..value
end

-- Dissect: Third Level Customer Volume
nyse_options_deepfeed_xdp_v1_3_a.third_level_customer_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.third_level_customer_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.third_level_customer_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.third_level_customer_volume, range, value, display)

  return offset + length, value
end

-- Second Level Customer Volume
nyse_options_deepfeed_xdp_v1_3_a.second_level_customer_volume = {}

-- Size: Second Level Customer Volume
nyse_options_deepfeed_xdp_v1_3_a.second_level_customer_volume.size = 2

-- Display: Second Level Customer Volume
nyse_options_deepfeed_xdp_v1_3_a.second_level_customer_volume.display = function(value)
  return "Second Level Customer Volume: "..value
end

-- Dissect: Second Level Customer Volume
nyse_options_deepfeed_xdp_v1_3_a.second_level_customer_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.second_level_customer_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.second_level_customer_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.second_level_customer_volume, range, value, display)

  return offset + length, value
end

-- First Level Customer Volume
nyse_options_deepfeed_xdp_v1_3_a.first_level_customer_volume = {}

-- Size: First Level Customer Volume
nyse_options_deepfeed_xdp_v1_3_a.first_level_customer_volume.size = 2

-- Display: First Level Customer Volume
nyse_options_deepfeed_xdp_v1_3_a.first_level_customer_volume.display = function(value)
  return "First Level Customer Volume: "..value
end

-- Dissect: First Level Customer Volume
nyse_options_deepfeed_xdp_v1_3_a.first_level_customer_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.first_level_customer_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.first_level_customer_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.first_level_customer_volume, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_options_deepfeed_xdp_v1_3_a.quote_condition = {}

-- Size: Quote Condition
nyse_options_deepfeed_xdp_v1_3_a.quote_condition.size = 1

-- Display: Quote Condition
nyse_options_deepfeed_xdp_v1_3_a.quote_condition.display = function(value)
  if value == "1" then
    return "Quote Condition: Regular Trading (1)"
  end
  if value == "2" then
    return "Quote Condition: Rotation (2)"
  end
  if value == "3" then
    return "Quote Condition: Trading Halted (3)"
  end
  if value == "4" then
    return "Quote Condition: Preopen (4)"
  end
  if value == "5" then
    return "Quote Condition: Rotation Legal Width Quote Pending (5)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_options_deepfeed_xdp_v1_3_a.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_deepfeed_xdp_v1_3_a.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Third Volume
nyse_options_deepfeed_xdp_v1_3_a.third_volume = {}

-- Size: Third Volume
nyse_options_deepfeed_xdp_v1_3_a.third_volume.size = 2

-- Display: Third Volume
nyse_options_deepfeed_xdp_v1_3_a.third_volume.display = function(value)
  return "Third Volume: "..value
end

-- Dissect: Third Volume
nyse_options_deepfeed_xdp_v1_3_a.third_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.third_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.third_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.third_volume, range, value, display)

  return offset + length, value
end

-- Second Volume
nyse_options_deepfeed_xdp_v1_3_a.second_volume = {}

-- Size: Second Volume
nyse_options_deepfeed_xdp_v1_3_a.second_volume.size = 2

-- Display: Second Volume
nyse_options_deepfeed_xdp_v1_3_a.second_volume.display = function(value)
  return "Second Volume: "..value
end

-- Dissect: Second Volume
nyse_options_deepfeed_xdp_v1_3_a.second_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.second_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.second_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.second_volume, range, value, display)

  return offset + length, value
end

-- First Volume
nyse_options_deepfeed_xdp_v1_3_a.first_volume = {}

-- Size: First Volume
nyse_options_deepfeed_xdp_v1_3_a.first_volume.size = 2

-- Display: First Volume
nyse_options_deepfeed_xdp_v1_3_a.first_volume.display = function(value)
  return "First Volume: "..value
end

-- Dissect: First Volume
nyse_options_deepfeed_xdp_v1_3_a.first_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.first_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.first_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.first_volume, range, value, display)

  return offset + length, value
end

-- Third Level Price
nyse_options_deepfeed_xdp_v1_3_a.third_level_price = {}

-- Size: Third Level Price
nyse_options_deepfeed_xdp_v1_3_a.third_level_price.size = 4

-- Display: Third Level Price
nyse_options_deepfeed_xdp_v1_3_a.third_level_price.display = function(value)
  return "Third Level Price: "..value
end

-- Dissect: Third Level Price
nyse_options_deepfeed_xdp_v1_3_a.third_level_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.third_level_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_options_deepfeed_xdp_v1_3_a.third_level_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.third_level_price, range, value, display)

  return offset + length, value
end

-- Second Level Price
nyse_options_deepfeed_xdp_v1_3_a.second_level_price = {}

-- Size: Second Level Price
nyse_options_deepfeed_xdp_v1_3_a.second_level_price.size = 4

-- Display: Second Level Price
nyse_options_deepfeed_xdp_v1_3_a.second_level_price.display = function(value)
  return "Second Level Price: "..value
end

-- Dissect: Second Level Price
nyse_options_deepfeed_xdp_v1_3_a.second_level_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.second_level_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_options_deepfeed_xdp_v1_3_a.second_level_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.second_level_price, range, value, display)

  return offset + length, value
end

-- First Level Price
nyse_options_deepfeed_xdp_v1_3_a.first_level_price = {}

-- Size: First Level Price
nyse_options_deepfeed_xdp_v1_3_a.first_level_price.size = 4

-- Display: First Level Price
nyse_options_deepfeed_xdp_v1_3_a.first_level_price.display = function(value)
  return "First Level Price: "..value
end

-- Dissect: First Level Price
nyse_options_deepfeed_xdp_v1_3_a.first_level_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.first_level_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_options_deepfeed_xdp_v1_3_a.first_level_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.first_level_price, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Refresh Outright Market Depth Sell Message
nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_sell_message = {}

-- Size: Refresh Outright Market Depth Sell Message
nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_sell_message.size =
  nyse_options_deepfeed_xdp_v1_3_a.source_time.size + 
  nyse_options_deepfeed_xdp_v1_3_a.source_time_ns.size + 
  nyse_options_deepfeed_xdp_v1_3_a.series_index.size + 
  nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num.size + 
  nyse_options_deepfeed_xdp_v1_3_a.first_level_price.size + 
  nyse_options_deepfeed_xdp_v1_3_a.second_level_price.size + 
  nyse_options_deepfeed_xdp_v1_3_a.third_level_price.size + 
  nyse_options_deepfeed_xdp_v1_3_a.first_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.second_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.third_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.quote_condition.size + 
  nyse_options_deepfeed_xdp_v1_3_a.reserved_1.size + 
  nyse_options_deepfeed_xdp_v1_3_a.first_level_customer_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.second_level_customer_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.third_level_customer_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.reserved_2.size

-- Display: Refresh Outright Market Depth Sell Message
nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_sell_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Outright Market Depth Sell Message
nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_sell_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_deepfeed_xdp_v1_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_deepfeed_xdp_v1_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_deepfeed_xdp_v1_3_a.series_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- First Level Price: 4 Byte Signed Fixed Width Integer
  index, first_level_price = nyse_options_deepfeed_xdp_v1_3_a.first_level_price.dissect(buffer, index, packet, parent)

  -- Second Level Price: 4 Byte Signed Fixed Width Integer
  index, second_level_price = nyse_options_deepfeed_xdp_v1_3_a.second_level_price.dissect(buffer, index, packet, parent)

  -- Third Level Price: 4 Byte Signed Fixed Width Integer
  index, third_level_price = nyse_options_deepfeed_xdp_v1_3_a.third_level_price.dissect(buffer, index, packet, parent)

  -- First Volume: 2 Byte Unsigned Fixed Width Integer
  index, first_volume = nyse_options_deepfeed_xdp_v1_3_a.first_volume.dissect(buffer, index, packet, parent)

  -- Second Volume: 2 Byte Unsigned Fixed Width Integer
  index, second_volume = nyse_options_deepfeed_xdp_v1_3_a.second_volume.dissect(buffer, index, packet, parent)

  -- Third Volume: 2 Byte Unsigned Fixed Width Integer
  index, third_volume = nyse_options_deepfeed_xdp_v1_3_a.third_volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nyse_options_deepfeed_xdp_v1_3_a.quote_condition.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_options_deepfeed_xdp_v1_3_a.reserved_1.dissect(buffer, index, packet, parent)

  -- First Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, first_level_customer_volume = nyse_options_deepfeed_xdp_v1_3_a.first_level_customer_volume.dissect(buffer, index, packet, parent)

  -- Second Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, second_level_customer_volume = nyse_options_deepfeed_xdp_v1_3_a.second_level_customer_volume.dissect(buffer, index, packet, parent)

  -- Third Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, third_level_customer_volume = nyse_options_deepfeed_xdp_v1_3_a.third_level_customer_volume.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_deepfeed_xdp_v1_3_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Outright Market Depth Sell Message
nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_sell_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_outright_market_depth_sell_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.refresh_outright_market_depth_sell_message, buffer(offset, 0))
    local index = nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_sell_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_sell_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_sell_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Ns
nyse_options_deepfeed_xdp_v1_3_a.source_ns = {}

-- Size: Source Ns
nyse_options_deepfeed_xdp_v1_3_a.source_ns.size = 4

-- Display: Source Ns
nyse_options_deepfeed_xdp_v1_3_a.source_ns.display = function(value)
  return "Source Ns: "..value
end

-- Dissect: Source Ns
nyse_options_deepfeed_xdp_v1_3_a.source_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.source_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.source_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.source_ns, range, value, display)

  return offset + length, value
end

-- Refresh Outright Market Depth Buy Message
nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_buy_message = {}

-- Size: Refresh Outright Market Depth Buy Message
nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_buy_message.size =
  nyse_options_deepfeed_xdp_v1_3_a.source_time.size + 
  nyse_options_deepfeed_xdp_v1_3_a.source_ns.size + 
  nyse_options_deepfeed_xdp_v1_3_a.series_index.size + 
  nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num.size + 
  nyse_options_deepfeed_xdp_v1_3_a.first_level_price.size + 
  nyse_options_deepfeed_xdp_v1_3_a.second_level_price.size + 
  nyse_options_deepfeed_xdp_v1_3_a.third_level_price.size + 
  nyse_options_deepfeed_xdp_v1_3_a.first_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.second_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.third_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.quote_condition.size + 
  nyse_options_deepfeed_xdp_v1_3_a.reserved_1.size + 
  nyse_options_deepfeed_xdp_v1_3_a.first_level_customer_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.second_level_customer_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.third_level_customer_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.reserved_2.size

-- Display: Refresh Outright Market Depth Buy Message
nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_buy_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Outright Market Depth Buy Message
nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_buy_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_deepfeed_xdp_v1_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_ns = nyse_options_deepfeed_xdp_v1_3_a.source_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_deepfeed_xdp_v1_3_a.series_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- First Level Price: 4 Byte Signed Fixed Width Integer
  index, first_level_price = nyse_options_deepfeed_xdp_v1_3_a.first_level_price.dissect(buffer, index, packet, parent)

  -- Second Level Price: 4 Byte Signed Fixed Width Integer
  index, second_level_price = nyse_options_deepfeed_xdp_v1_3_a.second_level_price.dissect(buffer, index, packet, parent)

  -- Third Level Price: 4 Byte Signed Fixed Width Integer
  index, third_level_price = nyse_options_deepfeed_xdp_v1_3_a.third_level_price.dissect(buffer, index, packet, parent)

  -- First Volume: 2 Byte Unsigned Fixed Width Integer
  index, first_volume = nyse_options_deepfeed_xdp_v1_3_a.first_volume.dissect(buffer, index, packet, parent)

  -- Second Volume: 2 Byte Unsigned Fixed Width Integer
  index, second_volume = nyse_options_deepfeed_xdp_v1_3_a.second_volume.dissect(buffer, index, packet, parent)

  -- Third Volume: 2 Byte Unsigned Fixed Width Integer
  index, third_volume = nyse_options_deepfeed_xdp_v1_3_a.third_volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nyse_options_deepfeed_xdp_v1_3_a.quote_condition.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_options_deepfeed_xdp_v1_3_a.reserved_1.dissect(buffer, index, packet, parent)

  -- First Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, first_level_customer_volume = nyse_options_deepfeed_xdp_v1_3_a.first_level_customer_volume.dissect(buffer, index, packet, parent)

  -- Second Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, second_level_customer_volume = nyse_options_deepfeed_xdp_v1_3_a.second_level_customer_volume.dissect(buffer, index, packet, parent)

  -- Third Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, third_level_customer_volume = nyse_options_deepfeed_xdp_v1_3_a.third_level_customer_volume.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_deepfeed_xdp_v1_3_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Outright Market Depth Buy Message
nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_buy_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_outright_market_depth_buy_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.refresh_outright_market_depth_buy_message, buffer(offset, 0))
    local index = nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_buy_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_buy_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_buy_message.fields(buffer, offset, packet, parent)
  end
end

-- Halt Condition
nyse_options_deepfeed_xdp_v1_3_a.halt_condition = {}

-- Size: Halt Condition
nyse_options_deepfeed_xdp_v1_3_a.halt_condition.size = 1

-- Display: Halt Condition
nyse_options_deepfeed_xdp_v1_3_a.halt_condition.display = function(value)
  return "Halt Condition: "..value
end

-- Dissect: Halt Condition
nyse_options_deepfeed_xdp_v1_3_a.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_deepfeed_xdp_v1_3_a.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_options_deepfeed_xdp_v1_3_a.security_status = {}

-- Size: Security Status
nyse_options_deepfeed_xdp_v1_3_a.security_status.size = 1

-- Display: Security Status
nyse_options_deepfeed_xdp_v1_3_a.security_status.display = function(value)
  if value == "L" then
    return "Security Status: Light Up A Dark Series (L)"
  end
  if value == "N" then
    return "Security Status: Open A Dark Series (N)"
  end
  if value == "O" then
    return "Security Status: Open (O)"
  end
  if value == "X" then
    return "Security Status: Close (X)"
  end
  if value == "S" then
    return "Security Status: Halt (S)"
  end
  if value == "U" then
    return "Security Status: Unhalt (U)"
  end
  if value == "T" then
    return "Security Status: Unhalt A Dark Series (T)"
  end
  if value == "Q" then
    return "Security Status: End Of Rfq Auction (Q)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
nyse_options_deepfeed_xdp_v1_3_a.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_deepfeed_xdp_v1_3_a.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.security_status, range, value, display)

  return offset + length, value
end

-- Outright Series Status Message
nyse_options_deepfeed_xdp_v1_3_a.outright_series_status_message = {}

-- Size: Outright Series Status Message
nyse_options_deepfeed_xdp_v1_3_a.outright_series_status_message.size =
  nyse_options_deepfeed_xdp_v1_3_a.source_time.size + 
  nyse_options_deepfeed_xdp_v1_3_a.source_time_ns.size + 
  nyse_options_deepfeed_xdp_v1_3_a.series_index.size + 
  nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num.size + 
  nyse_options_deepfeed_xdp_v1_3_a.security_status.size + 
  nyse_options_deepfeed_xdp_v1_3_a.halt_condition.size + 
  nyse_options_deepfeed_xdp_v1_3_a.reserved_2.size

-- Display: Outright Series Status Message
nyse_options_deepfeed_xdp_v1_3_a.outright_series_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Series Status Message
nyse_options_deepfeed_xdp_v1_3_a.outright_series_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_deepfeed_xdp_v1_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_deepfeed_xdp_v1_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_deepfeed_xdp_v1_3_a.series_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 8 values
  index, security_status = nyse_options_deepfeed_xdp_v1_3_a.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String
  index, halt_condition = nyse_options_deepfeed_xdp_v1_3_a.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_deepfeed_xdp_v1_3_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Series Status Message
nyse_options_deepfeed_xdp_v1_3_a.outright_series_status_message.dissect = function(buffer, offset, packet, parent)
  if show.outright_series_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.outright_series_status_message, buffer(offset, 0))
    local index = nyse_options_deepfeed_xdp_v1_3_a.outright_series_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_deepfeed_xdp_v1_3_a.outright_series_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_deepfeed_xdp_v1_3_a.outright_series_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Seq Num
nyse_options_deepfeed_xdp_v1_3_a.underlying_seq_num = {}

-- Size: Underlying Seq Num
nyse_options_deepfeed_xdp_v1_3_a.underlying_seq_num.size = 4

-- Display: Underlying Seq Num
nyse_options_deepfeed_xdp_v1_3_a.underlying_seq_num.display = function(value)
  return "Underlying Seq Num: "..value
end

-- Dissect: Underlying Seq Num
nyse_options_deepfeed_xdp_v1_3_a.underlying_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.underlying_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.underlying_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.underlying_seq_num, range, value, display)

  return offset + length, value
end

-- Underlying Status Message
nyse_options_deepfeed_xdp_v1_3_a.underlying_status_message = {}

-- Size: Underlying Status Message
nyse_options_deepfeed_xdp_v1_3_a.underlying_status_message.size =
  nyse_options_deepfeed_xdp_v1_3_a.source_time.size + 
  nyse_options_deepfeed_xdp_v1_3_a.source_time_ns.size + 
  nyse_options_deepfeed_xdp_v1_3_a.underlying_index.size + 
  nyse_options_deepfeed_xdp_v1_3_a.underlying_seq_num.size + 
  nyse_options_deepfeed_xdp_v1_3_a.security_status.size + 
  nyse_options_deepfeed_xdp_v1_3_a.halt_condition.size + 
  nyse_options_deepfeed_xdp_v1_3_a.reserved_2.size

-- Display: Underlying Status Message
nyse_options_deepfeed_xdp_v1_3_a.underlying_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Status Message
nyse_options_deepfeed_xdp_v1_3_a.underlying_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_deepfeed_xdp_v1_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_deepfeed_xdp_v1_3_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Underlying Index: 4 Byte Unsigned Fixed Width Integer
  index, underlying_index = nyse_options_deepfeed_xdp_v1_3_a.underlying_index.dissect(buffer, index, packet, parent)

  -- Underlying Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, underlying_seq_num = nyse_options_deepfeed_xdp_v1_3_a.underlying_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 8 values
  index, security_status = nyse_options_deepfeed_xdp_v1_3_a.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String
  index, halt_condition = nyse_options_deepfeed_xdp_v1_3_a.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_deepfeed_xdp_v1_3_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Status Message
nyse_options_deepfeed_xdp_v1_3_a.underlying_status_message.dissect = function(buffer, offset, packet, parent)
  if show.underlying_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.underlying_status_message, buffer(offset, 0))
    local index = nyse_options_deepfeed_xdp_v1_3_a.underlying_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_deepfeed_xdp_v1_3_a.underlying_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_deepfeed_xdp_v1_3_a.underlying_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Outright Market Depth Sell Message
nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_sell_message = {}

-- Size: Outright Market Depth Sell Message
nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_sell_message.size =
  nyse_options_deepfeed_xdp_v1_3_a.source_time.size + 
  nyse_options_deepfeed_xdp_v1_3_a.source_ns.size + 
  nyse_options_deepfeed_xdp_v1_3_a.series_index.size + 
  nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num.size + 
  nyse_options_deepfeed_xdp_v1_3_a.first_level_price.size + 
  nyse_options_deepfeed_xdp_v1_3_a.second_level_price.size + 
  nyse_options_deepfeed_xdp_v1_3_a.third_level_price.size + 
  nyse_options_deepfeed_xdp_v1_3_a.first_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.second_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.third_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.quote_condition.size + 
  nyse_options_deepfeed_xdp_v1_3_a.reserved_1.size + 
  nyse_options_deepfeed_xdp_v1_3_a.first_level_customer_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.second_level_customer_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.third_level_customer_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.reserved_2.size

-- Display: Outright Market Depth Sell Message
nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_sell_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Market Depth Sell Message
nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_sell_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_deepfeed_xdp_v1_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_ns = nyse_options_deepfeed_xdp_v1_3_a.source_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_deepfeed_xdp_v1_3_a.series_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- First Level Price: 4 Byte Signed Fixed Width Integer
  index, first_level_price = nyse_options_deepfeed_xdp_v1_3_a.first_level_price.dissect(buffer, index, packet, parent)

  -- Second Level Price: 4 Byte Signed Fixed Width Integer
  index, second_level_price = nyse_options_deepfeed_xdp_v1_3_a.second_level_price.dissect(buffer, index, packet, parent)

  -- Third Level Price: 4 Byte Signed Fixed Width Integer
  index, third_level_price = nyse_options_deepfeed_xdp_v1_3_a.third_level_price.dissect(buffer, index, packet, parent)

  -- First Volume: 2 Byte Unsigned Fixed Width Integer
  index, first_volume = nyse_options_deepfeed_xdp_v1_3_a.first_volume.dissect(buffer, index, packet, parent)

  -- Second Volume: 2 Byte Unsigned Fixed Width Integer
  index, second_volume = nyse_options_deepfeed_xdp_v1_3_a.second_volume.dissect(buffer, index, packet, parent)

  -- Third Volume: 2 Byte Unsigned Fixed Width Integer
  index, third_volume = nyse_options_deepfeed_xdp_v1_3_a.third_volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nyse_options_deepfeed_xdp_v1_3_a.quote_condition.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_options_deepfeed_xdp_v1_3_a.reserved_1.dissect(buffer, index, packet, parent)

  -- First Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, first_level_customer_volume = nyse_options_deepfeed_xdp_v1_3_a.first_level_customer_volume.dissect(buffer, index, packet, parent)

  -- Second Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, second_level_customer_volume = nyse_options_deepfeed_xdp_v1_3_a.second_level_customer_volume.dissect(buffer, index, packet, parent)

  -- Third Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, third_level_customer_volume = nyse_options_deepfeed_xdp_v1_3_a.third_level_customer_volume.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_deepfeed_xdp_v1_3_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Market Depth Sell Message
nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_sell_message.dissect = function(buffer, offset, packet, parent)
  if show.outright_market_depth_sell_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.outright_market_depth_sell_message, buffer(offset, 0))
    local index = nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_sell_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_sell_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_sell_message.fields(buffer, offset, packet, parent)
  end
end

-- Third Level Volume
nyse_options_deepfeed_xdp_v1_3_a.third_level_volume = {}

-- Size: Third Level Volume
nyse_options_deepfeed_xdp_v1_3_a.third_level_volume.size = 2

-- Display: Third Level Volume
nyse_options_deepfeed_xdp_v1_3_a.third_level_volume.display = function(value)
  return "Third Level Volume: "..value
end

-- Dissect: Third Level Volume
nyse_options_deepfeed_xdp_v1_3_a.third_level_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.third_level_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.third_level_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.third_level_volume, range, value, display)

  return offset + length, value
end

-- Second Level Volume
nyse_options_deepfeed_xdp_v1_3_a.second_level_volume = {}

-- Size: Second Level Volume
nyse_options_deepfeed_xdp_v1_3_a.second_level_volume.size = 2

-- Display: Second Level Volume
nyse_options_deepfeed_xdp_v1_3_a.second_level_volume.display = function(value)
  return "Second Level Volume: "..value
end

-- Dissect: Second Level Volume
nyse_options_deepfeed_xdp_v1_3_a.second_level_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.second_level_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.second_level_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.second_level_volume, range, value, display)

  return offset + length, value
end

-- First Level Volume
nyse_options_deepfeed_xdp_v1_3_a.first_level_volume = {}

-- Size: First Level Volume
nyse_options_deepfeed_xdp_v1_3_a.first_level_volume.size = 2

-- Display: First Level Volume
nyse_options_deepfeed_xdp_v1_3_a.first_level_volume.display = function(value)
  return "First Level Volume: "..value
end

-- Dissect: First Level Volume
nyse_options_deepfeed_xdp_v1_3_a.first_level_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.first_level_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.first_level_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.first_level_volume, range, value, display)

  return offset + length, value
end

-- Outright Market Depth Buy Message
nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_buy_message = {}

-- Size: Outright Market Depth Buy Message
nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_buy_message.size =
  nyse_options_deepfeed_xdp_v1_3_a.source_time.size + 
  nyse_options_deepfeed_xdp_v1_3_a.source_ns.size + 
  nyse_options_deepfeed_xdp_v1_3_a.series_index.size + 
  nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num.size + 
  nyse_options_deepfeed_xdp_v1_3_a.first_level_price.size + 
  nyse_options_deepfeed_xdp_v1_3_a.second_level_price.size + 
  nyse_options_deepfeed_xdp_v1_3_a.third_level_price.size + 
  nyse_options_deepfeed_xdp_v1_3_a.first_level_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.second_level_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.third_level_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.quote_condition.size + 
  nyse_options_deepfeed_xdp_v1_3_a.reserved_1.size + 
  nyse_options_deepfeed_xdp_v1_3_a.first_level_customer_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.second_level_customer_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.third_level_customer_volume.size + 
  nyse_options_deepfeed_xdp_v1_3_a.reserved_2.size

-- Display: Outright Market Depth Buy Message
nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_buy_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Market Depth Buy Message
nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_buy_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_deepfeed_xdp_v1_3_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_ns = nyse_options_deepfeed_xdp_v1_3_a.source_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_deepfeed_xdp_v1_3_a.series_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_deepfeed_xdp_v1_3_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- First Level Price: 4 Byte Signed Fixed Width Integer
  index, first_level_price = nyse_options_deepfeed_xdp_v1_3_a.first_level_price.dissect(buffer, index, packet, parent)

  -- Second Level Price: 4 Byte Signed Fixed Width Integer
  index, second_level_price = nyse_options_deepfeed_xdp_v1_3_a.second_level_price.dissect(buffer, index, packet, parent)

  -- Third Level Price: 4 Byte Signed Fixed Width Integer
  index, third_level_price = nyse_options_deepfeed_xdp_v1_3_a.third_level_price.dissect(buffer, index, packet, parent)

  -- First Level Volume: 2 Byte Unsigned Fixed Width Integer
  index, first_level_volume = nyse_options_deepfeed_xdp_v1_3_a.first_level_volume.dissect(buffer, index, packet, parent)

  -- Second Level Volume: 2 Byte Unsigned Fixed Width Integer
  index, second_level_volume = nyse_options_deepfeed_xdp_v1_3_a.second_level_volume.dissect(buffer, index, packet, parent)

  -- Third Level Volume: 2 Byte Unsigned Fixed Width Integer
  index, third_level_volume = nyse_options_deepfeed_xdp_v1_3_a.third_level_volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nyse_options_deepfeed_xdp_v1_3_a.quote_condition.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_options_deepfeed_xdp_v1_3_a.reserved_1.dissect(buffer, index, packet, parent)

  -- First Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, first_level_customer_volume = nyse_options_deepfeed_xdp_v1_3_a.first_level_customer_volume.dissect(buffer, index, packet, parent)

  -- Second Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, second_level_customer_volume = nyse_options_deepfeed_xdp_v1_3_a.second_level_customer_volume.dissect(buffer, index, packet, parent)

  -- Third Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, third_level_customer_volume = nyse_options_deepfeed_xdp_v1_3_a.third_level_customer_volume.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_deepfeed_xdp_v1_3_a.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Market Depth Buy Message
nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_buy_message.dissect = function(buffer, offset, packet, parent)
  if show.outright_market_depth_buy_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.outright_market_depth_buy_message, buffer(offset, 0))
    local index = nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_buy_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_buy_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_buy_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_options_deepfeed_xdp_v1_3_a.payload = {}

-- Size: Payload
nyse_options_deepfeed_xdp_v1_3_a.payload.size = function(buffer, offset, message_type)
  -- Size of Outright Market Depth Buy Message
  if message_type == 403 then
    return nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_buy_message.size
  end
  -- Size of Outright Market Depth Sell Message
  if message_type == 405 then
    return nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_sell_message.size
  end
  -- Size of Underlying Status Message
  if message_type == 419 then
    return nyse_options_deepfeed_xdp_v1_3_a.underlying_status_message.size
  end
  -- Size of Outright Series Status Message
  if message_type == 421 then
    return nyse_options_deepfeed_xdp_v1_3_a.outright_series_status_message.size
  end
  -- Size of Refresh Outright Market Depth Buy Message
  if message_type == 503 then
    return nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_buy_message.size
  end
  -- Size of Refresh Outright Market Depth Sell Message
  if message_type == 505 then
    return nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_sell_message.size
  end
  -- Size of Underlying Index Mapping Message
  if message_type == 435 then
    return nyse_options_deepfeed_xdp_v1_3_a.underlying_index_mapping_message.size
  end
  -- Size of Series Index Mapping Message
  if message_type == 437 then
    return nyse_options_deepfeed_xdp_v1_3_a.series_index_mapping_message.size
  end
  -- Size of Stream Id Message
  if message_type == 455 then
    return nyse_options_deepfeed_xdp_v1_3_a.stream_id_message.size
  end
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_options_deepfeed_xdp_v1_3_a.sequence_number_reset_message.size
  end

  return 0
end

-- Display: Payload
nyse_options_deepfeed_xdp_v1_3_a.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_options_deepfeed_xdp_v1_3_a.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Outright Market Depth Buy Message
  if message_type == 403 then
    return nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_buy_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Outright Market Depth Sell Message
  if message_type == 405 then
    return nyse_options_deepfeed_xdp_v1_3_a.outright_market_depth_sell_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Status Message
  if message_type == 419 then
    return nyse_options_deepfeed_xdp_v1_3_a.underlying_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Outright Series Status Message
  if message_type == 421 then
    return nyse_options_deepfeed_xdp_v1_3_a.outright_series_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Outright Market Depth Buy Message
  if message_type == 503 then
    return nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_buy_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Outright Market Depth Sell Message
  if message_type == 505 then
    return nyse_options_deepfeed_xdp_v1_3_a.refresh_outright_market_depth_sell_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Index Mapping Message
  if message_type == 435 then
    return nyse_options_deepfeed_xdp_v1_3_a.underlying_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Index Mapping Message
  if message_type == 437 then
    return nyse_options_deepfeed_xdp_v1_3_a.series_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Id Message
  if message_type == 455 then
    return nyse_options_deepfeed_xdp_v1_3_a.stream_id_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_options_deepfeed_xdp_v1_3_a.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nyse_options_deepfeed_xdp_v1_3_a.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_options_deepfeed_xdp_v1_3_a.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_options_deepfeed_xdp_v1_3_a.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_options_deepfeed_xdp_v1_3_a.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.payload, range, display)

  return nyse_options_deepfeed_xdp_v1_3_a.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nyse_options_deepfeed_xdp_v1_3_a.message_type = {}

-- Size: Message Type
nyse_options_deepfeed_xdp_v1_3_a.message_type.size = 2

-- Display: Message Type
nyse_options_deepfeed_xdp_v1_3_a.message_type.display = function(value)
  if value == 403 then
    return "Message Type: Outright Market Depth Buy Message (403)"
  end
  if value == 405 then
    return "Message Type: Outright Market Depth Sell Message (405)"
  end
  if value == 419 then
    return "Message Type: Underlying Status Message (419)"
  end
  if value == 421 then
    return "Message Type: Outright Series Status Message (421)"
  end
  if value == 503 then
    return "Message Type: Refresh Outright Market Depth Buy Message (503)"
  end
  if value == 505 then
    return "Message Type: Refresh Outright Market Depth Sell Message (505)"
  end
  if value == 435 then
    return "Message Type: Underlying Index Mapping Message (435)"
  end
  if value == 437 then
    return "Message Type: Series Index Mapping Message (437)"
  end
  if value == 455 then
    return "Message Type: Stream Id Message (455)"
  end
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_options_deepfeed_xdp_v1_3_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_options_deepfeed_xdp_v1_3_a.message_size = {}

-- Size: Message Size
nyse_options_deepfeed_xdp_v1_3_a.message_size.size = 2

-- Display: Message Size
nyse_options_deepfeed_xdp_v1_3_a.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_options_deepfeed_xdp_v1_3_a.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Header
nyse_options_deepfeed_xdp_v1_3_a.message_header = {}

-- Size: Message Header
nyse_options_deepfeed_xdp_v1_3_a.message_header.size =
  nyse_options_deepfeed_xdp_v1_3_a.message_size.size + 
  nyse_options_deepfeed_xdp_v1_3_a.message_type.size

-- Display: Message Header
nyse_options_deepfeed_xdp_v1_3_a.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_options_deepfeed_xdp_v1_3_a.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_options_deepfeed_xdp_v1_3_a.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, message_type = nyse_options_deepfeed_xdp_v1_3_a.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_options_deepfeed_xdp_v1_3_a.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.message_header, buffer(offset, 0))
    local index = nyse_options_deepfeed_xdp_v1_3_a.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_deepfeed_xdp_v1_3_a.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_deepfeed_xdp_v1_3_a.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_options_deepfeed_xdp_v1_3_a.message = {}

-- Calculate size of: Message
nyse_options_deepfeed_xdp_v1_3_a.message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_options_deepfeed_xdp_v1_3_a.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 2):le_uint()
  index = index + nyse_options_deepfeed_xdp_v1_3_a.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nyse_options_deepfeed_xdp_v1_3_a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_options_deepfeed_xdp_v1_3_a.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_options_deepfeed_xdp_v1_3_a.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 10 branches
  index = nyse_options_deepfeed_xdp_v1_3_a.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_options_deepfeed_xdp_v1_3_a.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = nyse_options_deepfeed_xdp_v1_3_a.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_options_deepfeed_xdp_v1_3_a.message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.message, range, display)
  end

  return nyse_options_deepfeed_xdp_v1_3_a.message.fields(buffer, offset, packet, parent)
end

-- Nanoseconds
nyse_options_deepfeed_xdp_v1_3_a.nanoseconds = {}

-- Size: Nanoseconds
nyse_options_deepfeed_xdp_v1_3_a.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_options_deepfeed_xdp_v1_3_a.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_options_deepfeed_xdp_v1_3_a.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Timestamp
nyse_options_deepfeed_xdp_v1_3_a.timestamp = {}

-- Size: Timestamp
nyse_options_deepfeed_xdp_v1_3_a.timestamp.size = 4

-- Display: Timestamp
nyse_options_deepfeed_xdp_v1_3_a.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_options_deepfeed_xdp_v1_3_a.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_options_deepfeed_xdp_v1_3_a.sequence_number = {}

-- Size: Sequence Number
nyse_options_deepfeed_xdp_v1_3_a.sequence_number.size = 4

-- Display: Sequence Number
nyse_options_deepfeed_xdp_v1_3_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_options_deepfeed_xdp_v1_3_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message Count
nyse_options_deepfeed_xdp_v1_3_a.message_count = {}

-- Size: Message Count
nyse_options_deepfeed_xdp_v1_3_a.message_count.size = 1

-- Display: Message Count
nyse_options_deepfeed_xdp_v1_3_a.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_options_deepfeed_xdp_v1_3_a.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.message_count, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_options_deepfeed_xdp_v1_3_a.delivery_flag = {}

-- Size: Delivery Flag
nyse_options_deepfeed_xdp_v1_3_a.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_options_deepfeed_xdp_v1_3_a.delivery_flag.display = function(value)
  if value == 1 then
    return "Delivery Flag: Heartbeat (1)"
  end
  if value == 10 then
    return "Delivery Flag: Xdp Failover (10)"
  end
  if value == 11 then
    return "Delivery Flag: Original Message (11)"
  end
  if value == 12 then
    return "Delivery Flag: Sequence Number Reset Message (12)"
  end
  if value == 13 then
    return "Delivery Flag: One Retransmission Packet (13)"
  end
  if value == 15 then
    return "Delivery Flag: Retransmission Sequence Message (15)"
  end
  if value == 17 then
    return "Delivery Flag: One Refresh Packet (17)"
  end
  if value == 18 then
    return "Delivery Flag: Refresh Sequence Start (18)"
  end
  if value == 19 then
    return "Delivery Flag: Refresh Sequence Message (19)"
  end
  if value == 20 then
    return "Delivery Flag: Refresh Sequence End (20)"
  end
  if value == 21 then
    return "Delivery Flag: Message Unavailable (21)"
  end

  return "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
nyse_options_deepfeed_xdp_v1_3_a.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Packet Size
nyse_options_deepfeed_xdp_v1_3_a.packet_size = {}

-- Size: Packet Size
nyse_options_deepfeed_xdp_v1_3_a.packet_size.size = 2

-- Display: Packet Size
nyse_options_deepfeed_xdp_v1_3_a.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_options_deepfeed_xdp_v1_3_a.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_deepfeed_xdp_v1_3_a.packet_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_deepfeed_xdp_v1_3_a.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Packet Header
nyse_options_deepfeed_xdp_v1_3_a.packet_header = {}

-- Size: Packet Header
nyse_options_deepfeed_xdp_v1_3_a.packet_header.size =
  nyse_options_deepfeed_xdp_v1_3_a.packet_size.size + 
  nyse_options_deepfeed_xdp_v1_3_a.delivery_flag.size + 
  nyse_options_deepfeed_xdp_v1_3_a.message_count.size + 
  nyse_options_deepfeed_xdp_v1_3_a.sequence_number.size + 
  nyse_options_deepfeed_xdp_v1_3_a.timestamp.size + 
  nyse_options_deepfeed_xdp_v1_3_a.nanoseconds.size

-- Display: Packet Header
nyse_options_deepfeed_xdp_v1_3_a.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_options_deepfeed_xdp_v1_3_a.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_options_deepfeed_xdp_v1_3_a.packet_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_options_deepfeed_xdp_v1_3_a.delivery_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_options_deepfeed_xdp_v1_3_a.message_count.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_options_deepfeed_xdp_v1_3_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_options_deepfeed_xdp_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_options_deepfeed_xdp_v1_3_a.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_options_deepfeed_xdp_v1_3_a.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a.fields.packet_header, buffer(offset, 0))
    local index = nyse_options_deepfeed_xdp_v1_3_a.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_deepfeed_xdp_v1_3_a.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_deepfeed_xdp_v1_3_a.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_options_deepfeed_xdp_v1_3_a.packet = {}

-- Dissect Packet
nyse_options_deepfeed_xdp_v1_3_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_options_deepfeed_xdp_v1_3_a.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = nyse_options_deepfeed_xdp_v1_3_a.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_options_deepfeed_xdp_v1_3_a.init()
end

-- Dissector for Nyse Options DeepFeed Xdp 1.3.a
function omi_nyse_options_deepfeed_xdp_v1_3_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_options_deepfeed_xdp_v1_3_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_options_deepfeed_xdp_v1_3_a, buffer(), omi_nyse_options_deepfeed_xdp_v1_3_a.description, "("..buffer:len().." Bytes)")
  return nyse_options_deepfeed_xdp_v1_3_a.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_options_deepfeed_xdp_v1_3_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_options_deepfeed_xdp_v1_3_a.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Options DeepFeed Xdp 1.3.a
local function omi_nyse_options_deepfeed_xdp_v1_3_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_options_deepfeed_xdp_v1_3_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_options_deepfeed_xdp_v1_3_a
  omi_nyse_options_deepfeed_xdp_v1_3_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Options DeepFeed Xdp 1.3.a
omi_nyse_options_deepfeed_xdp_v1_3_a:register_heuristic("udp", omi_nyse_options_deepfeed_xdp_v1_3_a_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.3.a
--   Date: Wednesday, February 28, 2018
--   Specification: XDP_Options_Client_Specification_v1.3a.pdf
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
