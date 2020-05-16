-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Options MarketLevel2 Csm 1.0.4 Protocol
local cboe_options_marketlevel2_csm_v1_0_4 = Proto("Cboe.Options.MarketLevel2.Csm.v1.0.4.Lua", "Cboe Options MarketLevel2 Csm 1.0.4")

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

-- Cboe Options MarketLevel2 Csm 1.0.4 Fields
cboe_options_marketlevel2_csm_v1_0_4.fields.class_key = ProtoField.new("Class Key", "cboe.options.marketlevel2.csm.v1.0.4.classkey", ftypes.UINT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.contract_size = ProtoField.new("Contract Size", "cboe.options.marketlevel2.csm.v1.0.4.contractsize", ftypes.UINT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.currency_code = ProtoField.new("Currency Code", "cboe.options.marketlevel2.csm.v1.0.4.currencycode", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.currency_code_length = ProtoField.new("Currency Code Length", "cboe.options.marketlevel2.csm.v1.0.4.currencycodelength", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.currency_code_text = ProtoField.new("Currency Code Text", "cboe.options.marketlevel2.csm.v1.0.4.currencycodetext", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.exercise_style = ProtoField.new("Exercise Style", "cboe.options.marketlevel2.csm.v1.0.4.exercisestyle", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.first_msg_seq_num = ProtoField.new("First Msg Seq Num", "cboe.options.marketlevel2.csm.v1.0.4.firstmsgseqnum", ftypes.UINT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.incremental_refresh_md_entry = ProtoField.new("Incremental Refresh Md Entry", "cboe.options.marketlevel2.csm.v1.0.4.incrementalrefreshmdentry", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.incremental_refresh_message = ProtoField.new("Incremental Refresh Message", "cboe.options.marketlevel2.csm.v1.0.4.incrementalrefreshmessage", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cboe.options.marketlevel2.csm.v1.0.4.legratioqty", ftypes.UINT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.leg_security_id = ProtoField.new("Leg Security Id", "cboe.options.marketlevel2.csm.v1.0.4.legsecurityid", ftypes.UINT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.leg_side = ProtoField.new("Leg Side", "cboe.options.marketlevel2.csm.v1.0.4.legside", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.maturity_date = ProtoField.new("Maturity Date", "cboe.options.marketlevel2.csm.v1.0.4.maturitydate", ftypes.UINT64)
cboe_options_marketlevel2_csm_v1_0_4.fields.max_strike_price = ProtoField.new("Max Strike Price", "cboe.options.marketlevel2.csm.v1.0.4.maxstrikeprice", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.max_strike_price_exponent = ProtoField.new("Max Strike Price Exponent", "cboe.options.marketlevel2.csm.v1.0.4.maxstrikepriceexponent", ftypes.INT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.max_strike_price_mantissa = ProtoField.new("Max Strike Price Mantissa", "cboe.options.marketlevel2.csm.v1.0.4.maxstrikepricemantissa", ftypes.INT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_px = ProtoField.new("Md Entry Px", "cboe.options.marketlevel2.csm.v1.0.4.mdentrypx", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_px_exponent = ProtoField.new("Md Entry Px Exponent", "cboe.options.marketlevel2.csm.v1.0.4.mdentrypxexponent", ftypes.INT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_px_mantissa = ProtoField.new("Md Entry Px Mantissa", "cboe.options.marketlevel2.csm.v1.0.4.mdentrypxmantissa", ftypes.INT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_size = ProtoField.new("Md Entry Size", "cboe.options.marketlevel2.csm.v1.0.4.mdentrysize", ftypes.UINT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_type = ProtoField.new("Md Entry Type", "cboe.options.marketlevel2.csm.v1.0.4.mdentrytype", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.md_price_level = ProtoField.new("Md Price Level", "cboe.options.marketlevel2.csm.v1.0.4.mdpricelevel", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.md_update_action = ProtoField.new("Md Update Action", "cboe.options.marketlevel2.csm.v1.0.4.mdupdateaction", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.md_volume_entry = ProtoField.new("Md Volume Entry", "cboe.options.marketlevel2.csm.v1.0.4.mdvolumeentry", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.md_volume_type = ProtoField.new("Md Volume Type", "cboe.options.marketlevel2.csm.v1.0.4.mdvolumetype", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.message = ProtoField.new("Message", "cboe.options.marketlevel2.csm.v1.0.4.message", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.message_count = ProtoField.new("Message Count", "cboe.options.marketlevel2.csm.v1.0.4.messagecount", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.message_header = ProtoField.new("Message Header", "cboe.options.marketlevel2.csm.v1.0.4.messageheader", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.message_length = ProtoField.new("Message Length", "cboe.options.marketlevel2.csm.v1.0.4.messagelength", ftypes.UINT16)
cboe_options_marketlevel2_csm_v1_0_4.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cboe.options.marketlevel2.csm.v1.0.4.messagesequencenumber", ftypes.UINT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.message_type = ProtoField.new("Message Type", "cboe.options.marketlevel2.csm.v1.0.4.messagetype", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_above_premium_fraction = ProtoField.new("Minimum Above Premium Fraction", "cboe.options.marketlevel2.csm.v1.0.4.minimumabovepremiumfraction", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_above_premium_fraction_exponent = ProtoField.new("Minimum Above Premium Fraction Exponent", "cboe.options.marketlevel2.csm.v1.0.4.minimumabovepremiumfractionexponent", ftypes.INT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_above_premium_fraction_mantissa = ProtoField.new("Minimum Above Premium Fraction Mantissa", "cboe.options.marketlevel2.csm.v1.0.4.minimumabovepremiumfractionmantissa", ftypes.INT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_below_premium_fraction = ProtoField.new("Minimum Below Premium Fraction", "cboe.options.marketlevel2.csm.v1.0.4.minimumbelowpremiumfraction", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_below_premium_fraction_exponent = ProtoField.new("Minimum Below Premium Fraction Exponent", "cboe.options.marketlevel2.csm.v1.0.4.minimumbelowpremiumfractionexponent", ftypes.INT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_below_premium_fraction_mantissa = ProtoField.new("Minimum Below Premium Fraction Mantissa", "cboe.options.marketlevel2.csm.v1.0.4.minimumbelowpremiumfractionmantissa", ftypes.INT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_strike_price_fraction = ProtoField.new("Minimum Strike Price Fraction", "cboe.options.marketlevel2.csm.v1.0.4.minimumstrikepricefraction", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_strike_price_fraction_exponent = ProtoField.new("Minimum Strike Price Fraction Exponent", "cboe.options.marketlevel2.csm.v1.0.4.minimumstrikepricefractionexponent", ftypes.INT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_strike_price_fraction_mantissa = ProtoField.new("Minimum Strike Price Fraction Mantissa", "cboe.options.marketlevel2.csm.v1.0.4.minimumstrikepricefractionmantissa", ftypes.INT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.no_entries = ProtoField.new("No Entries", "cboe.options.marketlevel2.csm.v1.0.4.noentries", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.no_legs = ProtoField.new("No Legs", "cboe.options.marketlevel2.csm.v1.0.4.nolegs", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.packet = ProtoField.new("Packet", "cboe.options.marketlevel2.csm.v1.0.4.packet", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.packet_header = ProtoField.new("Packet Header", "cboe.options.marketlevel2.csm.v1.0.4.packetheader", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.packet_length = ProtoField.new("Packet Length", "cboe.options.marketlevel2.csm.v1.0.4.packetlength", ftypes.UINT16)
cboe_options_marketlevel2_csm_v1_0_4.fields.payload = ProtoField.new("Payload", "cboe.options.marketlevel2.csm.v1.0.4.payload", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.premium_break_point = ProtoField.new("Premium Break Point", "cboe.options.marketlevel2.csm.v1.0.4.premiumbreakpoint", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.premium_break_point_exponent = ProtoField.new("Premium Break Point Exponent", "cboe.options.marketlevel2.csm.v1.0.4.premiumbreakpointexponent", ftypes.INT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.premium_break_point_mantissa = ProtoField.new("Premium Break Point Mantissa", "cboe.options.marketlevel2.csm.v1.0.4.premiumbreakpointmantissa", ftypes.INT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.price_type = ProtoField.new("Price Type", "cboe.options.marketlevel2.csm.v1.0.4.pricetype", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.put_or_call = ProtoField.new("Put Or Call", "cboe.options.marketlevel2.csm.v1.0.4.putorcall", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.refresh_indicator = ProtoField.new("Refresh Indicator", "cboe.options.marketlevel2.csm.v1.0.4.refreshindicator", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.rpt_seq = ProtoField.new("Rpt Seq", "cboe.options.marketlevel2.csm.v1.0.4.rptseq", ftypes.UINT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.security_definition_leg = ProtoField.new("Security Definition Leg", "cboe.options.marketlevel2.csm.v1.0.4.securitydefinitionleg", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.security_definition_message = ProtoField.new("Security Definition Message", "cboe.options.marketlevel2.csm.v1.0.4.securitydefinitionmessage", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.security_exchange = ProtoField.new("Security Exchange", "cboe.options.marketlevel2.csm.v1.0.4.securityexchange", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.security_id = ProtoField.new("Security Id", "cboe.options.marketlevel2.csm.v1.0.4.securityid", ftypes.UINT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.security_status_message = ProtoField.new("Security Status Message", "cboe.options.marketlevel2.csm.v1.0.4.securitystatusmessage", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.security_trading_status = ProtoField.new("Security Trading Status", "cboe.options.marketlevel2.csm.v1.0.4.securitytradingstatus", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.security_type = ProtoField.new("Security Type", "cboe.options.marketlevel2.csm.v1.0.4.securitytype", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.security_type_length = ProtoField.new("Security Type Length", "cboe.options.marketlevel2.csm.v1.0.4.securitytypelength", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.security_type_text = ProtoField.new("Security Type Text", "cboe.options.marketlevel2.csm.v1.0.4.securitytypetext", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.sending_time = ProtoField.new("Sending Time", "cboe.options.marketlevel2.csm.v1.0.4.sendingtime", ftypes.UINT64)
cboe_options_marketlevel2_csm_v1_0_4.fields.snapshot_full_refresh_md_entry = ProtoField.new("Snapshot Full Refresh Md Entry", "cboe.options.marketlevel2.csm.v1.0.4.snapshotfullrefreshmdentry", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.snapshot_full_refresh_message = ProtoField.new("Snapshot Full Refresh Message", "cboe.options.marketlevel2.csm.v1.0.4.snapshotfullrefreshmessage", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.strike_price = ProtoField.new("Strike Price", "cboe.options.marketlevel2.csm.v1.0.4.strikeprice", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.strike_price_exponent = ProtoField.new("Strike Price Exponent", "cboe.options.marketlevel2.csm.v1.0.4.strikepriceexponent", ftypes.INT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.strike_price_mantissa = ProtoField.new("Strike Price Mantissa", "cboe.options.marketlevel2.csm.v1.0.4.strikepricemantissa", ftypes.INT32)
cboe_options_marketlevel2_csm_v1_0_4.fields.symbol = ProtoField.new("Symbol", "cboe.options.marketlevel2.csm.v1.0.4.symbol", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.symbol_length = ProtoField.new("Symbol Length", "cboe.options.marketlevel2.csm.v1.0.4.symbollength", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.symbol_text = ProtoField.new("Symbol Text", "cboe.options.marketlevel2.csm.v1.0.4.symboltext", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.target_location_id = ProtoField.new("Target Location Id", "cboe.options.marketlevel2.csm.v1.0.4.targetlocationid", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.target_location_id_length = ProtoField.new("Target Location Id Length", "cboe.options.marketlevel2.csm.v1.0.4.targetlocationidlength", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.target_location_id_text = ProtoField.new("Target Location Id Text", "cboe.options.marketlevel2.csm.v1.0.4.targetlocationidtext", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.template_id = ProtoField.new("Template Id", "cboe.options.marketlevel2.csm.v1.0.4.templateid", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "cboe.options.marketlevel2.csm.v1.0.4.underlyingsymbol", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_symbol_length = ProtoField.new("Underlying Symbol Length", "cboe.options.marketlevel2.csm.v1.0.4.underlyingsymbollength", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_symbol_text = ProtoField.new("Underlying Symbol Text", "cboe.options.marketlevel2.csm.v1.0.4.underlyingsymboltext", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_type = ProtoField.new("Underlying Type", "cboe.options.marketlevel2.csm.v1.0.4.underlyingtype", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_type_length = ProtoField.new("Underlying Type Length", "cboe.options.marketlevel2.csm.v1.0.4.underlyingtypelength", ftypes.UINT8)
cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_type_text = ProtoField.new("Underlying Type Text", "cboe.options.marketlevel2.csm.v1.0.4.underlyingtypetext", ftypes.STRING)
cboe_options_marketlevel2_csm_v1_0_4.fields.version = ProtoField.new("Version", "cboe.options.marketlevel2.csm.v1.0.4.version", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Options MarketLevel2 Csm 1.0.4 Element Dissection Options
show.currency_code = true
show.incremental_refresh_md_entry = true
show.incremental_refresh_message = true
show.max_strike_price = true
show.md_entry_px = true
show.md_volume_entry = true
show.message = true
show.message_header = true
show.minimum_above_premium_fraction = true
show.minimum_below_premium_fraction = true
show.minimum_strike_price_fraction = true
show.packet = true
show.packet_header = true
show.premium_break_point = true
show.security_definition_leg = true
show.security_definition_message = true
show.security_status_message = true
show.security_type = true
show.snapshot_full_refresh_md_entry = true
show.snapshot_full_refresh_message = true
show.strike_price = true
show.symbol = true
show.target_location_id = true
show.underlying_symbol = true
show.underlying_type = true
show.payload = false

-- Register Cboe Options MarketLevel2 Csm 1.0.4 Show Options
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_currency_code = Pref.bool("Show Currency Code", show.currency_code, "Parse and add Currency Code to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_incremental_refresh_md_entry = Pref.bool("Show Incremental Refresh Md Entry", show.incremental_refresh_md_entry, "Parse and add Incremental Refresh Md Entry to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_incremental_refresh_message = Pref.bool("Show Incremental Refresh Message", show.incremental_refresh_message, "Parse and add Incremental Refresh Message to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_max_strike_price = Pref.bool("Show Max Strike Price", show.max_strike_price, "Parse and add Max Strike Price to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_md_entry_px = Pref.bool("Show Md Entry Px", show.md_entry_px, "Parse and add Md Entry Px to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_md_volume_entry = Pref.bool("Show Md Volume Entry", show.md_volume_entry, "Parse and add Md Volume Entry to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_above_premium_fraction = Pref.bool("Show Minimum Above Premium Fraction", show.minimum_above_premium_fraction, "Parse and add Minimum Above Premium Fraction to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_below_premium_fraction = Pref.bool("Show Minimum Below Premium Fraction", show.minimum_below_premium_fraction, "Parse and add Minimum Below Premium Fraction to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_strike_price_fraction = Pref.bool("Show Minimum Strike Price Fraction", show.minimum_strike_price_fraction, "Parse and add Minimum Strike Price Fraction to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_premium_break_point = Pref.bool("Show Premium Break Point", show.premium_break_point, "Parse and add Premium Break Point to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_definition_leg = Pref.bool("Show Security Definition Leg", show.security_definition_leg, "Parse and add Security Definition Leg to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_definition_message = Pref.bool("Show Security Definition Message", show.security_definition_message, "Parse and add Security Definition Message to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_type = Pref.bool("Show Security Type", show.security_type, "Parse and add Security Type to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_snapshot_full_refresh_md_entry = Pref.bool("Show Snapshot Full Refresh Md Entry", show.snapshot_full_refresh_md_entry, "Parse and add Snapshot Full Refresh Md Entry to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_snapshot_full_refresh_message = Pref.bool("Show Snapshot Full Refresh Message", show.snapshot_full_refresh_message, "Parse and add Snapshot Full Refresh Message to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_strike_price = Pref.bool("Show Strike Price", show.strike_price, "Parse and add Strike Price to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_symbol = Pref.bool("Show Symbol", show.symbol, "Parse and add Symbol to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_target_location_id = Pref.bool("Show Target Location Id", show.target_location_id, "Parse and add Target Location Id to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_underlying_symbol = Pref.bool("Show Underlying Symbol", show.underlying_symbol, "Parse and add Underlying Symbol to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_underlying_type = Pref.bool("Show Underlying Type", show.underlying_type, "Parse and add Underlying Type to protocol tree")
cboe_options_marketlevel2_csm_v1_0_4.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cboe_options_marketlevel2_csm_v1_0_4.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.currency_code ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_currency_code then
    show.currency_code = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_currency_code
    changed = true
  end
  if show.incremental_refresh_md_entry ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_incremental_refresh_md_entry then
    show.incremental_refresh_md_entry = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_incremental_refresh_md_entry
    changed = true
  end
  if show.incremental_refresh_message ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_incremental_refresh_message then
    show.incremental_refresh_message = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_incremental_refresh_message
    changed = true
  end
  if show.max_strike_price ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_max_strike_price then
    show.max_strike_price = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_max_strike_price
    changed = true
  end
  if show.md_entry_px ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_md_entry_px then
    show.md_entry_px = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_md_entry_px
    changed = true
  end
  if show.md_volume_entry ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_md_volume_entry then
    show.md_volume_entry = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_md_volume_entry
    changed = true
  end
  if show.message ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_message then
    show.message = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_message
    changed = true
  end
  if show.message_header ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_message_header then
    show.message_header = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_message_header
    changed = true
  end
  if show.minimum_above_premium_fraction ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_above_premium_fraction then
    show.minimum_above_premium_fraction = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_above_premium_fraction
    changed = true
  end
  if show.minimum_below_premium_fraction ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_below_premium_fraction then
    show.minimum_below_premium_fraction = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_below_premium_fraction
    changed = true
  end
  if show.minimum_strike_price_fraction ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_strike_price_fraction then
    show.minimum_strike_price_fraction = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_minimum_strike_price_fraction
    changed = true
  end
  if show.packet ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_packet then
    show.packet = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_packet_header then
    show.packet_header = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_packet_header
    changed = true
  end
  if show.premium_break_point ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_premium_break_point then
    show.premium_break_point = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_premium_break_point
    changed = true
  end
  if show.security_definition_leg ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_definition_leg then
    show.security_definition_leg = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_definition_leg
    changed = true
  end
  if show.security_definition_message ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_definition_message then
    show.security_definition_message = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_definition_message
    changed = true
  end
  if show.security_status_message ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_status_message then
    show.security_status_message = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_status_message
    changed = true
  end
  if show.security_type ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_type then
    show.security_type = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_security_type
    changed = true
  end
  if show.snapshot_full_refresh_md_entry ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_snapshot_full_refresh_md_entry then
    show.snapshot_full_refresh_md_entry = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_snapshot_full_refresh_md_entry
    changed = true
  end
  if show.snapshot_full_refresh_message ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_snapshot_full_refresh_message then
    show.snapshot_full_refresh_message = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_snapshot_full_refresh_message
    changed = true
  end
  if show.strike_price ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_strike_price then
    show.strike_price = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_strike_price
    changed = true
  end
  if show.symbol ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_symbol then
    show.symbol = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_symbol
    changed = true
  end
  if show.target_location_id ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_target_location_id then
    show.target_location_id = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_target_location_id
    changed = true
  end
  if show.underlying_symbol ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_underlying_symbol then
    show.underlying_symbol = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_underlying_symbol
    changed = true
  end
  if show.underlying_type ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_underlying_type then
    show.underlying_type = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_underlying_type
    changed = true
  end
  if show.payload ~= cboe_options_marketlevel2_csm_v1_0_4.prefs.show_payload then
    show.payload = cboe_options_marketlevel2_csm_v1_0_4.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Options MarketLevel2 Csm 1.0.4
-----------------------------------------------------------------------

-- Size: Security Trading Status
size_of.security_trading_status = 1

-- Display: Security Trading Status
display.security_trading_status = function(value)
  if value == 2 then
    return "Security Trading Status: Halted (2)"
  end
  if value == 17 then
    return "Security Trading Status: Open (17)"
  end
  if value == 18 then
    return "Security Trading Status: Closed (18)"
  end
  if value == 21 then
    return "Security Trading Status: Pre Open (21)"
  end
  if value == 22 then
    return "Security Trading Status: Opening Rotation (22)"
  end
  if value == 23 then
    return "Security Trading Status: Fast Market (23)"
  end
  if value == 24 then
    return "Security Trading Status: Strategy Market In Opening Rotation (24)"
  end
  if value == 25 then
    return "Security Trading Status: Strategy Market Quotes Non Firm (25)"
  end
  if value == 26 then
    return "Security Trading Status: Suspended (26)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
dissect.security_trading_status = function(buffer, offset, packet, parent)
  local length = size_of.security_trading_status
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.security_trading_status(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Size: Rpt Seq
size_of.rpt_seq = 4

-- Display: Rpt Seq
display.rpt_seq = function(value)
  return "Rpt Seq: "..value
end

-- Dissect: Rpt Seq
dissect.rpt_seq = function(buffer, offset, packet, parent)
  local length = size_of.rpt_seq
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.rpt_seq(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.rpt_seq, range, value, display)

  return offset + length, value
end

-- Size: Security Id
size_of.security_id = 4

-- Display: Security Id
display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
dissect.security_id = function(buffer, offset, packet, parent)
  local length = size_of.security_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.security_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.security_id, range, value, display)

  return offset + length, value
end

-- Size: Class Key
size_of.class_key = 4

-- Display: Class Key
display.class_key = function(value)
  return "Class Key: "..value
end

-- Dissect: Class Key
dissect.class_key = function(buffer, offset, packet, parent)
  local length = size_of.class_key
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.class_key(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.class_key, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Status Message
size_of.security_status_message = function(buffer, offset)
  local index = 0

  index = index + size_of.class_key

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  index = index + size_of.security_trading_status

  return index
end

-- Display: Security Status Message
display.security_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Status Message
dissect.security_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = dissect.class_key(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_trading_status = dissect.security_trading_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
dissect.security_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_status_message then
    local length = size_of.security_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_status_message(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.security_status_message, range, display)
  end

  return dissect.security_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Md Entry Size
size_of.md_entry_size = 4

-- Display: Md Entry Size
display.md_entry_size = function(value)
  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
dissect.md_entry_size = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.md_entry_size(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Size: Md Volume Type
size_of.md_volume_type = 1

-- Display: Md Volume Type
display.md_volume_type = function(value)
  if value == 0 then
    return "Md Volume Type: Total Limit (0)"
  end
  if value == 1 then
    return "Md Volume Type: Customer Limit (1)"
  end
  if value == 2 then
    return "Md Volume Type: Total Contingency All Or None (2)"
  end
  if value == 3 then
    return "Md Volume Type: Customer Contingency All Or None (3)"
  end

  return "Md Volume Type: Unknown("..value..")"
end

-- Dissect: Md Volume Type
dissect.md_volume_type = function(buffer, offset, packet, parent)
  local length = size_of.md_volume_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.md_volume_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.md_volume_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Volume Entry
size_of.md_volume_entry = function(buffer, offset)
  local index = 0

  index = index + size_of.md_volume_type

  index = index + size_of.md_entry_size

  return index
end

-- Display: Md Volume Entry
display.md_volume_entry = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Volume Entry
dissect.md_volume_entry_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Volume Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, md_volume_type = dissect.md_volume_type(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_size = dissect.md_entry_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Volume Entry
dissect.md_volume_entry = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_volume_entry then
    local length = size_of.md_volume_entry(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_volume_entry(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.md_volume_entry, range, display)
  end

  return dissect.md_volume_entry_fields(buffer, offset, packet, parent)
end

-- Size: No Legs
size_of.no_legs = 1

-- Display: No Legs
display.no_legs = function(value)
  return "No Legs: "..value
end

-- Dissect: No Legs
dissect.no_legs = function(buffer, offset, packet, parent)
  local length = size_of.no_legs
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.no_legs(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.no_legs, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Px Mantissa
size_of.md_entry_px_mantissa = 4

-- Display: Md Entry Px Mantissa
display.md_entry_px_mantissa = function(value)
  return "Md Entry Px Mantissa: "..value
end

-- Dissect: Md Entry Px Mantissa
dissect.md_entry_px_mantissa = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_px_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.md_entry_px_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_px_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Px Exponent
size_of.md_entry_px_exponent = 1

-- Display: Md Entry Px Exponent
display.md_entry_px_exponent = function(value)
  return "Md Entry Px Exponent: "..value
end

-- Dissect: Md Entry Px Exponent
dissect.md_entry_px_exponent = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_px_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.md_entry_px_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_px_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Entry Px
size_of.md_entry_px = function(buffer, offset)
  local index = 0

  index = index + size_of.md_entry_px_exponent

  index = index + size_of.md_entry_px_mantissa

  return index
end

-- Display: Md Entry Px
display.md_entry_px = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Entry Px
dissect.md_entry_px_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px Exponent: 1 Byte Signed Fixed Width Integer
  index, md_entry_px_exponent = dissect.md_entry_px_exponent(buffer, index, packet, parent)

  -- Md Entry Px Mantissa: 4 Byte Signed Fixed Width Integer
  index, md_entry_px_mantissa = dissect.md_entry_px_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Entry Px
dissect.md_entry_px = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_entry_px then
    local length = size_of.md_entry_px(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_entry_px(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_px, range, display)
  end

  return dissect.md_entry_px_fields(buffer, offset, packet, parent)
end

-- Size: Md Price Level
size_of.md_price_level = 1

-- Display: Md Price Level
display.md_price_level = function(value)
  return "Md Price Level: "..value
end

-- Dissect: Md Price Level
dissect.md_price_level = function(buffer, offset, packet, parent)
  local length = size_of.md_price_level
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.md_price_level(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.md_price_level, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Type
size_of.md_entry_type = 1

-- Display: Md Entry Type
display.md_entry_type = function(value)
  if value == "0" then
    return "Md Entry Type: Buy Bid (0)"
  end
  if value == "1" then
    return "Md Entry Type: Sell Ask (1)"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
dissect.md_entry_type = function(buffer, offset, packet, parent)
  local length = size_of.md_entry_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.md_entry_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Size: Md Update Action
size_of.md_update_action = 1

-- Display: Md Update Action
display.md_update_action = function(value)
  if value == 0 then
    return "Md Update Action: Insert (0)"
  end
  if value == 1 then
    return "Md Update Action: Change (1)"
  end
  if value == 2 then
    return "Md Update Action: Delete (2)"
  end
  if value == 5 then
    return "Md Update Action: Overlay (5)"
  end

  return "Md Update Action: Unknown("..value..")"
end

-- Dissect: Md Update Action
dissect.md_update_action = function(buffer, offset, packet, parent)
  local length = size_of.md_update_action
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.md_update_action(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: Incremental Refresh Md Entry
size_of.incremental_refresh_md_entry = function(buffer, offset)
  local index = 0

  index = index + size_of.md_update_action

  index = index + size_of.md_entry_type

  index = index + size_of.md_price_level

  index = index + size_of.md_entry_px(buffer, offset + index)

  index = index + size_of.no_legs

  -- Calculate field size from count
  local md_volume_entry_count = buffer(offset + index - 10, 1):uint()
  index = index + md_volume_entry_count * 5

  return index
end

-- Display: Incremental Refresh Md Entry
display.incremental_refresh_md_entry = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Incremental Refresh Md Entry
dissect.incremental_refresh_md_entry_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, md_update_action = dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String Enum with 2 values
  index, md_entry_type = dissect.md_entry_type(buffer, index, packet, parent)

  -- Md Price Level: 1 Byte Unsigned Fixed Width Integer
  index, md_price_level = dissect.md_price_level(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = dissect.md_entry_px(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- Dependency element: No Entries
  local no_entries = buffer(offset - 1, 1):uint()

  -- Md Volume Entry: Struct of 2 fields
  for i = 1, no_entries do
    index = dissect.md_volume_entry(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Incremental Refresh Md Entry
dissect.incremental_refresh_md_entry = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.incremental_refresh_md_entry then
    local length = size_of.incremental_refresh_md_entry(buffer, offset)
    local range = buffer(offset, length)
    local display = display.incremental_refresh_md_entry(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.incremental_refresh_md_entry, range, display)
  end

  return dissect.incremental_refresh_md_entry_fields(buffer, offset, packet, parent)
end

-- Size: No Entries
size_of.no_entries = 1

-- Display: No Entries
display.no_entries = function(value)
  return "No Entries: "..value
end

-- Dissect: No Entries
dissect.no_entries = function(buffer, offset, packet, parent)
  local length = size_of.no_entries
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.no_entries(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.no_entries, range, value, display)

  return offset + length, value
end

-- Size: Price Type
size_of.price_type = 1

-- Display: Price Type
display.price_type = function(value)
  return "Price Type: "..value
end

-- Dissect: Price Type
dissect.price_type = function(buffer, offset, packet, parent)
  local length = size_of.price_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.price_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.price_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Incremental Refresh Message
size_of.incremental_refresh_message = function(buffer, offset)
  local index = 0

  index = index + size_of.class_key

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  index = index + size_of.security_trading_status

  index = index + size_of.price_type

  index = index + size_of.no_entries

  -- Calculate field size from count
  local incremental_refresh_md_entry_count = buffer(offset + index - 1, 1):uint()
  for i = 1, incremental_refresh_md_entry_count do
    index = index + size_of.incremental_refresh_md_entry(buffer, offset + index)
  end
  return index
end

-- Display: Incremental Refresh Message
display.incremental_refresh_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Incremental Refresh Message
dissect.incremental_refresh_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = dissect.class_key(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_trading_status = dissect.security_trading_status(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = dissect.price_type(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = dissect.no_entries(buffer, index, packet, parent)

  -- Incremental Refresh Md Entry: Struct of 6 fields
  for i = 1, no_entries do
    index = dissect.incremental_refresh_md_entry(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Incremental Refresh Message
dissect.incremental_refresh_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.incremental_refresh_message then
    local length = size_of.incremental_refresh_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.incremental_refresh_message(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.incremental_refresh_message, range, display)
  end

  return dissect.incremental_refresh_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Full Refresh Md Entry
size_of.snapshot_full_refresh_md_entry = function(buffer, offset)
  local index = 0

  index = index + size_of.md_entry_type

  index = index + size_of.md_price_level

  index = index + size_of.md_entry_px(buffer, offset + index)

  index = index + size_of.no_legs

  -- Calculate field size from count
  local md_volume_entry_count = buffer(offset + index - 9, 1):uint()
  index = index + md_volume_entry_count * 5

  return index
end

-- Display: Snapshot Full Refresh Md Entry
display.snapshot_full_refresh_md_entry = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Md Entry
dissect.snapshot_full_refresh_md_entry_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Type: 1 Byte Ascii String Enum with 2 values
  index, md_entry_type = dissect.md_entry_type(buffer, index, packet, parent)

  -- Md Price Level: 1 Byte Unsigned Fixed Width Integer
  index, md_price_level = dissect.md_price_level(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = dissect.md_entry_px(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- Dependency element: No Entries
  local no_entries = buffer(offset - 1, 1):uint()

  -- Md Volume Entry: Struct of 2 fields
  for i = 1, no_entries do
    index = dissect.md_volume_entry(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Md Entry
dissect.snapshot_full_refresh_md_entry = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_md_entry then
    local length = size_of.snapshot_full_refresh_md_entry(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_md_entry(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.snapshot_full_refresh_md_entry, range, display)
  end

  return dissect.snapshot_full_refresh_md_entry_fields(buffer, offset, packet, parent)
end

-- Size: Refresh Indicator
size_of.refresh_indicator = 1

-- Display: Refresh Indicator
display.refresh_indicator = function(value)
  if value == "Y" then
    return "Refresh Indicator: Mandatory Refresh (Y)"
  end
  if value == "N" then
    return "Refresh Indicator: Process If Necessary (N)"
  end

  return "Refresh Indicator: Unknown("..value..")"
end

-- Dissect: Refresh Indicator
dissect.refresh_indicator = function(buffer, offset, packet, parent)
  local length = size_of.refresh_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.refresh_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.refresh_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Full Refresh Message
size_of.snapshot_full_refresh_message = function(buffer, offset)
  local index = 0

  index = index + size_of.class_key

  index = index + size_of.security_id

  index = index + size_of.rpt_seq

  index = index + size_of.security_trading_status

  index = index + size_of.price_type

  index = index + size_of.refresh_indicator

  index = index + size_of.no_entries

  -- Calculate field size from count
  local snapshot_full_refresh_md_entry_count = buffer(offset + index - 1, 1):uint()
  for i = 1, snapshot_full_refresh_md_entry_count do
    index = index + size_of.snapshot_full_refresh_md_entry(buffer, offset + index)
  end
  return index
end

-- Display: Snapshot Full Refresh Message
display.snapshot_full_refresh_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Message
dissect.snapshot_full_refresh_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = dissect.class_key(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = dissect.rpt_seq(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_trading_status = dissect.security_trading_status(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = dissect.price_type(buffer, index, packet, parent)

  -- Refresh Indicator: 1 Byte Ascii String Enum with 2 values
  index, refresh_indicator = dissect.refresh_indicator(buffer, index, packet, parent)

  -- No Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_entries = dissect.no_entries(buffer, index, packet, parent)

  -- Snapshot Full Refresh Md Entry: Struct of 5 fields
  for i = 1, no_entries do
    index = dissect.snapshot_full_refresh_md_entry(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Message
dissect.snapshot_full_refresh_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_message then
    local length = size_of.snapshot_full_refresh_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_message(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.snapshot_full_refresh_message, range, display)
  end

  return dissect.snapshot_full_refresh_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Side
size_of.leg_side = 1

-- Display: Leg Side
display.leg_side = function(value)
  if value == "B" then
    return "Leg Side: Buy Bid (B)"
  end
  if value == "S" then
    return "Leg Side: Sell Ask (S)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
dissect.leg_side = function(buffer, offset, packet, parent)
  local length = size_of.leg_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_side(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Id
size_of.leg_security_id = 4

-- Display: Leg Security Id
display.leg_security_id = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
dissect.leg_security_id = function(buffer, offset, packet, parent)
  local length = size_of.leg_security_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.leg_security_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Qty
size_of.leg_ratio_qty = 4

-- Display: Leg Ratio Qty
display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local length = size_of.leg_ratio_qty
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Definition Leg
size_of.security_definition_leg = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_ratio_qty

  index = index + size_of.leg_security_id

  index = index + size_of.leg_side

  return index
end

-- Display: Security Definition Leg
display.security_definition_leg = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Leg
dissect.security_definition_leg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Ratio Qty: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio_qty = dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Security Id: 4 Byte Unsigned Fixed Width Integer
  index, leg_security_id = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Ascii String Enum with 2 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Leg
dissect.security_definition_leg = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_definition_leg then
    local length = size_of.security_definition_leg(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_definition_leg(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.security_definition_leg, range, display)
  end

  return dissect.security_definition_leg_fields(buffer, offset, packet, parent)
end

-- Size: Contract Size
size_of.contract_size = 4

-- Display: Contract Size
display.contract_size = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
dissect.contract_size = function(buffer, offset, packet, parent)
  local length = size_of.contract_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.contract_size(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Display: Underlying Type Text
display.underlying_type_text = function(value)
  return "Underlying Type Text: "..value
end

-- Dissect runtime sized field: Underlying Type Text
dissect.underlying_type_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.underlying_type_text(value, buffer, offset, packet, parent, size)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_type_text, range, value, display)

  return offset + size
end

-- Size: Underlying Type Length
size_of.underlying_type_length = 1

-- Display: Underlying Type Length
display.underlying_type_length = function(value)
  return "Underlying Type Length: "..value
end

-- Dissect: Underlying Type Length
dissect.underlying_type_length = function(buffer, offset, packet, parent)
  local length = size_of.underlying_type_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.underlying_type_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_type_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlying Type
size_of.underlying_type = function(buffer, offset)
  local index = 0

  index = index + size_of.underlying_type_length

  -- Parse runtime size of: Underlying Type Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Underlying Type
display.underlying_type = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Type
dissect.underlying_type_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Type Length: 1 Byte Unsigned Fixed Width Integer
  index, underlying_type_length = dissect.underlying_type_length(buffer, index, packet, parent)

  -- Underlying Type Text: 0 Byte Ascii String
  index = dissect.underlying_type_text(buffer, index, packet, parent, underlying_type_length)

  return index
end

-- Dissect: Underlying Type
dissect.underlying_type = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.underlying_type then
    local length = size_of.underlying_type(buffer, offset)
    local range = buffer(offset, length)
    local display = display.underlying_type(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_type, range, display)
  end

  return dissect.underlying_type_fields(buffer, offset, packet, parent)
end

-- Display: Underlying Symbol Text
display.underlying_symbol_text = function(value)
  return "Underlying Symbol Text: "..value
end

-- Dissect runtime sized field: Underlying Symbol Text
dissect.underlying_symbol_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.underlying_symbol_text(value, buffer, offset, packet, parent, size)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_symbol_text, range, value, display)

  return offset + size
end

-- Size: Underlying Symbol Length
size_of.underlying_symbol_length = 1

-- Display: Underlying Symbol Length
display.underlying_symbol_length = function(value)
  return "Underlying Symbol Length: "..value
end

-- Dissect: Underlying Symbol Length
dissect.underlying_symbol_length = function(buffer, offset, packet, parent)
  local length = size_of.underlying_symbol_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.underlying_symbol_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_symbol_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlying Symbol
size_of.underlying_symbol = function(buffer, offset)
  local index = 0

  index = index + size_of.underlying_symbol_length

  -- Parse runtime size of: Underlying Symbol Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Underlying Symbol
display.underlying_symbol = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Symbol
dissect.underlying_symbol_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Symbol Length: 1 Byte Unsigned Fixed Width Integer
  index, underlying_symbol_length = dissect.underlying_symbol_length(buffer, index, packet, parent)

  -- Underlying Symbol Text: 0 Byte Ascii String
  index = dissect.underlying_symbol_text(buffer, index, packet, parent, underlying_symbol_length)

  return index
end

-- Dissect: Underlying Symbol
dissect.underlying_symbol = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.underlying_symbol then
    local length = size_of.underlying_symbol(buffer, offset)
    local range = buffer(offset, length)
    local display = display.underlying_symbol(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.underlying_symbol, range, display)
  end

  return dissect.underlying_symbol_fields(buffer, offset, packet, parent)
end

-- Display: Currency Code Text
display.currency_code_text = function(value)
  return "Currency Code Text: "..value
end

-- Dissect runtime sized field: Currency Code Text
dissect.currency_code_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.currency_code_text(value, buffer, offset, packet, parent, size)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.currency_code_text, range, value, display)

  return offset + size
end

-- Size: Currency Code Length
size_of.currency_code_length = 1

-- Display: Currency Code Length
display.currency_code_length = function(value)
  return "Currency Code Length: "..value
end

-- Dissect: Currency Code Length
dissect.currency_code_length = function(buffer, offset, packet, parent)
  local length = size_of.currency_code_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.currency_code_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.currency_code_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Currency Code
size_of.currency_code = function(buffer, offset)
  local index = 0

  index = index + size_of.currency_code_length

  -- Parse runtime size of: Currency Code Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Currency Code
display.currency_code = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Currency Code
dissect.currency_code_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Currency Code Length: 1 Byte Unsigned Fixed Width Integer
  index, currency_code_length = dissect.currency_code_length(buffer, index, packet, parent)

  -- Currency Code Text: 0 Byte Ascii String
  index = dissect.currency_code_text(buffer, index, packet, parent, currency_code_length)

  return index
end

-- Dissect: Currency Code
dissect.currency_code = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.currency_code then
    local length = size_of.currency_code(buffer, offset)
    local range = buffer(offset, length)
    local display = display.currency_code(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.currency_code, range, display)
  end

  return dissect.currency_code_fields(buffer, offset, packet, parent)
end

-- Size: Exercise Style
size_of.exercise_style = 1

-- Display: Exercise Style
display.exercise_style = function(value)
  if value == 0 then
    return "Exercise Style: American (0)"
  end
  if value == 1 then
    return "Exercise Style: European (1)"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
dissect.exercise_style = function(buffer, offset, packet, parent)
  local length = size_of.exercise_style
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.exercise_style(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Size: Minimum Below Premium Fraction Mantissa
size_of.minimum_below_premium_fraction_mantissa = 4

-- Display: Minimum Below Premium Fraction Mantissa
display.minimum_below_premium_fraction_mantissa = function(value)
  return "Minimum Below Premium Fraction Mantissa: "..value
end

-- Dissect: Minimum Below Premium Fraction Mantissa
dissect.minimum_below_premium_fraction_mantissa = function(buffer, offset, packet, parent)
  local length = size_of.minimum_below_premium_fraction_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.minimum_below_premium_fraction_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_below_premium_fraction_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Minimum Below Premium Fraction Exponent
size_of.minimum_below_premium_fraction_exponent = 1

-- Display: Minimum Below Premium Fraction Exponent
display.minimum_below_premium_fraction_exponent = function(value)
  return "Minimum Below Premium Fraction Exponent: "..value
end

-- Dissect: Minimum Below Premium Fraction Exponent
dissect.minimum_below_premium_fraction_exponent = function(buffer, offset, packet, parent)
  local length = size_of.minimum_below_premium_fraction_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.minimum_below_premium_fraction_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_below_premium_fraction_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Minimum Below Premium Fraction
size_of.minimum_below_premium_fraction = function(buffer, offset)
  local index = 0

  index = index + size_of.minimum_below_premium_fraction_exponent

  index = index + size_of.minimum_below_premium_fraction_mantissa

  return index
end

-- Display: Minimum Below Premium Fraction
display.minimum_below_premium_fraction = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Minimum Below Premium Fraction
dissect.minimum_below_premium_fraction_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Minimum Below Premium Fraction Exponent: 1 Byte Signed Fixed Width Integer
  index, minimum_below_premium_fraction_exponent = dissect.minimum_below_premium_fraction_exponent(buffer, index, packet, parent)

  -- Minimum Below Premium Fraction Mantissa: 4 Byte Signed Fixed Width Integer
  index, minimum_below_premium_fraction_mantissa = dissect.minimum_below_premium_fraction_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Below Premium Fraction
dissect.minimum_below_premium_fraction = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.minimum_below_premium_fraction then
    local length = size_of.minimum_below_premium_fraction(buffer, offset)
    local range = buffer(offset, length)
    local display = display.minimum_below_premium_fraction(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_below_premium_fraction, range, display)
  end

  return dissect.minimum_below_premium_fraction_fields(buffer, offset, packet, parent)
end

-- Size: Minimum Above Premium Fraction Mantissa
size_of.minimum_above_premium_fraction_mantissa = 4

-- Display: Minimum Above Premium Fraction Mantissa
display.minimum_above_premium_fraction_mantissa = function(value)
  return "Minimum Above Premium Fraction Mantissa: "..value
end

-- Dissect: Minimum Above Premium Fraction Mantissa
dissect.minimum_above_premium_fraction_mantissa = function(buffer, offset, packet, parent)
  local length = size_of.minimum_above_premium_fraction_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.minimum_above_premium_fraction_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_above_premium_fraction_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Minimum Above Premium Fraction Exponent
size_of.minimum_above_premium_fraction_exponent = 1

-- Display: Minimum Above Premium Fraction Exponent
display.minimum_above_premium_fraction_exponent = function(value)
  return "Minimum Above Premium Fraction Exponent: "..value
end

-- Dissect: Minimum Above Premium Fraction Exponent
dissect.minimum_above_premium_fraction_exponent = function(buffer, offset, packet, parent)
  local length = size_of.minimum_above_premium_fraction_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.minimum_above_premium_fraction_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_above_premium_fraction_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Minimum Above Premium Fraction
size_of.minimum_above_premium_fraction = function(buffer, offset)
  local index = 0

  index = index + size_of.minimum_above_premium_fraction_exponent

  index = index + size_of.minimum_above_premium_fraction_mantissa

  return index
end

-- Display: Minimum Above Premium Fraction
display.minimum_above_premium_fraction = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Minimum Above Premium Fraction
dissect.minimum_above_premium_fraction_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Minimum Above Premium Fraction Exponent: 1 Byte Signed Fixed Width Integer
  index, minimum_above_premium_fraction_exponent = dissect.minimum_above_premium_fraction_exponent(buffer, index, packet, parent)

  -- Minimum Above Premium Fraction Mantissa: 4 Byte Signed Fixed Width Integer
  index, minimum_above_premium_fraction_mantissa = dissect.minimum_above_premium_fraction_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Above Premium Fraction
dissect.minimum_above_premium_fraction = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.minimum_above_premium_fraction then
    local length = size_of.minimum_above_premium_fraction(buffer, offset)
    local range = buffer(offset, length)
    local display = display.minimum_above_premium_fraction(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_above_premium_fraction, range, display)
  end

  return dissect.minimum_above_premium_fraction_fields(buffer, offset, packet, parent)
end

-- Size: Premium Break Point Mantissa
size_of.premium_break_point_mantissa = 4

-- Display: Premium Break Point Mantissa
display.premium_break_point_mantissa = function(value)
  return "Premium Break Point Mantissa: "..value
end

-- Dissect: Premium Break Point Mantissa
dissect.premium_break_point_mantissa = function(buffer, offset, packet, parent)
  local length = size_of.premium_break_point_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.premium_break_point_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.premium_break_point_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Premium Break Point Exponent
size_of.premium_break_point_exponent = 1

-- Display: Premium Break Point Exponent
display.premium_break_point_exponent = function(value)
  return "Premium Break Point Exponent: "..value
end

-- Dissect: Premium Break Point Exponent
dissect.premium_break_point_exponent = function(buffer, offset, packet, parent)
  local length = size_of.premium_break_point_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.premium_break_point_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.premium_break_point_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Premium Break Point
size_of.premium_break_point = function(buffer, offset)
  local index = 0

  index = index + size_of.premium_break_point_exponent

  index = index + size_of.premium_break_point_mantissa

  return index
end

-- Display: Premium Break Point
display.premium_break_point = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Premium Break Point
dissect.premium_break_point_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Premium Break Point Exponent: 1 Byte Signed Fixed Width Integer
  index, premium_break_point_exponent = dissect.premium_break_point_exponent(buffer, index, packet, parent)

  -- Premium Break Point Mantissa: 4 Byte Signed Fixed Width Integer
  index, premium_break_point_mantissa = dissect.premium_break_point_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Premium Break Point
dissect.premium_break_point = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.premium_break_point then
    local length = size_of.premium_break_point(buffer, offset)
    local range = buffer(offset, length)
    local display = display.premium_break_point(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.premium_break_point, range, display)
  end

  return dissect.premium_break_point_fields(buffer, offset, packet, parent)
end

-- Size: Max Strike Price Mantissa
size_of.max_strike_price_mantissa = 4

-- Display: Max Strike Price Mantissa
display.max_strike_price_mantissa = function(value)
  return "Max Strike Price Mantissa: "..value
end

-- Dissect: Max Strike Price Mantissa
dissect.max_strike_price_mantissa = function(buffer, offset, packet, parent)
  local length = size_of.max_strike_price_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.max_strike_price_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.max_strike_price_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Max Strike Price Exponent
size_of.max_strike_price_exponent = 1

-- Display: Max Strike Price Exponent
display.max_strike_price_exponent = function(value)
  return "Max Strike Price Exponent: "..value
end

-- Dissect: Max Strike Price Exponent
dissect.max_strike_price_exponent = function(buffer, offset, packet, parent)
  local length = size_of.max_strike_price_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.max_strike_price_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.max_strike_price_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Max Strike Price
size_of.max_strike_price = function(buffer, offset)
  local index = 0

  index = index + size_of.max_strike_price_exponent

  index = index + size_of.max_strike_price_mantissa

  return index
end

-- Display: Max Strike Price
display.max_strike_price = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Max Strike Price
dissect.max_strike_price_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Max Strike Price Exponent: 1 Byte Signed Fixed Width Integer
  index, max_strike_price_exponent = dissect.max_strike_price_exponent(buffer, index, packet, parent)

  -- Max Strike Price Mantissa: 4 Byte Signed Fixed Width Integer
  index, max_strike_price_mantissa = dissect.max_strike_price_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Max Strike Price
dissect.max_strike_price = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.max_strike_price then
    local length = size_of.max_strike_price(buffer, offset)
    local range = buffer(offset, length)
    local display = display.max_strike_price(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.max_strike_price, range, display)
  end

  return dissect.max_strike_price_fields(buffer, offset, packet, parent)
end

-- Size: Minimum Strike Price Fraction Mantissa
size_of.minimum_strike_price_fraction_mantissa = 4

-- Display: Minimum Strike Price Fraction Mantissa
display.minimum_strike_price_fraction_mantissa = function(value)
  return "Minimum Strike Price Fraction Mantissa: "..value
end

-- Dissect: Minimum Strike Price Fraction Mantissa
dissect.minimum_strike_price_fraction_mantissa = function(buffer, offset, packet, parent)
  local length = size_of.minimum_strike_price_fraction_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.minimum_strike_price_fraction_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_strike_price_fraction_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Minimum Strike Price Fraction Exponent
size_of.minimum_strike_price_fraction_exponent = 1

-- Display: Minimum Strike Price Fraction Exponent
display.minimum_strike_price_fraction_exponent = function(value)
  return "Minimum Strike Price Fraction Exponent: "..value
end

-- Dissect: Minimum Strike Price Fraction Exponent
dissect.minimum_strike_price_fraction_exponent = function(buffer, offset, packet, parent)
  local length = size_of.minimum_strike_price_fraction_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.minimum_strike_price_fraction_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_strike_price_fraction_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Minimum Strike Price Fraction
size_of.minimum_strike_price_fraction = function(buffer, offset)
  local index = 0

  index = index + size_of.minimum_strike_price_fraction_exponent

  index = index + size_of.minimum_strike_price_fraction_mantissa

  return index
end

-- Display: Minimum Strike Price Fraction
display.minimum_strike_price_fraction = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Minimum Strike Price Fraction
dissect.minimum_strike_price_fraction_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Minimum Strike Price Fraction Exponent: 1 Byte Signed Fixed Width Integer
  index, minimum_strike_price_fraction_exponent = dissect.minimum_strike_price_fraction_exponent(buffer, index, packet, parent)

  -- Minimum Strike Price Fraction Mantissa: 4 Byte Signed Fixed Width Integer
  index, minimum_strike_price_fraction_mantissa = dissect.minimum_strike_price_fraction_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Minimum Strike Price Fraction
dissect.minimum_strike_price_fraction = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.minimum_strike_price_fraction then
    local length = size_of.minimum_strike_price_fraction(buffer, offset)
    local range = buffer(offset, length)
    local display = display.minimum_strike_price_fraction(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.minimum_strike_price_fraction, range, display)
  end

  return dissect.minimum_strike_price_fraction_fields(buffer, offset, packet, parent)
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

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
dissect.put_or_call = function(buffer, offset, packet, parent)
  local length = size_of.put_or_call
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.put_or_call(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Mantissa
size_of.strike_price_mantissa = 4

-- Display: Strike Price Mantissa
display.strike_price_mantissa = function(value)
  return "Strike Price Mantissa: "..value
end

-- Dissect: Strike Price Mantissa
dissect.strike_price_mantissa = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_mantissa
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.strike_price_mantissa(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.strike_price_mantissa, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Exponent
size_of.strike_price_exponent = 1

-- Display: Strike Price Exponent
display.strike_price_exponent = function(value)
  return "Strike Price Exponent: "..value
end

-- Dissect: Strike Price Exponent
dissect.strike_price_exponent = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_exponent
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.strike_price_exponent(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.strike_price_exponent, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strike Price
size_of.strike_price = function(buffer, offset)
  local index = 0

  index = index + size_of.strike_price_exponent

  index = index + size_of.strike_price_mantissa

  return index
end

-- Display: Strike Price
display.strike_price = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strike Price
dissect.strike_price_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Strike Price Exponent: 1 Byte Signed Fixed Width Integer
  index, strike_price_exponent = dissect.strike_price_exponent(buffer, index, packet, parent)

  -- Strike Price Mantissa: 4 Byte Signed Fixed Width Integer
  index, strike_price_mantissa = dissect.strike_price_mantissa(buffer, index, packet, parent)

  return index
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strike_price then
    local length = size_of.strike_price(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strike_price(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.strike_price, range, display)
  end

  return dissect.strike_price_fields(buffer, offset, packet, parent)
end

-- Size: Maturity Date
size_of.maturity_date = 8

-- Display: Maturity Date
display.maturity_date = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = size_of.maturity_date
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Display: Target Location Id Text
display.target_location_id_text = function(value)
  return "Target Location Id Text: "..value
end

-- Dissect runtime sized field: Target Location Id Text
dissect.target_location_id_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.target_location_id_text(value, buffer, offset, packet, parent, size)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.target_location_id_text, range, value, display)

  return offset + size
end

-- Size: Target Location Id Length
size_of.target_location_id_length = 1

-- Display: Target Location Id Length
display.target_location_id_length = function(value)
  return "Target Location Id Length: "..value
end

-- Dissect: Target Location Id Length
dissect.target_location_id_length = function(buffer, offset, packet, parent)
  local length = size_of.target_location_id_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.target_location_id_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.target_location_id_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Target Location Id
size_of.target_location_id = function(buffer, offset)
  local index = 0

  index = index + size_of.target_location_id_length

  -- Parse runtime size of: Target Location Id Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Target Location Id
display.target_location_id = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Target Location Id
dissect.target_location_id_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Target Location Id Length: 1 Byte Unsigned Fixed Width Integer
  index, target_location_id_length = dissect.target_location_id_length(buffer, index, packet, parent)

  -- Target Location Id Text: 0 Byte Ascii String
  index = dissect.target_location_id_text(buffer, index, packet, parent, target_location_id_length)

  return index
end

-- Dissect: Target Location Id
dissect.target_location_id = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.target_location_id then
    local length = size_of.target_location_id(buffer, offset)
    local range = buffer(offset, length)
    local display = display.target_location_id(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.target_location_id, range, display)
  end

  return dissect.target_location_id_fields(buffer, offset, packet, parent)
end

-- Display: Symbol Text
display.symbol_text = function(value)
  return "Symbol Text: "..value
end

-- Dissect runtime sized field: Symbol Text
dissect.symbol_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.symbol_text(value, buffer, offset, packet, parent, size)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.symbol_text, range, value, display)

  return offset + size
end

-- Size: Symbol Length
size_of.symbol_length = 1

-- Display: Symbol Length
display.symbol_length = function(value)
  return "Symbol Length: "..value
end

-- Dissect: Symbol Length
dissect.symbol_length = function(buffer, offset, packet, parent)
  local length = size_of.symbol_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.symbol_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.symbol_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol
size_of.symbol = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol_length

  -- Parse runtime size of: Symbol Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Symbol
display.symbol = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol
dissect.symbol_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Length: 1 Byte Unsigned Fixed Width Integer
  index, symbol_length = dissect.symbol_length(buffer, index, packet, parent)

  -- Symbol Text: 0 Byte Ascii String
  index = dissect.symbol_text(buffer, index, packet, parent, symbol_length)

  return index
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.symbol then
    local length = size_of.symbol(buffer, offset)
    local range = buffer(offset, length)
    local display = display.symbol(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.symbol, range, display)
  end

  return dissect.symbol_fields(buffer, offset, packet, parent)
end

-- Size: Security Exchange
size_of.security_exchange = 1

-- Display: Security Exchange
display.security_exchange = function(value)
  if value == "C" then
    return "Security Exchange: Cboe (C)"
  end
  if value == "O" then
    return "Security Exchange: One Chicago Not Supported (O)"
  end
  if value == "W" then
    return "Security Exchange: Cbsx Not Supported (W)"
  end
  if value == "F" then
    return "Security Exchange: Cfecof Not Supported (F)"
  end
  if value == "2" then
    return "Security Exchange: Cboe 2 Options Not Supported (2)"
  end

  return "Security Exchange: Unknown("..value..")"
end

-- Dissect: Security Exchange
dissect.security_exchange = function(buffer, offset, packet, parent)
  local length = size_of.security_exchange
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_exchange(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Display: Security Type Text
display.security_type_text = function(value)
  return "Security Type Text: "..value
end

-- Dissect runtime sized field: Security Type Text
dissect.security_type_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.security_type_text(value, buffer, offset, packet, parent, size)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.security_type_text, range, value, display)

  return offset + size
end

-- Size: Security Type Length
size_of.security_type_length = 1

-- Display: Security Type Length
display.security_type_length = function(value)
  return "Security Type Length: "..value
end

-- Dissect: Security Type Length
dissect.security_type_length = function(buffer, offset, packet, parent)
  local length = size_of.security_type_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.security_type_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.security_type_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Type
size_of.security_type = function(buffer, offset)
  local index = 0

  index = index + size_of.security_type_length

  -- Parse runtime size of: Security Type Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Security Type
display.security_type = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Type
dissect.security_type_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Type Length: 1 Byte Unsigned Fixed Width Integer
  index, security_type_length = dissect.security_type_length(buffer, index, packet, parent)

  -- Security Type Text: 0 Byte Ascii String
  index = dissect.security_type_text(buffer, index, packet, parent, security_type_length)

  return index
end

-- Dissect: Security Type
dissect.security_type = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_type then
    local length = size_of.security_type(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_type(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.security_type, range, display)
  end

  return dissect.security_type_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Security Definition Message
size_of.security_definition_message = function(buffer, offset)
  local index = 0

  index = index + size_of.security_type(buffer, offset + index)

  index = index + size_of.security_exchange

  index = index + size_of.symbol(buffer, offset + index)

  index = index + size_of.target_location_id(buffer, offset + index)

  index = index + size_of.class_key

  index = index + size_of.security_id

  index = index + size_of.maturity_date

  index = index + size_of.price_type

  index = index + size_of.strike_price(buffer, offset + index)

  index = index + size_of.put_or_call

  index = index + size_of.minimum_strike_price_fraction(buffer, offset + index)

  index = index + size_of.max_strike_price(buffer, offset + index)

  index = index + size_of.premium_break_point(buffer, offset + index)

  index = index + size_of.minimum_above_premium_fraction(buffer, offset + index)

  index = index + size_of.minimum_below_premium_fraction(buffer, offset + index)

  index = index + size_of.exercise_style

  index = index + size_of.currency_code(buffer, offset + index)

  index = index + size_of.underlying_symbol(buffer, offset + index)

  index = index + size_of.underlying_type(buffer, offset + index)

  index = index + size_of.contract_size

  index = index + size_of.no_legs

  -- Calculate field size from count
  local security_definition_leg_count = buffer(offset + index - 1, 1):uint()
  index = index + security_definition_leg_count * 9

  return index
end

-- Display: Security Definition Message
display.security_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Message
dissect.security_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Type: Struct of 2 fields
  index, security_type = dissect.security_type(buffer, index, packet, parent)

  -- Security Exchange: 1 Byte Ascii String Enum with 5 values
  index, security_exchange = dissect.security_exchange(buffer, index, packet, parent)

  -- Symbol: Struct of 2 fields
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Target Location Id: Struct of 2 fields
  index, target_location_id = dissect.target_location_id(buffer, index, packet, parent)

  -- Class Key: 4 Byte Unsigned Fixed Width Integer
  index, class_key = dissect.class_key(buffer, index, packet, parent)

  -- Security Id: 4 Byte Unsigned Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Maturity Date: 8 Byte Unsigned Fixed Width Integer
  index, maturity_date = dissect.maturity_date(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer
  index, price_type = dissect.price_type(buffer, index, packet, parent)

  -- Strike Price: Struct of 2 fields
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = dissect.put_or_call(buffer, index, packet, parent)

  -- Minimum Strike Price Fraction: Struct of 2 fields
  index, minimum_strike_price_fraction = dissect.minimum_strike_price_fraction(buffer, index, packet, parent)

  -- Max Strike Price: Struct of 2 fields
  index, max_strike_price = dissect.max_strike_price(buffer, index, packet, parent)

  -- Premium Break Point: Struct of 2 fields
  index, premium_break_point = dissect.premium_break_point(buffer, index, packet, parent)

  -- Minimum Above Premium Fraction: Struct of 2 fields
  index, minimum_above_premium_fraction = dissect.minimum_above_premium_fraction(buffer, index, packet, parent)

  -- Minimum Below Premium Fraction: Struct of 2 fields
  index, minimum_below_premium_fraction = dissect.minimum_below_premium_fraction(buffer, index, packet, parent)

  -- Exercise Style: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, exercise_style = dissect.exercise_style(buffer, index, packet, parent)

  -- Currency Code: Struct of 2 fields
  index, currency_code = dissect.currency_code(buffer, index, packet, parent)

  -- Underlying Symbol: Struct of 2 fields
  index, underlying_symbol = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Underlying Type: Struct of 2 fields
  index, underlying_type = dissect.underlying_type(buffer, index, packet, parent)

  -- Contract Size: 4 Byte Unsigned Fixed Width Integer
  index, contract_size = dissect.contract_size(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer
  index, no_legs = dissect.no_legs(buffer, index, packet, parent)

  -- Security Definition Leg: Struct of 3 fields
  for i = 1, no_legs do
    index = dissect.security_definition_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Security Definition Message
dissect.security_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_message then
    local length = size_of.security_definition_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_definition_message(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.security_definition_message, range, display)
  end

  return dissect.security_definition_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, template_id)
  -- Size of Security Definition Message
  if template_id == 13 then
    return size_of.security_definition_message(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Message
  if template_id == 17 then
    return size_of.snapshot_full_refresh_message(buffer, offset)
  end
  -- Size of Incremental Refresh Message
  if template_id == 18 then
    return size_of.incremental_refresh_message(buffer, offset)
  end
  -- Size of Security Status Message
  if template_id == 19 then
    return size_of.security_status_message(buffer, offset)
  end
  -- Size of Heartbeat Message
  if template_id == 16 then
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
  -- Dissect Security Definition Message
  if template_id == 13 then
    return dissect.security_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Message
  if template_id == 17 then
    return dissect.snapshot_full_refresh_message(buffer, offset, packet, parent)
  end
  -- Dissect Incremental Refresh Message
  if template_id == 18 then
    return dissect.incremental_refresh_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if template_id == 19 then
    return dissect.security_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if template_id == 16 then
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
  local element = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, template_id)
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
  local value = range:uint()
  local display = display.message_sequence_number(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Template Id
size_of.template_id = 1

-- Display: Template Id
display.template_id = function(value)
  if value == 13 then
    return "Template Id: Security Definition Message (13)"
  end
  if value == 17 then
    return "Template Id: Snapshot Full Refresh Message (17)"
  end
  if value == 18 then
    return "Template Id: Incremental Refresh Message (18)"
  end
  if value == 19 then
    return "Template Id: Security Status Message (19)"
  end
  if value == 16 then
    return "Template Id: Heartbeat Message (16)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
dissect.template_id = function(buffer, offset, packet, parent)
  local length = size_of.template_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Message Length
size_of.message_length = 2

-- Display: Message Length
display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
dissect.message_length = function(buffer, offset, packet, parent)
  local length = size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.message_length

  index = index + size_of.template_id

  index = index + size_of.message_type

  index = index + size_of.message_sequence_number

  return index
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = dissect.message_length(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, template_id = dissect.template_id(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = dissect.message_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 1):uint()
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

  -- Message Header: Struct of 4 fields
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 5 branches
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
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: First Msg Seq Num
size_of.first_msg_seq_num = 4

-- Display: First Msg Seq Num
display.first_msg_seq_num = function(value)
  return "First Msg Seq Num: "..value
end

-- Dissect: First Msg Seq Num
dissect.first_msg_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.first_msg_seq_num
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.first_msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.first_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Message Count
size_of.message_count = 1

-- Display: Message Count
display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
dissect.message_count = function(buffer, offset, packet, parent)
  local length = size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_count(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.message_count, range, value, display)

  return offset + length, value
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
  local value = range:uint64()
  local display = display.sending_time(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
size_of.packet_length = 2

-- Display: Packet Length
display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
dissect.packet_length = function(buffer, offset, packet, parent)
  local length = size_of.packet_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.packet_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Size: Version
size_of.version = 1

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local length = size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + size_of.version

  index = index + size_of.packet_length

  index = index + size_of.sending_time

  index = index + size_of.message_count

  index = index + size_of.first_msg_seq_num

  return index
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = dissect.version(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = dissect.packet_length(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = dissect.message_count(buffer, index, packet, parent)

  -- First Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, first_msg_seq_num = dissect.first_msg_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(cboe_options_marketlevel2_csm_v1_0_4.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 5, 1):uint()

  -- Message: Struct of 2 fields
  for i = 1, message_count do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_options_marketlevel2_csm_v1_0_4.init()
end

-- Dissector for Cboe Options MarketLevel2 Csm 1.0.4
function cboe_options_marketlevel2_csm_v1_0_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_options_marketlevel2_csm_v1_0_4.name

  -- Dissect protocol
  local protocol = parent:add(cboe_options_marketlevel2_csm_v1_0_4, buffer(), cboe_options_marketlevel2_csm_v1_0_4.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cboe_options_marketlevel2_csm_v1_0_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_options_marketlevel2_csm_v1_0_4_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Options MarketLevel2 Csm 1.0.4
local function cboe_options_marketlevel2_csm_v1_0_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_options_marketlevel2_csm_v1_0_4_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_options_marketlevel2_csm_v1_0_4
  cboe_options_marketlevel2_csm_v1_0_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Options MarketLevel2 Csm 1.0.4
cboe_options_marketlevel2_csm_v1_0_4:register_heuristic("udp", cboe_options_marketlevel2_csm_v1_0_4_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.4
--   Date: Tuesday, May 8, 2018
--   Specification: cboestreamingbookdepthv1.0.pdf
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
