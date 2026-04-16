-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NtxEquities NlsPlus Itch 4.0 Protocol
local omi_nasdaq_ntxequities_nlsplus_itch_v4_0 = Proto("Nasdaq.NtxEquities.NlsPlus.Itch.v4.0.Lua", "Nasdaq NtxEquities NlsPlus Itch 4.0")

-- Protocol table
local nasdaq_ntxequities_nlsplus_itch_v4_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NtxEquities NlsPlus Itch 4.0 Fields
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.adjusted_closing_price = ProtoField.new("Adjusted Closing Price", "nasdaq.ntxequities.nlsplus.itch.v4.0.adjustedclosingprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.ntxequities.nlsplus.itch.v4.0.authenticity", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.bloomberg_id = ProtoField.new("Bloomberg Id", "nasdaq.ntxequities.nlsplus.itch.v4.0.bloombergid", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.ntxequities.nlsplus.itch.v4.0.breachedlevel", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.client_timestamp = ProtoField.new("Client Timestamp", "nasdaq.ntxequities.nlsplus.itch.v4.0.clienttimestamp", ftypes.UINT64)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.consolidated_closing_price = ProtoField.new("Consolidated Closing Price", "nasdaq.ntxequities.nlsplus.itch.v4.0.consolidatedclosingprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.consolidated_high_price = ProtoField.new("Consolidated High Price", "nasdaq.ntxequities.nlsplus.itch.v4.0.consolidatedhighprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.consolidated_low_price = ProtoField.new("Consolidated Low Price", "nasdaq.ntxequities.nlsplus.itch.v4.0.consolidatedlowprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.consolidated_open_price = ProtoField.new("Consolidated Open Price", "nasdaq.ntxequities.nlsplus.itch.v4.0.consolidatedopenprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.consolidated_volume = ProtoField.new("Consolidated Volume", "nasdaq.ntxequities.nlsplus.itch.v4.0.consolidatedvolume", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.corrected_sale_condition_modifier = ProtoField.new("Corrected Sale Condition Modifier", "nasdaq.ntxequities.nlsplus.itch.v4.0.correctedsaleconditionmodifier", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.corrected_trade_control_number = ProtoField.new("Corrected Trade Control Number", "nasdaq.ntxequities.nlsplus.itch.v4.0.correctedtradecontrolnumber", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "nasdaq.ntxequities.nlsplus.itch.v4.0.correctedtradeprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.corrected_trade_size = ProtoField.new("Corrected Trade Size", "nasdaq.ntxequities.nlsplus.itch.v4.0.correctedtradesize", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.ntxequities.nlsplus.itch.v4.0.currenttradingstate", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.ntxequities.nlsplus.itch.v4.0.etpflag", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.ntxequities.nlsplus.itch.v4.0.etpleveragefactor", ftypes.UINT32)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.ntxequities.nlsplus.itch.v4.0.eventcode", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.ntxequities.nlsplus.itch.v4.0.financialstatusindicator", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.ntxequities.nlsplus.itch.v4.0.inverseindicator", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.ntxequities.nlsplus.itch.v4.0.ipoflag", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.ipo_price = ProtoField.new("Ipo Price", "nasdaq.ntxequities.nlsplus.itch.v4.0.ipoprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.ipo_quotation_release_qualifier = ProtoField.new("Ipo Quotation Release Qualifier", "nasdaq.ntxequities.nlsplus.itch.v4.0.ipoquotationreleasequalifier", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.ipo_quotation_release_time = ProtoField.new("Ipo Quotation Release Time", "nasdaq.ntxequities.nlsplus.itch.v4.0.ipoquotationreleasetime", ftypes.UINT32)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.ntxequities.nlsplus.itch.v4.0.issueclassification", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.ntxequities.nlsplus.itch.v4.0.issuesubtype", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.issue_symbol = ProtoField.new("Issue Symbol", "nasdaq.ntxequities.nlsplus.itch.v4.0.issuesymbol", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.level_1 = ProtoField.new("Level 1", "nasdaq.ntxequities.nlsplus.itch.v4.0.level1", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.level_2 = ProtoField.new("Level 2", "nasdaq.ntxequities.nlsplus.itch.v4.0.level2", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.level_3 = ProtoField.new("Level 3", "nasdaq.ntxequities.nlsplus.itch.v4.0.level3", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.ntxequities.nlsplus.itch.v4.0.luldreferencepricetier", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.market_category = ProtoField.new("Market Category", "nasdaq.ntxequities.nlsplus.itch.v4.0.marketcategory", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.market_code = ProtoField.new("Market Code", "nasdaq.ntxequities.nlsplus.itch.v4.0.marketcode", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.message = ProtoField.new("Message", "nasdaq.ntxequities.nlsplus.itch.v4.0.message", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.message_count = ProtoField.new("Message Count", "nasdaq.ntxequities.nlsplus.itch.v4.0.messagecount", ftypes.UINT16)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.ntxequities.nlsplus.itch.v4.0.messageheader", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.message_length = ProtoField.new("Message Length", "nasdaq.ntxequities.nlsplus.itch.v4.0.messagelength", ftypes.UINT16)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.ntxequities.nlsplus.itch.v4.0.messagetype", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.ntxequities.nlsplus.itch.v4.0.operationalhaltaction", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.original_sale_condition_modifier = ProtoField.new("Original Sale Condition Modifier", "nasdaq.ntxequities.nlsplus.itch.v4.0.originalsaleconditionmodifier", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.original_trade_control_number = ProtoField.new("Original Trade Control Number", "nasdaq.ntxequities.nlsplus.itch.v4.0.originaltradecontrolnumber", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.original_trade_price = ProtoField.new("Original Trade Price", "nasdaq.ntxequities.nlsplus.itch.v4.0.originaltradeprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.original_trade_size = ProtoField.new("Original Trade Size", "nasdaq.ntxequities.nlsplus.itch.v4.0.originaltradesize", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.originating_market_center_identifier = ProtoField.new("Originating Market Center Identifier", "nasdaq.ntxequities.nlsplus.itch.v4.0.originatingmarketcenteridentifier", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.packet = ProtoField.new("Packet", "nasdaq.ntxequities.nlsplus.itch.v4.0.packet", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.ntxequities.nlsplus.itch.v4.0.packetheader", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.reason = ProtoField.new("Reason", "nasdaq.ntxequities.nlsplus.itch.v4.0.reason", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.reference_for_net_change = ProtoField.new("Reference For Net Change", "nasdaq.ntxequities.nlsplus.itch.v4.0.referencefornetchange", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.reference_price = ProtoField.new("Reference Price", "nasdaq.ntxequities.nlsplus.itch.v4.0.referenceprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.ntxequities.nlsplus.itch.v4.0.regshoaction", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.ntxequities.nlsplus.itch.v4.0.roundlotsize", ftypes.UINT32)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.ntxequities.nlsplus.itch.v4.0.roundlotsonly", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.sale_condition_modifier = ProtoField.new("Sale Condition Modifier", "nasdaq.ntxequities.nlsplus.itch.v4.0.saleconditionmodifier", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.security_class = ProtoField.new("Security Class", "nasdaq.ntxequities.nlsplus.itch.v4.0.securityclass", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.ntxequities.nlsplus.itch.v4.0.sequencenumber", ftypes.UINT64)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.session = ProtoField.new("Session", "nasdaq.ntxequities.nlsplus.itch.v4.0.session", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.ntxequities.nlsplus.itch.v4.0.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.stock_alpha_8 = ProtoField.new("Stock Alpha 8", "nasdaq.ntxequities.nlsplus.itch.v4.0.stockalpha8", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.stock_alphanumeric_8 = ProtoField.new("Stock Alphanumeric 8", "nasdaq.ntxequities.nlsplus.itch.v4.0.stockalphanumeric8", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.ntxequities.nlsplus.itch.v4.0.timestamp", ftypes.UINT64)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.ntxequities.nlsplus.itch.v4.0.trackingnumber", ftypes.UINT16)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.trade_control_number = ProtoField.new("Trade Control Number", "nasdaq.ntxequities.nlsplus.itch.v4.0.tradecontrolnumber", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.trade_price = ProtoField.new("Trade Price", "nasdaq.ntxequities.nlsplus.itch.v4.0.tradeprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.trade_size = ProtoField.new("Trade Size", "nasdaq.ntxequities.nlsplus.itch.v4.0.tradesize", ftypes.DOUBLE)

-- Nasdaq NtxEquities Itch NlsPlus 4.0 Application Messages
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.adjusted_closing_price_message = ProtoField.new("Adjusted Closing Price Message", "nasdaq.ntxequities.nlsplus.itch.v4.0.adjustedclosingpricemessage", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.end_of_day_trade_summary_message = ProtoField.new("End Of Day Trade Summary Message", "nasdaq.ntxequities.nlsplus.itch.v4.0.endofdaytradesummarymessage", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.ipo_information_message = ProtoField.new("Ipo Information Message", "nasdaq.ntxequities.nlsplus.itch.v4.0.ipoinformationmessage", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.ipo_quoting_period_update_message = ProtoField.new("Ipo Quoting Period Update Message", "nasdaq.ntxequities.nlsplus.itch.v4.0.ipoquotingperiodupdatemessage", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.ntxequities.nlsplus.itch.v4.0.mwcbdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.mwcb_status_message = ProtoField.new("Mwcb Status Message", "nasdaq.ntxequities.nlsplus.itch.v4.0.mwcbstatusmessage", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.ntxequities.nlsplus.itch.v4.0.operationalhaltmessage", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.ntxequities.nlsplus.itch.v4.0.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.ntxequities.nlsplus.itch.v4.0.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.ntxequities.nlsplus.itch.v4.0.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.ntxequities.nlsplus.itch.v4.0.systemeventmessage", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "nasdaq.ntxequities.nlsplus.itch.v4.0.tradecancelerrormessage", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nasdaq.ntxequities.nlsplus.itch.v4.0.tradecorrectionmessage", ftypes.STRING)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.trade_report_message = ProtoField.new("Trade Report Message", "nasdaq.ntxequities.nlsplus.itch.v4.0.tradereportmessage", ftypes.STRING)

-- Nasdaq NtxEquities NlsPlus Itch 4.0 generated fields
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.message_index = ProtoField.new("Message Index", "nasdaq.ntxequities.nlsplus.itch.v4.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NtxEquities NlsPlus Itch 4.0 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Nasdaq NtxEquities NlsPlus Itch 4.0 Show Options
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Timestamp Display Preferences
nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp_format = 2  -- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_ntxequities_nlsplus_itch_v4_0.utc_offset_hours = 5 -- Hours behind UTC (EST = 5, EDT = 4, UTC = 0)

local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC for midnight calculation (EST=5, EDT=4, UTC=0)")

-- Handle changed preferences
function omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_application_messages
  end
  if show.message ~= omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_message then
    show.message = omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_message
  end
  if show.message_header ~= omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_message_header then
    show.message_header = omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_message_header
  end
  if show.packet ~= omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_packet then
    show.packet = omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_packet
  end
  if show.packet_header ~= omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_packet_header
  end
  if show.message_index ~= omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_message_index then
    show.message_index = omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.show_message_index
  end

  -- Check Timestamp preferences
  if nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp_format ~= omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.timestamp_format then
    nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp_format = omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.timestamp_format
  end
  if nasdaq_ntxequities_nlsplus_itch_v4_0.utc_offset_hours ~= omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.utc_offset_hours then
    nasdaq_ntxequities_nlsplus_itch_v4_0.utc_offset_hours = omi_nasdaq_ntxequities_nlsplus_itch_v4_0.prefs.utc_offset_hours
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
-- Nasdaq NtxEquities NlsPlus Itch 4.0 Fields
-----------------------------------------------------------------------

-- Adjusted Closing Price
nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price = {}

-- Size: Adjusted Closing Price
nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price.size = 8

-- Display: Adjusted Closing Price
nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price.display = function(value)
  return "Adjusted Closing Price: "..value
end

-- Translate: Adjusted Closing Price
nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Adjusted Closing Price
nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.adjusted_closing_price, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_ntxequities_nlsplus_itch_v4_0.authenticity = {}

-- Size: Authenticity
nasdaq_ntxequities_nlsplus_itch_v4_0.authenticity.size = 1

-- Display: Authenticity
nasdaq_ntxequities_nlsplus_itch_v4_0.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_ntxequities_nlsplus_itch_v4_0.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Bloomberg Id
nasdaq_ntxequities_nlsplus_itch_v4_0.bloomberg_id = {}

-- Size: Bloomberg Id
nasdaq_ntxequities_nlsplus_itch_v4_0.bloomberg_id.size = 12

-- Display: Bloomberg Id
nasdaq_ntxequities_nlsplus_itch_v4_0.bloomberg_id.display = function(value)
  return "Bloomberg Id: "..value
end

-- Dissect: Bloomberg Id
nasdaq_ntxequities_nlsplus_itch_v4_0.bloomberg_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.bloomberg_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.bloomberg_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.bloomberg_id, range, value, display)

  return offset + length, value
end

-- Breached Level
nasdaq_ntxequities_nlsplus_itch_v4_0.breached_level = {}

-- Size: Breached Level
nasdaq_ntxequities_nlsplus_itch_v4_0.breached_level.size = 1

-- Display: Breached Level
nasdaq_ntxequities_nlsplus_itch_v4_0.breached_level.display = function(value)
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
nasdaq_ntxequities_nlsplus_itch_v4_0.breached_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.breached_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.breached_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Client Timestamp
nasdaq_ntxequities_nlsplus_itch_v4_0.client_timestamp = {}

-- Size: Client Timestamp
nasdaq_ntxequities_nlsplus_itch_v4_0.client_timestamp.size = 6

-- Display: Client Timestamp
nasdaq_ntxequities_nlsplus_itch_v4_0.client_timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_ntxequities_nlsplus_itch_v4_0.client_timestamp_format == 0 then
    return "Client Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_ntxequities_nlsplus_itch_v4_0.client_timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_ntxequities_nlsplus_itch_v4_0.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Client Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Client Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Client Timestamp
nasdaq_ntxequities_nlsplus_itch_v4_0.client_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.client_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.client_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.client_timestamp, range, value, display)

  return offset + length, value
end

-- Consolidated Closing Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_closing_price = {}

-- Size: Consolidated Closing Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_closing_price.size = 8

-- Display: Consolidated Closing Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_closing_price.display = function(value)
  return "Consolidated Closing Price: "..value
end

-- Translate: Consolidated Closing Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_closing_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated Closing Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_closing_price.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.consolidated_closing_price, range, value, display)

  return offset + length, value
end

-- Consolidated High Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_high_price = {}

-- Size: Consolidated High Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_high_price.size = 8

-- Display: Consolidated High Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_high_price.display = function(value)
  return "Consolidated High Price: "..value
end

-- Translate: Consolidated High Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_high_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated High Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_high_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_high_price.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.consolidated_high_price, range, value, display)

  return offset + length, value
end

-- Consolidated Low Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_low_price = {}

-- Size: Consolidated Low Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_low_price.size = 8

-- Display: Consolidated Low Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_low_price.display = function(value)
  return "Consolidated Low Price: "..value
end

-- Translate: Consolidated Low Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_low_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated Low Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_low_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_low_price.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.consolidated_low_price, range, value, display)

  return offset + length, value
end

-- Consolidated Open Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_open_price = {}

-- Size: Consolidated Open Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_open_price.size = 8

-- Display: Consolidated Open Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_open_price.display = function(value)
  return "Consolidated Open Price: "..value
end

-- Translate: Consolidated Open Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_open_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Consolidated Open Price
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_open_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_open_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_open_price.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.consolidated_open_price, range, value, display)

  return offset + length, value
end

-- Consolidated Volume
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume = {}

-- Size: Consolidated Volume
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume.size = 8

-- Display: Consolidated Volume
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume.display = function(value)
  return "Consolidated Volume: "..value
end

-- Translate: Consolidated Volume
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated Volume
nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.consolidated_volume, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition Modifier
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_sale_condition_modifier = {}

-- Size: Corrected Sale Condition Modifier
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_sale_condition_modifier.size = 4

-- Display: Corrected Sale Condition Modifier
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_sale_condition_modifier.display = function(value)
  return "Corrected Sale Condition Modifier: "..value
end

-- Dissect: Corrected Sale Condition Modifier
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_sale_condition_modifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_sale_condition_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.corrected_sale_condition_modifier, range, value, display)

  return offset + length, value
end

-- Corrected Trade Control Number
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_control_number = {}

-- Size: Corrected Trade Control Number
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_control_number.size = 10

-- Display: Corrected Trade Control Number
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_control_number.display = function(value)
  return "Corrected Trade Control Number: "..value
end

-- Dissect: Corrected Trade Control Number
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.corrected_trade_control_number, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_price = {}

-- Size: Corrected Trade Price
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_price.size = 8

-- Display: Corrected Trade Price
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Corrected Trade Price
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_price.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Size
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_size = {}

-- Size: Corrected Trade Size
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_size.size = 8

-- Display: Corrected Trade Size
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_size.display = function(value)
  return "Corrected Trade Size: "..value
end

-- Translate: Corrected Trade Size
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_size.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Trade Size
nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_size.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_size.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.corrected_trade_size, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_ntxequities_nlsplus_itch_v4_0.current_trading_state = {}

-- Size: Current Trading State
nasdaq_ntxequities_nlsplus_itch_v4_0.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_ntxequities_nlsplus_itch_v4_0.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halted (H)"
  end
  if value == "P" then
    return "Current Trading State: Paused (P)"
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
nasdaq_ntxequities_nlsplus_itch_v4_0.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_ntxequities_nlsplus_itch_v4_0.etp_flag = {}

-- Size: Etp Flag
nasdaq_ntxequities_nlsplus_itch_v4_0.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_ntxequities_nlsplus_itch_v4_0.etp_flag.display = function(value)
  if value == "Y" then
    return "Etp Flag: Etp (Y)"
  end
  if value == "N" then
    return "Etp Flag: Not Etp (N)"
  end
  if value == " " then
    return "Etp Flag: Not Available (<whitespace>)"
  end

  return "Etp Flag: Unknown("..value..")"
end

-- Dissect: Etp Flag
nasdaq_ntxequities_nlsplus_itch_v4_0.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_ntxequities_nlsplus_itch_v4_0.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_ntxequities_nlsplus_itch_v4_0.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_ntxequities_nlsplus_itch_v4_0.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_ntxequities_nlsplus_itch_v4_0.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_ntxequities_nlsplus_itch_v4_0.event_code = {}

-- Size: Event Code
nasdaq_ntxequities_nlsplus_itch_v4_0.event_code.size = 1

-- Display: Event Code
nasdaq_ntxequities_nlsplus_itch_v4_0.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Transmissions (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours (Q)"
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
nasdaq_ntxequities_nlsplus_itch_v4_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_ntxequities_nlsplus_itch_v4_0.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_ntxequities_nlsplus_itch_v4_0.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_ntxequities_nlsplus_itch_v4_0.financial_status_indicator.display = function(value)
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
    return "Financial Status Indicator: Creations Redemptions Suspended (C)"
  end
  if value == "N" then
    return "Financial Status Indicator: Normal (N)"
  end
  if value == " " then
    return "Financial Status Indicator: Not Available (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_ntxequities_nlsplus_itch_v4_0.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Inverse Indicator
nasdaq_ntxequities_nlsplus_itch_v4_0.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_ntxequities_nlsplus_itch_v4_0.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_ntxequities_nlsplus_itch_v4_0.inverse_indicator.display = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_ntxequities_nlsplus_itch_v4_0.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_flag.display = function(value)
  if value == "Y" then
    return "Ipo Flag: Yes (Y)"
  end
  if value == "N" then
    return "Ipo Flag: No (N)"
  end
  if value == "Z" then
    return "Ipo Flag: Non Ipo New Listed (Z)"
  end
  if value == " " then
    return "Ipo Flag: Not Available (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Ipo Price
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_price = {}

-- Size: Ipo Price
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_price.size = 8

-- Display: Ipo Price
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_price.display = function(value)
  return "Ipo Price: "..value
end

-- Translate: Ipo Price
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Ipo Price
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_price.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.ipo_price, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Qualifier
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_qualifier = {}

-- Size: Ipo Quotation Release Qualifier
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_qualifier.size = 1

-- Display: Ipo Quotation Release Qualifier
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_qualifier.display = function(value)
  if value == "A" then
    return "Ipo Quotation Release Qualifier: Anticipated (A)"
  end
  if value == "C" then
    return "Ipo Quotation Release Qualifier: Canceled Postponed (C)"
  end

  return "Ipo Quotation Release Qualifier: Unknown("..value..")"
end

-- Dissect: Ipo Quotation Release Qualifier
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.ipo_quotation_release_qualifier, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Time
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_time = {}

-- Size: Ipo Quotation Release Time
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_time.size = 4

-- Display: Ipo Quotation Release Time
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_time.display = function(value)
  return "Ipo Quotation Release Time: "..value
end

-- Dissect: Ipo Quotation Release Time
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.ipo_quotation_release_time, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_ntxequities_nlsplus_itch_v4_0.issue_classification = {}

-- Size: Issue Classification
nasdaq_ntxequities_nlsplus_itch_v4_0.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_ntxequities_nlsplus_itch_v4_0.issue_classification.display = function(value)
  if value == "A" then
    return "Issue Classification: Ads (A)"
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
    return "Issue Classification: Ordinary (O)"
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
    return "Issue Classification: Units Bi (V)"
  end
  if value == "W" then
    return "Issue Classification: Warrant (W)"
  end

  return "Issue Classification: Unknown("..value..")"
end

-- Dissect: Issue Classification
nasdaq_ntxequities_nlsplus_itch_v4_0.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_ntxequities_nlsplus_itch_v4_0.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_ntxequities_nlsplus_itch_v4_0.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_ntxequities_nlsplus_itch_v4_0.issue_sub_type.display = function(value)
  return "Issue Sub Type: "..value
end

-- Dissect: Issue Sub Type
nasdaq_ntxequities_nlsplus_itch_v4_0.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Issue Symbol
nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol = {}

-- Size: Issue Symbol
nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.size = 8

-- Display: Issue Symbol
nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.display = function(value)
  return "Issue Symbol: "..value
end

-- Dissect: Issue Symbol
nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.issue_symbol, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_ntxequities_nlsplus_itch_v4_0.level_1 = {}

-- Size: Level 1
nasdaq_ntxequities_nlsplus_itch_v4_0.level_1.size = 8

-- Display: Level 1
nasdaq_ntxequities_nlsplus_itch_v4_0.level_1.display = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
nasdaq_ntxequities_nlsplus_itch_v4_0.level_1.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_ntxequities_nlsplus_itch_v4_0.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.level_1.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.level_1.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.level_1, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_ntxequities_nlsplus_itch_v4_0.level_2 = {}

-- Size: Level 2
nasdaq_ntxequities_nlsplus_itch_v4_0.level_2.size = 8

-- Display: Level 2
nasdaq_ntxequities_nlsplus_itch_v4_0.level_2.display = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
nasdaq_ntxequities_nlsplus_itch_v4_0.level_2.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_ntxequities_nlsplus_itch_v4_0.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.level_2.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.level_2.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 3
nasdaq_ntxequities_nlsplus_itch_v4_0.level_3 = {}

-- Size: Level 3
nasdaq_ntxequities_nlsplus_itch_v4_0.level_3.size = 8

-- Display: Level 3
nasdaq_ntxequities_nlsplus_itch_v4_0.level_3.display = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
nasdaq_ntxequities_nlsplus_itch_v4_0.level_3.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_ntxequities_nlsplus_itch_v4_0.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.level_3.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.level_3.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.level_3, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_ntxequities_nlsplus_itch_v4_0.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_ntxequities_nlsplus_itch_v4_0.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_ntxequities_nlsplus_itch_v4_0.luld_reference_price_tier.display = function(value)
  if value == "1" then
    return "Luld Reference Price Tier: Tier 1 (1)"
  end
  if value == "2" then
    return "Luld Reference Price Tier: Tier 2 (2)"
  end
  if value == " " then
    return "Luld Reference Price Tier: Not Applicable (<whitespace>)"
  end

  return "Luld Reference Price Tier: Unknown("..value..")"
end

-- Dissect: Luld Reference Price Tier
nasdaq_ntxequities_nlsplus_itch_v4_0.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_ntxequities_nlsplus_itch_v4_0.market_category = {}

-- Size: Market Category
nasdaq_ntxequities_nlsplus_itch_v4_0.market_category.size = 1

-- Display: Market Category
nasdaq_ntxequities_nlsplus_itch_v4_0.market_category.display = function(value)
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
    return "Market Category: Nyse American (A)"
  end
  if value == "P" then
    return "Market Category: Nyse Arca (P)"
  end
  if value == "M" then
    return "Market Category: Nyse Texas (M)"
  end
  if value == "Z" then
    return "Market Category: Bats Z (Z)"
  end
  if value == "V" then
    return "Market Category: Iex (V)"
  end
  if value == " " then
    return "Market Category: Not Available (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_ntxequities_nlsplus_itch_v4_0.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.market_category, range, value, display)

  return offset + length, value
end

-- Market Code
nasdaq_ntxequities_nlsplus_itch_v4_0.market_code = {}

-- Size: Market Code
nasdaq_ntxequities_nlsplus_itch_v4_0.market_code.size = 1

-- Display: Market Code
nasdaq_ntxequities_nlsplus_itch_v4_0.market_code.display = function(value)
  if value == "Q" then
    return "Market Code: Nasdaq (Q)"
  end
  if value == "B" then
    return "Market Code: Nasdaq Texas (B)"
  end
  if value == "X" then
    return "Market Code: Psx (X)"
  end

  return "Market Code: Unknown("..value..")"
end

-- Dissect: Market Code
nasdaq_ntxequities_nlsplus_itch_v4_0.market_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.market_code, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_ntxequities_nlsplus_itch_v4_0.message_count = {}

-- Size: Message Count
nasdaq_ntxequities_nlsplus_itch_v4_0.message_count.size = 2

-- Display: Message Count
nasdaq_ntxequities_nlsplus_itch_v4_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_ntxequities_nlsplus_itch_v4_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_ntxequities_nlsplus_itch_v4_0.message_length = {}

-- Size: Message Length
nasdaq_ntxequities_nlsplus_itch_v4_0.message_length.size = 2

-- Display: Message Length
nasdaq_ntxequities_nlsplus_itch_v4_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_ntxequities_nlsplus_itch_v4_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_ntxequities_nlsplus_itch_v4_0.message_type = {}

-- Size: Message Type
nasdaq_ntxequities_nlsplus_itch_v4_0.message_type.size = 1

-- Display: Message Type
nasdaq_ntxequities_nlsplus_itch_v4_0.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "e" then
    return "Message Type: Trade Report Message (e)"
  end
  if value == "o" then
    return "Message Type: Trade Cancel Error Message (o)"
  end
  if value == "b" then
    return "Message Type: Trade Correction Message (b)"
  end
  if value == "H" then
    return "Message Type: Stock Trading Action Message (H)"
  end
  if value == "Y" then
    return "Message Type: Reg Sho Short Sale Price Test Restricted Indicator Message (Y)"
  end
  if value == "R" then
    return "Message Type: Stock Directory Message (R)"
  end
  if value == "g" then
    return "Message Type: Adjusted Closing Price Message (g)"
  end
  if value == "p" then
    return "Message Type: End Of Day Trade Summary Message (p)"
  end
  if value == "i" then
    return "Message Type: Ipo Information Message (i)"
  end
  if value == "V" then
    return "Message Type: Mwcb Decline Level Message (V)"
  end
  if value == "W" then
    return "Message Type: Mwcb Status Message (W)"
  end
  if value == "k" then
    return "Message Type: Ipo Quoting Period Update Message (k)"
  end
  if value == "h" then
    return "Message Type: Operational Halt Message (h)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_ntxequities_nlsplus_itch_v4_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Operational Halt Action
nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_action = {}

-- Size: Operational Halt Action
nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_action.size = 1

-- Display: Operational Halt Action
nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_action.display = function(value)
  if value == "H" then
    return "Operational Halt Action: Operationally Halted (H)"
  end
  if value == "T" then
    return "Operational Halt Action: Operational Halt Lifted (T)"
  end

  return "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Original Sale Condition Modifier
nasdaq_ntxequities_nlsplus_itch_v4_0.original_sale_condition_modifier = {}

-- Size: Original Sale Condition Modifier
nasdaq_ntxequities_nlsplus_itch_v4_0.original_sale_condition_modifier.size = 4

-- Display: Original Sale Condition Modifier
nasdaq_ntxequities_nlsplus_itch_v4_0.original_sale_condition_modifier.display = function(value)
  return "Original Sale Condition Modifier: "..value
end

-- Dissect: Original Sale Condition Modifier
nasdaq_ntxequities_nlsplus_itch_v4_0.original_sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.original_sale_condition_modifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.original_sale_condition_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.original_sale_condition_modifier, range, value, display)

  return offset + length, value
end

-- Original Trade Control Number
nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_control_number = {}

-- Size: Original Trade Control Number
nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_control_number.size = 10

-- Display: Original Trade Control Number
nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_control_number.display = function(value)
  return "Original Trade Control Number: "..value
end

-- Dissect: Original Trade Control Number
nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.original_trade_control_number, range, value, display)

  return offset + length, value
end

-- Original Trade Price
nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_price = {}

-- Size: Original Trade Price
nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_price.size = 8

-- Display: Original Trade Price
nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Original Trade Price
nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_price.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Size
nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_size = {}

-- Size: Original Trade Size
nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_size.size = 8

-- Display: Original Trade Size
nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_size.display = function(value)
  return "Original Trade Size: "..value
end

-- Translate: Original Trade Size
nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_size.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Trade Size
nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_size.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_size.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.original_trade_size, range, value, display)

  return offset + length, value
end

-- Originating Market Center Identifier
nasdaq_ntxequities_nlsplus_itch_v4_0.originating_market_center_identifier = {}

-- Size: Originating Market Center Identifier
nasdaq_ntxequities_nlsplus_itch_v4_0.originating_market_center_identifier.size = 1

-- Display: Originating Market Center Identifier
nasdaq_ntxequities_nlsplus_itch_v4_0.originating_market_center_identifier.display = function(value)
  if value == "Q" then
    return "Originating Market Center Identifier: Nasdaq (Q)"
  end
  if value == "L" then
    return "Originating Market Center Identifier: Trf Carteret (L)"
  end
  if value == "2" then
    return "Originating Market Center Identifier: Trf Chicago (2)"
  end
  if value == "B" then
    return "Originating Market Center Identifier: Nasdaq Texas (B)"
  end
  if value == "X" then
    return "Originating Market Center Identifier: Psx (X)"
  end

  return "Originating Market Center Identifier: Unknown("..value..")"
end

-- Dissect: Originating Market Center Identifier
nasdaq_ntxequities_nlsplus_itch_v4_0.originating_market_center_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.originating_market_center_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.originating_market_center_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.originating_market_center_identifier, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_ntxequities_nlsplus_itch_v4_0.reason = {}

-- Size: Reason
nasdaq_ntxequities_nlsplus_itch_v4_0.reason.size = 4

-- Display: Reason
nasdaq_ntxequities_nlsplus_itch_v4_0.reason.display = function(value)
  if value == "T1" then
    return "Reason: Halt News Pending (T1)"
  end
  if value == "T2" then
    return "Reason: Halt News Disseminated (T2)"
  end
  if value == "T5" then
    return "Reason: Single Stock Trading Pause (T5)"
  end
  if value == "T6" then
    return "Reason: Regulatory Halt (T6)"
  end
  if value == "T8" then
    return "Reason: Halt Etf (T8)"
  end
  if value == "T12" then
    return "Reason: Trading Halted (T12)"
  end
  if value == "H4" then
    return "Reason: Halt Non Compliance (H4)"
  end
  if value == "H9" then
    return "Reason: Halt Filings Not Current (H9)"
  end
  if value == "H10" then
    return "Reason: Halt Sec Trading Suspension (H10)"
  end
  if value == "H11" then
    return "Reason: Halt Regulatory Concern (H11)"
  end
  if value == "O1" then
    return "Reason: Operations Halt (O1)"
  end
  if value == "LUDP" then
    return "Reason: Volatility Trading Pause (LUDP)"
  end
  if value == "LUDS" then
    return "Reason: Volatility Trading Pause Straddle (LUDS)"
  end
  if value == "MWC1" then
    return "Reason: Mwcb Level 1 (MWC1)"
  end
  if value == "MWC2" then
    return "Reason: Mwcb Level 2 (MWC2)"
  end
  if value == "MWC3" then
    return "Reason: Mwcb Level 3 (MWC3)"
  end
  if value == "MWC0" then
    return "Reason: Mwcb Carry Over (MWC0)"
  end
  if value == "IPO1" then
    return "Reason: Ipo Not Yet Trading (IPO1)"
  end
  if value == "M1" then
    return "Reason: Corporate Action (M1)"
  end
  if value == "M2" then
    return "Reason: Quotation Not Available (M2)"
  end
  if value == "T3" then
    return "Reason: News And Resumption Times (T3)"
  end
  if value == "T7" then
    return "Reason: Single Stock Quotation Only (T7)"
  end
  if value == "R4" then
    return "Reason: Qualifications Resolved (R4)"
  end
  if value == "R9" then
    return "Reason: Filing Requirements Met (R9)"
  end
  if value == "C3" then
    return "Reason: News Not Forthcoming (C3)"
  end
  if value == "C4" then
    return "Reason: Qualifications Halt Ended (C4)"
  end
  if value == "C9" then
    return "Reason: Qualifications Halt Concluded (C9)"
  end
  if value == "C11" then
    return "Reason: Other Regulatory Auth (C11)"
  end
  if value == "MWCQ" then
    return "Reason: Mwcb Resumption (MWCQ)"
  end
  if value == "R1" then
    return "Reason: New Issue Available (R1)"
  end
  if value == "R2" then
    return "Reason: Issue Available (R2)"
  end
  if value == "IPOQ" then
    return "Reason: Ipo Released For Quotation (IPOQ)"
  end
  if value == "IPOE" then
    return "Reason: Ipo Positioning Window Extension (IPOE)"
  end
  if value == " " then
    return "Reason: Not Available (<whitespace>)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
nasdaq_ntxequities_nlsplus_itch_v4_0.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Reference For Net Change
nasdaq_ntxequities_nlsplus_itch_v4_0.reference_for_net_change = {}

-- Size: Reference For Net Change
nasdaq_ntxequities_nlsplus_itch_v4_0.reference_for_net_change.size = 1

-- Display: Reference For Net Change
nasdaq_ntxequities_nlsplus_itch_v4_0.reference_for_net_change.display = function(value)
  if value == "F" then
    return "Reference For Net Change: First Trade Price (F)"
  end
  if value == "W" then
    return "Reference For Net Change: Underwriter Price (W)"
  end

  return "Reference For Net Change: Unknown("..value..")"
end

-- Dissect: Reference For Net Change
nasdaq_ntxequities_nlsplus_itch_v4_0.reference_for_net_change.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.reference_for_net_change.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.reference_for_net_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.reference_for_net_change, range, value, display)

  return offset + length, value
end

-- Reference Price
nasdaq_ntxequities_nlsplus_itch_v4_0.reference_price = {}

-- Size: Reference Price
nasdaq_ntxequities_nlsplus_itch_v4_0.reference_price.size = 8

-- Display: Reference Price
nasdaq_ntxequities_nlsplus_itch_v4_0.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
nasdaq_ntxequities_nlsplus_itch_v4_0.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
nasdaq_ntxequities_nlsplus_itch_v4_0.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.reference_price.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Restriction In Effect (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Restriction Remains (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_ntxequities_nlsplus_itch_v4_0.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_ntxequities_nlsplus_itch_v4_0.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_ntxequities_nlsplus_itch_v4_0.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_ntxequities_nlsplus_itch_v4_0.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_ntxequities_nlsplus_itch_v4_0.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_ntxequities_nlsplus_itch_v4_0.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_ntxequities_nlsplus_itch_v4_0.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No Restrictions (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_ntxequities_nlsplus_itch_v4_0.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Sale Condition Modifier
nasdaq_ntxequities_nlsplus_itch_v4_0.sale_condition_modifier = {}

-- Size: Sale Condition Modifier
nasdaq_ntxequities_nlsplus_itch_v4_0.sale_condition_modifier.size = 4

-- Display: Sale Condition Modifier
nasdaq_ntxequities_nlsplus_itch_v4_0.sale_condition_modifier.display = function(value)
  return "Sale Condition Modifier: "..value
end

-- Dissect: Sale Condition Modifier
nasdaq_ntxequities_nlsplus_itch_v4_0.sale_condition_modifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.sale_condition_modifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.sale_condition_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.sale_condition_modifier, range, value, display)

  return offset + length, value
end

-- Security Class
nasdaq_ntxequities_nlsplus_itch_v4_0.security_class = {}

-- Size: Security Class
nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.size = 1

-- Display: Security Class
nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.display = function(value)
  if value == "Q" then
    return "Security Class: Nasdaq (Q)"
  end
  if value == "N" then
    return "Security Class: Nyse (N)"
  end
  if value == "A" then
    return "Security Class: Nyse American (A)"
  end
  if value == "P" then
    return "Security Class: Nyse Arca (P)"
  end
  if value == "M" then
    return "Security Class: Nyse Texas (M)"
  end
  if value == "Z" then
    return "Security Class: Bats (Z)"
  end
  if value == "V" then
    return "Security Class: Iex (V)"
  end

  return "Security Class: Unknown("..value..")"
end

-- Dissect: Security Class
nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.security_class, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_ntxequities_nlsplus_itch_v4_0.sequence_number = {}

-- Size: Sequence Number
nasdaq_ntxequities_nlsplus_itch_v4_0.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_ntxequities_nlsplus_itch_v4_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_ntxequities_nlsplus_itch_v4_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_ntxequities_nlsplus_itch_v4_0.session = {}

-- Size: Session
nasdaq_ntxequities_nlsplus_itch_v4_0.session.size = 10

-- Display: Session
nasdaq_ntxequities_nlsplus_itch_v4_0.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_ntxequities_nlsplus_itch_v4_0.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.session.size
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

  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.session, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_ntxequities_nlsplus_itch_v4_0.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_ntxequities_nlsplus_itch_v4_0.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_ntxequities_nlsplus_itch_v4_0.short_sale_threshold_indicator.display = function(value)
  if value == "Y" then
    return "Short Sale Threshold Indicator: Restricted (Y)"
  end
  if value == "N" then
    return "Short Sale Threshold Indicator: Not Restricted (N)"
  end
  if value == " " then
    return "Short Sale Threshold Indicator: Not Available (<whitespace>)"
  end

  return "Short Sale Threshold Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Threshold Indicator
nasdaq_ntxequities_nlsplus_itch_v4_0.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Stock Alpha 8
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alpha_8 = {}

-- Size: Stock Alpha 8
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alpha_8.size = 8

-- Display: Stock Alpha 8
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alpha_8.display = function(value)
  return "Stock Alpha 8: "..value
end

-- Dissect: Stock Alpha 8
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alpha_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alpha_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alpha_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.stock_alpha_8, range, value, display)

  return offset + length, value
end

-- Stock Alphanumeric 8
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alphanumeric_8 = {}

-- Size: Stock Alphanumeric 8
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alphanumeric_8.size = 8

-- Display: Stock Alphanumeric 8
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alphanumeric_8.display = function(value)
  return "Stock Alphanumeric 8: "..value
end

-- Dissect: Stock Alphanumeric 8
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alphanumeric_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alphanumeric_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alphanumeric_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.stock_alphanumeric_8, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp = {}

-- Size: Timestamp
nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size = 6

-- Display: Timestamp
nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_ntxequities_nlsplus_itch_v4_0.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number = {}

-- Size: Tracking Number
nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Trade Control Number
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_control_number = {}

-- Size: Trade Control Number
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_control_number.size = 10

-- Display: Trade Control Number
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_control_number.display = function(value)
  return "Trade Control Number: "..value
end

-- Dissect: Trade Control Number
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_control_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_control_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_control_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.trade_control_number, range, value, display)

  return offset + length, value
end

-- Trade Price
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_price = {}

-- Size: Trade Price
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_price.size = 8

-- Display: Trade Price
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Trade Price
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_price.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Size
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_size = {}

-- Size: Trade Size
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_size.size = 8

-- Display: Trade Size
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Translate: Trade Size
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_size.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade Size
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_size.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_size.translate(raw)
  local display = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.trade_size, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NtxEquities NlsPlus Itch 4.0
-----------------------------------------------------------------------

-- Operational Halt Message
nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_message = {}

-- Size: Operational Halt Message
nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_message.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alpha_8.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.market_code.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_action.size

-- Display: Operational Halt Message
nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Message
nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock Alpha 8: Alpha
  index, stock_alpha_8 = nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alpha_8.dissect(buffer, index, packet, parent)

  -- Market Code: Alpha
  index, market_code = nasdaq_ntxequities_nlsplus_itch_v4_0.market_code.dissect(buffer, index, packet, parent)

  -- Operational Halt Action: Alpha
  index, operational_halt_action = nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.operational_halt_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_message.fields(buffer, offset, packet, parent)
  end
end

-- Ipo Quoting Period Update Message
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quoting_period_update_message = {}

-- Size: Ipo Quoting Period Update Message
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quoting_period_update_message.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alphanumeric_8.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_time.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_qualifier.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_price.size

-- Display: Ipo Quoting Period Update Message
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quoting_period_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ipo Quoting Period Update Message
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quoting_period_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock Alphanumeric 8: Alphanumeric
  index, stock_alphanumeric_8 = nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Time: Integer
  index, ipo_quotation_release_time = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_time.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Qualifier: Alphanumeric
  index, ipo_quotation_release_qualifier = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quotation_release_qualifier.dissect(buffer, index, packet, parent)

  -- Ipo Price: Price (4)
  index, ipo_price = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ipo Quoting Period Update Message
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quoting_period_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.ipo_quoting_period_update_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quoting_period_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quoting_period_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quoting_period_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Status Message
nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_status_message = {}

-- Size: Mwcb Status Message
nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_status_message.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.breached_level.size

-- Display: Mwcb Status Message
nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Status Message
nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Breached Level: Alphanumeric
  index, breached_level = nasdaq_ntxequities_nlsplus_itch_v4_0.breached_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Message
nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.mwcb_status_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Decline Level Message
nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_decline_level_message = {}

-- Size: Mwcb Decline Level Message
nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_decline_level_message.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.level_1.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.level_2.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.level_3.size

-- Display: Mwcb Decline Level Message
nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Level 1: Price (8)
  index, level_1 = nasdaq_ntxequities_nlsplus_itch_v4_0.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: Price (8)
  index, level_2 = nasdaq_ntxequities_nlsplus_itch_v4_0.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: Price (8)
  index, level_3 = nasdaq_ntxequities_nlsplus_itch_v4_0.level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Ipo Information Message
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_information_message = {}

-- Size: Ipo Information Message
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_information_message.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.reference_for_net_change.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.reference_price.size

-- Display: Ipo Information Message
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ipo Information Message
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.dissect(buffer, index, packet, parent)

  -- Reference For Net Change: Alphanumeric
  index, reference_for_net_change = nasdaq_ntxequities_nlsplus_itch_v4_0.reference_for_net_change.dissect(buffer, index, packet, parent)

  -- Reference Price: Price (4)
  index, reference_price = nasdaq_ntxequities_nlsplus_itch_v4_0.reference_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ipo Information Message
nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.ipo_information_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_information_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Day Trade Summary Message
nasdaq_ntxequities_nlsplus_itch_v4_0.end_of_day_trade_summary_message = {}

-- Size: End Of Day Trade Summary Message
nasdaq_ntxequities_nlsplus_itch_v4_0.end_of_day_trade_summary_message.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_high_price.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_low_price.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_closing_price.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_open_price.size

-- Display: End Of Day Trade Summary Message
nasdaq_ntxequities_nlsplus_itch_v4_0.end_of_day_trade_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Trade Summary Message
nasdaq_ntxequities_nlsplus_itch_v4_0.end_of_day_trade_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.dissect(buffer, index, packet, parent)

  -- Consolidated High Price: Price (4)
  index, consolidated_high_price = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Consolidated Low Price: Price (4)
  index, consolidated_low_price = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Consolidated Closing Price: Price (4)
  index, consolidated_closing_price = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_closing_price.dissect(buffer, index, packet, parent)

  -- Consolidated Volume: Size (6)
  index, consolidated_volume = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume.dissect(buffer, index, packet, parent)

  -- Consolidated Open Price: Price (4)
  index, consolidated_open_price = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_open_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Trade Summary Message
nasdaq_ntxequities_nlsplus_itch_v4_0.end_of_day_trade_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.end_of_day_trade_summary_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.end_of_day_trade_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.end_of_day_trade_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.end_of_day_trade_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Adjusted Closing Price Message
nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price_message = {}

-- Size: Adjusted Closing Price Message
nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price_message.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price.size

-- Display: Adjusted Closing Price Message
nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Adjusted Closing Price Message
nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.dissect(buffer, index, packet, parent)

  -- Adjusted Closing Price: Price (4)
  index, adjusted_closing_price = nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Adjusted Closing Price Message
nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.adjusted_closing_price_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_directory_message.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alphanumeric_8.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.market_category.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.financial_status_indicator.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.round_lot_size.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.round_lots_only.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.issue_classification.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.issue_sub_type.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.authenticity.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.short_sale_threshold_indicator.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_flag.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.luld_reference_price_tier.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.etp_flag.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.etp_leverage_factor.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.inverse_indicator.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.bloomberg_id.size

-- Display: Stock Directory Message
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock Alphanumeric 8: Alphanumeric
  index, stock_alphanumeric_8 = nasdaq_ntxequities_nlsplus_itch_v4_0.stock_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Market Category: Alphanumeric
  index, market_category = nasdaq_ntxequities_nlsplus_itch_v4_0.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alphanumeric
  index, financial_status_indicator = nasdaq_ntxequities_nlsplus_itch_v4_0.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_ntxequities_nlsplus_itch_v4_0.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alphanumeric
  index, round_lots_only = nasdaq_ntxequities_nlsplus_itch_v4_0.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: Alphanumeric
  index, issue_classification = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: Alphanumeric
  index, issue_sub_type = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_sub_type.dissect(buffer, index, packet, parent)

  -- Authenticity: Alphanumeric
  index, authenticity = nasdaq_ntxequities_nlsplus_itch_v4_0.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: Alphanumeric
  index, short_sale_threshold_indicator = nasdaq_ntxequities_nlsplus_itch_v4_0.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: Alphanumeric
  index, ipo_flag = nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: Alphanumeric
  index, luld_reference_price_tier = nasdaq_ntxequities_nlsplus_itch_v4_0.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: Alphanumeric
  index, etp_flag = nasdaq_ntxequities_nlsplus_itch_v4_0.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: Integer
  index, etp_leverage_factor = nasdaq_ntxequities_nlsplus_itch_v4_0.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: Alphanumeric
  index, inverse_indicator = nasdaq_ntxequities_nlsplus_itch_v4_0.inverse_indicator.dissect(buffer, index, packet, parent)

  -- Bloomberg Id: Alphanumeric
  index, bloomberg_id = nasdaq_ntxequities_nlsplus_itch_v4_0.bloomberg_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_trading_action_message.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.current_trading_state.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.reason.size

-- Display: Stock Trading Action Message
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alphanumeric
  index, current_trading_state = nasdaq_ntxequities_nlsplus_itch_v4_0.current_trading_state.dissect(buffer, index, packet, parent)

  -- Reason: Alphanumeric
  index, reason = nasdaq_ntxequities_nlsplus_itch_v4_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_ntxequities_nlsplus_itch_v4_0.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_correction_message = {}

-- Size: Trade Correction Message
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_correction_message.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.client_timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.originating_market_center_identifier.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_control_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_price.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_size.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.original_sale_condition_modifier.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_control_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_price.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_size.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_sale_condition_modifier.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume.size

-- Display: Trade Correction Message
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Client Timestamp: Timestamp
  index, client_timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.client_timestamp.dissect(buffer, index, packet, parent)

  -- Originating Market Center Identifier: Alphanumeric
  index, originating_market_center_identifier = nasdaq_ntxequities_nlsplus_itch_v4_0.originating_market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: Alphanumeric
  index, original_trade_control_number = nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price (4)
  index, original_trade_price = nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Size (6)
  index, original_trade_size = nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: Alphanumeric
  index, original_sale_condition_modifier = nasdaq_ntxequities_nlsplus_itch_v4_0.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  -- Corrected Trade Control Number: Alphanumeric
  index, corrected_trade_control_number = nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_control_number.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Price (4)
  index, corrected_trade_price = nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Trade Size: Size (6)
  index, corrected_trade_size = nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_trade_size.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition Modifier: Alphanumeric
  index, corrected_sale_condition_modifier = nasdaq_ntxequities_nlsplus_itch_v4_0.corrected_sale_condition_modifier.dissect(buffer, index, packet, parent)

  -- Consolidated Volume: Size (6)
  index, consolidated_volume = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.trade_correction_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Error Message
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_cancel_error_message = {}

-- Size: Trade Cancel Error Message
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_cancel_error_message.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.client_timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.originating_market_center_identifier.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_control_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_price.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_size.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.original_sale_condition_modifier.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume.size

-- Display: Trade Cancel Error Message
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Client Timestamp: Timestamp
  index, client_timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.client_timestamp.dissect(buffer, index, packet, parent)

  -- Originating Market Center Identifier: Alphanumeric
  index, originating_market_center_identifier = nasdaq_ntxequities_nlsplus_itch_v4_0.originating_market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.dissect(buffer, index, packet, parent)

  -- Original Trade Control Number: Alphanumeric
  index, original_trade_control_number = nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_control_number.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Price (4)
  index, original_trade_price = nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Size: Size (6)
  index, original_trade_size = nasdaq_ntxequities_nlsplus_itch_v4_0.original_trade_size.dissect(buffer, index, packet, parent)

  -- Original Sale Condition Modifier: Alphanumeric
  index, original_sale_condition_modifier = nasdaq_ntxequities_nlsplus_itch_v4_0.original_sale_condition_modifier.dissect(buffer, index, packet, parent)

  -- Consolidated Volume: Size (6)
  index, consolidated_volume = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.trade_cancel_error_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_report_message = {}

-- Size: Trade Report Message
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_report_message.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.client_timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.originating_market_center_identifier.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.trade_control_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.trade_price.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.trade_size.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.sale_condition_modifier.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume.size

-- Display: Trade Report Message
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Client Timestamp: Timestamp
  index, client_timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.client_timestamp.dissect(buffer, index, packet, parent)

  -- Originating Market Center Identifier: Alphanumeric
  index, originating_market_center_identifier = nasdaq_ntxequities_nlsplus_itch_v4_0.originating_market_center_identifier.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alphanumeric
  index, issue_symbol = nasdaq_ntxequities_nlsplus_itch_v4_0.issue_symbol.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_ntxequities_nlsplus_itch_v4_0.security_class.dissect(buffer, index, packet, parent)

  -- Trade Control Number: Alphanumeric
  index, trade_control_number = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_control_number.dissect(buffer, index, packet, parent)

  -- Trade Price: Price (4)
  index, trade_price = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: Size (6)
  index, trade_size = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_size.dissect(buffer, index, packet, parent)

  -- Sale Condition Modifier: Alphanumeric
  index, sale_condition_modifier = nasdaq_ntxequities_nlsplus_itch_v4_0.sale_condition_modifier.dissect(buffer, index, packet, parent)

  -- Consolidated Volume: Size (6)
  index, consolidated_volume = nasdaq_ntxequities_nlsplus_itch_v4_0.consolidated_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
nasdaq_ntxequities_nlsplus_itch_v4_0.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.trade_report_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_ntxequities_nlsplus_itch_v4_0.system_event_message = {}

-- Size: System Event Message
nasdaq_ntxequities_nlsplus_itch_v4_0.system_event_message.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.event_code.size

-- Display: System Event Message
nasdaq_ntxequities_nlsplus_itch_v4_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_ntxequities_nlsplus_itch_v4_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_nlsplus_itch_v4_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = nasdaq_ntxequities_nlsplus_itch_v4_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alphanumeric
  index, event_code = nasdaq_ntxequities_nlsplus_itch_v4_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_ntxequities_nlsplus_itch_v4_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_ntxequities_nlsplus_itch_v4_0.payload = {}

-- Dissect: Payload
nasdaq_ntxequities_nlsplus_itch_v4_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_ntxequities_nlsplus_itch_v4_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "e" then
    return nasdaq_ntxequities_nlsplus_itch_v4_0.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error Message
  if message_type == "o" then
    return nasdaq_ntxequities_nlsplus_itch_v4_0.trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if message_type == "b" then
    return nasdaq_ntxequities_nlsplus_itch_v4_0.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_ntxequities_nlsplus_itch_v4_0.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_ntxequities_nlsplus_itch_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_ntxequities_nlsplus_itch_v4_0.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Adjusted Closing Price Message
  if message_type == "g" then
    return nasdaq_ntxequities_nlsplus_itch_v4_0.adjusted_closing_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Trade Summary Message
  if message_type == "p" then
    return nasdaq_ntxequities_nlsplus_itch_v4_0.end_of_day_trade_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ipo Information Message
  if message_type == "i" then
    return nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_information_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Status Message
  if message_type == "W" then
    return nasdaq_ntxequities_nlsplus_itch_v4_0.mwcb_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ipo Quoting Period Update Message
  if message_type == "k" then
    return nasdaq_ntxequities_nlsplus_itch_v4_0.ipo_quoting_period_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Message
  if message_type == "h" then
    return nasdaq_ntxequities_nlsplus_itch_v4_0.operational_halt_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_ntxequities_nlsplus_itch_v4_0.message_header = {}

-- Size: Message Header
nasdaq_ntxequities_nlsplus_itch_v4_0.message_header.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.message_length.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.message_type.size

-- Display: Message Header
nasdaq_ntxequities_nlsplus_itch_v4_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_ntxequities_nlsplus_itch_v4_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_ntxequities_nlsplus_itch_v4_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 14 values
  index, message_type = nasdaq_ntxequities_nlsplus_itch_v4_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_ntxequities_nlsplus_itch_v4_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_ntxequities_nlsplus_itch_v4_0.message = {}

-- Read runtime size of: Message
nasdaq_ntxequities_nlsplus_itch_v4_0.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_ntxequities_nlsplus_itch_v4_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_ntxequities_nlsplus_itch_v4_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_ntxequities_nlsplus_itch_v4_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 14 branches
  index = nasdaq_ntxequities_nlsplus_itch_v4_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_ntxequities_nlsplus_itch_v4_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_ntxequities_nlsplus_itch_v4_0.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.message, buffer(offset, 0))
    local current = nasdaq_ntxequities_nlsplus_itch_v4_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_ntxequities_nlsplus_itch_v4_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
nasdaq_ntxequities_nlsplus_itch_v4_0.messages = {}

-- Dissect: Messages
nasdaq_ntxequities_nlsplus_itch_v4_0.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return offset
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_ntxequities_nlsplus_itch_v4_0.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
nasdaq_ntxequities_nlsplus_itch_v4_0.packet_header = {}

-- Size: Packet Header
nasdaq_ntxequities_nlsplus_itch_v4_0.packet_header.size =
  nasdaq_ntxequities_nlsplus_itch_v4_0.session.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.sequence_number.size + 
  nasdaq_ntxequities_nlsplus_itch_v4_0.message_count.size

-- Display: Packet Header
nasdaq_ntxequities_nlsplus_itch_v4_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_ntxequities_nlsplus_itch_v4_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_ntxequities_nlsplus_itch_v4_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_ntxequities_nlsplus_itch_v4_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_ntxequities_nlsplus_itch_v4_0.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_ntxequities_nlsplus_itch_v4_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_ntxequities_nlsplus_itch_v4_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_nlsplus_itch_v4_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_nlsplus_itch_v4_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_ntxequities_nlsplus_itch_v4_0.packet = {}

-- Dissect Packet
nasdaq_ntxequities_nlsplus_itch_v4_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_ntxequities_nlsplus_itch_v4_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_ntxequities_nlsplus_itch_v4_0.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_ntxequities_nlsplus_itch_v4_0.init()
end

-- Dissector for Nasdaq NtxEquities NlsPlus Itch 4.0
function omi_nasdaq_ntxequities_nlsplus_itch_v4_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_ntxequities_nlsplus_itch_v4_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_ntxequities_nlsplus_itch_v4_0, buffer(), omi_nasdaq_ntxequities_nlsplus_itch_v4_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_ntxequities_nlsplus_itch_v4_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_ntxequities_nlsplus_itch_v4_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_ntxequities_nlsplus_itch_v4_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq NtxEquities NlsPlus Itch 4.0
local function omi_nasdaq_ntxequities_nlsplus_itch_v4_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_ntxequities_nlsplus_itch_v4_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_ntxequities_nlsplus_itch_v4_0
  omi_nasdaq_ntxequities_nlsplus_itch_v4_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NtxEquities NlsPlus Itch 4.0
omi_nasdaq_ntxequities_nlsplus_itch_v4_0:register_heuristic("udp", omi_nasdaq_ntxequities_nlsplus_itch_v4_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 4.0
--   Date: Friday, February 13, 2026
--   Specification: Nasdaq.NtxEquities.NlsPlus.Itch.v4.0.20260213.pdf
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
