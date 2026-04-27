-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Finra FinraOrf Tdds Dfi 2.0 Protocol
local omi_finra_finraorf_tdds_dfi_v2_0 = Proto("Finra.FinraOrf.Tdds.Dfi.v2.0.Lua", "Finra FinraOrf Tdds Dfi 2.0")

-- Protocol table
local finra_finraorf_tdds_dfi_v2_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Finra FinraOrf Tdds Dfi 2.0 Fields
omi_finra_finraorf_tdds_dfi_v2_0.fields.action = ProtoField.new("Action", "finra.finraorf.tdds.dfi.v2.0.action", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.action_datetime = ProtoField.new("Action Datetime", "finra.finraorf.tdds.dfi.v2.0.actiondatetime", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.administrative = ProtoField.new("Administrative", "finra.finraorf.tdds.dfi.v2.0.administrative", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "finra.finraorf.tdds.dfi.v2.0.administrativemessagetype", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.as_of_indicator = ProtoField.new("As Of Indicator", "finra.finraorf.tdds.dfi.v2.0.asofindicator", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.block_soh = ProtoField.new("Block Soh", "finra.finraorf.tdds.dfi.v2.0.blocksoh", ftypes.UINT8)
omi_finra_finraorf_tdds_dfi_v2_0.fields.closing_price = ProtoField.new("Closing Price", "finra.finraorf.tdds.dfi.v2.0.closingprice", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.closing_price_denominator = ProtoField.new("Closing Price Denominator", "finra.finraorf.tdds.dfi.v2.0.closingpricedenominator", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.closing_price_market_center = ProtoField.new("Closing Price Market Center", "finra.finraorf.tdds.dfi.v2.0.closingpricemarketcenter", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.control = ProtoField.new("Control", "finra.finraorf.tdds.dfi.v2.0.control", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.control_message_type = ProtoField.new("Control Message Type", "finra.finraorf.tdds.dfi.v2.0.controlmessagetype", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.corrected_trade_information = ProtoField.new("Corrected Trade Information", "finra.finraorf.tdds.dfi.v2.0.correctedtradeinformation", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.currency = ProtoField.new("Currency", "finra.finraorf.tdds.dfi.v2.0.currency", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.daily_high_price = ProtoField.new("Daily High Price", "finra.finraorf.tdds.dfi.v2.0.dailyhighprice", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.daily_high_price_denominator = ProtoField.new("Daily High Price Denominator", "finra.finraorf.tdds.dfi.v2.0.dailyhighpricedenominator", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.daily_low_price = ProtoField.new("Daily Low Price", "finra.finraorf.tdds.dfi.v2.0.dailylowprice", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.daily_low_price_denominator = ProtoField.new("Daily Low Price Denominator", "finra.finraorf.tdds.dfi.v2.0.dailylowpricedenominator", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.datetime = ProtoField.new("Datetime", "finra.finraorf.tdds.dfi.v2.0.datetime", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.day = ProtoField.new("Day", "finra.finraorf.tdds.dfi.v2.0.day", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.execution_datetime = ProtoField.new("Execution Datetime", "finra.finraorf.tdds.dfi.v2.0.executiondatetime", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.high_price = ProtoField.new("High Price", "finra.finraorf.tdds.dfi.v2.0.highprice", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.high_price_denominator = ProtoField.new("High Price Denominator", "finra.finraorf.tdds.dfi.v2.0.highpricedenominator", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.hour = ProtoField.new("Hour", "finra.finraorf.tdds.dfi.v2.0.hour", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.last_sale_price = ProtoField.new("Last Sale Price", "finra.finraorf.tdds.dfi.v2.0.lastsaleprice", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.last_sale_price_denominator = ProtoField.new("Last Sale Price Denominator", "finra.finraorf.tdds.dfi.v2.0.lastsalepricedenominator", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.last_sale_price_market_center = ProtoField.new("Last Sale Price Market Center", "finra.finraorf.tdds.dfi.v2.0.lastsalepricemarketcenter", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.low_price = ProtoField.new("Low Price", "finra.finraorf.tdds.dfi.v2.0.lowprice", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.low_price_denominator = ProtoField.new("Low Price Denominator", "finra.finraorf.tdds.dfi.v2.0.lowpricedenominator", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.market_center_originator_id = ProtoField.new("Market Center Originator Id", "finra.finraorf.tdds.dfi.v2.0.marketcenteroriginatorid", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.message = ProtoField.new("Message", "finra.finraorf.tdds.dfi.v2.0.message", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.message_category = ProtoField.new("Message Category", "finra.finraorf.tdds.dfi.v2.0.messagecategory", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.message_header = ProtoField.new("Message Header", "finra.finraorf.tdds.dfi.v2.0.messageheader", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.message_separator = ProtoField.new("Message Separator", "finra.finraorf.tdds.dfi.v2.0.messageseparator", ftypes.UINT8)
omi_finra_finraorf_tdds_dfi_v2_0.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "finra.finraorf.tdds.dfi.v2.0.messagesequencenumber", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.millisecond = ProtoField.new("Millisecond", "finra.finraorf.tdds.dfi.v2.0.millisecond", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.minute = ProtoField.new("Minute", "finra.finraorf.tdds.dfi.v2.0.minute", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.month = ProtoField.new("Month", "finra.finraorf.tdds.dfi.v2.0.month", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.net_change_amount = ProtoField.new("Net Change Amount", "finra.finraorf.tdds.dfi.v2.0.netchangeamount", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.net_change_denominator = ProtoField.new("Net Change Denominator", "finra.finraorf.tdds.dfi.v2.0.netchangedenominator", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.net_change_direction = ProtoField.new("Net Change Direction", "finra.finraorf.tdds.dfi.v2.0.netchangedirection", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.original_dissemination_date = ProtoField.new("Original Dissemination Date", "finra.finraorf.tdds.dfi.v2.0.originaldisseminationdate", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.original_message_sequence_number = ProtoField.new("Original Message Sequence Number", "finra.finraorf.tdds.dfi.v2.0.originalmessagesequencenumber", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.original_trade_information = ProtoField.new("Original Trade Information", "finra.finraorf.tdds.dfi.v2.0.originaltradeinformation", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.packet = ProtoField.new("Packet", "finra.finraorf.tdds.dfi.v2.0.packet", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.price_change_indicator = ProtoField.new("Price Change Indicator", "finra.finraorf.tdds.dfi.v2.0.pricechangeindicator", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.reason_code = ProtoField.new("Reason Code", "finra.finraorf.tdds.dfi.v2.0.reasoncode", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.report_function = ProtoField.new("Report Function", "finra.finraorf.tdds.dfi.v2.0.reportfunction", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.report_volume = ProtoField.new("Report Volume", "finra.finraorf.tdds.dfi.v2.0.reportvolume", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.report_volume_short = ProtoField.new("Report Volume Short", "finra.finraorf.tdds.dfi.v2.0.reportvolumeshort", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.reserved = ProtoField.new("Reserved", "finra.finraorf.tdds.dfi.v2.0.reserved", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.retransmission_requester = ProtoField.new("Retransmission Requester", "finra.finraorf.tdds.dfi.v2.0.retransmissionrequester", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.sale_condition_level_1 = ProtoField.new("Sale Condition Level 1", "finra.finraorf.tdds.dfi.v2.0.saleconditionlevel1", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.sale_condition_level_2 = ProtoField.new("Sale Condition Level 2", "finra.finraorf.tdds.dfi.v2.0.saleconditionlevel2", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.sale_condition_level_3 = ProtoField.new("Sale Condition Level 3", "finra.finraorf.tdds.dfi.v2.0.saleconditionlevel3", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.sale_condition_level_4 = ProtoField.new("Sale Condition Level 4", "finra.finraorf.tdds.dfi.v2.0.saleconditionlevel4", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.second = ProtoField.new("Second", "finra.finraorf.tdds.dfi.v2.0.second", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.security_symbol = ProtoField.new("Security Symbol", "finra.finraorf.tdds.dfi.v2.0.securitysymbol", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.security_symbol_short = ProtoField.new("Security Symbol Short", "finra.finraorf.tdds.dfi.v2.0.securitysymbolshort", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.sellers_sale_days = ProtoField.new("Sellers Sale Days", "finra.finraorf.tdds.dfi.v2.0.sellerssaledays", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.session_identifier = ProtoField.new("Session Identifier", "finra.finraorf.tdds.dfi.v2.0.sessionidentifier", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.text = ProtoField.new("Text", "finra.finraorf.tdds.dfi.v2.0.text", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.total_security_volume = ProtoField.new("Total Security Volume", "finra.finraorf.tdds.dfi.v2.0.totalsecurityvolume", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.trade = ProtoField.new("Trade", "finra.finraorf.tdds.dfi.v2.0.trade", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_information = ProtoField.new("Trade Information", "finra.finraorf.tdds.dfi.v2.0.tradeinformation", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_message_type = ProtoField.new("Trade Message Type", "finra.finraorf.tdds.dfi.v2.0.trademessagetype", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_price = ProtoField.new("Trade Price", "finra.finraorf.tdds.dfi.v2.0.tradeprice", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_price_denominator = ProtoField.new("Trade Price Denominator", "finra.finraorf.tdds.dfi.v2.0.tradepricedenominator", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_price_short = ProtoField.new("Trade Price Short", "finra.finraorf.tdds.dfi.v2.0.tradepriceshort", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_summary_information = ProtoField.new("Trade Summary Information", "finra.finraorf.tdds.dfi.v2.0.tradesummaryinformation", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.year = ProtoField.new("Year", "finra.finraorf.tdds.dfi.v2.0.year", ftypes.STRING)

-- Finra FinraOrf Dfi Tdds 2.0 Application Messages
omi_finra_finraorf_tdds_dfi_v2_0.fields.closing_trade_summary_report_message = ProtoField.new("Closing Trade Summary Report Message", "finra.finraorf.tdds.dfi.v2.0.closingtradesummaryreportmessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.end_of_day_message = ProtoField.new("End Of Day Message", "finra.finraorf.tdds.dfi.v2.0.endofdaymessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.end_of_retransmission_requests_message = ProtoField.new("End Of Retransmission Requests Message", "finra.finraorf.tdds.dfi.v2.0.endofretransmissionrequestsmessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.end_of_trade_reporting_message = ProtoField.new("End Of Trade Reporting Message", "finra.finraorf.tdds.dfi.v2.0.endoftradereportingmessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.end_of_transmissions_message = ProtoField.new("End Of Transmissions Message", "finra.finraorf.tdds.dfi.v2.0.endoftransmissionsmessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.general_administrative_message = ProtoField.new("General Administrative Message", "finra.finraorf.tdds.dfi.v2.0.generaladministrativemessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "finra.finraorf.tdds.dfi.v2.0.lineintegritymessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.market_session_close_message = ProtoField.new("Market Session Close Message", "finra.finraorf.tdds.dfi.v2.0.marketsessionclosemessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.market_session_open_message = ProtoField.new("Market Session Open Message", "finra.finraorf.tdds.dfi.v2.0.marketsessionopenmessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.market_wide_circuit_breaker_event_message = ProtoField.new("Market Wide Circuit Breaker Event Message", "finra.finraorf.tdds.dfi.v2.0.marketwidecircuitbreakereventmessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "finra.finraorf.tdds.dfi.v2.0.sequencenumberresetmessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "finra.finraorf.tdds.dfi.v2.0.startofdaymessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "finra.finraorf.tdds.dfi.v2.0.tradecancelerrormessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "finra.finraorf.tdds.dfi.v2.0.tradecorrectionmessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_report_long_form_message = ProtoField.new("Trade Report Long Form Message", "finra.finraorf.tdds.dfi.v2.0.tradereportlongformmessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_report_short_form_message = ProtoField.new("Trade Report Short Form Message", "finra.finraorf.tdds.dfi.v2.0.tradereportshortformmessage", ftypes.STRING)
omi_finra_finraorf_tdds_dfi_v2_0.fields.trading_action_message = ProtoField.new("Trading Action Message", "finra.finraorf.tdds.dfi.v2.0.tradingactionmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Finra FinraOrf Tdds Dfi 2.0 Element Dissection Options
show.action_datetime = true
show.administrative = true
show.application_messages = true
show.control = true
show.corrected_trade_information = true
show.datetime = true
show.execution_datetime = true
show.message = true
show.message_header = true
show.original_dissemination_date = true
show.original_trade_information = true
show.packet = true
show.trade = true
show.trade_information = true
show.trade_summary_information = true

-- Register Finra FinraOrf Tdds Dfi 2.0 Show Options
omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_action_datetime = Pref.bool("Show Action Datetime", show.action_datetime, "Parse and add Action Datetime to protocol tree")
omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_administrative = Pref.bool("Show Administrative", show.administrative, "Parse and add Administrative to protocol tree")
omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_control = Pref.bool("Show Control", show.control, "Parse and add Control to protocol tree")
omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_corrected_trade_information = Pref.bool("Show Corrected Trade Information", show.corrected_trade_information, "Parse and add Corrected Trade Information to protocol tree")
omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_datetime = Pref.bool("Show Datetime", show.datetime, "Parse and add Datetime to protocol tree")
omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_execution_datetime = Pref.bool("Show Execution Datetime", show.execution_datetime, "Parse and add Execution Datetime to protocol tree")
omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_original_dissemination_date = Pref.bool("Show Original Dissemination Date", show.original_dissemination_date, "Parse and add Original Dissemination Date to protocol tree")
omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_original_trade_information = Pref.bool("Show Original Trade Information", show.original_trade_information, "Parse and add Original Trade Information to protocol tree")
omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_trade = Pref.bool("Show Trade", show.trade, "Parse and add Trade to protocol tree")
omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_trade_information = Pref.bool("Show Trade Information", show.trade_information, "Parse and add Trade Information to protocol tree")
omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_trade_summary_information = Pref.bool("Show Trade Summary Information", show.trade_summary_information, "Parse and add Trade Summary Information to protocol tree")

-- Handle changed preferences
function omi_finra_finraorf_tdds_dfi_v2_0.prefs_changed()

  -- Check if show options have changed
  if show.action_datetime ~= omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_action_datetime then
    show.action_datetime = omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_action_datetime
  end
  if show.administrative ~= omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_administrative then
    show.administrative = omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_administrative
  end
  if show.application_messages ~= omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_application_messages then
    show.application_messages = omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_application_messages
  end
  if show.control ~= omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_control then
    show.control = omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_control
  end
  if show.corrected_trade_information ~= omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_corrected_trade_information then
    show.corrected_trade_information = omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_corrected_trade_information
  end
  if show.datetime ~= omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_datetime then
    show.datetime = omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_datetime
  end
  if show.execution_datetime ~= omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_execution_datetime then
    show.execution_datetime = omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_execution_datetime
  end
  if show.message ~= omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_message then
    show.message = omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_message
  end
  if show.message_header ~= omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_message_header then
    show.message_header = omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_message_header
  end
  if show.original_dissemination_date ~= omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_original_dissemination_date then
    show.original_dissemination_date = omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_original_dissemination_date
  end
  if show.original_trade_information ~= omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_original_trade_information then
    show.original_trade_information = omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_original_trade_information
  end
  if show.packet ~= omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_packet then
    show.packet = omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_packet
  end
  if show.trade ~= omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_trade then
    show.trade = omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_trade
  end
  if show.trade_information ~= omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_trade_information then
    show.trade_information = omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_trade_information
  end
  if show.trade_summary_information ~= omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_trade_summary_information then
    show.trade_summary_information = omi_finra_finraorf_tdds_dfi_v2_0.prefs.show_trade_summary_information
  end
end


-----------------------------------------------------------------------
-- Finra FinraOrf Tdds Dfi 2.0 Fields
-----------------------------------------------------------------------

-- Action
finra_finraorf_tdds_dfi_v2_0.action = {}

-- Size: Action
finra_finraorf_tdds_dfi_v2_0.action.size = 1

-- Display: Action
finra_finraorf_tdds_dfi_v2_0.action.display = function(value)
  if value == "H" then
    return "Action: Trading Halt (H)"
  end
  if value == "Q" then
    return "Action: Quotation Resumption (Q)"
  end
  if value == "T" then
    return "Action: Trading Resumption (T)"
  end
  if value == "X" then
    return "Action: Quotation And Trading Resumption (X)"
  end

  return "Action: Unknown("..value..")"
end

-- Dissect: Action
finra_finraorf_tdds_dfi_v2_0.action.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.action, range, value, display)

  return offset + length, value
end

-- Administrative Message Type
finra_finraorf_tdds_dfi_v2_0.administrative_message_type = {}

-- Size: Administrative Message Type
finra_finraorf_tdds_dfi_v2_0.administrative_message_type.size = 1

-- Display: Administrative Message Type
finra_finraorf_tdds_dfi_v2_0.administrative_message_type.display = function(value)
  if value == "A" then
    return "Administrative Message Type: General Administrative Message (A)"
  end
  if value == "2" then
    return "Administrative Message Type: Closing Trade Summary Report Message (2)"
  end
  if value == "H" then
    return "Administrative Message Type: Trading Action Message (H)"
  end
  if value == "M" then
    return "Administrative Message Type: Market Wide Circuit Breaker Event Message (M)"
  end

  return "Administrative Message Type: Unknown("..value..")"
end

-- Dissect: Administrative Message Type
finra_finraorf_tdds_dfi_v2_0.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- As Of Indicator
finra_finraorf_tdds_dfi_v2_0.as_of_indicator = {}

-- Size: As Of Indicator
finra_finraorf_tdds_dfi_v2_0.as_of_indicator.size = 1

-- Display: As Of Indicator
finra_finraorf_tdds_dfi_v2_0.as_of_indicator.display = function(value)
  if value == "A" then
    return "As Of Indicator: As Of (A)"
  end
  if value == "R" then
    return "As Of Indicator: Reversal (R)"
  end
  if value == " " then
    return "As Of Indicator: Current Day Transaction (<whitespace>)"
  end

  return "As Of Indicator: Unknown("..value..")"
end

-- Dissect: As Of Indicator
finra_finraorf_tdds_dfi_v2_0.as_of_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.as_of_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.as_of_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.as_of_indicator, range, value, display)

  return offset + length, value
end

-- Block Soh
finra_finraorf_tdds_dfi_v2_0.block_soh = {}

-- Size: Block Soh
finra_finraorf_tdds_dfi_v2_0.block_soh.size = 1

-- Display: Block Soh
finra_finraorf_tdds_dfi_v2_0.block_soh.display = function(value)
  return "Block Soh: "..value
end

-- Dissect: Block Soh
finra_finraorf_tdds_dfi_v2_0.block_soh.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.block_soh.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = finra_finraorf_tdds_dfi_v2_0.block_soh.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.block_soh, range, value, display)

  return offset + length, value
end

-- Closing Price
finra_finraorf_tdds_dfi_v2_0.closing_price = {}

-- Size: Closing Price
finra_finraorf_tdds_dfi_v2_0.closing_price.size = 12

-- Display: Closing Price
finra_finraorf_tdds_dfi_v2_0.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
finra_finraorf_tdds_dfi_v2_0.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Closing Price Denominator
finra_finraorf_tdds_dfi_v2_0.closing_price_denominator = {}

-- Size: Closing Price Denominator
finra_finraorf_tdds_dfi_v2_0.closing_price_denominator.size = 1

-- Display: Closing Price Denominator
finra_finraorf_tdds_dfi_v2_0.closing_price_denominator.display = function(value)
  return "Closing Price Denominator: "..value
end

-- Dissect: Closing Price Denominator
finra_finraorf_tdds_dfi_v2_0.closing_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.closing_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.closing_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.closing_price_denominator, range, value, display)

  return offset + length, value
end

-- Closing Price Market Center
finra_finraorf_tdds_dfi_v2_0.closing_price_market_center = {}

-- Size: Closing Price Market Center
finra_finraorf_tdds_dfi_v2_0.closing_price_market_center.size = 1

-- Display: Closing Price Market Center
finra_finraorf_tdds_dfi_v2_0.closing_price_market_center.display = function(value)
  if value == "U" then
    return "Closing Price Market Center: Otcbb (U)"
  end
  if value == "u" then
    return "Closing Price Market Center: Ootc (u)"
  end
  if value == " " then
    return "Closing Price Market Center: Not Applicable (<whitespace>)"
  end

  return "Closing Price Market Center: Unknown("..value..")"
end

-- Dissect: Closing Price Market Center
finra_finraorf_tdds_dfi_v2_0.closing_price_market_center.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.closing_price_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.closing_price_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.closing_price_market_center, range, value, display)

  return offset + length, value
end

-- Control Message Type
finra_finraorf_tdds_dfi_v2_0.control_message_type = {}

-- Size: Control Message Type
finra_finraorf_tdds_dfi_v2_0.control_message_type.size = 1

-- Display: Control Message Type
finra_finraorf_tdds_dfi_v2_0.control_message_type.display = function(value)
  if value == "I" then
    return "Control Message Type: Start Of Day Message (I)"
  end
  if value == "J" then
    return "Control Message Type: End Of Day Message (J)"
  end
  if value == "O" then
    return "Control Message Type: Market Session Open Message (O)"
  end
  if value == "O" then
    return "Control Message Type: Market Session Close Message (O)"
  end
  if value == "K" then
    return "Control Message Type: End Of Retransmission Requests Message (K)"
  end
  if value == "Z" then
    return "Control Message Type: End Of Transmissions Message (Z)"
  end
  if value == "T" then
    return "Control Message Type: Line Integrity Message (T)"
  end
  if value == "L" then
    return "Control Message Type: Sequence Number Reset Message (L)"
  end
  if value == "X" then
    return "Control Message Type: End Of Trade Reporting Message (X)"
  end

  return "Control Message Type: Unknown("..value..")"
end

-- Dissect: Control Message Type
finra_finraorf_tdds_dfi_v2_0.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Currency
finra_finraorf_tdds_dfi_v2_0.currency = {}

-- Size: Currency
finra_finraorf_tdds_dfi_v2_0.currency.size = 3

-- Display: Currency
finra_finraorf_tdds_dfi_v2_0.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
finra_finraorf_tdds_dfi_v2_0.currency.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.currency, range, value, display)

  return offset + length, value
end

-- Daily High Price
finra_finraorf_tdds_dfi_v2_0.daily_high_price = {}

-- Size: Daily High Price
finra_finraorf_tdds_dfi_v2_0.daily_high_price.size = 12

-- Display: Daily High Price
finra_finraorf_tdds_dfi_v2_0.daily_high_price.display = function(value)
  return "Daily High Price: "..value
end

-- Dissect: Daily High Price
finra_finraorf_tdds_dfi_v2_0.daily_high_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.daily_high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.daily_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.daily_high_price, range, value, display)

  return offset + length, value
end

-- Daily High Price Denominator
finra_finraorf_tdds_dfi_v2_0.daily_high_price_denominator = {}

-- Size: Daily High Price Denominator
finra_finraorf_tdds_dfi_v2_0.daily_high_price_denominator.size = 1

-- Display: Daily High Price Denominator
finra_finraorf_tdds_dfi_v2_0.daily_high_price_denominator.display = function(value)
  return "Daily High Price Denominator: "..value
end

-- Dissect: Daily High Price Denominator
finra_finraorf_tdds_dfi_v2_0.daily_high_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.daily_high_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.daily_high_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.daily_high_price_denominator, range, value, display)

  return offset + length, value
end

-- Daily Low Price
finra_finraorf_tdds_dfi_v2_0.daily_low_price = {}

-- Size: Daily Low Price
finra_finraorf_tdds_dfi_v2_0.daily_low_price.size = 12

-- Display: Daily Low Price
finra_finraorf_tdds_dfi_v2_0.daily_low_price.display = function(value)
  return "Daily Low Price: "..value
end

-- Dissect: Daily Low Price
finra_finraorf_tdds_dfi_v2_0.daily_low_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.daily_low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.daily_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.daily_low_price, range, value, display)

  return offset + length, value
end

-- Daily Low Price Denominator
finra_finraorf_tdds_dfi_v2_0.daily_low_price_denominator = {}

-- Size: Daily Low Price Denominator
finra_finraorf_tdds_dfi_v2_0.daily_low_price_denominator.size = 1

-- Display: Daily Low Price Denominator
finra_finraorf_tdds_dfi_v2_0.daily_low_price_denominator.display = function(value)
  return "Daily Low Price Denominator: "..value
end

-- Dissect: Daily Low Price Denominator
finra_finraorf_tdds_dfi_v2_0.daily_low_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.daily_low_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.daily_low_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.daily_low_price_denominator, range, value, display)

  return offset + length, value
end

-- Day
finra_finraorf_tdds_dfi_v2_0.day = {}

-- Size: Day
finra_finraorf_tdds_dfi_v2_0.day.size = 2

-- Display: Day
finra_finraorf_tdds_dfi_v2_0.day.display = function(value)
  return "Day: "..value
end

-- Dissect: Day
finra_finraorf_tdds_dfi_v2_0.day.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.day, range, value, display)

  return offset + length, value
end

-- High Price
finra_finraorf_tdds_dfi_v2_0.high_price = {}

-- Size: High Price
finra_finraorf_tdds_dfi_v2_0.high_price.size = 12

-- Display: High Price
finra_finraorf_tdds_dfi_v2_0.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
finra_finraorf_tdds_dfi_v2_0.high_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.high_price, range, value, display)

  return offset + length, value
end

-- High Price Denominator
finra_finraorf_tdds_dfi_v2_0.high_price_denominator = {}

-- Size: High Price Denominator
finra_finraorf_tdds_dfi_v2_0.high_price_denominator.size = 1

-- Display: High Price Denominator
finra_finraorf_tdds_dfi_v2_0.high_price_denominator.display = function(value)
  return "High Price Denominator: "..value
end

-- Dissect: High Price Denominator
finra_finraorf_tdds_dfi_v2_0.high_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.high_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.high_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.high_price_denominator, range, value, display)

  return offset + length, value
end

-- Hour
finra_finraorf_tdds_dfi_v2_0.hour = {}

-- Size: Hour
finra_finraorf_tdds_dfi_v2_0.hour.size = 2

-- Display: Hour
finra_finraorf_tdds_dfi_v2_0.hour.display = function(value)
  return "Hour: "..value
end

-- Dissect: Hour
finra_finraorf_tdds_dfi_v2_0.hour.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.hour.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.hour.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.hour, range, value, display)

  return offset + length, value
end

-- Last Sale Price
finra_finraorf_tdds_dfi_v2_0.last_sale_price = {}

-- Size: Last Sale Price
finra_finraorf_tdds_dfi_v2_0.last_sale_price.size = 12

-- Display: Last Sale Price
finra_finraorf_tdds_dfi_v2_0.last_sale_price.display = function(value)
  return "Last Sale Price: "..value
end

-- Dissect: Last Sale Price
finra_finraorf_tdds_dfi_v2_0.last_sale_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.last_sale_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.last_sale_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.last_sale_price, range, value, display)

  return offset + length, value
end

-- Last Sale Price Denominator
finra_finraorf_tdds_dfi_v2_0.last_sale_price_denominator = {}

-- Size: Last Sale Price Denominator
finra_finraorf_tdds_dfi_v2_0.last_sale_price_denominator.size = 1

-- Display: Last Sale Price Denominator
finra_finraorf_tdds_dfi_v2_0.last_sale_price_denominator.display = function(value)
  return "Last Sale Price Denominator: "..value
end

-- Dissect: Last Sale Price Denominator
finra_finraorf_tdds_dfi_v2_0.last_sale_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.last_sale_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.last_sale_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.last_sale_price_denominator, range, value, display)

  return offset + length, value
end

-- Last Sale Price Market Center
finra_finraorf_tdds_dfi_v2_0.last_sale_price_market_center = {}

-- Size: Last Sale Price Market Center
finra_finraorf_tdds_dfi_v2_0.last_sale_price_market_center.size = 1

-- Display: Last Sale Price Market Center
finra_finraorf_tdds_dfi_v2_0.last_sale_price_market_center.display = function(value)
  if value == "U" then
    return "Last Sale Price Market Center: Otcbb (U)"
  end
  if value == "u" then
    return "Last Sale Price Market Center: Ootc (u)"
  end
  if value == " " then
    return "Last Sale Price Market Center: Not Applicable (<whitespace>)"
  end

  return "Last Sale Price Market Center: Unknown("..value..")"
end

-- Dissect: Last Sale Price Market Center
finra_finraorf_tdds_dfi_v2_0.last_sale_price_market_center.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.last_sale_price_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.last_sale_price_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.last_sale_price_market_center, range, value, display)

  return offset + length, value
end

-- Low Price
finra_finraorf_tdds_dfi_v2_0.low_price = {}

-- Size: Low Price
finra_finraorf_tdds_dfi_v2_0.low_price.size = 12

-- Display: Low Price
finra_finraorf_tdds_dfi_v2_0.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
finra_finraorf_tdds_dfi_v2_0.low_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.low_price, range, value, display)

  return offset + length, value
end

-- Low Price Denominator
finra_finraorf_tdds_dfi_v2_0.low_price_denominator = {}

-- Size: Low Price Denominator
finra_finraorf_tdds_dfi_v2_0.low_price_denominator.size = 1

-- Display: Low Price Denominator
finra_finraorf_tdds_dfi_v2_0.low_price_denominator.display = function(value)
  return "Low Price Denominator: "..value
end

-- Dissect: Low Price Denominator
finra_finraorf_tdds_dfi_v2_0.low_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.low_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.low_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.low_price_denominator, range, value, display)

  return offset + length, value
end

-- Market Center Originator Id
finra_finraorf_tdds_dfi_v2_0.market_center_originator_id = {}

-- Size: Market Center Originator Id
finra_finraorf_tdds_dfi_v2_0.market_center_originator_id.size = 2

-- Display: Market Center Originator Id
finra_finraorf_tdds_dfi_v2_0.market_center_originator_id.display = function(value)
  if value == "E" then
    return "Market Center Originator Id: Market Center Independent (E)"
  end
  if value == "U" then
    return "Market Center Originator Id: Otc Bulletin Board (U)"
  end
  if value == "u" then
    return "Market Center Originator Id: Other Otc Security (u)"
  end
  if value == "F" then
    return "Market Center Originator Id: Otcbb And Ootc (F)"
  end

  return "Market Center Originator Id: Unknown("..value..")"
end

-- Dissect: Market Center Originator Id
finra_finraorf_tdds_dfi_v2_0.market_center_originator_id.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.market_center_originator_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.market_center_originator_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.market_center_originator_id, range, value, display)

  return offset + length, value
end

-- Message Category
finra_finraorf_tdds_dfi_v2_0.message_category = {}

-- Size: Message Category
finra_finraorf_tdds_dfi_v2_0.message_category.size = 1

-- Display: Message Category
finra_finraorf_tdds_dfi_v2_0.message_category.display = function(value)
  if value == "T" then
    return "Message Category: Trade (T)"
  end
  if value == "A" then
    return "Message Category: Administrative (A)"
  end
  if value == "C" then
    return "Message Category: Control (C)"
  end

  return "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
finra_finraorf_tdds_dfi_v2_0.message_category.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Separator
finra_finraorf_tdds_dfi_v2_0.message_separator = {}

-- Size: Message Separator
finra_finraorf_tdds_dfi_v2_0.message_separator.size = 1

-- Display: Message Separator
finra_finraorf_tdds_dfi_v2_0.message_separator.display = function(value)
  return "Message Separator: "..value
end

-- Dissect: Message Separator
finra_finraorf_tdds_dfi_v2_0.message_separator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.message_separator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = finra_finraorf_tdds_dfi_v2_0.message_separator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.message_separator, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
finra_finraorf_tdds_dfi_v2_0.message_sequence_number = {}

-- Size: Message Sequence Number
finra_finraorf_tdds_dfi_v2_0.message_sequence_number.size = 8

-- Display: Message Sequence Number
finra_finraorf_tdds_dfi_v2_0.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
finra_finraorf_tdds_dfi_v2_0.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.message_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Millisecond
finra_finraorf_tdds_dfi_v2_0.millisecond = {}

-- Size: Millisecond
finra_finraorf_tdds_dfi_v2_0.millisecond.size = 3

-- Display: Millisecond
finra_finraorf_tdds_dfi_v2_0.millisecond.display = function(value)
  return "Millisecond: "..value
end

-- Dissect: Millisecond
finra_finraorf_tdds_dfi_v2_0.millisecond.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.millisecond.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.millisecond.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.millisecond, range, value, display)

  return offset + length, value
end

-- Minute
finra_finraorf_tdds_dfi_v2_0.minute = {}

-- Size: Minute
finra_finraorf_tdds_dfi_v2_0.minute.size = 2

-- Display: Minute
finra_finraorf_tdds_dfi_v2_0.minute.display = function(value)
  return "Minute: "..value
end

-- Dissect: Minute
finra_finraorf_tdds_dfi_v2_0.minute.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.minute.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.minute.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.minute, range, value, display)

  return offset + length, value
end

-- Month
finra_finraorf_tdds_dfi_v2_0.month = {}

-- Size: Month
finra_finraorf_tdds_dfi_v2_0.month.size = 2

-- Display: Month
finra_finraorf_tdds_dfi_v2_0.month.display = function(value)
  return "Month: "..value
end

-- Dissect: Month
finra_finraorf_tdds_dfi_v2_0.month.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.month.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.month, range, value, display)

  return offset + length, value
end

-- Net Change Amount
finra_finraorf_tdds_dfi_v2_0.net_change_amount = {}

-- Size: Net Change Amount
finra_finraorf_tdds_dfi_v2_0.net_change_amount.size = 12

-- Display: Net Change Amount
finra_finraorf_tdds_dfi_v2_0.net_change_amount.display = function(value)
  return "Net Change Amount: "..value
end

-- Dissect: Net Change Amount
finra_finraorf_tdds_dfi_v2_0.net_change_amount.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.net_change_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.net_change_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.net_change_amount, range, value, display)

  return offset + length, value
end

-- Net Change Denominator
finra_finraorf_tdds_dfi_v2_0.net_change_denominator = {}

-- Size: Net Change Denominator
finra_finraorf_tdds_dfi_v2_0.net_change_denominator.size = 1

-- Display: Net Change Denominator
finra_finraorf_tdds_dfi_v2_0.net_change_denominator.display = function(value)
  return "Net Change Denominator: "..value
end

-- Dissect: Net Change Denominator
finra_finraorf_tdds_dfi_v2_0.net_change_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.net_change_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.net_change_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.net_change_denominator, range, value, display)

  return offset + length, value
end

-- Net Change Direction
finra_finraorf_tdds_dfi_v2_0.net_change_direction = {}

-- Size: Net Change Direction
finra_finraorf_tdds_dfi_v2_0.net_change_direction.size = 1

-- Display: Net Change Direction
finra_finraorf_tdds_dfi_v2_0.net_change_direction.display = function(value)
  if value == "+" then
    return "Net Change Direction: Positive Or Zero Net Change (+)"
  end
  if value == "-" then
    return "Net Change Direction: Negative Net Change (-)"
  end
  if value == " " then
    return "Net Change Direction: No Trade Or Unaffected (<whitespace>)"
  end

  return "Net Change Direction: Unknown("..value..")"
end

-- Dissect: Net Change Direction
finra_finraorf_tdds_dfi_v2_0.net_change_direction.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.net_change_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.net_change_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.net_change_direction, range, value, display)

  return offset + length, value
end

-- Original Message Sequence Number
finra_finraorf_tdds_dfi_v2_0.original_message_sequence_number = {}

-- Size: Original Message Sequence Number
finra_finraorf_tdds_dfi_v2_0.original_message_sequence_number.size = 8

-- Display: Original Message Sequence Number
finra_finraorf_tdds_dfi_v2_0.original_message_sequence_number.display = function(value)
  return "Original Message Sequence Number: "..value
end

-- Dissect: Original Message Sequence Number
finra_finraorf_tdds_dfi_v2_0.original_message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.original_message_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.original_message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.original_message_sequence_number, range, value, display)

  return offset + length, value
end

-- Price Change Indicator
finra_finraorf_tdds_dfi_v2_0.price_change_indicator = {}

-- Size: Price Change Indicator
finra_finraorf_tdds_dfi_v2_0.price_change_indicator.size = 1

-- Display: Price Change Indicator
finra_finraorf_tdds_dfi_v2_0.price_change_indicator.display = function(value)
  if value == "0" then
    return "Price Change Indicator: No Price Change (0)"
  end
  if value == "1" then
    return "Price Change Indicator: Last Price Changed (1)"
  end
  if value == "2" then
    return "Price Change Indicator: Low Price Changed (2)"
  end
  if value == "3" then
    return "Price Change Indicator: Last And Low Prices Changed (3)"
  end
  if value == "4" then
    return "Price Change Indicator: High Price Changed (4)"
  end
  if value == "5" then
    return "Price Change Indicator: Last And High Prices Changed (5)"
  end
  if value == "6" then
    return "Price Change Indicator: High And Low Prices Changed (6)"
  end
  if value == "7" then
    return "Price Change Indicator: All Prices Changed (7)"
  end

  return "Price Change Indicator: Unknown("..value..")"
end

-- Dissect: Price Change Indicator
finra_finraorf_tdds_dfi_v2_0.price_change_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.price_change_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.price_change_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.price_change_indicator, range, value, display)

  return offset + length, value
end

-- Reason Code
finra_finraorf_tdds_dfi_v2_0.reason_code = {}

-- Size: Reason Code
finra_finraorf_tdds_dfi_v2_0.reason_code.size = 6

-- Display: Reason Code
finra_finraorf_tdds_dfi_v2_0.reason_code.display = function(value)
  return "Reason Code: "..value
end

-- Dissect: Reason Code
finra_finraorf_tdds_dfi_v2_0.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Report Function
finra_finraorf_tdds_dfi_v2_0.report_function = {}

-- Size: Report Function
finra_finraorf_tdds_dfi_v2_0.report_function.size = 1

-- Display: Report Function
finra_finraorf_tdds_dfi_v2_0.report_function.display = function(value)
  if value == "C" then
    return "Report Function: Cancel (C)"
  end
  if value == "E" then
    return "Report Function: Error (E)"
  end
  if value == "N" then
    return "Report Function: Correction (N)"
  end

  return "Report Function: Unknown("..value..")"
end

-- Dissect: Report Function
finra_finraorf_tdds_dfi_v2_0.report_function.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.report_function.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.report_function.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.report_function, range, value, display)

  return offset + length, value
end

-- Report Volume
finra_finraorf_tdds_dfi_v2_0.report_volume = {}

-- Size: Report Volume
finra_finraorf_tdds_dfi_v2_0.report_volume.size = 8

-- Display: Report Volume
finra_finraorf_tdds_dfi_v2_0.report_volume.display = function(value)
  return "Report Volume: "..value
end

-- Dissect: Report Volume
finra_finraorf_tdds_dfi_v2_0.report_volume.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.report_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.report_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.report_volume, range, value, display)

  return offset + length, value
end

-- Report Volume Short
finra_finraorf_tdds_dfi_v2_0.report_volume_short = {}

-- Size: Report Volume Short
finra_finraorf_tdds_dfi_v2_0.report_volume_short.size = 6

-- Display: Report Volume Short
finra_finraorf_tdds_dfi_v2_0.report_volume_short.display = function(value)
  return "Report Volume Short: "..value
end

-- Dissect: Report Volume Short
finra_finraorf_tdds_dfi_v2_0.report_volume_short.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.report_volume_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.report_volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.report_volume_short, range, value, display)

  return offset + length, value
end

-- Reserved
finra_finraorf_tdds_dfi_v2_0.reserved = {}

-- Size: Reserved
finra_finraorf_tdds_dfi_v2_0.reserved.size = 1

-- Display: Reserved
finra_finraorf_tdds_dfi_v2_0.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
finra_finraorf_tdds_dfi_v2_0.reserved.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.reserved, range, value, display)

  return offset + length, value
end

-- Retransmission Requester
finra_finraorf_tdds_dfi_v2_0.retransmission_requester = {}

-- Size: Retransmission Requester
finra_finraorf_tdds_dfi_v2_0.retransmission_requester.size = 2

-- Display: Retransmission Requester
finra_finraorf_tdds_dfi_v2_0.retransmission_requester.display = function(value)
  return "Retransmission Requester: "..value
end

-- Dissect: Retransmission Requester
finra_finraorf_tdds_dfi_v2_0.retransmission_requester.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.retransmission_requester.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.retransmission_requester.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.retransmission_requester, range, value, display)

  return offset + length, value
end

-- Sale Condition Level 1
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_1 = {}

-- Size: Sale Condition Level 1
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_1.size = 1

-- Display: Sale Condition Level 1
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_1.display = function(value)
  if value == "@" then
    return "Sale Condition Level 1: Regular Trade (@)"
  end
  if value == "C" then
    return "Sale Condition Level 1: Cash Trade (C)"
  end
  if value == "N" then
    return "Sale Condition Level 1: Next Day (N)"
  end
  if value == "R" then
    return "Sale Condition Level 1: Seller (R)"
  end

  return "Sale Condition Level 1: Unknown("..value..")"
end

-- Dissect: Sale Condition Level 1
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_1.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.sale_condition_level_1, range, value, display)

  return offset + length, value
end

-- Sale Condition Level 2
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_2 = {}

-- Size: Sale Condition Level 2
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_2.size = 1

-- Display: Sale Condition Level 2
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_2.display = function(value)
  return "Sale Condition Level 2: "..value
end

-- Dissect: Sale Condition Level 2
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_2.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.sale_condition_level_2, range, value, display)

  return offset + length, value
end

-- Sale Condition Level 3
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_3 = {}

-- Size: Sale Condition Level 3
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_3.size = 1

-- Display: Sale Condition Level 3
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_3.display = function(value)
  if value == "T" then
    return "Sale Condition Level 3: Executed Outside Normal Market Hours (T)"
  end
  if value == "U" then
    return "Sale Condition Level 3: Executed Outside Normal Market Hours And Trade Reported Late (U)"
  end
  if value == "Z" then
    return "Sale Condition Level 3: Executed During Normal Market Hours And Trade Reported Late (Z)"
  end
  if value == " " then
    return "Sale Condition Level 3: Not Available (<whitespace>)"
  end

  return "Sale Condition Level 3: Unknown("..value..")"
end

-- Dissect: Sale Condition Level 3
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_3.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.sale_condition_level_3, range, value, display)

  return offset + length, value
end

-- Sale Condition Level 4
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_4 = {}

-- Size: Sale Condition Level 4
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_4.size = 1

-- Display: Sale Condition Level 4
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_4.display = function(value)
  if value == "I" then
    return "Sale Condition Level 4: Odd Lot Trade (I)"
  end
  if value == "P" then
    return "Sale Condition Level 4: Prior Reference Price (P)"
  end
  if value == "W" then
    return "Sale Condition Level 4: Average Price Trade (W)"
  end
  if value == " " then
    return "Sale Condition Level 4: Not Available (<whitespace>)"
  end

  return "Sale Condition Level 4: Unknown("..value..")"
end

-- Dissect: Sale Condition Level 4
finra_finraorf_tdds_dfi_v2_0.sale_condition_level_4.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.sale_condition_level_4, range, value, display)

  return offset + length, value
end

-- Second
finra_finraorf_tdds_dfi_v2_0.second = {}

-- Size: Second
finra_finraorf_tdds_dfi_v2_0.second.size = 2

-- Display: Second
finra_finraorf_tdds_dfi_v2_0.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
finra_finraorf_tdds_dfi_v2_0.second.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.second.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.second, range, value, display)

  return offset + length, value
end

-- Security Symbol
finra_finraorf_tdds_dfi_v2_0.security_symbol = {}

-- Size: Security Symbol
finra_finraorf_tdds_dfi_v2_0.security_symbol.size = 14

-- Display: Security Symbol
finra_finraorf_tdds_dfi_v2_0.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
finra_finraorf_tdds_dfi_v2_0.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.security_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Security Symbol Short
finra_finraorf_tdds_dfi_v2_0.security_symbol_short = {}

-- Size: Security Symbol Short
finra_finraorf_tdds_dfi_v2_0.security_symbol_short.size = 5

-- Display: Security Symbol Short
finra_finraorf_tdds_dfi_v2_0.security_symbol_short.display = function(value)
  return "Security Symbol Short: "..value
end

-- Dissect: Security Symbol Short
finra_finraorf_tdds_dfi_v2_0.security_symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.security_symbol_short.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.security_symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.security_symbol_short, range, value, display)

  return offset + length, value
end

-- Sellers Sale Days
finra_finraorf_tdds_dfi_v2_0.sellers_sale_days = {}

-- Size: Sellers Sale Days
finra_finraorf_tdds_dfi_v2_0.sellers_sale_days.size = 2

-- Display: Sellers Sale Days
finra_finraorf_tdds_dfi_v2_0.sellers_sale_days.display = function(value)
  return "Sellers Sale Days: "..value
end

-- Dissect: Sellers Sale Days
finra_finraorf_tdds_dfi_v2_0.sellers_sale_days.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.sellers_sale_days.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.sellers_sale_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Session Identifier
finra_finraorf_tdds_dfi_v2_0.session_identifier = {}

-- Size: Session Identifier
finra_finraorf_tdds_dfi_v2_0.session_identifier.size = 1

-- Display: Session Identifier
finra_finraorf_tdds_dfi_v2_0.session_identifier.display = function(value)
  if value == "A" then
    return "Session Identifier: All Market Sessions Or Session Independent (A)"
  end
  if value == "U" then
    return "Session Identifier: Us Market Session (U)"
  end

  return "Session Identifier: Unknown("..value..")"
end

-- Dissect: Session Identifier
finra_finraorf_tdds_dfi_v2_0.session_identifier.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.session_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.session_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.session_identifier, range, value, display)

  return offset + length, value
end

-- Text
finra_finraorf_tdds_dfi_v2_0.text = {}

-- Size: Text
finra_finraorf_tdds_dfi_v2_0.text.size = 2

-- Display: Text
finra_finraorf_tdds_dfi_v2_0.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
finra_finraorf_tdds_dfi_v2_0.text.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.text, range, value, display)

  return offset + length, value
end

-- Total Security Volume
finra_finraorf_tdds_dfi_v2_0.total_security_volume = {}

-- Size: Total Security Volume
finra_finraorf_tdds_dfi_v2_0.total_security_volume.size = 11

-- Display: Total Security Volume
finra_finraorf_tdds_dfi_v2_0.total_security_volume.display = function(value)
  return "Total Security Volume: "..value
end

-- Dissect: Total Security Volume
finra_finraorf_tdds_dfi_v2_0.total_security_volume.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.total_security_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.total_security_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.total_security_volume, range, value, display)

  return offset + length, value
end

-- Trade Message Type
finra_finraorf_tdds_dfi_v2_0.trade_message_type = {}

-- Size: Trade Message Type
finra_finraorf_tdds_dfi_v2_0.trade_message_type.size = 1

-- Display: Trade Message Type
finra_finraorf_tdds_dfi_v2_0.trade_message_type.display = function(value)
  if value == "5" then
    return "Trade Message Type: Trade Report Short Form Message (5)"
  end
  if value == "6" then
    return "Trade Message Type: Trade Report Long Form Message (6)"
  end
  if value == "7" then
    return "Trade Message Type: Trade Cancel Error Message (7)"
  end
  if value == "8" then
    return "Trade Message Type: Trade Correction Message (8)"
  end

  return "Trade Message Type: Unknown("..value..")"
end

-- Dissect: Trade Message Type
finra_finraorf_tdds_dfi_v2_0.trade_message_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.trade_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.trade_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_message_type, range, value, display)

  return offset + length, value
end

-- Trade Price
finra_finraorf_tdds_dfi_v2_0.trade_price = {}

-- Size: Trade Price
finra_finraorf_tdds_dfi_v2_0.trade_price.size = 12

-- Display: Trade Price
finra_finraorf_tdds_dfi_v2_0.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
finra_finraorf_tdds_dfi_v2_0.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.trade_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Price Denominator
finra_finraorf_tdds_dfi_v2_0.trade_price_denominator = {}

-- Size: Trade Price Denominator
finra_finraorf_tdds_dfi_v2_0.trade_price_denominator.size = 1

-- Display: Trade Price Denominator
finra_finraorf_tdds_dfi_v2_0.trade_price_denominator.display = function(value)
  return "Trade Price Denominator: "..value
end

-- Dissect: Trade Price Denominator
finra_finraorf_tdds_dfi_v2_0.trade_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.trade_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_finraorf_tdds_dfi_v2_0.trade_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_price_denominator, range, value, display)

  return offset + length, value
end

-- Trade Price Short
finra_finraorf_tdds_dfi_v2_0.trade_price_short = {}

-- Size: Trade Price Short
finra_finraorf_tdds_dfi_v2_0.trade_price_short.size = 6

-- Display: Trade Price Short
finra_finraorf_tdds_dfi_v2_0.trade_price_short.display = function(value)
  return "Trade Price Short: "..value
end

-- Dissect: Trade Price Short
finra_finraorf_tdds_dfi_v2_0.trade_price_short.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.trade_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.trade_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_price_short, range, value, display)

  return offset + length, value
end

-- Year
finra_finraorf_tdds_dfi_v2_0.year = {}

-- Size: Year
finra_finraorf_tdds_dfi_v2_0.year.size = 4

-- Display: Year
finra_finraorf_tdds_dfi_v2_0.year.display = function(value)
  return "Year: "..value
end

-- Dissect: Year
finra_finraorf_tdds_dfi_v2_0.year.dissect = function(buffer, offset, packet, parent)
  local length = finra_finraorf_tdds_dfi_v2_0.year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_finraorf_tdds_dfi_v2_0.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.year, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Finra FinraOrf Tdds Dfi 2.0
-----------------------------------------------------------------------

-- Datetime
finra_finraorf_tdds_dfi_v2_0.datetime = {}

-- Size: Datetime
finra_finraorf_tdds_dfi_v2_0.datetime.size =
  finra_finraorf_tdds_dfi_v2_0.year.size + 
  finra_finraorf_tdds_dfi_v2_0.month.size + 
  finra_finraorf_tdds_dfi_v2_0.day.size + 
  finra_finraorf_tdds_dfi_v2_0.hour.size + 
  finra_finraorf_tdds_dfi_v2_0.minute.size + 
  finra_finraorf_tdds_dfi_v2_0.second.size + 
  finra_finraorf_tdds_dfi_v2_0.millisecond.size

-- Display: Datetime
finra_finraorf_tdds_dfi_v2_0.datetime.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Datetime
finra_finraorf_tdds_dfi_v2_0.datetime.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 4 Byte Ascii String
  index, year = finra_finraorf_tdds_dfi_v2_0.year.dissect(buffer, index, packet, parent)

  -- Month: 2 Byte Ascii String
  index, month = finra_finraorf_tdds_dfi_v2_0.month.dissect(buffer, index, packet, parent)

  -- Day: 2 Byte Ascii String
  index, day = finra_finraorf_tdds_dfi_v2_0.day.dissect(buffer, index, packet, parent)

  -- Hour: 2 Byte Ascii String
  index, hour = finra_finraorf_tdds_dfi_v2_0.hour.dissect(buffer, index, packet, parent)

  -- Minute: 2 Byte Ascii String
  index, minute = finra_finraorf_tdds_dfi_v2_0.minute.dissect(buffer, index, packet, parent)

  -- Second: 2 Byte Ascii String
  index, second = finra_finraorf_tdds_dfi_v2_0.second.dissect(buffer, index, packet, parent)

  -- Millisecond: 3 Byte Ascii String
  index, millisecond = finra_finraorf_tdds_dfi_v2_0.millisecond.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Datetime
finra_finraorf_tdds_dfi_v2_0.datetime.dissect = function(buffer, offset, packet, parent)
  if show.datetime then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.datetime, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.datetime.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.datetime.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.datetime.fields(buffer, offset, packet, parent)
  end
end

-- Message Header
finra_finraorf_tdds_dfi_v2_0.message_header = {}

-- Size: Message Header
finra_finraorf_tdds_dfi_v2_0.message_header.size =
  finra_finraorf_tdds_dfi_v2_0.session_identifier.size + 
  finra_finraorf_tdds_dfi_v2_0.retransmission_requester.size + 
  finra_finraorf_tdds_dfi_v2_0.message_sequence_number.size + 
  finra_finraorf_tdds_dfi_v2_0.market_center_originator_id.size + 
  finra_finraorf_tdds_dfi_v2_0.datetime.size

-- Display: Message Header
finra_finraorf_tdds_dfi_v2_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
finra_finraorf_tdds_dfi_v2_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Identifier: 1 Byte Ascii String Enum with 2 values
  index, session_identifier = finra_finraorf_tdds_dfi_v2_0.session_identifier.dissect(buffer, index, packet, parent)

  -- Retransmission Requester: 2 Byte Ascii String
  index, retransmission_requester = finra_finraorf_tdds_dfi_v2_0.retransmission_requester.dissect(buffer, index, packet, parent)

  -- Message Sequence Number: 8 Byte Ascii String
  index, message_sequence_number = finra_finraorf_tdds_dfi_v2_0.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Market Center Originator Id: 2 Byte Ascii String Enum with 4 values
  index, market_center_originator_id = finra_finraorf_tdds_dfi_v2_0.market_center_originator_id.dissect(buffer, index, packet, parent)

  -- Datetime: Struct of 7 fields
  index, datetime = finra_finraorf_tdds_dfi_v2_0.datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
finra_finraorf_tdds_dfi_v2_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.message_header, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- End Of Trade Reporting Message
finra_finraorf_tdds_dfi_v2_0.end_of_trade_reporting_message = {}

-- Size: End Of Trade Reporting Message
finra_finraorf_tdds_dfi_v2_0.end_of_trade_reporting_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size

-- Display: End Of Trade Reporting Message
finra_finraorf_tdds_dfi_v2_0.end_of_trade_reporting_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Trade Reporting Message
finra_finraorf_tdds_dfi_v2_0.end_of_trade_reporting_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Trade Reporting Message
finra_finraorf_tdds_dfi_v2_0.end_of_trade_reporting_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.end_of_trade_reporting_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.end_of_trade_reporting_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.end_of_trade_reporting_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.end_of_trade_reporting_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
finra_finraorf_tdds_dfi_v2_0.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
finra_finraorf_tdds_dfi_v2_0.sequence_number_reset_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size

-- Display: Sequence Number Reset Message
finra_finraorf_tdds_dfi_v2_0.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
finra_finraorf_tdds_dfi_v2_0.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
finra_finraorf_tdds_dfi_v2_0.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Line Integrity Message
finra_finraorf_tdds_dfi_v2_0.line_integrity_message = {}

-- Size: Line Integrity Message
finra_finraorf_tdds_dfi_v2_0.line_integrity_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size

-- Display: Line Integrity Message
finra_finraorf_tdds_dfi_v2_0.line_integrity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Line Integrity Message
finra_finraorf_tdds_dfi_v2_0.line_integrity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Line Integrity Message
finra_finraorf_tdds_dfi_v2_0.line_integrity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.line_integrity_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.line_integrity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.line_integrity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.line_integrity_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmissions Message
finra_finraorf_tdds_dfi_v2_0.end_of_transmissions_message = {}

-- Size: End Of Transmissions Message
finra_finraorf_tdds_dfi_v2_0.end_of_transmissions_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size

-- Display: End Of Transmissions Message
finra_finraorf_tdds_dfi_v2_0.end_of_transmissions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmissions Message
finra_finraorf_tdds_dfi_v2_0.end_of_transmissions_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmissions Message
finra_finraorf_tdds_dfi_v2_0.end_of_transmissions_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.end_of_transmissions_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.end_of_transmissions_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.end_of_transmissions_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.end_of_transmissions_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Retransmission Requests Message
finra_finraorf_tdds_dfi_v2_0.end_of_retransmission_requests_message = {}

-- Size: End Of Retransmission Requests Message
finra_finraorf_tdds_dfi_v2_0.end_of_retransmission_requests_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size

-- Display: End Of Retransmission Requests Message
finra_finraorf_tdds_dfi_v2_0.end_of_retransmission_requests_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Retransmission Requests Message
finra_finraorf_tdds_dfi_v2_0.end_of_retransmission_requests_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Retransmission Requests Message
finra_finraorf_tdds_dfi_v2_0.end_of_retransmission_requests_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.end_of_retransmission_requests_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.end_of_retransmission_requests_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.end_of_retransmission_requests_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.end_of_retransmission_requests_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Close Message
finra_finraorf_tdds_dfi_v2_0.market_session_close_message = {}

-- Size: Market Session Close Message
finra_finraorf_tdds_dfi_v2_0.market_session_close_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size

-- Display: Market Session Close Message
finra_finraorf_tdds_dfi_v2_0.market_session_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Close Message
finra_finraorf_tdds_dfi_v2_0.market_session_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Close Message
finra_finraorf_tdds_dfi_v2_0.market_session_close_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.market_session_close_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.market_session_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.market_session_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.market_session_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Open Message
finra_finraorf_tdds_dfi_v2_0.market_session_open_message = {}

-- Size: Market Session Open Message
finra_finraorf_tdds_dfi_v2_0.market_session_open_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size

-- Display: Market Session Open Message
finra_finraorf_tdds_dfi_v2_0.market_session_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Open Message
finra_finraorf_tdds_dfi_v2_0.market_session_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Open Message
finra_finraorf_tdds_dfi_v2_0.market_session_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.market_session_open_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.market_session_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.market_session_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.market_session_open_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Day Message
finra_finraorf_tdds_dfi_v2_0.end_of_day_message = {}

-- Size: End Of Day Message
finra_finraorf_tdds_dfi_v2_0.end_of_day_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size

-- Display: End Of Day Message
finra_finraorf_tdds_dfi_v2_0.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
finra_finraorf_tdds_dfi_v2_0.end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
finra_finraorf_tdds_dfi_v2_0.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.end_of_day_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Day Message
finra_finraorf_tdds_dfi_v2_0.start_of_day_message = {}

-- Size: Start Of Day Message
finra_finraorf_tdds_dfi_v2_0.start_of_day_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size

-- Display: Start Of Day Message
finra_finraorf_tdds_dfi_v2_0.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
finra_finraorf_tdds_dfi_v2_0.start_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
finra_finraorf_tdds_dfi_v2_0.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.start_of_day_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.start_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.start_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.start_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Payload
finra_finraorf_tdds_dfi_v2_0.control_payload = {}

-- Dissect: Control Payload
finra_finraorf_tdds_dfi_v2_0.control_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "I" then
    return finra_finraorf_tdds_dfi_v2_0.start_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "J" then
    return finra_finraorf_tdds_dfi_v2_0.end_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Open Message
  if control_message_type == "O" then
    return finra_finraorf_tdds_dfi_v2_0.market_session_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Close Message
  if control_message_type == "O" then
    return finra_finraorf_tdds_dfi_v2_0.market_session_close_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Retransmission Requests Message
  if control_message_type == "K" then
    return finra_finraorf_tdds_dfi_v2_0.end_of_retransmission_requests_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmissions Message
  if control_message_type == "Z" then
    return finra_finraorf_tdds_dfi_v2_0.end_of_transmissions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Line Integrity Message
  if control_message_type == "T" then
    return finra_finraorf_tdds_dfi_v2_0.line_integrity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Number Reset Message
  if control_message_type == "L" then
    return finra_finraorf_tdds_dfi_v2_0.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Trade Reporting Message
  if control_message_type == "X" then
    return finra_finraorf_tdds_dfi_v2_0.end_of_trade_reporting_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control
finra_finraorf_tdds_dfi_v2_0.control = {}

-- Calculate size of: Control
finra_finraorf_tdds_dfi_v2_0.control.size = function(buffer, offset)
  local index = 0

  index = index + finra_finraorf_tdds_dfi_v2_0.control_message_type.size

  -- Calculate runtime size of Control Payload field
  local control_payload_offset = offset + index
  local control_payload_type = buffer(control_payload_offset - 1, 1):string()
  index = index + finra_finraorf_tdds_dfi_v2_0.control_payload.size(buffer, control_payload_offset, control_payload_type)

  return index
end

-- Display: Control
finra_finraorf_tdds_dfi_v2_0.control.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control
finra_finraorf_tdds_dfi_v2_0.control.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String Enum with 9 values
  index, control_message_type = finra_finraorf_tdds_dfi_v2_0.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Payload: Runtime Type with 9 branches
  index = finra_finraorf_tdds_dfi_v2_0.control_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control
finra_finraorf_tdds_dfi_v2_0.control.dissect = function(buffer, offset, packet, parent)
  if show.control then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.control, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.control.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.control.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.control.fields(buffer, offset, packet, parent)
  end
end

-- Action Datetime
finra_finraorf_tdds_dfi_v2_0.action_datetime = {}

-- Size: Action Datetime
finra_finraorf_tdds_dfi_v2_0.action_datetime.size =
  finra_finraorf_tdds_dfi_v2_0.year.size + 
  finra_finraorf_tdds_dfi_v2_0.month.size + 
  finra_finraorf_tdds_dfi_v2_0.day.size + 
  finra_finraorf_tdds_dfi_v2_0.hour.size + 
  finra_finraorf_tdds_dfi_v2_0.minute.size + 
  finra_finraorf_tdds_dfi_v2_0.second.size + 
  finra_finraorf_tdds_dfi_v2_0.millisecond.size

-- Display: Action Datetime
finra_finraorf_tdds_dfi_v2_0.action_datetime.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Action Datetime
finra_finraorf_tdds_dfi_v2_0.action_datetime.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 4 Byte Ascii String
  index, year = finra_finraorf_tdds_dfi_v2_0.year.dissect(buffer, index, packet, parent)

  -- Month: 2 Byte Ascii String
  index, month = finra_finraorf_tdds_dfi_v2_0.month.dissect(buffer, index, packet, parent)

  -- Day: 2 Byte Ascii String
  index, day = finra_finraorf_tdds_dfi_v2_0.day.dissect(buffer, index, packet, parent)

  -- Hour: 2 Byte Ascii String
  index, hour = finra_finraorf_tdds_dfi_v2_0.hour.dissect(buffer, index, packet, parent)

  -- Minute: 2 Byte Ascii String
  index, minute = finra_finraorf_tdds_dfi_v2_0.minute.dissect(buffer, index, packet, parent)

  -- Second: 2 Byte Ascii String
  index, second = finra_finraorf_tdds_dfi_v2_0.second.dissect(buffer, index, packet, parent)

  -- Millisecond: 3 Byte Ascii String
  index, millisecond = finra_finraorf_tdds_dfi_v2_0.millisecond.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Action Datetime
finra_finraorf_tdds_dfi_v2_0.action_datetime.dissect = function(buffer, offset, packet, parent)
  if show.action_datetime then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.action_datetime, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.action_datetime.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.action_datetime.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.action_datetime.fields(buffer, offset, packet, parent)
  end
end

-- Market Wide Circuit Breaker Event Message
finra_finraorf_tdds_dfi_v2_0.market_wide_circuit_breaker_event_message = {}

-- Size: Market Wide Circuit Breaker Event Message
finra_finraorf_tdds_dfi_v2_0.market_wide_circuit_breaker_event_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size + 
  finra_finraorf_tdds_dfi_v2_0.action.size + 
  finra_finraorf_tdds_dfi_v2_0.action_datetime.size + 
  finra_finraorf_tdds_dfi_v2_0.reason_code.size

-- Display: Market Wide Circuit Breaker Event Message
finra_finraorf_tdds_dfi_v2_0.market_wide_circuit_breaker_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Event Message
finra_finraorf_tdds_dfi_v2_0.market_wide_circuit_breaker_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  -- Action: 1 Byte Ascii String Enum with 4 values
  index, action = finra_finraorf_tdds_dfi_v2_0.action.dissect(buffer, index, packet, parent)

  -- Action Datetime: Struct of 7 fields
  index, action_datetime = finra_finraorf_tdds_dfi_v2_0.action_datetime.dissect(buffer, index, packet, parent)

  -- Reason Code: 6 Byte Ascii String
  index, reason_code = finra_finraorf_tdds_dfi_v2_0.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Event Message
finra_finraorf_tdds_dfi_v2_0.market_wide_circuit_breaker_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.market_wide_circuit_breaker_event_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.market_wide_circuit_breaker_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.market_wide_circuit_breaker_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.market_wide_circuit_breaker_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
finra_finraorf_tdds_dfi_v2_0.trading_action_message = {}

-- Size: Trading Action Message
finra_finraorf_tdds_dfi_v2_0.trading_action_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size + 
  finra_finraorf_tdds_dfi_v2_0.security_symbol.size + 
  finra_finraorf_tdds_dfi_v2_0.action.size + 
  finra_finraorf_tdds_dfi_v2_0.action_datetime.size + 
  finra_finraorf_tdds_dfi_v2_0.reason_code.size

-- Display: Trading Action Message
finra_finraorf_tdds_dfi_v2_0.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
finra_finraorf_tdds_dfi_v2_0.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  -- Security Symbol: 14 Byte Ascii String
  index, security_symbol = finra_finraorf_tdds_dfi_v2_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Action: 1 Byte Ascii String Enum with 4 values
  index, action = finra_finraorf_tdds_dfi_v2_0.action.dissect(buffer, index, packet, parent)

  -- Action Datetime: Struct of 7 fields
  index, action_datetime = finra_finraorf_tdds_dfi_v2_0.action_datetime.dissect(buffer, index, packet, parent)

  -- Reason Code: 6 Byte Ascii String
  index, reason_code = finra_finraorf_tdds_dfi_v2_0.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
finra_finraorf_tdds_dfi_v2_0.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.trading_action_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Closing Trade Summary Report Message
finra_finraorf_tdds_dfi_v2_0.closing_trade_summary_report_message = {}

-- Size: Closing Trade Summary Report Message
finra_finraorf_tdds_dfi_v2_0.closing_trade_summary_report_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size + 
  finra_finraorf_tdds_dfi_v2_0.security_symbol.size + 
  finra_finraorf_tdds_dfi_v2_0.daily_high_price_denominator.size + 
  finra_finraorf_tdds_dfi_v2_0.daily_high_price.size + 
  finra_finraorf_tdds_dfi_v2_0.daily_low_price_denominator.size + 
  finra_finraorf_tdds_dfi_v2_0.daily_low_price.size + 
  finra_finraorf_tdds_dfi_v2_0.closing_price_market_center.size + 
  finra_finraorf_tdds_dfi_v2_0.closing_price_denominator.size + 
  finra_finraorf_tdds_dfi_v2_0.closing_price.size + 
  finra_finraorf_tdds_dfi_v2_0.reserved.size + 
  finra_finraorf_tdds_dfi_v2_0.net_change_denominator.size + 
  finra_finraorf_tdds_dfi_v2_0.net_change_amount.size + 
  finra_finraorf_tdds_dfi_v2_0.net_change_direction.size + 
  finra_finraorf_tdds_dfi_v2_0.currency.size + 
  finra_finraorf_tdds_dfi_v2_0.total_security_volume.size

-- Display: Closing Trade Summary Report Message
finra_finraorf_tdds_dfi_v2_0.closing_trade_summary_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Trade Summary Report Message
finra_finraorf_tdds_dfi_v2_0.closing_trade_summary_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  -- Security Symbol: 14 Byte Ascii String
  index, security_symbol = finra_finraorf_tdds_dfi_v2_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Daily High Price Denominator: 1 Byte Ascii String
  index, daily_high_price_denominator = finra_finraorf_tdds_dfi_v2_0.daily_high_price_denominator.dissect(buffer, index, packet, parent)

  -- Daily High Price: 12 Byte Ascii String
  index, daily_high_price = finra_finraorf_tdds_dfi_v2_0.daily_high_price.dissect(buffer, index, packet, parent)

  -- Daily Low Price Denominator: 1 Byte Ascii String
  index, daily_low_price_denominator = finra_finraorf_tdds_dfi_v2_0.daily_low_price_denominator.dissect(buffer, index, packet, parent)

  -- Daily Low Price: 12 Byte Ascii String
  index, daily_low_price = finra_finraorf_tdds_dfi_v2_0.daily_low_price.dissect(buffer, index, packet, parent)

  -- Closing Price Market Center: 1 Byte Ascii String Enum with 3 values
  index, closing_price_market_center = finra_finraorf_tdds_dfi_v2_0.closing_price_market_center.dissect(buffer, index, packet, parent)

  -- Closing Price Denominator: 1 Byte Ascii String
  index, closing_price_denominator = finra_finraorf_tdds_dfi_v2_0.closing_price_denominator.dissect(buffer, index, packet, parent)

  -- Closing Price: 12 Byte Ascii String
  index, closing_price = finra_finraorf_tdds_dfi_v2_0.closing_price.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte Ascii String
  index, reserved = finra_finraorf_tdds_dfi_v2_0.reserved.dissect(buffer, index, packet, parent)

  -- Net Change Denominator: 1 Byte Ascii String
  index, net_change_denominator = finra_finraorf_tdds_dfi_v2_0.net_change_denominator.dissect(buffer, index, packet, parent)

  -- Net Change Amount: 12 Byte Ascii String
  index, net_change_amount = finra_finraorf_tdds_dfi_v2_0.net_change_amount.dissect(buffer, index, packet, parent)

  -- Net Change Direction: 1 Byte Ascii String Enum with 3 values
  index, net_change_direction = finra_finraorf_tdds_dfi_v2_0.net_change_direction.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = finra_finraorf_tdds_dfi_v2_0.currency.dissect(buffer, index, packet, parent)

  -- Total Security Volume: 11 Byte Ascii String
  index, total_security_volume = finra_finraorf_tdds_dfi_v2_0.total_security_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Closing Trade Summary Report Message
finra_finraorf_tdds_dfi_v2_0.closing_trade_summary_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.closing_trade_summary_report_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.closing_trade_summary_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.closing_trade_summary_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.closing_trade_summary_report_message.fields(buffer, offset, packet, parent)
  end
end

-- General Administrative Message
finra_finraorf_tdds_dfi_v2_0.general_administrative_message = {}

-- Size: General Administrative Message
finra_finraorf_tdds_dfi_v2_0.general_administrative_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size + 
  finra_finraorf_tdds_dfi_v2_0.text.size

-- Display: General Administrative Message
finra_finraorf_tdds_dfi_v2_0.general_administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Administrative Message
finra_finraorf_tdds_dfi_v2_0.general_administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  -- Text: 2 Byte Ascii String
  index, text = finra_finraorf_tdds_dfi_v2_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: General Administrative Message
finra_finraorf_tdds_dfi_v2_0.general_administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.general_administrative_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.general_administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.general_administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.general_administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Payload
finra_finraorf_tdds_dfi_v2_0.administrative_payload = {}

-- Dissect: Administrative Payload
finra_finraorf_tdds_dfi_v2_0.administrative_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect General Administrative Message
  if administrative_message_type == "A" then
    return finra_finraorf_tdds_dfi_v2_0.general_administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Closing Trade Summary Report Message
  if administrative_message_type == "2" then
    return finra_finraorf_tdds_dfi_v2_0.closing_trade_summary_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if administrative_message_type == "H" then
    return finra_finraorf_tdds_dfi_v2_0.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Event Message
  if administrative_message_type == "M" then
    return finra_finraorf_tdds_dfi_v2_0.market_wide_circuit_breaker_event_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Administrative
finra_finraorf_tdds_dfi_v2_0.administrative = {}

-- Calculate size of: Administrative
finra_finraorf_tdds_dfi_v2_0.administrative.size = function(buffer, offset)
  local index = 0

  index = index + finra_finraorf_tdds_dfi_v2_0.administrative_message_type.size

  -- Calculate runtime size of Administrative Payload field
  local administrative_payload_offset = offset + index
  local administrative_payload_type = buffer(administrative_payload_offset - 1, 1):string()
  index = index + finra_finraorf_tdds_dfi_v2_0.administrative_payload.size(buffer, administrative_payload_offset, administrative_payload_type)

  return index
end

-- Display: Administrative
finra_finraorf_tdds_dfi_v2_0.administrative.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative
finra_finraorf_tdds_dfi_v2_0.administrative.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String Enum with 4 values
  index, administrative_message_type = finra_finraorf_tdds_dfi_v2_0.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Payload: Runtime Type with 4 branches
  index = finra_finraorf_tdds_dfi_v2_0.administrative_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative
finra_finraorf_tdds_dfi_v2_0.administrative.dissect = function(buffer, offset, packet, parent)
  if show.administrative then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.administrative, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.administrative.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.administrative.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.administrative.fields(buffer, offset, packet, parent)
  end
end

-- Trade Summary Information
finra_finraorf_tdds_dfi_v2_0.trade_summary_information = {}

-- Size: Trade Summary Information
finra_finraorf_tdds_dfi_v2_0.trade_summary_information.size =
  finra_finraorf_tdds_dfi_v2_0.high_price_denominator.size + 
  finra_finraorf_tdds_dfi_v2_0.high_price.size + 
  finra_finraorf_tdds_dfi_v2_0.low_price_denominator.size + 
  finra_finraorf_tdds_dfi_v2_0.low_price.size + 
  finra_finraorf_tdds_dfi_v2_0.last_sale_price_denominator.size + 
  finra_finraorf_tdds_dfi_v2_0.last_sale_price.size + 
  finra_finraorf_tdds_dfi_v2_0.last_sale_price_market_center.size + 
  finra_finraorf_tdds_dfi_v2_0.total_security_volume.size + 
  finra_finraorf_tdds_dfi_v2_0.price_change_indicator.size

-- Display: Trade Summary Information
finra_finraorf_tdds_dfi_v2_0.trade_summary_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Summary Information
finra_finraorf_tdds_dfi_v2_0.trade_summary_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- High Price Denominator: 1 Byte Ascii String
  index, high_price_denominator = finra_finraorf_tdds_dfi_v2_0.high_price_denominator.dissect(buffer, index, packet, parent)

  -- High Price: 12 Byte Ascii String
  index, high_price = finra_finraorf_tdds_dfi_v2_0.high_price.dissect(buffer, index, packet, parent)

  -- Low Price Denominator: 1 Byte Ascii String
  index, low_price_denominator = finra_finraorf_tdds_dfi_v2_0.low_price_denominator.dissect(buffer, index, packet, parent)

  -- Low Price: 12 Byte Ascii String
  index, low_price = finra_finraorf_tdds_dfi_v2_0.low_price.dissect(buffer, index, packet, parent)

  -- Last Sale Price Denominator: 1 Byte Ascii String
  index, last_sale_price_denominator = finra_finraorf_tdds_dfi_v2_0.last_sale_price_denominator.dissect(buffer, index, packet, parent)

  -- Last Sale Price: 12 Byte Ascii String
  index, last_sale_price = finra_finraorf_tdds_dfi_v2_0.last_sale_price.dissect(buffer, index, packet, parent)

  -- Last Sale Price Market Center: 1 Byte Ascii String Enum with 3 values
  index, last_sale_price_market_center = finra_finraorf_tdds_dfi_v2_0.last_sale_price_market_center.dissect(buffer, index, packet, parent)

  -- Total Security Volume: 11 Byte Ascii String
  index, total_security_volume = finra_finraorf_tdds_dfi_v2_0.total_security_volume.dissect(buffer, index, packet, parent)

  -- Price Change Indicator: 1 Byte Ascii String Enum with 8 values
  index, price_change_indicator = finra_finraorf_tdds_dfi_v2_0.price_change_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Summary Information
finra_finraorf_tdds_dfi_v2_0.trade_summary_information.dissect = function(buffer, offset, packet, parent)
  if show.trade_summary_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_summary_information, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.trade_summary_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.trade_summary_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.trade_summary_information.fields(buffer, offset, packet, parent)
  end
end

-- Execution Datetime
finra_finraorf_tdds_dfi_v2_0.execution_datetime = {}

-- Size: Execution Datetime
finra_finraorf_tdds_dfi_v2_0.execution_datetime.size =
  finra_finraorf_tdds_dfi_v2_0.year.size + 
  finra_finraorf_tdds_dfi_v2_0.month.size + 
  finra_finraorf_tdds_dfi_v2_0.day.size + 
  finra_finraorf_tdds_dfi_v2_0.hour.size + 
  finra_finraorf_tdds_dfi_v2_0.minute.size + 
  finra_finraorf_tdds_dfi_v2_0.second.size + 
  finra_finraorf_tdds_dfi_v2_0.millisecond.size

-- Display: Execution Datetime
finra_finraorf_tdds_dfi_v2_0.execution_datetime.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Datetime
finra_finraorf_tdds_dfi_v2_0.execution_datetime.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 4 Byte Ascii String
  index, year = finra_finraorf_tdds_dfi_v2_0.year.dissect(buffer, index, packet, parent)

  -- Month: 2 Byte Ascii String
  index, month = finra_finraorf_tdds_dfi_v2_0.month.dissect(buffer, index, packet, parent)

  -- Day: 2 Byte Ascii String
  index, day = finra_finraorf_tdds_dfi_v2_0.day.dissect(buffer, index, packet, parent)

  -- Hour: 2 Byte Ascii String
  index, hour = finra_finraorf_tdds_dfi_v2_0.hour.dissect(buffer, index, packet, parent)

  -- Minute: 2 Byte Ascii String
  index, minute = finra_finraorf_tdds_dfi_v2_0.minute.dissect(buffer, index, packet, parent)

  -- Second: 2 Byte Ascii String
  index, second = finra_finraorf_tdds_dfi_v2_0.second.dissect(buffer, index, packet, parent)

  -- Millisecond: 3 Byte Ascii String
  index, millisecond = finra_finraorf_tdds_dfi_v2_0.millisecond.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Datetime
finra_finraorf_tdds_dfi_v2_0.execution_datetime.dissect = function(buffer, offset, packet, parent)
  if show.execution_datetime then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.execution_datetime, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.execution_datetime.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.execution_datetime.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.execution_datetime.fields(buffer, offset, packet, parent)
  end
end

-- Corrected Trade Information
finra_finraorf_tdds_dfi_v2_0.corrected_trade_information = {}

-- Size: Corrected Trade Information
finra_finraorf_tdds_dfi_v2_0.corrected_trade_information.size =
  finra_finraorf_tdds_dfi_v2_0.report_volume.size + 
  finra_finraorf_tdds_dfi_v2_0.trade_price_denominator.size + 
  finra_finraorf_tdds_dfi_v2_0.trade_price.size + 
  finra_finraorf_tdds_dfi_v2_0.currency.size + 
  finra_finraorf_tdds_dfi_v2_0.as_of_indicator.size + 
  finra_finraorf_tdds_dfi_v2_0.execution_datetime.size + 
  finra_finraorf_tdds_dfi_v2_0.sale_condition_level_1.size + 
  finra_finraorf_tdds_dfi_v2_0.sale_condition_level_2.size + 
  finra_finraorf_tdds_dfi_v2_0.sale_condition_level_3.size + 
  finra_finraorf_tdds_dfi_v2_0.sale_condition_level_4.size + 
  finra_finraorf_tdds_dfi_v2_0.sellers_sale_days.size

-- Display: Corrected Trade Information
finra_finraorf_tdds_dfi_v2_0.corrected_trade_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Trade Information
finra_finraorf_tdds_dfi_v2_0.corrected_trade_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Report Volume: 8 Byte Ascii String
  index, report_volume = finra_finraorf_tdds_dfi_v2_0.report_volume.dissect(buffer, index, packet, parent)

  -- Trade Price Denominator: 1 Byte Ascii String
  index, trade_price_denominator = finra_finraorf_tdds_dfi_v2_0.trade_price_denominator.dissect(buffer, index, packet, parent)

  -- Trade Price: 12 Byte Ascii String
  index, trade_price = finra_finraorf_tdds_dfi_v2_0.trade_price.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = finra_finraorf_tdds_dfi_v2_0.currency.dissect(buffer, index, packet, parent)

  -- As Of Indicator: 1 Byte Ascii String Enum with 3 values
  index, as_of_indicator = finra_finraorf_tdds_dfi_v2_0.as_of_indicator.dissect(buffer, index, packet, parent)

  -- Execution Datetime: Struct of 7 fields
  index, execution_datetime = finra_finraorf_tdds_dfi_v2_0.execution_datetime.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 1: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_1 = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_1.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 2: 1 Byte Ascii String
  index, sale_condition_level_2 = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_2.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 3: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_3 = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_3.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 4: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_4 = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_4.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: 2 Byte Ascii String
  index, sellers_sale_days = finra_finraorf_tdds_dfi_v2_0.sellers_sale_days.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Trade Information
finra_finraorf_tdds_dfi_v2_0.corrected_trade_information.dissect = function(buffer, offset, packet, parent)
  if show.corrected_trade_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.corrected_trade_information, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.corrected_trade_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.corrected_trade_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.corrected_trade_information.fields(buffer, offset, packet, parent)
  end
end

-- Original Trade Information
finra_finraorf_tdds_dfi_v2_0.original_trade_information = {}

-- Size: Original Trade Information
finra_finraorf_tdds_dfi_v2_0.original_trade_information.size =
  finra_finraorf_tdds_dfi_v2_0.report_volume.size + 
  finra_finraorf_tdds_dfi_v2_0.trade_price_denominator.size + 
  finra_finraorf_tdds_dfi_v2_0.trade_price.size + 
  finra_finraorf_tdds_dfi_v2_0.currency.size + 
  finra_finraorf_tdds_dfi_v2_0.as_of_indicator.size + 
  finra_finraorf_tdds_dfi_v2_0.execution_datetime.size + 
  finra_finraorf_tdds_dfi_v2_0.sale_condition_level_1.size + 
  finra_finraorf_tdds_dfi_v2_0.sale_condition_level_2.size + 
  finra_finraorf_tdds_dfi_v2_0.sale_condition_level_3.size + 
  finra_finraorf_tdds_dfi_v2_0.sale_condition_level_4.size + 
  finra_finraorf_tdds_dfi_v2_0.sellers_sale_days.size

-- Display: Original Trade Information
finra_finraorf_tdds_dfi_v2_0.original_trade_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Original Trade Information
finra_finraorf_tdds_dfi_v2_0.original_trade_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Report Volume: 8 Byte Ascii String
  index, report_volume = finra_finraorf_tdds_dfi_v2_0.report_volume.dissect(buffer, index, packet, parent)

  -- Trade Price Denominator: 1 Byte Ascii String
  index, trade_price_denominator = finra_finraorf_tdds_dfi_v2_0.trade_price_denominator.dissect(buffer, index, packet, parent)

  -- Trade Price: 12 Byte Ascii String
  index, trade_price = finra_finraorf_tdds_dfi_v2_0.trade_price.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = finra_finraorf_tdds_dfi_v2_0.currency.dissect(buffer, index, packet, parent)

  -- As Of Indicator: 1 Byte Ascii String Enum with 3 values
  index, as_of_indicator = finra_finraorf_tdds_dfi_v2_0.as_of_indicator.dissect(buffer, index, packet, parent)

  -- Execution Datetime: Struct of 7 fields
  index, execution_datetime = finra_finraorf_tdds_dfi_v2_0.execution_datetime.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 1: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_1 = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_1.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 2: 1 Byte Ascii String
  index, sale_condition_level_2 = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_2.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 3: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_3 = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_3.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 4: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_4 = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_4.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: 2 Byte Ascii String
  index, sellers_sale_days = finra_finraorf_tdds_dfi_v2_0.sellers_sale_days.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Trade Information
finra_finraorf_tdds_dfi_v2_0.original_trade_information.dissect = function(buffer, offset, packet, parent)
  if show.original_trade_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.original_trade_information, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.original_trade_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.original_trade_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.original_trade_information.fields(buffer, offset, packet, parent)
  end
end

-- Original Dissemination Date
finra_finraorf_tdds_dfi_v2_0.original_dissemination_date = {}

-- Size: Original Dissemination Date
finra_finraorf_tdds_dfi_v2_0.original_dissemination_date.size =
  finra_finraorf_tdds_dfi_v2_0.year.size + 
  finra_finraorf_tdds_dfi_v2_0.month.size + 
  finra_finraorf_tdds_dfi_v2_0.day.size

-- Display: Original Dissemination Date
finra_finraorf_tdds_dfi_v2_0.original_dissemination_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Original Dissemination Date
finra_finraorf_tdds_dfi_v2_0.original_dissemination_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 4 Byte Ascii String
  index, year = finra_finraorf_tdds_dfi_v2_0.year.dissect(buffer, index, packet, parent)

  -- Month: 2 Byte Ascii String
  index, month = finra_finraorf_tdds_dfi_v2_0.month.dissect(buffer, index, packet, parent)

  -- Day: 2 Byte Ascii String
  index, day = finra_finraorf_tdds_dfi_v2_0.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Dissemination Date
finra_finraorf_tdds_dfi_v2_0.original_dissemination_date.dissect = function(buffer, offset, packet, parent)
  if show.original_dissemination_date then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.original_dissemination_date, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.original_dissemination_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.original_dissemination_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.original_dissemination_date.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
finra_finraorf_tdds_dfi_v2_0.trade_correction_message = {}

-- Size: Trade Correction Message
finra_finraorf_tdds_dfi_v2_0.trade_correction_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size + 
  finra_finraorf_tdds_dfi_v2_0.security_symbol.size + 
  finra_finraorf_tdds_dfi_v2_0.original_dissemination_date.size + 
  finra_finraorf_tdds_dfi_v2_0.original_message_sequence_number.size + 
  finra_finraorf_tdds_dfi_v2_0.report_function.size + 
  finra_finraorf_tdds_dfi_v2_0.original_trade_information.size + 
  finra_finraorf_tdds_dfi_v2_0.corrected_trade_information.size + 
  finra_finraorf_tdds_dfi_v2_0.trade_summary_information.size

-- Display: Trade Correction Message
finra_finraorf_tdds_dfi_v2_0.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
finra_finraorf_tdds_dfi_v2_0.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  -- Security Symbol: 14 Byte Ascii String
  index, security_symbol = finra_finraorf_tdds_dfi_v2_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Original Dissemination Date: Struct of 3 fields
  index, original_dissemination_date = finra_finraorf_tdds_dfi_v2_0.original_dissemination_date.dissect(buffer, index, packet, parent)

  -- Original Message Sequence Number: 8 Byte Ascii String
  index, original_message_sequence_number = finra_finraorf_tdds_dfi_v2_0.original_message_sequence_number.dissect(buffer, index, packet, parent)

  -- Report Function: 1 Byte Ascii String Enum with 3 values
  index, report_function = finra_finraorf_tdds_dfi_v2_0.report_function.dissect(buffer, index, packet, parent)

  -- Original Trade Information: Struct of 11 fields
  index, original_trade_information = finra_finraorf_tdds_dfi_v2_0.original_trade_information.dissect(buffer, index, packet, parent)

  -- Corrected Trade Information: Struct of 11 fields
  index, corrected_trade_information = finra_finraorf_tdds_dfi_v2_0.corrected_trade_information.dissect(buffer, index, packet, parent)

  -- Trade Summary Information: Struct of 9 fields
  index, trade_summary_information = finra_finraorf_tdds_dfi_v2_0.trade_summary_information.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
finra_finraorf_tdds_dfi_v2_0.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_correction_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Error Message
finra_finraorf_tdds_dfi_v2_0.trade_cancel_error_message = {}

-- Size: Trade Cancel Error Message
finra_finraorf_tdds_dfi_v2_0.trade_cancel_error_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size + 
  finra_finraorf_tdds_dfi_v2_0.security_symbol.size + 
  finra_finraorf_tdds_dfi_v2_0.original_dissemination_date.size + 
  finra_finraorf_tdds_dfi_v2_0.original_message_sequence_number.size + 
  finra_finraorf_tdds_dfi_v2_0.report_function.size + 
  finra_finraorf_tdds_dfi_v2_0.original_trade_information.size + 
  finra_finraorf_tdds_dfi_v2_0.trade_summary_information.size

-- Display: Trade Cancel Error Message
finra_finraorf_tdds_dfi_v2_0.trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
finra_finraorf_tdds_dfi_v2_0.trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  -- Security Symbol: 14 Byte Ascii String
  index, security_symbol = finra_finraorf_tdds_dfi_v2_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Original Dissemination Date: Struct of 3 fields
  index, original_dissemination_date = finra_finraorf_tdds_dfi_v2_0.original_dissemination_date.dissect(buffer, index, packet, parent)

  -- Original Message Sequence Number: 8 Byte Ascii String
  index, original_message_sequence_number = finra_finraorf_tdds_dfi_v2_0.original_message_sequence_number.dissect(buffer, index, packet, parent)

  -- Report Function: 1 Byte Ascii String Enum with 3 values
  index, report_function = finra_finraorf_tdds_dfi_v2_0.report_function.dissect(buffer, index, packet, parent)

  -- Original Trade Information: Struct of 11 fields
  index, original_trade_information = finra_finraorf_tdds_dfi_v2_0.original_trade_information.dissect(buffer, index, packet, parent)

  -- Trade Summary Information: Struct of 9 fields
  index, trade_summary_information = finra_finraorf_tdds_dfi_v2_0.trade_summary_information.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
finra_finraorf_tdds_dfi_v2_0.trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_cancel_error_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Information
finra_finraorf_tdds_dfi_v2_0.trade_information = {}

-- Size: Trade Information
finra_finraorf_tdds_dfi_v2_0.trade_information.size =
  finra_finraorf_tdds_dfi_v2_0.report_volume.size + 
  finra_finraorf_tdds_dfi_v2_0.trade_price_denominator.size + 
  finra_finraorf_tdds_dfi_v2_0.trade_price.size + 
  finra_finraorf_tdds_dfi_v2_0.currency.size + 
  finra_finraorf_tdds_dfi_v2_0.as_of_indicator.size + 
  finra_finraorf_tdds_dfi_v2_0.execution_datetime.size + 
  finra_finraorf_tdds_dfi_v2_0.sale_condition_level_1.size + 
  finra_finraorf_tdds_dfi_v2_0.sale_condition_level_2.size + 
  finra_finraorf_tdds_dfi_v2_0.sale_condition_level_3.size + 
  finra_finraorf_tdds_dfi_v2_0.sale_condition_level_4.size + 
  finra_finraorf_tdds_dfi_v2_0.sellers_sale_days.size + 
  finra_finraorf_tdds_dfi_v2_0.price_change_indicator.size

-- Display: Trade Information
finra_finraorf_tdds_dfi_v2_0.trade_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Information
finra_finraorf_tdds_dfi_v2_0.trade_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Report Volume: 8 Byte Ascii String
  index, report_volume = finra_finraorf_tdds_dfi_v2_0.report_volume.dissect(buffer, index, packet, parent)

  -- Trade Price Denominator: 1 Byte Ascii String
  index, trade_price_denominator = finra_finraorf_tdds_dfi_v2_0.trade_price_denominator.dissect(buffer, index, packet, parent)

  -- Trade Price: 12 Byte Ascii String
  index, trade_price = finra_finraorf_tdds_dfi_v2_0.trade_price.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = finra_finraorf_tdds_dfi_v2_0.currency.dissect(buffer, index, packet, parent)

  -- As Of Indicator: 1 Byte Ascii String Enum with 3 values
  index, as_of_indicator = finra_finraorf_tdds_dfi_v2_0.as_of_indicator.dissect(buffer, index, packet, parent)

  -- Execution Datetime: Struct of 7 fields
  index, execution_datetime = finra_finraorf_tdds_dfi_v2_0.execution_datetime.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 1: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_1 = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_1.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 2: 1 Byte Ascii String
  index, sale_condition_level_2 = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_2.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 3: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_3 = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_3.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 4: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_4 = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_4.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: 2 Byte Ascii String
  index, sellers_sale_days = finra_finraorf_tdds_dfi_v2_0.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Price Change Indicator: 1 Byte Ascii String Enum with 8 values
  index, price_change_indicator = finra_finraorf_tdds_dfi_v2_0.price_change_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Information
finra_finraorf_tdds_dfi_v2_0.trade_information.dissect = function(buffer, offset, packet, parent)
  if show.trade_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_information, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.trade_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.trade_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.trade_information.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Long Form Message
finra_finraorf_tdds_dfi_v2_0.trade_report_long_form_message = {}

-- Size: Trade Report Long Form Message
finra_finraorf_tdds_dfi_v2_0.trade_report_long_form_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size + 
  finra_finraorf_tdds_dfi_v2_0.security_symbol.size + 
  finra_finraorf_tdds_dfi_v2_0.original_dissemination_date.size + 
  finra_finraorf_tdds_dfi_v2_0.trade_information.size

-- Display: Trade Report Long Form Message
finra_finraorf_tdds_dfi_v2_0.trade_report_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Long Form Message
finra_finraorf_tdds_dfi_v2_0.trade_report_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  -- Security Symbol: 14 Byte Ascii String
  index, security_symbol = finra_finraorf_tdds_dfi_v2_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Original Dissemination Date: Struct of 3 fields
  index, original_dissemination_date = finra_finraorf_tdds_dfi_v2_0.original_dissemination_date.dissect(buffer, index, packet, parent)

  -- Trade Information: Struct of 12 fields
  index, trade_information = finra_finraorf_tdds_dfi_v2_0.trade_information.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Long Form Message
finra_finraorf_tdds_dfi_v2_0.trade_report_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_report_long_form_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.trade_report_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.trade_report_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.trade_report_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Short Form Message
finra_finraorf_tdds_dfi_v2_0.trade_report_short_form_message = {}

-- Size: Trade Report Short Form Message
finra_finraorf_tdds_dfi_v2_0.trade_report_short_form_message.size =
  finra_finraorf_tdds_dfi_v2_0.message_header.size + 
  finra_finraorf_tdds_dfi_v2_0.security_symbol_short.size + 
  finra_finraorf_tdds_dfi_v2_0.sale_condition_level_1.size + 
  finra_finraorf_tdds_dfi_v2_0.trade_price_denominator.size + 
  finra_finraorf_tdds_dfi_v2_0.trade_price_short.size + 
  finra_finraorf_tdds_dfi_v2_0.report_volume_short.size + 
  finra_finraorf_tdds_dfi_v2_0.price_change_indicator.size

-- Display: Trade Report Short Form Message
finra_finraorf_tdds_dfi_v2_0.trade_report_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Short Form Message
finra_finraorf_tdds_dfi_v2_0.trade_report_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 5 fields
  index, message_header = finra_finraorf_tdds_dfi_v2_0.message_header.dissect(buffer, index, packet, parent)

  -- Security Symbol Short: 5 Byte Ascii String
  index, security_symbol_short = finra_finraorf_tdds_dfi_v2_0.security_symbol_short.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 1: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_1 = finra_finraorf_tdds_dfi_v2_0.sale_condition_level_1.dissect(buffer, index, packet, parent)

  -- Trade Price Denominator: 1 Byte Ascii String
  index, trade_price_denominator = finra_finraorf_tdds_dfi_v2_0.trade_price_denominator.dissect(buffer, index, packet, parent)

  -- Trade Price Short: 6 Byte Ascii String
  index, trade_price_short = finra_finraorf_tdds_dfi_v2_0.trade_price_short.dissect(buffer, index, packet, parent)

  -- Report Volume Short: 6 Byte Ascii String
  index, report_volume_short = finra_finraorf_tdds_dfi_v2_0.report_volume_short.dissect(buffer, index, packet, parent)

  -- Price Change Indicator: 1 Byte Ascii String Enum with 8 values
  index, price_change_indicator = finra_finraorf_tdds_dfi_v2_0.price_change_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Short Form Message
finra_finraorf_tdds_dfi_v2_0.trade_report_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.trade_report_short_form_message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.trade_report_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.trade_report_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.trade_report_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Payload
finra_finraorf_tdds_dfi_v2_0.trade_payload = {}

-- Dissect: Trade Payload
finra_finraorf_tdds_dfi_v2_0.trade_payload.dissect = function(buffer, offset, packet, parent, trade_message_type)
  -- Dissect Trade Report Short Form Message
  if trade_message_type == "5" then
    return finra_finraorf_tdds_dfi_v2_0.trade_report_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Long Form Message
  if trade_message_type == "6" then
    return finra_finraorf_tdds_dfi_v2_0.trade_report_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error Message
  if trade_message_type == "7" then
    return finra_finraorf_tdds_dfi_v2_0.trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if trade_message_type == "8" then
    return finra_finraorf_tdds_dfi_v2_0.trade_correction_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Trade
finra_finraorf_tdds_dfi_v2_0.trade = {}

-- Calculate size of: Trade
finra_finraorf_tdds_dfi_v2_0.trade.size = function(buffer, offset)
  local index = 0

  index = index + finra_finraorf_tdds_dfi_v2_0.trade_message_type.size

  -- Calculate runtime size of Trade Payload field
  local trade_payload_offset = offset + index
  local trade_payload_type = buffer(trade_payload_offset - 1, 1):string()
  index = index + finra_finraorf_tdds_dfi_v2_0.trade_payload.size(buffer, trade_payload_offset, trade_payload_type)

  return index
end

-- Display: Trade
finra_finraorf_tdds_dfi_v2_0.trade.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade
finra_finraorf_tdds_dfi_v2_0.trade.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Message Type: 1 Byte Ascii String Enum with 4 values
  index, trade_message_type = finra_finraorf_tdds_dfi_v2_0.trade_message_type.dissect(buffer, index, packet, parent)

  -- Trade Payload: Runtime Type with 4 branches
  index = finra_finraorf_tdds_dfi_v2_0.trade_payload.dissect(buffer, index, packet, parent, trade_message_type)

  return index
end

-- Dissect: Trade
finra_finraorf_tdds_dfi_v2_0.trade.dissect = function(buffer, offset, packet, parent)
  if show.trade then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.trade, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.trade.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.trade.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.trade.fields(buffer, offset, packet, parent)
  end
end

-- Payload
finra_finraorf_tdds_dfi_v2_0.payload = {}

-- Dissect: Payload
finra_finraorf_tdds_dfi_v2_0.payload.dissect = function(buffer, offset, packet, parent, message_category)
  -- Dissect Trade
  if message_category == "T" then
    return finra_finraorf_tdds_dfi_v2_0.trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Administrative
  if message_category == "A" then
    return finra_finraorf_tdds_dfi_v2_0.administrative.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control
  if message_category == "C" then
    return finra_finraorf_tdds_dfi_v2_0.control.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
finra_finraorf_tdds_dfi_v2_0.message = {}

-- Calculate size of: Message
finra_finraorf_tdds_dfi_v2_0.message.size = function(buffer, offset)
  local index = 0

  index = index + finra_finraorf_tdds_dfi_v2_0.message_category.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + finra_finraorf_tdds_dfi_v2_0.payload.size(buffer, payload_offset, payload_type)

  index = index + finra_finraorf_tdds_dfi_v2_0.message_separator.size

  return index
end

-- Display: Message
finra_finraorf_tdds_dfi_v2_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
finra_finraorf_tdds_dfi_v2_0.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Category: 1 Byte Ascii String Enum with 3 values
  index, message_category = finra_finraorf_tdds_dfi_v2_0.message_category.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 3 branches
  index = finra_finraorf_tdds_dfi_v2_0.payload.dissect(buffer, index, packet, parent, message_category)

  -- Message Separator: 1 Byte Unsigned Fixed Width Integer
  index, message_separator = finra_finraorf_tdds_dfi_v2_0.message_separator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
finra_finraorf_tdds_dfi_v2_0.message.dissect = function(buffer, offset, packet, parent)
  if show.message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_finraorf_tdds_dfi_v2_0.fields.message, buffer(offset, 0))
    local index = finra_finraorf_tdds_dfi_v2_0.message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_finraorf_tdds_dfi_v2_0.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_finraorf_tdds_dfi_v2_0.message.fields(buffer, offset, packet, parent)
  end
end

-- Packet
finra_finraorf_tdds_dfi_v2_0.packet = {}

-- Dissect Packet
finra_finraorf_tdds_dfi_v2_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Block Soh: 1 Byte Unsigned Fixed Width Integer
  index, block_soh = finra_finraorf_tdds_dfi_v2_0.block_soh.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, message = finra_finraorf_tdds_dfi_v2_0.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_finra_finraorf_tdds_dfi_v2_0.init()
end

-- Dissector for Finra FinraOrf Tdds Dfi 2.0
function omi_finra_finraorf_tdds_dfi_v2_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_finra_finraorf_tdds_dfi_v2_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_finra_finraorf_tdds_dfi_v2_0, buffer(), omi_finra_finraorf_tdds_dfi_v2_0.description, "("..buffer:len().." Bytes)")
  return finra_finraorf_tdds_dfi_v2_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_finra_finraorf_tdds_dfi_v2_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of Udp packet
finra_finraorf_tdds_dfi_v2_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Finra FinraOrf Tdds Dfi 2.0 (Udp)
local function omi_finra_finraorf_tdds_dfi_v2_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not finra_finraorf_tdds_dfi_v2_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_finra_finraorf_tdds_dfi_v2_0
  omi_finra_finraorf_tdds_dfi_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Finra FinraOrf Tdds Dfi 2.0
omi_finra_finraorf_tdds_dfi_v2_0:register_heuristic("udp", omi_finra_finraorf_tdds_dfi_v2_0_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Financial Industry Regulatory Authority
--   Version: 2.0
--   Date: Monday, September 24, 2018
--   Specification: TDDS2.0.pdf
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
