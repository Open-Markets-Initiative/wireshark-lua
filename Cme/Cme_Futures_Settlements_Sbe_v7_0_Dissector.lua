-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Futures Settlements Sbe 7.0 Protocol
local omi_cme_futures_settlements_sbe_v7_0 = Proto("Cme.Futures.Settlements.Sbe.v7.0.Lua", "Cme Futures Settlements Sbe 7.0")

-- Protocol table
local cme_futures_settlements_sbe_v7_0 = {}

-- Component Tables
local show = {}
local format = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Futures Settlements Sbe 7.0 Fields
omi_cme_futures_settlements_sbe_v7_0.fields.actual = ProtoField.new("Actual", "cme.futures.settlements.sbe.v7.0.actual", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_cme_futures_settlements_sbe_v7_0.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.futures.settlements.sbe.v7.0.binarypacketheader", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.block_length = ProtoField.new("Block Length", "cme.futures.settlements.sbe.v7.0.blocklength", ftypes.UINT16)
omi_cme_futures_settlements_sbe_v7_0.fields.cabinet = ProtoField.new("Cabinet", "cme.futures.settlements.sbe.v7.0.cabinet", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_cme_futures_settlements_sbe_v7_0.fields.cleared_volume = ProtoField.new("Cleared Volume", "cme.futures.settlements.sbe.v7.0.clearedvolume", ftypes.UINT32)
omi_cme_futures_settlements_sbe_v7_0.fields.clearing_product_code = ProtoField.new("Clearing Product Code", "cme.futures.settlements.sbe.v7.0.clearingproductcode", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.day = ProtoField.new("Day", "cme.futures.settlements.sbe.v7.0.day", ftypes.UINT8)
omi_cme_futures_settlements_sbe_v7_0.fields.exponent = ProtoField.new("Exponent", "cme.futures.settlements.sbe.v7.0.exponent", ftypes.INT8)
omi_cme_futures_settlements_sbe_v7_0.fields.final_daily = ProtoField.new("Final Daily", "cme.futures.settlements.sbe.v7.0.finaldaily", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_cme_futures_settlements_sbe_v7_0.fields.formatted_last_px = ProtoField.new("Formatted Last Px", "cme.futures.settlements.sbe.v7.0.formattedlastpx", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.group_size = ProtoField.new("Group Size", "cme.futures.settlements.sbe.v7.0.groupsize", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.high_px = ProtoField.new("High Px", "cme.futures.settlements.sbe.v7.0.highpx", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.high_px_ind = ProtoField.new("High Px Ind", "cme.futures.settlements.sbe.v7.0.highpxind", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.instrument_guid = ProtoField.new("Instrument Guid", "cme.futures.settlements.sbe.v7.0.instrumentguid", ftypes.UINT64)
omi_cme_futures_settlements_sbe_v7_0.fields.intraday = ProtoField.new("Intraday", "cme.futures.settlements.sbe.v7.0.intraday", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_cme_futures_settlements_sbe_v7_0.fields.low_px = ProtoField.new("Low Px", "cme.futures.settlements.sbe.v7.0.lowpx", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.low_px_ind = ProtoField.new("Low Px Ind", "cme.futures.settlements.sbe.v7.0.lowpxind", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_high_low_group = ProtoField.new("M D Incremental Refresh High Low Group", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshhighlowgroup", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_high_low_groups = ProtoField.new("M D Incremental Refresh High Low Groups", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshhighlowgroups", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_settle_group = ProtoField.new("M D Incremental Refresh Settle Group", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshsettlegroup", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_settle_groups = ProtoField.new("M D Incremental Refresh Settle Groups", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshsettlegroups", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_voi_group = ProtoField.new("M D Incremental Refresh Voi Group", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshvoigroup", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_voi_groups = ProtoField.new("M D Incremental Refresh Voi Groups", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshvoigroups", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.mantissa = ProtoField.new("Mantissa", "cme.futures.settlements.sbe.v7.0.mantissa", ftypes.INT64)
omi_cme_futures_settlements_sbe_v7_0.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "cme.futures.settlements.sbe.v7.0.maturitymonthyear", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.md_entry_px = ProtoField.new("Md Entry Px", "cme.futures.settlements.sbe.v7.0.mdentrypx", ftypes.DOUBLE)
omi_cme_futures_settlements_sbe_v7_0.fields.md_entry_type = ProtoField.new("Md Entry Type", "cme.futures.settlements.sbe.v7.0.mdentrytype", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.md_statistic_desc = ProtoField.new("Md Statistic Desc", "cme.futures.settlements.sbe.v7.0.mdstatisticdesc", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.md_update_action = ProtoField.new("Md Update Action", "cme.futures.settlements.sbe.v7.0.mdupdateaction", ftypes.UINT8)
omi_cme_futures_settlements_sbe_v7_0.fields.message = ProtoField.new("Message", "cme.futures.settlements.sbe.v7.0.message", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.message_header = ProtoField.new("Message Header", "cme.futures.settlements.sbe.v7.0.messageheader", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cme.futures.settlements.sbe.v7.0.messagesequencenumber", ftypes.UINT32)
omi_cme_futures_settlements_sbe_v7_0.fields.message_size = ProtoField.new("Message Size", "cme.futures.settlements.sbe.v7.0.messagesize", ftypes.UINT16)
omi_cme_futures_settlements_sbe_v7_0.fields.month = ProtoField.new("Month", "cme.futures.settlements.sbe.v7.0.month", ftypes.UINT8)
omi_cme_futures_settlements_sbe_v7_0.fields.null_value = ProtoField.new("Null Value", "cme.futures.settlements.sbe.v7.0.nullvalue", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_cme_futures_settlements_sbe_v7_0.fields.num_in_group_uint_8 = ProtoField.new("Num In Group uint 8", "cme.futures.settlements.sbe.v7.0.numingroupuint8", ftypes.UINT8)
omi_cme_futures_settlements_sbe_v7_0.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "cme.futures.settlements.sbe.v7.0.openclosesettlflag", ftypes.UINT8)
omi_cme_futures_settlements_sbe_v7_0.fields.open_interest_qty = ProtoField.new("Open Interest Qty", "cme.futures.settlements.sbe.v7.0.openinterestqty", ftypes.UINT32)
omi_cme_futures_settlements_sbe_v7_0.fields.packet = ProtoField.new("Packet", "cme.futures.settlements.sbe.v7.0.packet", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.payload = ProtoField.new("Payload", "cme.futures.settlements.sbe.v7.0.payload", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.product_guid = ProtoField.new("Product Guid", "cme.futures.settlements.sbe.v7.0.productguid", ftypes.UINT64)
omi_cme_futures_settlements_sbe_v7_0.fields.put_or_call = ProtoField.new("Put Or Call", "cme.futures.settlements.sbe.v7.0.putorcall", ftypes.UINT8)
omi_cme_futures_settlements_sbe_v7_0.fields.reserved_bits = ProtoField.new("Reserved Bits", "cme.futures.settlements.sbe.v7.0.reservedbits", ftypes.UINT8, nil, base.DEC, 0x60)
omi_cme_futures_settlements_sbe_v7_0.fields.rounded = ProtoField.new("Rounded", "cme.futures.settlements.sbe.v7.0.rounded", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_cme_futures_settlements_sbe_v7_0.fields.schema_id = ProtoField.new("Schema Id", "cme.futures.settlements.sbe.v7.0.schemaid", ftypes.UINT16)
omi_cme_futures_settlements_sbe_v7_0.fields.security_exchange = ProtoField.new("Security Exchange", "cme.futures.settlements.sbe.v7.0.securityexchange", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.security_id = ProtoField.new("Security Id", "cme.futures.settlements.sbe.v7.0.securityid", ftypes.UINT32)
omi_cme_futures_settlements_sbe_v7_0.fields.security_type = ProtoField.new("Security Type", "cme.futures.settlements.sbe.v7.0.securitytype", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.sending_time = ProtoField.new("Sending Time", "cme.futures.settlements.sbe.v7.0.sendingtime", ftypes.UINT64)
omi_cme_futures_settlements_sbe_v7_0.fields.settl_price_type = ProtoField.new("Settl Price Type", "cme.futures.settlements.sbe.v7.0.settlpricetype", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.strike_price = ProtoField.new("Strike Price", "cme.futures.settlements.sbe.v7.0.strikeprice", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.symbol = ProtoField.new("Symbol", "cme.futures.settlements.sbe.v7.0.symbol", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.template_id = ProtoField.new("Template Id", "cme.futures.settlements.sbe.v7.0.templateid", ftypes.UINT16)
omi_cme_futures_settlements_sbe_v7_0.fields.trading_reference_date = ProtoField.new("Trading Reference Date", "cme.futures.settlements.sbe.v7.0.tradingreferencedate", ftypes.UINT16)
omi_cme_futures_settlements_sbe_v7_0.fields.transact_time = ProtoField.new("Transact Time", "cme.futures.settlements.sbe.v7.0.transacttime", ftypes.UINT64)
omi_cme_futures_settlements_sbe_v7_0.fields.underlying_clearing_product_code = ProtoField.new("Underlying Clearing Product Code", "cme.futures.settlements.sbe.v7.0.underlyingclearingproductcode", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.underlying_maturity_month_year = ProtoField.new("Underlying Maturity Month Year", "cme.futures.settlements.sbe.v7.0.underlyingmaturitymonthyear", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.underlying_product_guid = ProtoField.new("Underlying Product Guid", "cme.futures.settlements.sbe.v7.0.underlyingproductguid", ftypes.UINT64)
omi_cme_futures_settlements_sbe_v7_0.fields.underlying_security_exchange = ProtoField.new("Underlying Security Exchange", "cme.futures.settlements.sbe.v7.0.underlyingsecurityexchange", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.underlying_security_type = ProtoField.new("Underlying Security Type", "cme.futures.settlements.sbe.v7.0.underlyingsecuritytype", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.version = ProtoField.new("Version", "cme.futures.settlements.sbe.v7.0.version", ftypes.UINT16)
omi_cme_futures_settlements_sbe_v7_0.fields.week = ProtoField.new("Week", "cme.futures.settlements.sbe.v7.0.week", ftypes.UINT8)
omi_cme_futures_settlements_sbe_v7_0.fields.year = ProtoField.new("Year", "cme.futures.settlements.sbe.v7.0.year", ftypes.UINT16)

-- Cme Futures Settlements Sbe 7.0 messages
omi_cme_futures_settlements_sbe_v7_0.fields.md_incremental_refresh_high_low = ProtoField.new("Md Incremental Refresh High Low", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshhighlow", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.md_incremental_refresh_settle = ProtoField.new("Md Incremental Refresh Settle", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshsettle", ftypes.STRING)
omi_cme_futures_settlements_sbe_v7_0.fields.md_incremental_refresh_voi = ProtoField.new("Md Incremental Refresh Voi", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshvoi", ftypes.STRING)

-- Cme Futures Settlements Sbe 7.0 generated fields
omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_high_low_group_index = ProtoField.new("M D Incremental Refresh High Low Group Index", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshhighlowgroupindex", ftypes.UINT16)
omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_settle_group_index = ProtoField.new("M D Incremental Refresh Settle Group Index", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshsettlegroupindex", ftypes.UINT16)
omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_voi_group_index = ProtoField.new("M D Incremental Refresh Voi Group Index", "cme.futures.settlements.sbe.v7.0.mdincrementalrefreshvoigroupindex", ftypes.UINT16)

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
show.md_incremental_refresh_high_low = true
show.md_incremental_refresh_settle = true
show.md_incremental_refresh_voi = true
show.message = true
show.message_header = true
show.packet = true
show.settl_price_type = true
show.strike_price = true
show.underlying_maturity_month_year = true
show.payload = false

-- Register Cme Futures Settlements Sbe 7.0 Show Options
omi_cme_futures_settlements_sbe_v7_0.prefs.show_binary_packet_header = Pref.bool("Show Binary Packet Header", show.binary_packet_header, "Parse and add Binary Packet Header to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_formatted_last_px = Pref.bool("Show Formatted Last Px", show.formatted_last_px, "Parse and add Formatted Last Px to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_high_px = Pref.bool("Show High Px", show.high_px, "Parse and add High Px to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_low_px = Pref.bool("Show Low Px", show.low_px, "Parse and add Low Px to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_high_low_group = Pref.bool("Show M D Incremental Refresh High Low Group", show.m_d_incremental_refresh_high_low_group, "Parse and add M D Incremental Refresh High Low Group to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_high_low_groups = Pref.bool("Show M D Incremental Refresh High Low Groups", show.m_d_incremental_refresh_high_low_groups, "Parse and add M D Incremental Refresh High Low Groups to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_settle_group = Pref.bool("Show M D Incremental Refresh Settle Group", show.m_d_incremental_refresh_settle_group, "Parse and add M D Incremental Refresh Settle Group to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_settle_groups = Pref.bool("Show M D Incremental Refresh Settle Groups", show.m_d_incremental_refresh_settle_groups, "Parse and add M D Incremental Refresh Settle Groups to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_voi_group = Pref.bool("Show M D Incremental Refresh Voi Group", show.m_d_incremental_refresh_voi_group, "Parse and add M D Incremental Refresh Voi Group to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_voi_groups = Pref.bool("Show M D Incremental Refresh Voi Groups", show.m_d_incremental_refresh_voi_groups, "Parse and add M D Incremental Refresh Voi Groups to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_maturity_month_year = Pref.bool("Show Maturity Month Year", show.maturity_month_year, "Parse and add Maturity Month Year to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_high_low = Pref.bool("Show Md Incremental Refresh High Low", show.md_incremental_refresh_high_low, "Parse and add Md Incremental Refresh High Low to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_settle = Pref.bool("Show Md Incremental Refresh Settle", show.md_incremental_refresh_settle, "Parse and add Md Incremental Refresh Settle to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_voi = Pref.bool("Show Md Incremental Refresh Voi", show.md_incremental_refresh_voi, "Parse and add Md Incremental Refresh Voi to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_settl_price_type = Pref.bool("Show Settl Price Type", show.settl_price_type, "Parse and add Settl Price Type to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_strike_price = Pref.bool("Show Strike Price", show.strike_price, "Parse and add Strike Price to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_underlying_maturity_month_year = Pref.bool("Show Underlying Maturity Month Year", show.underlying_maturity_month_year, "Parse and add Underlying Maturity Month Year to protocol tree")
omi_cme_futures_settlements_sbe_v7_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_cme_futures_settlements_sbe_v7_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.binary_packet_header ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_binary_packet_header then
    show.binary_packet_header = omi_cme_futures_settlements_sbe_v7_0.prefs.show_binary_packet_header
    changed = true
  end
  if show.formatted_last_px ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_formatted_last_px then
    show.formatted_last_px = omi_cme_futures_settlements_sbe_v7_0.prefs.show_formatted_last_px
    changed = true
  end
  if show.group_size ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_group_size then
    show.group_size = omi_cme_futures_settlements_sbe_v7_0.prefs.show_group_size
    changed = true
  end
  if show.high_px ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_high_px then
    show.high_px = omi_cme_futures_settlements_sbe_v7_0.prefs.show_high_px
    changed = true
  end
  if show.low_px ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_low_px then
    show.low_px = omi_cme_futures_settlements_sbe_v7_0.prefs.show_low_px
    changed = true
  end
  if show.m_d_incremental_refresh_high_low_group ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_high_low_group then
    show.m_d_incremental_refresh_high_low_group = omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_high_low_group
    changed = true
  end
  if show.m_d_incremental_refresh_high_low_groups ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_high_low_groups then
    show.m_d_incremental_refresh_high_low_groups = omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_high_low_groups
    changed = true
  end
  if show.m_d_incremental_refresh_settle_group ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_settle_group then
    show.m_d_incremental_refresh_settle_group = omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_settle_group
    changed = true
  end
  if show.m_d_incremental_refresh_settle_groups ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_settle_groups then
    show.m_d_incremental_refresh_settle_groups = omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_settle_groups
    changed = true
  end
  if show.m_d_incremental_refresh_voi_group ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_voi_group then
    show.m_d_incremental_refresh_voi_group = omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_voi_group
    changed = true
  end
  if show.m_d_incremental_refresh_voi_groups ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_voi_groups then
    show.m_d_incremental_refresh_voi_groups = omi_cme_futures_settlements_sbe_v7_0.prefs.show_m_d_incremental_refresh_voi_groups
    changed = true
  end
  if show.maturity_month_year ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_maturity_month_year then
    show.maturity_month_year = omi_cme_futures_settlements_sbe_v7_0.prefs.show_maturity_month_year
    changed = true
  end
  if show.md_incremental_refresh_high_low ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_high_low then
    show.md_incremental_refresh_high_low = omi_cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_high_low
    changed = true
  end
  if show.md_incremental_refresh_settle ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_settle then
    show.md_incremental_refresh_settle = omi_cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_settle
    changed = true
  end
  if show.md_incremental_refresh_voi ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_voi then
    show.md_incremental_refresh_voi = omi_cme_futures_settlements_sbe_v7_0.prefs.show_md_incremental_refresh_voi
    changed = true
  end
  if show.message ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_message then
    show.message = omi_cme_futures_settlements_sbe_v7_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_message_header then
    show.message_header = omi_cme_futures_settlements_sbe_v7_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_packet then
    show.packet = omi_cme_futures_settlements_sbe_v7_0.prefs.show_packet
    changed = true
  end
  if show.settl_price_type ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_settl_price_type then
    show.settl_price_type = omi_cme_futures_settlements_sbe_v7_0.prefs.show_settl_price_type
    changed = true
  end
  if show.strike_price ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_strike_price then
    show.strike_price = omi_cme_futures_settlements_sbe_v7_0.prefs.show_strike_price
    changed = true
  end
  if show.underlying_maturity_month_year ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_underlying_maturity_month_year then
    show.underlying_maturity_month_year = omi_cme_futures_settlements_sbe_v7_0.prefs.show_underlying_maturity_month_year
    changed = true
  end
  if show.payload ~= omi_cme_futures_settlements_sbe_v7_0.prefs.show_payload then
    show.payload = omi_cme_futures_settlements_sbe_v7_0.prefs.show_payload
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

-- Admin Heartbeat
cme_futures_settlements_sbe_v7_0.admin_heartbeat = {}

-- Trading Reference Date
cme_futures_settlements_sbe_v7_0.trading_reference_date = {}

-- Size: Trading Reference Date
cme_futures_settlements_sbe_v7_0.trading_reference_date.size = 2

-- Display: Trading Reference Date
cme_futures_settlements_sbe_v7_0.trading_reference_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trading Reference Date: No Value"
  end

  return "Trading Reference Date: "..value
end

-- Dissect: Trading Reference Date
cme_futures_settlements_sbe_v7_0.trading_reference_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.trading_reference_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.trading_reference_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.trading_reference_date, range, value, display)

  return offset + length, value
end

-- High Px Ind
cme_futures_settlements_sbe_v7_0.high_px_ind = {}

-- Size: High Px Ind
cme_futures_settlements_sbe_v7_0.high_px_ind.size = 1

-- Display: High Px Ind
cme_futures_settlements_sbe_v7_0.high_px_ind.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "High Px Ind: No Value"
  end

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
cme_futures_settlements_sbe_v7_0.high_px_ind.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.high_px_ind.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_settlements_sbe_v7_0.high_px_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.high_px_ind, range, value, display)

  return offset + length, value
end

-- Exponent
cme_futures_settlements_sbe_v7_0.exponent = {}

-- Size: Exponent
cme_futures_settlements_sbe_v7_0.exponent.size = 1

-- Display: Exponent
cme_futures_settlements_sbe_v7_0.exponent.display = function(value)
  -- Check if field has value
  if value == -128 then
    return "Exponent: No Value"
  end

  return "Exponent: "..value
end

-- Dissect: Exponent
cme_futures_settlements_sbe_v7_0.exponent.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.exponent.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_settlements_sbe_v7_0.exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.exponent, range, value, display)

  return offset + length, value
end

-- Mantissa
cme_futures_settlements_sbe_v7_0.mantissa = {}

-- Size: Mantissa
cme_futures_settlements_sbe_v7_0.mantissa.size = 8

-- Display: Mantissa
cme_futures_settlements_sbe_v7_0.mantissa.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Mantissa: No Value"
  end

  return "Mantissa: "..value
end

-- Dissect: Mantissa
cme_futures_settlements_sbe_v7_0.mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cme_futures_settlements_sbe_v7_0.mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.mantissa, range, value, display)

  return offset + length, value
end

-- High Px
cme_futures_settlements_sbe_v7_0.high_px = {}

-- Calculate size of: High Px
cme_futures_settlements_sbe_v7_0.high_px.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.mantissa.size

  index = index + cme_futures_settlements_sbe_v7_0.exponent.size

  return index
end

-- Display: High Px
cme_futures_settlements_sbe_v7_0.high_px.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: High Px
cme_futures_settlements_sbe_v7_0.high_px.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_settlements_sbe_v7_0.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_settlements_sbe_v7_0.exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: High Px
cme_futures_settlements_sbe_v7_0.high_px.dissect = function(buffer, offset, packet, parent)
  if show.high_px then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.high_px, buffer(offset, 0))
    local index = cme_futures_settlements_sbe_v7_0.high_px.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_settlements_sbe_v7_0.high_px.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_settlements_sbe_v7_0.high_px.fields(buffer, offset, packet, parent)
  end
end

-- Low Px Ind
cme_futures_settlements_sbe_v7_0.low_px_ind = {}

-- Size: Low Px Ind
cme_futures_settlements_sbe_v7_0.low_px_ind.size = 1

-- Display: Low Px Ind
cme_futures_settlements_sbe_v7_0.low_px_ind.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Low Px Ind: No Value"
  end

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
cme_futures_settlements_sbe_v7_0.low_px_ind.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.low_px_ind.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_settlements_sbe_v7_0.low_px_ind.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.low_px_ind, range, value, display)

  return offset + length, value
end

-- Low Px
cme_futures_settlements_sbe_v7_0.low_px = {}

-- Calculate size of: Low Px
cme_futures_settlements_sbe_v7_0.low_px.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.mantissa.size

  index = index + cme_futures_settlements_sbe_v7_0.exponent.size

  return index
end

-- Display: Low Px
cme_futures_settlements_sbe_v7_0.low_px.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Low Px
cme_futures_settlements_sbe_v7_0.low_px.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_settlements_sbe_v7_0.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_settlements_sbe_v7_0.exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Low Px
cme_futures_settlements_sbe_v7_0.low_px.dissect = function(buffer, offset, packet, parent)
  if show.low_px then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.low_px, buffer(offset, 0))
    local index = cme_futures_settlements_sbe_v7_0.low_px.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_settlements_sbe_v7_0.low_px.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_settlements_sbe_v7_0.low_px.fields(buffer, offset, packet, parent)
  end
end

-- Security Id
cme_futures_settlements_sbe_v7_0.security_id = {}

-- Size: Security Id
cme_futures_settlements_sbe_v7_0.security_id.size = 4

-- Display: Security Id
cme_futures_settlements_sbe_v7_0.security_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Security Id: No Value"
  end

  return "Security Id: "..value
end

-- Dissect: Security Id
cme_futures_settlements_sbe_v7_0.security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Instrument Guid
cme_futures_settlements_sbe_v7_0.instrument_guid = {}

-- Size: Instrument Guid
cme_futures_settlements_sbe_v7_0.instrument_guid.size = 8

-- Display: Instrument Guid
cme_futures_settlements_sbe_v7_0.instrument_guid.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Instrument Guid: No Value"
  end

  return "Instrument Guid: "..value
end

-- Dissect: Instrument Guid
cme_futures_settlements_sbe_v7_0.instrument_guid.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.instrument_guid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_settlements_sbe_v7_0.instrument_guid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.instrument_guid, range, value, display)

  return offset + length, value
end

-- Symbol
cme_futures_settlements_sbe_v7_0.symbol = {}

-- Size: Symbol
cme_futures_settlements_sbe_v7_0.symbol.size = 20

-- Display: Symbol
cme_futures_settlements_sbe_v7_0.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cme_futures_settlements_sbe_v7_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.symbol.size
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

  local display = cme_futures_settlements_sbe_v7_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Week
cme_futures_settlements_sbe_v7_0.week = {}

-- Size: Week
cme_futures_settlements_sbe_v7_0.week.size = 1

-- Display: Week
cme_futures_settlements_sbe_v7_0.week.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Week: No Value"
  end

  return "Week: "..value
end

-- Dissect: Week
cme_futures_settlements_sbe_v7_0.week.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.week.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.week.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.week, range, value, display)

  return offset + length, value
end

-- Day
cme_futures_settlements_sbe_v7_0.day = {}

-- Size: Day
cme_futures_settlements_sbe_v7_0.day.size = 1

-- Display: Day
cme_futures_settlements_sbe_v7_0.day.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Day: No Value"
  end

  return "Day: "..value
end

-- Dissect: Day
cme_futures_settlements_sbe_v7_0.day.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.day.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.day, range, value, display)

  return offset + length, value
end

-- Month
cme_futures_settlements_sbe_v7_0.month = {}

-- Size: Month
cme_futures_settlements_sbe_v7_0.month.size = 1

-- Display: Month
cme_futures_settlements_sbe_v7_0.month.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Month: No Value"
  end

  return "Month: "..value
end

-- Dissect: Month
cme_futures_settlements_sbe_v7_0.month.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.month.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.month, range, value, display)

  return offset + length, value
end

-- Year
cme_futures_settlements_sbe_v7_0.year = {}

-- Size: Year
cme_futures_settlements_sbe_v7_0.year.size = 2

-- Display: Year
cme_futures_settlements_sbe_v7_0.year.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Year: No Value"
  end

  return "Year: "..value
end

-- Dissect: Year
cme_futures_settlements_sbe_v7_0.year.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.year.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.year, range, value, display)

  return offset + length, value
end

-- Underlying Maturity Month Year
cme_futures_settlements_sbe_v7_0.underlying_maturity_month_year = {}

-- Calculate size of: Underlying Maturity Month Year
cme_futures_settlements_sbe_v7_0.underlying_maturity_month_year.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.year.size

  index = index + cme_futures_settlements_sbe_v7_0.month.size

  index = index + cme_futures_settlements_sbe_v7_0.day.size

  index = index + cme_futures_settlements_sbe_v7_0.week.size

  return index
end

-- Display: Underlying Maturity Month Year
cme_futures_settlements_sbe_v7_0.underlying_maturity_month_year.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Maturity Month Year
cme_futures_settlements_sbe_v7_0.underlying_maturity_month_year.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer Nullable
  index, year = cme_futures_settlements_sbe_v7_0.year.dissect(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer Nullable
  index, month = cme_futures_settlements_sbe_v7_0.month.dissect(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer Nullable
  index, day = cme_futures_settlements_sbe_v7_0.day.dissect(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer Nullable
  index, week = cme_futures_settlements_sbe_v7_0.week.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Maturity Month Year
cme_futures_settlements_sbe_v7_0.underlying_maturity_month_year.dissect = function(buffer, offset, packet, parent)
  if show.underlying_maturity_month_year then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.underlying_maturity_month_year, buffer(offset, 0))
    local index = cme_futures_settlements_sbe_v7_0.underlying_maturity_month_year.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_settlements_sbe_v7_0.underlying_maturity_month_year.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_settlements_sbe_v7_0.underlying_maturity_month_year.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Security Exchange
cme_futures_settlements_sbe_v7_0.underlying_security_exchange = {}

-- Size: Underlying Security Exchange
cme_futures_settlements_sbe_v7_0.underlying_security_exchange.size = 8

-- Display: Underlying Security Exchange
cme_futures_settlements_sbe_v7_0.underlying_security_exchange.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Security Exchange: No Value"
  end

  return "Underlying Security Exchange: "..value
end

-- Dissect: Underlying Security Exchange
cme_futures_settlements_sbe_v7_0.underlying_security_exchange.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.underlying_security_exchange.size
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

  local display = cme_futures_settlements_sbe_v7_0.underlying_security_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.underlying_security_exchange, range, value, display)

  return offset + length, value
end

-- Underlying Security Type
cme_futures_settlements_sbe_v7_0.underlying_security_type = {}

-- Size: Underlying Security Type
cme_futures_settlements_sbe_v7_0.underlying_security_type.size = 6

-- Display: Underlying Security Type
cme_futures_settlements_sbe_v7_0.underlying_security_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Security Type: No Value"
  end

  return "Underlying Security Type: "..value
end

-- Dissect: Underlying Security Type
cme_futures_settlements_sbe_v7_0.underlying_security_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.underlying_security_type.size
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

  local display = cme_futures_settlements_sbe_v7_0.underlying_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.underlying_security_type, range, value, display)

  return offset + length, value
end

-- Underlying Clearing Product Code
cme_futures_settlements_sbe_v7_0.underlying_clearing_product_code = {}

-- Size: Underlying Clearing Product Code
cme_futures_settlements_sbe_v7_0.underlying_clearing_product_code.size = 12

-- Display: Underlying Clearing Product Code
cme_futures_settlements_sbe_v7_0.underlying_clearing_product_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Clearing Product Code: No Value"
  end

  return "Underlying Clearing Product Code: "..value
end

-- Dissect: Underlying Clearing Product Code
cme_futures_settlements_sbe_v7_0.underlying_clearing_product_code.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.underlying_clearing_product_code.size
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

  local display = cme_futures_settlements_sbe_v7_0.underlying_clearing_product_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.underlying_clearing_product_code, range, value, display)

  return offset + length, value
end

-- Underlying Product Guid
cme_futures_settlements_sbe_v7_0.underlying_product_guid = {}

-- Size: Underlying Product Guid
cme_futures_settlements_sbe_v7_0.underlying_product_guid.size = 8

-- Display: Underlying Product Guid
cme_futures_settlements_sbe_v7_0.underlying_product_guid.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Underlying Product Guid: No Value"
  end

  return "Underlying Product Guid: "..value
end

-- Dissect: Underlying Product Guid
cme_futures_settlements_sbe_v7_0.underlying_product_guid.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.underlying_product_guid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_settlements_sbe_v7_0.underlying_product_guid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.underlying_product_guid, range, value, display)

  return offset + length, value
end

-- Strike Price
cme_futures_settlements_sbe_v7_0.strike_price = {}

-- Calculate size of: Strike Price
cme_futures_settlements_sbe_v7_0.strike_price.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.mantissa.size

  index = index + cme_futures_settlements_sbe_v7_0.exponent.size

  return index
end

-- Display: Strike Price
cme_futures_settlements_sbe_v7_0.strike_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strike Price
cme_futures_settlements_sbe_v7_0.strike_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_settlements_sbe_v7_0.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_settlements_sbe_v7_0.exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Price
cme_futures_settlements_sbe_v7_0.strike_price.dissect = function(buffer, offset, packet, parent)
  if show.strike_price then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.strike_price, buffer(offset, 0))
    local index = cme_futures_settlements_sbe_v7_0.strike_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_settlements_sbe_v7_0.strike_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_settlements_sbe_v7_0.strike_price.fields(buffer, offset, packet, parent)
  end
end

-- Put Or Call
cme_futures_settlements_sbe_v7_0.put_or_call = {}

-- Size: Put Or Call
cme_futures_settlements_sbe_v7_0.put_or_call.size = 1

-- Display: Put Or Call
cme_futures_settlements_sbe_v7_0.put_or_call.display = function(value)
  if value == 255 then
    return "Put Or Call: No Value"
  end
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
cme_futures_settlements_sbe_v7_0.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Maturity Month Year
cme_futures_settlements_sbe_v7_0.maturity_month_year = {}

-- Calculate size of: Maturity Month Year
cme_futures_settlements_sbe_v7_0.maturity_month_year.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.year.size

  index = index + cme_futures_settlements_sbe_v7_0.month.size

  index = index + cme_futures_settlements_sbe_v7_0.day.size

  index = index + cme_futures_settlements_sbe_v7_0.week.size

  return index
end

-- Display: Maturity Month Year
cme_futures_settlements_sbe_v7_0.maturity_month_year.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maturity Month Year
cme_futures_settlements_sbe_v7_0.maturity_month_year.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer Nullable
  index, year = cme_futures_settlements_sbe_v7_0.year.dissect(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer Nullable
  index, month = cme_futures_settlements_sbe_v7_0.month.dissect(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer Nullable
  index, day = cme_futures_settlements_sbe_v7_0.day.dissect(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer Nullable
  index, week = cme_futures_settlements_sbe_v7_0.week.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
cme_futures_settlements_sbe_v7_0.maturity_month_year.dissect = function(buffer, offset, packet, parent)
  if show.maturity_month_year then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.maturity_month_year, buffer(offset, 0))
    local index = cme_futures_settlements_sbe_v7_0.maturity_month_year.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_settlements_sbe_v7_0.maturity_month_year.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_settlements_sbe_v7_0.maturity_month_year.fields(buffer, offset, packet, parent)
  end
end

-- Security Exchange
cme_futures_settlements_sbe_v7_0.security_exchange = {}

-- Size: Security Exchange
cme_futures_settlements_sbe_v7_0.security_exchange.size = 8

-- Display: Security Exchange
cme_futures_settlements_sbe_v7_0.security_exchange.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange: No Value"
  end

  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
cme_futures_settlements_sbe_v7_0.security_exchange.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.security_exchange.size
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

  local display = cme_futures_settlements_sbe_v7_0.security_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Security Type
cme_futures_settlements_sbe_v7_0.security_type = {}

-- Size: Security Type
cme_futures_settlements_sbe_v7_0.security_type.size = 6

-- Display: Security Type
cme_futures_settlements_sbe_v7_0.security_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type: No Value"
  end

  return "Security Type: "..value
end

-- Dissect: Security Type
cme_futures_settlements_sbe_v7_0.security_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.security_type.size
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

  local display = cme_futures_settlements_sbe_v7_0.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.security_type, range, value, display)

  return offset + length, value
end

-- Clearing Product Code
cme_futures_settlements_sbe_v7_0.clearing_product_code = {}

-- Size: Clearing Product Code
cme_futures_settlements_sbe_v7_0.clearing_product_code.size = 12

-- Display: Clearing Product Code
cme_futures_settlements_sbe_v7_0.clearing_product_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Product Code: No Value"
  end

  return "Clearing Product Code: "..value
end

-- Dissect: Clearing Product Code
cme_futures_settlements_sbe_v7_0.clearing_product_code.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.clearing_product_code.size
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

  local display = cme_futures_settlements_sbe_v7_0.clearing_product_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.clearing_product_code, range, value, display)

  return offset + length, value
end

-- Product Guid
cme_futures_settlements_sbe_v7_0.product_guid = {}

-- Size: Product Guid
cme_futures_settlements_sbe_v7_0.product_guid.size = 8

-- Display: Product Guid
cme_futures_settlements_sbe_v7_0.product_guid.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Product Guid: No Value"
  end

  return "Product Guid: "..value
end

-- Dissect: Product Guid
cme_futures_settlements_sbe_v7_0.product_guid.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.product_guid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_settlements_sbe_v7_0.product_guid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.product_guid, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh High Low Group
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_group = {}

-- Calculate size of: M D Incremental Refresh High Low Group
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.product_guid.size

  index = index + cme_futures_settlements_sbe_v7_0.clearing_product_code.size

  index = index + cme_futures_settlements_sbe_v7_0.security_type.size

  index = index + cme_futures_settlements_sbe_v7_0.security_exchange.size

  index = index + cme_futures_settlements_sbe_v7_0.maturity_month_year.size(buffer, offset + index)

  index = index + cme_futures_settlements_sbe_v7_0.put_or_call.size

  index = index + cme_futures_settlements_sbe_v7_0.strike_price.size(buffer, offset + index)

  index = index + cme_futures_settlements_sbe_v7_0.underlying_product_guid.size

  index = index + cme_futures_settlements_sbe_v7_0.underlying_clearing_product_code.size

  index = index + cme_futures_settlements_sbe_v7_0.underlying_security_type.size

  index = index + cme_futures_settlements_sbe_v7_0.underlying_security_exchange.size

  index = index + cme_futures_settlements_sbe_v7_0.underlying_maturity_month_year.size(buffer, offset + index)

  index = index + cme_futures_settlements_sbe_v7_0.symbol.size

  index = index + cme_futures_settlements_sbe_v7_0.instrument_guid.size

  index = index + cme_futures_settlements_sbe_v7_0.security_id.size

  index = index + cme_futures_settlements_sbe_v7_0.low_px.size(buffer, offset + index)

  index = index + cme_futures_settlements_sbe_v7_0.low_px_ind.size

  index = index + cme_futures_settlements_sbe_v7_0.high_px.size(buffer, offset + index)

  index = index + cme_futures_settlements_sbe_v7_0.high_px_ind.size

  index = index + cme_futures_settlements_sbe_v7_0.trading_reference_date.size

  return index
end

-- Display: M D Incremental Refresh High Low Group
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh High Low Group
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_high_low_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh High Low Group Index
  if m_d_incremental_refresh_high_low_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_high_low_group_index, m_d_incremental_refresh_high_low_group_index)
    iteration:set_generated()
  end

  -- Product Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, product_guid = cme_futures_settlements_sbe_v7_0.product_guid.dissect(buffer, index, packet, parent)

  -- Clearing Product Code: 12 Byte Ascii String
  index, clearing_product_code = cme_futures_settlements_sbe_v7_0.clearing_product_code.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_settlements_sbe_v7_0.security_type.dissect(buffer, index, packet, parent)

  -- Security Exchange: 8 Byte Ascii String
  index, security_exchange = cme_futures_settlements_sbe_v7_0.security_exchange.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_settlements_sbe_v7_0.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, put_or_call = cme_futures_settlements_sbe_v7_0.put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: Struct of 2 fields
  index, strike_price = cme_futures_settlements_sbe_v7_0.strike_price.dissect(buffer, index, packet, parent)

  -- Underlying Product Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_product_guid = cme_futures_settlements_sbe_v7_0.underlying_product_guid.dissect(buffer, index, packet, parent)

  -- Underlying Clearing Product Code: 12 Byte Ascii String
  index, underlying_clearing_product_code = cme_futures_settlements_sbe_v7_0.underlying_clearing_product_code.dissect(buffer, index, packet, parent)

  -- Underlying Security Type: 6 Byte Ascii String
  index, underlying_security_type = cme_futures_settlements_sbe_v7_0.underlying_security_type.dissect(buffer, index, packet, parent)

  -- Underlying Security Exchange: 8 Byte Ascii String
  index, underlying_security_exchange = cme_futures_settlements_sbe_v7_0.underlying_security_exchange.dissect(buffer, index, packet, parent)

  -- Underlying Maturity Month Year: Struct of 4 fields
  index, underlying_maturity_month_year = cme_futures_settlements_sbe_v7_0.underlying_maturity_month_year.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_settlements_sbe_v7_0.symbol.dissect(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = cme_futures_settlements_sbe_v7_0.instrument_guid.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, security_id = cme_futures_settlements_sbe_v7_0.security_id.dissect(buffer, index, packet, parent)

  -- Low Px: Struct of 2 fields
  index, low_px = cme_futures_settlements_sbe_v7_0.low_px.dissect(buffer, index, packet, parent)

  -- Low Px Ind: 1 Byte Ascii String Enum with 3 values
  index, low_px_ind = cme_futures_settlements_sbe_v7_0.low_px_ind.dissect(buffer, index, packet, parent)

  -- High Px: Struct of 2 fields
  index, high_px = cme_futures_settlements_sbe_v7_0.high_px.dissect(buffer, index, packet, parent)

  -- High Px Ind: 1 Byte Ascii String Enum with 3 values
  index, high_px_ind = cme_futures_settlements_sbe_v7_0.high_px_ind.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_settlements_sbe_v7_0.trading_reference_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh High Low Group
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_high_low_group_index)
  if show.m_d_incremental_refresh_high_low_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_high_low_group, buffer(offset, 0))
    local index = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_high_low_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_high_low_group_index)
  end
end

-- Num In Group uint 8
cme_futures_settlements_sbe_v7_0.num_in_group_uint_8 = {}

-- Size: Num In Group uint 8
cme_futures_settlements_sbe_v7_0.num_in_group_uint_8.size = 1

-- Display: Num In Group uint 8
cme_futures_settlements_sbe_v7_0.num_in_group_uint_8.display = function(value)
  return "Num In Group uint 8: "..value
end

-- Dissect: Num In Group uint 8
cme_futures_settlements_sbe_v7_0.num_in_group_uint_8.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.num_in_group_uint_8.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.num_in_group_uint_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.num_in_group_uint_8, range, value, display)

  return offset + length, value
end

-- Block Length
cme_futures_settlements_sbe_v7_0.block_length = {}

-- Size: Block Length
cme_futures_settlements_sbe_v7_0.block_length.size = 2

-- Display: Block Length
cme_futures_settlements_sbe_v7_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_futures_settlements_sbe_v7_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Group Size
cme_futures_settlements_sbe_v7_0.group_size = {}

-- Calculate size of: Group Size
cme_futures_settlements_sbe_v7_0.group_size.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.block_length.size

  index = index + cme_futures_settlements_sbe_v7_0.num_in_group_uint_8.size

  return index
end

-- Display: Group Size
cme_futures_settlements_sbe_v7_0.group_size.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
cme_futures_settlements_sbe_v7_0.group_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_settlements_sbe_v7_0.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group uint 8: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group_uint_8 = cme_futures_settlements_sbe_v7_0.num_in_group_uint_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_futures_settlements_sbe_v7_0.group_size.dissect = function(buffer, offset, packet, parent)
  if show.group_size then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.group_size, buffer(offset, 0))
    local index = cme_futures_settlements_sbe_v7_0.group_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_settlements_sbe_v7_0.group_size.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_settlements_sbe_v7_0.group_size.fields(buffer, offset, packet, parent)
  end
end

-- M D Incremental Refresh High Low Groups
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_groups = {}

-- Calculate size of: M D Incremental Refresh High Low Groups
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_high_low_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_high_low_group_count * 142

  return index
end

-- Display: M D Incremental Refresh High Low Groups
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh High Low Groups
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_settlements_sbe_v7_0.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh High Low Group
  for m_d_incremental_refresh_high_low_group_index = 1, num_in_group_uint_8 do
    index, m_d_incremental_refresh_high_low_group = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_high_low_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh High Low Groups
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_high_low_groups then
    local length = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_high_low_groups, range, display)
  end

  return cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_groups.fields(buffer, offset, packet, parent)
end

-- Transact Time
cme_futures_settlements_sbe_v7_0.transact_time = {}

-- Size: Transact Time
cme_futures_settlements_sbe_v7_0.transact_time.size = 8

-- Display: Transact Time
cme_futures_settlements_sbe_v7_0.transact_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
cme_futures_settlements_sbe_v7_0.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_settlements_sbe_v7_0.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Md Incremental Refresh High Low
cme_futures_settlements_sbe_v7_0.md_incremental_refresh_high_low = {}

-- Calculate size of: Md Incremental Refresh High Low
cme_futures_settlements_sbe_v7_0.md_incremental_refresh_high_low.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.transact_time.size

  index = index + cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh High Low
cme_futures_settlements_sbe_v7_0.md_incremental_refresh_high_low.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh High Low
cme_futures_settlements_sbe_v7_0.md_incremental_refresh_high_low.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_settlements_sbe_v7_0.transact_time.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh High Low Groups: Struct of 2 fields
  index, m_d_incremental_refresh_high_low_groups = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_high_low_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh High Low
cme_futures_settlements_sbe_v7_0.md_incremental_refresh_high_low.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_high_low then
    local length = cme_futures_settlements_sbe_v7_0.md_incremental_refresh_high_low.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_settlements_sbe_v7_0.md_incremental_refresh_high_low.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.md_incremental_refresh_high_low, range, display)
  end

  return cme_futures_settlements_sbe_v7_0.md_incremental_refresh_high_low.fields(buffer, offset, packet, parent)
end

-- Open Close Settl Flag
cme_futures_settlements_sbe_v7_0.open_close_settl_flag = {}

-- Size: Open Close Settl Flag
cme_futures_settlements_sbe_v7_0.open_close_settl_flag.size = 1

-- Display: Open Close Settl Flag
cme_futures_settlements_sbe_v7_0.open_close_settl_flag.display = function(value)
  if value == 3 then
    return "Open Close Settl Flag: Estimated (3)"
  end
  if value == 4 then
    return "Open Close Settl Flag: Actual Adjusted (4)"
  end

  return "Open Close Settl Flag: Unknown("..value..")"
end

-- Dissect: Open Close Settl Flag
cme_futures_settlements_sbe_v7_0.open_close_settl_flag.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.open_close_settl_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.open_close_settl_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.open_close_settl_flag, range, value, display)

  return offset + length, value
end

-- Open Interest Qty
cme_futures_settlements_sbe_v7_0.open_interest_qty = {}

-- Size: Open Interest Qty
cme_futures_settlements_sbe_v7_0.open_interest_qty.size = 4

-- Display: Open Interest Qty
cme_futures_settlements_sbe_v7_0.open_interest_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Open Interest Qty: No Value"
  end

  return "Open Interest Qty: "..value
end

-- Dissect: Open Interest Qty
cme_futures_settlements_sbe_v7_0.open_interest_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.open_interest_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.open_interest_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.open_interest_qty, range, value, display)

  return offset + length, value
end

-- Cleared Volume
cme_futures_settlements_sbe_v7_0.cleared_volume = {}

-- Size: Cleared Volume
cme_futures_settlements_sbe_v7_0.cleared_volume.size = 4

-- Display: Cleared Volume
cme_futures_settlements_sbe_v7_0.cleared_volume.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Cleared Volume: No Value"
  end

  return "Cleared Volume: "..value
end

-- Dissect: Cleared Volume
cme_futures_settlements_sbe_v7_0.cleared_volume.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.cleared_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.cleared_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.cleared_volume, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Voi Group
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_group = {}

-- Calculate size of: M D Incremental Refresh Voi Group
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.product_guid.size

  index = index + cme_futures_settlements_sbe_v7_0.clearing_product_code.size

  index = index + cme_futures_settlements_sbe_v7_0.security_type.size

  index = index + cme_futures_settlements_sbe_v7_0.security_exchange.size

  index = index + cme_futures_settlements_sbe_v7_0.maturity_month_year.size(buffer, offset + index)

  index = index + cme_futures_settlements_sbe_v7_0.put_or_call.size

  index = index + cme_futures_settlements_sbe_v7_0.strike_price.size(buffer, offset + index)

  index = index + cme_futures_settlements_sbe_v7_0.underlying_product_guid.size

  index = index + cme_futures_settlements_sbe_v7_0.underlying_clearing_product_code.size

  index = index + cme_futures_settlements_sbe_v7_0.underlying_security_type.size

  index = index + cme_futures_settlements_sbe_v7_0.underlying_security_exchange.size

  index = index + cme_futures_settlements_sbe_v7_0.underlying_maturity_month_year.size(buffer, offset + index)

  index = index + cme_futures_settlements_sbe_v7_0.symbol.size

  index = index + cme_futures_settlements_sbe_v7_0.instrument_guid.size

  index = index + cme_futures_settlements_sbe_v7_0.security_id.size

  index = index + cme_futures_settlements_sbe_v7_0.cleared_volume.size

  index = index + cme_futures_settlements_sbe_v7_0.open_interest_qty.size

  index = index + cme_futures_settlements_sbe_v7_0.open_close_settl_flag.size

  index = index + cme_futures_settlements_sbe_v7_0.trading_reference_date.size

  return index
end

-- Display: M D Incremental Refresh Voi Group
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Voi Group
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_voi_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Voi Group Index
  if m_d_incremental_refresh_voi_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_voi_group_index, m_d_incremental_refresh_voi_group_index)
    iteration:set_generated()
  end

  -- Product Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, product_guid = cme_futures_settlements_sbe_v7_0.product_guid.dissect(buffer, index, packet, parent)

  -- Clearing Product Code: 12 Byte Ascii String
  index, clearing_product_code = cme_futures_settlements_sbe_v7_0.clearing_product_code.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_settlements_sbe_v7_0.security_type.dissect(buffer, index, packet, parent)

  -- Security Exchange: 8 Byte Ascii String
  index, security_exchange = cme_futures_settlements_sbe_v7_0.security_exchange.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_settlements_sbe_v7_0.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, put_or_call = cme_futures_settlements_sbe_v7_0.put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: Struct of 2 fields
  index, strike_price = cme_futures_settlements_sbe_v7_0.strike_price.dissect(buffer, index, packet, parent)

  -- Underlying Product Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_product_guid = cme_futures_settlements_sbe_v7_0.underlying_product_guid.dissect(buffer, index, packet, parent)

  -- Underlying Clearing Product Code: 12 Byte Ascii String
  index, underlying_clearing_product_code = cme_futures_settlements_sbe_v7_0.underlying_clearing_product_code.dissect(buffer, index, packet, parent)

  -- Underlying Security Type: 6 Byte Ascii String
  index, underlying_security_type = cme_futures_settlements_sbe_v7_0.underlying_security_type.dissect(buffer, index, packet, parent)

  -- Underlying Security Exchange: 8 Byte Ascii String
  index, underlying_security_exchange = cme_futures_settlements_sbe_v7_0.underlying_security_exchange.dissect(buffer, index, packet, parent)

  -- Underlying Maturity Month Year: Struct of 4 fields
  index, underlying_maturity_month_year = cme_futures_settlements_sbe_v7_0.underlying_maturity_month_year.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_settlements_sbe_v7_0.symbol.dissect(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = cme_futures_settlements_sbe_v7_0.instrument_guid.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, security_id = cme_futures_settlements_sbe_v7_0.security_id.dissect(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Unsigned Fixed Width Integer Nullable
  index, cleared_volume = cme_futures_settlements_sbe_v7_0.cleared_volume.dissect(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, open_interest_qty = cme_futures_settlements_sbe_v7_0.open_interest_qty.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, open_close_settl_flag = cme_futures_settlements_sbe_v7_0.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_settlements_sbe_v7_0.trading_reference_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Voi Group
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_voi_group_index)
  if show.m_d_incremental_refresh_voi_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_voi_group, buffer(offset, 0))
    local index = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_voi_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_voi_group_index)
  end
end

-- M D Incremental Refresh Voi Groups
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_groups = {}

-- Calculate size of: M D Incremental Refresh Voi Groups
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_voi_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_voi_group_count * 131

  return index
end

-- Display: M D Incremental Refresh Voi Groups
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Voi Groups
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_settlements_sbe_v7_0.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Voi Group
  for m_d_incremental_refresh_voi_group_index = 1, num_in_group_uint_8 do
    index, m_d_incremental_refresh_voi_group = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_voi_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Voi Groups
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_voi_groups then
    local length = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_voi_groups, range, display)
  end

  return cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Voi
cme_futures_settlements_sbe_v7_0.md_incremental_refresh_voi = {}

-- Calculate size of: Md Incremental Refresh Voi
cme_futures_settlements_sbe_v7_0.md_incremental_refresh_voi.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.transact_time.size

  index = index + cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Voi
cme_futures_settlements_sbe_v7_0.md_incremental_refresh_voi.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Voi
cme_futures_settlements_sbe_v7_0.md_incremental_refresh_voi.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_settlements_sbe_v7_0.transact_time.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Voi Groups: Struct of 2 fields
  index, m_d_incremental_refresh_voi_groups = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_voi_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Voi
cme_futures_settlements_sbe_v7_0.md_incremental_refresh_voi.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_voi then
    local length = cme_futures_settlements_sbe_v7_0.md_incremental_refresh_voi.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_settlements_sbe_v7_0.md_incremental_refresh_voi.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.md_incremental_refresh_voi, range, display)
  end

  return cme_futures_settlements_sbe_v7_0.md_incremental_refresh_voi.fields(buffer, offset, packet, parent)
end

-- Md Statistic Desc
cme_futures_settlements_sbe_v7_0.md_statistic_desc = {}

-- Size: Md Statistic Desc
cme_futures_settlements_sbe_v7_0.md_statistic_desc.size = 40

-- Display: Md Statistic Desc
cme_futures_settlements_sbe_v7_0.md_statistic_desc.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Statistic Desc: No Value"
  end

  return "Md Statistic Desc: "..value
end

-- Dissect: Md Statistic Desc
cme_futures_settlements_sbe_v7_0.md_statistic_desc.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.md_statistic_desc.size
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

  local display = cme_futures_settlements_sbe_v7_0.md_statistic_desc.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.md_statistic_desc, range, value, display)

  return offset + length, value
end

-- Final Daily
cme_futures_settlements_sbe_v7_0.final_daily = {}

-- Actual
cme_futures_settlements_sbe_v7_0.actual = {}

-- Rounded
cme_futures_settlements_sbe_v7_0.rounded = {}

-- Intraday
cme_futures_settlements_sbe_v7_0.intraday = {}

-- Cabinet
cme_futures_settlements_sbe_v7_0.cabinet = {}

-- Reserved Bits
cme_futures_settlements_sbe_v7_0.reserved_bits = {}

-- Null Value
cme_futures_settlements_sbe_v7_0.null_value = {}

-- Settl Price Type
cme_futures_settlements_sbe_v7_0.settl_price_type = {}

-- Size: Settl Price Type
cme_futures_settlements_sbe_v7_0.settl_price_type.size = 1

-- Display: Settl Price Type
cme_futures_settlements_sbe_v7_0.settl_price_type.display = function(buffer, packet, parent)
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
cme_futures_settlements_sbe_v7_0.settl_price_type.bits = function(buffer, offset, packet, parent)

  -- Null Value: 1 Bit
  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.null_value, buffer(offset, 1))

  -- Reserved Bits: 2 Bit
  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.reserved_bits, buffer(offset, 1))

  -- Cabinet: 1 Bit
  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.cabinet, buffer(offset, 1))

  -- Intraday: 1 Bit
  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.intraday, buffer(offset, 1))

  -- Rounded: 1 Bit
  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.rounded, buffer(offset, 1))

  -- Actual: 1 Bit
  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.actual, buffer(offset, 1))

  -- Final Daily: 1 Bit
  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.final_daily, buffer(offset, 1))
end

-- Dissect: Settl Price Type
cme_futures_settlements_sbe_v7_0.settl_price_type.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cme_futures_settlements_sbe_v7_0.settl_price_type.display(range, packet, parent)
  local element = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.settl_price_type, range, display)

  if show.settl_price_type then
    cme_futures_settlements_sbe_v7_0.settl_price_type.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Md Entry Px
cme_futures_settlements_sbe_v7_0.md_entry_px = {}

-- Size: Md Entry Px
cme_futures_settlements_sbe_v7_0.md_entry_px.size = 8

-- Display: Md Entry Px
cme_futures_settlements_sbe_v7_0.md_entry_px.display = function(raw, value)
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
cme_futures_settlements_sbe_v7_0.md_entry_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.md_entry_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.md_entry_px(raw)
  local display = cme_futures_settlements_sbe_v7_0.md_entry_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Formatted Last Px
cme_futures_settlements_sbe_v7_0.formatted_last_px = {}

-- Calculate size of: Formatted Last Px
cme_futures_settlements_sbe_v7_0.formatted_last_px.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.mantissa.size

  index = index + cme_futures_settlements_sbe_v7_0.exponent.size

  return index
end

-- Display: Formatted Last Px
cme_futures_settlements_sbe_v7_0.formatted_last_px.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Formatted Last Px
cme_futures_settlements_sbe_v7_0.formatted_last_px.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_settlements_sbe_v7_0.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_settlements_sbe_v7_0.exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Formatted Last Px
cme_futures_settlements_sbe_v7_0.formatted_last_px.dissect = function(buffer, offset, packet, parent)
  if show.formatted_last_px then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.formatted_last_px, buffer(offset, 0))
    local index = cme_futures_settlements_sbe_v7_0.formatted_last_px.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_settlements_sbe_v7_0.formatted_last_px.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_settlements_sbe_v7_0.formatted_last_px.fields(buffer, offset, packet, parent)
  end
end

-- Md Entry Type
cme_futures_settlements_sbe_v7_0.md_entry_type = {}

-- Size: Md Entry Type
cme_futures_settlements_sbe_v7_0.md_entry_type.size = 1

-- Display: Md Entry Type
cme_futures_settlements_sbe_v7_0.md_entry_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Entry Type: No Value"
  end

  return "Md Entry Type: "..value
end

-- Dissect: Md Entry Type
cme_futures_settlements_sbe_v7_0.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.md_entry_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_settlements_sbe_v7_0.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Md Update Action
cme_futures_settlements_sbe_v7_0.md_update_action = {}

-- Size: Md Update Action
cme_futures_settlements_sbe_v7_0.md_update_action.size = 1

-- Display: Md Update Action
cme_futures_settlements_sbe_v7_0.md_update_action.display = function(value)
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
cme_futures_settlements_sbe_v7_0.md_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.md_update_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.md_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Settle Group
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_group = {}

-- Calculate size of: M D Incremental Refresh Settle Group
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.md_update_action.size

  index = index + cme_futures_settlements_sbe_v7_0.md_entry_type.size

  index = index + cme_futures_settlements_sbe_v7_0.product_guid.size

  index = index + cme_futures_settlements_sbe_v7_0.clearing_product_code.size

  index = index + cme_futures_settlements_sbe_v7_0.security_type.size

  index = index + cme_futures_settlements_sbe_v7_0.security_exchange.size

  index = index + cme_futures_settlements_sbe_v7_0.maturity_month_year.size(buffer, offset + index)

  index = index + cme_futures_settlements_sbe_v7_0.put_or_call.size

  index = index + cme_futures_settlements_sbe_v7_0.strike_price.size(buffer, offset + index)

  index = index + cme_futures_settlements_sbe_v7_0.underlying_product_guid.size

  index = index + cme_futures_settlements_sbe_v7_0.underlying_clearing_product_code.size

  index = index + cme_futures_settlements_sbe_v7_0.underlying_security_type.size

  index = index + cme_futures_settlements_sbe_v7_0.underlying_security_exchange.size

  index = index + cme_futures_settlements_sbe_v7_0.underlying_maturity_month_year.size(buffer, offset + index)

  index = index + cme_futures_settlements_sbe_v7_0.symbol.size

  index = index + cme_futures_settlements_sbe_v7_0.instrument_guid.size

  index = index + cme_futures_settlements_sbe_v7_0.security_id.size

  index = index + cme_futures_settlements_sbe_v7_0.formatted_last_px.size(buffer, offset + index)

  index = index + cme_futures_settlements_sbe_v7_0.md_entry_px.size

  index = index + cme_futures_settlements_sbe_v7_0.settl_price_type.size

  index = index + cme_futures_settlements_sbe_v7_0.trading_reference_date.size

  index = index + cme_futures_settlements_sbe_v7_0.md_statistic_desc.size

  return index
end

-- Display: M D Incremental Refresh Settle Group
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Settle Group
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_settle_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Settle Group Index
  if m_d_incremental_refresh_settle_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_settle_group_index, m_d_incremental_refresh_settle_group_index)
    iteration:set_generated()
  end

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, md_update_action = cme_futures_settlements_sbe_v7_0.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String
  index, md_entry_type = cme_futures_settlements_sbe_v7_0.md_entry_type.dissect(buffer, index, packet, parent)

  -- Product Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, product_guid = cme_futures_settlements_sbe_v7_0.product_guid.dissect(buffer, index, packet, parent)

  -- Clearing Product Code: 12 Byte Ascii String
  index, clearing_product_code = cme_futures_settlements_sbe_v7_0.clearing_product_code.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_settlements_sbe_v7_0.security_type.dissect(buffer, index, packet, parent)

  -- Security Exchange: 8 Byte Ascii String
  index, security_exchange = cme_futures_settlements_sbe_v7_0.security_exchange.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_settlements_sbe_v7_0.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, put_or_call = cme_futures_settlements_sbe_v7_0.put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: Struct of 2 fields
  index, strike_price = cme_futures_settlements_sbe_v7_0.strike_price.dissect(buffer, index, packet, parent)

  -- Underlying Product Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_product_guid = cme_futures_settlements_sbe_v7_0.underlying_product_guid.dissect(buffer, index, packet, parent)

  -- Underlying Clearing Product Code: 12 Byte Ascii String
  index, underlying_clearing_product_code = cme_futures_settlements_sbe_v7_0.underlying_clearing_product_code.dissect(buffer, index, packet, parent)

  -- Underlying Security Type: 6 Byte Ascii String
  index, underlying_security_type = cme_futures_settlements_sbe_v7_0.underlying_security_type.dissect(buffer, index, packet, parent)

  -- Underlying Security Exchange: 8 Byte Ascii String
  index, underlying_security_exchange = cme_futures_settlements_sbe_v7_0.underlying_security_exchange.dissect(buffer, index, packet, parent)

  -- Underlying Maturity Month Year: Struct of 4 fields
  index, underlying_maturity_month_year = cme_futures_settlements_sbe_v7_0.underlying_maturity_month_year.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_settlements_sbe_v7_0.symbol.dissect(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = cme_futures_settlements_sbe_v7_0.instrument_guid.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, security_id = cme_futures_settlements_sbe_v7_0.security_id.dissect(buffer, index, packet, parent)

  -- Formatted Last Px: Struct of 2 fields
  index, formatted_last_px = cme_futures_settlements_sbe_v7_0.formatted_last_px.dissect(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px = cme_futures_settlements_sbe_v7_0.md_entry_px.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 7 fields
  index, settl_price_type = cme_futures_settlements_sbe_v7_0.settl_price_type.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_settlements_sbe_v7_0.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Md Statistic Desc: 40 Byte Ascii String
  index, md_statistic_desc = cme_futures_settlements_sbe_v7_0.md_statistic_desc.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Settle Group
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_settle_group_index)
  if show.m_d_incremental_refresh_settle_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_settle_group, buffer(offset, 0))
    local index = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_settle_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_settle_group_index)
  end
end

-- M D Incremental Refresh Settle Groups
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_groups = {}

-- Calculate size of: M D Incremental Refresh Settle Groups
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_settle_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_settle_group_count * 182

  return index
end

-- Display: M D Incremental Refresh Settle Groups
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Settle Groups
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_settlements_sbe_v7_0.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 8
  local num_in_group_uint_8 = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Settle Group
  for m_d_incremental_refresh_settle_group_index = 1, num_in_group_uint_8 do
    index, m_d_incremental_refresh_settle_group = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_settle_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Settle Groups
cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_settle_groups then
    local length = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.m_d_incremental_refresh_settle_groups, range, display)
  end

  return cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Settle
cme_futures_settlements_sbe_v7_0.md_incremental_refresh_settle = {}

-- Calculate size of: Md Incremental Refresh Settle
cme_futures_settlements_sbe_v7_0.md_incremental_refresh_settle.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.transact_time.size

  index = index + cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Settle
cme_futures_settlements_sbe_v7_0.md_incremental_refresh_settle.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Settle
cme_futures_settlements_sbe_v7_0.md_incremental_refresh_settle.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_settlements_sbe_v7_0.transact_time.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Settle Groups: Struct of 2 fields
  index, m_d_incremental_refresh_settle_groups = cme_futures_settlements_sbe_v7_0.m_d_incremental_refresh_settle_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Settle
cme_futures_settlements_sbe_v7_0.md_incremental_refresh_settle.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_settle then
    local length = cme_futures_settlements_sbe_v7_0.md_incremental_refresh_settle.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_settlements_sbe_v7_0.md_incremental_refresh_settle.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.md_incremental_refresh_settle, range, display)
  end

  return cme_futures_settlements_sbe_v7_0.md_incremental_refresh_settle.fields(buffer, offset, packet, parent)
end

-- Payload
cme_futures_settlements_sbe_v7_0.payload = {}

-- Calculate runtime size of: Payload
cme_futures_settlements_sbe_v7_0.payload.size = function(buffer, offset, template_id)
  -- Size of Md Incremental Refresh Settle
  if template_id == 401 then
    return cme_futures_settlements_sbe_v7_0.md_incremental_refresh_settle.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Voi
  if template_id == 402 then
    return cme_futures_settlements_sbe_v7_0.md_incremental_refresh_voi.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh High Low
  if template_id == 403 then
    return cme_futures_settlements_sbe_v7_0.md_incremental_refresh_high_low.size(buffer, offset)
  end
  -- Size of Admin Heartbeat
  if template_id == 407 then
    return 0
  end

  return 0
end

-- Display: Payload
cme_futures_settlements_sbe_v7_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cme_futures_settlements_sbe_v7_0.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Md Incremental Refresh Settle
  if template_id == 401 then
    return cme_futures_settlements_sbe_v7_0.md_incremental_refresh_settle.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Voi
  if template_id == 402 then
    return cme_futures_settlements_sbe_v7_0.md_incremental_refresh_voi.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh High Low
  if template_id == 403 then
    return cme_futures_settlements_sbe_v7_0.md_incremental_refresh_high_low.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Admin Heartbeat
  if template_id == 407 then
  end

  return offset
end

-- Dissect: Payload
cme_futures_settlements_sbe_v7_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return cme_futures_settlements_sbe_v7_0.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = cme_futures_settlements_sbe_v7_0.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cme_futures_settlements_sbe_v7_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.payload, range, display)

  return cme_futures_settlements_sbe_v7_0.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
cme_futures_settlements_sbe_v7_0.version = {}

-- Size: Version
cme_futures_settlements_sbe_v7_0.version.size = 2

-- Display: Version
cme_futures_settlements_sbe_v7_0.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
cme_futures_settlements_sbe_v7_0.version.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
cme_futures_settlements_sbe_v7_0.schema_id = {}

-- Size: Schema Id
cme_futures_settlements_sbe_v7_0.schema_id.size = 2

-- Display: Schema Id
cme_futures_settlements_sbe_v7_0.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
cme_futures_settlements_sbe_v7_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
cme_futures_settlements_sbe_v7_0.template_id = {}

-- Size: Template Id
cme_futures_settlements_sbe_v7_0.template_id.size = 2

-- Display: Template Id
cme_futures_settlements_sbe_v7_0.template_id.display = function(value)
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
cme_futures_settlements_sbe_v7_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Message Header
cme_futures_settlements_sbe_v7_0.message_header = {}

-- Calculate size of: Message Header
cme_futures_settlements_sbe_v7_0.message_header.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.block_length.size

  index = index + cme_futures_settlements_sbe_v7_0.template_id.size

  index = index + cme_futures_settlements_sbe_v7_0.schema_id.size

  index = index + cme_futures_settlements_sbe_v7_0.version.size

  return index
end

-- Display: Message Header
cme_futures_settlements_sbe_v7_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_futures_settlements_sbe_v7_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_settlements_sbe_v7_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, template_id = cme_futures_settlements_sbe_v7_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = cme_futures_settlements_sbe_v7_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = cme_futures_settlements_sbe_v7_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_futures_settlements_sbe_v7_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.message_header, buffer(offset, 0))
    local index = cme_futures_settlements_sbe_v7_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_settlements_sbe_v7_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_settlements_sbe_v7_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Size
cme_futures_settlements_sbe_v7_0.message_size = {}

-- Size: Message Size
cme_futures_settlements_sbe_v7_0.message_size.size = 2

-- Display: Message Size
cme_futures_settlements_sbe_v7_0.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_futures_settlements_sbe_v7_0.message_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message
cme_futures_settlements_sbe_v7_0.message = {}

-- Calculate size of: Message
cme_futures_settlements_sbe_v7_0.message.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.message_size.size

  index = index + cme_futures_settlements_sbe_v7_0.message_header.size(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + cme_futures_settlements_sbe_v7_0.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
cme_futures_settlements_sbe_v7_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cme_futures_settlements_sbe_v7_0.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_futures_settlements_sbe_v7_0.message_size.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_futures_settlements_sbe_v7_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 4 branches
  index = cme_futures_settlements_sbe_v7_0.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cme_futures_settlements_sbe_v7_0.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = cme_futures_settlements_sbe_v7_0.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_settlements_sbe_v7_0.message.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.message, range, display)
  end

  return cme_futures_settlements_sbe_v7_0.message.fields(buffer, offset, packet, parent)
end

-- Sending Time
cme_futures_settlements_sbe_v7_0.sending_time = {}

-- Size: Sending Time
cme_futures_settlements_sbe_v7_0.sending_time.size = 8

-- Display: Sending Time
cme_futures_settlements_sbe_v7_0.sending_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
cme_futures_settlements_sbe_v7_0.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_settlements_sbe_v7_0.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
cme_futures_settlements_sbe_v7_0.message_sequence_number = {}

-- Size: Message Sequence Number
cme_futures_settlements_sbe_v7_0.message_sequence_number.size = 4

-- Display: Message Sequence Number
cme_futures_settlements_sbe_v7_0.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
cme_futures_settlements_sbe_v7_0.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_settlements_sbe_v7_0.message_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_settlements_sbe_v7_0.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Binary Packet Header
cme_futures_settlements_sbe_v7_0.binary_packet_header = {}

-- Calculate size of: Binary Packet Header
cme_futures_settlements_sbe_v7_0.binary_packet_header.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_settlements_sbe_v7_0.message_sequence_number.size

  index = index + cme_futures_settlements_sbe_v7_0.sending_time.size

  return index
end

-- Display: Binary Packet Header
cme_futures_settlements_sbe_v7_0.binary_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Packet Header
cme_futures_settlements_sbe_v7_0.binary_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = cme_futures_settlements_sbe_v7_0.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_futures_settlements_sbe_v7_0.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
cme_futures_settlements_sbe_v7_0.binary_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.binary_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_settlements_sbe_v7_0.fields.binary_packet_header, buffer(offset, 0))
    local index = cme_futures_settlements_sbe_v7_0.binary_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_settlements_sbe_v7_0.binary_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_settlements_sbe_v7_0.binary_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cme_futures_settlements_sbe_v7_0.packet = {}

-- Dissect Packet
cme_futures_settlements_sbe_v7_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = cme_futures_settlements_sbe_v7_0.binary_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index, message = cme_futures_settlements_sbe_v7_0.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cme_futures_settlements_sbe_v7_0.init()
end

-- Dissector for Cme Futures Settlements Sbe 7.0
function omi_cme_futures_settlements_sbe_v7_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cme_futures_settlements_sbe_v7_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_cme_futures_settlements_sbe_v7_0, buffer(), omi_cme_futures_settlements_sbe_v7_0.description, "("..buffer:len().." Bytes)")
  return cme_futures_settlements_sbe_v7_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cme_futures_settlements_sbe_v7_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_cme_futures_settlements_sbe_v7_0_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(18, 2):le_uint()

  if value == 7 then
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

-- Dissector Heuristic for Cme Futures Settlements Sbe 7.0
local function omi_cme_futures_settlements_sbe_v7_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_cme_futures_settlements_sbe_v7_0_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_futures_settlements_sbe_v7_0
  omi_cme_futures_settlements_sbe_v7_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme Futures Settlements Sbe 7.0
omi_cme_futures_settlements_sbe_v7_0:register_heuristic("udp", omi_cme_futures_settlements_sbe_v7_0_heuristic)

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
