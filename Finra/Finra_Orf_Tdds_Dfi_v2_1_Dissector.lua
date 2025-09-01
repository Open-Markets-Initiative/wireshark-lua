-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Finra Orf Tdds Dfi 2.1 Protocol
local omi_finra_orf_tdds_dfi_v2_1 = Proto("Finra.Orf.Tdds.Dfi.v2.1.Lua", "Finra Orf Tdds Dfi 2.1")

-- Protocol table
local finra_orf_tdds_dfi_v2_1 = {}

-- Component Tables
local show = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Finra Orf Tdds Dfi 2.1 Fields
omi_finra_orf_tdds_dfi_v2_1.fields.action = ProtoField.new("Action", "finra.orf.tdds.dfi.v2.1.action", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.action_datetime = ProtoField.new("Action Datetime", "finra.orf.tdds.dfi.v2.1.actiondatetime", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.administrative = ProtoField.new("Administrative", "finra.orf.tdds.dfi.v2.1.administrative", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "finra.orf.tdds.dfi.v2.1.administrativemessagetype", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.administrative_payload = ProtoField.new("Administrative Payload", "finra.orf.tdds.dfi.v2.1.administrativepayload", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.as_of_indicator = ProtoField.new("As Of Indicator", "finra.orf.tdds.dfi.v2.1.asofindicator", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.closing_price = ProtoField.new("Closing Price", "finra.orf.tdds.dfi.v2.1.closingprice", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.closing_price_denominator = ProtoField.new("Closing Price Denominator", "finra.orf.tdds.dfi.v2.1.closingpricedenominator", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.closing_price_market_center = ProtoField.new("Closing Price Market Center", "finra.orf.tdds.dfi.v2.1.closingpricemarketcenter", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.control = ProtoField.new("Control", "finra.orf.tdds.dfi.v2.1.control", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.control_message_type = ProtoField.new("Control Message Type", "finra.orf.tdds.dfi.v2.1.controlmessagetype", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.control_payload = ProtoField.new("Control Payload", "finra.orf.tdds.dfi.v2.1.controlpayload", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.corrected_trade_information = ProtoField.new("Corrected Trade Information", "finra.orf.tdds.dfi.v2.1.correctedtradeinformation", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.count = ProtoField.new("Count", "finra.orf.tdds.dfi.v2.1.count", ftypes.UINT16)
omi_finra_orf_tdds_dfi_v2_1.fields.currency = ProtoField.new("Currency", "finra.orf.tdds.dfi.v2.1.currency", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.daily_high_price = ProtoField.new("Daily High Price", "finra.orf.tdds.dfi.v2.1.dailyhighprice", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.daily_high_price_denominator = ProtoField.new("Daily High Price Denominator", "finra.orf.tdds.dfi.v2.1.dailyhighpricedenominator", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.daily_low_price = ProtoField.new("Daily Low Price", "finra.orf.tdds.dfi.v2.1.dailylowprice", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.daily_low_price_denominator = ProtoField.new("Daily Low Price Denominator", "finra.orf.tdds.dfi.v2.1.dailylowpricedenominator", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.datetime = ProtoField.new("Datetime", "finra.orf.tdds.dfi.v2.1.datetime", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.day = ProtoField.new("Day", "finra.orf.tdds.dfi.v2.1.day", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.execution_datetime = ProtoField.new("Execution Datetime", "finra.orf.tdds.dfi.v2.1.executiondatetime", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.fractional_second = ProtoField.new("Fractional Second", "finra.orf.tdds.dfi.v2.1.fractionalsecond", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.high_price = ProtoField.new("High Price", "finra.orf.tdds.dfi.v2.1.highprice", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.high_price_denominator = ProtoField.new("High Price Denominator", "finra.orf.tdds.dfi.v2.1.highpricedenominator", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.hour = ProtoField.new("Hour", "finra.orf.tdds.dfi.v2.1.hour", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.last_sale_price = ProtoField.new("Last Sale Price", "finra.orf.tdds.dfi.v2.1.lastsaleprice", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.last_sale_price_denominator = ProtoField.new("Last Sale Price Denominator", "finra.orf.tdds.dfi.v2.1.lastsalepricedenominator", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.last_sale_price_market_center = ProtoField.new("Last Sale Price Market Center", "finra.orf.tdds.dfi.v2.1.lastsalepricemarketcenter", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.length = ProtoField.new("Length", "finra.orf.tdds.dfi.v2.1.length", ftypes.UINT16)
omi_finra_orf_tdds_dfi_v2_1.fields.low_price = ProtoField.new("Low Price", "finra.orf.tdds.dfi.v2.1.lowprice", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.low_price_denominator = ProtoField.new("Low Price Denominator", "finra.orf.tdds.dfi.v2.1.lowpricedenominator", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.market_center_originator_id = ProtoField.new("Market Center Originator Id", "finra.orf.tdds.dfi.v2.1.marketcenteroriginatorid", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.message = ProtoField.new("Message", "finra.orf.tdds.dfi.v2.1.message", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.message_category = ProtoField.new("Message Category", "finra.orf.tdds.dfi.v2.1.messagecategory", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.message_header = ProtoField.new("Message Header", "finra.orf.tdds.dfi.v2.1.messageheader", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.minute = ProtoField.new("Minute", "finra.orf.tdds.dfi.v2.1.minute", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.mold_udp64 = ProtoField.new("Mold Udp64", "finra.orf.tdds.dfi.v2.1.moldudp64", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.month = ProtoField.new("Month", "finra.orf.tdds.dfi.v2.1.month", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.net_change_amount = ProtoField.new("Net Change Amount", "finra.orf.tdds.dfi.v2.1.netchangeamount", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.net_change_denominator = ProtoField.new("Net Change Denominator", "finra.orf.tdds.dfi.v2.1.netchangedenominator", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.net_change_direction = ProtoField.new("Net Change Direction", "finra.orf.tdds.dfi.v2.1.netchangedirection", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.original_dissemination_date = ProtoField.new("Original Dissemination Date", "finra.orf.tdds.dfi.v2.1.originaldisseminationdate", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.original_trade_information = ProtoField.new("Original Trade Information", "finra.orf.tdds.dfi.v2.1.originaltradeinformation", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.packet = ProtoField.new("Packet", "finra.orf.tdds.dfi.v2.1.packet", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.packet_header = ProtoField.new("Packet Header", "finra.orf.tdds.dfi.v2.1.packetheader", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.payload = ProtoField.new("Payload", "finra.orf.tdds.dfi.v2.1.payload", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.price_change_indicator = ProtoField.new("Price Change Indicator", "finra.orf.tdds.dfi.v2.1.pricechangeindicator", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.reason_code = ProtoField.new("Reason Code", "finra.orf.tdds.dfi.v2.1.reasoncode", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.report_function = ProtoField.new("Report Function", "finra.orf.tdds.dfi.v2.1.reportfunction", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.report_volume = ProtoField.new("Report Volume", "finra.orf.tdds.dfi.v2.1.reportvolume", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.report_volume_short = ProtoField.new("Report Volume Short", "finra.orf.tdds.dfi.v2.1.reportvolumeshort", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.reserved = ProtoField.new("Reserved", "finra.orf.tdds.dfi.v2.1.reserved", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_1 = ProtoField.new("Sale Condition Level 1", "finra.orf.tdds.dfi.v2.1.saleconditionlevel1", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_2 = ProtoField.new("Sale Condition Level 2", "finra.orf.tdds.dfi.v2.1.saleconditionlevel2", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_3 = ProtoField.new("Sale Condition Level 3", "finra.orf.tdds.dfi.v2.1.saleconditionlevel3", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_4 = ProtoField.new("Sale Condition Level 4", "finra.orf.tdds.dfi.v2.1.saleconditionlevel4", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.second = ProtoField.new("Second", "finra.orf.tdds.dfi.v2.1.second", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.security_symbol = ProtoField.new("Security Symbol", "finra.orf.tdds.dfi.v2.1.securitysymbol", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.security_symbol_short = ProtoField.new("Security Symbol Short", "finra.orf.tdds.dfi.v2.1.securitysymbolshort", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.sellers_sale_days = ProtoField.new("Sellers Sale Days", "finra.orf.tdds.dfi.v2.1.sellerssaledays", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.sequence = ProtoField.new("Sequence", "finra.orf.tdds.dfi.v2.1.sequence", ftypes.UINT64)
omi_finra_orf_tdds_dfi_v2_1.fields.session = ProtoField.new("Session", "finra.orf.tdds.dfi.v2.1.session", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.text = ProtoField.new("Text", "finra.orf.tdds.dfi.v2.1.text", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.total_security_volume = ProtoField.new("Total Security Volume", "finra.orf.tdds.dfi.v2.1.totalsecurityvolume", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.trade = ProtoField.new("Trade", "finra.orf.tdds.dfi.v2.1.trade", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.trade_identifier = ProtoField.new("Trade Identifier", "finra.orf.tdds.dfi.v2.1.tradeidentifier", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.trade_information = ProtoField.new("Trade Information", "finra.orf.tdds.dfi.v2.1.tradeinformation", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.trade_message_type = ProtoField.new("Trade Message Type", "finra.orf.tdds.dfi.v2.1.trademessagetype", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.trade_payload = ProtoField.new("Trade Payload", "finra.orf.tdds.dfi.v2.1.tradepayload", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.trade_price = ProtoField.new("Trade Price", "finra.orf.tdds.dfi.v2.1.tradeprice", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.trade_price_denominator = ProtoField.new("Trade Price Denominator", "finra.orf.tdds.dfi.v2.1.tradepricedenominator", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.trade_price_short = ProtoField.new("Trade Price Short", "finra.orf.tdds.dfi.v2.1.tradepriceshort", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.trade_summary_information = ProtoField.new("Trade Summary Information", "finra.orf.tdds.dfi.v2.1.tradesummaryinformation", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.year = ProtoField.new("Year", "finra.orf.tdds.dfi.v2.1.year", ftypes.STRING)

-- Finra Orf Tdds Dfi 2.1 messages
omi_finra_orf_tdds_dfi_v2_1.fields.closing_trade_summary_report_message = ProtoField.new("Closing Trade Summary Report Message", "finra.orf.tdds.dfi.v2.1.closingtradesummaryreportmessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.end_of_day_message = ProtoField.new("End Of Day Message", "finra.orf.tdds.dfi.v2.1.endofdaymessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.end_of_retransmission_requests_message = ProtoField.new("End Of Retransmission Requests Message", "finra.orf.tdds.dfi.v2.1.endofretransmissionrequestsmessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.end_of_trade_reporting_message = ProtoField.new("End Of Trade Reporting Message", "finra.orf.tdds.dfi.v2.1.endoftradereportingmessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.end_of_transmissions_message = ProtoField.new("End Of Transmissions Message", "finra.orf.tdds.dfi.v2.1.endoftransmissionsmessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.general_administrative_message = ProtoField.new("General Administrative Message", "finra.orf.tdds.dfi.v2.1.generaladministrativemessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "finra.orf.tdds.dfi.v2.1.lineintegritymessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.market_session_close_message = ProtoField.new("Market Session Close Message", "finra.orf.tdds.dfi.v2.1.marketsessionclosemessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.market_session_open_message = ProtoField.new("Market Session Open Message", "finra.orf.tdds.dfi.v2.1.marketsessionopenmessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.market_wide_circuit_breaker_event_message = ProtoField.new("Market Wide Circuit Breaker Event Message", "finra.orf.tdds.dfi.v2.1.marketwidecircuitbreakereventmessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "finra.orf.tdds.dfi.v2.1.sequencenumberresetmessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "finra.orf.tdds.dfi.v2.1.startofdaymessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "finra.orf.tdds.dfi.v2.1.tradecancelerrormessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "finra.orf.tdds.dfi.v2.1.tradecorrectionmessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.trade_report_long_form_message = ProtoField.new("Trade Report Long Form Message", "finra.orf.tdds.dfi.v2.1.tradereportlongformmessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.trade_report_short_form_message = ProtoField.new("Trade Report Short Form Message", "finra.orf.tdds.dfi.v2.1.tradereportshortformmessage", ftypes.STRING)
omi_finra_orf_tdds_dfi_v2_1.fields.trading_action_message = ProtoField.new("Trading Action Message", "finra.orf.tdds.dfi.v2.1.tradingactionmessage", ftypes.STRING)

-- Finra Orf Tdds Dfi 2.1 generated fields
omi_finra_orf_tdds_dfi_v2_1.fields.message_index = ProtoField.new("Message Index", "finra.orf.tdds.dfi.v2.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Finra Orf Tdds Dfi 2.1 Element Dissection Options
show.action_datetime = true
show.administrative = true
show.closing_trade_summary_report_message = true
show.control = true
show.corrected_trade_information = true
show.datetime = true
show.end_of_day_message = true
show.end_of_retransmission_requests_message = true
show.end_of_trade_reporting_message = true
show.end_of_transmissions_message = true
show.execution_datetime = true
show.general_administrative_message = true
show.line_integrity_message = true
show.market_session_close_message = true
show.market_session_open_message = true
show.market_wide_circuit_breaker_event_message = true
show.message = true
show.message_header = true
show.mold_udp64 = true
show.original_dissemination_date = true
show.original_trade_information = true
show.packet = true
show.packet_header = true
show.sequence_number_reset_message = true
show.start_of_day_message = true
show.trade = true
show.trade_cancel_error_message = true
show.trade_correction_message = true
show.trade_information = true
show.trade_report_long_form_message = true
show.trade_report_short_form_message = true
show.trade_summary_information = true
show.trading_action_message = true
show.administrative_payload = false
show.control_payload = false
show.payload = false
show.trade_payload = false

-- Register Finra Orf Tdds Dfi 2.1 Show Options
omi_finra_orf_tdds_dfi_v2_1.prefs.show_action_datetime = Pref.bool("Show Action Datetime", show.action_datetime, "Parse and add Action Datetime to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_administrative = Pref.bool("Show Administrative", show.administrative, "Parse and add Administrative to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_closing_trade_summary_report_message = Pref.bool("Show Closing Trade Summary Report Message", show.closing_trade_summary_report_message, "Parse and add Closing Trade Summary Report Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_control = Pref.bool("Show Control", show.control, "Parse and add Control to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_corrected_trade_information = Pref.bool("Show Corrected Trade Information", show.corrected_trade_information, "Parse and add Corrected Trade Information to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_datetime = Pref.bool("Show Datetime", show.datetime, "Parse and add Datetime to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_end_of_day_message = Pref.bool("Show End Of Day Message", show.end_of_day_message, "Parse and add End Of Day Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_end_of_retransmission_requests_message = Pref.bool("Show End Of Retransmission Requests Message", show.end_of_retransmission_requests_message, "Parse and add End Of Retransmission Requests Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_end_of_trade_reporting_message = Pref.bool("Show End Of Trade Reporting Message", show.end_of_trade_reporting_message, "Parse and add End Of Trade Reporting Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_end_of_transmissions_message = Pref.bool("Show End Of Transmissions Message", show.end_of_transmissions_message, "Parse and add End Of Transmissions Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_execution_datetime = Pref.bool("Show Execution Datetime", show.execution_datetime, "Parse and add Execution Datetime to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_general_administrative_message = Pref.bool("Show General Administrative Message", show.general_administrative_message, "Parse and add General Administrative Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_line_integrity_message = Pref.bool("Show Line Integrity Message", show.line_integrity_message, "Parse and add Line Integrity Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_market_session_close_message = Pref.bool("Show Market Session Close Message", show.market_session_close_message, "Parse and add Market Session Close Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_market_session_open_message = Pref.bool("Show Market Session Open Message", show.market_session_open_message, "Parse and add Market Session Open Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_market_wide_circuit_breaker_event_message = Pref.bool("Show Market Wide Circuit Breaker Event Message", show.market_wide_circuit_breaker_event_message, "Parse and add Market Wide Circuit Breaker Event Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_mold_udp64 = Pref.bool("Show Mold Udp64", show.mold_udp64, "Parse and add Mold Udp64 to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_original_dissemination_date = Pref.bool("Show Original Dissemination Date", show.original_dissemination_date, "Parse and add Original Dissemination Date to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_original_trade_information = Pref.bool("Show Original Trade Information", show.original_trade_information, "Parse and add Original Trade Information to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade = Pref.bool("Show Trade", show.trade, "Parse and add Trade to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_cancel_error_message = Pref.bool("Show Trade Cancel Error Message", show.trade_cancel_error_message, "Parse and add Trade Cancel Error Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_correction_message = Pref.bool("Show Trade Correction Message", show.trade_correction_message, "Parse and add Trade Correction Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_information = Pref.bool("Show Trade Information", show.trade_information, "Parse and add Trade Information to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_report_long_form_message = Pref.bool("Show Trade Report Long Form Message", show.trade_report_long_form_message, "Parse and add Trade Report Long Form Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_report_short_form_message = Pref.bool("Show Trade Report Short Form Message", show.trade_report_short_form_message, "Parse and add Trade Report Short Form Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_summary_information = Pref.bool("Show Trade Summary Information", show.trade_summary_information, "Parse and add Trade Summary Information to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_administrative_payload = Pref.bool("Show Administrative Payload", show.administrative_payload, "Parse and add Administrative Payload to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_control_payload = Pref.bool("Show Control Payload", show.control_payload, "Parse and add Control Payload to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_payload = Pref.bool("Show Trade Payload", show.trade_payload, "Parse and add Trade Payload to protocol tree")

-- Handle changed preferences
function omi_finra_orf_tdds_dfi_v2_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.action_datetime ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_action_datetime then
    show.action_datetime = omi_finra_orf_tdds_dfi_v2_1.prefs.show_action_datetime
    changed = true
  end
  if show.administrative ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_administrative then
    show.administrative = omi_finra_orf_tdds_dfi_v2_1.prefs.show_administrative
    changed = true
  end
  if show.closing_trade_summary_report_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_closing_trade_summary_report_message then
    show.closing_trade_summary_report_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_closing_trade_summary_report_message
    changed = true
  end
  if show.control ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_control then
    show.control = omi_finra_orf_tdds_dfi_v2_1.prefs.show_control
    changed = true
  end
  if show.corrected_trade_information ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_corrected_trade_information then
    show.corrected_trade_information = omi_finra_orf_tdds_dfi_v2_1.prefs.show_corrected_trade_information
    changed = true
  end
  if show.datetime ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_datetime then
    show.datetime = omi_finra_orf_tdds_dfi_v2_1.prefs.show_datetime
    changed = true
  end
  if show.end_of_day_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_end_of_day_message then
    show.end_of_day_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_end_of_day_message
    changed = true
  end
  if show.end_of_retransmission_requests_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_end_of_retransmission_requests_message then
    show.end_of_retransmission_requests_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_end_of_retransmission_requests_message
    changed = true
  end
  if show.end_of_trade_reporting_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_end_of_trade_reporting_message then
    show.end_of_trade_reporting_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_end_of_trade_reporting_message
    changed = true
  end
  if show.end_of_transmissions_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_end_of_transmissions_message then
    show.end_of_transmissions_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_end_of_transmissions_message
    changed = true
  end
  if show.execution_datetime ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_execution_datetime then
    show.execution_datetime = omi_finra_orf_tdds_dfi_v2_1.prefs.show_execution_datetime
    changed = true
  end
  if show.general_administrative_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_general_administrative_message then
    show.general_administrative_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_general_administrative_message
    changed = true
  end
  if show.line_integrity_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_line_integrity_message then
    show.line_integrity_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_line_integrity_message
    changed = true
  end
  if show.market_session_close_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_market_session_close_message then
    show.market_session_close_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_market_session_close_message
    changed = true
  end
  if show.market_session_open_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_market_session_open_message then
    show.market_session_open_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_market_session_open_message
    changed = true
  end
  if show.market_wide_circuit_breaker_event_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_market_wide_circuit_breaker_event_message then
    show.market_wide_circuit_breaker_event_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_market_wide_circuit_breaker_event_message
    changed = true
  end
  if show.message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_message then
    show.message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_message_header then
    show.message_header = omi_finra_orf_tdds_dfi_v2_1.prefs.show_message_header
    changed = true
  end
  if show.mold_udp64 ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_mold_udp64 then
    show.mold_udp64 = omi_finra_orf_tdds_dfi_v2_1.prefs.show_mold_udp64
    changed = true
  end
  if show.original_dissemination_date ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_original_dissemination_date then
    show.original_dissemination_date = omi_finra_orf_tdds_dfi_v2_1.prefs.show_original_dissemination_date
    changed = true
  end
  if show.original_trade_information ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_original_trade_information then
    show.original_trade_information = omi_finra_orf_tdds_dfi_v2_1.prefs.show_original_trade_information
    changed = true
  end
  if show.packet ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_packet then
    show.packet = omi_finra_orf_tdds_dfi_v2_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_packet_header then
    show.packet_header = omi_finra_orf_tdds_dfi_v2_1.prefs.show_packet_header
    changed = true
  end
  if show.sequence_number_reset_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.start_of_day_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_start_of_day_message then
    show.start_of_day_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_start_of_day_message
    changed = true
  end
  if show.trade ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade then
    show.trade = omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade
    changed = true
  end
  if show.trade_cancel_error_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_cancel_error_message then
    show.trade_cancel_error_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_cancel_error_message
    changed = true
  end
  if show.trade_correction_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_correction_message then
    show.trade_correction_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_correction_message
    changed = true
  end
  if show.trade_information ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_information then
    show.trade_information = omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_information
    changed = true
  end
  if show.trade_report_long_form_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_report_long_form_message then
    show.trade_report_long_form_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_report_long_form_message
    changed = true
  end
  if show.trade_report_short_form_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_report_short_form_message then
    show.trade_report_short_form_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_report_short_form_message
    changed = true
  end
  if show.trade_summary_information ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_summary_information then
    show.trade_summary_information = omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_summary_information
    changed = true
  end
  if show.trading_action_message ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_trading_action_message then
    show.trading_action_message = omi_finra_orf_tdds_dfi_v2_1.prefs.show_trading_action_message
    changed = true
  end
  if show.administrative_payload ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_administrative_payload then
    show.administrative_payload = omi_finra_orf_tdds_dfi_v2_1.prefs.show_administrative_payload
    changed = true
  end
  if show.control_payload ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_control_payload then
    show.control_payload = omi_finra_orf_tdds_dfi_v2_1.prefs.show_control_payload
    changed = true
  end
  if show.payload ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_payload then
    show.payload = omi_finra_orf_tdds_dfi_v2_1.prefs.show_payload
    changed = true
  end
  if show.trade_payload ~= omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_payload then
    show.trade_payload = omi_finra_orf_tdds_dfi_v2_1.prefs.show_trade_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Finra Orf Tdds Dfi 2.1
-----------------------------------------------------------------------

-- Fractional Second
finra_orf_tdds_dfi_v2_1.fractional_second = {}

-- Size: Fractional Second
finra_orf_tdds_dfi_v2_1.fractional_second.size = 9

-- Display: Fractional Second
finra_orf_tdds_dfi_v2_1.fractional_second.display = function(value)
  return "Fractional Second: "..value
end

-- Dissect: Fractional Second
finra_orf_tdds_dfi_v2_1.fractional_second.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.fractional_second.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.fractional_second.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.fractional_second, range, value, display)

  return offset + length, value
end

-- Second
finra_orf_tdds_dfi_v2_1.second = {}

-- Size: Second
finra_orf_tdds_dfi_v2_1.second.size = 2

-- Display: Second
finra_orf_tdds_dfi_v2_1.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
finra_orf_tdds_dfi_v2_1.second.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.second.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.second, range, value, display)

  return offset + length, value
end

-- Minute
finra_orf_tdds_dfi_v2_1.minute = {}

-- Size: Minute
finra_orf_tdds_dfi_v2_1.minute.size = 2

-- Display: Minute
finra_orf_tdds_dfi_v2_1.minute.display = function(value)
  return "Minute: "..value
end

-- Dissect: Minute
finra_orf_tdds_dfi_v2_1.minute.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.minute.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.minute.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.minute, range, value, display)

  return offset + length, value
end

-- Hour
finra_orf_tdds_dfi_v2_1.hour = {}

-- Size: Hour
finra_orf_tdds_dfi_v2_1.hour.size = 2

-- Display: Hour
finra_orf_tdds_dfi_v2_1.hour.display = function(value)
  return "Hour: "..value
end

-- Dissect: Hour
finra_orf_tdds_dfi_v2_1.hour.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.hour.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.hour.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.hour, range, value, display)

  return offset + length, value
end

-- Day
finra_orf_tdds_dfi_v2_1.day = {}

-- Size: Day
finra_orf_tdds_dfi_v2_1.day.size = 2

-- Display: Day
finra_orf_tdds_dfi_v2_1.day.display = function(value)
  return "Day: "..value
end

-- Dissect: Day
finra_orf_tdds_dfi_v2_1.day.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.day, range, value, display)

  return offset + length, value
end

-- Month
finra_orf_tdds_dfi_v2_1.month = {}

-- Size: Month
finra_orf_tdds_dfi_v2_1.month.size = 2

-- Display: Month
finra_orf_tdds_dfi_v2_1.month.display = function(value)
  return "Month: "..value
end

-- Dissect: Month
finra_orf_tdds_dfi_v2_1.month.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.month.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.month, range, value, display)

  return offset + length, value
end

-- Year
finra_orf_tdds_dfi_v2_1.year = {}

-- Size: Year
finra_orf_tdds_dfi_v2_1.year.size = 4

-- Display: Year
finra_orf_tdds_dfi_v2_1.year.display = function(value)
  return "Year: "..value
end

-- Dissect: Year
finra_orf_tdds_dfi_v2_1.year.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.year, range, value, display)

  return offset + length, value
end

-- Datetime
finra_orf_tdds_dfi_v2_1.datetime = {}

-- Calculate size of: Datetime
finra_orf_tdds_dfi_v2_1.datetime.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.year.size

  index = index + finra_orf_tdds_dfi_v2_1.month.size

  index = index + finra_orf_tdds_dfi_v2_1.day.size

  index = index + finra_orf_tdds_dfi_v2_1.hour.size

  index = index + finra_orf_tdds_dfi_v2_1.minute.size

  index = index + finra_orf_tdds_dfi_v2_1.second.size

  index = index + finra_orf_tdds_dfi_v2_1.fractional_second.size

  return index
end

-- Display: Datetime
finra_orf_tdds_dfi_v2_1.datetime.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Datetime
finra_orf_tdds_dfi_v2_1.datetime.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 4 Byte Ascii String
  index, year = finra_orf_tdds_dfi_v2_1.year.dissect(buffer, index, packet, parent)

  -- Month: 2 Byte Ascii String
  index, month = finra_orf_tdds_dfi_v2_1.month.dissect(buffer, index, packet, parent)

  -- Day: 2 Byte Ascii String
  index, day = finra_orf_tdds_dfi_v2_1.day.dissect(buffer, index, packet, parent)

  -- Hour: 2 Byte Ascii String
  index, hour = finra_orf_tdds_dfi_v2_1.hour.dissect(buffer, index, packet, parent)

  -- Minute: 2 Byte Ascii String
  index, minute = finra_orf_tdds_dfi_v2_1.minute.dissect(buffer, index, packet, parent)

  -- Second: 2 Byte Ascii String
  index, second = finra_orf_tdds_dfi_v2_1.second.dissect(buffer, index, packet, parent)

  -- Fractional Second: 9 Byte Ascii String
  index, fractional_second = finra_orf_tdds_dfi_v2_1.fractional_second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Datetime
finra_orf_tdds_dfi_v2_1.datetime.dissect = function(buffer, offset, packet, parent)
  if show.datetime then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.datetime, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.datetime.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.datetime.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.datetime.fields(buffer, offset, packet, parent)
  end
end

-- Market Center Originator Id
finra_orf_tdds_dfi_v2_1.market_center_originator_id = {}

-- Size: Market Center Originator Id
finra_orf_tdds_dfi_v2_1.market_center_originator_id.size = 2

-- Display: Market Center Originator Id
finra_orf_tdds_dfi_v2_1.market_center_originator_id.display = function(value)
  if value == "E" then
    return "Market Center Originator Id: Market Center Independent (E)"
  end
  if value == "u" then
    return "Market Center Originator Id: Other Otc Security (u)"
  end

  return "Market Center Originator Id: Unknown("..value..")"
end

-- Dissect: Market Center Originator Id
finra_orf_tdds_dfi_v2_1.market_center_originator_id.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.market_center_originator_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.market_center_originator_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.market_center_originator_id, range, value, display)

  return offset + length, value
end

-- Trade Identifier
finra_orf_tdds_dfi_v2_1.trade_identifier = {}

-- Size: Trade Identifier
finra_orf_tdds_dfi_v2_1.trade_identifier.size = 8

-- Display: Trade Identifier
finra_orf_tdds_dfi_v2_1.trade_identifier.display = function(value)
  return "Trade Identifier: "..value
end

-- Dissect: Trade Identifier
finra_orf_tdds_dfi_v2_1.trade_identifier.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.trade_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.trade_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.trade_identifier, range, value, display)

  return offset + length, value
end

-- Message Header
finra_orf_tdds_dfi_v2_1.message_header = {}

-- Calculate size of: Message Header
finra_orf_tdds_dfi_v2_1.message_header.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.trade_identifier.size

  index = index + finra_orf_tdds_dfi_v2_1.market_center_originator_id.size

  index = index + finra_orf_tdds_dfi_v2_1.datetime.size(buffer, offset + index)

  return index
end

-- Display: Message Header
finra_orf_tdds_dfi_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
finra_orf_tdds_dfi_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Identifier: 8 Byte Ascii String
  index, trade_identifier = finra_orf_tdds_dfi_v2_1.trade_identifier.dissect(buffer, index, packet, parent)

  -- Market Center Originator Id: 2 Byte Ascii String Enum with 2 values
  index, market_center_originator_id = finra_orf_tdds_dfi_v2_1.market_center_originator_id.dissect(buffer, index, packet, parent)

  -- Datetime: Struct of 7 fields
  index, datetime = finra_orf_tdds_dfi_v2_1.datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
finra_orf_tdds_dfi_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.message_header, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- End Of Trade Reporting Message
finra_orf_tdds_dfi_v2_1.end_of_trade_reporting_message = {}

-- Calculate size of: End Of Trade Reporting Message
finra_orf_tdds_dfi_v2_1.end_of_trade_reporting_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  return index
end

-- Display: End Of Trade Reporting Message
finra_orf_tdds_dfi_v2_1.end_of_trade_reporting_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Trade Reporting Message
finra_orf_tdds_dfi_v2_1.end_of_trade_reporting_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Trade Reporting Message
finra_orf_tdds_dfi_v2_1.end_of_trade_reporting_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_trade_reporting_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.end_of_trade_reporting_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.end_of_trade_reporting_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.end_of_trade_reporting_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.end_of_trade_reporting_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
finra_orf_tdds_dfi_v2_1.sequence_number_reset_message = {}

-- Calculate size of: Sequence Number Reset Message
finra_orf_tdds_dfi_v2_1.sequence_number_reset_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  return index
end

-- Display: Sequence Number Reset Message
finra_orf_tdds_dfi_v2_1.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
finra_orf_tdds_dfi_v2_1.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
finra_orf_tdds_dfi_v2_1.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Line Integrity Message
finra_orf_tdds_dfi_v2_1.line_integrity_message = {}

-- Calculate size of: Line Integrity Message
finra_orf_tdds_dfi_v2_1.line_integrity_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  return index
end

-- Display: Line Integrity Message
finra_orf_tdds_dfi_v2_1.line_integrity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Line Integrity Message
finra_orf_tdds_dfi_v2_1.line_integrity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Line Integrity Message
finra_orf_tdds_dfi_v2_1.line_integrity_message.dissect = function(buffer, offset, packet, parent)
  if show.line_integrity_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.line_integrity_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.line_integrity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.line_integrity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.line_integrity_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmissions Message
finra_orf_tdds_dfi_v2_1.end_of_transmissions_message = {}

-- Calculate size of: End Of Transmissions Message
finra_orf_tdds_dfi_v2_1.end_of_transmissions_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  return index
end

-- Display: End Of Transmissions Message
finra_orf_tdds_dfi_v2_1.end_of_transmissions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmissions Message
finra_orf_tdds_dfi_v2_1.end_of_transmissions_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmissions Message
finra_orf_tdds_dfi_v2_1.end_of_transmissions_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_transmissions_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.end_of_transmissions_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.end_of_transmissions_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.end_of_transmissions_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.end_of_transmissions_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Retransmission Requests Message
finra_orf_tdds_dfi_v2_1.end_of_retransmission_requests_message = {}

-- Calculate size of: End Of Retransmission Requests Message
finra_orf_tdds_dfi_v2_1.end_of_retransmission_requests_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  return index
end

-- Display: End Of Retransmission Requests Message
finra_orf_tdds_dfi_v2_1.end_of_retransmission_requests_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Retransmission Requests Message
finra_orf_tdds_dfi_v2_1.end_of_retransmission_requests_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Retransmission Requests Message
finra_orf_tdds_dfi_v2_1.end_of_retransmission_requests_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_retransmission_requests_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.end_of_retransmission_requests_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.end_of_retransmission_requests_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.end_of_retransmission_requests_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.end_of_retransmission_requests_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Close Message
finra_orf_tdds_dfi_v2_1.market_session_close_message = {}

-- Calculate size of: Market Session Close Message
finra_orf_tdds_dfi_v2_1.market_session_close_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  return index
end

-- Display: Market Session Close Message
finra_orf_tdds_dfi_v2_1.market_session_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Close Message
finra_orf_tdds_dfi_v2_1.market_session_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Close Message
finra_orf_tdds_dfi_v2_1.market_session_close_message.dissect = function(buffer, offset, packet, parent)
  if show.market_session_close_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.market_session_close_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.market_session_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.market_session_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.market_session_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Open Message
finra_orf_tdds_dfi_v2_1.market_session_open_message = {}

-- Calculate size of: Market Session Open Message
finra_orf_tdds_dfi_v2_1.market_session_open_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  return index
end

-- Display: Market Session Open Message
finra_orf_tdds_dfi_v2_1.market_session_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Open Message
finra_orf_tdds_dfi_v2_1.market_session_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Open Message
finra_orf_tdds_dfi_v2_1.market_session_open_message.dissect = function(buffer, offset, packet, parent)
  if show.market_session_open_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.market_session_open_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.market_session_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.market_session_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.market_session_open_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Day Message
finra_orf_tdds_dfi_v2_1.end_of_day_message = {}

-- Calculate size of: End Of Day Message
finra_orf_tdds_dfi_v2_1.end_of_day_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  return index
end

-- Display: End Of Day Message
finra_orf_tdds_dfi_v2_1.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
finra_orf_tdds_dfi_v2_1.end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
finra_orf_tdds_dfi_v2_1.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_day_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.end_of_day_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Day Message
finra_orf_tdds_dfi_v2_1.start_of_day_message = {}

-- Calculate size of: Start Of Day Message
finra_orf_tdds_dfi_v2_1.start_of_day_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  return index
end

-- Display: Start Of Day Message
finra_orf_tdds_dfi_v2_1.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
finra_orf_tdds_dfi_v2_1.start_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
finra_orf_tdds_dfi_v2_1.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_day_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.start_of_day_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.start_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.start_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.start_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Payload
finra_orf_tdds_dfi_v2_1.control_payload = {}

-- Calculate runtime size of: Control Payload
finra_orf_tdds_dfi_v2_1.control_payload.size = function(buffer, offset, control_message_type)
  -- Size of Start Of Day Message
  if control_message_type == "I" then
    return finra_orf_tdds_dfi_v2_1.start_of_day_message.size(buffer, offset)
  end
  -- Size of End Of Day Message
  if control_message_type == "J" then
    return finra_orf_tdds_dfi_v2_1.end_of_day_message.size(buffer, offset)
  end
  -- Size of Market Session Open Message
  if control_message_type == "O" then
    return finra_orf_tdds_dfi_v2_1.market_session_open_message.size(buffer, offset)
  end
  -- Size of Market Session Close Message
  if control_message_type == "O" then
    return finra_orf_tdds_dfi_v2_1.market_session_close_message.size(buffer, offset)
  end
  -- Size of End Of Retransmission Requests Message
  if control_message_type == "K" then
    return finra_orf_tdds_dfi_v2_1.end_of_retransmission_requests_message.size(buffer, offset)
  end
  -- Size of End Of Transmissions Message
  if control_message_type == "Z" then
    return finra_orf_tdds_dfi_v2_1.end_of_transmissions_message.size(buffer, offset)
  end
  -- Size of Line Integrity Message
  if control_message_type == "T" then
    return finra_orf_tdds_dfi_v2_1.line_integrity_message.size(buffer, offset)
  end
  -- Size of Sequence Number Reset Message
  if control_message_type == "L" then
    return finra_orf_tdds_dfi_v2_1.sequence_number_reset_message.size(buffer, offset)
  end
  -- Size of End Of Trade Reporting Message
  if control_message_type == "X" then
    return finra_orf_tdds_dfi_v2_1.end_of_trade_reporting_message.size(buffer, offset)
  end

  return 0
end

-- Display: Control Payload
finra_orf_tdds_dfi_v2_1.control_payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Control Payload
finra_orf_tdds_dfi_v2_1.control_payload.branches = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "I" then
    return finra_orf_tdds_dfi_v2_1.start_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "J" then
    return finra_orf_tdds_dfi_v2_1.end_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Open Message
  if control_message_type == "O" then
    return finra_orf_tdds_dfi_v2_1.market_session_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Close Message
  if control_message_type == "O" then
    return finra_orf_tdds_dfi_v2_1.market_session_close_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Retransmission Requests Message
  if control_message_type == "K" then
    return finra_orf_tdds_dfi_v2_1.end_of_retransmission_requests_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmissions Message
  if control_message_type == "Z" then
    return finra_orf_tdds_dfi_v2_1.end_of_transmissions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Line Integrity Message
  if control_message_type == "T" then
    return finra_orf_tdds_dfi_v2_1.line_integrity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Number Reset Message
  if control_message_type == "L" then
    return finra_orf_tdds_dfi_v2_1.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Trade Reporting Message
  if control_message_type == "X" then
    return finra_orf_tdds_dfi_v2_1.end_of_trade_reporting_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Control Payload
finra_orf_tdds_dfi_v2_1.control_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  if not show.control_payload then
    return finra_orf_tdds_dfi_v2_1.control_payload.branches(buffer, offset, packet, parent, control_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_orf_tdds_dfi_v2_1.control_payload.size(buffer, offset, control_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_orf_tdds_dfi_v2_1.control_payload.display(buffer, packet, parent)
  local element = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.control_payload, range, display)

  return finra_orf_tdds_dfi_v2_1.control_payload.branches(buffer, offset, packet, parent, control_message_type)
end

-- Control Message Type
finra_orf_tdds_dfi_v2_1.control_message_type = {}

-- Size: Control Message Type
finra_orf_tdds_dfi_v2_1.control_message_type.size = 1

-- Display: Control Message Type
finra_orf_tdds_dfi_v2_1.control_message_type.display = function(value)
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
finra_orf_tdds_dfi_v2_1.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Control
finra_orf_tdds_dfi_v2_1.control = {}

-- Calculate size of: Control
finra_orf_tdds_dfi_v2_1.control.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.control_message_type.size

  -- Calculate runtime size of Control Payload field
  local control_payload_offset = offset + index
  local control_payload_type = buffer(control_payload_offset - 1, 1):string()
  index = index + finra_orf_tdds_dfi_v2_1.control_payload.size(buffer, control_payload_offset, control_payload_type)

  return index
end

-- Display: Control
finra_orf_tdds_dfi_v2_1.control.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control
finra_orf_tdds_dfi_v2_1.control.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String Enum with 9 values
  index, control_message_type = finra_orf_tdds_dfi_v2_1.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Payload: Runtime Type with 9 branches
  index = finra_orf_tdds_dfi_v2_1.control_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control
finra_orf_tdds_dfi_v2_1.control.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.control then
    local length = finra_orf_tdds_dfi_v2_1.control.size(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_orf_tdds_dfi_v2_1.control.display(buffer, packet, parent)
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.control, range, display)
  end

  return finra_orf_tdds_dfi_v2_1.control.fields(buffer, offset, packet, parent)
end

-- Reason Code
finra_orf_tdds_dfi_v2_1.reason_code = {}

-- Size: Reason Code
finra_orf_tdds_dfi_v2_1.reason_code.size = 6

-- Display: Reason Code
finra_orf_tdds_dfi_v2_1.reason_code.display = function(value)
  return "Reason Code: "..value
end

-- Dissect: Reason Code
finra_orf_tdds_dfi_v2_1.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Action Datetime
finra_orf_tdds_dfi_v2_1.action_datetime = {}

-- Calculate size of: Action Datetime
finra_orf_tdds_dfi_v2_1.action_datetime.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.year.size

  index = index + finra_orf_tdds_dfi_v2_1.month.size

  index = index + finra_orf_tdds_dfi_v2_1.day.size

  index = index + finra_orf_tdds_dfi_v2_1.hour.size

  index = index + finra_orf_tdds_dfi_v2_1.minute.size

  index = index + finra_orf_tdds_dfi_v2_1.second.size

  index = index + finra_orf_tdds_dfi_v2_1.fractional_second.size

  return index
end

-- Display: Action Datetime
finra_orf_tdds_dfi_v2_1.action_datetime.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Action Datetime
finra_orf_tdds_dfi_v2_1.action_datetime.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 4 Byte Ascii String
  index, year = finra_orf_tdds_dfi_v2_1.year.dissect(buffer, index, packet, parent)

  -- Month: 2 Byte Ascii String
  index, month = finra_orf_tdds_dfi_v2_1.month.dissect(buffer, index, packet, parent)

  -- Day: 2 Byte Ascii String
  index, day = finra_orf_tdds_dfi_v2_1.day.dissect(buffer, index, packet, parent)

  -- Hour: 2 Byte Ascii String
  index, hour = finra_orf_tdds_dfi_v2_1.hour.dissect(buffer, index, packet, parent)

  -- Minute: 2 Byte Ascii String
  index, minute = finra_orf_tdds_dfi_v2_1.minute.dissect(buffer, index, packet, parent)

  -- Second: 2 Byte Ascii String
  index, second = finra_orf_tdds_dfi_v2_1.second.dissect(buffer, index, packet, parent)

  -- Fractional Second: 9 Byte Ascii String
  index, fractional_second = finra_orf_tdds_dfi_v2_1.fractional_second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Action Datetime
finra_orf_tdds_dfi_v2_1.action_datetime.dissect = function(buffer, offset, packet, parent)
  if show.action_datetime then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.action_datetime, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.action_datetime.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.action_datetime.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.action_datetime.fields(buffer, offset, packet, parent)
  end
end

-- Action
finra_orf_tdds_dfi_v2_1.action = {}

-- Size: Action
finra_orf_tdds_dfi_v2_1.action.size = 1

-- Display: Action
finra_orf_tdds_dfi_v2_1.action.display = function(value)
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
finra_orf_tdds_dfi_v2_1.action.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.action, range, value, display)

  return offset + length, value
end

-- Market Wide Circuit Breaker Event Message
finra_orf_tdds_dfi_v2_1.market_wide_circuit_breaker_event_message = {}

-- Calculate size of: Market Wide Circuit Breaker Event Message
finra_orf_tdds_dfi_v2_1.market_wide_circuit_breaker_event_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.action.size

  index = index + finra_orf_tdds_dfi_v2_1.action_datetime.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.reason_code.size

  return index
end

-- Display: Market Wide Circuit Breaker Event Message
finra_orf_tdds_dfi_v2_1.market_wide_circuit_breaker_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Event Message
finra_orf_tdds_dfi_v2_1.market_wide_circuit_breaker_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Action: 1 Byte Ascii String Enum with 4 values
  index, action = finra_orf_tdds_dfi_v2_1.action.dissect(buffer, index, packet, parent)

  -- Action Datetime: Struct of 7 fields
  index, action_datetime = finra_orf_tdds_dfi_v2_1.action_datetime.dissect(buffer, index, packet, parent)

  -- Reason Code: 6 Byte Ascii String
  index, reason_code = finra_orf_tdds_dfi_v2_1.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Event Message
finra_orf_tdds_dfi_v2_1.market_wide_circuit_breaker_event_message.dissect = function(buffer, offset, packet, parent)
  if show.market_wide_circuit_breaker_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.market_wide_circuit_breaker_event_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.market_wide_circuit_breaker_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.market_wide_circuit_breaker_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.market_wide_circuit_breaker_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Symbol
finra_orf_tdds_dfi_v2_1.security_symbol = {}

-- Size: Security Symbol
finra_orf_tdds_dfi_v2_1.security_symbol.size = 14

-- Display: Security Symbol
finra_orf_tdds_dfi_v2_1.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
finra_orf_tdds_dfi_v2_1.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.security_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Trading Action Message
finra_orf_tdds_dfi_v2_1.trading_action_message = {}

-- Calculate size of: Trading Action Message
finra_orf_tdds_dfi_v2_1.trading_action_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.security_symbol.size

  index = index + finra_orf_tdds_dfi_v2_1.action.size

  index = index + finra_orf_tdds_dfi_v2_1.action_datetime.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.reason_code.size

  return index
end

-- Display: Trading Action Message
finra_orf_tdds_dfi_v2_1.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
finra_orf_tdds_dfi_v2_1.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Security Symbol: 14 Byte Ascii String
  index, security_symbol = finra_orf_tdds_dfi_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Action: 1 Byte Ascii String Enum with 4 values
  index, action = finra_orf_tdds_dfi_v2_1.action.dissect(buffer, index, packet, parent)

  -- Action Datetime: Struct of 7 fields
  index, action_datetime = finra_orf_tdds_dfi_v2_1.action_datetime.dissect(buffer, index, packet, parent)

  -- Reason Code: 6 Byte Ascii String
  index, reason_code = finra_orf_tdds_dfi_v2_1.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
finra_orf_tdds_dfi_v2_1.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.trading_action_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Total Security Volume
finra_orf_tdds_dfi_v2_1.total_security_volume = {}

-- Size: Total Security Volume
finra_orf_tdds_dfi_v2_1.total_security_volume.size = 11

-- Display: Total Security Volume
finra_orf_tdds_dfi_v2_1.total_security_volume.display = function(value)
  return "Total Security Volume: "..value
end

-- Dissect: Total Security Volume
finra_orf_tdds_dfi_v2_1.total_security_volume.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.total_security_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.total_security_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.total_security_volume, range, value, display)

  return offset + length, value
end

-- Currency
finra_orf_tdds_dfi_v2_1.currency = {}

-- Size: Currency
finra_orf_tdds_dfi_v2_1.currency.size = 3

-- Display: Currency
finra_orf_tdds_dfi_v2_1.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
finra_orf_tdds_dfi_v2_1.currency.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.currency, range, value, display)

  return offset + length, value
end

-- Net Change Direction
finra_orf_tdds_dfi_v2_1.net_change_direction = {}

-- Size: Net Change Direction
finra_orf_tdds_dfi_v2_1.net_change_direction.size = 1

-- Display: Net Change Direction
finra_orf_tdds_dfi_v2_1.net_change_direction.display = function(value)
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
finra_orf_tdds_dfi_v2_1.net_change_direction.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.net_change_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.net_change_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.net_change_direction, range, value, display)

  return offset + length, value
end

-- Net Change Amount
finra_orf_tdds_dfi_v2_1.net_change_amount = {}

-- Size: Net Change Amount
finra_orf_tdds_dfi_v2_1.net_change_amount.size = 10

-- Display: Net Change Amount
finra_orf_tdds_dfi_v2_1.net_change_amount.display = function(value)
  return "Net Change Amount: "..value
end

-- Dissect: Net Change Amount
finra_orf_tdds_dfi_v2_1.net_change_amount.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.net_change_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.net_change_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.net_change_amount, range, value, display)

  return offset + length, value
end

-- Net Change Denominator
finra_orf_tdds_dfi_v2_1.net_change_denominator = {}

-- Size: Net Change Denominator
finra_orf_tdds_dfi_v2_1.net_change_denominator.size = 1

-- Display: Net Change Denominator
finra_orf_tdds_dfi_v2_1.net_change_denominator.display = function(value)
  return "Net Change Denominator: "..value
end

-- Dissect: Net Change Denominator
finra_orf_tdds_dfi_v2_1.net_change_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.net_change_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.net_change_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.net_change_denominator, range, value, display)

  return offset + length, value
end

-- Reserved
finra_orf_tdds_dfi_v2_1.reserved = {}

-- Size: Reserved
finra_orf_tdds_dfi_v2_1.reserved.size = 1

-- Display: Reserved
finra_orf_tdds_dfi_v2_1.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
finra_orf_tdds_dfi_v2_1.reserved.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.reserved, range, value, display)

  return offset + length, value
end

-- Closing Price
finra_orf_tdds_dfi_v2_1.closing_price = {}

-- Size: Closing Price
finra_orf_tdds_dfi_v2_1.closing_price.size = 12

-- Display: Closing Price
finra_orf_tdds_dfi_v2_1.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
finra_orf_tdds_dfi_v2_1.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Closing Price Denominator
finra_orf_tdds_dfi_v2_1.closing_price_denominator = {}

-- Size: Closing Price Denominator
finra_orf_tdds_dfi_v2_1.closing_price_denominator.size = 1

-- Display: Closing Price Denominator
finra_orf_tdds_dfi_v2_1.closing_price_denominator.display = function(value)
  return "Closing Price Denominator: "..value
end

-- Dissect: Closing Price Denominator
finra_orf_tdds_dfi_v2_1.closing_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.closing_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.closing_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.closing_price_denominator, range, value, display)

  return offset + length, value
end

-- Closing Price Market Center
finra_orf_tdds_dfi_v2_1.closing_price_market_center = {}

-- Size: Closing Price Market Center
finra_orf_tdds_dfi_v2_1.closing_price_market_center.size = 1

-- Display: Closing Price Market Center
finra_orf_tdds_dfi_v2_1.closing_price_market_center.display = function(value)
  if value == "u" then
    return "Closing Price Market Center: Ootc (u)"
  end
  if value == " " then
    return "Closing Price Market Center: Not Applicable (<whitespace>)"
  end

  return "Closing Price Market Center: Unknown("..value..")"
end

-- Dissect: Closing Price Market Center
finra_orf_tdds_dfi_v2_1.closing_price_market_center.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.closing_price_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.closing_price_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.closing_price_market_center, range, value, display)

  return offset + length, value
end

-- Daily Low Price
finra_orf_tdds_dfi_v2_1.daily_low_price = {}

-- Size: Daily Low Price
finra_orf_tdds_dfi_v2_1.daily_low_price.size = 12

-- Display: Daily Low Price
finra_orf_tdds_dfi_v2_1.daily_low_price.display = function(value)
  return "Daily Low Price: "..value
end

-- Dissect: Daily Low Price
finra_orf_tdds_dfi_v2_1.daily_low_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.daily_low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.daily_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.daily_low_price, range, value, display)

  return offset + length, value
end

-- Daily Low Price Denominator
finra_orf_tdds_dfi_v2_1.daily_low_price_denominator = {}

-- Size: Daily Low Price Denominator
finra_orf_tdds_dfi_v2_1.daily_low_price_denominator.size = 1

-- Display: Daily Low Price Denominator
finra_orf_tdds_dfi_v2_1.daily_low_price_denominator.display = function(value)
  return "Daily Low Price Denominator: "..value
end

-- Dissect: Daily Low Price Denominator
finra_orf_tdds_dfi_v2_1.daily_low_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.daily_low_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.daily_low_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.daily_low_price_denominator, range, value, display)

  return offset + length, value
end

-- Daily High Price
finra_orf_tdds_dfi_v2_1.daily_high_price = {}

-- Size: Daily High Price
finra_orf_tdds_dfi_v2_1.daily_high_price.size = 12

-- Display: Daily High Price
finra_orf_tdds_dfi_v2_1.daily_high_price.display = function(value)
  return "Daily High Price: "..value
end

-- Dissect: Daily High Price
finra_orf_tdds_dfi_v2_1.daily_high_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.daily_high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.daily_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.daily_high_price, range, value, display)

  return offset + length, value
end

-- Daily High Price Denominator
finra_orf_tdds_dfi_v2_1.daily_high_price_denominator = {}

-- Size: Daily High Price Denominator
finra_orf_tdds_dfi_v2_1.daily_high_price_denominator.size = 1

-- Display: Daily High Price Denominator
finra_orf_tdds_dfi_v2_1.daily_high_price_denominator.display = function(value)
  return "Daily High Price Denominator: "..value
end

-- Dissect: Daily High Price Denominator
finra_orf_tdds_dfi_v2_1.daily_high_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.daily_high_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.daily_high_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.daily_high_price_denominator, range, value, display)

  return offset + length, value
end

-- Closing Trade Summary Report Message
finra_orf_tdds_dfi_v2_1.closing_trade_summary_report_message = {}

-- Calculate size of: Closing Trade Summary Report Message
finra_orf_tdds_dfi_v2_1.closing_trade_summary_report_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.security_symbol.size

  index = index + finra_orf_tdds_dfi_v2_1.daily_high_price_denominator.size

  index = index + finra_orf_tdds_dfi_v2_1.daily_high_price.size

  index = index + finra_orf_tdds_dfi_v2_1.daily_low_price_denominator.size

  index = index + finra_orf_tdds_dfi_v2_1.daily_low_price.size

  index = index + finra_orf_tdds_dfi_v2_1.closing_price_market_center.size

  index = index + finra_orf_tdds_dfi_v2_1.closing_price_denominator.size

  index = index + finra_orf_tdds_dfi_v2_1.closing_price.size

  index = index + finra_orf_tdds_dfi_v2_1.reserved.size

  index = index + finra_orf_tdds_dfi_v2_1.net_change_denominator.size

  index = index + finra_orf_tdds_dfi_v2_1.net_change_amount.size

  index = index + finra_orf_tdds_dfi_v2_1.net_change_direction.size

  index = index + finra_orf_tdds_dfi_v2_1.currency.size

  index = index + finra_orf_tdds_dfi_v2_1.total_security_volume.size

  return index
end

-- Display: Closing Trade Summary Report Message
finra_orf_tdds_dfi_v2_1.closing_trade_summary_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Trade Summary Report Message
finra_orf_tdds_dfi_v2_1.closing_trade_summary_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Security Symbol: 14 Byte Ascii String
  index, security_symbol = finra_orf_tdds_dfi_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Daily High Price Denominator: 1 Byte Ascii String
  index, daily_high_price_denominator = finra_orf_tdds_dfi_v2_1.daily_high_price_denominator.dissect(buffer, index, packet, parent)

  -- Daily High Price: 12 Byte Ascii String
  index, daily_high_price = finra_orf_tdds_dfi_v2_1.daily_high_price.dissect(buffer, index, packet, parent)

  -- Daily Low Price Denominator: 1 Byte Ascii String
  index, daily_low_price_denominator = finra_orf_tdds_dfi_v2_1.daily_low_price_denominator.dissect(buffer, index, packet, parent)

  -- Daily Low Price: 12 Byte Ascii String
  index, daily_low_price = finra_orf_tdds_dfi_v2_1.daily_low_price.dissect(buffer, index, packet, parent)

  -- Closing Price Market Center: 1 Byte Ascii String Enum with 2 values
  index, closing_price_market_center = finra_orf_tdds_dfi_v2_1.closing_price_market_center.dissect(buffer, index, packet, parent)

  -- Closing Price Denominator: 1 Byte Ascii String
  index, closing_price_denominator = finra_orf_tdds_dfi_v2_1.closing_price_denominator.dissect(buffer, index, packet, parent)

  -- Closing Price: 12 Byte Ascii String
  index, closing_price = finra_orf_tdds_dfi_v2_1.closing_price.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte Ascii String
  index, reserved = finra_orf_tdds_dfi_v2_1.reserved.dissect(buffer, index, packet, parent)

  -- Net Change Denominator: 1 Byte Ascii String
  index, net_change_denominator = finra_orf_tdds_dfi_v2_1.net_change_denominator.dissect(buffer, index, packet, parent)

  -- Net Change Amount: 10 Byte Ascii String
  index, net_change_amount = finra_orf_tdds_dfi_v2_1.net_change_amount.dissect(buffer, index, packet, parent)

  -- Net Change Direction: 1 Byte Ascii String Enum with 3 values
  index, net_change_direction = finra_orf_tdds_dfi_v2_1.net_change_direction.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = finra_orf_tdds_dfi_v2_1.currency.dissect(buffer, index, packet, parent)

  -- Total Security Volume: 11 Byte Ascii String
  index, total_security_volume = finra_orf_tdds_dfi_v2_1.total_security_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Closing Trade Summary Report Message
finra_orf_tdds_dfi_v2_1.closing_trade_summary_report_message.dissect = function(buffer, offset, packet, parent)
  if show.closing_trade_summary_report_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.closing_trade_summary_report_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.closing_trade_summary_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.closing_trade_summary_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.closing_trade_summary_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Text
finra_orf_tdds_dfi_v2_1.text = {}

-- Size: Text
finra_orf_tdds_dfi_v2_1.text.size = 2

-- Display: Text
finra_orf_tdds_dfi_v2_1.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
finra_orf_tdds_dfi_v2_1.text.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.text, range, value, display)

  return offset + length, value
end

-- General Administrative Message
finra_orf_tdds_dfi_v2_1.general_administrative_message = {}

-- Calculate size of: General Administrative Message
finra_orf_tdds_dfi_v2_1.general_administrative_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.text.size

  return index
end

-- Display: General Administrative Message
finra_orf_tdds_dfi_v2_1.general_administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Administrative Message
finra_orf_tdds_dfi_v2_1.general_administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Text: 2 Byte Ascii String
  index, text = finra_orf_tdds_dfi_v2_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: General Administrative Message
finra_orf_tdds_dfi_v2_1.general_administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.general_administrative_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.general_administrative_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.general_administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.general_administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.general_administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Payload
finra_orf_tdds_dfi_v2_1.administrative_payload = {}

-- Calculate runtime size of: Administrative Payload
finra_orf_tdds_dfi_v2_1.administrative_payload.size = function(buffer, offset, administrative_message_type)
  -- Size of General Administrative Message
  if administrative_message_type == "A" then
    return finra_orf_tdds_dfi_v2_1.general_administrative_message.size(buffer, offset)
  end
  -- Size of Closing Trade Summary Report Message
  if administrative_message_type == "2" then
    return finra_orf_tdds_dfi_v2_1.closing_trade_summary_report_message.size(buffer, offset)
  end
  -- Size of Trading Action Message
  if administrative_message_type == "H" then
    return finra_orf_tdds_dfi_v2_1.trading_action_message.size(buffer, offset)
  end
  -- Size of Market Wide Circuit Breaker Event Message
  if administrative_message_type == "M" then
    return finra_orf_tdds_dfi_v2_1.market_wide_circuit_breaker_event_message.size(buffer, offset)
  end

  return 0
end

-- Display: Administrative Payload
finra_orf_tdds_dfi_v2_1.administrative_payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Administrative Payload
finra_orf_tdds_dfi_v2_1.administrative_payload.branches = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect General Administrative Message
  if administrative_message_type == "A" then
    return finra_orf_tdds_dfi_v2_1.general_administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Closing Trade Summary Report Message
  if administrative_message_type == "2" then
    return finra_orf_tdds_dfi_v2_1.closing_trade_summary_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if administrative_message_type == "H" then
    return finra_orf_tdds_dfi_v2_1.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Event Message
  if administrative_message_type == "M" then
    return finra_orf_tdds_dfi_v2_1.market_wide_circuit_breaker_event_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Administrative Payload
finra_orf_tdds_dfi_v2_1.administrative_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  if not show.administrative_payload then
    return finra_orf_tdds_dfi_v2_1.administrative_payload.branches(buffer, offset, packet, parent, administrative_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_orf_tdds_dfi_v2_1.administrative_payload.size(buffer, offset, administrative_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_orf_tdds_dfi_v2_1.administrative_payload.display(buffer, packet, parent)
  local element = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.administrative_payload, range, display)

  return finra_orf_tdds_dfi_v2_1.administrative_payload.branches(buffer, offset, packet, parent, administrative_message_type)
end

-- Administrative Message Type
finra_orf_tdds_dfi_v2_1.administrative_message_type = {}

-- Size: Administrative Message Type
finra_orf_tdds_dfi_v2_1.administrative_message_type.size = 1

-- Display: Administrative Message Type
finra_orf_tdds_dfi_v2_1.administrative_message_type.display = function(value)
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
finra_orf_tdds_dfi_v2_1.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Administrative
finra_orf_tdds_dfi_v2_1.administrative = {}

-- Calculate size of: Administrative
finra_orf_tdds_dfi_v2_1.administrative.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.administrative_message_type.size

  -- Calculate runtime size of Administrative Payload field
  local administrative_payload_offset = offset + index
  local administrative_payload_type = buffer(administrative_payload_offset - 1, 1):string()
  index = index + finra_orf_tdds_dfi_v2_1.administrative_payload.size(buffer, administrative_payload_offset, administrative_payload_type)

  return index
end

-- Display: Administrative
finra_orf_tdds_dfi_v2_1.administrative.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative
finra_orf_tdds_dfi_v2_1.administrative.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String Enum with 4 values
  index, administrative_message_type = finra_orf_tdds_dfi_v2_1.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Payload: Runtime Type with 4 branches
  index = finra_orf_tdds_dfi_v2_1.administrative_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative
finra_orf_tdds_dfi_v2_1.administrative.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.administrative then
    local length = finra_orf_tdds_dfi_v2_1.administrative.size(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_orf_tdds_dfi_v2_1.administrative.display(buffer, packet, parent)
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.administrative, range, display)
  end

  return finra_orf_tdds_dfi_v2_1.administrative.fields(buffer, offset, packet, parent)
end

-- Price Change Indicator
finra_orf_tdds_dfi_v2_1.price_change_indicator = {}

-- Size: Price Change Indicator
finra_orf_tdds_dfi_v2_1.price_change_indicator.size = 1

-- Display: Price Change Indicator
finra_orf_tdds_dfi_v2_1.price_change_indicator.display = function(value)
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
finra_orf_tdds_dfi_v2_1.price_change_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.price_change_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.price_change_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.price_change_indicator, range, value, display)

  return offset + length, value
end

-- Last Sale Price Market Center
finra_orf_tdds_dfi_v2_1.last_sale_price_market_center = {}

-- Size: Last Sale Price Market Center
finra_orf_tdds_dfi_v2_1.last_sale_price_market_center.size = 1

-- Display: Last Sale Price Market Center
finra_orf_tdds_dfi_v2_1.last_sale_price_market_center.display = function(value)
  if value == "u" then
    return "Last Sale Price Market Center: Ootc (u)"
  end
  if value == " " then
    return "Last Sale Price Market Center: Not Applicable (<whitespace>)"
  end

  return "Last Sale Price Market Center: Unknown("..value..")"
end

-- Dissect: Last Sale Price Market Center
finra_orf_tdds_dfi_v2_1.last_sale_price_market_center.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.last_sale_price_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.last_sale_price_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.last_sale_price_market_center, range, value, display)

  return offset + length, value
end

-- Last Sale Price
finra_orf_tdds_dfi_v2_1.last_sale_price = {}

-- Size: Last Sale Price
finra_orf_tdds_dfi_v2_1.last_sale_price.size = 12

-- Display: Last Sale Price
finra_orf_tdds_dfi_v2_1.last_sale_price.display = function(value)
  return "Last Sale Price: "..value
end

-- Dissect: Last Sale Price
finra_orf_tdds_dfi_v2_1.last_sale_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.last_sale_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.last_sale_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.last_sale_price, range, value, display)

  return offset + length, value
end

-- Last Sale Price Denominator
finra_orf_tdds_dfi_v2_1.last_sale_price_denominator = {}

-- Size: Last Sale Price Denominator
finra_orf_tdds_dfi_v2_1.last_sale_price_denominator.size = 1

-- Display: Last Sale Price Denominator
finra_orf_tdds_dfi_v2_1.last_sale_price_denominator.display = function(value)
  return "Last Sale Price Denominator: "..value
end

-- Dissect: Last Sale Price Denominator
finra_orf_tdds_dfi_v2_1.last_sale_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.last_sale_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.last_sale_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.last_sale_price_denominator, range, value, display)

  return offset + length, value
end

-- Low Price
finra_orf_tdds_dfi_v2_1.low_price = {}

-- Size: Low Price
finra_orf_tdds_dfi_v2_1.low_price.size = 12

-- Display: Low Price
finra_orf_tdds_dfi_v2_1.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
finra_orf_tdds_dfi_v2_1.low_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.low_price, range, value, display)

  return offset + length, value
end

-- Low Price Denominator
finra_orf_tdds_dfi_v2_1.low_price_denominator = {}

-- Size: Low Price Denominator
finra_orf_tdds_dfi_v2_1.low_price_denominator.size = 1

-- Display: Low Price Denominator
finra_orf_tdds_dfi_v2_1.low_price_denominator.display = function(value)
  return "Low Price Denominator: "..value
end

-- Dissect: Low Price Denominator
finra_orf_tdds_dfi_v2_1.low_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.low_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.low_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.low_price_denominator, range, value, display)

  return offset + length, value
end

-- High Price
finra_orf_tdds_dfi_v2_1.high_price = {}

-- Size: High Price
finra_orf_tdds_dfi_v2_1.high_price.size = 12

-- Display: High Price
finra_orf_tdds_dfi_v2_1.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
finra_orf_tdds_dfi_v2_1.high_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.high_price, range, value, display)

  return offset + length, value
end

-- High Price Denominator
finra_orf_tdds_dfi_v2_1.high_price_denominator = {}

-- Size: High Price Denominator
finra_orf_tdds_dfi_v2_1.high_price_denominator.size = 1

-- Display: High Price Denominator
finra_orf_tdds_dfi_v2_1.high_price_denominator.display = function(value)
  return "High Price Denominator: "..value
end

-- Dissect: High Price Denominator
finra_orf_tdds_dfi_v2_1.high_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.high_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.high_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.high_price_denominator, range, value, display)

  return offset + length, value
end

-- Trade Summary Information
finra_orf_tdds_dfi_v2_1.trade_summary_information = {}

-- Calculate size of: Trade Summary Information
finra_orf_tdds_dfi_v2_1.trade_summary_information.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.high_price_denominator.size

  index = index + finra_orf_tdds_dfi_v2_1.high_price.size

  index = index + finra_orf_tdds_dfi_v2_1.low_price_denominator.size

  index = index + finra_orf_tdds_dfi_v2_1.low_price.size

  index = index + finra_orf_tdds_dfi_v2_1.last_sale_price_denominator.size

  index = index + finra_orf_tdds_dfi_v2_1.last_sale_price.size

  index = index + finra_orf_tdds_dfi_v2_1.last_sale_price_market_center.size

  index = index + finra_orf_tdds_dfi_v2_1.total_security_volume.size

  index = index + finra_orf_tdds_dfi_v2_1.price_change_indicator.size

  return index
end

-- Display: Trade Summary Information
finra_orf_tdds_dfi_v2_1.trade_summary_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Summary Information
finra_orf_tdds_dfi_v2_1.trade_summary_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- High Price Denominator: 1 Byte Ascii String
  index, high_price_denominator = finra_orf_tdds_dfi_v2_1.high_price_denominator.dissect(buffer, index, packet, parent)

  -- High Price: 12 Byte Ascii String
  index, high_price = finra_orf_tdds_dfi_v2_1.high_price.dissect(buffer, index, packet, parent)

  -- Low Price Denominator: 1 Byte Ascii String
  index, low_price_denominator = finra_orf_tdds_dfi_v2_1.low_price_denominator.dissect(buffer, index, packet, parent)

  -- Low Price: 12 Byte Ascii String
  index, low_price = finra_orf_tdds_dfi_v2_1.low_price.dissect(buffer, index, packet, parent)

  -- Last Sale Price Denominator: 1 Byte Ascii String
  index, last_sale_price_denominator = finra_orf_tdds_dfi_v2_1.last_sale_price_denominator.dissect(buffer, index, packet, parent)

  -- Last Sale Price: 12 Byte Ascii String
  index, last_sale_price = finra_orf_tdds_dfi_v2_1.last_sale_price.dissect(buffer, index, packet, parent)

  -- Last Sale Price Market Center: 1 Byte Ascii String Enum with 2 values
  index, last_sale_price_market_center = finra_orf_tdds_dfi_v2_1.last_sale_price_market_center.dissect(buffer, index, packet, parent)

  -- Total Security Volume: 11 Byte Ascii String
  index, total_security_volume = finra_orf_tdds_dfi_v2_1.total_security_volume.dissect(buffer, index, packet, parent)

  -- Price Change Indicator: 1 Byte Ascii String Enum with 8 values
  index, price_change_indicator = finra_orf_tdds_dfi_v2_1.price_change_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Summary Information
finra_orf_tdds_dfi_v2_1.trade_summary_information.dissect = function(buffer, offset, packet, parent)
  if show.trade_summary_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.trade_summary_information, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.trade_summary_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.trade_summary_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.trade_summary_information.fields(buffer, offset, packet, parent)
  end
end

-- Sellers Sale Days
finra_orf_tdds_dfi_v2_1.sellers_sale_days = {}

-- Size: Sellers Sale Days
finra_orf_tdds_dfi_v2_1.sellers_sale_days.size = 2

-- Display: Sellers Sale Days
finra_orf_tdds_dfi_v2_1.sellers_sale_days.display = function(value)
  return "Sellers Sale Days: "..value
end

-- Dissect: Sellers Sale Days
finra_orf_tdds_dfi_v2_1.sellers_sale_days.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.sellers_sale_days.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.sellers_sale_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Sale Condition Level 4
finra_orf_tdds_dfi_v2_1.sale_condition_level_4 = {}

-- Size: Sale Condition Level 4
finra_orf_tdds_dfi_v2_1.sale_condition_level_4.size = 1

-- Display: Sale Condition Level 4
finra_orf_tdds_dfi_v2_1.sale_condition_level_4.display = function(value)
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
finra_orf_tdds_dfi_v2_1.sale_condition_level_4.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.sale_condition_level_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.sale_condition_level_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_4, range, value, display)

  return offset + length, value
end

-- Sale Condition Level 3
finra_orf_tdds_dfi_v2_1.sale_condition_level_3 = {}

-- Size: Sale Condition Level 3
finra_orf_tdds_dfi_v2_1.sale_condition_level_3.size = 1

-- Display: Sale Condition Level 3
finra_orf_tdds_dfi_v2_1.sale_condition_level_3.display = function(value)
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
finra_orf_tdds_dfi_v2_1.sale_condition_level_3.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.sale_condition_level_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.sale_condition_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_3, range, value, display)

  return offset + length, value
end

-- Sale Condition Level 2
finra_orf_tdds_dfi_v2_1.sale_condition_level_2 = {}

-- Size: Sale Condition Level 2
finra_orf_tdds_dfi_v2_1.sale_condition_level_2.size = 1

-- Display: Sale Condition Level 2
finra_orf_tdds_dfi_v2_1.sale_condition_level_2.display = function(value)
  return "Sale Condition Level 2: "..value
end

-- Dissect: Sale Condition Level 2
finra_orf_tdds_dfi_v2_1.sale_condition_level_2.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.sale_condition_level_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.sale_condition_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_2, range, value, display)

  return offset + length, value
end

-- Sale Condition Level 1
finra_orf_tdds_dfi_v2_1.sale_condition_level_1 = {}

-- Size: Sale Condition Level 1
finra_orf_tdds_dfi_v2_1.sale_condition_level_1.size = 1

-- Display: Sale Condition Level 1
finra_orf_tdds_dfi_v2_1.sale_condition_level_1.display = function(value)
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
finra_orf_tdds_dfi_v2_1.sale_condition_level_1.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.sale_condition_level_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.sale_condition_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_1, range, value, display)

  return offset + length, value
end

-- Execution Datetime
finra_orf_tdds_dfi_v2_1.execution_datetime = {}

-- Calculate size of: Execution Datetime
finra_orf_tdds_dfi_v2_1.execution_datetime.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.year.size

  index = index + finra_orf_tdds_dfi_v2_1.month.size

  index = index + finra_orf_tdds_dfi_v2_1.day.size

  index = index + finra_orf_tdds_dfi_v2_1.hour.size

  index = index + finra_orf_tdds_dfi_v2_1.minute.size

  index = index + finra_orf_tdds_dfi_v2_1.second.size

  index = index + finra_orf_tdds_dfi_v2_1.fractional_second.size

  return index
end

-- Display: Execution Datetime
finra_orf_tdds_dfi_v2_1.execution_datetime.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Datetime
finra_orf_tdds_dfi_v2_1.execution_datetime.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 4 Byte Ascii String
  index, year = finra_orf_tdds_dfi_v2_1.year.dissect(buffer, index, packet, parent)

  -- Month: 2 Byte Ascii String
  index, month = finra_orf_tdds_dfi_v2_1.month.dissect(buffer, index, packet, parent)

  -- Day: 2 Byte Ascii String
  index, day = finra_orf_tdds_dfi_v2_1.day.dissect(buffer, index, packet, parent)

  -- Hour: 2 Byte Ascii String
  index, hour = finra_orf_tdds_dfi_v2_1.hour.dissect(buffer, index, packet, parent)

  -- Minute: 2 Byte Ascii String
  index, minute = finra_orf_tdds_dfi_v2_1.minute.dissect(buffer, index, packet, parent)

  -- Second: 2 Byte Ascii String
  index, second = finra_orf_tdds_dfi_v2_1.second.dissect(buffer, index, packet, parent)

  -- Fractional Second: 9 Byte Ascii String
  index, fractional_second = finra_orf_tdds_dfi_v2_1.fractional_second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Datetime
finra_orf_tdds_dfi_v2_1.execution_datetime.dissect = function(buffer, offset, packet, parent)
  if show.execution_datetime then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.execution_datetime, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.execution_datetime.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.execution_datetime.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.execution_datetime.fields(buffer, offset, packet, parent)
  end
end

-- As Of Indicator
finra_orf_tdds_dfi_v2_1.as_of_indicator = {}

-- Size: As Of Indicator
finra_orf_tdds_dfi_v2_1.as_of_indicator.size = 1

-- Display: As Of Indicator
finra_orf_tdds_dfi_v2_1.as_of_indicator.display = function(value)
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
finra_orf_tdds_dfi_v2_1.as_of_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.as_of_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.as_of_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.as_of_indicator, range, value, display)

  return offset + length, value
end

-- Trade Price
finra_orf_tdds_dfi_v2_1.trade_price = {}

-- Size: Trade Price
finra_orf_tdds_dfi_v2_1.trade_price.size = 12

-- Display: Trade Price
finra_orf_tdds_dfi_v2_1.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
finra_orf_tdds_dfi_v2_1.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.trade_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Price Denominator
finra_orf_tdds_dfi_v2_1.trade_price_denominator = {}

-- Size: Trade Price Denominator
finra_orf_tdds_dfi_v2_1.trade_price_denominator.size = 1

-- Display: Trade Price Denominator
finra_orf_tdds_dfi_v2_1.trade_price_denominator.display = function(value)
  return "Trade Price Denominator: "..value
end

-- Dissect: Trade Price Denominator
finra_orf_tdds_dfi_v2_1.trade_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.trade_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.trade_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.trade_price_denominator, range, value, display)

  return offset + length, value
end

-- Report Volume
finra_orf_tdds_dfi_v2_1.report_volume = {}

-- Size: Report Volume
finra_orf_tdds_dfi_v2_1.report_volume.size = 8

-- Display: Report Volume
finra_orf_tdds_dfi_v2_1.report_volume.display = function(value)
  return "Report Volume: "..value
end

-- Dissect: Report Volume
finra_orf_tdds_dfi_v2_1.report_volume.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.report_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.report_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.report_volume, range, value, display)

  return offset + length, value
end

-- Corrected Trade Information
finra_orf_tdds_dfi_v2_1.corrected_trade_information = {}

-- Calculate size of: Corrected Trade Information
finra_orf_tdds_dfi_v2_1.corrected_trade_information.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.report_volume.size

  index = index + finra_orf_tdds_dfi_v2_1.trade_price_denominator.size

  index = index + finra_orf_tdds_dfi_v2_1.trade_price.size

  index = index + finra_orf_tdds_dfi_v2_1.currency.size

  index = index + finra_orf_tdds_dfi_v2_1.as_of_indicator.size

  index = index + finra_orf_tdds_dfi_v2_1.execution_datetime.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.sale_condition_level_1.size

  index = index + finra_orf_tdds_dfi_v2_1.sale_condition_level_2.size

  index = index + finra_orf_tdds_dfi_v2_1.sale_condition_level_3.size

  index = index + finra_orf_tdds_dfi_v2_1.sale_condition_level_4.size

  index = index + finra_orf_tdds_dfi_v2_1.sellers_sale_days.size

  return index
end

-- Display: Corrected Trade Information
finra_orf_tdds_dfi_v2_1.corrected_trade_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Trade Information
finra_orf_tdds_dfi_v2_1.corrected_trade_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Report Volume: 8 Byte Ascii String
  index, report_volume = finra_orf_tdds_dfi_v2_1.report_volume.dissect(buffer, index, packet, parent)

  -- Trade Price Denominator: 1 Byte Ascii String
  index, trade_price_denominator = finra_orf_tdds_dfi_v2_1.trade_price_denominator.dissect(buffer, index, packet, parent)

  -- Trade Price: 12 Byte Ascii String
  index, trade_price = finra_orf_tdds_dfi_v2_1.trade_price.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = finra_orf_tdds_dfi_v2_1.currency.dissect(buffer, index, packet, parent)

  -- As Of Indicator: 1 Byte Ascii String Enum with 3 values
  index, as_of_indicator = finra_orf_tdds_dfi_v2_1.as_of_indicator.dissect(buffer, index, packet, parent)

  -- Execution Datetime: Struct of 7 fields
  index, execution_datetime = finra_orf_tdds_dfi_v2_1.execution_datetime.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 1: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_1 = finra_orf_tdds_dfi_v2_1.sale_condition_level_1.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 2: 1 Byte Ascii String
  index, sale_condition_level_2 = finra_orf_tdds_dfi_v2_1.sale_condition_level_2.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 3: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_3 = finra_orf_tdds_dfi_v2_1.sale_condition_level_3.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 4: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_4 = finra_orf_tdds_dfi_v2_1.sale_condition_level_4.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: 2 Byte Ascii String
  index, sellers_sale_days = finra_orf_tdds_dfi_v2_1.sellers_sale_days.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Trade Information
finra_orf_tdds_dfi_v2_1.corrected_trade_information.dissect = function(buffer, offset, packet, parent)
  if show.corrected_trade_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.corrected_trade_information, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.corrected_trade_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.corrected_trade_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.corrected_trade_information.fields(buffer, offset, packet, parent)
  end
end

-- Original Trade Information
finra_orf_tdds_dfi_v2_1.original_trade_information = {}

-- Calculate size of: Original Trade Information
finra_orf_tdds_dfi_v2_1.original_trade_information.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.report_volume.size

  index = index + finra_orf_tdds_dfi_v2_1.trade_price_denominator.size

  index = index + finra_orf_tdds_dfi_v2_1.trade_price.size

  index = index + finra_orf_tdds_dfi_v2_1.currency.size

  index = index + finra_orf_tdds_dfi_v2_1.as_of_indicator.size

  index = index + finra_orf_tdds_dfi_v2_1.execution_datetime.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.sale_condition_level_1.size

  index = index + finra_orf_tdds_dfi_v2_1.sale_condition_level_2.size

  index = index + finra_orf_tdds_dfi_v2_1.sale_condition_level_3.size

  index = index + finra_orf_tdds_dfi_v2_1.sale_condition_level_4.size

  index = index + finra_orf_tdds_dfi_v2_1.sellers_sale_days.size

  return index
end

-- Display: Original Trade Information
finra_orf_tdds_dfi_v2_1.original_trade_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Original Trade Information
finra_orf_tdds_dfi_v2_1.original_trade_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Report Volume: 8 Byte Ascii String
  index, report_volume = finra_orf_tdds_dfi_v2_1.report_volume.dissect(buffer, index, packet, parent)

  -- Trade Price Denominator: 1 Byte Ascii String
  index, trade_price_denominator = finra_orf_tdds_dfi_v2_1.trade_price_denominator.dissect(buffer, index, packet, parent)

  -- Trade Price: 12 Byte Ascii String
  index, trade_price = finra_orf_tdds_dfi_v2_1.trade_price.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = finra_orf_tdds_dfi_v2_1.currency.dissect(buffer, index, packet, parent)

  -- As Of Indicator: 1 Byte Ascii String Enum with 3 values
  index, as_of_indicator = finra_orf_tdds_dfi_v2_1.as_of_indicator.dissect(buffer, index, packet, parent)

  -- Execution Datetime: Struct of 7 fields
  index, execution_datetime = finra_orf_tdds_dfi_v2_1.execution_datetime.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 1: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_1 = finra_orf_tdds_dfi_v2_1.sale_condition_level_1.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 2: 1 Byte Ascii String
  index, sale_condition_level_2 = finra_orf_tdds_dfi_v2_1.sale_condition_level_2.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 3: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_3 = finra_orf_tdds_dfi_v2_1.sale_condition_level_3.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 4: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_4 = finra_orf_tdds_dfi_v2_1.sale_condition_level_4.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: 2 Byte Ascii String
  index, sellers_sale_days = finra_orf_tdds_dfi_v2_1.sellers_sale_days.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Trade Information
finra_orf_tdds_dfi_v2_1.original_trade_information.dissect = function(buffer, offset, packet, parent)
  if show.original_trade_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.original_trade_information, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.original_trade_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.original_trade_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.original_trade_information.fields(buffer, offset, packet, parent)
  end
end

-- Report Function
finra_orf_tdds_dfi_v2_1.report_function = {}

-- Size: Report Function
finra_orf_tdds_dfi_v2_1.report_function.size = 1

-- Display: Report Function
finra_orf_tdds_dfi_v2_1.report_function.display = function(value)
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
finra_orf_tdds_dfi_v2_1.report_function.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.report_function.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.report_function.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.report_function, range, value, display)

  return offset + length, value
end

-- Original Dissemination Date
finra_orf_tdds_dfi_v2_1.original_dissemination_date = {}

-- Calculate size of: Original Dissemination Date
finra_orf_tdds_dfi_v2_1.original_dissemination_date.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.year.size

  index = index + finra_orf_tdds_dfi_v2_1.month.size

  index = index + finra_orf_tdds_dfi_v2_1.day.size

  return index
end

-- Display: Original Dissemination Date
finra_orf_tdds_dfi_v2_1.original_dissemination_date.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Original Dissemination Date
finra_orf_tdds_dfi_v2_1.original_dissemination_date.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 4 Byte Ascii String
  index, year = finra_orf_tdds_dfi_v2_1.year.dissect(buffer, index, packet, parent)

  -- Month: 2 Byte Ascii String
  index, month = finra_orf_tdds_dfi_v2_1.month.dissect(buffer, index, packet, parent)

  -- Day: 2 Byte Ascii String
  index, day = finra_orf_tdds_dfi_v2_1.day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Dissemination Date
finra_orf_tdds_dfi_v2_1.original_dissemination_date.dissect = function(buffer, offset, packet, parent)
  if show.original_dissemination_date then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.original_dissemination_date, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.original_dissemination_date.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.original_dissemination_date.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.original_dissemination_date.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
finra_orf_tdds_dfi_v2_1.trade_correction_message = {}

-- Calculate size of: Trade Correction Message
finra_orf_tdds_dfi_v2_1.trade_correction_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.security_symbol.size

  index = index + finra_orf_tdds_dfi_v2_1.original_dissemination_date.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.report_function.size

  index = index + finra_orf_tdds_dfi_v2_1.original_trade_information.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.corrected_trade_information.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.trade_summary_information.size(buffer, offset + index)

  return index
end

-- Display: Trade Correction Message
finra_orf_tdds_dfi_v2_1.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
finra_orf_tdds_dfi_v2_1.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Security Symbol: 14 Byte Ascii String
  index, security_symbol = finra_orf_tdds_dfi_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Original Dissemination Date: Struct of 3 fields
  index, original_dissemination_date = finra_orf_tdds_dfi_v2_1.original_dissemination_date.dissect(buffer, index, packet, parent)

  -- Report Function: 1 Byte Ascii String Enum with 3 values
  index, report_function = finra_orf_tdds_dfi_v2_1.report_function.dissect(buffer, index, packet, parent)

  -- Original Trade Information: Struct of 11 fields
  index, original_trade_information = finra_orf_tdds_dfi_v2_1.original_trade_information.dissect(buffer, index, packet, parent)

  -- Corrected Trade Information: Struct of 11 fields
  index, corrected_trade_information = finra_orf_tdds_dfi_v2_1.corrected_trade_information.dissect(buffer, index, packet, parent)

  -- Trade Summary Information: Struct of 9 fields
  index, trade_summary_information = finra_orf_tdds_dfi_v2_1.trade_summary_information.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
finra_orf_tdds_dfi_v2_1.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.trade_correction_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Error Message
finra_orf_tdds_dfi_v2_1.trade_cancel_error_message = {}

-- Calculate size of: Trade Cancel Error Message
finra_orf_tdds_dfi_v2_1.trade_cancel_error_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.security_symbol.size

  index = index + finra_orf_tdds_dfi_v2_1.original_dissemination_date.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.report_function.size

  index = index + finra_orf_tdds_dfi_v2_1.original_trade_information.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.trade_summary_information.size(buffer, offset + index)

  return index
end

-- Display: Trade Cancel Error Message
finra_orf_tdds_dfi_v2_1.trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
finra_orf_tdds_dfi_v2_1.trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Security Symbol: 14 Byte Ascii String
  index, security_symbol = finra_orf_tdds_dfi_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Original Dissemination Date: Struct of 3 fields
  index, original_dissemination_date = finra_orf_tdds_dfi_v2_1.original_dissemination_date.dissect(buffer, index, packet, parent)

  -- Report Function: 1 Byte Ascii String Enum with 3 values
  index, report_function = finra_orf_tdds_dfi_v2_1.report_function.dissect(buffer, index, packet, parent)

  -- Original Trade Information: Struct of 11 fields
  index, original_trade_information = finra_orf_tdds_dfi_v2_1.original_trade_information.dissect(buffer, index, packet, parent)

  -- Trade Summary Information: Struct of 9 fields
  index, trade_summary_information = finra_orf_tdds_dfi_v2_1.trade_summary_information.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
finra_orf_tdds_dfi_v2_1.trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancel_error_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.trade_cancel_error_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Information
finra_orf_tdds_dfi_v2_1.trade_information = {}

-- Calculate size of: Trade Information
finra_orf_tdds_dfi_v2_1.trade_information.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.report_volume.size

  index = index + finra_orf_tdds_dfi_v2_1.trade_price_denominator.size

  index = index + finra_orf_tdds_dfi_v2_1.trade_price.size

  index = index + finra_orf_tdds_dfi_v2_1.currency.size

  index = index + finra_orf_tdds_dfi_v2_1.as_of_indicator.size

  index = index + finra_orf_tdds_dfi_v2_1.execution_datetime.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.sale_condition_level_1.size

  index = index + finra_orf_tdds_dfi_v2_1.sale_condition_level_2.size

  index = index + finra_orf_tdds_dfi_v2_1.sale_condition_level_3.size

  index = index + finra_orf_tdds_dfi_v2_1.sale_condition_level_4.size

  index = index + finra_orf_tdds_dfi_v2_1.sellers_sale_days.size

  index = index + finra_orf_tdds_dfi_v2_1.price_change_indicator.size

  return index
end

-- Display: Trade Information
finra_orf_tdds_dfi_v2_1.trade_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Information
finra_orf_tdds_dfi_v2_1.trade_information.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Report Volume: 8 Byte Ascii String
  index, report_volume = finra_orf_tdds_dfi_v2_1.report_volume.dissect(buffer, index, packet, parent)

  -- Trade Price Denominator: 1 Byte Ascii String
  index, trade_price_denominator = finra_orf_tdds_dfi_v2_1.trade_price_denominator.dissect(buffer, index, packet, parent)

  -- Trade Price: 12 Byte Ascii String
  index, trade_price = finra_orf_tdds_dfi_v2_1.trade_price.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = finra_orf_tdds_dfi_v2_1.currency.dissect(buffer, index, packet, parent)

  -- As Of Indicator: 1 Byte Ascii String Enum with 3 values
  index, as_of_indicator = finra_orf_tdds_dfi_v2_1.as_of_indicator.dissect(buffer, index, packet, parent)

  -- Execution Datetime: Struct of 7 fields
  index, execution_datetime = finra_orf_tdds_dfi_v2_1.execution_datetime.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 1: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_1 = finra_orf_tdds_dfi_v2_1.sale_condition_level_1.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 2: 1 Byte Ascii String
  index, sale_condition_level_2 = finra_orf_tdds_dfi_v2_1.sale_condition_level_2.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 3: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_3 = finra_orf_tdds_dfi_v2_1.sale_condition_level_3.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 4: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_4 = finra_orf_tdds_dfi_v2_1.sale_condition_level_4.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: 2 Byte Ascii String
  index, sellers_sale_days = finra_orf_tdds_dfi_v2_1.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Price Change Indicator: 1 Byte Ascii String Enum with 8 values
  index, price_change_indicator = finra_orf_tdds_dfi_v2_1.price_change_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Information
finra_orf_tdds_dfi_v2_1.trade_information.dissect = function(buffer, offset, packet, parent)
  if show.trade_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.trade_information, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.trade_information.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.trade_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.trade_information.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Long Form Message
finra_orf_tdds_dfi_v2_1.trade_report_long_form_message = {}

-- Calculate size of: Trade Report Long Form Message
finra_orf_tdds_dfi_v2_1.trade_report_long_form_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.security_symbol.size

  index = index + finra_orf_tdds_dfi_v2_1.original_dissemination_date.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.trade_information.size(buffer, offset + index)

  return index
end

-- Display: Trade Report Long Form Message
finra_orf_tdds_dfi_v2_1.trade_report_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Long Form Message
finra_orf_tdds_dfi_v2_1.trade_report_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Security Symbol: 14 Byte Ascii String
  index, security_symbol = finra_orf_tdds_dfi_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Original Dissemination Date: Struct of 3 fields
  index, original_dissemination_date = finra_orf_tdds_dfi_v2_1.original_dissemination_date.dissect(buffer, index, packet, parent)

  -- Trade Information: Struct of 12 fields
  index, trade_information = finra_orf_tdds_dfi_v2_1.trade_information.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Long Form Message
finra_orf_tdds_dfi_v2_1.trade_report_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_report_long_form_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.trade_report_long_form_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.trade_report_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.trade_report_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.trade_report_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Report Volume Short
finra_orf_tdds_dfi_v2_1.report_volume_short = {}

-- Size: Report Volume Short
finra_orf_tdds_dfi_v2_1.report_volume_short.size = 6

-- Display: Report Volume Short
finra_orf_tdds_dfi_v2_1.report_volume_short.display = function(value)
  return "Report Volume Short: "..value
end

-- Dissect: Report Volume Short
finra_orf_tdds_dfi_v2_1.report_volume_short.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.report_volume_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.report_volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.report_volume_short, range, value, display)

  return offset + length, value
end

-- Trade Price Short
finra_orf_tdds_dfi_v2_1.trade_price_short = {}

-- Size: Trade Price Short
finra_orf_tdds_dfi_v2_1.trade_price_short.size = 6

-- Display: Trade Price Short
finra_orf_tdds_dfi_v2_1.trade_price_short.display = function(value)
  return "Trade Price Short: "..value
end

-- Dissect: Trade Price Short
finra_orf_tdds_dfi_v2_1.trade_price_short.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.trade_price_short.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1.trade_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.trade_price_short, range, value, display)

  return offset + length, value
end

-- Security Symbol Short
finra_orf_tdds_dfi_v2_1.security_symbol_short = {}

-- Size: Security Symbol Short
finra_orf_tdds_dfi_v2_1.security_symbol_short.size = 5

-- Display: Security Symbol Short
finra_orf_tdds_dfi_v2_1.security_symbol_short.display = function(value)
  return "Security Symbol Short: "..value
end

-- Dissect: Security Symbol Short
finra_orf_tdds_dfi_v2_1.security_symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.security_symbol_short.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.security_symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.security_symbol_short, range, value, display)

  return offset + length, value
end

-- Trade Report Short Form Message
finra_orf_tdds_dfi_v2_1.trade_report_short_form_message = {}

-- Calculate size of: Trade Report Short Form Message
finra_orf_tdds_dfi_v2_1.trade_report_short_form_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.message_header.size(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1.security_symbol_short.size

  index = index + finra_orf_tdds_dfi_v2_1.sale_condition_level_1.size

  index = index + finra_orf_tdds_dfi_v2_1.trade_price_denominator.size

  index = index + finra_orf_tdds_dfi_v2_1.trade_price_short.size

  index = index + finra_orf_tdds_dfi_v2_1.report_volume_short.size

  index = index + finra_orf_tdds_dfi_v2_1.price_change_indicator.size

  return index
end

-- Display: Trade Report Short Form Message
finra_orf_tdds_dfi_v2_1.trade_report_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Short Form Message
finra_orf_tdds_dfi_v2_1.trade_report_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Security Symbol Short: 5 Byte Ascii String
  index, security_symbol_short = finra_orf_tdds_dfi_v2_1.security_symbol_short.dissect(buffer, index, packet, parent)

  -- Sale Condition Level 1: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_1 = finra_orf_tdds_dfi_v2_1.sale_condition_level_1.dissect(buffer, index, packet, parent)

  -- Trade Price Denominator: 1 Byte Ascii String
  index, trade_price_denominator = finra_orf_tdds_dfi_v2_1.trade_price_denominator.dissect(buffer, index, packet, parent)

  -- Trade Price Short: 6 Byte Ascii String
  index, trade_price_short = finra_orf_tdds_dfi_v2_1.trade_price_short.dissect(buffer, index, packet, parent)

  -- Report Volume Short: 6 Byte Ascii String
  index, report_volume_short = finra_orf_tdds_dfi_v2_1.report_volume_short.dissect(buffer, index, packet, parent)

  -- Price Change Indicator: 1 Byte Ascii String Enum with 8 values
  index, price_change_indicator = finra_orf_tdds_dfi_v2_1.price_change_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Short Form Message
finra_orf_tdds_dfi_v2_1.trade_report_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_report_short_form_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.trade_report_short_form_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.trade_report_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.trade_report_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.trade_report_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Payload
finra_orf_tdds_dfi_v2_1.trade_payload = {}

-- Calculate runtime size of: Trade Payload
finra_orf_tdds_dfi_v2_1.trade_payload.size = function(buffer, offset, trade_message_type)
  -- Size of Trade Report Short Form Message
  if trade_message_type == "5" then
    return finra_orf_tdds_dfi_v2_1.trade_report_short_form_message.size(buffer, offset)
  end
  -- Size of Trade Report Long Form Message
  if trade_message_type == "6" then
    return finra_orf_tdds_dfi_v2_1.trade_report_long_form_message.size(buffer, offset)
  end
  -- Size of Trade Cancel Error Message
  if trade_message_type == "7" then
    return finra_orf_tdds_dfi_v2_1.trade_cancel_error_message.size(buffer, offset)
  end
  -- Size of Trade Correction Message
  if trade_message_type == "8" then
    return finra_orf_tdds_dfi_v2_1.trade_correction_message.size(buffer, offset)
  end

  return 0
end

-- Display: Trade Payload
finra_orf_tdds_dfi_v2_1.trade_payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Trade Payload
finra_orf_tdds_dfi_v2_1.trade_payload.branches = function(buffer, offset, packet, parent, trade_message_type)
  -- Dissect Trade Report Short Form Message
  if trade_message_type == "5" then
    return finra_orf_tdds_dfi_v2_1.trade_report_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Long Form Message
  if trade_message_type == "6" then
    return finra_orf_tdds_dfi_v2_1.trade_report_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error Message
  if trade_message_type == "7" then
    return finra_orf_tdds_dfi_v2_1.trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if trade_message_type == "8" then
    return finra_orf_tdds_dfi_v2_1.trade_correction_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Trade Payload
finra_orf_tdds_dfi_v2_1.trade_payload.dissect = function(buffer, offset, packet, parent, trade_message_type)
  if not show.trade_payload then
    return finra_orf_tdds_dfi_v2_1.trade_payload.branches(buffer, offset, packet, parent, trade_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_orf_tdds_dfi_v2_1.trade_payload.size(buffer, offset, trade_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_orf_tdds_dfi_v2_1.trade_payload.display(buffer, packet, parent)
  local element = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.trade_payload, range, display)

  return finra_orf_tdds_dfi_v2_1.trade_payload.branches(buffer, offset, packet, parent, trade_message_type)
end

-- Trade Message Type
finra_orf_tdds_dfi_v2_1.trade_message_type = {}

-- Size: Trade Message Type
finra_orf_tdds_dfi_v2_1.trade_message_type.size = 1

-- Display: Trade Message Type
finra_orf_tdds_dfi_v2_1.trade_message_type.display = function(value)
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
finra_orf_tdds_dfi_v2_1.trade_message_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.trade_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.trade_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.trade_message_type, range, value, display)

  return offset + length, value
end

-- Trade
finra_orf_tdds_dfi_v2_1.trade = {}

-- Calculate size of: Trade
finra_orf_tdds_dfi_v2_1.trade.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.trade_message_type.size

  -- Calculate runtime size of Trade Payload field
  local trade_payload_offset = offset + index
  local trade_payload_type = buffer(trade_payload_offset - 1, 1):string()
  index = index + finra_orf_tdds_dfi_v2_1.trade_payload.size(buffer, trade_payload_offset, trade_payload_type)

  return index
end

-- Display: Trade
finra_orf_tdds_dfi_v2_1.trade.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade
finra_orf_tdds_dfi_v2_1.trade.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Message Type: 1 Byte Ascii String Enum with 4 values
  index, trade_message_type = finra_orf_tdds_dfi_v2_1.trade_message_type.dissect(buffer, index, packet, parent)

  -- Trade Payload: Runtime Type with 4 branches
  index = finra_orf_tdds_dfi_v2_1.trade_payload.dissect(buffer, index, packet, parent, trade_message_type)

  return index
end

-- Dissect: Trade
finra_orf_tdds_dfi_v2_1.trade.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.trade then
    local length = finra_orf_tdds_dfi_v2_1.trade.size(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_orf_tdds_dfi_v2_1.trade.display(buffer, packet, parent)
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.trade, range, display)
  end

  return finra_orf_tdds_dfi_v2_1.trade.fields(buffer, offset, packet, parent)
end

-- Payload
finra_orf_tdds_dfi_v2_1.payload = {}

-- Calculate runtime size of: Payload
finra_orf_tdds_dfi_v2_1.payload.size = function(buffer, offset, message_category)
  -- Size of Trade
  if message_category == "T" then
    return finra_orf_tdds_dfi_v2_1.trade.size(buffer, offset)
  end
  -- Size of Administrative
  if message_category == "A" then
    return finra_orf_tdds_dfi_v2_1.administrative.size(buffer, offset)
  end
  -- Size of Control
  if message_category == "C" then
    return finra_orf_tdds_dfi_v2_1.control.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
finra_orf_tdds_dfi_v2_1.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
finra_orf_tdds_dfi_v2_1.payload.branches = function(buffer, offset, packet, parent, message_category)
  -- Dissect Trade
  if message_category == "T" then
    return finra_orf_tdds_dfi_v2_1.trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Administrative
  if message_category == "A" then
    return finra_orf_tdds_dfi_v2_1.administrative.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control
  if message_category == "C" then
    return finra_orf_tdds_dfi_v2_1.control.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
finra_orf_tdds_dfi_v2_1.payload.dissect = function(buffer, offset, packet, parent, message_category)
  if not show.payload then
    return finra_orf_tdds_dfi_v2_1.payload.branches(buffer, offset, packet, parent, message_category)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_orf_tdds_dfi_v2_1.payload.size(buffer, offset, message_category)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_orf_tdds_dfi_v2_1.payload.display(buffer, packet, parent)
  local element = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.payload, range, display)

  return finra_orf_tdds_dfi_v2_1.payload.branches(buffer, offset, packet, parent, message_category)
end

-- Message Category
finra_orf_tdds_dfi_v2_1.message_category = {}

-- Size: Message Category
finra_orf_tdds_dfi_v2_1.message_category.size = 1

-- Display: Message Category
finra_orf_tdds_dfi_v2_1.message_category.display = function(value)
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
finra_orf_tdds_dfi_v2_1.message_category.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.message_category, range, value, display)

  return offset + length, value
end

-- Length
finra_orf_tdds_dfi_v2_1.length = {}

-- Size: Length
finra_orf_tdds_dfi_v2_1.length.size = 2

-- Display: Length
finra_orf_tdds_dfi_v2_1.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
finra_orf_tdds_dfi_v2_1.length.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = finra_orf_tdds_dfi_v2_1.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.length, range, value, display)

  return offset + length, value
end

-- Mold Udp64
finra_orf_tdds_dfi_v2_1.mold_udp64 = {}

-- Calculate size of: Mold Udp64
finra_orf_tdds_dfi_v2_1.mold_udp64.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.length.size

  index = index + finra_orf_tdds_dfi_v2_1.message_category.size

  return index
end

-- Display: Mold Udp64
finra_orf_tdds_dfi_v2_1.mold_udp64.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mold Udp64
finra_orf_tdds_dfi_v2_1.mold_udp64.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = finra_orf_tdds_dfi_v2_1.length.dissect(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String Enum with 3 values
  index, message_category = finra_orf_tdds_dfi_v2_1.message_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mold Udp64
finra_orf_tdds_dfi_v2_1.mold_udp64.dissect = function(buffer, offset, packet, parent)
  if show.mold_udp64 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.mold_udp64, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.mold_udp64.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.mold_udp64.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.mold_udp64.fields(buffer, offset, packet, parent)
  end
end

-- Message
finra_orf_tdds_dfi_v2_1.message = {}

-- Calculate size of: Message
finra_orf_tdds_dfi_v2_1.message.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.mold_udp64.size(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + finra_orf_tdds_dfi_v2_1.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
finra_orf_tdds_dfi_v2_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
finra_orf_tdds_dfi_v2_1.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Mold Udp64: Struct of 2 fields
  index, mold_udp64 = finra_orf_tdds_dfi_v2_1.mold_udp64.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 3 branches
  index = finra_orf_tdds_dfi_v2_1.payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
finra_orf_tdds_dfi_v2_1.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = finra_orf_tdds_dfi_v2_1.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_orf_tdds_dfi_v2_1.message.display(buffer, packet, parent)
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.message, range, display)
  end

  return finra_orf_tdds_dfi_v2_1.message.fields(buffer, offset, packet, parent)
end

-- Count
finra_orf_tdds_dfi_v2_1.count = {}

-- Size: Count
finra_orf_tdds_dfi_v2_1.count.size = 2

-- Display: Count
finra_orf_tdds_dfi_v2_1.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
finra_orf_tdds_dfi_v2_1.count.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = finra_orf_tdds_dfi_v2_1.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.count, range, value, display)

  return offset + length, value
end

-- Sequence
finra_orf_tdds_dfi_v2_1.sequence = {}

-- Size: Sequence
finra_orf_tdds_dfi_v2_1.sequence.size = 8

-- Display: Sequence
finra_orf_tdds_dfi_v2_1.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
finra_orf_tdds_dfi_v2_1.sequence.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.sequence.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = finra_orf_tdds_dfi_v2_1.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session
finra_orf_tdds_dfi_v2_1.session = {}

-- Size: Session
finra_orf_tdds_dfi_v2_1.session.size = 10

-- Display: Session
finra_orf_tdds_dfi_v2_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
finra_orf_tdds_dfi_v2_1.session.dissect = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
finra_orf_tdds_dfi_v2_1.packet_header = {}

-- Calculate size of: Packet Header
finra_orf_tdds_dfi_v2_1.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1.session.size

  index = index + finra_orf_tdds_dfi_v2_1.sequence.size

  index = index + finra_orf_tdds_dfi_v2_1.count.size

  return index
end

-- Display: Packet Header
finra_orf_tdds_dfi_v2_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
finra_orf_tdds_dfi_v2_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = finra_orf_tdds_dfi_v2_1.session.dissect(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = finra_orf_tdds_dfi_v2_1.sequence.dissect(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = finra_orf_tdds_dfi_v2_1.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
finra_orf_tdds_dfi_v2_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_orf_tdds_dfi_v2_1.fields.packet_header, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
finra_orf_tdds_dfi_v2_1.packet = {}

-- Dissect Packet
finra_orf_tdds_dfi_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = finra_orf_tdds_dfi_v2_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = finra_orf_tdds_dfi_v2_1.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_finra_orf_tdds_dfi_v2_1.init()
end

-- Dissector for Finra Orf Tdds Dfi 2.1
function omi_finra_orf_tdds_dfi_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_finra_orf_tdds_dfi_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_finra_orf_tdds_dfi_v2_1, buffer(), omi_finra_orf_tdds_dfi_v2_1.description, "("..buffer:len().." Bytes)")
  return finra_orf_tdds_dfi_v2_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_finra_orf_tdds_dfi_v2_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
finra_orf_tdds_dfi_v2_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Finra Orf Tdds Dfi 2.1
local function omi_finra_orf_tdds_dfi_v2_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not finra_orf_tdds_dfi_v2_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_finra_orf_tdds_dfi_v2_1
  omi_finra_orf_tdds_dfi_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Finra Orf Tdds Dfi 2.1
omi_finra_orf_tdds_dfi_v2_1:register_heuristic("udp", omi_finra_orf_tdds_dfi_v2_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Financial Industry Regulatory Authority
--   Version: 2.1
--   Date: Tuesday, May 10, 2022
--   Specification: TDDS-2.1-MOLD.pdf
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
