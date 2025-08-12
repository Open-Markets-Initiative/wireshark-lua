-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PsxEquities LastSale Itch 2.1 Protocol
local nasdaq_psxequities_lastsale_itch_v2_1 = Proto("Nasdaq.PsxEquities.LastSale.Itch.v2.1.Lua", "Nasdaq PsxEquities LastSale Itch 2.1")

-- Component Tables
local show = {}
local format = {}
local nasdaq_psxequities_lastsale_itch_v2_1_display = {}
local nasdaq_psxequities_lastsale_itch_v2_1_dissect = {}
local nasdaq_psxequities_lastsale_itch_v2_1_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PsxEquities LastSale Itch 2.1 Fields
nasdaq_psxequities_lastsale_itch_v2_1.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.psxequities.lastsale.itch.v2.1.authenticity", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.psxequities.lastsale.itch.v2.1.breachedlevel", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_nav_premium_discount_amount = ProtoField.new("Corrected Nav Premium Discount Amount", "nasdaq.psxequities.lastsale.itch.v2.1.correctednavpremiumdiscountamount", ftypes.DOUBLE)
nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_sale_condition_modifier = ProtoField.new("Corrected Sale Condition Modifier", "nasdaq.psxequities.lastsale.itch.v2.1.correctedsaleconditionmodifier", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_trade_control_number = ProtoField.new("Corrected Trade Control Number", "nasdaq.psxequities.lastsale.itch.v2.1.correctedtradecontrolnumber", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "nasdaq.psxequities.lastsale.itch.v2.1.correctedtradeprice", ftypes.DOUBLE)
nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_trade_size = ProtoField.new("Corrected Trade Size", "nasdaq.psxequities.lastsale.itch.v2.1.correctedtradesize", ftypes.UINT32)
nasdaq_psxequities_lastsale_itch_v2_1.fields.count = ProtoField.new("Count", "nasdaq.psxequities.lastsale.itch.v2.1.count", ftypes.UINT16)
nasdaq_psxequities_lastsale_itch_v2_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.psxequities.lastsale.itch.v2.1.currenttradingstate", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.psxequities.lastsale.itch.v2.1.etpflag", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.psxequities.lastsale.itch.v2.1.etpleveragefactor", ftypes.UINT32)
nasdaq_psxequities_lastsale_itch_v2_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.psxequities.lastsale.itch.v2.1.eventcode", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.psxequities.lastsale.itch.v2.1.financialstatusindicator", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.psxequities.lastsale.itch.v2.1.inverseindicator", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.psxequities.lastsale.itch.v2.1.ipoflag", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.psxequities.lastsale.itch.v2.1.issueclassification", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.psxequities.lastsale.itch.v2.1.issuesubtype", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.issue_symbol = ProtoField.new("Issue Symbol", "nasdaq.psxequities.lastsale.itch.v2.1.issuesymbol", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.length = ProtoField.new("Length", "nasdaq.psxequities.lastsale.itch.v2.1.length", ftypes.UINT16)
nasdaq_psxequities_lastsale_itch_v2_1.fields.level_1 = ProtoField.new("Level 1", "nasdaq.psxequities.lastsale.itch.v2.1.level1", ftypes.DOUBLE)
nasdaq_psxequities_lastsale_itch_v2_1.fields.level_2 = ProtoField.new("Level 2", "nasdaq.psxequities.lastsale.itch.v2.1.level2", ftypes.DOUBLE)
nasdaq_psxequities_lastsale_itch_v2_1.fields.level_3 = ProtoField.new("Level 3", "nasdaq.psxequities.lastsale.itch.v2.1.level3", ftypes.DOUBLE)
nasdaq_psxequities_lastsale_itch_v2_1.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.psxequities.lastsale.itch.v2.1.luldreferencepricetier", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.market_category = ProtoField.new("Market Category", "nasdaq.psxequities.lastsale.itch.v2.1.marketcategory", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.market_center_identifier = ProtoField.new("Market Center Identifier", "nasdaq.psxequities.lastsale.itch.v2.1.marketcenteridentifier", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.market_code = ProtoField.new("Market Code", "nasdaq.psxequities.lastsale.itch.v2.1.marketcode", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.message = ProtoField.new("Message", "nasdaq.psxequities.lastsale.itch.v2.1.message", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.psxequities.lastsale.itch.v2.1.messageheader", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.psxequities.lastsale.itch.v2.1.messagetype", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.mwcb_breach_message = ProtoField.new("Mwcb Breach Message", "nasdaq.psxequities.lastsale.itch.v2.1.mwcbbreachmessage", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.psxequities.lastsale.itch.v2.1.mwcbdeclinelevelmessage", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.nav_premium_discount_amount = ProtoField.new("Nav Premium Discount Amount", "nasdaq.psxequities.lastsale.itch.v2.1.navpremiumdiscountamount", ftypes.DOUBLE)
nasdaq_psxequities_lastsale_itch_v2_1.fields.next_shares_symbol = ProtoField.new("Next Shares Symbol", "nasdaq.psxequities.lastsale.itch.v2.1.nextsharessymbol", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.next_shares_trade_report_message = ProtoField.new("Next Shares Trade Report Message", "nasdaq.psxequities.lastsale.itch.v2.1.nextsharestradereportmessage", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.psxequities.lastsale.itch.v2.1.operationalhaltaction", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.psxequities.lastsale.itch.v2.1.operationalhaltmessage", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.original_nav_premium_discount_amount = ProtoField.new("Original Nav Premium Discount Amount", "nasdaq.psxequities.lastsale.itch.v2.1.originalnavpremiumdiscountamount", ftypes.DOUBLE)
nasdaq_psxequities_lastsale_itch_v2_1.fields.original_sale_condition_modifier = ProtoField.new("Original Sale Condition Modifier", "nasdaq.psxequities.lastsale.itch.v2.1.originalsaleconditionmodifier", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.original_trade_control_number = ProtoField.new("Original Trade Control Number", "nasdaq.psxequities.lastsale.itch.v2.1.originaltradecontrolnumber", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.original_trade_price = ProtoField.new("Original Trade Price", "nasdaq.psxequities.lastsale.itch.v2.1.originaltradeprice", ftypes.DOUBLE)
nasdaq_psxequities_lastsale_itch_v2_1.fields.original_trade_size = ProtoField.new("Original Trade Size", "nasdaq.psxequities.lastsale.itch.v2.1.originaltradesize", ftypes.UINT32)
nasdaq_psxequities_lastsale_itch_v2_1.fields.packet = ProtoField.new("Packet", "nasdaq.psxequities.lastsale.itch.v2.1.packet", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.lastsale.itch.v2.1.packetheader", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.payload = ProtoField.new("Payload", "nasdaq.psxequities.lastsale.itch.v2.1.payload", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.proxy_price = ProtoField.new("Proxy Price", "nasdaq.psxequities.lastsale.itch.v2.1.proxyprice", ftypes.DOUBLE)
nasdaq_psxequities_lastsale_itch_v2_1.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.psxequities.lastsale.itch.v2.1.regshoaction", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.psxequities.lastsale.itch.v2.1.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.psxequities.lastsale.itch.v2.1.roundlotsize", ftypes.UINT32)
nasdaq_psxequities_lastsale_itch_v2_1.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.psxequities.lastsale.itch.v2.1.roundlotsonly", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_1 = ProtoField.new("Sale Condition Modifier Level 1", "nasdaq.psxequities.lastsale.itch.v2.1.saleconditionmodifierlevel1", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_2 = ProtoField.new("Sale Condition Modifier Level 2", "nasdaq.psxequities.lastsale.itch.v2.1.saleconditionmodifierlevel2", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_3 = ProtoField.new("Sale Condition Modifier Level 3", "nasdaq.psxequities.lastsale.itch.v2.1.saleconditionmodifierlevel3", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_4 = ProtoField.new("Sale Condition Modifier Level 4", "nasdaq.psxequities.lastsale.itch.v2.1.saleconditionmodifierlevel4", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.security_class = ProtoField.new("Security Class", "nasdaq.psxequities.lastsale.itch.v2.1.securityclass", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.sequence = ProtoField.new("Sequence", "nasdaq.psxequities.lastsale.itch.v2.1.sequence", ftypes.UINT64)
nasdaq_psxequities_lastsale_itch_v2_1.fields.session = ProtoField.new("Session", "nasdaq.psxequities.lastsale.itch.v2.1.session", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.psxequities.lastsale.itch.v2.1.shortsalethresholdindicator", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.stock = ProtoField.new("Stock", "nasdaq.psxequities.lastsale.itch.v2.1.stock", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.psxequities.lastsale.itch.v2.1.stockdirectorymessage", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.psxequities.lastsale.itch.v2.1.systemeventmessage", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.psxequities.lastsale.itch.v2.1.timestamp", ftypes.UINT64)
nasdaq_psxequities_lastsale_itch_v2_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.psxequities.lastsale.itch.v2.1.trackingnumber", ftypes.UINT16)
nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_cancel_error_for_next_shares_message = ProtoField.new("Trade Cancel Error For Next Shares Message", "nasdaq.psxequities.lastsale.itch.v2.1.tradecancelerrorfornextsharesmessage", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "nasdaq.psxequities.lastsale.itch.v2.1.tradecancelerrormessage", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_control_number = ProtoField.new("Trade Control Number", "nasdaq.psxequities.lastsale.itch.v2.1.tradecontrolnumber", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_correction_for_next_shares_message = ProtoField.new("Trade Correction For Next Shares Message", "nasdaq.psxequities.lastsale.itch.v2.1.tradecorrectionfornextsharesmessage", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nasdaq.psxequities.lastsale.itch.v2.1.tradecorrectionmessage", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_price = ProtoField.new("Trade Price", "nasdaq.psxequities.lastsale.itch.v2.1.tradeprice", ftypes.DOUBLE)
nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_report_message = ProtoField.new("Trade Report Message", "nasdaq.psxequities.lastsale.itch.v2.1.tradereportmessage", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_size = ProtoField.new("Trade Size", "nasdaq.psxequities.lastsale.itch.v2.1.tradesize", ftypes.UINT32)
nasdaq_psxequities_lastsale_itch_v2_1.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.psxequities.lastsale.itch.v2.1.tradingactionmessage", ftypes.STRING)
nasdaq_psxequities_lastsale_itch_v2_1.fields.trading_action_reason = ProtoField.new("Trading Action Reason", "nasdaq.psxequities.lastsale.itch.v2.1.tradingactionreason", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq PsxEquities LastSale Itch 2.1 Element Dissection Options
show.message = true
show.message_header = true
show.mwcb_breach_message = true
show.mwcb_decline_level_message = true
show.next_shares_trade_report_message = true
show.operational_halt_message = true
show.packet = true
show.packet_header = true
show.reg_sho_short_sale_price_test_restricted_indicator_message = true
show.stock_directory_message = true
show.system_event_message = true
show.trade_cancel_error_for_next_shares_message = true
show.trade_cancel_error_message = true
show.trade_correction_for_next_shares_message = true
show.trade_correction_message = true
show.trade_report_message = true
show.trading_action_message = true
show.payload = false

-- Register Nasdaq PsxEquities LastSale Itch 2.1 Show Options
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_mwcb_breach_message = Pref.bool("Show Mwcb Breach Message", show.mwcb_breach_message, "Parse and add Mwcb Breach Message to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_mwcb_decline_level_message = Pref.bool("Show Mwcb Decline Level Message", show.mwcb_decline_level_message, "Parse and add Mwcb Decline Level Message to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_next_shares_trade_report_message = Pref.bool("Show Next Shares Trade Report Message", show.next_shares_trade_report_message, "Parse and add Next Shares Trade Report Message to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_operational_halt_message = Pref.bool("Show Operational Halt Message", show.operational_halt_message, "Parse and add Operational Halt Message to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message = Pref.bool("Show Reg Sho Short Sale Price Test Restricted Indicator Message", show.reg_sho_short_sale_price_test_restricted_indicator_message, "Parse and add Reg Sho Short Sale Price Test Restricted Indicator Message to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_stock_directory_message = Pref.bool("Show Stock Directory Message", show.stock_directory_message, "Parse and add Stock Directory Message to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_cancel_error_for_next_shares_message = Pref.bool("Show Trade Cancel Error For Next Shares Message", show.trade_cancel_error_for_next_shares_message, "Parse and add Trade Cancel Error For Next Shares Message to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_cancel_error_message = Pref.bool("Show Trade Cancel Error Message", show.trade_cancel_error_message, "Parse and add Trade Cancel Error Message to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_correction_for_next_shares_message = Pref.bool("Show Trade Correction For Next Shares Message", show.trade_correction_for_next_shares_message, "Parse and add Trade Correction For Next Shares Message to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_correction_message = Pref.bool("Show Trade Correction Message", show.trade_correction_message, "Parse and add Trade Correction Message to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_report_message = Pref.bool("Show Trade Report Message", show.trade_report_message, "Parse and add Trade Report Message to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_psxequities_lastsale_itch_v2_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_message then
    show.message = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_message_header then
    show.message_header = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_message_header
    changed = true
  end
  if show.mwcb_breach_message ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_mwcb_breach_message then
    show.mwcb_breach_message = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_mwcb_breach_message
    changed = true
  end
  if show.mwcb_decline_level_message ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_mwcb_decline_level_message then
    show.mwcb_decline_level_message = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_mwcb_decline_level_message
    changed = true
  end
  if show.next_shares_trade_report_message ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_next_shares_trade_report_message then
    show.next_shares_trade_report_message = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_next_shares_trade_report_message
    changed = true
  end
  if show.operational_halt_message ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_operational_halt_message then
    show.operational_halt_message = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_operational_halt_message
    changed = true
  end
  if show.packet ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_packet then
    show.packet = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_packet_header then
    show.packet_header = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_packet_header
    changed = true
  end
  if show.reg_sho_short_sale_price_test_restricted_indicator_message ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message then
    show.reg_sho_short_sale_price_test_restricted_indicator_message = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message
    changed = true
  end
  if show.stock_directory_message ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_stock_directory_message then
    show.stock_directory_message = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_stock_directory_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_system_event_message then
    show.system_event_message = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_system_event_message
    changed = true
  end
  if show.trade_cancel_error_for_next_shares_message ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_cancel_error_for_next_shares_message then
    show.trade_cancel_error_for_next_shares_message = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_cancel_error_for_next_shares_message
    changed = true
  end
  if show.trade_cancel_error_message ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_cancel_error_message then
    show.trade_cancel_error_message = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_cancel_error_message
    changed = true
  end
  if show.trade_correction_for_next_shares_message ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_correction_for_next_shares_message then
    show.trade_correction_for_next_shares_message = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_correction_for_next_shares_message
    changed = true
  end
  if show.trade_correction_message ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_correction_message then
    show.trade_correction_message = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_correction_message
    changed = true
  end
  if show.trade_report_message ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_report_message then
    show.trade_report_message = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_report_message
    changed = true
  end
  if show.trading_action_message ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trading_action_message then
    show.trading_action_message = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trading_action_message
    changed = true
  end
  if show.payload ~= nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_payload then
    show.payload = nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_payload
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

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  for i = 1, finish do
    if str:byte(i) == 0x20 then
      return str:sub(1, i - 1)
    end
  end

  return str
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PsxEquities LastSale Itch 2.1
-----------------------------------------------------------------------

-- Size: Operational Halt Action
nasdaq_psxequities_lastsale_itch_v2_1_size_of.operational_halt_action = 1

-- Display: Operational Halt Action
nasdaq_psxequities_lastsale_itch_v2_1_display.operational_halt_action = function(value)
  if value == "H" then
    return "Operational Halt Action: Halted (H)"
  end
  if value == "T" then
    return "Operational Halt Action: Resumed (T)"
  end

  return "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
nasdaq_psxequities_lastsale_itch_v2_1_dissect.operational_halt_action = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.operational_halt_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.operational_halt_action(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Size: Market Code
nasdaq_psxequities_lastsale_itch_v2_1_size_of.market_code = 1

-- Display: Market Code
nasdaq_psxequities_lastsale_itch_v2_1_display.market_code = function(value)
  if value == "Q" then
    return "Market Code: Nasdaq (Q)"
  end
  if value == "B" then
    return "Market Code: Bx (B)"
  end
  if value == "X" then
    return "Market Code: Psx (X)"
  end

  return "Market Code: Unknown("..value..")"
end

-- Dissect: Market Code
nasdaq_psxequities_lastsale_itch_v2_1_dissect.market_code = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.market_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.market_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.market_code, range, value, display)

  return offset + length, value
end

-- Size: Stock
nasdaq_psxequities_lastsale_itch_v2_1_size_of.stock = 8

-- Display: Stock
nasdaq_psxequities_lastsale_itch_v2_1_display.stock = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_psxequities_lastsale_itch_v2_1_dissect.stock = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.stock
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.stock(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.stock, range, value, display)

  return offset + length, value
end

-- Calculate size of: Operational Halt Message
nasdaq_psxequities_lastsale_itch_v2_1_size_of.operational_halt_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.stock

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.market_code

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.operational_halt_action

  return index
end

-- Display: Operational Halt Message
nasdaq_psxequities_lastsale_itch_v2_1_display.operational_halt_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.operational_halt_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_lastsale_itch_v2_1_dissect.stock(buffer, index, packet, parent)

  -- Market Code: 1 Byte Ascii String Enum with 3 values
  index, market_code = nasdaq_psxequities_lastsale_itch_v2_1_dissect.market_code(buffer, index, packet, parent)

  -- Operational Halt Action: 1 Byte Ascii String Enum with 2 values
  index, operational_halt_action = nasdaq_psxequities_lastsale_itch_v2_1_dissect.operational_halt_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.operational_halt_message = function(buffer, offset, packet, parent)
  if show.operational_halt_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.operational_halt_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.operational_halt_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.operational_halt_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.operational_halt_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Breached Level
nasdaq_psxequities_lastsale_itch_v2_1_size_of.breached_level = 1

-- Display: Breached Level
nasdaq_psxequities_lastsale_itch_v2_1_display.breached_level = function(value)
  if value == "1" then
    return "Breached Level: Level 1 (1)"
  end
  if value == "2" then
    return "Breached Level: Level 2 (2)"
  end
  if value == "3" then
    return "Breached Level: Level 3 (3)"
  end

  return "Breached Level: Unknown("..value..")"
end

-- Dissect: Breached Level
nasdaq_psxequities_lastsale_itch_v2_1_dissect.breached_level = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.breached_level
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.breached_level(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mwcb Breach Message
nasdaq_psxequities_lastsale_itch_v2_1_size_of.mwcb_breach_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.breached_level

  return index
end

-- Display: Mwcb Breach Message
nasdaq_psxequities_lastsale_itch_v2_1_display.mwcb_breach_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Breach Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.mwcb_breach_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Breached Level: 1 Byte Ascii String Enum with 3 values
  index, breached_level = nasdaq_psxequities_lastsale_itch_v2_1_dissect.breached_level(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Breach Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.mwcb_breach_message = function(buffer, offset, packet, parent)
  if show.mwcb_breach_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.mwcb_breach_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.mwcb_breach_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.mwcb_breach_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.mwcb_breach_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Level 3
nasdaq_psxequities_lastsale_itch_v2_1_size_of.level_3 = 8

-- Display: Level 3
nasdaq_psxequities_lastsale_itch_v2_1_display.level_3 = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
translate.level_3 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_psxequities_lastsale_itch_v2_1_dissect.level_3 = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.level_3
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.level_3(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.level_3(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.level_3, range, value, display)

  return offset + length, value
end

-- Size: Level 2
nasdaq_psxequities_lastsale_itch_v2_1_size_of.level_2 = 8

-- Display: Level 2
nasdaq_psxequities_lastsale_itch_v2_1_display.level_2 = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
translate.level_2 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_psxequities_lastsale_itch_v2_1_dissect.level_2 = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.level_2
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.level_2(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.level_2(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.level_2, range, value, display)

  return offset + length, value
end

-- Size: Level 1
nasdaq_psxequities_lastsale_itch_v2_1_size_of.level_1 = 8

-- Display: Level 1
nasdaq_psxequities_lastsale_itch_v2_1_display.level_1 = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
translate.level_1 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_psxequities_lastsale_itch_v2_1_dissect.level_1 = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.level_1
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.level_1(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.level_1(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.level_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mwcb Decline Level Message
nasdaq_psxequities_lastsale_itch_v2_1_size_of.mwcb_decline_level_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.level_1

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.level_2

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.level_3

  return index
end

-- Display: Mwcb Decline Level Message
nasdaq_psxequities_lastsale_itch_v2_1_display.mwcb_decline_level_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.mwcb_decline_level_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level 1: 8 Byte Unsigned Fixed Width Integer
  index, level_1 = nasdaq_psxequities_lastsale_itch_v2_1_dissect.level_1(buffer, index, packet, parent)

  -- Level 2: 8 Byte Unsigned Fixed Width Integer
  index, level_2 = nasdaq_psxequities_lastsale_itch_v2_1_dissect.level_2(buffer, index, packet, parent)

  -- Level 3: 8 Byte Unsigned Fixed Width Integer
  index, level_3 = nasdaq_psxequities_lastsale_itch_v2_1_dissect.level_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.mwcb_decline_level_message = function(buffer, offset, packet, parent)
  if show.mwcb_decline_level_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.mwcb_decline_level_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.mwcb_decline_level_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.mwcb_decline_level_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Inverse Indicator
nasdaq_psxequities_lastsale_itch_v2_1_size_of.inverse_indicator = 1

-- Display: Inverse Indicator
nasdaq_psxequities_lastsale_itch_v2_1_display.inverse_indicator = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_psxequities_lastsale_itch_v2_1_dissect.inverse_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.inverse_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.inverse_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Size: Etp Leverage Factor
nasdaq_psxequities_lastsale_itch_v2_1_size_of.etp_leverage_factor = 4

-- Display: Etp Leverage Factor
nasdaq_psxequities_lastsale_itch_v2_1_display.etp_leverage_factor = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_psxequities_lastsale_itch_v2_1_dissect.etp_leverage_factor = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.etp_leverage_factor
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.etp_leverage_factor(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Size: Etp Flag
nasdaq_psxequities_lastsale_itch_v2_1_size_of.etp_flag = 1

-- Display: Etp Flag
nasdaq_psxequities_lastsale_itch_v2_1_display.etp_flag = function(value)
  if value == "Y" then
    return "Etp Flag: Etp (Y)"
  end
  if value == "N" then
    return "Etp Flag: Not Etp (N)"
  end
  if value == " " then
    return "Etp Flag: Na (<whitespace>)"
  end

  return "Etp Flag: Unknown("..value..")"
end

-- Dissect: Etp Flag
nasdaq_psxequities_lastsale_itch_v2_1_dissect.etp_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.etp_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.etp_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Size: Luld Reference Price Tier
nasdaq_psxequities_lastsale_itch_v2_1_size_of.luld_reference_price_tier = 1

-- Display: Luld Reference Price Tier
nasdaq_psxequities_lastsale_itch_v2_1_display.luld_reference_price_tier = function(value)
  if value == "1" then
    return "Luld Reference Price Tier: Tier 1 (1)"
  end
  if value == "2" then
    return "Luld Reference Price Tier: Tier 2 (2)"
  end
  if value == " " then
    return "Luld Reference Price Tier: Na (<whitespace>)"
  end

  return "Luld Reference Price Tier: Unknown("..value..")"
end

-- Dissect: Luld Reference Price Tier
nasdaq_psxequities_lastsale_itch_v2_1_dissect.luld_reference_price_tier = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.luld_reference_price_tier
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.luld_reference_price_tier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Size: Ipo Flag
nasdaq_psxequities_lastsale_itch_v2_1_size_of.ipo_flag = 1

-- Display: Ipo Flag
nasdaq_psxequities_lastsale_itch_v2_1_display.ipo_flag = function(value)
  if value == "Y" then
    return "Ipo Flag: Nasdaq Listed Instrument (Y)"
  end
  if value == "N" then
    return "Ipo Flag: Nasdaq Listed Instrument (N)"
  end
  if value == " " then
    return "Ipo Flag: Na (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_psxequities_lastsale_itch_v2_1_dissect.ipo_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.ipo_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.ipo_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Size: Short Sale Threshold Indicator
nasdaq_psxequities_lastsale_itch_v2_1_size_of.short_sale_threshold_indicator = 1

-- Display: Short Sale Threshold Indicator
nasdaq_psxequities_lastsale_itch_v2_1_display.short_sale_threshold_indicator = function(value)
  if value == "Y" then
    return "Short Sale Threshold Indicator: Restricted (Y)"
  end
  if value == "N" then
    return "Short Sale Threshold Indicator: Not Restricted (N)"
  end
  if value == " " then
    return "Short Sale Threshold Indicator: Na (<whitespace>)"
  end

  return "Short Sale Threshold Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Threshold Indicator
nasdaq_psxequities_lastsale_itch_v2_1_dissect.short_sale_threshold_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.short_sale_threshold_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.short_sale_threshold_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Size: Authenticity
nasdaq_psxequities_lastsale_itch_v2_1_size_of.authenticity = 1

-- Display: Authenticity
nasdaq_psxequities_lastsale_itch_v2_1_display.authenticity = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_psxequities_lastsale_itch_v2_1_dissect.authenticity = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.authenticity
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.authenticity(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Size: Issue Sub Type
nasdaq_psxequities_lastsale_itch_v2_1_size_of.issue_sub_type = 2

-- Display: Issue Sub Type
nasdaq_psxequities_lastsale_itch_v2_1_display.issue_sub_type = function(value)
  if value == "A" then
    return "Issue Sub Type: Preferred Trust Securities (A)"
  end
  if value == "AI" then
    return "Issue Sub Type: Alpha Index Et Ns (AI)"
  end
  if value == "B" then
    return "Issue Sub Type: Index Based Derivative (B)"
  end
  if value == "C" then
    return "Issue Sub Type: Common Shares (C)"
  end
  if value == "CB" then
    return "Issue Sub Type: Commodity Based Trust Shares (CB)"
  end
  if value == "CF" then
    return "Issue Sub Type: Commodity Futures Trust Shares (CF)"
  end
  if value == "CL" then
    return "Issue Sub Type: Currency Trust Shares (CL)"
  end
  if value == "CM" then
    return "Issue Sub Type: Commodity Index Trust Shares (CM)"
  end
  if value == "CO" then
    return "Issue Sub Type: Collateralized Mortgage Obligation (CO)"
  end
  if value == "CT" then
    return "Issue Sub Type: Currency Trust Shares (CT)"
  end
  if value == "CU" then
    return "Issue Sub Type: Commodity­ Currency (CU)"
  end
  if value == "CW" then
    return "Issue Sub Type: Currency Warrants (CW)"
  end
  if value == "D" then
    return "Issue Sub Type: Global Depositary (D)"
  end
  if value == "E" then
    return "Issue Sub Type: Etf­ Portfolio Depositary Receipt (E)"
  end
  if value == "EG" then
    return "Issue Sub Type: Equity Gold Shares (EG)"
  end
  if value == "EI" then
    return "Issue Sub Type: Etn Equity (EI)"
  end
  if value == "EM" then
    return "Issue Sub Type: Next Shares Exchange (EM)"
  end
  if value == "EN" then
    return "Issue Sub Type: Exchange Traded Notes (EN)"
  end
  if value == "EU" then
    return "Issue Sub Type: Equity Units (EU)"
  end
  if value == "F" then
    return "Issue Sub Type: Holdrs (F)"
  end
  if value == "FI" then
    return "Issue Sub Type: Etn Fixed Income (FI)"
  end
  if value == "FL" then
    return "Issue Sub Type: Etn Futures (FL)"
  end
  if value == "G" then
    return "Issue Sub Type: Global Shares (G)"
  end
  if value == "I" then
    return "Issue Sub Type: Etf (I)"
  end
  if value == "IR" then
    return "Issue Sub Type: Interest (IR)"
  end
  if value == "IW" then
    return "Issue Sub Type: Index (IW)"
  end
  if value == "IX" then
    return "Issue Sub Type: Index (IX)"
  end
  if value == "J" then
    return "Issue Sub Type: Corporate (J)"
  end
  if value == "L" then
    return "Issue Sub Type: Contingent (L)"
  end
  if value == "LL" then
    return "Issue Sub Type: Llc (LL)"
  end
  if value == "M" then
    return "Issue Sub Type: Equity Based Derivative (M)"
  end
  if value == "MF" then
    return "Issue Sub Type: Managed Fund Shares (MF)"
  end
  if value == "ML" then
    return "Issue Sub Type: Etn (ML)"
  end
  if value == "MT" then
    return "Issue Sub Type: Managed Trust Securities (MT)"
  end
  if value == "N" then
    return "Issue Sub Type: Ny Registry Shares (N)"
  end
  if value == "O" then
    return "Issue Sub Type: Open Ended Mutual Fund (O)"
  end
  if value == "P" then
    return "Issue Sub Type: Privately Held Security (P)"
  end
  if value == "PP" then
    return "Issue Sub Type: Poison Pill (PP)"
  end
  if value == "PU" then
    return "Issue Sub Type: Partnership Units (PU)"
  end
  if value == "Q" then
    return "Issue Sub Type: Closed End Funds (Q)"
  end
  if value == "R" then
    return "Issue Sub Type: Reg S (R)"
  end
  if value == "RC" then
    return "Issue Sub Type: Commodity Redeemable (RC)"
  end
  if value == "RF" then
    return "Issue Sub Type: Etn (RF)"
  end
  if value == "RT" then
    return "Issue Sub Type: Reit (RT)"
  end
  if value == "RU" then
    return "Issue Sub Type: Commodity­ Redeemable (RU)"
  end
  if value == "S" then
    return "Issue Sub Type: Seed (S)"
  end
  if value == "SC" then
    return "Issue Sub Type: Spot Rate Closing (SC)"
  end
  if value == "SI" then
    return "Issue Sub Type: Spot Rate Intraday (SI)"
  end
  if value == "T" then
    return "Issue Sub Type: Tracking Stock (T)"
  end
  if value == "TC" then
    return "Issue Sub Type: Trust Certificates (TC)"
  end
  if value == "TU" then
    return "Issue Sub Type: Trust Units (TU)"
  end
  if value == "U" then
    return "Issue Sub Type: Portal (U)"
  end
  if value == "V" then
    return "Issue Sub Type: Contingent Value Right (V)"
  end
  if value == "W" then
    return "Issue Sub Type: Trust Issued Receipts (W)"
  end
  if value == "WC" then
    return "Issue Sub Type: World Currency Option (WC)"
  end
  if value == "X" then
    return "Issue Sub Type: Trust (X)"
  end
  if value == "Y" then
    return "Issue Sub Type: Other (Y)"
  end
  if value == "Z" then
    return "Issue Sub Type: Not Applicable (Z)"
  end

  return "Issue Sub Type: Unknown("..value..")"
end

-- Dissect: Issue Sub Type
nasdaq_psxequities_lastsale_itch_v2_1_dissect.issue_sub_type = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.issue_sub_type
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.issue_sub_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Issue Classification
nasdaq_psxequities_lastsale_itch_v2_1_size_of.issue_classification = 1

-- Display: Issue Classification
nasdaq_psxequities_lastsale_itch_v2_1_display.issue_classification = function(value)
  if value == "A" then
    return "Issue Classification: American Depositary Share (A)"
  end
  if value == "B" then
    return "Issue Classification: Bond (B)"
  end
  if value == "C" then
    return "Issue Classification: Common (C)"
  end
  if value == "F" then
    return "Issue Classification: Depository (F)"
  end
  if value == "I" then
    return "Issue Classification: 144 A (I)"
  end
  if value == "L" then
    return "Issue Classification: Limited (L)"
  end
  if value == "N" then
    return "Issue Classification: Notes (N)"
  end
  if value == "O" then
    return "Issue Classification: Ordinary Share (O)"
  end
  if value == "P" then
    return "Issue Classification: Preferred (P)"
  end
  if value == "Q" then
    return "Issue Classification: Other (Q)"
  end
  if value == "R" then
    return "Issue Classification: Right (R)"
  end
  if value == "S" then
    return "Issue Classification: Shares (S)"
  end
  if value == "T" then
    return "Issue Classification: Convertible (T)"
  end
  if value == "U" then
    return "Issue Classification: Unit (U)"
  end
  if value == "V" then
    return "Issue Classification: Units Benif Int (V)"
  end
  if value == "W" then
    return "Issue Classification: Warrant (W)"
  end

  return "Issue Classification: Unknown("..value..")"
end

-- Dissect: Issue Classification
nasdaq_psxequities_lastsale_itch_v2_1_dissect.issue_classification = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.issue_classification
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.issue_classification(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Size: Round Lots Only
nasdaq_psxequities_lastsale_itch_v2_1_size_of.round_lots_only = 1

-- Display: Round Lots Only
nasdaq_psxequities_lastsale_itch_v2_1_display.round_lots_only = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No Restriction (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_psxequities_lastsale_itch_v2_1_dissect.round_lots_only = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.round_lots_only
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.round_lots_only(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Size: Round Lot Size
nasdaq_psxequities_lastsale_itch_v2_1_size_of.round_lot_size = 4

-- Display: Round Lot Size
nasdaq_psxequities_lastsale_itch_v2_1_display.round_lot_size = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_psxequities_lastsale_itch_v2_1_dissect.round_lot_size = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.round_lot_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.round_lot_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Financial Status Indicator
nasdaq_psxequities_lastsale_itch_v2_1_size_of.financial_status_indicator = 1

-- Display: Financial Status Indicator
nasdaq_psxequities_lastsale_itch_v2_1_display.financial_status_indicator = function(value)
  if value == "D" then
    return "Financial Status Indicator: Deficient (D)"
  end
  if value == "E" then
    return "Financial Status Indicator: Delinquent (E)"
  end
  if value == "Q" then
    return "Financial Status Indicator: Bankrupt (Q)"
  end
  if value == "S" then
    return "Financial Status Indicator: Suspended (S)"
  end
  if value == "G" then
    return "Financial Status Indicator: Deficient And Bankrupt (G)"
  end
  if value == "H" then
    return "Financial Status Indicator: Deficient And Delinquent (H)"
  end
  if value == "J" then
    return "Financial Status Indicator: Delinquent And Bankrupt (J)"
  end
  if value == "K" then
    return "Financial Status Indicator: Deficient Delinquent And Bankrupt (K)"
  end
  if value == "C" then
    return "Financial Status Indicator: Creations And Redemptions Suspended (C)"
  end
  if value == "N" then
    return "Financial Status Indicator: Normal (N)"
  end
  if value == " " then
    return "Financial Status Indicator: Na (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_psxequities_lastsale_itch_v2_1_dissect.financial_status_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.financial_status_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.financial_status_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Size: Market Category
nasdaq_psxequities_lastsale_itch_v2_1_size_of.market_category = 1

-- Display: Market Category
nasdaq_psxequities_lastsale_itch_v2_1_display.market_category = function(value)
  if value == "Q" then
    return "Market Category: Nasdaq Global Select Market (Q)"
  end
  if value == "G" then
    return "Market Category: Nasdaq Global Market (G)"
  end
  if value == "S" then
    return "Market Category: Nasdaq Capital Market (S)"
  end
  if value == "N" then
    return "Market Category: Nyse (N)"
  end
  if value == "A" then
    return "Market Category: Nyse Mkt (A)"
  end
  if value == "P" then
    return "Market Category: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Market Category: Bats Z (Z)"
  end
  if value == "V" then
    return "Market Category: Investors Exchange (V)"
  end
  if value == " " then
    return "Market Category: Not Available (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_psxequities_lastsale_itch_v2_1_dissect.market_category = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.market_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.market_category(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.market_category, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Directory Message
nasdaq_psxequities_lastsale_itch_v2_1_size_of.stock_directory_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.stock

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.market_category

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.financial_status_indicator

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.round_lot_size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.round_lots_only

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.issue_classification

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.issue_sub_type

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.authenticity

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.short_sale_threshold_indicator

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.ipo_flag

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.luld_reference_price_tier

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.etp_flag

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.etp_leverage_factor

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.inverse_indicator

  return index
end

-- Display: Stock Directory Message
nasdaq_psxequities_lastsale_itch_v2_1_display.stock_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.stock_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_lastsale_itch_v2_1_dissect.stock(buffer, index, packet, parent)

  -- Market Category: 1 Byte Ascii String Enum with 9 values
  index, market_category = nasdaq_psxequities_lastsale_itch_v2_1_dissect.market_category(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = nasdaq_psxequities_lastsale_itch_v2_1_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = nasdaq_psxequities_lastsale_itch_v2_1_dissect.round_lot_size(buffer, index, packet, parent)

  -- Round Lots Only: 1 Byte Ascii String Enum with 2 values
  index, round_lots_only = nasdaq_psxequities_lastsale_itch_v2_1_dissect.round_lots_only(buffer, index, packet, parent)

  -- Issue Classification: 1 Byte Ascii String Enum with 16 values
  index, issue_classification = nasdaq_psxequities_lastsale_itch_v2_1_dissect.issue_classification(buffer, index, packet, parent)

  -- Issue Sub Type: 2 Byte Ascii String Enum with 58 values
  index, issue_sub_type = nasdaq_psxequities_lastsale_itch_v2_1_dissect.issue_sub_type(buffer, index, packet, parent)

  -- Authenticity: 1 Byte Ascii String Enum with 2 values
  index, authenticity = nasdaq_psxequities_lastsale_itch_v2_1_dissect.authenticity(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: 1 Byte Ascii String Enum with 3 values
  index, short_sale_threshold_indicator = nasdaq_psxequities_lastsale_itch_v2_1_dissect.short_sale_threshold_indicator(buffer, index, packet, parent)

  -- Ipo Flag: 1 Byte Ascii String Enum with 3 values
  index, ipo_flag = nasdaq_psxequities_lastsale_itch_v2_1_dissect.ipo_flag(buffer, index, packet, parent)

  -- Luld Reference Price Tier: 1 Byte Ascii String Enum with 3 values
  index, luld_reference_price_tier = nasdaq_psxequities_lastsale_itch_v2_1_dissect.luld_reference_price_tier(buffer, index, packet, parent)

  -- Etp Flag: 1 Byte Ascii String Enum with 3 values
  index, etp_flag = nasdaq_psxequities_lastsale_itch_v2_1_dissect.etp_flag(buffer, index, packet, parent)

  -- Etp Leverage Factor: 4 Byte Unsigned Fixed Width Integer
  index, etp_leverage_factor = nasdaq_psxequities_lastsale_itch_v2_1_dissect.etp_leverage_factor(buffer, index, packet, parent)

  -- Inverse Indicator: 1 Byte Ascii String Enum with 2 values
  index, inverse_indicator = nasdaq_psxequities_lastsale_itch_v2_1_dissect.inverse_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.stock_directory_message = function(buffer, offset, packet, parent)
  if show.stock_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.stock_directory_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.stock_directory_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.stock_directory_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reg Sho Action
nasdaq_psxequities_lastsale_itch_v2_1_size_of.reg_sho_action = 1

-- Display: Reg Sho Action
nasdaq_psxequities_lastsale_itch_v2_1_display.reg_sho_action = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Short Sale Price Test Restriction (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Test Restriction Remains (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_psxequities_lastsale_itch_v2_1_dissect.reg_sho_action = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.reg_sho_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.reg_sho_action(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_lastsale_itch_v2_1_size_of.reg_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.stock

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.reg_sho_action

  return index
end

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_lastsale_itch_v2_1_display.reg_sho_short_sale_price_test_restricted_indicator_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.reg_sho_short_sale_price_test_restricted_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_lastsale_itch_v2_1_dissect.stock(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = nasdaq_psxequities_lastsale_itch_v2_1_dissect.reg_sho_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.reg_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset, packet, parent)
  if show.reg_sho_short_sale_price_test_restricted_indicator_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.reg_sho_short_sale_price_test_restricted_indicator_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.reg_sho_short_sale_price_test_restricted_indicator_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.reg_sho_short_sale_price_test_restricted_indicator_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trading Action Reason
nasdaq_psxequities_lastsale_itch_v2_1_size_of.trading_action_reason = 4

-- Display: Trading Action Reason
nasdaq_psxequities_lastsale_itch_v2_1_display.trading_action_reason = function(value)
  if value == "T1" then
    return "Trading Action Reason: Halt News Pending (T1)"
  end
  if value == "T2" then
    return "Trading Action Reason: Halt News Disseminated (T2)"
  end
  if value == "T5" then
    return "Trading Action Reason: Single Security Trading Pause In Effect (T5)"
  end
  if value == "T6" then
    return "Trading Action Reason: Regulatory Halt (T6)"
  end
  if value == "T8" then
    return "Trading Action Reason: Halt Etf (T8)"
  end
  if value == "T12" then
    return "Trading Action Reason: Trading Halted (T12)"
  end
  if value == "H4" then
    return "Trading Action Reason: Halt Non Compliance (H4)"
  end
  if value == "H9" then
    return "Trading Action Reason: Halt Filings Not Current (H9)"
  end
  if value == "H10" then
    return "Trading Action Reason: Halt Sec Trading Suspension (H10)"
  end
  if value == "H11" then
    return "Trading Action Reason: Halt Regulatory Concern (H11)"
  end
  if value == "LUDP" then
    return "Trading Action Reason: Volatility Trading Pause (LUDP)"
  end
  if value == "LUDS" then
    return "Trading Action Reason: Straddle Condition Trading Pause (LUDS)"
  end
  if value == "MWC1" then
    return "Trading Action Reason: Circuit Breaker Halt Level 1 (MWC1)"
  end
  if value == "MWC2" then
    return "Trading Action Reason: Circuit Breaker Halt Level 2 (MWC2)"
  end
  if value == "MWC3" then
    return "Trading Action Reason: Circuit Breaker Halt Level 3 (MWC3)"
  end
  if value == "MWC0" then
    return "Trading Action Reason: Carry Over Circuit Breaker Halt (MWC0)"
  end
  if value == "O1" then
    return "Trading Action Reason: Operations Halt (O1)"
  end
  if value == "IPO1" then
    return "Trading Action Reason: Ipo Issue (IPO1)"
  end
  if value == "M1" then
    return "Trading Action Reason: Corporate Action (M1)"
  end
  if value == "M2" then
    return "Trading Action Reason: Not Available (M2)"
  end
  if value == "T3" then
    return "Trading Action Reason: News And Resumption Times (T3)"
  end
  if value == "T7" then
    return "Trading Action Reason: Trading Pause Quotation Only Period (T7)"
  end
  if value == "R4" then
    return "Trading Action Reason: Qualifications Issues Resolved (R4)"
  end
  if value == "R9" then
    return "Trading Action Reason: Filing Requirements Satisfied (R9)"
  end
  if value == "C3" then
    return "Trading Action Reason: Issuer News Not Forthcoming (C3)"
  end
  if value == "C4" then
    return "Trading Action Reason: Qualifications Halt Ended (C4)"
  end
  if value == "C9" then
    return "Trading Action Reason: Qualifications Halt Concluded (C9)"
  end
  if value == "C11" then
    return "Trading Action Reason: Trade Halt Concluded By Other Regulatory Authority (C11)"
  end
  if value == "MWCQ" then
    return "Trading Action Reason: Market Wide Circuit Breaker Resumption (MWCQ)"
  end
  if value == "R1" then
    return "Trading Action Reason: New Issue (R1)"
  end
  if value == "R2" then
    return "Trading Action Reason: Issue Available (R2)"
  end
  if value == "IPOQ" then
    return "Trading Action Reason: Ipo Security Released (IPOQ)"
  end
  if value == "IPOE" then
    return "Trading Action Reason: Ipo Security Positioning Window Extension (IPOE)"
  end
  if value == "" then
    return "Trading Action Reason: Reason Not Available (<whitespace>)"
  end

  return "Trading Action Reason: Unknown("..value..")"
end

-- Dissect: Trading Action Reason
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trading_action_reason = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.trading_action_reason
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.trading_action_reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.trading_action_reason, range, value, display)

  return offset + length, value
end

-- Size: Current Trading State
nasdaq_psxequities_lastsale_itch_v2_1_size_of.current_trading_state = 1

-- Display: Current Trading State
nasdaq_psxequities_lastsale_itch_v2_1_display.current_trading_state = function(value)
  if value == "H" then
    return "Current Trading State: Halted (H)"
  end
  if value == "Q" then
    return "Current Trading State: Quotation Only (Q)"
  end
  if value == "T" then
    return "Current Trading State: Trading (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_psxequities_lastsale_itch_v2_1_dissect.current_trading_state = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.current_trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Size: Security Class
nasdaq_psxequities_lastsale_itch_v2_1_size_of.security_class = 1

-- Display: Security Class
nasdaq_psxequities_lastsale_itch_v2_1_display.security_class = function(value)
  if value == "Q" then
    return "Security Class: Nasdaq (Q)"
  end
  if value == "N" then
    return "Security Class: Nyse (N)"
  end
  if value == "A" then
    return "Security Class: Nyse Amex (A)"
  end
  if value == "P" then
    return "Security Class: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Security Class: Bats (Z)"
  end
  if value == "V" then
    return "Security Class: Investors Exchange (V)"
  end

  return "Security Class: Unknown("..value..")"
end

-- Dissect: Security Class
nasdaq_psxequities_lastsale_itch_v2_1_dissect.security_class = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.security_class
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.security_class(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.security_class, range, value, display)

  return offset + length, value
end

-- Size: Issue Symbol
nasdaq_psxequities_lastsale_itch_v2_1_size_of.issue_symbol = 8

-- Display: Issue Symbol
nasdaq_psxequities_lastsale_itch_v2_1_display.issue_symbol = function(value)
  return "Issue Symbol: "..value
end

-- Dissect: Issue Symbol
nasdaq_psxequities_lastsale_itch_v2_1_dissect.issue_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.issue_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.issue_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.issue_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Action Message
nasdaq_psxequities_lastsale_itch_v2_1_size_of.trading_action_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.issue_symbol

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.security_class

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.current_trading_state

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.trading_action_reason

  return index
end

-- Display: Trading Action Message
nasdaq_psxequities_lastsale_itch_v2_1_display.trading_action_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Issue Symbol: 8 Byte Ascii String
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1_dissect.issue_symbol(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 6 values
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1_dissect.security_class(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 3 values
  index, current_trading_state = nasdaq_psxequities_lastsale_itch_v2_1_dissect.current_trading_state(buffer, index, packet, parent)

  -- Trading Action Reason: 4 Byte Ascii String Enum with 34 values
  index, trading_action_reason = nasdaq_psxequities_lastsale_itch_v2_1_dissect.trading_action_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trading_action_message = function(buffer, offset, packet, parent)
  if show.trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.trading_action_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.trading_action_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.trading_action_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Corrected Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_sale_condition_modifier = 4

-- Display: Corrected Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1_display.corrected_sale_condition_modifier = function(value)
  return "Corrected Sale Condition Modifier: "..value
end

-- Dissect: Corrected Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1_dissect.corrected_sale_condition_modifier = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_sale_condition_modifier
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.corrected_sale_condition_modifier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_sale_condition_modifier, range, value, display)

  return offset + length, value
end

-- Size: Corrected Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_trade_size = 4

-- Display: Corrected Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_display.corrected_trade_size = function(value)
  return "Corrected Trade Size: "..value
end

-- Dissect: Corrected Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_dissect.corrected_trade_size = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_trade_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.corrected_trade_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_trade_size, range, value, display)

  return offset + length, value
end

-- Size: Corrected Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_nav_premium_discount_amount = 4

-- Display: Corrected Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_display.corrected_nav_premium_discount_amount = function(value)
  return "Corrected Nav Premium Discount Amount: "..value
end

-- Translate: Corrected Nav Premium Discount Amount
translate.corrected_nav_premium_discount_amount = function(raw)
  return raw/10000
end

-- Dissect: Corrected Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_dissect.corrected_nav_premium_discount_amount = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_nav_premium_discount_amount
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.corrected_nav_premium_discount_amount(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.corrected_nav_premium_discount_amount(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_nav_premium_discount_amount, range, value, display)

  return offset + length, value
end

-- Size: Corrected Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_trade_price = 4

-- Display: Corrected Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_display.corrected_trade_price = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
translate.corrected_trade_price = function(raw)
  return raw/10000
end

-- Dissect: Corrected Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_dissect.corrected_trade_price = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_trade_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.corrected_trade_price(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.corrected_trade_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Size: Corrected Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_trade_control_number = 10

-- Display: Corrected Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_display.corrected_trade_control_number = function(value)
  return "Corrected Trade Control Number: "..value
end

-- Dissect: Corrected Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_dissect.corrected_trade_control_number = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_trade_control_number
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.corrected_trade_control_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_trade_control_number, range, value, display)

  return offset + length, value
end

-- Size: Original Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_sale_condition_modifier = 4

-- Display: Original Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1_display.original_sale_condition_modifier = function(value)
  return "Original Sale Condition Modifier: "..value
end

-- Dissect: Original Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_sale_condition_modifier = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_sale_condition_modifier
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.original_sale_condition_modifier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.original_sale_condition_modifier, range, value, display)

  return offset + length, value
end

-- Size: Original Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_size = 4

-- Display: Original Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_display.original_trade_size = function(value)
  return "Original Trade Size: "..value
end

-- Dissect: Original Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_trade_size = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.original_trade_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.original_trade_size, range, value, display)

  return offset + length, value
end

-- Size: Original Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_nav_premium_discount_amount = 4

-- Display: Original Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_display.original_nav_premium_discount_amount = function(value)
  return "Original Nav Premium Discount Amount: "..value
end

-- Translate: Original Nav Premium Discount Amount
translate.original_nav_premium_discount_amount = function(raw)
  return raw/10000
end

-- Dissect: Original Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_nav_premium_discount_amount = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_nav_premium_discount_amount
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.original_nav_premium_discount_amount(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.original_nav_premium_discount_amount(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.original_nav_premium_discount_amount, range, value, display)

  return offset + length, value
end

-- Size: Original Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_price = 4

-- Display: Original Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_display.original_trade_price = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
translate.original_trade_price = function(raw)
  return raw/10000
end

-- Dissect: Original Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_trade_price = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.original_trade_price(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.original_trade_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Size: Original Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_control_number = 10

-- Display: Original Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_display.original_trade_control_number = function(value)
  return "Original Trade Control Number: "..value
end

-- Dissect: Original Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_trade_control_number = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_control_number
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.original_trade_control_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.original_trade_control_number, range, value, display)

  return offset + length, value
end

-- Size: Market Center Identifier
nasdaq_psxequities_lastsale_itch_v2_1_size_of.market_center_identifier = 1

-- Display: Market Center Identifier
nasdaq_psxequities_lastsale_itch_v2_1_display.market_center_identifier = function(value)
  if value == "B" then
    return "Market Center Identifier: Psx Execution System (B)"
  end
  if value == "X" then
    return "Market Center Identifier: Psx Execution System (X)"
  end

  return "Market Center Identifier: Unknown("..value..")"
end

-- Dissect: Market Center Identifier
nasdaq_psxequities_lastsale_itch_v2_1_dissect.market_center_identifier = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.market_center_identifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.market_center_identifier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.market_center_identifier, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Correction For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_correction_for_next_shares_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.market_center_identifier

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.issue_symbol

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.security_class

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_control_number

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_price

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_nav_premium_discount_amount

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_sale_condition_modifier

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_trade_control_number

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_trade_price

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_nav_premium_discount_amount

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_trade_size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_sale_condition_modifier

  return index
end

-- Display: Trade Correction For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_display.trade_correction_for_next_shares_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_correction_for_next_shares_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: 1 Byte Ascii String Enum with 2 values
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1_dissect.market_center_identifier(buffer, index, packet, parent)

  -- Issue Symbol: 8 Byte Ascii String
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1_dissect.issue_symbol(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 6 values
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1_dissect.security_class(buffer, index, packet, parent)

  -- Original Trade Control Number: 10 Byte Ascii String
  index, original_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_trade_control_number(buffer, index, packet, parent)

  -- Original Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_price = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_trade_price(buffer, index, packet, parent)

  -- Original Nav Premium Discount Amount: 4 Byte Unsigned Fixed Width Integer
  index, original_nav_premium_discount_amount = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_nav_premium_discount_amount(buffer, index, packet, parent)

  -- Original Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_size = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_trade_size(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: 4 Byte Ascii String
  index, original_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_sale_condition_modifier(buffer, index, packet, parent)

  -- Corrected Trade Control Number: 10 Byte Ascii String
  index, corrected_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_dissect.corrected_trade_control_number(buffer, index, packet, parent)

  -- Corrected Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, corrected_trade_price = nasdaq_psxequities_lastsale_itch_v2_1_dissect.corrected_trade_price(buffer, index, packet, parent)

  -- Corrected Nav Premium Discount Amount: 4 Byte Unsigned Fixed Width Integer
  index, corrected_nav_premium_discount_amount = nasdaq_psxequities_lastsale_itch_v2_1_dissect.corrected_nav_premium_discount_amount(buffer, index, packet, parent)

  -- Corrected Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, corrected_trade_size = nasdaq_psxequities_lastsale_itch_v2_1_dissect.corrected_trade_size(buffer, index, packet, parent)

  -- Corrected Sale Condition Modifier: 4 Byte Ascii String
  index, corrected_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1_dissect.corrected_sale_condition_modifier(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_correction_for_next_shares_message = function(buffer, offset, packet, parent)
  if show.trade_correction_for_next_shares_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_correction_for_next_shares_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_correction_for_next_shares_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.trade_correction_for_next_shares_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_correction_for_next_shares_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Trade Correction Message
nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.market_center_identifier

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.issue_symbol

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.security_class

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_control_number

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_price

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_sale_condition_modifier

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_trade_control_number

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_trade_price

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_trade_size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.corrected_sale_condition_modifier

  return index
end

-- Display: Trade Correction Message
nasdaq_psxequities_lastsale_itch_v2_1_display.trade_correction_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: 1 Byte Ascii String Enum with 2 values
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1_dissect.market_center_identifier(buffer, index, packet, parent)

  -- Issue Symbol: 8 Byte Ascii String
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1_dissect.issue_symbol(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 6 values
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1_dissect.security_class(buffer, index, packet, parent)

  -- Original Trade Control Number: 10 Byte Ascii String
  index, original_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_trade_control_number(buffer, index, packet, parent)

  -- Original Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_price = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_trade_price(buffer, index, packet, parent)

  -- Original Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_size = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_trade_size(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: 4 Byte Ascii String
  index, original_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_sale_condition_modifier(buffer, index, packet, parent)

  -- Corrected Trade Control Number: 10 Byte Ascii String
  index, corrected_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_dissect.corrected_trade_control_number(buffer, index, packet, parent)

  -- Corrected Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, corrected_trade_price = nasdaq_psxequities_lastsale_itch_v2_1_dissect.corrected_trade_price(buffer, index, packet, parent)

  -- Corrected Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, corrected_trade_size = nasdaq_psxequities_lastsale_itch_v2_1_dissect.corrected_trade_size(buffer, index, packet, parent)

  -- Corrected Sale Condition Modifier: 4 Byte Ascii String
  index, corrected_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1_dissect.corrected_sale_condition_modifier(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_correction_message = function(buffer, offset, packet, parent)
  if show.trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_correction_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_correction_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.trade_correction_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_correction_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Trade Cancel Error For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_cancel_error_for_next_shares_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.market_center_identifier

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.issue_symbol

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.security_class

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_control_number

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_price

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_nav_premium_discount_amount

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_sale_condition_modifier

  return index
end

-- Display: Trade Cancel Error For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_display.trade_cancel_error_for_next_shares_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_cancel_error_for_next_shares_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: 1 Byte Ascii String Enum with 2 values
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1_dissect.market_center_identifier(buffer, index, packet, parent)

  -- Issue Symbol: 8 Byte Ascii String
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1_dissect.issue_symbol(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 6 values
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1_dissect.security_class(buffer, index, packet, parent)

  -- Original Trade Control Number: 10 Byte Ascii String
  index, original_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_trade_control_number(buffer, index, packet, parent)

  -- Original Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_price = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_trade_price(buffer, index, packet, parent)

  -- Original Nav Premium Discount Amount: 4 Byte Unsigned Fixed Width Integer
  index, original_nav_premium_discount_amount = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_nav_premium_discount_amount(buffer, index, packet, parent)

  -- Original Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_size = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_trade_size(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: 4 Byte Ascii String
  index, original_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_sale_condition_modifier(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_cancel_error_for_next_shares_message = function(buffer, offset, packet, parent)
  if show.trade_cancel_error_for_next_shares_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_cancel_error_for_next_shares_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_cancel_error_for_next_shares_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.trade_cancel_error_for_next_shares_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_cancel_error_for_next_shares_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Trade Cancel Error Message
nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_cancel_error_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.market_center_identifier

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.issue_symbol

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.security_class

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_control_number

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_price

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_trade_size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.original_sale_condition_modifier

  return index
end

-- Display: Trade Cancel Error Message
nasdaq_psxequities_lastsale_itch_v2_1_display.trade_cancel_error_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_cancel_error_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: 1 Byte Ascii String Enum with 2 values
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1_dissect.market_center_identifier(buffer, index, packet, parent)

  -- Issue Symbol: 8 Byte Ascii String
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1_dissect.issue_symbol(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 6 values
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1_dissect.security_class(buffer, index, packet, parent)

  -- Original Trade Control Number: 10 Byte Ascii String
  index, original_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_trade_control_number(buffer, index, packet, parent)

  -- Original Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_price = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_trade_price(buffer, index, packet, parent)

  -- Original Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_size = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_trade_size(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: 4 Byte Ascii String
  index, original_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1_dissect.original_sale_condition_modifier(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_cancel_error_message = function(buffer, offset, packet, parent)
  if show.trade_cancel_error_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_cancel_error_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_cancel_error_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.trade_cancel_error_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_cancel_error_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Sale Condition Modifier Level 4
nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_4 = 1

-- Display: Sale Condition Modifier Level 4
nasdaq_psxequities_lastsale_itch_v2_1_display.sale_condition_modifier_level_4 = function(value)
  if value == "A" then
    return "Sale Condition Modifier Level 4: Acquisition (A)"
  end
  if value == "B" then
    return "Sale Condition Modifier Level 4: Bunched (B)"
  end
  if value == "D" then
    return "Sale Condition Modifier Level 4: Distribution (D)"
  end
  if value == "H" then
    return "Sale Condition Modifier Level 4: Price Variation Transaction (H)"
  end
  if value == "M" then
    return "Sale Condition Modifier Level 4: Psx Official Close Price (M)"
  end
  if value == "P" then
    return "Sale Condition Modifier Level 4: Prior Reference Price (P)"
  end
  if value == "Q" then
    return "Sale Condition Modifier Level 4: Psx Official Opening Price (Q)"
  end
  if value == "S" then
    return "Sale Condition Modifier Level 4: Split Trade (S)"
  end
  if value == "W" then
    return "Sale Condition Modifier Level 4: Weighted Average Price (W)"
  end
  if value == "X" then
    return "Sale Condition Modifier Level 4: Cross Trade (X)"
  end
  if value == "o" then
    return "Sale Condition Modifier Level 4: Odd Lot Execution (o)"
  end
  if value == "x" then
    return "Sale Condition Modifier Level 4: Odd Lot Cross Execution (x)"
  end
  if value == " " then
    return "Sale Condition Modifier Level 4: Not Applicable (<whitespace>)"
  end

  return "Sale Condition Modifier Level 4: Unknown("..value..")"
end

-- Dissect: Sale Condition Modifier Level 4
nasdaq_psxequities_lastsale_itch_v2_1_dissect.sale_condition_modifier_level_4 = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_4
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.sale_condition_modifier_level_4(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_4, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition Modifier Level 3
nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_3 = 1

-- Display: Sale Condition Modifier Level 3
nasdaq_psxequities_lastsale_itch_v2_1_display.sale_condition_modifier_level_3 = function(value)
  if value == "T" then
    return "Sale Condition Modifier Level 3: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Sale Condition Modifier Level 3: Reported Late Or Out Of Sequence (U)"
  end
  if value == "L" then
    return "Sale Condition Modifier Level 3: Reported Late But In Sequence (L)"
  end
  if value == "Z" then
    return "Sale Condition Modifier Level 3: Sold Out Of Sequence (Z)"
  end
  if value == " " then
    return "Sale Condition Modifier Level 3: Not Applicable (<whitespace>)"
  end

  return "Sale Condition Modifier Level 3: Unknown("..value..")"
end

-- Dissect: Sale Condition Modifier Level 3
nasdaq_psxequities_lastsale_itch_v2_1_dissect.sale_condition_modifier_level_3 = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_3
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.sale_condition_modifier_level_3(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_3, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition Modifier Level 2
nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_2 = 1

-- Display: Sale Condition Modifier Level 2
nasdaq_psxequities_lastsale_itch_v2_1_display.sale_condition_modifier_level_2 = function(value)
  if value == "F" then
    return "Sale Condition Modifier Level 2: Intermarket Sweep (F)"
  end
  if value == "O" then
    return "Sale Condition Modifier Level 2: Opening Print (O)"
  end
  if value == "4" then
    return "Sale Condition Modifier Level 2: Derivative Priced (4)"
  end
  if value == "5" then
    return "Sale Condition Modifier Level 2: Re Opening Print (5)"
  end
  if value == "6" then
    return "Sale Condition Modifier Level 2: Closing Print (6)"
  end
  if value == " " then
    return "Sale Condition Modifier Level 2: Not Applicable (<whitespace>)"
  end

  return "Sale Condition Modifier Level 2: Unknown("..value..")"
end

-- Dissect: Sale Condition Modifier Level 2
nasdaq_psxequities_lastsale_itch_v2_1_dissect.sale_condition_modifier_level_2 = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_2
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.sale_condition_modifier_level_2(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_2, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition Modifier Level 1
nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_1 = 1

-- Display: Sale Condition Modifier Level 1
nasdaq_psxequities_lastsale_itch_v2_1_display.sale_condition_modifier_level_1 = function(value)
  if value == "J" then
    return "Sale Condition Modifier Level 1: Proxy Price Settlement (J)"
  end
  if value == "@" then
    return "Sale Condition Modifier Level 1: Regular Settlement (@)"
  end
  if value == "C" then
    return "Sale Condition Modifier Level 1: Cash Settlement (C)"
  end
  if value == "N" then
    return "Sale Condition Modifier Level 1: Next Day Settlement (N)"
  end
  if value == "R" then
    return "Sale Condition Modifier Level 1: Seller Settlement (R)"
  end

  return "Sale Condition Modifier Level 1: Unknown("..value..")"
end

-- Dissect: Sale Condition Modifier Level 1
nasdaq_psxequities_lastsale_itch_v2_1_dissect.sale_condition_modifier_level_1 = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.sale_condition_modifier_level_1(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_1, range, value, display)

  return offset + length, value
end

-- Size: Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_size_of.nav_premium_discount_amount = 4

-- Display: Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_display.nav_premium_discount_amount = function(value)
  return "Nav Premium Discount Amount: "..value
end

-- Translate: Nav Premium Discount Amount
translate.nav_premium_discount_amount = function(raw)
  return raw/10000
end

-- Dissect: Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1_dissect.nav_premium_discount_amount = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.nav_premium_discount_amount
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.nav_premium_discount_amount(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.nav_premium_discount_amount(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.nav_premium_discount_amount, range, value, display)

  return offset + length, value
end

-- Size: Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_size = 4

-- Display: Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_display.trade_size = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_size = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.trade_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Size: Proxy Price
nasdaq_psxequities_lastsale_itch_v2_1_size_of.proxy_price = 4

-- Display: Proxy Price
nasdaq_psxequities_lastsale_itch_v2_1_display.proxy_price = function(value)
  return "Proxy Price: "..value
end

-- Translate: Proxy Price
translate.proxy_price = function(raw)
  return raw/10000
end

-- Dissect: Proxy Price
nasdaq_psxequities_lastsale_itch_v2_1_dissect.proxy_price = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.proxy_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.proxy_price(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.proxy_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.proxy_price, range, value, display)

  return offset + length, value
end

-- Size: Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_control_number = 10

-- Display: Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_display.trade_control_number = function(value)
  return "Trade Control Number: "..value
end

-- Dissect: Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_control_number = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_control_number
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.trade_control_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_control_number, range, value, display)

  return offset + length, value
end

-- Size: Next Shares Symbol
nasdaq_psxequities_lastsale_itch_v2_1_size_of.next_shares_symbol = 8

-- Display: Next Shares Symbol
nasdaq_psxequities_lastsale_itch_v2_1_display.next_shares_symbol = function(value)
  return "Next Shares Symbol: "..value
end

-- Dissect: Next Shares Symbol
nasdaq_psxequities_lastsale_itch_v2_1_dissect.next_shares_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.next_shares_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.next_shares_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.next_shares_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Next Shares Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_size_of.next_shares_trade_report_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.market_center_identifier

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.next_shares_symbol

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.security_class

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_control_number

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.proxy_price

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.nav_premium_discount_amount

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_1

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_2

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_3

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_4

  return index
end

-- Display: Next Shares Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_display.next_shares_trade_report_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Next Shares Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.next_shares_trade_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: 1 Byte Ascii String Enum with 2 values
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1_dissect.market_center_identifier(buffer, index, packet, parent)

  -- Next Shares Symbol: 8 Byte Ascii String
  index, next_shares_symbol = nasdaq_psxequities_lastsale_itch_v2_1_dissect.next_shares_symbol(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 6 values
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1_dissect.security_class(buffer, index, packet, parent)

  -- Trade Control Number: 10 Byte Ascii String
  index, trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_control_number(buffer, index, packet, parent)

  -- Proxy Price: 4 Byte Unsigned Fixed Width Integer
  index, proxy_price = nasdaq_psxequities_lastsale_itch_v2_1_dissect.proxy_price(buffer, index, packet, parent)

  -- Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, trade_size = nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_size(buffer, index, packet, parent)

  -- Nav Premium Discount Amount: 4 Byte Unsigned Fixed Width Integer
  index, nav_premium_discount_amount = nasdaq_psxequities_lastsale_itch_v2_1_dissect.nav_premium_discount_amount(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 1: 1 Byte Ascii String Enum with 5 values
  index, sale_condition_modifier_level_1 = nasdaq_psxequities_lastsale_itch_v2_1_dissect.sale_condition_modifier_level_1(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 2: 1 Byte Ascii String Enum with 6 values
  index, sale_condition_modifier_level_2 = nasdaq_psxequities_lastsale_itch_v2_1_dissect.sale_condition_modifier_level_2(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 3: 1 Byte Ascii String Enum with 5 values
  index, sale_condition_modifier_level_3 = nasdaq_psxequities_lastsale_itch_v2_1_dissect.sale_condition_modifier_level_3(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 4: 1 Byte Ascii String Enum with 13 values
  index, sale_condition_modifier_level_4 = nasdaq_psxequities_lastsale_itch_v2_1_dissect.sale_condition_modifier_level_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Next Shares Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.next_shares_trade_report_message = function(buffer, offset, packet, parent)
  if show.next_shares_trade_report_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.next_shares_trade_report_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.next_shares_trade_report_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.next_shares_trade_report_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.next_shares_trade_report_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_price = 4

-- Display: Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
translate.trade_price = function(raw)
  return raw/10000
end

-- Dissect: Trade Price
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_price = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.trade_price(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.trade_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_report_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.market_center_identifier

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.issue_symbol

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.security_class

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_control_number

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_price

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_1

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_2

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_3

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.sale_condition_modifier_level_4

  return index
end

-- Display: Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_display.trade_report_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: 1 Byte Ascii String Enum with 2 values
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1_dissect.market_center_identifier(buffer, index, packet, parent)

  -- Issue Symbol: 8 Byte Ascii String
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1_dissect.issue_symbol(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 6 values
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1_dissect.security_class(buffer, index, packet, parent)

  -- Trade Control Number: 10 Byte Ascii String
  index, trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_control_number(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, trade_price = nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_price(buffer, index, packet, parent)

  -- Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, trade_size = nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_size(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 1: 1 Byte Ascii String Enum with 5 values
  index, sale_condition_modifier_level_1 = nasdaq_psxequities_lastsale_itch_v2_1_dissect.sale_condition_modifier_level_1(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 2: 1 Byte Ascii String Enum with 6 values
  index, sale_condition_modifier_level_2 = nasdaq_psxequities_lastsale_itch_v2_1_dissect.sale_condition_modifier_level_2(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 3: 1 Byte Ascii String Enum with 5 values
  index, sale_condition_modifier_level_3 = nasdaq_psxequities_lastsale_itch_v2_1_dissect.sale_condition_modifier_level_3(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 4: 1 Byte Ascii String Enum with 13 values
  index, sale_condition_modifier_level_4 = nasdaq_psxequities_lastsale_itch_v2_1_dissect.sale_condition_modifier_level_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_report_message = function(buffer, offset, packet, parent)
  if show.trade_report_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_report_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_report_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.trade_report_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_report_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Event Code
nasdaq_psxequities_lastsale_itch_v2_1_size_of.event_code = 1

-- Display: Event Code
nasdaq_psxequities_lastsale_itch_v2_1_display.event_code = function(value)
  if value == "O" then
    return "Event Code: Start Of Transmissions (O)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours (Q)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "M" then
    return "Event Code: End Of Market Hours (M)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Transmissions (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_psxequities_lastsale_itch_v2_1_dissect.event_code = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
nasdaq_psxequities_lastsale_itch_v2_1_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.event_code

  return index
end

-- Display: System Event Message
nasdaq_psxequities_lastsale_itch_v2_1_display.system_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: 1 Byte Ascii String Enum with 6 values
  index, event_code = nasdaq_psxequities_lastsale_itch_v2_1_dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.system_event_message = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.system_event_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.system_event_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.system_event_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
nasdaq_psxequities_lastsale_itch_v2_1_size_of.payload = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_psxequities_lastsale_itch_v2_1_size_of.system_event_message(buffer, offset)
  end
  -- Size of Trade Report Message
  if message_type == "T" then
    return nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_report_message(buffer, offset)
  end
  -- Size of Next Shares Trade Report Message
  if message_type == "M" then
    return nasdaq_psxequities_lastsale_itch_v2_1_size_of.next_shares_trade_report_message(buffer, offset)
  end
  -- Size of Trade Cancel Error Message
  if message_type == "X" then
    return nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_cancel_error_message(buffer, offset)
  end
  -- Size of Trade Cancel Error For Next Shares Message
  if message_type == "O" then
    return nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_cancel_error_for_next_shares_message(buffer, offset)
  end
  -- Size of Trade Correction Message
  if message_type == "C" then
    return nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_correction_message(buffer, offset)
  end
  -- Size of Trade Correction For Next Shares Message
  if message_type == "Z" then
    return nasdaq_psxequities_lastsale_itch_v2_1_size_of.trade_correction_for_next_shares_message(buffer, offset)
  end
  -- Size of Trading Action Message
  if message_type == "H" then
    return nasdaq_psxequities_lastsale_itch_v2_1_size_of.trading_action_message(buffer, offset)
  end
  -- Size of Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_psxequities_lastsale_itch_v2_1_size_of.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, offset)
  end
  -- Size of Stock Directory Message
  if message_type == "R" then
    return nasdaq_psxequities_lastsale_itch_v2_1_size_of.stock_directory_message(buffer, offset)
  end
  -- Size of Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_psxequities_lastsale_itch_v2_1_size_of.mwcb_decline_level_message(buffer, offset)
  end
  -- Size of Mwcb Breach Message
  if message_type == "W" then
    return nasdaq_psxequities_lastsale_itch_v2_1_size_of.mwcb_breach_message(buffer, offset)
  end
  -- Size of Operational Halt Message
  if message_type == "h" then
    return nasdaq_psxequities_lastsale_itch_v2_1_size_of.operational_halt_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_psxequities_lastsale_itch_v2_1_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_psxequities_lastsale_itch_v2_1_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "T" then
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_report_message(buffer, offset, packet, parent)
  end
  -- Dissect Next Shares Trade Report Message
  if message_type == "M" then
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.next_shares_trade_report_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error Message
  if message_type == "X" then
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_cancel_error_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error For Next Shares Message
  if message_type == "O" then
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_cancel_error_for_next_shares_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if message_type == "C" then
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction For Next Shares Message
  if message_type == "Z" then
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.trade_correction_for_next_shares_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.stock_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.mwcb_decline_level_message(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Breach Message
  if message_type == "W" then
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.mwcb_breach_message(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Message
  if message_type == "h" then
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.operational_halt_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_psxequities_lastsale_itch_v2_1_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_psxequities_lastsale_itch_v2_1_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.payload, range, display)

  return nasdaq_psxequities_lastsale_itch_v2_1_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nasdaq_psxequities_lastsale_itch_v2_1_size_of.message_type = 1

-- Display: Message Type
nasdaq_psxequities_lastsale_itch_v2_1_display.message_type = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "T" then
    return "Message Type: Trade Report Message (T)"
  end
  if value == "M" then
    return "Message Type: Next Shares Trade Report Message (M)"
  end
  if value == "X" then
    return "Message Type: Trade Cancel Error Message (X)"
  end
  if value == "O" then
    return "Message Type: Trade Cancel Error For Next Shares Message (O)"
  end
  if value == "C" then
    return "Message Type: Trade Correction Message (C)"
  end
  if value == "Z" then
    return "Message Type: Trade Correction For Next Shares Message (Z)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
  end
  if value == "Y" then
    return "Message Type: Reg Sho Short Sale Price Test Restricted Indicator Message (Y)"
  end
  if value == "R" then
    return "Message Type: Stock Directory Message (R)"
  end
  if value == "V" then
    return "Message Type: Mwcb Decline Level Message (V)"
  end
  if value == "W" then
    return "Message Type: Mwcb Breach Message (W)"
  end
  if value == "h" then
    return "Message Type: Operational Halt Message (h)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_psxequities_lastsale_itch_v2_1_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nasdaq_psxequities_lastsale_itch_v2_1_size_of.timestamp = 6

-- Display: Timestamp
nasdaq_psxequities_lastsale_itch_v2_1_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_psxequities_lastsale_itch_v2_1_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Tracking Number
nasdaq_psxequities_lastsale_itch_v2_1_size_of.tracking_number = 2

-- Display: Tracking Number
nasdaq_psxequities_lastsale_itch_v2_1_display.tracking_number = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_psxequities_lastsale_itch_v2_1_dissect.tracking_number = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.tracking_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.tracking_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Size: Length
nasdaq_psxequities_lastsale_itch_v2_1_size_of.length = 2

-- Display: Length
nasdaq_psxequities_lastsale_itch_v2_1_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_psxequities_lastsale_itch_v2_1_dissect.length = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nasdaq_psxequities_lastsale_itch_v2_1_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.length

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.tracking_number

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.timestamp

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.message_type

  return index
end

-- Display: Message Header
nasdaq_psxequities_lastsale_itch_v2_1_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_psxequities_lastsale_itch_v2_1_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_psxequities_lastsale_itch_v2_1_dissect.length(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_lastsale_itch_v2_1_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_lastsale_itch_v2_1_dissect.timestamp(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 13 values
  index, message_type = nasdaq_psxequities_lastsale_itch_v2_1_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_psxequities_lastsale_itch_v2_1_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.message_header, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
nasdaq_psxequities_lastsale_itch_v2_1_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 4 fields
  index, message_header = nasdaq_psxequities_lastsale_itch_v2_1_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 13 branches
  index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_psxequities_lastsale_itch_v2_1_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.message, range, display)
  end

  nasdaq_psxequities_lastsale_itch_v2_1_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Count
nasdaq_psxequities_lastsale_itch_v2_1_size_of.count = 2

-- Display: Count
nasdaq_psxequities_lastsale_itch_v2_1_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_psxequities_lastsale_itch_v2_1_dissect.count = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
nasdaq_psxequities_lastsale_itch_v2_1_size_of.sequence = 8

-- Display: Sequence
nasdaq_psxequities_lastsale_itch_v2_1_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_psxequities_lastsale_itch_v2_1_dissect.sequence = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_psxequities_lastsale_itch_v2_1_size_of.session = 10

-- Display: Session
nasdaq_psxequities_lastsale_itch_v2_1_display.session = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_psxequities_lastsale_itch_v2_1_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1_size_of.session
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

  local display = nasdaq_psxequities_lastsale_itch_v2_1_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_psxequities_lastsale_itch_v2_1_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.session

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.sequence

  index = index + nasdaq_psxequities_lastsale_itch_v2_1_size_of.count

  return index
end

-- Display: Packet Header
nasdaq_psxequities_lastsale_itch_v2_1_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_psxequities_lastsale_itch_v2_1_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_psxequities_lastsale_itch_v2_1_dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_psxequities_lastsale_itch_v2_1_dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_psxequities_lastsale_itch_v2_1_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_psxequities_lastsale_itch_v2_1_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_psxequities_lastsale_itch_v2_1.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1_display.packet_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1_dissect.packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
nasdaq_psxequities_lastsale_itch_v2_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_psxequities_lastsale_itch_v2_1_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Length
    local length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = length + 2

    -- Message: Struct of 2 fields
    index = nasdaq_psxequities_lastsale_itch_v2_1_dissect.message(buffer, index, packet, parent, size_of_message)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_psxequities_lastsale_itch_v2_1.init()
end

-- Dissector for Nasdaq PsxEquities LastSale Itch 2.1
function nasdaq_psxequities_lastsale_itch_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_psxequities_lastsale_itch_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_psxequities_lastsale_itch_v2_1, buffer(), nasdaq_psxequities_lastsale_itch_v2_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_psxequities_lastsale_itch_v2_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_psxequities_lastsale_itch_v2_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_psxequities_lastsale_itch_v2_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq PsxEquities LastSale Itch 2.1
local function nasdaq_psxequities_lastsale_itch_v2_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_psxequities_lastsale_itch_v2_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_psxequities_lastsale_itch_v2_1
  nasdaq_psxequities_lastsale_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PsxEquities LastSale Itch 2.1
nasdaq_psxequities_lastsale_itch_v2_1:register_heuristic("udp", nasdaq_psxequities_lastsale_itch_v2_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 2.1
--   Date: Thursday, May 3, 2018
--   Specification: PLSSpecification2.1.pdf
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
