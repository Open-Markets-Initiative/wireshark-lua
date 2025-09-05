-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PsxEquities LastSale Itch 2.1 Protocol
local omi_nasdaq_psxequities_lastsale_itch_v2_1 = Proto("Nasdaq.PsxEquities.LastSale.Itch.v2.1.Lua", "Nasdaq PsxEquities LastSale Itch 2.1")

-- Protocol table
local nasdaq_psxequities_lastsale_itch_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PsxEquities LastSale Itch 2.1 Fields
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.psxequities.lastsale.itch.v2.1.authenticity", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.psxequities.lastsale.itch.v2.1.breachedlevel", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_nav_premium_discount_amount = ProtoField.new("Corrected Nav Premium Discount Amount", "nasdaq.psxequities.lastsale.itch.v2.1.correctednavpremiumdiscountamount", ftypes.DOUBLE)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_sale_condition_modifier = ProtoField.new("Corrected Sale Condition Modifier", "nasdaq.psxequities.lastsale.itch.v2.1.correctedsaleconditionmodifier", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_trade_control_number = ProtoField.new("Corrected Trade Control Number", "nasdaq.psxequities.lastsale.itch.v2.1.correctedtradecontrolnumber", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "nasdaq.psxequities.lastsale.itch.v2.1.correctedtradeprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_trade_size = ProtoField.new("Corrected Trade Size", "nasdaq.psxequities.lastsale.itch.v2.1.correctedtradesize", ftypes.UINT32)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.psxequities.lastsale.itch.v2.1.currenttradingstate", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.psxequities.lastsale.itch.v2.1.etpflag", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.psxequities.lastsale.itch.v2.1.etpleveragefactor", ftypes.UINT32)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.psxequities.lastsale.itch.v2.1.eventcode", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.psxequities.lastsale.itch.v2.1.financialstatusindicator", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.psxequities.lastsale.itch.v2.1.inverseindicator", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.psxequities.lastsale.itch.v2.1.ipoflag", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.psxequities.lastsale.itch.v2.1.issueclassification", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.psxequities.lastsale.itch.v2.1.issuesubtype", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.issue_symbol = ProtoField.new("Issue Symbol", "nasdaq.psxequities.lastsale.itch.v2.1.issuesymbol", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.level_1 = ProtoField.new("Level 1", "nasdaq.psxequities.lastsale.itch.v2.1.level1", ftypes.DOUBLE)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.level_2 = ProtoField.new("Level 2", "nasdaq.psxequities.lastsale.itch.v2.1.level2", ftypes.DOUBLE)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.level_3 = ProtoField.new("Level 3", "nasdaq.psxequities.lastsale.itch.v2.1.level3", ftypes.DOUBLE)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.psxequities.lastsale.itch.v2.1.luldreferencepricetier", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.market_category = ProtoField.new("Market Category", "nasdaq.psxequities.lastsale.itch.v2.1.marketcategory", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.market_center_identifier = ProtoField.new("Market Center Identifier", "nasdaq.psxequities.lastsale.itch.v2.1.marketcenteridentifier", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.market_code = ProtoField.new("Market Code", "nasdaq.psxequities.lastsale.itch.v2.1.marketcode", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.message = ProtoField.new("Message", "nasdaq.psxequities.lastsale.itch.v2.1.message", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.message_count = ProtoField.new("Message Count", "nasdaq.psxequities.lastsale.itch.v2.1.messagecount", ftypes.UINT16)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.psxequities.lastsale.itch.v2.1.messageheader", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.message_length = ProtoField.new("Message Length", "nasdaq.psxequities.lastsale.itch.v2.1.messagelength", ftypes.UINT16)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.psxequities.lastsale.itch.v2.1.messagetype", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.nav_premium_discount_amount = ProtoField.new("Nav Premium Discount Amount", "nasdaq.psxequities.lastsale.itch.v2.1.navpremiumdiscountamount", ftypes.DOUBLE)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.next_shares_symbol = ProtoField.new("Next Shares Symbol", "nasdaq.psxequities.lastsale.itch.v2.1.nextsharessymbol", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.psxequities.lastsale.itch.v2.1.operationalhaltaction", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.original_nav_premium_discount_amount = ProtoField.new("Original Nav Premium Discount Amount", "nasdaq.psxequities.lastsale.itch.v2.1.originalnavpremiumdiscountamount", ftypes.DOUBLE)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.original_sale_condition_modifier = ProtoField.new("Original Sale Condition Modifier", "nasdaq.psxequities.lastsale.itch.v2.1.originalsaleconditionmodifier", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.original_trade_control_number = ProtoField.new("Original Trade Control Number", "nasdaq.psxequities.lastsale.itch.v2.1.originaltradecontrolnumber", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.original_trade_price = ProtoField.new("Original Trade Price", "nasdaq.psxequities.lastsale.itch.v2.1.originaltradeprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.original_trade_size = ProtoField.new("Original Trade Size", "nasdaq.psxequities.lastsale.itch.v2.1.originaltradesize", ftypes.UINT32)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.packet = ProtoField.new("Packet", "nasdaq.psxequities.lastsale.itch.v2.1.packet", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.lastsale.itch.v2.1.packetheader", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.payload = ProtoField.new("Payload", "nasdaq.psxequities.lastsale.itch.v2.1.payload", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.proxy_price = ProtoField.new("Proxy Price", "nasdaq.psxequities.lastsale.itch.v2.1.proxyprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.psxequities.lastsale.itch.v2.1.regshoaction", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.psxequities.lastsale.itch.v2.1.roundlotsize", ftypes.UINT32)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.psxequities.lastsale.itch.v2.1.roundlotsonly", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_1 = ProtoField.new("Sale Condition Modifier Level 1", "nasdaq.psxequities.lastsale.itch.v2.1.saleconditionmodifierlevel1", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_2 = ProtoField.new("Sale Condition Modifier Level 2", "nasdaq.psxequities.lastsale.itch.v2.1.saleconditionmodifierlevel2", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_3 = ProtoField.new("Sale Condition Modifier Level 3", "nasdaq.psxequities.lastsale.itch.v2.1.saleconditionmodifierlevel3", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_4 = ProtoField.new("Sale Condition Modifier Level 4", "nasdaq.psxequities.lastsale.itch.v2.1.saleconditionmodifierlevel4", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.security_class = ProtoField.new("Security Class", "nasdaq.psxequities.lastsale.itch.v2.1.securityclass", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.psxequities.lastsale.itch.v2.1.sequencenumber", ftypes.UINT64)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.session = ProtoField.new("Session", "nasdaq.psxequities.lastsale.itch.v2.1.session", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.psxequities.lastsale.itch.v2.1.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.stock = ProtoField.new("Stock", "nasdaq.psxequities.lastsale.itch.v2.1.stock", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.psxequities.lastsale.itch.v2.1.timestamp", ftypes.UINT64)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.psxequities.lastsale.itch.v2.1.trackingnumber", ftypes.UINT16)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_control_number = ProtoField.new("Trade Control Number", "nasdaq.psxequities.lastsale.itch.v2.1.tradecontrolnumber", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_price = ProtoField.new("Trade Price", "nasdaq.psxequities.lastsale.itch.v2.1.tradeprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_size = ProtoField.new("Trade Size", "nasdaq.psxequities.lastsale.itch.v2.1.tradesize", ftypes.UINT32)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trading_action_reason = ProtoField.new("Trading Action Reason", "nasdaq.psxequities.lastsale.itch.v2.1.tradingactionreason", ftypes.STRING)

-- Nasdaq PsxEquities LastSale Itch 2.1 messages
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.mwcb_breach_message = ProtoField.new("Mwcb Breach Message", "nasdaq.psxequities.lastsale.itch.v2.1.mwcbbreachmessage", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.psxequities.lastsale.itch.v2.1.mwcbdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.next_shares_trade_report_message = ProtoField.new("Next Shares Trade Report Message", "nasdaq.psxequities.lastsale.itch.v2.1.nextsharestradereportmessage", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.psxequities.lastsale.itch.v2.1.operationalhaltmessage", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.psxequities.lastsale.itch.v2.1.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.psxequities.lastsale.itch.v2.1.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.psxequities.lastsale.itch.v2.1.systemeventmessage", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_cancel_error_for_next_shares_message = ProtoField.new("Trade Cancel Error For Next Shares Message", "nasdaq.psxequities.lastsale.itch.v2.1.tradecancelerrorfornextsharesmessage", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "nasdaq.psxequities.lastsale.itch.v2.1.tradecancelerrormessage", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_correction_for_next_shares_message = ProtoField.new("Trade Correction For Next Shares Message", "nasdaq.psxequities.lastsale.itch.v2.1.tradecorrectionfornextsharesmessage", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nasdaq.psxequities.lastsale.itch.v2.1.tradecorrectionmessage", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_report_message = ProtoField.new("Trade Report Message", "nasdaq.psxequities.lastsale.itch.v2.1.tradereportmessage", ftypes.STRING)
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.psxequities.lastsale.itch.v2.1.tradingactionmessage", ftypes.STRING)

-- Nasdaq PsxEquities LastSale Itch 2.1 generated fields
omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.message_index = ProtoField.new("Message Index", "nasdaq.psxequities.lastsale.itch.v2.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_mwcb_breach_message = Pref.bool("Show Mwcb Breach Message", show.mwcb_breach_message, "Parse and add Mwcb Breach Message to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_mwcb_decline_level_message = Pref.bool("Show Mwcb Decline Level Message", show.mwcb_decline_level_message, "Parse and add Mwcb Decline Level Message to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_next_shares_trade_report_message = Pref.bool("Show Next Shares Trade Report Message", show.next_shares_trade_report_message, "Parse and add Next Shares Trade Report Message to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_operational_halt_message = Pref.bool("Show Operational Halt Message", show.operational_halt_message, "Parse and add Operational Halt Message to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message = Pref.bool("Show Reg Sho Short Sale Price Test Restricted Indicator Message", show.reg_sho_short_sale_price_test_restricted_indicator_message, "Parse and add Reg Sho Short Sale Price Test Restricted Indicator Message to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_stock_directory_message = Pref.bool("Show Stock Directory Message", show.stock_directory_message, "Parse and add Stock Directory Message to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_cancel_error_for_next_shares_message = Pref.bool("Show Trade Cancel Error For Next Shares Message", show.trade_cancel_error_for_next_shares_message, "Parse and add Trade Cancel Error For Next Shares Message to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_cancel_error_message = Pref.bool("Show Trade Cancel Error Message", show.trade_cancel_error_message, "Parse and add Trade Cancel Error Message to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_correction_for_next_shares_message = Pref.bool("Show Trade Correction For Next Shares Message", show.trade_correction_for_next_shares_message, "Parse and add Trade Correction For Next Shares Message to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_correction_message = Pref.bool("Show Trade Correction Message", show.trade_correction_message, "Parse and add Trade Correction Message to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_report_message = Pref.bool("Show Trade Report Message", show.trade_report_message, "Parse and add Trade Report Message to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_message then
    show.message = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_message_header then
    show.message_header = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_message_header
    changed = true
  end
  if show.mwcb_breach_message ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_mwcb_breach_message then
    show.mwcb_breach_message = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_mwcb_breach_message
    changed = true
  end
  if show.mwcb_decline_level_message ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_mwcb_decline_level_message then
    show.mwcb_decline_level_message = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_mwcb_decline_level_message
    changed = true
  end
  if show.next_shares_trade_report_message ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_next_shares_trade_report_message then
    show.next_shares_trade_report_message = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_next_shares_trade_report_message
    changed = true
  end
  if show.operational_halt_message ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_operational_halt_message then
    show.operational_halt_message = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_operational_halt_message
    changed = true
  end
  if show.packet ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_packet then
    show.packet = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_packet_header
    changed = true
  end
  if show.reg_sho_short_sale_price_test_restricted_indicator_message ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message then
    show.reg_sho_short_sale_price_test_restricted_indicator_message = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message
    changed = true
  end
  if show.stock_directory_message ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_stock_directory_message then
    show.stock_directory_message = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_stock_directory_message
    changed = true
  end
  if show.system_event_message ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_system_event_message then
    show.system_event_message = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_system_event_message
    changed = true
  end
  if show.trade_cancel_error_for_next_shares_message ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_cancel_error_for_next_shares_message then
    show.trade_cancel_error_for_next_shares_message = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_cancel_error_for_next_shares_message
    changed = true
  end
  if show.trade_cancel_error_message ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_cancel_error_message then
    show.trade_cancel_error_message = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_cancel_error_message
    changed = true
  end
  if show.trade_correction_for_next_shares_message ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_correction_for_next_shares_message then
    show.trade_correction_for_next_shares_message = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_correction_for_next_shares_message
    changed = true
  end
  if show.trade_correction_message ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_correction_message then
    show.trade_correction_message = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_correction_message
    changed = true
  end
  if show.trade_report_message ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_report_message then
    show.trade_report_message = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trade_report_message
    changed = true
  end
  if show.trading_action_message ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trading_action_message then
    show.trading_action_message = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_trading_action_message
    changed = true
  end
  if show.payload ~= omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_payload then
    show.payload = omi_nasdaq_psxequities_lastsale_itch_v2_1.prefs.show_payload
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

-- Operational Halt Action
nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_action = {}

-- Size: Operational Halt Action
nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_action.size = 1

-- Display: Operational Halt Action
nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_action.display = function(value)
  if value == "H" then
    return "Operational Halt Action: Halted (H)"
  end
  if value == "T" then
    return "Operational Halt Action: Resumed (T)"
  end

  return "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Market Code
nasdaq_psxequities_lastsale_itch_v2_1.market_code = {}

-- Size: Market Code
nasdaq_psxequities_lastsale_itch_v2_1.market_code.size = 1

-- Display: Market Code
nasdaq_psxequities_lastsale_itch_v2_1.market_code.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.market_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.market_code, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_psxequities_lastsale_itch_v2_1.stock = {}

-- Size: Stock
nasdaq_psxequities_lastsale_itch_v2_1.stock.size = 8

-- Display: Stock
nasdaq_psxequities_lastsale_itch_v2_1.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_psxequities_lastsale_itch_v2_1.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.stock, range, value, display)

  return offset + length, value
end

-- Operational Halt Message
nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_message = {}

-- Calculate size of: Operational Halt Message
nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.stock.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.market_code.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_action.size

  return index
end

-- Display: Operational Halt Message
nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Message
nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_lastsale_itch_v2_1.stock.dissect(buffer, index, packet, parent)

  -- Market Code: 1 Byte Ascii String Enum with 3 values
  index, market_code = nasdaq_psxequities_lastsale_itch_v2_1.market_code.dissect(buffer, index, packet, parent)

  -- Operational Halt Action: 1 Byte Ascii String Enum with 2 values
  index, operational_halt_action = nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_message.dissect = function(buffer, offset, packet, parent)
  if show.operational_halt_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.operational_halt_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_message.fields(buffer, offset, packet, parent)
  end
end

-- Breached Level
nasdaq_psxequities_lastsale_itch_v2_1.breached_level = {}

-- Size: Breached Level
nasdaq_psxequities_lastsale_itch_v2_1.breached_level.size = 1

-- Display: Breached Level
nasdaq_psxequities_lastsale_itch_v2_1.breached_level.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.breached_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.breached_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.breached_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Mwcb Breach Message
nasdaq_psxequities_lastsale_itch_v2_1.mwcb_breach_message = {}

-- Calculate size of: Mwcb Breach Message
nasdaq_psxequities_lastsale_itch_v2_1.mwcb_breach_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.breached_level.size

  return index
end

-- Display: Mwcb Breach Message
nasdaq_psxequities_lastsale_itch_v2_1.mwcb_breach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Breach Message
nasdaq_psxequities_lastsale_itch_v2_1.mwcb_breach_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Breached Level: 1 Byte Ascii String Enum with 3 values
  index, breached_level = nasdaq_psxequities_lastsale_itch_v2_1.breached_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Breach Message
nasdaq_psxequities_lastsale_itch_v2_1.mwcb_breach_message.dissect = function(buffer, offset, packet, parent)
  if show.mwcb_breach_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.mwcb_breach_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1.mwcb_breach_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.mwcb_breach_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1.mwcb_breach_message.fields(buffer, offset, packet, parent)
  end
end

-- Level 3
nasdaq_psxequities_lastsale_itch_v2_1.level_3 = {}

-- Size: Level 3
nasdaq_psxequities_lastsale_itch_v2_1.level_3.size = 8

-- Display: Level 3
nasdaq_psxequities_lastsale_itch_v2_1.level_3.display = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
nasdaq_psxequities_lastsale_itch_v2_1.level_3.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_psxequities_lastsale_itch_v2_1.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.level_3.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_lastsale_itch_v2_1.level_3.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.level_3, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_psxequities_lastsale_itch_v2_1.level_2 = {}

-- Size: Level 2
nasdaq_psxequities_lastsale_itch_v2_1.level_2.size = 8

-- Display: Level 2
nasdaq_psxequities_lastsale_itch_v2_1.level_2.display = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
nasdaq_psxequities_lastsale_itch_v2_1.level_2.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_psxequities_lastsale_itch_v2_1.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.level_2.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_lastsale_itch_v2_1.level_2.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_psxequities_lastsale_itch_v2_1.level_1 = {}

-- Size: Level 1
nasdaq_psxequities_lastsale_itch_v2_1.level_1.size = 8

-- Display: Level 1
nasdaq_psxequities_lastsale_itch_v2_1.level_1.display = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
nasdaq_psxequities_lastsale_itch_v2_1.level_1.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_psxequities_lastsale_itch_v2_1.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.level_1.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_lastsale_itch_v2_1.level_1.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.level_1, range, value, display)

  return offset + length, value
end

-- Mwcb Decline Level Message
nasdaq_psxequities_lastsale_itch_v2_1.mwcb_decline_level_message = {}

-- Calculate size of: Mwcb Decline Level Message
nasdaq_psxequities_lastsale_itch_v2_1.mwcb_decline_level_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.level_1.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.level_2.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.level_3.size

  return index
end

-- Display: Mwcb Decline Level Message
nasdaq_psxequities_lastsale_itch_v2_1.mwcb_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_psxequities_lastsale_itch_v2_1.mwcb_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level 1: 8 Byte Unsigned Fixed Width Integer
  index, level_1 = nasdaq_psxequities_lastsale_itch_v2_1.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: 8 Byte Unsigned Fixed Width Integer
  index, level_2 = nasdaq_psxequities_lastsale_itch_v2_1.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: 8 Byte Unsigned Fixed Width Integer
  index, level_3 = nasdaq_psxequities_lastsale_itch_v2_1.level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_psxequities_lastsale_itch_v2_1.mwcb_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.mwcb_decline_level_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.mwcb_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Inverse Indicator
nasdaq_psxequities_lastsale_itch_v2_1.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_psxequities_lastsale_itch_v2_1.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_psxequities_lastsale_itch_v2_1.inverse_indicator.display = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_psxequities_lastsale_itch_v2_1.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_psxequities_lastsale_itch_v2_1.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_psxequities_lastsale_itch_v2_1.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_psxequities_lastsale_itch_v2_1.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_psxequities_lastsale_itch_v2_1.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_psxequities_lastsale_itch_v2_1.etp_flag = {}

-- Size: Etp Flag
nasdaq_psxequities_lastsale_itch_v2_1.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_psxequities_lastsale_itch_v2_1.etp_flag.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_psxequities_lastsale_itch_v2_1.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_psxequities_lastsale_itch_v2_1.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_psxequities_lastsale_itch_v2_1.luld_reference_price_tier.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_psxequities_lastsale_itch_v2_1.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_psxequities_lastsale_itch_v2_1.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_psxequities_lastsale_itch_v2_1.ipo_flag.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_psxequities_lastsale_itch_v2_1.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_psxequities_lastsale_itch_v2_1.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_psxequities_lastsale_itch_v2_1.short_sale_threshold_indicator.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_psxequities_lastsale_itch_v2_1.authenticity = {}

-- Size: Authenticity
nasdaq_psxequities_lastsale_itch_v2_1.authenticity.size = 1

-- Display: Authenticity
nasdaq_psxequities_lastsale_itch_v2_1.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_psxequities_lastsale_itch_v2_1.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_psxequities_lastsale_itch_v2_1.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_psxequities_lastsale_itch_v2_1.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_psxequities_lastsale_itch_v2_1.issue_sub_type.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_psxequities_lastsale_itch_v2_1.issue_classification = {}

-- Size: Issue Classification
nasdaq_psxequities_lastsale_itch_v2_1.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_psxequities_lastsale_itch_v2_1.issue_classification.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_psxequities_lastsale_itch_v2_1.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_psxequities_lastsale_itch_v2_1.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_psxequities_lastsale_itch_v2_1.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No Restriction (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_psxequities_lastsale_itch_v2_1.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_psxequities_lastsale_itch_v2_1.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_psxequities_lastsale_itch_v2_1.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_psxequities_lastsale_itch_v2_1.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_psxequities_lastsale_itch_v2_1.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_psxequities_lastsale_itch_v2_1.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_psxequities_lastsale_itch_v2_1.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_psxequities_lastsale_itch_v2_1.financial_status_indicator.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_psxequities_lastsale_itch_v2_1.market_category = {}

-- Size: Market Category
nasdaq_psxequities_lastsale_itch_v2_1.market_category.size = 1

-- Display: Market Category
nasdaq_psxequities_lastsale_itch_v2_1.market_category.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.market_category, range, value, display)

  return offset + length, value
end

-- Stock Directory Message
nasdaq_psxequities_lastsale_itch_v2_1.stock_directory_message = {}

-- Calculate size of: Stock Directory Message
nasdaq_psxequities_lastsale_itch_v2_1.stock_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.stock.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.market_category.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.financial_status_indicator.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.round_lot_size.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.round_lots_only.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.issue_classification.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.issue_sub_type.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.authenticity.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.short_sale_threshold_indicator.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.ipo_flag.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.luld_reference_price_tier.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.etp_flag.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.etp_leverage_factor.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.inverse_indicator.size

  return index
end

-- Display: Stock Directory Message
nasdaq_psxequities_lastsale_itch_v2_1.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_psxequities_lastsale_itch_v2_1.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_lastsale_itch_v2_1.stock.dissect(buffer, index, packet, parent)

  -- Market Category: 1 Byte Ascii String Enum with 9 values
  index, market_category = nasdaq_psxequities_lastsale_itch_v2_1.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = nasdaq_psxequities_lastsale_itch_v2_1.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = nasdaq_psxequities_lastsale_itch_v2_1.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: 1 Byte Ascii String Enum with 2 values
  index, round_lots_only = nasdaq_psxequities_lastsale_itch_v2_1.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: 1 Byte Ascii String Enum with 16 values
  index, issue_classification = nasdaq_psxequities_lastsale_itch_v2_1.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: 2 Byte Ascii String Enum with 58 values
  index, issue_sub_type = nasdaq_psxequities_lastsale_itch_v2_1.issue_sub_type.dissect(buffer, index, packet, parent)

  -- Authenticity: 1 Byte Ascii String Enum with 2 values
  index, authenticity = nasdaq_psxequities_lastsale_itch_v2_1.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: 1 Byte Ascii String Enum with 3 values
  index, short_sale_threshold_indicator = nasdaq_psxequities_lastsale_itch_v2_1.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: 1 Byte Ascii String Enum with 3 values
  index, ipo_flag = nasdaq_psxequities_lastsale_itch_v2_1.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: 1 Byte Ascii String Enum with 3 values
  index, luld_reference_price_tier = nasdaq_psxequities_lastsale_itch_v2_1.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: 1 Byte Ascii String Enum with 3 values
  index, etp_flag = nasdaq_psxequities_lastsale_itch_v2_1.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: 4 Byte Unsigned Fixed Width Integer
  index, etp_leverage_factor = nasdaq_psxequities_lastsale_itch_v2_1.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: 1 Byte Ascii String Enum with 2 values
  index, inverse_indicator = nasdaq_psxequities_lastsale_itch_v2_1.inverse_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_psxequities_lastsale_itch_v2_1.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.stock_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Action
nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_action.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Calculate size of: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.stock.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_action.size

  return index
end

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_lastsale_itch_v2_1.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.reg_sho_short_sale_price_test_restricted_indicator_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Reason
nasdaq_psxequities_lastsale_itch_v2_1.trading_action_reason = {}

-- Size: Trading Action Reason
nasdaq_psxequities_lastsale_itch_v2_1.trading_action_reason.size = 4

-- Display: Trading Action Reason
nasdaq_psxequities_lastsale_itch_v2_1.trading_action_reason.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.trading_action_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.trading_action_reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1.trading_action_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trading_action_reason, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_psxequities_lastsale_itch_v2_1.current_trading_state = {}

-- Size: Current Trading State
nasdaq_psxequities_lastsale_itch_v2_1.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_psxequities_lastsale_itch_v2_1.current_trading_state.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Security Class
nasdaq_psxequities_lastsale_itch_v2_1.security_class = {}

-- Size: Security Class
nasdaq_psxequities_lastsale_itch_v2_1.security_class.size = 1

-- Display: Security Class
nasdaq_psxequities_lastsale_itch_v2_1.security_class.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.security_class.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.security_class.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.security_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.security_class, range, value, display)

  return offset + length, value
end

-- Issue Symbol
nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol = {}

-- Size: Issue Symbol
nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.size = 8

-- Display: Issue Symbol
nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.display = function(value)
  return "Issue Symbol: "..value
end

-- Dissect: Issue Symbol
nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.issue_symbol, range, value, display)

  return offset + length, value
end

-- Trading Action Message
nasdaq_psxequities_lastsale_itch_v2_1.trading_action_message = {}

-- Calculate size of: Trading Action Message
nasdaq_psxequities_lastsale_itch_v2_1.trading_action_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.security_class.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.current_trading_state.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.trading_action_reason.size

  return index
end

-- Display: Trading Action Message
nasdaq_psxequities_lastsale_itch_v2_1.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_psxequities_lastsale_itch_v2_1.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Issue Symbol: 8 Byte Ascii String
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 6 values
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1.security_class.dissect(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 3 values
  index, current_trading_state = nasdaq_psxequities_lastsale_itch_v2_1.current_trading_state.dissect(buffer, index, packet, parent)

  -- Trading Action Reason: 4 Byte Ascii String Enum with 34 values
  index, trading_action_reason = nasdaq_psxequities_lastsale_itch_v2_1.trading_action_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_psxequities_lastsale_itch_v2_1.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Corrected Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1.corrected_sale_condition_modifier = {}

-- Size: Corrected Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1.corrected_sale_condition_modifier.size = 4

-- Display: Corrected Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1.corrected_sale_condition_modifier.display = function(value)
  return "Corrected Sale Condition Modifier: "..value
end

-- Dissect: Corrected Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1.corrected_sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.corrected_sale_condition_modifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1.corrected_sale_condition_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_sale_condition_modifier, range, value, display)

  return offset + length, value
end

-- Corrected Trade Size
nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_size = {}

-- Size: Corrected Trade Size
nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_size.size = 4

-- Display: Corrected Trade Size
nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_size.display = function(value)
  return "Corrected Trade Size: "..value
end

-- Dissect: Corrected Trade Size
nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_trade_size, range, value, display)

  return offset + length, value
end

-- Corrected Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1.corrected_nav_premium_discount_amount = {}

-- Size: Corrected Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1.corrected_nav_premium_discount_amount.size = 4

-- Display: Corrected Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1.corrected_nav_premium_discount_amount.display = function(value)
  return "Corrected Nav Premium Discount Amount: "..value
end

-- Translate: Corrected Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1.corrected_nav_premium_discount_amount.translate = function(raw)
  return raw/10000
end

-- Dissect: Corrected Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1.corrected_nav_premium_discount_amount.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.corrected_nav_premium_discount_amount.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_lastsale_itch_v2_1.corrected_nav_premium_discount_amount.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1.corrected_nav_premium_discount_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_nav_premium_discount_amount, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_price = {}

-- Size: Corrected Trade Price
nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_price.size = 4

-- Display: Corrected Trade Price
nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Corrected Trade Price
nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_price.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_control_number = {}

-- Size: Corrected Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_control_number.size = 10

-- Display: Corrected Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_control_number.display = function(value)
  return "Corrected Trade Control Number: "..value
end

-- Dissect: Corrected Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.corrected_trade_control_number, range, value, display)

  return offset + length, value
end

-- Original Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1.original_sale_condition_modifier = {}

-- Size: Original Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1.original_sale_condition_modifier.size = 4

-- Display: Original Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1.original_sale_condition_modifier.display = function(value)
  return "Original Sale Condition Modifier: "..value
end

-- Dissect: Original Sale Condition Modifier
nasdaq_psxequities_lastsale_itch_v2_1.original_sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.original_sale_condition_modifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1.original_sale_condition_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.original_sale_condition_modifier, range, value, display)

  return offset + length, value
end

-- Original Trade Size
nasdaq_psxequities_lastsale_itch_v2_1.original_trade_size = {}

-- Size: Original Trade Size
nasdaq_psxequities_lastsale_itch_v2_1.original_trade_size.size = 4

-- Display: Original Trade Size
nasdaq_psxequities_lastsale_itch_v2_1.original_trade_size.display = function(value)
  return "Original Trade Size: "..value
end

-- Dissect: Original Trade Size
nasdaq_psxequities_lastsale_itch_v2_1.original_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.original_trade_size, range, value, display)

  return offset + length, value
end

-- Original Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1.original_nav_premium_discount_amount = {}

-- Size: Original Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1.original_nav_premium_discount_amount.size = 4

-- Display: Original Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1.original_nav_premium_discount_amount.display = function(value)
  return "Original Nav Premium Discount Amount: "..value
end

-- Translate: Original Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1.original_nav_premium_discount_amount.translate = function(raw)
  return raw/10000
end

-- Dissect: Original Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1.original_nav_premium_discount_amount.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.original_nav_premium_discount_amount.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_lastsale_itch_v2_1.original_nav_premium_discount_amount.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1.original_nav_premium_discount_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.original_nav_premium_discount_amount, range, value, display)

  return offset + length, value
end

-- Original Trade Price
nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price = {}

-- Size: Original Trade Price
nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price.size = 4

-- Display: Original Trade Price
nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Original Trade Price
nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1.original_trade_control_number = {}

-- Size: Original Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1.original_trade_control_number.size = 10

-- Display: Original Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1.original_trade_control_number.display = function(value)
  return "Original Trade Control Number: "..value
end

-- Dissect: Original Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1.original_trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.original_trade_control_number, range, value, display)

  return offset + length, value
end

-- Market Center Identifier
nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier = {}

-- Size: Market Center Identifier
nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.size = 1

-- Display: Market Center Identifier
nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.display = function(value)
  if value == "B" then
    return "Market Center Identifier: Psx Execution System (B)"
  end
  if value == "X" then
    return "Market Center Identifier: Psx Execution System (X)"
  end

  return "Market Center Identifier: Unknown("..value..")"
end

-- Dissect: Market Center Identifier
nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.market_center_identifier, range, value, display)

  return offset + length, value
end

-- Trade Correction For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_for_next_shares_message = {}

-- Calculate size of: Trade Correction For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_for_next_shares_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.security_class.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_trade_control_number.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_nav_premium_discount_amount.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_trade_size.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_sale_condition_modifier.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_control_number.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_price.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.corrected_nav_premium_discount_amount.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_size.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.corrected_sale_condition_modifier.size

  return index
end

-- Display: Trade Correction For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_for_next_shares_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_for_next_shares_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: 1 Byte Ascii String Enum with 2 values
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: 8 Byte Ascii String
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 6 values
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: 10 Byte Ascii String
  index, original_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_price = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Nav Premium Discount Amount: 4 Byte Unsigned Fixed Width Integer
  index, original_nav_premium_discount_amount = nasdaq_psxequities_lastsale_itch_v2_1.original_nav_premium_discount_amount.dissect(buffer, index, packet, parent)

  -- Original Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_size = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: 4 Byte Ascii String
  index, original_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  -- Corrected Trade Control Number: 10 Byte Ascii String
  index, corrected_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_control_number.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, corrected_trade_price = nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Nav Premium Discount Amount: 4 Byte Unsigned Fixed Width Integer
  index, corrected_nav_premium_discount_amount = nasdaq_psxequities_lastsale_itch_v2_1.corrected_nav_premium_discount_amount.dissect(buffer, index, packet, parent)

  -- Corrected Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, corrected_trade_size = nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_size.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition Modifier: 4 Byte Ascii String
  index, corrected_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1.corrected_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_for_next_shares_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_correction_for_next_shares_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_correction_for_next_shares_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_for_next_shares_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_for_next_shares_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_for_next_shares_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_message = {}

-- Calculate size of: Trade Correction Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.security_class.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_trade_control_number.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_trade_size.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_sale_condition_modifier.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_control_number.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_price.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_size.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.corrected_sale_condition_modifier.size

  return index
end

-- Display: Trade Correction Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: 1 Byte Ascii String Enum with 2 values
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: 8 Byte Ascii String
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 6 values
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: 10 Byte Ascii String
  index, original_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_price = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_size = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: 4 Byte Ascii String
  index, original_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  -- Corrected Trade Control Number: 10 Byte Ascii String
  index, corrected_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_control_number.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, corrected_trade_price = nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, corrected_trade_size = nasdaq_psxequities_lastsale_itch_v2_1.corrected_trade_size.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition Modifier: 4 Byte Ascii String
  index, corrected_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1.corrected_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_correction_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Error For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_for_next_shares_message = {}

-- Calculate size of: Trade Cancel Error For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_for_next_shares_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.security_class.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_trade_control_number.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_nav_premium_discount_amount.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_trade_size.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_sale_condition_modifier.size

  return index
end

-- Display: Trade Cancel Error For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_for_next_shares_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_for_next_shares_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: 1 Byte Ascii String Enum with 2 values
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: 8 Byte Ascii String
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 6 values
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: 10 Byte Ascii String
  index, original_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_price = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Nav Premium Discount Amount: 4 Byte Unsigned Fixed Width Integer
  index, original_nav_premium_discount_amount = nasdaq_psxequities_lastsale_itch_v2_1.original_nav_premium_discount_amount.dissect(buffer, index, packet, parent)

  -- Original Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_size = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: 4 Byte Ascii String
  index, original_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error For Next Shares Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_for_next_shares_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancel_error_for_next_shares_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_cancel_error_for_next_shares_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_for_next_shares_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_for_next_shares_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_for_next_shares_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Error Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_message = {}

-- Calculate size of: Trade Cancel Error Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.security_class.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_trade_control_number.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_trade_size.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.original_sale_condition_modifier.size

  return index
end

-- Display: Trade Cancel Error Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: 1 Byte Ascii String Enum with 2 values
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: 8 Byte Ascii String
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 6 values
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: 10 Byte Ascii String
  index, original_trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_price = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_size = nasdaq_psxequities_lastsale_itch_v2_1.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: 4 Byte Ascii String
  index, original_sale_condition_modifier = nasdaq_psxequities_lastsale_itch_v2_1.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancel_error_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_cancel_error_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Sale Condition Modifier Level 4
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_4 = {}

-- Size: Sale Condition Modifier Level 4
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_4.size = 1

-- Display: Sale Condition Modifier Level 4
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_4.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_4, range, value, display)

  return offset + length, value
end

-- Sale Condition Modifier Level 3
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_3 = {}

-- Size: Sale Condition Modifier Level 3
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_3.size = 1

-- Display: Sale Condition Modifier Level 3
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_3.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_3, range, value, display)

  return offset + length, value
end

-- Sale Condition Modifier Level 2
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_2 = {}

-- Size: Sale Condition Modifier Level 2
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_2.size = 1

-- Display: Sale Condition Modifier Level 2
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_2.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_2, range, value, display)

  return offset + length, value
end

-- Sale Condition Modifier Level 1
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_1 = {}

-- Size: Sale Condition Modifier Level 1
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_1.size = 1

-- Display: Sale Condition Modifier Level 1
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_1.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.sale_condition_modifier_level_1, range, value, display)

  return offset + length, value
end

-- Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1.nav_premium_discount_amount = {}

-- Size: Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1.nav_premium_discount_amount.size = 4

-- Display: Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1.nav_premium_discount_amount.display = function(value)
  return "Nav Premium Discount Amount: "..value
end

-- Translate: Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1.nav_premium_discount_amount.translate = function(raw)
  return raw/10000
end

-- Dissect: Nav Premium Discount Amount
nasdaq_psxequities_lastsale_itch_v2_1.nav_premium_discount_amount.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.nav_premium_discount_amount.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_lastsale_itch_v2_1.nav_premium_discount_amount.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1.nav_premium_discount_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.nav_premium_discount_amount, range, value, display)

  return offset + length, value
end

-- Trade Size
nasdaq_psxequities_lastsale_itch_v2_1.trade_size = {}

-- Size: Trade Size
nasdaq_psxequities_lastsale_itch_v2_1.trade_size.size = 4

-- Display: Trade Size
nasdaq_psxequities_lastsale_itch_v2_1.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
nasdaq_psxequities_lastsale_itch_v2_1.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.trade_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Proxy Price
nasdaq_psxequities_lastsale_itch_v2_1.proxy_price = {}

-- Size: Proxy Price
nasdaq_psxequities_lastsale_itch_v2_1.proxy_price.size = 4

-- Display: Proxy Price
nasdaq_psxequities_lastsale_itch_v2_1.proxy_price.display = function(value)
  return "Proxy Price: "..value
end

-- Translate: Proxy Price
nasdaq_psxequities_lastsale_itch_v2_1.proxy_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Proxy Price
nasdaq_psxequities_lastsale_itch_v2_1.proxy_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.proxy_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_lastsale_itch_v2_1.proxy_price.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1.proxy_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.proxy_price, range, value, display)

  return offset + length, value
end

-- Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1.trade_control_number = {}

-- Size: Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1.trade_control_number.size = 10

-- Display: Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1.trade_control_number.display = function(value)
  return "Trade Control Number: "..value
end

-- Dissect: Trade Control Number
nasdaq_psxequities_lastsale_itch_v2_1.trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1.trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_control_number, range, value, display)

  return offset + length, value
end

-- Next Shares Symbol
nasdaq_psxequities_lastsale_itch_v2_1.next_shares_symbol = {}

-- Size: Next Shares Symbol
nasdaq_psxequities_lastsale_itch_v2_1.next_shares_symbol.size = 8

-- Display: Next Shares Symbol
nasdaq_psxequities_lastsale_itch_v2_1.next_shares_symbol.display = function(value)
  return "Next Shares Symbol: "..value
end

-- Dissect: Next Shares Symbol
nasdaq_psxequities_lastsale_itch_v2_1.next_shares_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.next_shares_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_lastsale_itch_v2_1.next_shares_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.next_shares_symbol, range, value, display)

  return offset + length, value
end

-- Next Shares Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1.next_shares_trade_report_message = {}

-- Calculate size of: Next Shares Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1.next_shares_trade_report_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.next_shares_symbol.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.security_class.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.trade_control_number.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.proxy_price.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.trade_size.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.nav_premium_discount_amount.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_1.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_2.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_3.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_4.size

  return index
end

-- Display: Next Shares Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1.next_shares_trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Next Shares Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1.next_shares_trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: 1 Byte Ascii String Enum with 2 values
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Next Shares Symbol: 8 Byte Ascii String
  index, next_shares_symbol = nasdaq_psxequities_lastsale_itch_v2_1.next_shares_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 6 values
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1.security_class.dissect(buffer, index, packet, parent)

  -- Trade Control Number: 10 Byte Ascii String
  index, trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1.trade_control_number.dissect(buffer, index, packet, parent)

  -- Proxy Price: 4 Byte Unsigned Fixed Width Integer
  index, proxy_price = nasdaq_psxequities_lastsale_itch_v2_1.proxy_price.dissect(buffer, index, packet, parent)

  -- Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, trade_size = nasdaq_psxequities_lastsale_itch_v2_1.trade_size.dissect(buffer, index, packet, parent)

  -- Nav Premium Discount Amount: 4 Byte Unsigned Fixed Width Integer
  index, nav_premium_discount_amount = nasdaq_psxequities_lastsale_itch_v2_1.nav_premium_discount_amount.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 1: 1 Byte Ascii String Enum with 5 values
  index, sale_condition_modifier_level_1 = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_1.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 2: 1 Byte Ascii String Enum with 6 values
  index, sale_condition_modifier_level_2 = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_2.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 3: 1 Byte Ascii String Enum with 5 values
  index, sale_condition_modifier_level_3 = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_3.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 4: 1 Byte Ascii String Enum with 13 values
  index, sale_condition_modifier_level_4 = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Next Shares Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1.next_shares_trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.next_shares_trade_report_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.next_shares_trade_report_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1.next_shares_trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.next_shares_trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1.next_shares_trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Price
nasdaq_psxequities_lastsale_itch_v2_1.trade_price = {}

-- Size: Trade Price
nasdaq_psxequities_lastsale_itch_v2_1.trade_price.size = 4

-- Display: Trade Price
nasdaq_psxequities_lastsale_itch_v2_1.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
nasdaq_psxequities_lastsale_itch_v2_1.trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Trade Price
nasdaq_psxequities_lastsale_itch_v2_1.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_lastsale_itch_v2_1.trade_price.translate(raw)
  local display = nasdaq_psxequities_lastsale_itch_v2_1.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_report_message = {}

-- Calculate size of: Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_report_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.security_class.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.trade_control_number.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.trade_price.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.trade_size.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_1.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_2.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_3.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_4.size

  return index
end

-- Display: Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: 1 Byte Ascii String Enum with 2 values
  index, market_center_identifier = nasdaq_psxequities_lastsale_itch_v2_1.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: 8 Byte Ascii String
  index, issue_symbol = nasdaq_psxequities_lastsale_itch_v2_1.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: 1 Byte Ascii String Enum with 6 values
  index, security_class = nasdaq_psxequities_lastsale_itch_v2_1.security_class.dissect(buffer, index, packet, parent)

  -- Trade Control Number: 10 Byte Ascii String
  index, trade_control_number = nasdaq_psxequities_lastsale_itch_v2_1.trade_control_number.dissect(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, trade_price = nasdaq_psxequities_lastsale_itch_v2_1.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, trade_size = nasdaq_psxequities_lastsale_itch_v2_1.trade_size.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 1: 1 Byte Ascii String Enum with 5 values
  index, sale_condition_modifier_level_1 = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_1.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 2: 1 Byte Ascii String Enum with 6 values
  index, sale_condition_modifier_level_2 = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_2.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 3: 1 Byte Ascii String Enum with 5 values
  index, sale_condition_modifier_level_3 = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_3.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier Level 4: 1 Byte Ascii String Enum with 13 values
  index, sale_condition_modifier_level_4 = nasdaq_psxequities_lastsale_itch_v2_1.sale_condition_modifier_level_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
nasdaq_psxequities_lastsale_itch_v2_1.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_report_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.trade_report_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Code
nasdaq_psxequities_lastsale_itch_v2_1.event_code = {}

-- Size: Event Code
nasdaq_psxequities_lastsale_itch_v2_1.event_code.size = 1

-- Display: Event Code
nasdaq_psxequities_lastsale_itch_v2_1.event_code.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
nasdaq_psxequities_lastsale_itch_v2_1.system_event_message = {}

-- Calculate size of: System Event Message
nasdaq_psxequities_lastsale_itch_v2_1.system_event_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.event_code.size

  return index
end

-- Display: System Event Message
nasdaq_psxequities_lastsale_itch_v2_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_psxequities_lastsale_itch_v2_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: 1 Byte Ascii String Enum with 6 values
  index, event_code = nasdaq_psxequities_lastsale_itch_v2_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_psxequities_lastsale_itch_v2_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_psxequities_lastsale_itch_v2_1.payload = {}

-- Calculate runtime size of: Payload
nasdaq_psxequities_lastsale_itch_v2_1.payload.size = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_psxequities_lastsale_itch_v2_1.system_event_message.size(buffer, offset)
  end
  -- Size of Trade Report Message
  if message_type == "T" then
    return nasdaq_psxequities_lastsale_itch_v2_1.trade_report_message.size(buffer, offset)
  end
  -- Size of Next Shares Trade Report Message
  if message_type == "M" then
    return nasdaq_psxequities_lastsale_itch_v2_1.next_shares_trade_report_message.size(buffer, offset)
  end
  -- Size of Trade Cancel Error Message
  if message_type == "X" then
    return nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_message.size(buffer, offset)
  end
  -- Size of Trade Cancel Error For Next Shares Message
  if message_type == "O" then
    return nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_for_next_shares_message.size(buffer, offset)
  end
  -- Size of Trade Correction Message
  if message_type == "C" then
    return nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_message.size(buffer, offset)
  end
  -- Size of Trade Correction For Next Shares Message
  if message_type == "Z" then
    return nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_for_next_shares_message.size(buffer, offset)
  end
  -- Size of Trading Action Message
  if message_type == "H" then
    return nasdaq_psxequities_lastsale_itch_v2_1.trading_action_message.size(buffer, offset)
  end
  -- Size of Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.size(buffer, offset)
  end
  -- Size of Stock Directory Message
  if message_type == "R" then
    return nasdaq_psxequities_lastsale_itch_v2_1.stock_directory_message.size(buffer, offset)
  end
  -- Size of Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_psxequities_lastsale_itch_v2_1.mwcb_decline_level_message.size(buffer, offset)
  end
  -- Size of Mwcb Breach Message
  if message_type == "W" then
    return nasdaq_psxequities_lastsale_itch_v2_1.mwcb_breach_message.size(buffer, offset)
  end
  -- Size of Operational Halt Message
  if message_type == "h" then
    return nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_psxequities_lastsale_itch_v2_1.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_psxequities_lastsale_itch_v2_1.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_psxequities_lastsale_itch_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "T" then
    return nasdaq_psxequities_lastsale_itch_v2_1.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Next Shares Trade Report Message
  if message_type == "M" then
    return nasdaq_psxequities_lastsale_itch_v2_1.next_shares_trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error Message
  if message_type == "X" then
    return nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error For Next Shares Message
  if message_type == "O" then
    return nasdaq_psxequities_lastsale_itch_v2_1.trade_cancel_error_for_next_shares_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if message_type == "C" then
    return nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction For Next Shares Message
  if message_type == "Z" then
    return nasdaq_psxequities_lastsale_itch_v2_1.trade_correction_for_next_shares_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_psxequities_lastsale_itch_v2_1.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_psxequities_lastsale_itch_v2_1.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_psxequities_lastsale_itch_v2_1.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_psxequities_lastsale_itch_v2_1.mwcb_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Breach Message
  if message_type == "W" then
    return nasdaq_psxequities_lastsale_itch_v2_1.mwcb_breach_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Message
  if message_type == "h" then
    return nasdaq_psxequities_lastsale_itch_v2_1.operational_halt_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_psxequities_lastsale_itch_v2_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_psxequities_lastsale_itch_v2_1.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_psxequities_lastsale_itch_v2_1.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_psxequities_lastsale_itch_v2_1.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.payload, range, display)

  return nasdaq_psxequities_lastsale_itch_v2_1.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nasdaq_psxequities_lastsale_itch_v2_1.message_type = {}

-- Size: Message Type
nasdaq_psxequities_lastsale_itch_v2_1.message_type.size = 1

-- Display: Message Type
nasdaq_psxequities_lastsale_itch_v2_1.message_type.display = function(value)
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
nasdaq_psxequities_lastsale_itch_v2_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_psxequities_lastsale_itch_v2_1.timestamp = {}

-- Size: Timestamp
nasdaq_psxequities_lastsale_itch_v2_1.timestamp.size = 6

-- Display: Timestamp
nasdaq_psxequities_lastsale_itch_v2_1.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_psxequities_lastsale_itch_v2_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_psxequities_lastsale_itch_v2_1.tracking_number = {}

-- Size: Tracking Number
nasdaq_psxequities_lastsale_itch_v2_1.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_psxequities_lastsale_itch_v2_1.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_psxequities_lastsale_itch_v2_1.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_psxequities_lastsale_itch_v2_1.message_length = {}

-- Size: Message Length
nasdaq_psxequities_lastsale_itch_v2_1.message_length.size = 2

-- Display: Message Length
nasdaq_psxequities_lastsale_itch_v2_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_psxequities_lastsale_itch_v2_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
nasdaq_psxequities_lastsale_itch_v2_1.message_header = {}

-- Calculate size of: Message Header
nasdaq_psxequities_lastsale_itch_v2_1.message_header.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.message_length.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.tracking_number.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.timestamp.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.message_type.size

  return index
end

-- Display: Message Header
nasdaq_psxequities_lastsale_itch_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_psxequities_lastsale_itch_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_psxequities_lastsale_itch_v2_1.message_length.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_lastsale_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_lastsale_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 13 values
  index, message_type = nasdaq_psxequities_lastsale_itch_v2_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_psxequities_lastsale_itch_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.message_header, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_psxequities_lastsale_itch_v2_1.message = {}

-- Display: Message
nasdaq_psxequities_lastsale_itch_v2_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_psxequities_lastsale_itch_v2_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 4 fields
  index, message_header = nasdaq_psxequities_lastsale_itch_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 13 branches
  index = nasdaq_psxequities_lastsale_itch_v2_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_psxequities_lastsale_itch_v2_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.message, buffer(offset, 0))
    local current = nasdaq_psxequities_lastsale_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_lastsale_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
nasdaq_psxequities_lastsale_itch_v2_1.message_count = {}

-- Size: Message Count
nasdaq_psxequities_lastsale_itch_v2_1.message_count.size = 2

-- Display: Message Count
nasdaq_psxequities_lastsale_itch_v2_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_psxequities_lastsale_itch_v2_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_psxequities_lastsale_itch_v2_1.sequence_number = {}

-- Size: Sequence Number
nasdaq_psxequities_lastsale_itch_v2_1.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_psxequities_lastsale_itch_v2_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_psxequities_lastsale_itch_v2_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_lastsale_itch_v2_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_psxequities_lastsale_itch_v2_1.session = {}

-- Size: Session
nasdaq_psxequities_lastsale_itch_v2_1.session.size = 10

-- Display: Session
nasdaq_psxequities_lastsale_itch_v2_1.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_psxequities_lastsale_itch_v2_1.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_lastsale_itch_v2_1.session.size
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

  local display = nasdaq_psxequities_lastsale_itch_v2_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
nasdaq_psxequities_lastsale_itch_v2_1.packet_header = {}

-- Calculate size of: Packet Header
nasdaq_psxequities_lastsale_itch_v2_1.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.session.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.sequence_number.size

  index = index + nasdaq_psxequities_lastsale_itch_v2_1.message_count.size

  return index
end

-- Display: Packet Header
nasdaq_psxequities_lastsale_itch_v2_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_psxequities_lastsale_itch_v2_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_psxequities_lastsale_itch_v2_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_psxequities_lastsale_itch_v2_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_psxequities_lastsale_itch_v2_1.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_psxequities_lastsale_itch_v2_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_lastsale_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_lastsale_itch_v2_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_lastsale_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_psxequities_lastsale_itch_v2_1.packet = {}

-- Dissect Packet
nasdaq_psxequities_lastsale_itch_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_psxequities_lastsale_itch_v2_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_psxequities_lastsale_itch_v2_1.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_psxequities_lastsale_itch_v2_1.init()
end

-- Dissector for Nasdaq PsxEquities LastSale Itch 2.1
function omi_nasdaq_psxequities_lastsale_itch_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_psxequities_lastsale_itch_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_psxequities_lastsale_itch_v2_1, buffer(), omi_nasdaq_psxequities_lastsale_itch_v2_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_psxequities_lastsale_itch_v2_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_psxequities_lastsale_itch_v2_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_psxequities_lastsale_itch_v2_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq PsxEquities LastSale Itch 2.1
local function omi_nasdaq_psxequities_lastsale_itch_v2_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_lastsale_itch_v2_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_lastsale_itch_v2_1
  omi_nasdaq_psxequities_lastsale_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PsxEquities LastSale Itch 2.1
omi_nasdaq_psxequities_lastsale_itch_v2_1:register_heuristic("udp", omi_nasdaq_psxequities_lastsale_itch_v2_1_heuristic)

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
