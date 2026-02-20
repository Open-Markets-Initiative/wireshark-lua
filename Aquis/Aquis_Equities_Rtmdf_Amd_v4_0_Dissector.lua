-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Aquis Equities Rtmdf Amd 4.0 Protocol
local omi_aquis_equities_rtmdf_amd_v4_0 = Proto("Aquis.Equities.Rtmdf.Amd.v4.0.Lua", "Aquis Equities Rtmdf Amd 4.0")

-- Protocol table
local aquis_equities_rtmdf_amd_v4_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Aquis Equities Rtmdf Amd 4.0 Fields
omi_aquis_equities_rtmdf_amd_v4_0.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "aquis.equities.rtmdf.amd.v4.0.algorithmicindicator", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x01000000)
omi_aquis_equities_rtmdf_amd_v4_0.fields.aod_enabled = ProtoField.new("Aod Enabled", "aquis.equities.rtmdf.amd.v4.0.aodenabled", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x000400)
omi_aquis_equities_rtmdf_amd_v4_0.fields.avx_enabled = ProtoField.new("Avx Enabled", "aquis.equities.rtmdf.amd.v4.0.avxenabled", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x040000)
omi_aquis_equities_rtmdf_amd_v4_0.fields.benchmark_reference_price_indicator = ProtoField.new("Benchmark Reference Price Indicator", "aquis.equities.rtmdf.amd.v4.0.benchmarkreferencepriceindicator", ftypes.UINT32, nil, base.DEC, 0x00030000)
omi_aquis_equities_rtmdf_amd_v4_0.fields.binary_mmt = ProtoField.new("Binary Mmt", "aquis.equities.rtmdf.amd.v4.0.binarymmt", ftypes.UINT32)
omi_aquis_equities_rtmdf_amd_v4_0.fields.closing_buy_qty = ProtoField.new("Closing Buy Qty", "aquis.equities.rtmdf.amd.v4.0.closingbuyqty", ftypes.UINT32)
omi_aquis_equities_rtmdf_amd_v4_0.fields.closing_sell_qty = ProtoField.new("Closing Sell Qty", "aquis.equities.rtmdf.amd.v4.0.closingsellqty", ftypes.UINT32)
omi_aquis_equities_rtmdf_amd_v4_0.fields.crossing_trade = ProtoField.new("Crossing Trade", "aquis.equities.rtmdf.amd.v4.0.crossingtrade", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00002000)
omi_aquis_equities_rtmdf_amd_v4_0.fields.currency = ProtoField.new("Currency", "aquis.equities.rtmdf.amd.v4.0.currency", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.deferral_type = ProtoField.new("Deferral Type", "aquis.equities.rtmdf.amd.v4.0.deferraltype", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x10000000)
omi_aquis_equities_rtmdf_amd_v4_0.fields.dividend = ProtoField.new("Dividend", "aquis.equities.rtmdf.amd.v4.0.dividend", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00040000)
omi_aquis_equities_rtmdf_amd_v4_0.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "aquis.equities.rtmdf.amd.v4.0.duplicativeindicator", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x20000000)
omi_aquis_equities_rtmdf_amd_v4_0.fields.illiquid = ProtoField.new("Illiquid", "aquis.equities.rtmdf.amd.v4.0.illiquid", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x000004)
omi_aquis_equities_rtmdf_amd_v4_0.fields.indicative_price = ProtoField.new("Indicative Price", "aquis.equities.rtmdf.amd.v4.0.indicativeprice", ftypes.UINT64)
omi_aquis_equities_rtmdf_amd_v4_0.fields.isin = ProtoField.new("Isin", "aquis.equities.rtmdf.amd.v4.0.isin", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.lot_size = ProtoField.new("Lot Size", "aquis.equities.rtmdf.amd.v4.0.lotsize", ftypes.UINT64)
omi_aquis_equities_rtmdf_amd_v4_0.fields.lot_size_decimal = ProtoField.new("Lot Size Decimal", "aquis.equities.rtmdf.amd.v4.0.lotsizedecimal", ftypes.UINT8)
omi_aquis_equities_rtmdf_amd_v4_0.fields.mac_enabled = ProtoField.new("Mac Enabled", "aquis.equities.rtmdf.amd.v4.0.macenabled", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x000001)
omi_aquis_equities_rtmdf_amd_v4_0.fields.mac_open = ProtoField.new("Mac Open", "aquis.equities.rtmdf.amd.v4.0.macopen", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_aquis_equities_rtmdf_amd_v4_0.fields.mac_run = ProtoField.new("Mac Run", "aquis.equities.rtmdf.amd.v4.0.macrun", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_aquis_equities_rtmdf_amd_v4_0.fields.market_flags = ProtoField.new("Market Flags", "aquis.equities.rtmdf.amd.v4.0.marketflags", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.market_mechanism = ProtoField.new("Market Mechanism", "aquis.equities.rtmdf.amd.v4.0.marketmechanism", ftypes.UINT32, nil, base.DEC, 0x00000007)
omi_aquis_equities_rtmdf_amd_v4_0.fields.match_vol = ProtoField.new("Match Vol", "aquis.equities.rtmdf.amd.v4.0.matchvol", ftypes.UINT32)
omi_aquis_equities_rtmdf_amd_v4_0.fields.md_flags = ProtoField.new("Md Flags", "aquis.equities.rtmdf.amd.v4.0.mdflags", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.message = ProtoField.new("Message", "aquis.equities.rtmdf.amd.v4.0.message", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.message_count = ProtoField.new("Message Count", "aquis.equities.rtmdf.amd.v4.0.messagecount", ftypes.UINT8)
omi_aquis_equities_rtmdf_amd_v4_0.fields.message_header = ProtoField.new("Message Header", "aquis.equities.rtmdf.amd.v4.0.messageheader", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.mic = ProtoField.new("Mic", "aquis.equities.rtmdf.amd.v4.0.mic", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.modification_indicator = ProtoField.new("Modification Indicator", "aquis.equities.rtmdf.amd.v4.0.modificationindicator", ftypes.UINT32, nil, base.DEC, 0x0000C000)
omi_aquis_equities_rtmdf_amd_v4_0.fields.msg_length = ProtoField.new("Msg Length", "aquis.equities.rtmdf.amd.v4.0.msglength", ftypes.UINT8)
omi_aquis_equities_rtmdf_amd_v4_0.fields.msg_type = ProtoField.new("Msg Type", "aquis.equities.rtmdf.amd.v4.0.msgtype", ftypes.UINT8)
omi_aquis_equities_rtmdf_amd_v4_0.fields.name = ProtoField.new("Name", "aquis.equities.rtmdf.amd.v4.0.name", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.negotiation_indicator_or_pre_trade_transparency_waiver = ProtoField.new("Negotiation Indicator Or Pre Trade Transparency Waiver", "aquis.equities.rtmdf.amd.v4.0.negotiationindicatororpretradetransparencywaiver", ftypes.UINT32, nil, base.DEC, 0x00001C00)
omi_aquis_equities_rtmdf_amd_v4_0.fields.off_book_automation = ProtoField.new("Off Book Automation", "aquis.equities.rtmdf.amd.v4.0.offbookautomation", ftypes.UINT32, nil, base.DEC, 0x00180000)
omi_aquis_equities_rtmdf_amd_v4_0.fields.order_ref = ProtoField.new("Order Ref", "aquis.equities.rtmdf.amd.v4.0.orderref", ftypes.UINT32)
omi_aquis_equities_rtmdf_amd_v4_0.fields.packet = ProtoField.new("Packet", "aquis.equities.rtmdf.amd.v4.0.packet", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.payload = ProtoField.new("Payload", "aquis.equities.rtmdf.amd.v4.0.payload", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.price = ProtoField.new("Price", "aquis.equities.rtmdf.amd.v4.0.price", ftypes.UINT64)
omi_aquis_equities_rtmdf_amd_v4_0.fields.price_formation_discovery_process = ProtoField.new("Price Formation Discovery Process", "aquis.equities.rtmdf.amd.v4.0.priceformationdiscoveryprocess", ftypes.UINT32, nil, base.DEC, 0x00E00000)
omi_aquis_equities_rtmdf_amd_v4_0.fields.publication_mode_post_trade_deferral = ProtoField.new("Publication Mode Post Trade Deferral", "aquis.equities.rtmdf.amd.v4.0.publicationmodeposttradedeferral", ftypes.UINT32, nil, base.DEC, 0x0E000000)
omi_aquis_equities_rtmdf_amd_v4_0.fields.quantity = ProtoField.new("Quantity", "aquis.equities.rtmdf.amd.v4.0.quantity", ftypes.UINT32)
omi_aquis_equities_rtmdf_amd_v4_0.fields.reserved = ProtoField.new("Reserved", "aquis.equities.rtmdf.amd.v4.0.reserved", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_aquis_equities_rtmdf_amd_v4_0.fields.reserved_20 = ProtoField.new("Reserved 20", "aquis.equities.rtmdf.amd.v4.0.reserved20", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.security_definition_flags = ProtoField.new("Security Definition Flags", "aquis.equities.rtmdf.amd.v4.0.securitydefinitionflags", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.security_id = ProtoField.new("Security Id", "aquis.equities.rtmdf.amd.v4.0.securityid", ftypes.UINT16)
omi_aquis_equities_rtmdf_amd_v4_0.fields.seq_no = ProtoField.new("Seq No", "aquis.equities.rtmdf.amd.v4.0.seqno", ftypes.UINT32)
omi_aquis_equities_rtmdf_amd_v4_0.fields.side = ProtoField.new("Side", "aquis.equities.rtmdf.amd.v4.0.side", ftypes.UINT8)
omi_aquis_equities_rtmdf_amd_v4_0.fields.spare = ProtoField.new("Spare", "aquis.equities.rtmdf.amd.v4.0.spare", ftypes.UINT32, nil, base.DEC, 0xC0000000)
omi_aquis_equities_rtmdf_amd_v4_0.fields.test_stock = ProtoField.new("Test Stock", "aquis.equities.rtmdf.amd.v4.0.teststock", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x000002)
omi_aquis_equities_rtmdf_amd_v4_0.fields.threshold = ProtoField.new("Threshold", "aquis.equities.rtmdf.amd.v4.0.threshold", ftypes.UINT64)
omi_aquis_equities_rtmdf_amd_v4_0.fields.tick_size = ProtoField.new("Tick Size", "aquis.equities.rtmdf.amd.v4.0.ticksize", ftypes.UINT64)
omi_aquis_equities_rtmdf_amd_v4_0.fields.tick_table_id = ProtoField.new("Tick Table Id", "aquis.equities.rtmdf.amd.v4.0.ticktableid", ftypes.UINT8)
omi_aquis_equities_rtmdf_amd_v4_0.fields.timestamp = ProtoField.new("Timestamp", "aquis.equities.rtmdf.amd.v4.0.timestamp", ftypes.UINT64)
omi_aquis_equities_rtmdf_amd_v4_0.fields.trade_ref = ProtoField.new("Trade Ref", "aquis.equities.rtmdf.amd.v4.0.traderef", ftypes.UINT32)
omi_aquis_equities_rtmdf_amd_v4_0.fields.trade_type = ProtoField.new("Trade Type", "aquis.equities.rtmdf.amd.v4.0.tradetype", ftypes.UINT8)
omi_aquis_equities_rtmdf_amd_v4_0.fields.trading = ProtoField.new("Trading", "aquis.equities.rtmdf.amd.v4.0.trading", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_aquis_equities_rtmdf_amd_v4_0.fields.trading_mode = ProtoField.new("Trading Mode", "aquis.equities.rtmdf.amd.v4.0.tradingmode", ftypes.UINT32, nil, base.DEC, 0x00000078)
omi_aquis_equities_rtmdf_amd_v4_0.fields.trading_phase = ProtoField.new("Trading Phase", "aquis.equities.rtmdf.amd.v4.0.tradingphase", ftypes.UINT8)
omi_aquis_equities_rtmdf_amd_v4_0.fields.trading_status = ProtoField.new("Trading Status", "aquis.equities.rtmdf.amd.v4.0.tradingstatus", ftypes.UINT8)
omi_aquis_equities_rtmdf_amd_v4_0.fields.transaction_category = ProtoField.new("Transaction Category", "aquis.equities.rtmdf.amd.v4.0.transactioncategory", ftypes.UINT32, nil, base.DEC, 0x00000380)
omi_aquis_equities_rtmdf_amd_v4_0.fields.umtf = ProtoField.new("Umtf", "aquis.equities.rtmdf.amd.v4.0.umtf", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.unrestricted_liquidity_indicator = ProtoField.new("Unrestricted Liquidity Indicator", "aquis.equities.rtmdf.amd.v4.0.unrestrictedliquidityindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)

-- Aquis Equities Amd Rtmdf 4.0 Application Messages
omi_aquis_equities_rtmdf_amd_v4_0.fields.ao_d_update_message = ProtoField.new("Ao D Update Message", "aquis.equities.rtmdf.amd.v4.0.aodupdatemessage", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.ma_c_update_message = ProtoField.new("Ma C Update Message", "aquis.equities.rtmdf.amd.v4.0.macupdatemessage", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.order_add = ProtoField.new("Order Add", "aquis.equities.rtmdf.amd.v4.0.orderadd", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.order_cancel = ProtoField.new("Order Cancel", "aquis.equities.rtmdf.amd.v4.0.ordercancel", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.order_modify = ProtoField.new("Order Modify", "aquis.equities.rtmdf.amd.v4.0.ordermodify", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.security_definition_message = ProtoField.new("Security Definition Message", "aquis.equities.rtmdf.amd.v4.0.securitydefinitionmessage", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.security_status_message = ProtoField.new("Security Status Message", "aquis.equities.rtmdf.amd.v4.0.securitystatusmessage", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.tick_table_data_message = ProtoField.new("Tick Table Data Message", "aquis.equities.rtmdf.amd.v4.0.ticktabledatamessage", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.trade = ProtoField.new("Trade", "aquis.equities.rtmdf.amd.v4.0.trade", ftypes.STRING)
omi_aquis_equities_rtmdf_amd_v4_0.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "aquis.equities.rtmdf.amd.v4.0.tradebustmessage", ftypes.STRING)

-- Aquis Equities Rtmdf Amd 4.0 generated fields
omi_aquis_equities_rtmdf_amd_v4_0.fields.message_index = ProtoField.new("Message Index", "aquis.equities.rtmdf.amd.v4.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Aquis Equities Rtmdf Amd 4.0 Element Dissection Options
show.ao_d_update_message = true
show.binary_mmt = true
show.ma_c_update_message = true
show.market_flags = true
show.md_flags = true
show.message = true
show.message_header = true
show.order_add = true
show.order_cancel = true
show.order_modify = true
show.packet = true
show.security_definition_flags = true
show.security_definition_message = true
show.security_status_message = true
show.tick_table_data_message = true
show.trade = true
show.trade_bust_message = true
show.payload = false

-- Register Aquis Equities Rtmdf Amd 4.0 Show Options
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_ao_d_update_message = Pref.bool("Show Ao D Update Message", show.ao_d_update_message, "Parse and add Ao D Update Message to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_binary_mmt = Pref.bool("Show Binary Mmt", show.binary_mmt, "Parse and add Binary Mmt to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_ma_c_update_message = Pref.bool("Show Ma C Update Message", show.ma_c_update_message, "Parse and add Ma C Update Message to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_market_flags = Pref.bool("Show Market Flags", show.market_flags, "Parse and add Market Flags to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_md_flags = Pref.bool("Show Md Flags", show.md_flags, "Parse and add Md Flags to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_order_add = Pref.bool("Show Order Add", show.order_add, "Parse and add Order Add to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_order_cancel = Pref.bool("Show Order Cancel", show.order_cancel, "Parse and add Order Cancel to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_order_modify = Pref.bool("Show Order Modify", show.order_modify, "Parse and add Order Modify to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_security_definition_flags = Pref.bool("Show Security Definition Flags", show.security_definition_flags, "Parse and add Security Definition Flags to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_security_definition_message = Pref.bool("Show Security Definition Message", show.security_definition_message, "Parse and add Security Definition Message to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_tick_table_data_message = Pref.bool("Show Tick Table Data Message", show.tick_table_data_message, "Parse and add Tick Table Data Message to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_trade = Pref.bool("Show Trade", show.trade, "Parse and add Trade to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_trade_bust_message = Pref.bool("Show Trade Bust Message", show.trade_bust_message, "Parse and add Trade Bust Message to protocol tree")
omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_aquis_equities_rtmdf_amd_v4_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.ao_d_update_message ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_ao_d_update_message then
    show.ao_d_update_message = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_ao_d_update_message
    changed = true
  end
  if show.binary_mmt ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_binary_mmt then
    show.binary_mmt = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_binary_mmt
    changed = true
  end
  if show.ma_c_update_message ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_ma_c_update_message then
    show.ma_c_update_message = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_ma_c_update_message
    changed = true
  end
  if show.market_flags ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_market_flags then
    show.market_flags = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_market_flags
    changed = true
  end
  if show.md_flags ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_md_flags then
    show.md_flags = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_md_flags
    changed = true
  end
  if show.message ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_message then
    show.message = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_message_header then
    show.message_header = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_message_header
    changed = true
  end
  if show.order_add ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_order_add then
    show.order_add = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_order_add
    changed = true
  end
  if show.order_cancel ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_order_cancel then
    show.order_cancel = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_order_cancel
    changed = true
  end
  if show.order_modify ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_order_modify then
    show.order_modify = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_order_modify
    changed = true
  end
  if show.packet ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_packet then
    show.packet = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_packet
    changed = true
  end
  if show.security_definition_flags ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_security_definition_flags then
    show.security_definition_flags = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_security_definition_flags
    changed = true
  end
  if show.security_definition_message ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_security_definition_message then
    show.security_definition_message = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_security_definition_message
    changed = true
  end
  if show.security_status_message ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_security_status_message then
    show.security_status_message = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_security_status_message
    changed = true
  end
  if show.tick_table_data_message ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_tick_table_data_message then
    show.tick_table_data_message = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_tick_table_data_message
    changed = true
  end
  if show.trade ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_trade then
    show.trade = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_trade
    changed = true
  end
  if show.trade_bust_message ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_trade_bust_message then
    show.trade_bust_message = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_trade_bust_message
    changed = true
  end
  if show.payload ~= omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_payload then
    show.payload = omi_aquis_equities_rtmdf_amd_v4_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Aquis Equities Rtmdf Amd 4.0
-----------------------------------------------------------------------

-- Timestamp
aquis_equities_rtmdf_amd_v4_0.timestamp = {}

-- Size: Timestamp
aquis_equities_rtmdf_amd_v4_0.timestamp.size = 8

-- Display: Timestamp
aquis_equities_rtmdf_amd_v4_0.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
aquis_equities_rtmdf_amd_v4_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_rtmdf_amd_v4_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Closing Sell Qty
aquis_equities_rtmdf_amd_v4_0.closing_sell_qty = {}

-- Size: Closing Sell Qty
aquis_equities_rtmdf_amd_v4_0.closing_sell_qty.size = 4

-- Display: Closing Sell Qty
aquis_equities_rtmdf_amd_v4_0.closing_sell_qty.display = function(value)
  return "Closing Sell Qty: "..value
end

-- Dissect: Closing Sell Qty
aquis_equities_rtmdf_amd_v4_0.closing_sell_qty.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.closing_sell_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.closing_sell_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.closing_sell_qty, range, value, display)

  return offset + length, value
end

-- Closing Buy Qty
aquis_equities_rtmdf_amd_v4_0.closing_buy_qty = {}

-- Size: Closing Buy Qty
aquis_equities_rtmdf_amd_v4_0.closing_buy_qty.size = 4

-- Display: Closing Buy Qty
aquis_equities_rtmdf_amd_v4_0.closing_buy_qty.display = function(value)
  return "Closing Buy Qty: "..value
end

-- Dissect: Closing Buy Qty
aquis_equities_rtmdf_amd_v4_0.closing_buy_qty.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.closing_buy_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.closing_buy_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.closing_buy_qty, range, value, display)

  return offset + length, value
end

-- Indicative Price
aquis_equities_rtmdf_amd_v4_0.indicative_price = {}

-- Size: Indicative Price
aquis_equities_rtmdf_amd_v4_0.indicative_price.size = 8

-- Display: Indicative Price
aquis_equities_rtmdf_amd_v4_0.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Dissect: Indicative Price
aquis_equities_rtmdf_amd_v4_0.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.indicative_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_rtmdf_amd_v4_0.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Security Id
aquis_equities_rtmdf_amd_v4_0.security_id = {}

-- Size: Security Id
aquis_equities_rtmdf_amd_v4_0.security_id.size = 2

-- Display: Security Id
aquis_equities_rtmdf_amd_v4_0.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
aquis_equities_rtmdf_amd_v4_0.security_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Ma C Update Message
aquis_equities_rtmdf_amd_v4_0.ma_c_update_message = {}

-- Size: Ma C Update Message
aquis_equities_rtmdf_amd_v4_0.ma_c_update_message.size =
  aquis_equities_rtmdf_amd_v4_0.security_id.size + 
  aquis_equities_rtmdf_amd_v4_0.indicative_price.size + 
  aquis_equities_rtmdf_amd_v4_0.closing_buy_qty.size + 
  aquis_equities_rtmdf_amd_v4_0.closing_sell_qty.size + 
  aquis_equities_rtmdf_amd_v4_0.timestamp.size

-- Display: Ma C Update Message
aquis_equities_rtmdf_amd_v4_0.ma_c_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ma C Update Message
aquis_equities_rtmdf_amd_v4_0.ma_c_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_equities_rtmdf_amd_v4_0.security_id.dissect(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = aquis_equities_rtmdf_amd_v4_0.indicative_price.dissect(buffer, index, packet, parent)

  -- Closing Buy Qty: u32
  index, closing_buy_qty = aquis_equities_rtmdf_amd_v4_0.closing_buy_qty.dissect(buffer, index, packet, parent)

  -- Closing Sell Qty: u32
  index, closing_sell_qty = aquis_equities_rtmdf_amd_v4_0.closing_sell_qty.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_equities_rtmdf_amd_v4_0.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ma C Update Message
aquis_equities_rtmdf_amd_v4_0.ma_c_update_message.dissect = function(buffer, offset, packet, parent)
  if show.ma_c_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.ma_c_update_message, buffer(offset, 0))
    local index = aquis_equities_rtmdf_amd_v4_0.ma_c_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_rtmdf_amd_v4_0.ma_c_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_rtmdf_amd_v4_0.ma_c_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Match Vol
aquis_equities_rtmdf_amd_v4_0.match_vol = {}

-- Size: Match Vol
aquis_equities_rtmdf_amd_v4_0.match_vol.size = 4

-- Display: Match Vol
aquis_equities_rtmdf_amd_v4_0.match_vol.display = function(value)
  return "Match Vol: "..value
end

-- Dissect: Match Vol
aquis_equities_rtmdf_amd_v4_0.match_vol.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.match_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.match_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.match_vol, range, value, display)

  return offset + length, value
end

-- Ao D Update Message
aquis_equities_rtmdf_amd_v4_0.ao_d_update_message = {}

-- Size: Ao D Update Message
aquis_equities_rtmdf_amd_v4_0.ao_d_update_message.size =
  aquis_equities_rtmdf_amd_v4_0.security_id.size + 
  aquis_equities_rtmdf_amd_v4_0.indicative_price.size + 
  aquis_equities_rtmdf_amd_v4_0.match_vol.size + 
  aquis_equities_rtmdf_amd_v4_0.timestamp.size

-- Display: Ao D Update Message
aquis_equities_rtmdf_amd_v4_0.ao_d_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ao D Update Message
aquis_equities_rtmdf_amd_v4_0.ao_d_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_equities_rtmdf_amd_v4_0.security_id.dissect(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = aquis_equities_rtmdf_amd_v4_0.indicative_price.dissect(buffer, index, packet, parent)

  -- Match Vol: u32
  index, match_vol = aquis_equities_rtmdf_amd_v4_0.match_vol.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_equities_rtmdf_amd_v4_0.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ao D Update Message
aquis_equities_rtmdf_amd_v4_0.ao_d_update_message.dissect = function(buffer, offset, packet, parent)
  if show.ao_d_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.ao_d_update_message, buffer(offset, 0))
    local index = aquis_equities_rtmdf_amd_v4_0.ao_d_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_rtmdf_amd_v4_0.ao_d_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_rtmdf_amd_v4_0.ao_d_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Phase
aquis_equities_rtmdf_amd_v4_0.trading_phase = {}

-- Size: Trading Phase
aquis_equities_rtmdf_amd_v4_0.trading_phase.size = 1

-- Display: Trading Phase
aquis_equities_rtmdf_amd_v4_0.trading_phase.display = function(value)
  if value == 0 then
    return "Trading Phase: Closed (0)"
  end
  if value == 1 then
    return "Trading Phase: Continuous (1)"
  end

  return "Trading Phase: Unknown("..value..")"
end

-- Dissect: Trading Phase
aquis_equities_rtmdf_amd_v4_0.trading_phase.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.trading_phase.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.trading_phase.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.trading_phase, range, value, display)

  return offset + length, value
end

-- Market Flags
aquis_equities_rtmdf_amd_v4_0.market_flags = {}

-- Size: Market Flags
aquis_equities_rtmdf_amd_v4_0.market_flags.size = 1

-- Display: Market Flags
aquis_equities_rtmdf_amd_v4_0.market_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trading flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trading"
  end
  -- Is Mac Open flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Mac Open"
  end
  -- Is Mac Run flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Mac Run"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Market Flags
aquis_equities_rtmdf_amd_v4_0.market_flags.bits = function(range, value, packet, parent)

  -- Trading: 1 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.trading, range, value)

  -- Mac Open: 1 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.mac_open, range, value)

  -- Mac Run: 1 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.mac_run, range, value)

  -- Reserved: 7 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.reserved, range, value)
end

-- Dissect: Market Flags
aquis_equities_rtmdf_amd_v4_0.market_flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_rtmdf_amd_v4_0.market_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.market_flags.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.market_flags, range, display)

  if show.market_flags then
    aquis_equities_rtmdf_amd_v4_0.market_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trading Status
aquis_equities_rtmdf_amd_v4_0.trading_status = {}

-- Size: Trading Status
aquis_equities_rtmdf_amd_v4_0.trading_status.size = 1

-- Display: Trading Status
aquis_equities_rtmdf_amd_v4_0.trading_status.display = function(value)
  if value == 1 then
    return "Trading Status: Active (1)"
  end
  if value == 2 then
    return "Trading Status: Halted (2)"
  end
  if value == 3 then
    return "Trading Status: Suspended (3)"
  end
  if value == 8 then
    return "Trading Status: Ao D Start (8)"
  end
  if value == 24 then
    return "Trading Status: Ao D End (24)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
aquis_equities_rtmdf_amd_v4_0.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Security Status Message
aquis_equities_rtmdf_amd_v4_0.security_status_message = {}

-- Size: Security Status Message
aquis_equities_rtmdf_amd_v4_0.security_status_message.size =
  aquis_equities_rtmdf_amd_v4_0.security_id.size + 
  aquis_equities_rtmdf_amd_v4_0.trading_status.size + 
  aquis_equities_rtmdf_amd_v4_0.market_flags.size + 
  aquis_equities_rtmdf_amd_v4_0.timestamp.size + 
  aquis_equities_rtmdf_amd_v4_0.trading_phase.size

-- Display: Security Status Message
aquis_equities_rtmdf_amd_v4_0.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
aquis_equities_rtmdf_amd_v4_0.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_equities_rtmdf_amd_v4_0.security_id.dissect(buffer, index, packet, parent)

  -- Trading Status: u8
  index, trading_status = aquis_equities_rtmdf_amd_v4_0.trading_status.dissect(buffer, index, packet, parent)

  -- Market Flags: Struct of 4 fields
  index, market_flags = aquis_equities_rtmdf_amd_v4_0.market_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_equities_rtmdf_amd_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Trading Phase: u8
  index, trading_phase = aquis_equities_rtmdf_amd_v4_0.trading_phase.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
aquis_equities_rtmdf_amd_v4_0.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.security_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.security_status_message, buffer(offset, 0))
    local index = aquis_equities_rtmdf_amd_v4_0.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_rtmdf_amd_v4_0.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_rtmdf_amd_v4_0.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Lot Size Decimal
aquis_equities_rtmdf_amd_v4_0.lot_size_decimal = {}

-- Size: Lot Size Decimal
aquis_equities_rtmdf_amd_v4_0.lot_size_decimal.size = 1

-- Display: Lot Size Decimal
aquis_equities_rtmdf_amd_v4_0.lot_size_decimal.display = function(value)
  return "Lot Size Decimal: "..value
end

-- Dissect: Lot Size Decimal
aquis_equities_rtmdf_amd_v4_0.lot_size_decimal.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.lot_size_decimal.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.lot_size_decimal.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.lot_size_decimal, range, value, display)

  return offset + length, value
end

-- Lot Size
aquis_equities_rtmdf_amd_v4_0.lot_size = {}

-- Size: Lot Size
aquis_equities_rtmdf_amd_v4_0.lot_size.size = 8

-- Display: Lot Size
aquis_equities_rtmdf_amd_v4_0.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
aquis_equities_rtmdf_amd_v4_0.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_rtmdf_amd_v4_0.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Reserved 20
aquis_equities_rtmdf_amd_v4_0.reserved_20 = {}

-- Size: Reserved 20
aquis_equities_rtmdf_amd_v4_0.reserved_20.size = 20

-- Display: Reserved 20
aquis_equities_rtmdf_amd_v4_0.reserved_20.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reserved 20: No Value"
  end

  return "Reserved 20: "..value
end

-- Dissect: Reserved 20
aquis_equities_rtmdf_amd_v4_0.reserved_20.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.reserved_20.size
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

  local display = aquis_equities_rtmdf_amd_v4_0.reserved_20.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.reserved_20, range, value, display)

  return offset + length, value
end

-- Security Definition Flags
aquis_equities_rtmdf_amd_v4_0.security_definition_flags = {}

-- Size: Security Definition Flags
aquis_equities_rtmdf_amd_v4_0.security_definition_flags.size = 3

-- Display: Security Definition Flags
aquis_equities_rtmdf_amd_v4_0.security_definition_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Mac Enabled flag set?
  if bit.band(value, 0x000001) ~= 0 then
    flags[#flags + 1] = "Mac Enabled"
  end
  -- Is Test Stock flag set?
  if bit.band(value, 0x000002) ~= 0 then
    flags[#flags + 1] = "Test Stock"
  end
  -- Is Illiquid flag set?
  if bit.band(value, 0x000004) ~= 0 then
    flags[#flags + 1] = "Illiquid"
  end
  -- Is Aod Enabled flag set?
  if bit.band(value, 0x000400) ~= 0 then
    flags[#flags + 1] = "Aod Enabled"
  end
  -- Is Avx Enabled flag set?
  if bit.band(value, 0x040000) ~= 0 then
    flags[#flags + 1] = "Avx Enabled"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Definition Flags
aquis_equities_rtmdf_amd_v4_0.security_definition_flags.bits = function(range, value, packet, parent)

  -- Mac Enabled: 1 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.mac_enabled, range, value)

  -- Test Stock: 1 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.test_stock, range, value)

  -- Illiquid: 1 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.illiquid, range, value)

  -- Reserved: 7 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.reserved, range, value)

  -- Aod Enabled: 1 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.aod_enabled, range, value)

  -- Reserved: 7 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.reserved, range, value)

  -- Avx Enabled: 1 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.avx_enabled, range, value)

  -- Reserved: 7 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.reserved, range, value)
end

-- Dissect: Security Definition Flags
aquis_equities_rtmdf_amd_v4_0.security_definition_flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_rtmdf_amd_v4_0.security_definition_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.security_definition_flags.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.security_definition_flags, range, display)

  if show.security_definition_flags then
    aquis_equities_rtmdf_amd_v4_0.security_definition_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Tick Table Id
aquis_equities_rtmdf_amd_v4_0.tick_table_id = {}

-- Size: Tick Table Id
aquis_equities_rtmdf_amd_v4_0.tick_table_id.size = 1

-- Display: Tick Table Id
aquis_equities_rtmdf_amd_v4_0.tick_table_id.display = function(value)
  return "Tick Table Id: "..value
end

-- Dissect: Tick Table Id
aquis_equities_rtmdf_amd_v4_0.tick_table_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.tick_table_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.tick_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.tick_table_id, range, value, display)

  return offset + length, value
end

-- Mic
aquis_equities_rtmdf_amd_v4_0.mic = {}

-- Size: Mic
aquis_equities_rtmdf_amd_v4_0.mic.size = 4

-- Display: Mic
aquis_equities_rtmdf_amd_v4_0.mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic: No Value"
  end

  return "Mic: "..value
end

-- Dissect: Mic
aquis_equities_rtmdf_amd_v4_0.mic.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.mic.size
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

  local display = aquis_equities_rtmdf_amd_v4_0.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.mic, range, value, display)

  return offset + length, value
end

-- Currency
aquis_equities_rtmdf_amd_v4_0.currency = {}

-- Size: Currency
aquis_equities_rtmdf_amd_v4_0.currency.size = 3

-- Display: Currency
aquis_equities_rtmdf_amd_v4_0.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
aquis_equities_rtmdf_amd_v4_0.currency.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.currency.size
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

  local display = aquis_equities_rtmdf_amd_v4_0.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.currency, range, value, display)

  return offset + length, value
end

-- Isin
aquis_equities_rtmdf_amd_v4_0.isin = {}

-- Size: Isin
aquis_equities_rtmdf_amd_v4_0.isin.size = 12

-- Display: Isin
aquis_equities_rtmdf_amd_v4_0.isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin: No Value"
  end

  return "Isin: "..value
end

-- Dissect: Isin
aquis_equities_rtmdf_amd_v4_0.isin.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.isin.size
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

  local display = aquis_equities_rtmdf_amd_v4_0.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.isin, range, value, display)

  return offset + length, value
end

-- Umtf
aquis_equities_rtmdf_amd_v4_0.umtf = {}

-- Size: Umtf
aquis_equities_rtmdf_amd_v4_0.umtf.size = 6

-- Display: Umtf
aquis_equities_rtmdf_amd_v4_0.umtf.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Umtf: No Value"
  end

  return "Umtf: "..value
end

-- Dissect: Umtf
aquis_equities_rtmdf_amd_v4_0.umtf.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.umtf.size
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

  local display = aquis_equities_rtmdf_amd_v4_0.umtf.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.umtf, range, value, display)

  return offset + length, value
end

-- Security Definition Message
aquis_equities_rtmdf_amd_v4_0.security_definition_message = {}

-- Size: Security Definition Message
aquis_equities_rtmdf_amd_v4_0.security_definition_message.size =
  aquis_equities_rtmdf_amd_v4_0.security_id.size + 
  aquis_equities_rtmdf_amd_v4_0.umtf.size + 
  aquis_equities_rtmdf_amd_v4_0.isin.size + 
  aquis_equities_rtmdf_amd_v4_0.currency.size + 
  aquis_equities_rtmdf_amd_v4_0.mic.size + 
  aquis_equities_rtmdf_amd_v4_0.tick_table_id.size + 
  aquis_equities_rtmdf_amd_v4_0.security_definition_flags.size + 
  aquis_equities_rtmdf_amd_v4_0.reserved_20.size + 
  aquis_equities_rtmdf_amd_v4_0.lot_size.size + 
  aquis_equities_rtmdf_amd_v4_0.lot_size_decimal.size

-- Display: Security Definition Message
aquis_equities_rtmdf_amd_v4_0.security_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message
aquis_equities_rtmdf_amd_v4_0.security_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_equities_rtmdf_amd_v4_0.security_id.dissect(buffer, index, packet, parent)

  -- Umtf: char(6)
  index, umtf = aquis_equities_rtmdf_amd_v4_0.umtf.dissect(buffer, index, packet, parent)

  -- Isin: char(12)
  index, isin = aquis_equities_rtmdf_amd_v4_0.isin.dissect(buffer, index, packet, parent)

  -- Currency: char(3)
  index, currency = aquis_equities_rtmdf_amd_v4_0.currency.dissect(buffer, index, packet, parent)

  -- Mic: char(4)
  index, mic = aquis_equities_rtmdf_amd_v4_0.mic.dissect(buffer, index, packet, parent)

  -- Tick Table Id: u8
  index, tick_table_id = aquis_equities_rtmdf_amd_v4_0.tick_table_id.dissect(buffer, index, packet, parent)

  -- Security Definition Flags: Struct of 8 fields
  index, security_definition_flags = aquis_equities_rtmdf_amd_v4_0.security_definition_flags.dissect(buffer, index, packet, parent)

  -- Reserved 20: char(20)
  index, reserved_20 = aquis_equities_rtmdf_amd_v4_0.reserved_20.dissect(buffer, index, packet, parent)

  -- Lot Size: u64
  index, lot_size = aquis_equities_rtmdf_amd_v4_0.lot_size.dissect(buffer, index, packet, parent)

  -- Lot Size Decimal: u8
  index, lot_size_decimal = aquis_equities_rtmdf_amd_v4_0.lot_size_decimal.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Message
aquis_equities_rtmdf_amd_v4_0.security_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.security_definition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.security_definition_message, buffer(offset, 0))
    local index = aquis_equities_rtmdf_amd_v4_0.security_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_rtmdf_amd_v4_0.security_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_rtmdf_amd_v4_0.security_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Size
aquis_equities_rtmdf_amd_v4_0.tick_size = {}

-- Size: Tick Size
aquis_equities_rtmdf_amd_v4_0.tick_size.size = 8

-- Display: Tick Size
aquis_equities_rtmdf_amd_v4_0.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
aquis_equities_rtmdf_amd_v4_0.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.tick_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_rtmdf_amd_v4_0.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Threshold
aquis_equities_rtmdf_amd_v4_0.threshold = {}

-- Size: Threshold
aquis_equities_rtmdf_amd_v4_0.threshold.size = 8

-- Display: Threshold
aquis_equities_rtmdf_amd_v4_0.threshold.display = function(value)
  return "Threshold: "..value
end

-- Dissect: Threshold
aquis_equities_rtmdf_amd_v4_0.threshold.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.threshold.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_rtmdf_amd_v4_0.threshold.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.threshold, range, value, display)

  return offset + length, value
end

-- Name
aquis_equities_rtmdf_amd_v4_0.name = {}

-- Size: Name
aquis_equities_rtmdf_amd_v4_0.name.size = 10

-- Display: Name
aquis_equities_rtmdf_amd_v4_0.name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Name: No Value"
  end

  return "Name: "..value
end

-- Dissect: Name
aquis_equities_rtmdf_amd_v4_0.name.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.name.size
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

  local display = aquis_equities_rtmdf_amd_v4_0.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.name, range, value, display)

  return offset + length, value
end

-- Tick Table Data Message
aquis_equities_rtmdf_amd_v4_0.tick_table_data_message = {}

-- Size: Tick Table Data Message
aquis_equities_rtmdf_amd_v4_0.tick_table_data_message.size =
  aquis_equities_rtmdf_amd_v4_0.tick_table_id.size + 
  aquis_equities_rtmdf_amd_v4_0.name.size + 
  aquis_equities_rtmdf_amd_v4_0.threshold.size + 
  aquis_equities_rtmdf_amd_v4_0.tick_size.size

-- Display: Tick Table Data Message
aquis_equities_rtmdf_amd_v4_0.tick_table_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Table Data Message
aquis_equities_rtmdf_amd_v4_0.tick_table_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tick Table Id: u8
  index, tick_table_id = aquis_equities_rtmdf_amd_v4_0.tick_table_id.dissect(buffer, index, packet, parent)

  -- Name: char(10)
  index, name = aquis_equities_rtmdf_amd_v4_0.name.dissect(buffer, index, packet, parent)

  -- Threshold: u64
  index, threshold = aquis_equities_rtmdf_amd_v4_0.threshold.dissect(buffer, index, packet, parent)

  -- Tick Size: u64
  index, tick_size = aquis_equities_rtmdf_amd_v4_0.tick_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Table Data Message
aquis_equities_rtmdf_amd_v4_0.tick_table_data_message.dissect = function(buffer, offset, packet, parent)
  if show.tick_table_data_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.tick_table_data_message, buffer(offset, 0))
    local index = aquis_equities_rtmdf_amd_v4_0.tick_table_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_rtmdf_amd_v4_0.tick_table_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_rtmdf_amd_v4_0.tick_table_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Binary Mmt
aquis_equities_rtmdf_amd_v4_0.binary_mmt = {}

-- Size: Binary Mmt
aquis_equities_rtmdf_amd_v4_0.binary_mmt.size = 4

-- Display: Binary Mmt
aquis_equities_rtmdf_amd_v4_0.binary_mmt.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Crossing Trade flag set?
  if bit.band(value, 0x00002000) ~= 0 then
    flags[#flags + 1] = "Crossing Trade"
  end
  -- Is Dividend flag set?
  if bit.band(value, 0x00040000) ~= 0 then
    flags[#flags + 1] = "Dividend"
  end
  -- Is Algorithmic Indicator flag set?
  if bit.band(value, 0x01000000) ~= 0 then
    flags[#flags + 1] = "Algorithmic Indicator"
  end
  -- Is Deferral Type flag set?
  if bit.band(value, 0x10000000) ~= 0 then
    flags[#flags + 1] = "Deferral Type"
  end
  -- Is Duplicative Indicator flag set?
  if bit.band(value, 0x20000000) ~= 0 then
    flags[#flags + 1] = "Duplicative Indicator"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Binary Mmt
aquis_equities_rtmdf_amd_v4_0.binary_mmt.bits = function(range, value, packet, parent)

  -- Market Mechanism: 3 Bit Enum with 7 values
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.market_mechanism, range, value)

  -- Trading Mode: 4 Bit Enum with 11 values
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.trading_mode, range, value)

  -- Transaction Category: 3 Bit Enum with 5 values
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.transaction_category, range, value)

  -- Negotiation Indicator Or Pre Trade Transparency Waiver: 3 Bit Enum with 8 values
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.negotiation_indicator_or_pre_trade_transparency_waiver, range, value)

  -- Crossing Trade: 1 Bit Enum with 2 values
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.crossing_trade, range, value)

  -- Modification Indicator: 2 Bit Enum with 3 values
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.modification_indicator, range, value)

  -- Benchmark Reference Price Indicator: 2 Bit Enum with 3 values
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.benchmark_reference_price_indicator, range, value)

  -- Dividend: 1 Bit Enum with 2 values
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.dividend, range, value)

  -- Off Book Automation: 2 Bit Enum with 3 values
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.off_book_automation, range, value)

  -- Price Formation Discovery Process: 3 Bit Enum with 4 values
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.price_formation_discovery_process, range, value)

  -- Algorithmic Indicator: 1 Bit Enum with 2 values
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.algorithmic_indicator, range, value)

  -- Publication Mode Post Trade Deferral: 3 Bit Enum with 7 values
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.publication_mode_post_trade_deferral, range, value)

  -- Deferral Type: 1 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.deferral_type, range, value)

  -- Duplicative Indicator: 1 Bit Enum with 2 values
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.duplicative_indicator, range, value)

  -- Spare: 2 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.spare, range, value)
end

-- Dissect: Binary Mmt
aquis_equities_rtmdf_amd_v4_0.binary_mmt.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_rtmdf_amd_v4_0.binary_mmt.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.binary_mmt.display(range, value, packet, parent)
  local element = parent:add_le(omi_aquis_equities_rtmdf_amd_v4_0.fields.binary_mmt, range, display)

  if show.binary_mmt then
    aquis_equities_rtmdf_amd_v4_0.binary_mmt.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Ref
aquis_equities_rtmdf_amd_v4_0.trade_ref = {}

-- Size: Trade Ref
aquis_equities_rtmdf_amd_v4_0.trade_ref.size = 4

-- Display: Trade Ref
aquis_equities_rtmdf_amd_v4_0.trade_ref.display = function(value)
  return "Trade Ref: "..value
end

-- Dissect: Trade Ref
aquis_equities_rtmdf_amd_v4_0.trade_ref.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.trade_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.trade_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.trade_ref, range, value, display)

  return offset + length, value
end

-- Price
aquis_equities_rtmdf_amd_v4_0.price = {}

-- Size: Price
aquis_equities_rtmdf_amd_v4_0.price.size = 8

-- Display: Price
aquis_equities_rtmdf_amd_v4_0.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
aquis_equities_rtmdf_amd_v4_0.price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_equities_rtmdf_amd_v4_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
aquis_equities_rtmdf_amd_v4_0.quantity = {}

-- Size: Quantity
aquis_equities_rtmdf_amd_v4_0.quantity.size = 4

-- Display: Quantity
aquis_equities_rtmdf_amd_v4_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
aquis_equities_rtmdf_amd_v4_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Trade Bust Message
aquis_equities_rtmdf_amd_v4_0.trade_bust_message = {}

-- Size: Trade Bust Message
aquis_equities_rtmdf_amd_v4_0.trade_bust_message.size =
  aquis_equities_rtmdf_amd_v4_0.security_id.size + 
  aquis_equities_rtmdf_amd_v4_0.quantity.size + 
  aquis_equities_rtmdf_amd_v4_0.price.size + 
  aquis_equities_rtmdf_amd_v4_0.trade_ref.size + 
  aquis_equities_rtmdf_amd_v4_0.timestamp.size + 
  aquis_equities_rtmdf_amd_v4_0.binary_mmt.size

-- Display: Trade Bust Message
aquis_equities_rtmdf_amd_v4_0.trade_bust_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Message
aquis_equities_rtmdf_amd_v4_0.trade_bust_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_equities_rtmdf_amd_v4_0.security_id.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_rtmdf_amd_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_rtmdf_amd_v4_0.price.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = aquis_equities_rtmdf_amd_v4_0.trade_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_equities_rtmdf_amd_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Binary Mmt: Struct of 15 fields
  index, binary_mmt = aquis_equities_rtmdf_amd_v4_0.binary_mmt.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
aquis_equities_rtmdf_amd_v4_0.trade_bust_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_bust_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.trade_bust_message, buffer(offset, 0))
    local index = aquis_equities_rtmdf_amd_v4_0.trade_bust_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_rtmdf_amd_v4_0.trade_bust_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_rtmdf_amd_v4_0.trade_bust_message.fields(buffer, offset, packet, parent)
  end
end

-- Md Flags
aquis_equities_rtmdf_amd_v4_0.md_flags = {}

-- Size: Md Flags
aquis_equities_rtmdf_amd_v4_0.md_flags.size = 1

-- Display: Md Flags
aquis_equities_rtmdf_amd_v4_0.md_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Unrestricted Liquidity Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Unrestricted Liquidity Indicator"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Md Flags
aquis_equities_rtmdf_amd_v4_0.md_flags.bits = function(range, value, packet, parent)

  -- Unrestricted Liquidity Indicator: 1 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.unrestricted_liquidity_indicator, range, value)

  -- Reserved: 7 Bit
  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.reserved, range, value)
end

-- Dissect: Md Flags
aquis_equities_rtmdf_amd_v4_0.md_flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_equities_rtmdf_amd_v4_0.md_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.md_flags.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.md_flags, range, display)

  if show.md_flags then
    aquis_equities_rtmdf_amd_v4_0.md_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Ref
aquis_equities_rtmdf_amd_v4_0.order_ref = {}

-- Size: Order Ref
aquis_equities_rtmdf_amd_v4_0.order_ref.size = 4

-- Display: Order Ref
aquis_equities_rtmdf_amd_v4_0.order_ref.display = function(value)
  return "Order Ref: "..value
end

-- Dissect: Order Ref
aquis_equities_rtmdf_amd_v4_0.order_ref.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.order_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.order_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.order_ref, range, value, display)

  return offset + length, value
end

-- Trade Type
aquis_equities_rtmdf_amd_v4_0.trade_type = {}

-- Size: Trade Type
aquis_equities_rtmdf_amd_v4_0.trade_type.size = 1

-- Display: Trade Type
aquis_equities_rtmdf_amd_v4_0.trade_type.display = function(value)
  if value == 1 then
    return "Trade Type: Visible Order (1)"
  end
  if value == 2 then
    return "Trade Type: Hidden Order (2)"
  end
  if value == 3 then
    return "Trade Type: Market At Close (3)"
  end
  if value == 4 then
    return "Trade Type: Lis Cross (4)"
  end
  if value == 5 then
    return "Trade Type: Benchmark Cross (5)"
  end
  if value == 6 then
    return "Trade Type: Auction On Demand (6)"
  end
  if value == 12 then
    return "Trade Type: Aquis Vwap Match (12)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
aquis_equities_rtmdf_amd_v4_0.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trade
aquis_equities_rtmdf_amd_v4_0.trade = {}

-- Size: Trade
aquis_equities_rtmdf_amd_v4_0.trade.size =
  aquis_equities_rtmdf_amd_v4_0.security_id.size + 
  aquis_equities_rtmdf_amd_v4_0.trade_type.size + 
  aquis_equities_rtmdf_amd_v4_0.quantity.size + 
  aquis_equities_rtmdf_amd_v4_0.price.size + 
  aquis_equities_rtmdf_amd_v4_0.order_ref.size + 
  aquis_equities_rtmdf_amd_v4_0.trade_ref.size + 
  aquis_equities_rtmdf_amd_v4_0.timestamp.size + 
  aquis_equities_rtmdf_amd_v4_0.binary_mmt.size + 
  aquis_equities_rtmdf_amd_v4_0.md_flags.size

-- Display: Trade
aquis_equities_rtmdf_amd_v4_0.trade.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade
aquis_equities_rtmdf_amd_v4_0.trade.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_equities_rtmdf_amd_v4_0.security_id.dissect(buffer, index, packet, parent)

  -- Trade Type: u8
  index, trade_type = aquis_equities_rtmdf_amd_v4_0.trade_type.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_rtmdf_amd_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_rtmdf_amd_v4_0.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_equities_rtmdf_amd_v4_0.order_ref.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = aquis_equities_rtmdf_amd_v4_0.trade_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_equities_rtmdf_amd_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Binary Mmt: Struct of 15 fields
  index, binary_mmt = aquis_equities_rtmdf_amd_v4_0.binary_mmt.dissect(buffer, index, packet, parent)

  -- Md Flags: Struct of 2 fields
  index, md_flags = aquis_equities_rtmdf_amd_v4_0.md_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade
aquis_equities_rtmdf_amd_v4_0.trade.dissect = function(buffer, offset, packet, parent)
  if show.trade then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.trade, buffer(offset, 0))
    local index = aquis_equities_rtmdf_amd_v4_0.trade.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_rtmdf_amd_v4_0.trade.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_rtmdf_amd_v4_0.trade.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify
aquis_equities_rtmdf_amd_v4_0.order_modify = {}

-- Size: Order Modify
aquis_equities_rtmdf_amd_v4_0.order_modify.size =
  aquis_equities_rtmdf_amd_v4_0.security_id.size + 
  aquis_equities_rtmdf_amd_v4_0.quantity.size + 
  aquis_equities_rtmdf_amd_v4_0.price.size + 
  aquis_equities_rtmdf_amd_v4_0.order_ref.size + 
  aquis_equities_rtmdf_amd_v4_0.timestamp.size + 
  aquis_equities_rtmdf_amd_v4_0.md_flags.size

-- Display: Order Modify
aquis_equities_rtmdf_amd_v4_0.order_modify.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify
aquis_equities_rtmdf_amd_v4_0.order_modify.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_equities_rtmdf_amd_v4_0.security_id.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_rtmdf_amd_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_rtmdf_amd_v4_0.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_equities_rtmdf_amd_v4_0.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_equities_rtmdf_amd_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Md Flags: Struct of 2 fields
  index, md_flags = aquis_equities_rtmdf_amd_v4_0.md_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify
aquis_equities_rtmdf_amd_v4_0.order_modify.dissect = function(buffer, offset, packet, parent)
  if show.order_modify then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.order_modify, buffer(offset, 0))
    local index = aquis_equities_rtmdf_amd_v4_0.order_modify.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_rtmdf_amd_v4_0.order_modify.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_rtmdf_amd_v4_0.order_modify.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel
aquis_equities_rtmdf_amd_v4_0.order_cancel = {}

-- Size: Order Cancel
aquis_equities_rtmdf_amd_v4_0.order_cancel.size =
  aquis_equities_rtmdf_amd_v4_0.security_id.size + 
  aquis_equities_rtmdf_amd_v4_0.order_ref.size + 
  aquis_equities_rtmdf_amd_v4_0.timestamp.size + 
  aquis_equities_rtmdf_amd_v4_0.md_flags.size

-- Display: Order Cancel
aquis_equities_rtmdf_amd_v4_0.order_cancel.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel
aquis_equities_rtmdf_amd_v4_0.order_cancel.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_equities_rtmdf_amd_v4_0.security_id.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_equities_rtmdf_amd_v4_0.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_equities_rtmdf_amd_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Md Flags: Struct of 2 fields
  index, md_flags = aquis_equities_rtmdf_amd_v4_0.md_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel
aquis_equities_rtmdf_amd_v4_0.order_cancel.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.order_cancel, buffer(offset, 0))
    local index = aquis_equities_rtmdf_amd_v4_0.order_cancel.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_rtmdf_amd_v4_0.order_cancel.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_rtmdf_amd_v4_0.order_cancel.fields(buffer, offset, packet, parent)
  end
end

-- Side
aquis_equities_rtmdf_amd_v4_0.side = {}

-- Size: Side
aquis_equities_rtmdf_amd_v4_0.side.size = 1

-- Display: Side
aquis_equities_rtmdf_amd_v4_0.side.display = function(value)
  if value == 1 then
    return "Side: Buy Order (1)"
  end
  if value == 2 then
    return "Side: Sell Order (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
aquis_equities_rtmdf_amd_v4_0.side.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rtmdf_amd_v4_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.side, range, value, display)

  return offset + length, value
end

-- Order Add
aquis_equities_rtmdf_amd_v4_0.order_add = {}

-- Size: Order Add
aquis_equities_rtmdf_amd_v4_0.order_add.size =
  aquis_equities_rtmdf_amd_v4_0.security_id.size + 
  aquis_equities_rtmdf_amd_v4_0.side.size + 
  aquis_equities_rtmdf_amd_v4_0.quantity.size + 
  aquis_equities_rtmdf_amd_v4_0.price.size + 
  aquis_equities_rtmdf_amd_v4_0.order_ref.size + 
  aquis_equities_rtmdf_amd_v4_0.timestamp.size + 
  aquis_equities_rtmdf_amd_v4_0.md_flags.size

-- Display: Order Add
aquis_equities_rtmdf_amd_v4_0.order_add.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add
aquis_equities_rtmdf_amd_v4_0.order_add.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_equities_rtmdf_amd_v4_0.security_id.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = aquis_equities_rtmdf_amd_v4_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_equities_rtmdf_amd_v4_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_equities_rtmdf_amd_v4_0.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_equities_rtmdf_amd_v4_0.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_equities_rtmdf_amd_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Md Flags: Struct of 2 fields
  index, md_flags = aquis_equities_rtmdf_amd_v4_0.md_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add
aquis_equities_rtmdf_amd_v4_0.order_add.dissect = function(buffer, offset, packet, parent)
  if show.order_add then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.order_add, buffer(offset, 0))
    local index = aquis_equities_rtmdf_amd_v4_0.order_add.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_rtmdf_amd_v4_0.order_add.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_rtmdf_amd_v4_0.order_add.fields(buffer, offset, packet, parent)
  end
end

-- Payload
aquis_equities_rtmdf_amd_v4_0.payload = {}

-- Size: Payload
aquis_equities_rtmdf_amd_v4_0.payload.size = function(buffer, offset, msg_type)
  -- Size of Order Add
  if msg_type == 2 then
    return aquis_equities_rtmdf_amd_v4_0.order_add.size
  end
  -- Size of Order Cancel
  if msg_type == 3 then
    return aquis_equities_rtmdf_amd_v4_0.order_cancel.size
  end
  -- Size of Order Modify
  if msg_type == 4 then
    return aquis_equities_rtmdf_amd_v4_0.order_modify.size
  end
  -- Size of Trade
  if msg_type == 5 then
    return aquis_equities_rtmdf_amd_v4_0.trade.size
  end
  -- Size of Trade Bust Message
  if msg_type == 6 then
    return aquis_equities_rtmdf_amd_v4_0.trade_bust_message.size
  end
  -- Size of Tick Table Data Message
  if msg_type == 7 then
    return aquis_equities_rtmdf_amd_v4_0.tick_table_data_message.size
  end
  -- Size of Security Definition Message
  if msg_type == 8 then
    return aquis_equities_rtmdf_amd_v4_0.security_definition_message.size
  end
  -- Size of Security Status Message
  if msg_type == 9 then
    return aquis_equities_rtmdf_amd_v4_0.security_status_message.size
  end
  -- Size of Ao D Update Message
  if msg_type == 17 then
    return aquis_equities_rtmdf_amd_v4_0.ao_d_update_message.size
  end
  -- Size of Ma C Update Message
  if msg_type == 16 then
    return aquis_equities_rtmdf_amd_v4_0.ma_c_update_message.size
  end

  return 0
end

-- Display: Payload
aquis_equities_rtmdf_amd_v4_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
aquis_equities_rtmdf_amd_v4_0.payload.branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Order Add
  if msg_type == 2 then
    return aquis_equities_rtmdf_amd_v4_0.order_add.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel
  if msg_type == 3 then
    return aquis_equities_rtmdf_amd_v4_0.order_cancel.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify
  if msg_type == 4 then
    return aquis_equities_rtmdf_amd_v4_0.order_modify.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade
  if msg_type == 5 then
    return aquis_equities_rtmdf_amd_v4_0.trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Message
  if msg_type == 6 then
    return aquis_equities_rtmdf_amd_v4_0.trade_bust_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Table Data Message
  if msg_type == 7 then
    return aquis_equities_rtmdf_amd_v4_0.tick_table_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Message
  if msg_type == 8 then
    return aquis_equities_rtmdf_amd_v4_0.security_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if msg_type == 9 then
    return aquis_equities_rtmdf_amd_v4_0.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ao D Update Message
  if msg_type == 17 then
    return aquis_equities_rtmdf_amd_v4_0.ao_d_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ma C Update Message
  if msg_type == 16 then
    return aquis_equities_rtmdf_amd_v4_0.ma_c_update_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
aquis_equities_rtmdf_amd_v4_0.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  if not show.payload then
    return aquis_equities_rtmdf_amd_v4_0.payload.branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = aquis_equities_rtmdf_amd_v4_0.payload.size(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = aquis_equities_rtmdf_amd_v4_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.payload, range, display)

  return aquis_equities_rtmdf_amd_v4_0.payload.branches(buffer, offset, packet, parent, msg_type)
end

-- Seq No
aquis_equities_rtmdf_amd_v4_0.seq_no = {}

-- Size: Seq No
aquis_equities_rtmdf_amd_v4_0.seq_no.size = 4

-- Display: Seq No
aquis_equities_rtmdf_amd_v4_0.seq_no.display = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
aquis_equities_rtmdf_amd_v4_0.seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.seq_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_rtmdf_amd_v4_0.seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Msg Length
aquis_equities_rtmdf_amd_v4_0.msg_length = {}

-- Size: Msg Length
aquis_equities_rtmdf_amd_v4_0.msg_length.size = 1

-- Display: Msg Length
aquis_equities_rtmdf_amd_v4_0.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
aquis_equities_rtmdf_amd_v4_0.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_rtmdf_amd_v4_0.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
aquis_equities_rtmdf_amd_v4_0.msg_type = {}

-- Size: Msg Type
aquis_equities_rtmdf_amd_v4_0.msg_type.size = 1

-- Display: Msg Type
aquis_equities_rtmdf_amd_v4_0.msg_type.display = function(value)
  if value == 2 then
    return "Msg Type: Order Add (2)"
  end
  if value == 3 then
    return "Msg Type: Order Cancel (3)"
  end
  if value == 4 then
    return "Msg Type: Order Modify (4)"
  end
  if value == 5 then
    return "Msg Type: Trade (5)"
  end
  if value == 6 then
    return "Msg Type: Trade Bust Message (6)"
  end
  if value == 7 then
    return "Msg Type: Tick Table Data Message (7)"
  end
  if value == 8 then
    return "Msg Type: Security Definition Message (8)"
  end
  if value == 9 then
    return "Msg Type: Security Status Message (9)"
  end
  if value == 17 then
    return "Msg Type: Ao D Update Message (17)"
  end
  if value == 16 then
    return "Msg Type: Ma C Update Message (16)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
aquis_equities_rtmdf_amd_v4_0.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_rtmdf_amd_v4_0.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Message Header
aquis_equities_rtmdf_amd_v4_0.message_header = {}

-- Size: Message Header
aquis_equities_rtmdf_amd_v4_0.message_header.size =
  aquis_equities_rtmdf_amd_v4_0.msg_type.size + 
  aquis_equities_rtmdf_amd_v4_0.msg_length.size + 
  aquis_equities_rtmdf_amd_v4_0.seq_no.size

-- Display: Message Header
aquis_equities_rtmdf_amd_v4_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
aquis_equities_rtmdf_amd_v4_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, msg_type = aquis_equities_rtmdf_amd_v4_0.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: 1 Byte Unsigned Fixed Width Integer
  index, msg_length = aquis_equities_rtmdf_amd_v4_0.msg_length.dissect(buffer, index, packet, parent)

  -- Seq No: 4 Byte Unsigned Fixed Width Integer
  index, seq_no = aquis_equities_rtmdf_amd_v4_0.seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
aquis_equities_rtmdf_amd_v4_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.message_header, buffer(offset, 0))
    local index = aquis_equities_rtmdf_amd_v4_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_rtmdf_amd_v4_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_rtmdf_amd_v4_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
aquis_equities_rtmdf_amd_v4_0.message = {}

-- Display: Message
aquis_equities_rtmdf_amd_v4_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
aquis_equities_rtmdf_amd_v4_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = aquis_equities_rtmdf_amd_v4_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 10 branches
  index = aquis_equities_rtmdf_amd_v4_0.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
aquis_equities_rtmdf_amd_v4_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.message, buffer(offset, 0))
    local current = aquis_equities_rtmdf_amd_v4_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = aquis_equities_rtmdf_amd_v4_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    aquis_equities_rtmdf_amd_v4_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
aquis_equities_rtmdf_amd_v4_0.message_count = {}

-- Size: Message Count
aquis_equities_rtmdf_amd_v4_0.message_count.size = 1

-- Display: Message Count
aquis_equities_rtmdf_amd_v4_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
aquis_equities_rtmdf_amd_v4_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rtmdf_amd_v4_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_rtmdf_amd_v4_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rtmdf_amd_v4_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Packet
aquis_equities_rtmdf_amd_v4_0.packet = {}

-- Dissect Packet
aquis_equities_rtmdf_amd_v4_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = aquis_equities_rtmdf_amd_v4_0.message_count.dissect(buffer, index, packet, parent)

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Msg Length
    local msg_length = buffer(index + 1, 1):uint()

    -- Runtime Size Of: Message
    index, message = aquis_equities_rtmdf_amd_v4_0.message.dissect(buffer, index, packet, parent, msg_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_aquis_equities_rtmdf_amd_v4_0.init()
end

-- Dissector for Aquis Equities Rtmdf Amd 4.0
function omi_aquis_equities_rtmdf_amd_v4_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_aquis_equities_rtmdf_amd_v4_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_aquis_equities_rtmdf_amd_v4_0, buffer(), omi_aquis_equities_rtmdf_amd_v4_0.description, "("..buffer:len().." Bytes)")
  return aquis_equities_rtmdf_amd_v4_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_aquis_equities_rtmdf_amd_v4_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
aquis_equities_rtmdf_amd_v4_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Aquis Equities Rtmdf Amd 4.0
local function omi_aquis_equities_rtmdf_amd_v4_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not aquis_equities_rtmdf_amd_v4_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_aquis_equities_rtmdf_amd_v4_0
  omi_aquis_equities_rtmdf_amd_v4_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Aquis Equities Rtmdf Amd 4.0
omi_aquis_equities_rtmdf_amd_v4_0:register_heuristic("udp", omi_aquis_equities_rtmdf_amd_v4_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Aquis Exchange
--   Version: 4.0
--   Date: Friday, August 1, 2025
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
