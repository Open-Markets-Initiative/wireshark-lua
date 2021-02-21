-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Futures Settlements Sbe 7.0 Protocol
local cme_futures_settlements_sbe_v7_0 = Proto("Cme.Futures.Settlements.Sbe.v7.0.Lua", "Cme Futures Settlements Sbe 7.0")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Futures Settlements Sbe 7.0 Fields
cme_futures_settlements_sbe_v7_0.fields.actual = ProtoField.new("Actual", "cme.futures.settlements.sbe.v7.0.actual", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
cme_futures_settlements_sbe_v7_0.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.futures.settlements.sbe.v7.0.binarypacketheader", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.block_length = ProtoField.new("Block Length", "cme.futures.settlements.sbe.v7.0.blocklength", ftypes.UINT16)
cme_futures_settlements_sbe_v7_0.fields.cabinet = ProtoField.new("Cabinet", "cme.futures.settlements.sbe.v7.0.cabinet", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x10")
cme_futures_settlements_sbe_v7_0.fields.cleared_volume = ProtoField.new("Cleared Volume", "cme.futures.settlements.sbe.v7.0.clearedvolume", ftypes.UINT32)
cme_futures_settlements_sbe_v7_0.fields.clearing_product_code = ProtoField.new("Clearing Product Code", "cme.futures.settlements.sbe.v7.0.clearingproductcode", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.day = ProtoField.new("Day", "cme.futures.settlements.sbe.v7.0.day", ftypes.UINT8)
cme_futures_settlements_sbe_v7_0.fields.exponent = ProtoField.new("Exponent", "cme.futures.settlements.sbe.v7.0.exponent", ftypes.INT8)
cme_futures_settlements_sbe_v7_0.fields.final_daily = ProtoField.new("Final Daily", "cme.futures.settlements.sbe.v7.0.finaldaily", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
cme_futures_settlements_sbe_v7_0.fields.formatted_last_px = ProtoField.new("Formatted Last Px", "cme.futures.settlements.sbe.v7.0.formattedlastpx", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.group_size = ProtoField.new("Group Size", "cme.futures.settlements.sbe.v7.0.groupsize", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.high_px = ProtoField.new("High Px", "cme.futures.settlements.sbe.v7.0.highpx", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.high_px_ind = ProtoField.new("High Px Ind", "cme.futures.settlements.sbe.v7.0.highpxind", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.instrument_guid = ProtoField.new("Instrument Guid", "cme.futures.settlements.sbe.v7.0.instrumentguid", ftypes.UINT64)
cme_futures_settlements_sbe_v7_0.fields.intraday = ProtoField.new("Intraday", "cme.futures.settlements.sbe.v7.0.intraday", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
cme_futures_settlements_sbe_v7_0.fields.low_px = ProtoField.new("Low Px", "cme.futures.settlements.sbe.v7.0.lowpx", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.low_px_ind = ProtoField.new("Low Px Ind", "cme.futures.settlements.sbe.v7.0.lowpxind", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_high_low_group = ProtoField.new("M D Incremental Refresh High Low Group", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshhighlowgroup", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_high_low_groups = ProtoField.new("M D Incremental Refresh High Low Groups", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshhighlowgroups", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_settle_group = ProtoField.new("M D Incremental Refresh Settle Group", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshsettlegroup", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_settle_groups = ProtoField.new("M D Incremental Refresh Settle Groups", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshsettlegroups", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_voi_group = ProtoField.new("M D Incremental Refresh Voi Group", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshvoigroup", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_voi_groups = ProtoField.new("M D Incremental Refresh Voi Groups", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshvoigroups", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.mantissa = ProtoField.new("Mantissa", "cme.futures.settlements.sbe.v7.0.mantissa", ftypes.INT64)
cme_futures_settlements_sbe_v7_0.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "cme.futures.settlements.sbe.v7.0.maturitymonthyear", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.md_entry_px = ProtoField.new("Md Entry Px", "cme.futures.settlements.sbe.v7.0.mdentrypx", ftypes.INT64)
cme_futures_settlements_sbe_v7_0.fields.md_entry_type = ProtoField.new("Md Entry Type", "cme.futures.settlements.sbe.v7.0.mdentrytype", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.md_incremental_refresh_high_low_403 = ProtoField.new("Md Incremental Refresh High Low 403", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshhighlow403", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.md_incremental_refresh_settle_401 = ProtoField.new("Md Incremental Refresh Settle 401", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshsettle401", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.md_incremental_refresh_vo_i_402 = ProtoField.new("Md Incremental Refresh Vo I 402", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshvoi402", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.md_statistic_desc = ProtoField.new("Md Statistic Desc", "cme.futures.settlements.sbe.v7.0.mdstatisticdesc", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.md_update_action = ProtoField.new("Md Update Action", "cme.futures.settlements.sbe.v7.0.mdupdateaction", ftypes.UINT8)
cme_futures_settlements_sbe_v7_0.fields.message = ProtoField.new("Message", "cme.futures.settlements.sbe.v7.0.message", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.message_header = ProtoField.new("Message Header", "cme.futures.settlements.sbe.v7.0.messageheader", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cme.futures.settlements.sbe.v7.0.messagesequencenumber", ftypes.UINT32)
cme_futures_settlements_sbe_v7_0.fields.message_size = ProtoField.new("Message Size", "cme.futures.settlements.sbe.v7.0.messagesize", ftypes.UINT16)
cme_futures_settlements_sbe_v7_0.fields.month = ProtoField.new("Month", "cme.futures.settlements.sbe.v7.0.month", ftypes.UINT8)
cme_futures_settlements_sbe_v7_0.fields.null_value = ProtoField.new("Null Value", "cme.futures.settlements.sbe.v7.0.nullvalue", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
cme_futures_settlements_sbe_v7_0.fields.num_in_group = ProtoField.new("Num In Group", "cme.futures.settlements.sbe.v7.0.numingroup", ftypes.UINT8)
cme_futures_settlements_sbe_v7_0.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "cme.futures.settlements.sbe.v7.0.openclosesettlflag", ftypes.UINT8)
cme_futures_settlements_sbe_v7_0.fields.open_interest_qty = ProtoField.new("Open Interest Qty", "cme.futures.settlements.sbe.v7.0.openinterestqty", ftypes.UINT32)
cme_futures_settlements_sbe_v7_0.fields.packet = ProtoField.new("Packet", "cme.futures.settlements.sbe.v7.0.packet", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.payload = ProtoField.new("Payload", "cme.futures.settlements.sbe.v7.0.payload", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.product_guid = ProtoField.new("Product Guid", "cme.futures.settlements.sbe.v7.0.productguid", ftypes.UINT64)
cme_futures_settlements_sbe_v7_0.fields.put_or_call = ProtoField.new("Put Or Call", "cme.futures.settlements.sbe.v7.0.putorcall", ftypes.UINT8)
cme_futures_settlements_sbe_v7_0.fields.reserved_bits = ProtoField.new("Reserved Bits", "cme.futures.settlements.sbe.v7.0.reservedbits", ftypes.UINT8, nil, base.DEC, "0x60")
cme_futures_settlements_sbe_v7_0.fields.rounded = ProtoField.new("Rounded", "cme.futures.settlements.sbe.v7.0.rounded", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
cme_futures_settlements_sbe_v7_0.fields.schema_id = ProtoField.new("Schema Id", "cme.futures.settlements.sbe.v7.0.schemaid", ftypes.UINT16)
cme_futures_settlements_sbe_v7_0.fields.security_exchange = ProtoField.new("Security Exchange", "cme.futures.settlements.sbe.v7.0.securityexchange", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.security_id = ProtoField.new("Security Id", "cme.futures.settlements.sbe.v7.0.securityid", ftypes.UINT32)
cme_futures_settlements_sbe_v7_0.fields.security_type = ProtoField.new("Security Type", "cme.futures.settlements.sbe.v7.0.securitytype", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.sending_time = ProtoField.new("Sending Time", "cme.futures.settlements.sbe.v7.0.sendingtime", ftypes.UINT64)
cme_futures_settlements_sbe_v7_0.fields.settl_price_type = ProtoField.new("Settl Price Type", "cme.futures.settlements.sbe.v7.0.settlpricetype", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.strike_price = ProtoField.new("Strike Price", "cme.futures.settlements.sbe.v7.0.strikeprice", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.symbol = ProtoField.new("Symbol", "cme.futures.settlements.sbe.v7.0.symbol", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.template_id = ProtoField.new("Template Id", "cme.futures.settlements.sbe.v7.0.templateid", ftypes.UINT16)
cme_futures_settlements_sbe_v7_0.fields.trading_reference_date = ProtoField.new("Trading Reference Date", "cme.futures.settlements.sbe.v7.0.tradingreferencedate", ftypes.UINT16)
cme_futures_settlements_sbe_v7_0.fields.transact_time = ProtoField.new("Transact Time", "cme.futures.settlements.sbe.v7.0.transacttime", ftypes.UINT64)
cme_futures_settlements_sbe_v7_0.fields.underlying_clearing_product_code = ProtoField.new("Underlying Clearing Product Code", "cme.futures.settlements.sbe.v7.0.underlyingclearingproductcode", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.underlying_maturity_month_year = ProtoField.new("Underlying Maturity Month Year", "cme.futures.settlements.sbe.v7.0.underlyingmaturitymonthyear", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.underlying_product_guid = ProtoField.new("Underlying Product Guid", "cme.futures.settlements.sbe.v7.0.underlyingproductguid", ftypes.UINT64)
cme_futures_settlements_sbe_v7_0.fields.underlying_security_exchange = ProtoField.new("Underlying Security Exchange", "cme.futures.settlements.sbe.v7.0.underlyingsecurityexchange", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.underlying_security_type = ProtoField.new("Underlying Security Type", "cme.futures.settlements.sbe.v7.0.underlyingsecuritytype", ftypes.STRING)
cme_futures_settlements_sbe_v7_0.fields.version = ProtoField.new("Version", "cme.futures.settlements.sbe.v7.0.version", ftypes.UINT16)
cme_futures_settlements_sbe_v7_0.fields.week = ProtoField.new("Week", "cme.futures.settlements.sbe.v7.0.week", ftypes.UINT8)
cme_futures_settlements_sbe_v7_0.fields.year = ProtoField.new("Year", "cme.futures.settlements.sbe.v7.0.year", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cme Futures Settlements Sbe 7.0 Element Dissection Options
show.binary_packet_header = true
show.formatted_last_px = true
show.group_size = true
show.high_px = true
show.low_px = true
show.m_d_incremental_refresh_high_low_group = true
show.m_d_incremental_refresh_high_low_groups = true
show.m_d_incremental_refresh_settle_group = true
show.m_d_incremental_refresh_settle_groups = true
show.m_d_incremental_refresh_voi_group = true
show.m_d_incremental_refresh_voi_groups = true
show.maturity_month_year = true
show.md_incremental_refresh_high_low_403 = true
show.md_incremental_refresh_settle_401 = true
show.md_incremental_refresh_vo_i_402 = true
show.message = true
show.message_header = true
show.packet = true
show.settl_price_type = true
show.strike_price = true
show.underlying_maturity_month_year = true
show.payload = false

-- Register Cme Futures Settlements Sbe 7.0 Show Options
cme_futures_settlements_sbe_v7_0.prefs.show_binary_packet_header = Pref.bool("Show Binary Packet Header", show.binary_packet_header, "Parse and add Binary Packet Header to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_formatted_last_px = Pref.bool("Show Formatted Last Px", show.formatted_last_px, "Parse and add Formatted Last Px to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_high_px = Pref.bool("Show High Px", show.high_px, "Parse and add High Px to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_low_px = Pref.bool("Show Low Px", show.low_px, "Parse and add Low Px to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_high_low_group = Pref.bool("Show M D Incremental Refresh High Low Group", show.m_d_incremental_refresh_high_low_group, "Parse and add M D Incremental Refresh High Low Group to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_high_low_groups = Pref.bool("Show M D Incremental Refresh High Low Groups", show.m_d_incremental_refresh_high_low_groups, "Parse and add M D Incremental Refresh High Low Groups to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_settle_group = Pref.bool("Show M D Incremental Refresh Settle Group", show.m_d_incremental_refresh_settle_group, "Parse and add M D Incremental Refresh Settle Group to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_settle_groups = Pref.bool("Show M D Incremental Refresh Settle Groups", show.m_d_incremental_refresh_settle_groups, "Parse and add M D Incremental Refresh Settle Groups to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_voi_group = Pref.bool("Show M D Incremental Refresh Voi Group", show.m_d_incremental_refresh_voi_group, "Parse and add M D Incremental Refresh Voi Group to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_voi_groups = Pref.bool("Show M D Incremental Refresh Voi Groups", show.m_d_incremental_refresh_voi_groups, "Parse and add M D Incremental Refresh Voi Groups to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_maturity_month_year = Pref.bool("Show Maturity Month Year", show.maturity_month_year, "Parse and add Maturity Month Year to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_high_low_403 = Pref.bool("Show Md Incremental Refresh High Low 403", show.md_incremental_refresh_high_low_403, "Parse and add Md Incremental Refresh High Low 403 to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_settle_401 = Pref.bool("Show Md Incremental Refresh Settle 401", show.md_incremental_refresh_settle_401, "Parse and add Md Incremental Refresh Settle 401 to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_vo_i_402 = Pref.bool("Show Md Incremental Refresh Vo I 402", show.md_incremental_refresh_vo_i_402, "Parse and add Md Incremental Refresh Vo I 402 to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_settl_price_type = Pref.bool("Show Settl Price Type", show.settl_price_type, "Parse and add Settl Price Type to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_strike_price = Pref.bool("Show Strike Price", show.strike_price, "Parse and add Strike Price to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_underlying_maturity_month_year = Pref.bool("Show Underlying Maturity Month Year", show.underlying_maturity_month_year, "Parse and add Underlying Maturity Month Year to protocol tree")
cme_futures_settlements_sbe_v7_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cme_futures_settlements_sbe_v7_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.binary_packet_header ~= cme_futures_settlements_sbe_v7_0.prefs.show_binary_packet_header then
    show.binary_packet_header = cme_futures_settlements_sbe_v7_0.prefs.show_binary_packet_header
    changed = true
  end
  if show.formatted_last_px ~= cme_futures_settlements_sbe_v7_0.prefs.show_formatted_last_px then
    show.formatted_last_px = cme_futures_settlements_sbe_v7_0.prefs.show_formatted_last_px
    changed = true
  end
  if show.group_size ~= cme_futures_settlements_sbe_v7_0.prefs.show_group_size then
    show.group_size = cme_futures_settlements_sbe_v7_0.prefs.show_group_size
    changed = true
  end
  if show.high_px ~= cme_futures_settlements_sbe_v7_0.prefs.show_high_px then
    show.high_px = cme_futures_settlements_sbe_v7_0.prefs.show_high_px
    changed = true
  end
  if show.low_px ~= cme_futures_settlements_sbe_v7_0.prefs.show_low_px then
    show.low_px = cme_futures_settlements_sbe_v7_0.prefs.show_low_px
    changed = true
  end
  if show.m_d_incremental_refresh_high_low_group ~= cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_high_low_group then
    show.m_d_incremental_refresh_high_low_group = cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_high_low_group
    changed = true
  end
  if show.m_d_incremental_refresh_high_low_groups ~= cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_high_low_groups then
    show.m_d_incremental_refresh_high_low_groups = cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_high_low_groups
    changed = true
  end
  if show.m_d_incremental_refresh_settle_group ~= cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_settle_group then
    show.m_d_incremental_refresh_settle_group = cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_settle_group
    changed = true
  end
  if show.m_d_incremental_refresh_settle_groups ~= cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_settle_groups then
    show.m_d_incremental_refresh_settle_groups = cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_settle_groups
    changed = true
  end
  if show.m_d_incremental_refresh_voi_group ~= cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_voi_group then
    show.m_d_incremental_refresh_voi_group = cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_voi_group
    changed = true
  end
  if show.m_d_incremental_refresh_voi_groups ~= cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_voi_groups then
    show.m_d_incremental_refresh_voi_groups = cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_voi_groups
    changed = true
  end
  if show.maturity_month_year ~= cme_futures_settlements_sbe_v7_0.prefs.show_maturity_month_year then
    show.maturity_month_year = cme_futures_settlements_sbe_v7_0.prefs.show_maturity_month_year
    changed = true
  end
  if show.md_incremental_refresh_high_low_403 ~= cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_high_low_403 then
    show.md_incremental_refresh_high_low_403 = cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_high_low_403
    changed = true
  end
  if show.md_incremental_refresh_settle_401 ~= cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_settle_401 then
    show.md_incremental_refresh_settle_401 = cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_settle_401
    changed = true
  end
  if show.md_incremental_refresh_vo_i_402 ~= cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_vo_i_402 then
    show.md_incremental_refresh_vo_i_402 = cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_vo_i_402
    changed = true
  end
  if show.message ~= cme_futures_settlements_sbe_v7_0.prefs.show_message then
    show.message = cme_futures_settlements_sbe_v7_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= cme_futures_settlements_sbe_v7_0.prefs.show_message_header then
    show.message_header = cme_futures_settlements_sbe_v7_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= cme_futures_settlements_sbe_v7_0.prefs.show_packet then
    show.packet = cme_futures_settlements_sbe_v7_0.prefs.show_packet
    changed = true
  end
  if show.settl_price_type ~= cme_futures_settlements_sbe_v7_0.prefs.show_settl_price_type then
    show.settl_price_type = cme_futures_settlements_sbe_v7_0.prefs.show_settl_price_type
    changed = true
  end
  if show.strike_price ~= cme_futures_settlements_sbe_v7_0.prefs.show_strike_price then
    show.strike_price = cme_futures_settlements_sbe_v7_0.prefs.show_strike_price
    changed = true
  end
  if show.underlying_maturity_month_year ~= cme_futures_settlements_sbe_v7_0.prefs.show_underlying_maturity_month_year then
    show.underlying_maturity_month_year = cme_futures_settlements_sbe_v7_0.prefs.show_underlying_maturity_month_year
    changed = true
  end
  if show.payload ~= cme_futures_settlements_sbe_v7_0.prefs.show_payload then
    show.payload = cme_futures_settlements_sbe_v7_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cme Futures Settlements Sbe 7.0
-----------------------------------------------------------------------

-- Size: Trading Reference Date
size_of.trading_reference_date = 2

-- Display: Trading Reference Date
display.trading_reference_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trading Reference Date: No Value ("..value..")"
  end

  return "Trading Reference Date: "..value
end

-- Dissect: Trading Reference Date
dissect.trading_reference_date = function(buffer, offset, packet, parent)
  local length = size_of.trading_reference_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_reference_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.trading_reference_date, range, value, display)

  return offset + length, value
end

-- Size: High Px Ind
size_of.high_px_ind = 1

-- Display: High Px Ind
display.high_px_ind = function(value)
  if value == "A" then
    return "High Px Ind: Ask (A)"
  end
  if value == "B" then
    return "High Px Ind: Bid (B)"
  end
  if value == "T" then
    return "High Px Ind: Trade (T)"
  end

  return "High Px Ind: Unknown("..value..")"
end

-- Dissect: High Px Ind
dissect.high_px_ind = function(buffer, offset, packet, parent)
  local length = size_of.high_px_ind
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.high_px_ind(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.high_px_ind, range, value, display)

  return offset + length, value
end

-- Size: Exponent
size_of.exponent = 1

-- Display: Exponent
display.exponent = function(value)
  -- Check if field has value
  if value == -128 then
    return "Exponent: No Value ("..value..")"
  end

  return "Exponent: "..value
end

-- Dissect: Exponent
dissect.exponent = function(buffer, offset, packet, parent)
  local length = size_of.exponent
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.exponent(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.exponent, range, value, display)

  return offset + length, value
end

-- Size: Mantissa
size_of.mantissa = 8

-- Display: Mantissa
display.mantissa = function(value)
  -- Check if field has value
  if value == -9223372036854775808 then
    return "Mantissa: No Value ("..value..")"
  end

  return "Mantissa: "..value
end

-- Dissect: Mantissa
dissect.mantissa = function(buffer, offset, packet, parent)
  local length = size_of.mantissa
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.mantissa(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.mantissa, range, value, display)

  return offset + length, value
end

-- Calculate size of: High Px
size_of.high_px = function(buffer, offset)
  local index = 0

  index = index + size_of.mantissa

  index = index + size_of.exponent

  return index
end

-- Display: High Px
display.high_px = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: High Px
dissect.high_px_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = dissect.exponent(buffer, index, packet, parent)

  return index
end

-- Dissect: High Px
dissect.high_px = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.high_px then
    local length = size_of.high_px(buffer, offset)
    local range = buffer(offset, length)
    local display = display.high_px(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.high_px, range, display)
  end

  return dissect.high_px_fields(buffer, offset, packet, parent)
end

-- Size: Low Px Ind
size_of.low_px_ind = 1

-- Display: Low Px Ind
display.low_px_ind = function(value)
  if value == "A" then
    return "Low Px Ind: Ask (A)"
  end
  if value == "B" then
    return "Low Px Ind: Bid (B)"
  end
  if value == "T" then
    return "Low Px Ind: Trade (T)"
  end

  return "Low Px Ind: Unknown("..value..")"
end

-- Dissect: Low Px Ind
dissect.low_px_ind = function(buffer, offset, packet, parent)
  local length = size_of.low_px_ind
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.low_px_ind(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.low_px_ind, range, value, display)

  return offset + length, value
end

-- Calculate size of: Low Px
size_of.low_px = function(buffer, offset)
  local index = 0

  index = index + size_of.mantissa

  index = index + size_of.exponent

  return index
end

-- Display: Low Px
display.low_px = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Low Px
dissect.low_px_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = dissect.exponent(buffer, index, packet, parent)

  return index
end

-- Dissect: Low Px
dissect.low_px = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.low_px then
    local length = size_of.low_px(buffer, offset)
    local range = buffer(offset, length)
    local display = display.low_px(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.low_px, range, display)
  end

  return dissect.low_px_fields(buffer, offset, packet, parent)
end

-- Size: Security Id
size_of.security_id = 4

-- Display: Security Id
display.security_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Security Id: No Value ("..value..")"
  end

  return "Security Id: "..value
end

-- Dissect: Security Id
dissect.security_id = function(buffer, offset, packet, parent)
  local length = size_of.security_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Size: Instrument Guid
size_of.instrument_guid = 8

-- Display: Instrument Guid
display.instrument_guid = function(value)
  -- Check if field has value
  if value == 18446744073709551615 then
    return "Instrument Guid: No Value ("..value..")"
  end

  return "Instrument Guid: "..value
end

-- Dissect: Instrument Guid
dissect.instrument_guid = function(buffer, offset, packet, parent)
  local length = size_of.instrument_guid
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.instrument_guid(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.instrument_guid, range, value, display)

  return offset + length, value
end

-- Size: Symbol
size_of.symbol = 20

-- Display: Symbol
display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Week
size_of.week = 1

-- Display: Week
display.week = function(value)
  -- Check if field has value
  if value == 255 then
    return "Week: No Value ("..value..")"
  end

  return "Week: "..value
end

-- Dissect: Week
dissect.week = function(buffer, offset, packet, parent)
  local length = size_of.week
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.week(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.week, range, value, display)

  return offset + length, value
end

-- Size: Day
size_of.day = 1

-- Display: Day
display.day = function(value)
  -- Check if field has value
  if value == 255 then
    return "Day: No Value ("..value..")"
  end

  return "Day: "..value
end

-- Dissect: Day
dissect.day = function(buffer, offset, packet, parent)
  local length = size_of.day
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.day(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.day, range, value, display)

  return offset + length, value
end

-- Size: Month
size_of.month = 1

-- Display: Month
display.month = function(value)
  -- Check if field has value
  if value == 255 then
    return "Month: No Value ("..value..")"
  end

  return "Month: "..value
end

-- Dissect: Month
dissect.month = function(buffer, offset, packet, parent)
  local length = size_of.month
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.month(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.month, range, value, display)

  return offset + length, value
end

-- Size: Year
size_of.year = 2

-- Display: Year
display.year = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Year: No Value ("..value..")"
  end

  return "Year: "..value
end

-- Dissect: Year
dissect.year = function(buffer, offset, packet, parent)
  local length = size_of.year
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.year(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.year, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlying Maturity Month Year
size_of.underlying_maturity_month_year = function(buffer, offset)
  local index = 0

  index = index + size_of.year

  index = index + size_of.month

  index = index + size_of.day

  index = index + size_of.week

  return index
end

-- Display: Underlying Maturity Month Year
display.underlying_maturity_month_year = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Maturity Month Year
dissect.underlying_maturity_month_year_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer Nullable
  index, year = dissect.year(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer Nullable
  index, month = dissect.month(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer Nullable
  index, day = dissect.day(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer Nullable
  index, week = dissect.week(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Maturity Month Year
dissect.underlying_maturity_month_year = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlying_maturity_month_year then
    local length = size_of.underlying_maturity_month_year(buffer, offset)
    local range = buffer(offset, length)
    local display = display.underlying_maturity_month_year(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.underlying_maturity_month_year, range, display)
  end

  return dissect.underlying_maturity_month_year_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Security Exchange
size_of.underlying_security_exchange = 8

-- Display: Underlying Security Exchange
display.underlying_security_exchange = function(value)
  return "Underlying Security Exchange: "..value
end

-- Dissect: Underlying Security Exchange
dissect.underlying_security_exchange = function(buffer, offset, packet, parent)
  local length = size_of.underlying_security_exchange
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_security_exchange(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.underlying_security_exchange, range, value, display)

  return offset + length, value
end

-- Size: Underlying Security Type
size_of.underlying_security_type = 6

-- Display: Underlying Security Type
display.underlying_security_type = function(value)
  return "Underlying Security Type: "..value
end

-- Dissect: Underlying Security Type
dissect.underlying_security_type = function(buffer, offset, packet, parent)
  local length = size_of.underlying_security_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_security_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.underlying_security_type, range, value, display)

  return offset + length, value
end

-- Size: Underlying Clearing Product Code
size_of.underlying_clearing_product_code = 12

-- Display: Underlying Clearing Product Code
display.underlying_clearing_product_code = function(value)
  return "Underlying Clearing Product Code: "..value
end

-- Dissect: Underlying Clearing Product Code
dissect.underlying_clearing_product_code = function(buffer, offset, packet, parent)
  local length = size_of.underlying_clearing_product_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_clearing_product_code(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.underlying_clearing_product_code, range, value, display)

  return offset + length, value
end

-- Size: Underlying Product Guid
size_of.underlying_product_guid = 8

-- Display: Underlying Product Guid
display.underlying_product_guid = function(value)
  -- Check if field has value
  if value == 18446744073709551615 then
    return "Underlying Product Guid: No Value ("..value..")"
  end

  return "Underlying Product Guid: "..value
end

-- Dissect: Underlying Product Guid
dissect.underlying_product_guid = function(buffer, offset, packet, parent)
  local length = size_of.underlying_product_guid
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.underlying_product_guid(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.underlying_product_guid, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strike Price
size_of.strike_price = function(buffer, offset)
  local index = 0

  index = index + size_of.mantissa

  index = index + size_of.exponent

  return index
end

-- Display: Strike Price
display.strike_price = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strike Price
dissect.strike_price_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = dissect.exponent(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strike_price then
    local length = size_of.strike_price(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strike_price(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.strike_price, range, display)
  end

  return dissect.strike_price_fields(buffer, offset, packet, parent)
end

-- Size: Put Or Call
size_of.put_or_call = 1

-- Display: Put Or Call
display.put_or_call = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end
  if value == 255 then
    return "Put Or Call: No Value (255)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
dissect.put_or_call = function(buffer, offset, packet, parent)
  local length = size_of.put_or_call
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.put_or_call(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Calculate size of: Maturity Month Year
size_of.maturity_month_year = function(buffer, offset)
  local index = 0

  index = index + size_of.year

  index = index + size_of.month

  index = index + size_of.day

  index = index + size_of.week

  return index
end

-- Display: Maturity Month Year
display.maturity_month_year = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Maturity Month Year
dissect.maturity_month_year_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer Nullable
  index, year = dissect.year(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer Nullable
  index, month = dissect.month(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer Nullable
  index, day = dissect.day(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer Nullable
  index, week = dissect.week(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
dissect.maturity_month_year = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.maturity_month_year then
    local length = size_of.maturity_month_year(buffer, offset)
    local range = buffer(offset, length)
    local display = display.maturity_month_year(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.maturity_month_year, range, display)
  end

  return dissect.maturity_month_year_fields(buffer, offset, packet, parent)
end

-- Size: Security Exchange
size_of.security_exchange = 8

-- Display: Security Exchange
display.security_exchange = function(value)
  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
dissect.security_exchange = function(buffer, offset, packet, parent)
  local length = size_of.security_exchange
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_exchange(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Size: Security Type
size_of.security_type = 6

-- Display: Security Type
display.security_type = function(value)
  return "Security Type: "..value
end

-- Dissect: Security Type
dissect.security_type = function(buffer, offset, packet, parent)
  local length = size_of.security_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.security_type, range, value, display)

  return offset + length, value
end

-- Size: Clearing Product Code
size_of.clearing_product_code = 12

-- Display: Clearing Product Code
display.clearing_product_code = function(value)
  return "Clearing Product Code: "..value
end

-- Dissect: Clearing Product Code
dissect.clearing_product_code = function(buffer, offset, packet, parent)
  local length = size_of.clearing_product_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.clearing_product_code(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.clearing_product_code, range, value, display)

  return offset + length, value
end

-- Size: Product Guid
size_of.product_guid = 8

-- Display: Product Guid
display.product_guid = function(value)
  -- Check if field has value
  if value == 18446744073709551615 then
    return "Product Guid: No Value ("..value..")"
  end

  return "Product Guid: "..value
end

-- Dissect: Product Guid
dissect.product_guid = function(buffer, offset, packet, parent)
  local length = size_of.product_guid
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.product_guid(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.product_guid, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh High Low Group
size_of.m_d_incremental_refresh_high_low_group = function(buffer, offset)
  local index = 0

  index = index + size_of.product_guid

  index = index + size_of.clearing_product_code

  index = index + size_of.security_type

  index = index + size_of.security_exchange

  index = index + size_of.maturity_month_year(buffer, offset + index)

  index = index + size_of.put_or_call

  index = index + size_of.strike_price(buffer, offset + index)

  index = index + size_of.underlying_product_guid

  index = index + size_of.underlying_clearing_product_code

  index = index + size_of.underlying_security_type

  index = index + size_of.underlying_security_exchange

  index = index + size_of.underlying_maturity_month_year(buffer, offset + index)

  index = index + size_of.symbol

  index = index + size_of.instrument_guid

  index = index + size_of.security_id

  index = index + size_of.low_px(buffer, offset + index)

  index = index + size_of.low_px_ind

  index = index + size_of.high_px(buffer, offset + index)

  index = index + size_of.high_px_ind

  index = index + size_of.trading_reference_date

  return index
end

-- Display: M D Incremental Refresh High Low Group
display.m_d_incremental_refresh_high_low_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh High Low Group
dissect.m_d_incremental_refresh_high_low_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, product_guid = dissect.product_guid(buffer, index, packet, parent)

  -- Clearing Product Code: 12 Byte Ascii String
  index, clearing_product_code = dissect.clearing_product_code(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = dissect.security_type(buffer, index, packet, parent)

  -- Security Exchange: 8 Byte Ascii String
  index, security_exchange = dissect.security_exchange(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, put_or_call = dissect.put_or_call(buffer, index, packet, parent)

  -- Strike Price: Struct of 2 fields
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Underlying Product Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_product_guid = dissect.underlying_product_guid(buffer, index, packet, parent)

  -- Underlying Clearing Product Code: 12 Byte Ascii String
  index, underlying_clearing_product_code = dissect.underlying_clearing_product_code(buffer, index, packet, parent)

  -- Underlying Security Type: 6 Byte Ascii String
  index, underlying_security_type = dissect.underlying_security_type(buffer, index, packet, parent)

  -- Underlying Security Exchange: 8 Byte Ascii String
  index, underlying_security_exchange = dissect.underlying_security_exchange(buffer, index, packet, parent)

  -- Underlying Maturity Month Year: Struct of 4 fields
  index, underlying_maturity_month_year = dissect.underlying_maturity_month_year(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = dissect.instrument_guid(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Low Px: Struct of 2 fields
  index, low_px = dissect.low_px(buffer, index, packet, parent)

  -- Low Px Ind: 1 Byte Ascii String Enum with 3 values
  index, low_px_ind = dissect.low_px_ind(buffer, index, packet, parent)

  -- High Px: Struct of 2 fields
  index, high_px = dissect.high_px(buffer, index, packet, parent)

  -- High Px Ind: 1 Byte Ascii String Enum with 3 values
  index, high_px_ind = dissect.high_px_ind(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = dissect.trading_reference_date(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh High Low Group
dissect.m_d_incremental_refresh_high_low_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_high_low_group then
    local length = size_of.m_d_incremental_refresh_high_low_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_high_low_group(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_high_low_group, range, display)
  end

  return dissect.m_d_incremental_refresh_high_low_group_fields(buffer, offset, packet, parent)
end

-- Size: Num In Group
size_of.num_in_group = 1

-- Display: Num In Group
display.num_in_group = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
dissect.num_in_group = function(buffer, offset, packet, parent)
  local length = size_of.num_in_group
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.num_in_group(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Size: Block Length
size_of.block_length = 2

-- Display: Block Length
display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
dissect.block_length = function(buffer, offset, packet, parent)
  local length = size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.block_length(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Size
size_of.group_size = function(buffer, offset)
  local index = 0

  index = index + size_of.block_length

  index = index + size_of.num_in_group

  return index
end

-- Display: Group Size
display.group_size = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Group Size
dissect.group_size_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = dissect.block_length(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
dissect.group_size = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_size then
    local length = size_of.group_size(buffer, offset)
    local range = buffer(offset, length)
    local display = display.group_size(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.group_size, range, display)
  end

  return dissect.group_size_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh High Low Groups
size_of.m_d_incremental_refresh_high_low_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_high_low_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_high_low_group_count * 142

  return index
end

-- Display: M D Incremental Refresh High Low Groups
display.m_d_incremental_refresh_high_low_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh High Low Groups
dissect.m_d_incremental_refresh_high_low_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh High Low Group: Struct of 20 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_high_low_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh High Low Groups
dissect.m_d_incremental_refresh_high_low_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_high_low_groups then
    local length = size_of.m_d_incremental_refresh_high_low_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_high_low_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_high_low_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_high_low_groups_fields(buffer, offset, packet, parent)
end

-- Size: Transact Time
size_of.transact_time = 8

-- Display: Transact Time
display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
dissect.transact_time = function(buffer, offset, packet, parent)
  local length = size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.transact_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Incremental Refresh High Low 403
size_of.md_incremental_refresh_high_low_403 = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.m_d_incremental_refresh_high_low_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh High Low 403
display.md_incremental_refresh_high_low_403 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh High Low 403
dissect.md_incremental_refresh_high_low_403_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- M D Incremental Refresh High Low Groups: Struct of 2 fields
  index, m_d_incremental_refresh_high_low_groups = dissect.m_d_incremental_refresh_high_low_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh High Low 403
dissect.md_incremental_refresh_high_low_403 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_high_low_403 then
    local length = size_of.md_incremental_refresh_high_low_403(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_high_low_403(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.md_incremental_refresh_high_low_403, range, display)
  end

  return dissect.md_incremental_refresh_high_low_403_fields(buffer, offset, packet, parent)
end

-- Size: Open Close Settl Flag
size_of.open_close_settl_flag = 1

-- Display: Open Close Settl Flag
display.open_close_settl_flag = function(value)
  if value == 3 then
    return "Open Close Settl Flag: Estimated (3)"
  end
  if value == 4 then
    return "Open Close Settl Flag: Actual Adjusted (4)"
  end

  return "Open Close Settl Flag: Unknown("..value..")"
end

-- Dissect: Open Close Settl Flag
dissect.open_close_settl_flag = function(buffer, offset, packet, parent)
  local length = size_of.open_close_settl_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.open_close_settl_flag(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.open_close_settl_flag, range, value, display)

  return offset + length, value
end

-- Size: Open Interest Qty
size_of.open_interest_qty = 4

-- Display: Open Interest Qty
display.open_interest_qty = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Open Interest Qty: No Value ("..value..")"
  end

  return "Open Interest Qty: "..value
end

-- Dissect: Open Interest Qty
dissect.open_interest_qty = function(buffer, offset, packet, parent)
  local length = size_of.open_interest_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.open_interest_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.open_interest_qty, range, value, display)

  return offset + length, value
end

-- Size: Cleared Volume
size_of.cleared_volume = 4

-- Display: Cleared Volume
display.cleared_volume = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Cleared Volume: No Value ("..value..")"
  end

  return "Cleared Volume: "..value
end

-- Dissect: Cleared Volume
dissect.cleared_volume = function(buffer, offset, packet, parent)
  local length = size_of.cleared_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.cleared_volume(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.cleared_volume, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Voi Group
size_of.m_d_incremental_refresh_voi_group = function(buffer, offset)
  local index = 0

  index = index + size_of.product_guid

  index = index + size_of.clearing_product_code

  index = index + size_of.security_type

  index = index + size_of.security_exchange

  index = index + size_of.maturity_month_year(buffer, offset + index)

  index = index + size_of.put_or_call

  index = index + size_of.strike_price(buffer, offset + index)

  index = index + size_of.underlying_product_guid

  index = index + size_of.underlying_clearing_product_code

  index = index + size_of.underlying_security_type

  index = index + size_of.underlying_security_exchange

  index = index + size_of.underlying_maturity_month_year(buffer, offset + index)

  index = index + size_of.symbol

  index = index + size_of.instrument_guid

  index = index + size_of.security_id

  index = index + size_of.cleared_volume

  index = index + size_of.open_interest_qty

  index = index + size_of.open_close_settl_flag

  index = index + size_of.trading_reference_date

  return index
end

-- Display: M D Incremental Refresh Voi Group
display.m_d_incremental_refresh_voi_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Voi Group
dissect.m_d_incremental_refresh_voi_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, product_guid = dissect.product_guid(buffer, index, packet, parent)

  -- Clearing Product Code: 12 Byte Ascii String
  index, clearing_product_code = dissect.clearing_product_code(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = dissect.security_type(buffer, index, packet, parent)

  -- Security Exchange: 8 Byte Ascii String
  index, security_exchange = dissect.security_exchange(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, put_or_call = dissect.put_or_call(buffer, index, packet, parent)

  -- Strike Price: Struct of 2 fields
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Underlying Product Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_product_guid = dissect.underlying_product_guid(buffer, index, packet, parent)

  -- Underlying Clearing Product Code: 12 Byte Ascii String
  index, underlying_clearing_product_code = dissect.underlying_clearing_product_code(buffer, index, packet, parent)

  -- Underlying Security Type: 6 Byte Ascii String
  index, underlying_security_type = dissect.underlying_security_type(buffer, index, packet, parent)

  -- Underlying Security Exchange: 8 Byte Ascii String
  index, underlying_security_exchange = dissect.underlying_security_exchange(buffer, index, packet, parent)

  -- Underlying Maturity Month Year: Struct of 4 fields
  index, underlying_maturity_month_year = dissect.underlying_maturity_month_year(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = dissect.instrument_guid(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, cleared_volume = dissect.cleared_volume(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, open_interest_qty = dissect.open_interest_qty(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, open_close_settl_flag = dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = dissect.trading_reference_date(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Voi Group
dissect.m_d_incremental_refresh_voi_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_voi_group then
    local length = size_of.m_d_incremental_refresh_voi_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_voi_group(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_voi_group, range, display)
  end

  return dissect.m_d_incremental_refresh_voi_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Voi Groups
size_of.m_d_incremental_refresh_voi_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_voi_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_voi_group_count * 131

  return index
end

-- Display: M D Incremental Refresh Voi Groups
display.m_d_incremental_refresh_voi_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Voi Groups
dissect.m_d_incremental_refresh_voi_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Voi Group: Struct of 19 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_voi_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Voi Groups
dissect.m_d_incremental_refresh_voi_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_voi_groups then
    local length = size_of.m_d_incremental_refresh_voi_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_voi_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_voi_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_voi_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Vo I 402
size_of.md_incremental_refresh_vo_i_402 = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.m_d_incremental_refresh_voi_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Vo I 402
display.md_incremental_refresh_vo_i_402 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Vo I 402
dissect.md_incremental_refresh_vo_i_402_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- M D Incremental Refresh Voi Groups: Struct of 2 fields
  index, m_d_incremental_refresh_voi_groups = dissect.m_d_incremental_refresh_voi_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Vo I 402
dissect.md_incremental_refresh_vo_i_402 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_vo_i_402 then
    local length = size_of.md_incremental_refresh_vo_i_402(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_vo_i_402(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.md_incremental_refresh_vo_i_402, range, display)
  end

  return dissect.md_incremental_refresh_vo_i_402_fields(buffer, offset, packet, parent)
end

-- Size: Md Statistic Desc
size_of.md_statistic_desc = 40

-- Display: Md Statistic Desc
display.md_statistic_desc = function(value)
  return "Md Statistic Desc: "..value
end

-- Dissect: Md Statistic Desc
dissect.md_statistic_desc = function(buffer, offset, packet, parent)
  local length = size_of.md_statistic_desc
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.md_statistic_desc(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.md_statistic_desc, range, value, display)

  return offset + length, value
end

-- Size: Settl Price Type
size_of.settl_price_type = 1

-- Display: Settl Price Type
display.settl_price_type = function(buffer, packet, parent)
  local display = ""

  -- Is Null Value flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Null Value|"
  end
  -- Is Cabinet flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Cabinet|"
  end
  -- Is Intraday flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Intraday|"
  end
  -- Is Rounded flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Rounded|"
  end
  -- Is Actual flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Actual|"
  end
  -- Is Final Daily flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Final Daily|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Settl Price Type
dissect.settl_price_type_bits = function(buffer, offset, packet, parent)

  -- Null Value: 1 Bit
  parent:add(cme_futures_settlements_sbe_v7_0.fields.null_value, buffer(offset, 1))

  -- Reserved Bits: 2 Bit
  parent:add(cme_futures_settlements_sbe_v7_0.fields.reserved_bits, buffer(offset, 1))

  -- Cabinet: 1 Bit
  parent:add(cme_futures_settlements_sbe_v7_0.fields.cabinet, buffer(offset, 1))

  -- Intraday: 1 Bit
  parent:add(cme_futures_settlements_sbe_v7_0.fields.intraday, buffer(offset, 1))

  -- Rounded: 1 Bit
  parent:add(cme_futures_settlements_sbe_v7_0.fields.rounded, buffer(offset, 1))

  -- Actual: 1 Bit
  parent:add(cme_futures_settlements_sbe_v7_0.fields.actual, buffer(offset, 1))

  -- Final Daily: 1 Bit
  parent:add(cme_futures_settlements_sbe_v7_0.fields.final_daily, buffer(offset, 1))
end

-- Dissect: Settl Price Type
dissect.settl_price_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.settl_price_type(range, packet, parent)
  local element = parent:add(cme_futures_settlements_sbe_v7_0.fields.settl_price_type, range, display)

  if show.settl_price_type then
    dissect.settl_price_type_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Md Entry Px
size_of.md_entry_px = 8

-- Display: Md Entry Px
display.md_entry_px = function(value)
  return "Md Entry Px: "..value:tonumber()/1000000000
end

-- Dissect: Md Entry Px
dissect.md_entry_px = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.md_entry_px(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Formatted Last Px
size_of.formatted_last_px = function(buffer, offset)
  local index = 0

  index = index + size_of.mantissa

  index = index + size_of.exponent

  return index
end

-- Display: Formatted Last Px
display.formatted_last_px = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Formatted Last Px
dissect.formatted_last_px_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = dissect.exponent(buffer, index, packet, parent)

  return index
end

-- Dissect: Formatted Last Px
dissect.formatted_last_px = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.formatted_last_px then
    local length = size_of.formatted_last_px(buffer, offset)
    local range = buffer(offset, length)
    local display = display.formatted_last_px(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.formatted_last_px, range, display)
  end

  return dissect.formatted_last_px_fields(buffer, offset, packet, parent)
end

-- Size: Md Entry Type
size_of.md_entry_type = 1

-- Display: Md Entry Type
display.md_entry_type = function(value)
  return "Md Entry Type: "..value
end

-- Dissect: Md Entry Type
dissect.md_entry_type = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.md_entry_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Size: Md Update Action
size_of.md_update_action = 1

-- Display: Md Update Action
display.md_update_action = function(value)
  if value == 0 then
    return "Md Update Action: New (0)"
  end
  if value == 1 then
    return "Md Update Action: Change (1)"
  end
  if value == 2 then
    return "Md Update Action: Delete (2)"
  end

  return "Md Update Action: Unknown("..value..")"
end

-- Dissect: Md Update Action
dissect.md_update_action = function(buffer, offset, packet, parent)
  local length = size_of.md_update_action
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.md_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Settle Group
size_of.m_d_incremental_refresh_settle_group = function(buffer, offset)
  local index = 0

  index = index + size_of.md_update_action

  index = index + size_of.md_entry_type

  index = index + size_of.product_guid

  index = index + size_of.clearing_product_code

  index = index + size_of.security_type

  index = index + size_of.security_exchange

  index = index + size_of.maturity_month_year(buffer, offset + index)

  index = index + size_of.put_or_call

  index = index + size_of.strike_price(buffer, offset + index)

  index = index + size_of.underlying_product_guid

  index = index + size_of.underlying_clearing_product_code

  index = index + size_of.underlying_security_type

  index = index + size_of.underlying_security_exchange

  index = index + size_of.underlying_maturity_month_year(buffer, offset + index)

  index = index + size_of.symbol

  index = index + size_of.instrument_guid

  index = index + size_of.security_id

  index = index + size_of.formatted_last_px(buffer, offset + index)

  index = index + size_of.md_entry_px

  index = index + size_of.settl_price_type

  index = index + size_of.trading_reference_date

  index = index + size_of.md_statistic_desc

  return index
end

-- Display: M D Incremental Refresh Settle Group
display.m_d_incremental_refresh_settle_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Settle Group
dissect.m_d_incremental_refresh_settle_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, md_update_action = dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String
  index, md_entry_type = dissect.md_entry_type(buffer, index, packet, parent)

  -- Product Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, product_guid = dissect.product_guid(buffer, index, packet, parent)

  -- Clearing Product Code: 12 Byte Ascii String
  index, clearing_product_code = dissect.clearing_product_code(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = dissect.security_type(buffer, index, packet, parent)

  -- Security Exchange: 8 Byte Ascii String
  index, security_exchange = dissect.security_exchange(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, put_or_call = dissect.put_or_call(buffer, index, packet, parent)

  -- Strike Price: Struct of 2 fields
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Underlying Product Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_product_guid = dissect.underlying_product_guid(buffer, index, packet, parent)

  -- Underlying Clearing Product Code: 12 Byte Ascii String
  index, underlying_clearing_product_code = dissect.underlying_clearing_product_code(buffer, index, packet, parent)

  -- Underlying Security Type: 6 Byte Ascii String
  index, underlying_security_type = dissect.underlying_security_type(buffer, index, packet, parent)

  -- Underlying Security Exchange: 8 Byte Ascii String
  index, underlying_security_exchange = dissect.underlying_security_exchange(buffer, index, packet, parent)

  -- Underlying Maturity Month Year: Struct of 4 fields
  index, underlying_maturity_month_year = dissect.underlying_maturity_month_year(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = dissect.instrument_guid(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Formatted Last Px: Struct of 2 fields
  index, formatted_last_px = dissect.formatted_last_px(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = dissect.md_entry_px(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 7 fields
  index, settl_price_type = dissect.settl_price_type(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Md Statistic Desc: 40 Byte Ascii String
  index, md_statistic_desc = dissect.md_statistic_desc(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Settle Group
dissect.m_d_incremental_refresh_settle_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.m_d_incremental_refresh_settle_group then
    local length = size_of.m_d_incremental_refresh_settle_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_settle_group(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_settle_group, range, display)
  end

  return dissect.m_d_incremental_refresh_settle_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Settle Groups
size_of.m_d_incremental_refresh_settle_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_settle_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_settle_group_count * 182

  return index
end

-- Display: M D Incremental Refresh Settle Groups
display.m_d_incremental_refresh_settle_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Settle Groups
dissect.m_d_incremental_refresh_settle_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- M D Incremental Refresh Settle Group: Struct of 22 fields
  for i = 1, num_in_group do
    index = dissect.m_d_incremental_refresh_settle_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: M D Incremental Refresh Settle Groups
dissect.m_d_incremental_refresh_settle_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_settle_groups then
    local length = size_of.m_d_incremental_refresh_settle_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.m_d_incremental_refresh_settle_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_settle_groups, range, display)
  end

  return dissect.m_d_incremental_refresh_settle_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Settle 401
size_of.md_incremental_refresh_settle_401 = function(buffer, offset)
  local index = 0

  index = index + size_of.transact_time

  index = index + size_of.m_d_incremental_refresh_settle_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Settle 401
display.md_incremental_refresh_settle_401 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Settle 401
dissect.md_incremental_refresh_settle_401_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- M D Incremental Refresh Settle Groups: Struct of 2 fields
  index, m_d_incremental_refresh_settle_groups = dissect.m_d_incremental_refresh_settle_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Settle 401
dissect.md_incremental_refresh_settle_401 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_settle_401 then
    local length = size_of.md_incremental_refresh_settle_401(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_settle_401(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.md_incremental_refresh_settle_401, range, display)
  end

  return dissect.md_incremental_refresh_settle_401_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, template_id)
  -- Size of Md Incremental Refresh Settle 401
  if template_id == 401 then
    return size_of.md_incremental_refresh_settle_401(buffer, offset)
  end
  -- Size of Md Incremental Refresh Vo I 402
  if template_id == 402 then
    return size_of.md_incremental_refresh_vo_i_402(buffer, offset)
  end
  -- Size of Md Incremental Refresh High Low 403
  if template_id == 403 then
    return size_of.md_incremental_refresh_high_low_403(buffer, offset)
  end
  -- Size of Admin Heartbeat 407
  if template_id == 407 then
    return 0
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Md Incremental Refresh Settle 401
  if template_id == 401 then
    return dissect.md_incremental_refresh_settle_401(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Vo I 402
  if template_id == 402 then
    return dissect.md_incremental_refresh_vo_i_402(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh High Low 403
  if template_id == 403 then
    return dissect.md_incremental_refresh_high_low_403(buffer, offset, packet, parent)
  end
  -- Dissect Admin Heartbeat 407
  if template_id == 407 then
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(cme_futures_settlements_sbe_v7_0.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
size_of.version = 2

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local length = size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
size_of.schema_id = 2

-- Display: Schema Id
display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
dissect.schema_id = function(buffer, offset, packet, parent)
  local length = size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.schema_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
size_of.template_id = 2

-- Display: Template Id
display.template_id = function(value)
  if value == 401 then
    return "Template Id: Md Incremental Refresh Settle (401)"
  end
  if value == 402 then
    return "Template Id: Md Incremental Refresh Voi (402)"
  end
  if value == 403 then
    return "Template Id: Md Incremental Refresh High Low (403)"
  end
  if value == 407 then
    return "Template Id: Admin Heartbeat (407)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
dissect.template_id = function(buffer, offset, packet, parent)
  local length = size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.block_length

  index = index + size_of.template_id

  index = index + size_of.schema_id

  index = index + size_of.version

  return index
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, template_id = dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Size: Message Size
size_of.message_size = 2

-- Display: Message Size
display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
dissect.message_size = function(buffer, offset, packet, parent)
  local length = size_of.message_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_size(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_size

  index = index + size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = dissect.message_size(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 4 branches
  index = dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Sending Time
size_of.sending_time = 8

-- Display: Sending Time
display.sending_time = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
dissect.sending_time = function(buffer, offset, packet, parent)
  local length = size_of.sending_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.sending_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Size: Message Sequence Number
size_of.message_sequence_number = 4

-- Display: Message Sequence Number
display.message_sequence_number = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
dissect.message_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.message_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_sequence_number(value, buffer, offset, packet, parent)

  parent:add(cme_futures_settlements_sbe_v7_0.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Binary Packet Header
size_of.binary_packet_header = function(buffer, offset)
  local index = 0

  index = index + size_of.message_sequence_number

  index = index + size_of.sending_time

  return index
end

-- Display: Binary Packet Header
display.binary_packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Binary Packet Header
dissect.binary_packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = dissect.message_sequence_number(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
dissect.binary_packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.binary_packet_header then
    local length = size_of.binary_packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.binary_packet_header(buffer, packet, parent)
    parent = parent:add(cme_futures_settlements_sbe_v7_0.fields.binary_packet_header, range, display)
  end

  return dissect.binary_packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = dissect.binary_packet_header(buffer, index, packet, parent)

  -- Message: Struct of 3 fields
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cme_futures_settlements_sbe_v7_0.init()
end

-- Dissector for Cme Futures Settlements Sbe 7.0
function cme_futures_settlements_sbe_v7_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cme_futures_settlements_sbe_v7_0.name

  -- Dissect protocol
  local protocol = parent:add(cme_futures_settlements_sbe_v7_0, buffer(), cme_futures_settlements_sbe_v7_0.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cme_futures_settlements_sbe_v7_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cme_futures_settlements_sbe_v7_0_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  if 7 == buffer(18, 2):le_uint() then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  if 0 == buffer(20, 2):le_uint() then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Futures Settlements Sbe 7.0
local function cme_futures_settlements_sbe_v7_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cme_futures_settlements_sbe_v7_0_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cme_futures_settlements_sbe_v7_0
  cme_futures_settlements_sbe_v7_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme Futures Settlements Sbe 7.0
cme_futures_settlements_sbe_v7_0:register_heuristic("udp", cme_futures_settlements_sbe_v7_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Mercantile Exchange
--   Version: 7.0
--   Date: Monday, December 3, 2018
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
