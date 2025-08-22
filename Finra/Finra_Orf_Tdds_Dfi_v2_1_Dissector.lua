-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Finra Orf Tdds Dfi 2.1 Protocol
local finra_orf_tdds_dfi_v2_1 = Proto("Finra.Orf.Tdds.Dfi.v2.1.Lua", "Finra Orf Tdds Dfi 2.1")

-- Component Tables
local show = {}
local format = {}
local finra_orf_tdds_dfi_v2_1_display = {}
local finra_orf_tdds_dfi_v2_1_dissect = {}
local finra_orf_tdds_dfi_v2_1_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Finra Orf Tdds Dfi 2.1 Fields
finra_orf_tdds_dfi_v2_1.fields.action = ProtoField.new("Action", "finra.orf.tdds.dfi.v2.1.action", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.action_datetime = ProtoField.new("Action Datetime", "finra.orf.tdds.dfi.v2.1.actiondatetime", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.administrative = ProtoField.new("Administrative", "finra.orf.tdds.dfi.v2.1.administrative", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "finra.orf.tdds.dfi.v2.1.administrativemessagetype", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.administrative_payload = ProtoField.new("Administrative Payload", "finra.orf.tdds.dfi.v2.1.administrativepayload", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.as_of_indicator = ProtoField.new("As Of Indicator", "finra.orf.tdds.dfi.v2.1.asofindicator", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.closing_price = ProtoField.new("Closing Price", "finra.orf.tdds.dfi.v2.1.closingprice", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.closing_price_denominator = ProtoField.new("Closing Price Denominator", "finra.orf.tdds.dfi.v2.1.closingpricedenominator", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.closing_price_market_center = ProtoField.new("Closing Price Market Center", "finra.orf.tdds.dfi.v2.1.closingpricemarketcenter", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.control = ProtoField.new("Control", "finra.orf.tdds.dfi.v2.1.control", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.control_message_type = ProtoField.new("Control Message Type", "finra.orf.tdds.dfi.v2.1.controlmessagetype", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.control_payload = ProtoField.new("Control Payload", "finra.orf.tdds.dfi.v2.1.controlpayload", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.corrected_trade_information = ProtoField.new("Corrected Trade Information", "finra.orf.tdds.dfi.v2.1.correctedtradeinformation", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.count = ProtoField.new("Count", "finra.orf.tdds.dfi.v2.1.count", ftypes.UINT16)
finra_orf_tdds_dfi_v2_1.fields.currency = ProtoField.new("Currency", "finra.orf.tdds.dfi.v2.1.currency", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.daily_high_price = ProtoField.new("Daily High Price", "finra.orf.tdds.dfi.v2.1.dailyhighprice", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.daily_high_price_denominator = ProtoField.new("Daily High Price Denominator", "finra.orf.tdds.dfi.v2.1.dailyhighpricedenominator", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.daily_low_price = ProtoField.new("Daily Low Price", "finra.orf.tdds.dfi.v2.1.dailylowprice", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.daily_low_price_denominator = ProtoField.new("Daily Low Price Denominator", "finra.orf.tdds.dfi.v2.1.dailylowpricedenominator", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.datetime = ProtoField.new("Datetime", "finra.orf.tdds.dfi.v2.1.datetime", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.day = ProtoField.new("Day", "finra.orf.tdds.dfi.v2.1.day", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.execution_datetime = ProtoField.new("Execution Datetime", "finra.orf.tdds.dfi.v2.1.executiondatetime", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.fractional_second = ProtoField.new("Fractional Second", "finra.orf.tdds.dfi.v2.1.fractionalsecond", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.high_price = ProtoField.new("High Price", "finra.orf.tdds.dfi.v2.1.highprice", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.high_price_denominator = ProtoField.new("High Price Denominator", "finra.orf.tdds.dfi.v2.1.highpricedenominator", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.hour = ProtoField.new("Hour", "finra.orf.tdds.dfi.v2.1.hour", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.last_sale_price = ProtoField.new("Last Sale Price", "finra.orf.tdds.dfi.v2.1.lastsaleprice", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.last_sale_price_denominator = ProtoField.new("Last Sale Price Denominator", "finra.orf.tdds.dfi.v2.1.lastsalepricedenominator", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.last_sale_price_market_center = ProtoField.new("Last Sale Price Market Center", "finra.orf.tdds.dfi.v2.1.lastsalepricemarketcenter", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.length = ProtoField.new("Length", "finra.orf.tdds.dfi.v2.1.length", ftypes.UINT16)
finra_orf_tdds_dfi_v2_1.fields.low_price = ProtoField.new("Low Price", "finra.orf.tdds.dfi.v2.1.lowprice", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.low_price_denominator = ProtoField.new("Low Price Denominator", "finra.orf.tdds.dfi.v2.1.lowpricedenominator", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.market_center_originator_id = ProtoField.new("Market Center Originator Id", "finra.orf.tdds.dfi.v2.1.marketcenteroriginatorid", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.message = ProtoField.new("Message", "finra.orf.tdds.dfi.v2.1.message", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.message_category = ProtoField.new("Message Category", "finra.orf.tdds.dfi.v2.1.messagecategory", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.message_header = ProtoField.new("Message Header", "finra.orf.tdds.dfi.v2.1.messageheader", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.minute = ProtoField.new("Minute", "finra.orf.tdds.dfi.v2.1.minute", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.mold_udp64 = ProtoField.new("Mold Udp64", "finra.orf.tdds.dfi.v2.1.moldudp64", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.month = ProtoField.new("Month", "finra.orf.tdds.dfi.v2.1.month", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.net_change_amount = ProtoField.new("Net Change Amount", "finra.orf.tdds.dfi.v2.1.netchangeamount", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.net_change_denominator = ProtoField.new("Net Change Denominator", "finra.orf.tdds.dfi.v2.1.netchangedenominator", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.net_change_direction = ProtoField.new("Net Change Direction", "finra.orf.tdds.dfi.v2.1.netchangedirection", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.original_dissemination_date = ProtoField.new("Original Dissemination Date", "finra.orf.tdds.dfi.v2.1.originaldisseminationdate", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.original_trade_information = ProtoField.new("Original Trade Information", "finra.orf.tdds.dfi.v2.1.originaltradeinformation", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.packet = ProtoField.new("Packet", "finra.orf.tdds.dfi.v2.1.packet", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.packet_header = ProtoField.new("Packet Header", "finra.orf.tdds.dfi.v2.1.packetheader", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.payload = ProtoField.new("Payload", "finra.orf.tdds.dfi.v2.1.payload", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.price_change_indicator = ProtoField.new("Price Change Indicator", "finra.orf.tdds.dfi.v2.1.pricechangeindicator", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.reason_code = ProtoField.new("Reason Code", "finra.orf.tdds.dfi.v2.1.reasoncode", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.report_function = ProtoField.new("Report Function", "finra.orf.tdds.dfi.v2.1.reportfunction", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.report_volume = ProtoField.new("Report Volume", "finra.orf.tdds.dfi.v2.1.reportvolume", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.report_volume_short = ProtoField.new("Report Volume Short", "finra.orf.tdds.dfi.v2.1.reportvolumeshort", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.reserved = ProtoField.new("Reserved", "finra.orf.tdds.dfi.v2.1.reserved", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_1 = ProtoField.new("Sale Condition Level 1", "finra.orf.tdds.dfi.v2.1.saleconditionlevel1", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_2 = ProtoField.new("Sale Condition Level 2", "finra.orf.tdds.dfi.v2.1.saleconditionlevel2", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_3 = ProtoField.new("Sale Condition Level 3", "finra.orf.tdds.dfi.v2.1.saleconditionlevel3", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_4 = ProtoField.new("Sale Condition Level 4", "finra.orf.tdds.dfi.v2.1.saleconditionlevel4", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.second = ProtoField.new("Second", "finra.orf.tdds.dfi.v2.1.second", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.security_symbol = ProtoField.new("Security Symbol", "finra.orf.tdds.dfi.v2.1.securitysymbol", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.security_symbol_short = ProtoField.new("Security Symbol Short", "finra.orf.tdds.dfi.v2.1.securitysymbolshort", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.sellers_sale_days = ProtoField.new("Sellers Sale Days", "finra.orf.tdds.dfi.v2.1.sellerssaledays", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.sequence = ProtoField.new("Sequence", "finra.orf.tdds.dfi.v2.1.sequence", ftypes.UINT64)
finra_orf_tdds_dfi_v2_1.fields.session = ProtoField.new("Session", "finra.orf.tdds.dfi.v2.1.session", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.text = ProtoField.new("Text", "finra.orf.tdds.dfi.v2.1.text", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.total_security_volume = ProtoField.new("Total Security Volume", "finra.orf.tdds.dfi.v2.1.totalsecurityvolume", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.trade = ProtoField.new("Trade", "finra.orf.tdds.dfi.v2.1.trade", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.trade_identifier = ProtoField.new("Trade Identifier", "finra.orf.tdds.dfi.v2.1.tradeidentifier", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.trade_information = ProtoField.new("Trade Information", "finra.orf.tdds.dfi.v2.1.tradeinformation", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.trade_message_type = ProtoField.new("Trade Message Type", "finra.orf.tdds.dfi.v2.1.trademessagetype", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.trade_payload = ProtoField.new("Trade Payload", "finra.orf.tdds.dfi.v2.1.tradepayload", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.trade_price = ProtoField.new("Trade Price", "finra.orf.tdds.dfi.v2.1.tradeprice", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.trade_price_denominator = ProtoField.new("Trade Price Denominator", "finra.orf.tdds.dfi.v2.1.tradepricedenominator", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.trade_price_short = ProtoField.new("Trade Price Short", "finra.orf.tdds.dfi.v2.1.tradepriceshort", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.trade_summary_information = ProtoField.new("Trade Summary Information", "finra.orf.tdds.dfi.v2.1.tradesummaryinformation", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.year = ProtoField.new("Year", "finra.orf.tdds.dfi.v2.1.year", ftypes.STRING)

-- Finra Orf Tdds Dfi 2.1 messages
finra_orf_tdds_dfi_v2_1.fields.closing_trade_summary_report_message = ProtoField.new("Closing Trade Summary Report Message", "finra.orf.tdds.dfi.v2.1.closingtradesummaryreportmessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.end_of_day_message = ProtoField.new("End Of Day Message", "finra.orf.tdds.dfi.v2.1.endofdaymessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.end_of_retransmission_requests_message = ProtoField.new("End Of Retransmission Requests Message", "finra.orf.tdds.dfi.v2.1.endofretransmissionrequestsmessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.end_of_trade_reporting_message = ProtoField.new("End Of Trade Reporting Message", "finra.orf.tdds.dfi.v2.1.endoftradereportingmessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.end_of_transmissions_message = ProtoField.new("End Of Transmissions Message", "finra.orf.tdds.dfi.v2.1.endoftransmissionsmessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.general_administrative_message = ProtoField.new("General Administrative Message", "finra.orf.tdds.dfi.v2.1.generaladministrativemessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "finra.orf.tdds.dfi.v2.1.lineintegritymessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.market_session_close_message = ProtoField.new("Market Session Close Message", "finra.orf.tdds.dfi.v2.1.marketsessionclosemessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.market_session_open_message = ProtoField.new("Market Session Open Message", "finra.orf.tdds.dfi.v2.1.marketsessionopenmessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.market_wide_circuit_breaker_event_message = ProtoField.new("Market Wide Circuit Breaker Event Message", "finra.orf.tdds.dfi.v2.1.marketwidecircuitbreakereventmessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "finra.orf.tdds.dfi.v2.1.sequencenumberresetmessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "finra.orf.tdds.dfi.v2.1.startofdaymessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "finra.orf.tdds.dfi.v2.1.tradecancelerrormessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "finra.orf.tdds.dfi.v2.1.tradecorrectionmessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.trade_report_long_form_message = ProtoField.new("Trade Report Long Form Message", "finra.orf.tdds.dfi.v2.1.tradereportlongformmessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.trade_report_short_form_message = ProtoField.new("Trade Report Short Form Message", "finra.orf.tdds.dfi.v2.1.tradereportshortformmessage", ftypes.STRING)
finra_orf_tdds_dfi_v2_1.fields.trading_action_message = ProtoField.new("Trading Action Message", "finra.orf.tdds.dfi.v2.1.tradingactionmessage", ftypes.STRING)

-- Finra Orf Tdds Dfi 2.1 generated fields
finra_orf_tdds_dfi_v2_1.fields.message_index = ProtoField.new("Message Index", "finra.orf.tdds.dfi.v2.1.messageindex", ftypes.UINT16)

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
finra_orf_tdds_dfi_v2_1.prefs.show_action_datetime = Pref.bool("Show Action Datetime", show.action_datetime, "Parse and add Action Datetime to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_administrative = Pref.bool("Show Administrative", show.administrative, "Parse and add Administrative to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_closing_trade_summary_report_message = Pref.bool("Show Closing Trade Summary Report Message", show.closing_trade_summary_report_message, "Parse and add Closing Trade Summary Report Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_control = Pref.bool("Show Control", show.control, "Parse and add Control to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_corrected_trade_information = Pref.bool("Show Corrected Trade Information", show.corrected_trade_information, "Parse and add Corrected Trade Information to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_datetime = Pref.bool("Show Datetime", show.datetime, "Parse and add Datetime to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_end_of_day_message = Pref.bool("Show End Of Day Message", show.end_of_day_message, "Parse and add End Of Day Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_end_of_retransmission_requests_message = Pref.bool("Show End Of Retransmission Requests Message", show.end_of_retransmission_requests_message, "Parse and add End Of Retransmission Requests Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_end_of_trade_reporting_message = Pref.bool("Show End Of Trade Reporting Message", show.end_of_trade_reporting_message, "Parse and add End Of Trade Reporting Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_end_of_transmissions_message = Pref.bool("Show End Of Transmissions Message", show.end_of_transmissions_message, "Parse and add End Of Transmissions Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_execution_datetime = Pref.bool("Show Execution Datetime", show.execution_datetime, "Parse and add Execution Datetime to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_general_administrative_message = Pref.bool("Show General Administrative Message", show.general_administrative_message, "Parse and add General Administrative Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_line_integrity_message = Pref.bool("Show Line Integrity Message", show.line_integrity_message, "Parse and add Line Integrity Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_market_session_close_message = Pref.bool("Show Market Session Close Message", show.market_session_close_message, "Parse and add Market Session Close Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_market_session_open_message = Pref.bool("Show Market Session Open Message", show.market_session_open_message, "Parse and add Market Session Open Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_market_wide_circuit_breaker_event_message = Pref.bool("Show Market Wide Circuit Breaker Event Message", show.market_wide_circuit_breaker_event_message, "Parse and add Market Wide Circuit Breaker Event Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_mold_udp64 = Pref.bool("Show Mold Udp64", show.mold_udp64, "Parse and add Mold Udp64 to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_original_dissemination_date = Pref.bool("Show Original Dissemination Date", show.original_dissemination_date, "Parse and add Original Dissemination Date to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_original_trade_information = Pref.bool("Show Original Trade Information", show.original_trade_information, "Parse and add Original Trade Information to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_trade = Pref.bool("Show Trade", show.trade, "Parse and add Trade to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_trade_cancel_error_message = Pref.bool("Show Trade Cancel Error Message", show.trade_cancel_error_message, "Parse and add Trade Cancel Error Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_trade_correction_message = Pref.bool("Show Trade Correction Message", show.trade_correction_message, "Parse and add Trade Correction Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_trade_information = Pref.bool("Show Trade Information", show.trade_information, "Parse and add Trade Information to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_trade_report_long_form_message = Pref.bool("Show Trade Report Long Form Message", show.trade_report_long_form_message, "Parse and add Trade Report Long Form Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_trade_report_short_form_message = Pref.bool("Show Trade Report Short Form Message", show.trade_report_short_form_message, "Parse and add Trade Report Short Form Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_trade_summary_information = Pref.bool("Show Trade Summary Information", show.trade_summary_information, "Parse and add Trade Summary Information to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_administrative_payload = Pref.bool("Show Administrative Payload", show.administrative_payload, "Parse and add Administrative Payload to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_control_payload = Pref.bool("Show Control Payload", show.control_payload, "Parse and add Control Payload to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
finra_orf_tdds_dfi_v2_1.prefs.show_trade_payload = Pref.bool("Show Trade Payload", show.trade_payload, "Parse and add Trade Payload to protocol tree")

-- Handle changed preferences
function finra_orf_tdds_dfi_v2_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.action_datetime ~= finra_orf_tdds_dfi_v2_1.prefs.show_action_datetime then
    show.action_datetime = finra_orf_tdds_dfi_v2_1.prefs.show_action_datetime
    changed = true
  end
  if show.administrative ~= finra_orf_tdds_dfi_v2_1.prefs.show_administrative then
    show.administrative = finra_orf_tdds_dfi_v2_1.prefs.show_administrative
    changed = true
  end
  if show.closing_trade_summary_report_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_closing_trade_summary_report_message then
    show.closing_trade_summary_report_message = finra_orf_tdds_dfi_v2_1.prefs.show_closing_trade_summary_report_message
    changed = true
  end
  if show.control ~= finra_orf_tdds_dfi_v2_1.prefs.show_control then
    show.control = finra_orf_tdds_dfi_v2_1.prefs.show_control
    changed = true
  end
  if show.corrected_trade_information ~= finra_orf_tdds_dfi_v2_1.prefs.show_corrected_trade_information then
    show.corrected_trade_information = finra_orf_tdds_dfi_v2_1.prefs.show_corrected_trade_information
    changed = true
  end
  if show.datetime ~= finra_orf_tdds_dfi_v2_1.prefs.show_datetime then
    show.datetime = finra_orf_tdds_dfi_v2_1.prefs.show_datetime
    changed = true
  end
  if show.end_of_day_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_end_of_day_message then
    show.end_of_day_message = finra_orf_tdds_dfi_v2_1.prefs.show_end_of_day_message
    changed = true
  end
  if show.end_of_retransmission_requests_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_end_of_retransmission_requests_message then
    show.end_of_retransmission_requests_message = finra_orf_tdds_dfi_v2_1.prefs.show_end_of_retransmission_requests_message
    changed = true
  end
  if show.end_of_trade_reporting_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_end_of_trade_reporting_message then
    show.end_of_trade_reporting_message = finra_orf_tdds_dfi_v2_1.prefs.show_end_of_trade_reporting_message
    changed = true
  end
  if show.end_of_transmissions_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_end_of_transmissions_message then
    show.end_of_transmissions_message = finra_orf_tdds_dfi_v2_1.prefs.show_end_of_transmissions_message
    changed = true
  end
  if show.execution_datetime ~= finra_orf_tdds_dfi_v2_1.prefs.show_execution_datetime then
    show.execution_datetime = finra_orf_tdds_dfi_v2_1.prefs.show_execution_datetime
    changed = true
  end
  if show.general_administrative_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_general_administrative_message then
    show.general_administrative_message = finra_orf_tdds_dfi_v2_1.prefs.show_general_administrative_message
    changed = true
  end
  if show.line_integrity_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_line_integrity_message then
    show.line_integrity_message = finra_orf_tdds_dfi_v2_1.prefs.show_line_integrity_message
    changed = true
  end
  if show.market_session_close_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_market_session_close_message then
    show.market_session_close_message = finra_orf_tdds_dfi_v2_1.prefs.show_market_session_close_message
    changed = true
  end
  if show.market_session_open_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_market_session_open_message then
    show.market_session_open_message = finra_orf_tdds_dfi_v2_1.prefs.show_market_session_open_message
    changed = true
  end
  if show.market_wide_circuit_breaker_event_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_market_wide_circuit_breaker_event_message then
    show.market_wide_circuit_breaker_event_message = finra_orf_tdds_dfi_v2_1.prefs.show_market_wide_circuit_breaker_event_message
    changed = true
  end
  if show.message ~= finra_orf_tdds_dfi_v2_1.prefs.show_message then
    show.message = finra_orf_tdds_dfi_v2_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= finra_orf_tdds_dfi_v2_1.prefs.show_message_header then
    show.message_header = finra_orf_tdds_dfi_v2_1.prefs.show_message_header
    changed = true
  end
  if show.mold_udp64 ~= finra_orf_tdds_dfi_v2_1.prefs.show_mold_udp64 then
    show.mold_udp64 = finra_orf_tdds_dfi_v2_1.prefs.show_mold_udp64
    changed = true
  end
  if show.original_dissemination_date ~= finra_orf_tdds_dfi_v2_1.prefs.show_original_dissemination_date then
    show.original_dissemination_date = finra_orf_tdds_dfi_v2_1.prefs.show_original_dissemination_date
    changed = true
  end
  if show.original_trade_information ~= finra_orf_tdds_dfi_v2_1.prefs.show_original_trade_information then
    show.original_trade_information = finra_orf_tdds_dfi_v2_1.prefs.show_original_trade_information
    changed = true
  end
  if show.packet ~= finra_orf_tdds_dfi_v2_1.prefs.show_packet then
    show.packet = finra_orf_tdds_dfi_v2_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= finra_orf_tdds_dfi_v2_1.prefs.show_packet_header then
    show.packet_header = finra_orf_tdds_dfi_v2_1.prefs.show_packet_header
    changed = true
  end
  if show.sequence_number_reset_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = finra_orf_tdds_dfi_v2_1.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.start_of_day_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_start_of_day_message then
    show.start_of_day_message = finra_orf_tdds_dfi_v2_1.prefs.show_start_of_day_message
    changed = true
  end
  if show.trade ~= finra_orf_tdds_dfi_v2_1.prefs.show_trade then
    show.trade = finra_orf_tdds_dfi_v2_1.prefs.show_trade
    changed = true
  end
  if show.trade_cancel_error_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_trade_cancel_error_message then
    show.trade_cancel_error_message = finra_orf_tdds_dfi_v2_1.prefs.show_trade_cancel_error_message
    changed = true
  end
  if show.trade_correction_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_trade_correction_message then
    show.trade_correction_message = finra_orf_tdds_dfi_v2_1.prefs.show_trade_correction_message
    changed = true
  end
  if show.trade_information ~= finra_orf_tdds_dfi_v2_1.prefs.show_trade_information then
    show.trade_information = finra_orf_tdds_dfi_v2_1.prefs.show_trade_information
    changed = true
  end
  if show.trade_report_long_form_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_trade_report_long_form_message then
    show.trade_report_long_form_message = finra_orf_tdds_dfi_v2_1.prefs.show_trade_report_long_form_message
    changed = true
  end
  if show.trade_report_short_form_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_trade_report_short_form_message then
    show.trade_report_short_form_message = finra_orf_tdds_dfi_v2_1.prefs.show_trade_report_short_form_message
    changed = true
  end
  if show.trade_summary_information ~= finra_orf_tdds_dfi_v2_1.prefs.show_trade_summary_information then
    show.trade_summary_information = finra_orf_tdds_dfi_v2_1.prefs.show_trade_summary_information
    changed = true
  end
  if show.trading_action_message ~= finra_orf_tdds_dfi_v2_1.prefs.show_trading_action_message then
    show.trading_action_message = finra_orf_tdds_dfi_v2_1.prefs.show_trading_action_message
    changed = true
  end
  if show.administrative_payload ~= finra_orf_tdds_dfi_v2_1.prefs.show_administrative_payload then
    show.administrative_payload = finra_orf_tdds_dfi_v2_1.prefs.show_administrative_payload
    changed = true
  end
  if show.control_payload ~= finra_orf_tdds_dfi_v2_1.prefs.show_control_payload then
    show.control_payload = finra_orf_tdds_dfi_v2_1.prefs.show_control_payload
    changed = true
  end
  if show.payload ~= finra_orf_tdds_dfi_v2_1.prefs.show_payload then
    show.payload = finra_orf_tdds_dfi_v2_1.prefs.show_payload
    changed = true
  end
  if show.trade_payload ~= finra_orf_tdds_dfi_v2_1.prefs.show_trade_payload then
    show.trade_payload = finra_orf_tdds_dfi_v2_1.prefs.show_trade_payload
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

-- Size: Fractional Second
finra_orf_tdds_dfi_v2_1_size_of.fractional_second = 9

-- Display: Fractional Second
finra_orf_tdds_dfi_v2_1_display.fractional_second = function(value)
  return "Fractional Second: "..value
end

-- Dissect: Fractional Second
finra_orf_tdds_dfi_v2_1_dissect.fractional_second = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.fractional_second
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.fractional_second(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.fractional_second, range, value, display)

  return offset + length, value
end

-- Size: Second
finra_orf_tdds_dfi_v2_1_size_of.second = 2

-- Display: Second
finra_orf_tdds_dfi_v2_1_display.second = function(value)
  return "Second: "..value
end

-- Dissect: Second
finra_orf_tdds_dfi_v2_1_dissect.second = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.second
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.second(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.second, range, value, display)

  return offset + length, value
end

-- Size: Minute
finra_orf_tdds_dfi_v2_1_size_of.minute = 2

-- Display: Minute
finra_orf_tdds_dfi_v2_1_display.minute = function(value)
  return "Minute: "..value
end

-- Dissect: Minute
finra_orf_tdds_dfi_v2_1_dissect.minute = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.minute
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.minute(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.minute, range, value, display)

  return offset + length, value
end

-- Size: Hour
finra_orf_tdds_dfi_v2_1_size_of.hour = 2

-- Display: Hour
finra_orf_tdds_dfi_v2_1_display.hour = function(value)
  return "Hour: "..value
end

-- Dissect: Hour
finra_orf_tdds_dfi_v2_1_dissect.hour = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.hour
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.hour(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.hour, range, value, display)

  return offset + length, value
end

-- Size: Day
finra_orf_tdds_dfi_v2_1_size_of.day = 2

-- Display: Day
finra_orf_tdds_dfi_v2_1_display.day = function(value)
  return "Day: "..value
end

-- Dissect: Day
finra_orf_tdds_dfi_v2_1_dissect.day = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.day
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.day(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.day, range, value, display)

  return offset + length, value
end

-- Size: Month
finra_orf_tdds_dfi_v2_1_size_of.month = 2

-- Display: Month
finra_orf_tdds_dfi_v2_1_display.month = function(value)
  return "Month: "..value
end

-- Dissect: Month
finra_orf_tdds_dfi_v2_1_dissect.month = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.month
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.month(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.month, range, value, display)

  return offset + length, value
end

-- Size: Year
finra_orf_tdds_dfi_v2_1_size_of.year = 4

-- Display: Year
finra_orf_tdds_dfi_v2_1_display.year = function(value)
  return "Year: "..value
end

-- Dissect: Year
finra_orf_tdds_dfi_v2_1_dissect.year = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.year
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.year(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.year, range, value, display)

  return offset + length, value
end

-- Calculate size of: Datetime
finra_orf_tdds_dfi_v2_1_size_of.datetime = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.year

  index = index + finra_orf_tdds_dfi_v2_1_size_of.month

  index = index + finra_orf_tdds_dfi_v2_1_size_of.day

  index = index + finra_orf_tdds_dfi_v2_1_size_of.hour

  index = index + finra_orf_tdds_dfi_v2_1_size_of.minute

  index = index + finra_orf_tdds_dfi_v2_1_size_of.second

  index = index + finra_orf_tdds_dfi_v2_1_size_of.fractional_second

  return index
end

-- Display: Datetime
finra_orf_tdds_dfi_v2_1_display.datetime = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Datetime
finra_orf_tdds_dfi_v2_1_dissect.datetime_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 4 Byte Ascii String
  index, year = finra_orf_tdds_dfi_v2_1_dissect.year(buffer, index, packet, parent)

  -- Month: 2 Byte Ascii String
  index, month = finra_orf_tdds_dfi_v2_1_dissect.month(buffer, index, packet, parent)

  -- Day: 2 Byte Ascii String
  index, day = finra_orf_tdds_dfi_v2_1_dissect.day(buffer, index, packet, parent)

  -- Hour: 2 Byte Ascii String
  index, hour = finra_orf_tdds_dfi_v2_1_dissect.hour(buffer, index, packet, parent)

  -- Minute: 2 Byte Ascii String
  index, minute = finra_orf_tdds_dfi_v2_1_dissect.minute(buffer, index, packet, parent)

  -- Second: 2 Byte Ascii String
  index, second = finra_orf_tdds_dfi_v2_1_dissect.second(buffer, index, packet, parent)

  -- Fractional Second: 9 Byte Ascii String
  index, fractional_second = finra_orf_tdds_dfi_v2_1_dissect.fractional_second(buffer, index, packet, parent)

  return index
end

-- Dissect: Datetime
finra_orf_tdds_dfi_v2_1_dissect.datetime = function(buffer, offset, packet, parent)
  if show.datetime then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.datetime, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.datetime_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.datetime(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.datetime_fields(buffer, offset, packet, element)
  end
end

-- Size: Market Center Originator Id
finra_orf_tdds_dfi_v2_1_size_of.market_center_originator_id = 2

-- Display: Market Center Originator Id
finra_orf_tdds_dfi_v2_1_display.market_center_originator_id = function(value)
  if value == "E" then
    return "Market Center Originator Id: Market Center Independent (E)"
  end
  if value == "u" then
    return "Market Center Originator Id: Other Otc Security (u)"
  end

  return "Market Center Originator Id: Unknown("..value..")"
end

-- Dissect: Market Center Originator Id
finra_orf_tdds_dfi_v2_1_dissect.market_center_originator_id = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.market_center_originator_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.market_center_originator_id(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.market_center_originator_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Identifier
finra_orf_tdds_dfi_v2_1_size_of.trade_identifier = 8

-- Display: Trade Identifier
finra_orf_tdds_dfi_v2_1_display.trade_identifier = function(value)
  return "Trade Identifier: "..value
end

-- Dissect: Trade Identifier
finra_orf_tdds_dfi_v2_1_dissect.trade_identifier = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.trade_identifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.trade_identifier(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.trade_identifier, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
finra_orf_tdds_dfi_v2_1_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.trade_identifier

  index = index + finra_orf_tdds_dfi_v2_1_size_of.market_center_originator_id

  index = index + finra_orf_tdds_dfi_v2_1_size_of.datetime(buffer, offset + index)

  return index
end

-- Display: Message Header
finra_orf_tdds_dfi_v2_1_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
finra_orf_tdds_dfi_v2_1_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Identifier: 8 Byte Ascii String
  index, trade_identifier = finra_orf_tdds_dfi_v2_1_dissect.trade_identifier(buffer, index, packet, parent)

  -- Market Center Originator Id: 2 Byte Ascii String Enum with 2 values
  index, market_center_originator_id = finra_orf_tdds_dfi_v2_1_dissect.market_center_originator_id(buffer, index, packet, parent)

  -- Datetime: Struct of 7 fields
  index, datetime = finra_orf_tdds_dfi_v2_1_dissect.datetime(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
finra_orf_tdds_dfi_v2_1_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.message_header, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: End Of Trade Reporting Message
finra_orf_tdds_dfi_v2_1_size_of.end_of_trade_reporting_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: End Of Trade Reporting Message
finra_orf_tdds_dfi_v2_1_display.end_of_trade_reporting_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Trade Reporting Message
finra_orf_tdds_dfi_v2_1_dissect.end_of_trade_reporting_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Trade Reporting Message
finra_orf_tdds_dfi_v2_1_dissect.end_of_trade_reporting_message = function(buffer, offset, packet, parent)
  if show.end_of_trade_reporting_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.end_of_trade_reporting_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.end_of_trade_reporting_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.end_of_trade_reporting_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.end_of_trade_reporting_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Sequence Number Reset Message
finra_orf_tdds_dfi_v2_1_size_of.sequence_number_reset_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: Sequence Number Reset Message
finra_orf_tdds_dfi_v2_1_display.sequence_number_reset_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
finra_orf_tdds_dfi_v2_1_dissect.sequence_number_reset_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
finra_orf_tdds_dfi_v2_1_dissect.sequence_number_reset_message = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.sequence_number_reset_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.sequence_number_reset_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.sequence_number_reset_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Line Integrity Message
finra_orf_tdds_dfi_v2_1_size_of.line_integrity_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: Line Integrity Message
finra_orf_tdds_dfi_v2_1_display.line_integrity_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Line Integrity Message
finra_orf_tdds_dfi_v2_1_dissect.line_integrity_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Line Integrity Message
finra_orf_tdds_dfi_v2_1_dissect.line_integrity_message = function(buffer, offset, packet, parent)
  if show.line_integrity_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.line_integrity_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.line_integrity_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.line_integrity_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.line_integrity_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: End Of Transmissions Message
finra_orf_tdds_dfi_v2_1_size_of.end_of_transmissions_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: End Of Transmissions Message
finra_orf_tdds_dfi_v2_1_display.end_of_transmissions_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmissions Message
finra_orf_tdds_dfi_v2_1_dissect.end_of_transmissions_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmissions Message
finra_orf_tdds_dfi_v2_1_dissect.end_of_transmissions_message = function(buffer, offset, packet, parent)
  if show.end_of_transmissions_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.end_of_transmissions_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.end_of_transmissions_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.end_of_transmissions_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.end_of_transmissions_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: End Of Retransmission Requests Message
finra_orf_tdds_dfi_v2_1_size_of.end_of_retransmission_requests_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: End Of Retransmission Requests Message
finra_orf_tdds_dfi_v2_1_display.end_of_retransmission_requests_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Retransmission Requests Message
finra_orf_tdds_dfi_v2_1_dissect.end_of_retransmission_requests_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Retransmission Requests Message
finra_orf_tdds_dfi_v2_1_dissect.end_of_retransmission_requests_message = function(buffer, offset, packet, parent)
  if show.end_of_retransmission_requests_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.end_of_retransmission_requests_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.end_of_retransmission_requests_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.end_of_retransmission_requests_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.end_of_retransmission_requests_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Market Session Close Message
finra_orf_tdds_dfi_v2_1_size_of.market_session_close_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: Market Session Close Message
finra_orf_tdds_dfi_v2_1_display.market_session_close_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Close Message
finra_orf_tdds_dfi_v2_1_dissect.market_session_close_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Close Message
finra_orf_tdds_dfi_v2_1_dissect.market_session_close_message = function(buffer, offset, packet, parent)
  if show.market_session_close_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.market_session_close_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.market_session_close_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.market_session_close_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.market_session_close_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Market Session Open Message
finra_orf_tdds_dfi_v2_1_size_of.market_session_open_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: Market Session Open Message
finra_orf_tdds_dfi_v2_1_display.market_session_open_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Open Message
finra_orf_tdds_dfi_v2_1_dissect.market_session_open_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Open Message
finra_orf_tdds_dfi_v2_1_dissect.market_session_open_message = function(buffer, offset, packet, parent)
  if show.market_session_open_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.market_session_open_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.market_session_open_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.market_session_open_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.market_session_open_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: End Of Day Message
finra_orf_tdds_dfi_v2_1_size_of.end_of_day_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: End Of Day Message
finra_orf_tdds_dfi_v2_1_display.end_of_day_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
finra_orf_tdds_dfi_v2_1_dissect.end_of_day_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
finra_orf_tdds_dfi_v2_1_dissect.end_of_day_message = function(buffer, offset, packet, parent)
  if show.end_of_day_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.end_of_day_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.end_of_day_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.end_of_day_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.end_of_day_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Start Of Day Message
finra_orf_tdds_dfi_v2_1_size_of.start_of_day_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: Start Of Day Message
finra_orf_tdds_dfi_v2_1_display.start_of_day_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
finra_orf_tdds_dfi_v2_1_dissect.start_of_day_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
finra_orf_tdds_dfi_v2_1_dissect.start_of_day_message = function(buffer, offset, packet, parent)
  if show.start_of_day_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.start_of_day_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.start_of_day_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.start_of_day_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.start_of_day_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Control Payload
finra_orf_tdds_dfi_v2_1_size_of.control_payload = function(buffer, offset, control_message_type)
  -- Size of Start Of Day Message
  if control_message_type == "I" then
    return finra_orf_tdds_dfi_v2_1_size_of.start_of_day_message(buffer, offset)
  end
  -- Size of End Of Day Message
  if control_message_type == "J" then
    return finra_orf_tdds_dfi_v2_1_size_of.end_of_day_message(buffer, offset)
  end
  -- Size of Market Session Open Message
  if control_message_type == "O" then
    return finra_orf_tdds_dfi_v2_1_size_of.market_session_open_message(buffer, offset)
  end
  -- Size of Market Session Close Message
  if control_message_type == "O" then
    return finra_orf_tdds_dfi_v2_1_size_of.market_session_close_message(buffer, offset)
  end
  -- Size of End Of Retransmission Requests Message
  if control_message_type == "K" then
    return finra_orf_tdds_dfi_v2_1_size_of.end_of_retransmission_requests_message(buffer, offset)
  end
  -- Size of End Of Transmissions Message
  if control_message_type == "Z" then
    return finra_orf_tdds_dfi_v2_1_size_of.end_of_transmissions_message(buffer, offset)
  end
  -- Size of Line Integrity Message
  if control_message_type == "T" then
    return finra_orf_tdds_dfi_v2_1_size_of.line_integrity_message(buffer, offset)
  end
  -- Size of Sequence Number Reset Message
  if control_message_type == "L" then
    return finra_orf_tdds_dfi_v2_1_size_of.sequence_number_reset_message(buffer, offset)
  end
  -- Size of End Of Trade Reporting Message
  if control_message_type == "X" then
    return finra_orf_tdds_dfi_v2_1_size_of.end_of_trade_reporting_message(buffer, offset)
  end

  return 0
end

-- Display: Control Payload
finra_orf_tdds_dfi_v2_1_display.control_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Control Payload
finra_orf_tdds_dfi_v2_1_dissect.control_payload_branches = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "I" then
    return finra_orf_tdds_dfi_v2_1_dissect.start_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "J" then
    return finra_orf_tdds_dfi_v2_1_dissect.end_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Open Message
  if control_message_type == "O" then
    return finra_orf_tdds_dfi_v2_1_dissect.market_session_open_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Close Message
  if control_message_type == "O" then
    return finra_orf_tdds_dfi_v2_1_dissect.market_session_close_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Retransmission Requests Message
  if control_message_type == "K" then
    return finra_orf_tdds_dfi_v2_1_dissect.end_of_retransmission_requests_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmissions Message
  if control_message_type == "Z" then
    return finra_orf_tdds_dfi_v2_1_dissect.end_of_transmissions_message(buffer, offset, packet, parent)
  end
  -- Dissect Line Integrity Message
  if control_message_type == "T" then
    return finra_orf_tdds_dfi_v2_1_dissect.line_integrity_message(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Number Reset Message
  if control_message_type == "L" then
    return finra_orf_tdds_dfi_v2_1_dissect.sequence_number_reset_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Trade Reporting Message
  if control_message_type == "X" then
    return finra_orf_tdds_dfi_v2_1_dissect.end_of_trade_reporting_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Control Payload
finra_orf_tdds_dfi_v2_1_dissect.control_payload = function(buffer, offset, packet, parent, control_message_type)
  if not show.control_payload then
    return finra_orf_tdds_dfi_v2_1_dissect.control_payload_branches(buffer, offset, packet, parent, control_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_orf_tdds_dfi_v2_1_size_of.control_payload(buffer, offset, control_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_orf_tdds_dfi_v2_1_display.control_payload(buffer, packet, parent)
  local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.control_payload, range, display)

  return finra_orf_tdds_dfi_v2_1_dissect.control_payload_branches(buffer, offset, packet, parent, control_message_type)
end

-- Size: Control Message Type
finra_orf_tdds_dfi_v2_1_size_of.control_message_type = 1

-- Display: Control Message Type
finra_orf_tdds_dfi_v2_1_display.control_message_type = function(value)
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
finra_orf_tdds_dfi_v2_1_dissect.control_message_type = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.control_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.control_message_type(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Control
finra_orf_tdds_dfi_v2_1_size_of.control = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.control_message_type

  -- Calculate runtime size of Control Payload field
  local control_payload_offset = offset + index
  local control_payload_type = buffer(control_payload_offset - 1, 1):string()
  index = index + finra_orf_tdds_dfi_v2_1_size_of.control_payload(buffer, control_payload_offset, control_payload_type)

  return index
end

-- Display: Control
finra_orf_tdds_dfi_v2_1_display.control = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control
finra_orf_tdds_dfi_v2_1_dissect.control_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String Enum with 9 values
  index, control_message_type = finra_orf_tdds_dfi_v2_1_dissect.control_message_type(buffer, index, packet, parent)

  -- Control Payload: Runtime Type with 9 branches
  index = finra_orf_tdds_dfi_v2_1_dissect.control_payload(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control
finra_orf_tdds_dfi_v2_1_dissect.control = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.control then
    local length = finra_orf_tdds_dfi_v2_1_size_of.control(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_orf_tdds_dfi_v2_1_display.control(buffer, packet, parent)
    parent = parent:add(finra_orf_tdds_dfi_v2_1.fields.control, range, display)
  end

  return finra_orf_tdds_dfi_v2_1_dissect.control_fields(buffer, offset, packet, parent)
end

-- Size: Reason Code
finra_orf_tdds_dfi_v2_1_size_of.reason_code = 6

-- Display: Reason Code
finra_orf_tdds_dfi_v2_1_display.reason_code = function(value)
  return "Reason Code: "..value
end

-- Dissect: Reason Code
finra_orf_tdds_dfi_v2_1_dissect.reason_code = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.reason_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.reason_code(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Action Datetime
finra_orf_tdds_dfi_v2_1_size_of.action_datetime = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.year

  index = index + finra_orf_tdds_dfi_v2_1_size_of.month

  index = index + finra_orf_tdds_dfi_v2_1_size_of.day

  index = index + finra_orf_tdds_dfi_v2_1_size_of.hour

  index = index + finra_orf_tdds_dfi_v2_1_size_of.minute

  index = index + finra_orf_tdds_dfi_v2_1_size_of.second

  index = index + finra_orf_tdds_dfi_v2_1_size_of.fractional_second

  return index
end

-- Display: Action Datetime
finra_orf_tdds_dfi_v2_1_display.action_datetime = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Action Datetime
finra_orf_tdds_dfi_v2_1_dissect.action_datetime_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 4 Byte Ascii String
  index, year = finra_orf_tdds_dfi_v2_1_dissect.year(buffer, index, packet, parent)

  -- Month: 2 Byte Ascii String
  index, month = finra_orf_tdds_dfi_v2_1_dissect.month(buffer, index, packet, parent)

  -- Day: 2 Byte Ascii String
  index, day = finra_orf_tdds_dfi_v2_1_dissect.day(buffer, index, packet, parent)

  -- Hour: 2 Byte Ascii String
  index, hour = finra_orf_tdds_dfi_v2_1_dissect.hour(buffer, index, packet, parent)

  -- Minute: 2 Byte Ascii String
  index, minute = finra_orf_tdds_dfi_v2_1_dissect.minute(buffer, index, packet, parent)

  -- Second: 2 Byte Ascii String
  index, second = finra_orf_tdds_dfi_v2_1_dissect.second(buffer, index, packet, parent)

  -- Fractional Second: 9 Byte Ascii String
  index, fractional_second = finra_orf_tdds_dfi_v2_1_dissect.fractional_second(buffer, index, packet, parent)

  return index
end

-- Dissect: Action Datetime
finra_orf_tdds_dfi_v2_1_dissect.action_datetime = function(buffer, offset, packet, parent)
  if show.action_datetime then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.action_datetime, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.action_datetime_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.action_datetime(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.action_datetime_fields(buffer, offset, packet, element)
  end
end

-- Size: Action
finra_orf_tdds_dfi_v2_1_size_of.action = 1

-- Display: Action
finra_orf_tdds_dfi_v2_1_display.action = function(value)
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
finra_orf_tdds_dfi_v2_1_dissect.action = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.action
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.action(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.action, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Wide Circuit Breaker Event Message
finra_orf_tdds_dfi_v2_1_size_of.market_wide_circuit_breaker_event_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.action

  index = index + finra_orf_tdds_dfi_v2_1_size_of.action_datetime(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.reason_code

  return index
end

-- Display: Market Wide Circuit Breaker Event Message
finra_orf_tdds_dfi_v2_1_display.market_wide_circuit_breaker_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Event Message
finra_orf_tdds_dfi_v2_1_dissect.market_wide_circuit_breaker_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  -- Action: 1 Byte Ascii String Enum with 4 values
  index, action = finra_orf_tdds_dfi_v2_1_dissect.action(buffer, index, packet, parent)

  -- Action Datetime: Struct of 7 fields
  index, action_datetime = finra_orf_tdds_dfi_v2_1_dissect.action_datetime(buffer, index, packet, parent)

  -- Reason Code: 6 Byte Ascii String
  index, reason_code = finra_orf_tdds_dfi_v2_1_dissect.reason_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Event Message
finra_orf_tdds_dfi_v2_1_dissect.market_wide_circuit_breaker_event_message = function(buffer, offset, packet, parent)
  if show.market_wide_circuit_breaker_event_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.market_wide_circuit_breaker_event_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.market_wide_circuit_breaker_event_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.market_wide_circuit_breaker_event_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.market_wide_circuit_breaker_event_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Security Symbol
finra_orf_tdds_dfi_v2_1_size_of.security_symbol = 14

-- Display: Security Symbol
finra_orf_tdds_dfi_v2_1_display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
finra_orf_tdds_dfi_v2_1_dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.security_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Action Message
finra_orf_tdds_dfi_v2_1_size_of.trading_action_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.security_symbol

  index = index + finra_orf_tdds_dfi_v2_1_size_of.action

  index = index + finra_orf_tdds_dfi_v2_1_size_of.action_datetime(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.reason_code

  return index
end

-- Display: Trading Action Message
finra_orf_tdds_dfi_v2_1_display.trading_action_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
finra_orf_tdds_dfi_v2_1_dissect.trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  -- Security Symbol: 14 Byte Ascii String
  index, security_symbol = finra_orf_tdds_dfi_v2_1_dissect.security_symbol(buffer, index, packet, parent)

  -- Action: 1 Byte Ascii String Enum with 4 values
  index, action = finra_orf_tdds_dfi_v2_1_dissect.action(buffer, index, packet, parent)

  -- Action Datetime: Struct of 7 fields
  index, action_datetime = finra_orf_tdds_dfi_v2_1_dissect.action_datetime(buffer, index, packet, parent)

  -- Reason Code: 6 Byte Ascii String
  index, reason_code = finra_orf_tdds_dfi_v2_1_dissect.reason_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
finra_orf_tdds_dfi_v2_1_dissect.trading_action_message = function(buffer, offset, packet, parent)
  if show.trading_action_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.trading_action_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.trading_action_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.trading_action_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.trading_action_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Total Security Volume
finra_orf_tdds_dfi_v2_1_size_of.total_security_volume = 11

-- Display: Total Security Volume
finra_orf_tdds_dfi_v2_1_display.total_security_volume = function(value)
  return "Total Security Volume: "..value
end

-- Dissect: Total Security Volume
finra_orf_tdds_dfi_v2_1_dissect.total_security_volume = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.total_security_volume
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.total_security_volume(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.total_security_volume, range, value, display)

  return offset + length, value
end

-- Size: Currency
finra_orf_tdds_dfi_v2_1_size_of.currency = 3

-- Display: Currency
finra_orf_tdds_dfi_v2_1_display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
finra_orf_tdds_dfi_v2_1_dissect.currency = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.currency(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Net Change Direction
finra_orf_tdds_dfi_v2_1_size_of.net_change_direction = 1

-- Display: Net Change Direction
finra_orf_tdds_dfi_v2_1_display.net_change_direction = function(value)
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
finra_orf_tdds_dfi_v2_1_dissect.net_change_direction = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.net_change_direction
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.net_change_direction(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.net_change_direction, range, value, display)

  return offset + length, value
end

-- Size: Net Change Amount
finra_orf_tdds_dfi_v2_1_size_of.net_change_amount = 10

-- Display: Net Change Amount
finra_orf_tdds_dfi_v2_1_display.net_change_amount = function(value)
  return "Net Change Amount: "..value
end

-- Dissect: Net Change Amount
finra_orf_tdds_dfi_v2_1_dissect.net_change_amount = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.net_change_amount
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.net_change_amount(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.net_change_amount, range, value, display)

  return offset + length, value
end

-- Size: Net Change Denominator
finra_orf_tdds_dfi_v2_1_size_of.net_change_denominator = 1

-- Display: Net Change Denominator
finra_orf_tdds_dfi_v2_1_display.net_change_denominator = function(value)
  return "Net Change Denominator: "..value
end

-- Dissect: Net Change Denominator
finra_orf_tdds_dfi_v2_1_dissect.net_change_denominator = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.net_change_denominator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.net_change_denominator(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.net_change_denominator, range, value, display)

  return offset + length, value
end

-- Size: Reserved
finra_orf_tdds_dfi_v2_1_size_of.reserved = 1

-- Display: Reserved
finra_orf_tdds_dfi_v2_1_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
finra_orf_tdds_dfi_v2_1_dissect.reserved = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.reserved
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.reserved(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Closing Price
finra_orf_tdds_dfi_v2_1_size_of.closing_price = 12

-- Display: Closing Price
finra_orf_tdds_dfi_v2_1_display.closing_price = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
finra_orf_tdds_dfi_v2_1_dissect.closing_price = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.closing_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.closing_price(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Size: Closing Price Denominator
finra_orf_tdds_dfi_v2_1_size_of.closing_price_denominator = 1

-- Display: Closing Price Denominator
finra_orf_tdds_dfi_v2_1_display.closing_price_denominator = function(value)
  return "Closing Price Denominator: "..value
end

-- Dissect: Closing Price Denominator
finra_orf_tdds_dfi_v2_1_dissect.closing_price_denominator = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.closing_price_denominator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.closing_price_denominator(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.closing_price_denominator, range, value, display)

  return offset + length, value
end

-- Size: Closing Price Market Center
finra_orf_tdds_dfi_v2_1_size_of.closing_price_market_center = 1

-- Display: Closing Price Market Center
finra_orf_tdds_dfi_v2_1_display.closing_price_market_center = function(value)
  if value == "u" then
    return "Closing Price Market Center: Ootc (u)"
  end
  if value == " " then
    return "Closing Price Market Center: Not Applicable (<whitespace>)"
  end

  return "Closing Price Market Center: Unknown("..value..")"
end

-- Dissect: Closing Price Market Center
finra_orf_tdds_dfi_v2_1_dissect.closing_price_market_center = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.closing_price_market_center
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.closing_price_market_center(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.closing_price_market_center, range, value, display)

  return offset + length, value
end

-- Size: Daily Low Price
finra_orf_tdds_dfi_v2_1_size_of.daily_low_price = 12

-- Display: Daily Low Price
finra_orf_tdds_dfi_v2_1_display.daily_low_price = function(value)
  return "Daily Low Price: "..value
end

-- Dissect: Daily Low Price
finra_orf_tdds_dfi_v2_1_dissect.daily_low_price = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.daily_low_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.daily_low_price(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.daily_low_price, range, value, display)

  return offset + length, value
end

-- Size: Daily Low Price Denominator
finra_orf_tdds_dfi_v2_1_size_of.daily_low_price_denominator = 1

-- Display: Daily Low Price Denominator
finra_orf_tdds_dfi_v2_1_display.daily_low_price_denominator = function(value)
  return "Daily Low Price Denominator: "..value
end

-- Dissect: Daily Low Price Denominator
finra_orf_tdds_dfi_v2_1_dissect.daily_low_price_denominator = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.daily_low_price_denominator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.daily_low_price_denominator(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.daily_low_price_denominator, range, value, display)

  return offset + length, value
end

-- Size: Daily High Price
finra_orf_tdds_dfi_v2_1_size_of.daily_high_price = 12

-- Display: Daily High Price
finra_orf_tdds_dfi_v2_1_display.daily_high_price = function(value)
  return "Daily High Price: "..value
end

-- Dissect: Daily High Price
finra_orf_tdds_dfi_v2_1_dissect.daily_high_price = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.daily_high_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.daily_high_price(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.daily_high_price, range, value, display)

  return offset + length, value
end

-- Size: Daily High Price Denominator
finra_orf_tdds_dfi_v2_1_size_of.daily_high_price_denominator = 1

-- Display: Daily High Price Denominator
finra_orf_tdds_dfi_v2_1_display.daily_high_price_denominator = function(value)
  return "Daily High Price Denominator: "..value
end

-- Dissect: Daily High Price Denominator
finra_orf_tdds_dfi_v2_1_dissect.daily_high_price_denominator = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.daily_high_price_denominator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.daily_high_price_denominator(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.daily_high_price_denominator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Closing Trade Summary Report Message
finra_orf_tdds_dfi_v2_1_size_of.closing_trade_summary_report_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.security_symbol

  index = index + finra_orf_tdds_dfi_v2_1_size_of.daily_high_price_denominator

  index = index + finra_orf_tdds_dfi_v2_1_size_of.daily_high_price

  index = index + finra_orf_tdds_dfi_v2_1_size_of.daily_low_price_denominator

  index = index + finra_orf_tdds_dfi_v2_1_size_of.daily_low_price

  index = index + finra_orf_tdds_dfi_v2_1_size_of.closing_price_market_center

  index = index + finra_orf_tdds_dfi_v2_1_size_of.closing_price_denominator

  index = index + finra_orf_tdds_dfi_v2_1_size_of.closing_price

  index = index + finra_orf_tdds_dfi_v2_1_size_of.reserved

  index = index + finra_orf_tdds_dfi_v2_1_size_of.net_change_denominator

  index = index + finra_orf_tdds_dfi_v2_1_size_of.net_change_amount

  index = index + finra_orf_tdds_dfi_v2_1_size_of.net_change_direction

  index = index + finra_orf_tdds_dfi_v2_1_size_of.currency

  index = index + finra_orf_tdds_dfi_v2_1_size_of.total_security_volume

  return index
end

-- Display: Closing Trade Summary Report Message
finra_orf_tdds_dfi_v2_1_display.closing_trade_summary_report_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Trade Summary Report Message
finra_orf_tdds_dfi_v2_1_dissect.closing_trade_summary_report_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  -- Security Symbol: 14 Byte Ascii String
  index, security_symbol = finra_orf_tdds_dfi_v2_1_dissect.security_symbol(buffer, index, packet, parent)

  -- Daily High Price Denominator: 1 Byte Ascii String
  index, daily_high_price_denominator = finra_orf_tdds_dfi_v2_1_dissect.daily_high_price_denominator(buffer, index, packet, parent)

  -- Daily High Price: 12 Byte Ascii String
  index, daily_high_price = finra_orf_tdds_dfi_v2_1_dissect.daily_high_price(buffer, index, packet, parent)

  -- Daily Low Price Denominator: 1 Byte Ascii String
  index, daily_low_price_denominator = finra_orf_tdds_dfi_v2_1_dissect.daily_low_price_denominator(buffer, index, packet, parent)

  -- Daily Low Price: 12 Byte Ascii String
  index, daily_low_price = finra_orf_tdds_dfi_v2_1_dissect.daily_low_price(buffer, index, packet, parent)

  -- Closing Price Market Center: 1 Byte Ascii String Enum with 2 values
  index, closing_price_market_center = finra_orf_tdds_dfi_v2_1_dissect.closing_price_market_center(buffer, index, packet, parent)

  -- Closing Price Denominator: 1 Byte Ascii String
  index, closing_price_denominator = finra_orf_tdds_dfi_v2_1_dissect.closing_price_denominator(buffer, index, packet, parent)

  -- Closing Price: 12 Byte Ascii String
  index, closing_price = finra_orf_tdds_dfi_v2_1_dissect.closing_price(buffer, index, packet, parent)

  -- Reserved: 1 Byte Ascii String
  index, reserved = finra_orf_tdds_dfi_v2_1_dissect.reserved(buffer, index, packet, parent)

  -- Net Change Denominator: 1 Byte Ascii String
  index, net_change_denominator = finra_orf_tdds_dfi_v2_1_dissect.net_change_denominator(buffer, index, packet, parent)

  -- Net Change Amount: 10 Byte Ascii String
  index, net_change_amount = finra_orf_tdds_dfi_v2_1_dissect.net_change_amount(buffer, index, packet, parent)

  -- Net Change Direction: 1 Byte Ascii String Enum with 3 values
  index, net_change_direction = finra_orf_tdds_dfi_v2_1_dissect.net_change_direction(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = finra_orf_tdds_dfi_v2_1_dissect.currency(buffer, index, packet, parent)

  -- Total Security Volume: 11 Byte Ascii String
  index, total_security_volume = finra_orf_tdds_dfi_v2_1_dissect.total_security_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Closing Trade Summary Report Message
finra_orf_tdds_dfi_v2_1_dissect.closing_trade_summary_report_message = function(buffer, offset, packet, parent)
  if show.closing_trade_summary_report_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.closing_trade_summary_report_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.closing_trade_summary_report_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.closing_trade_summary_report_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.closing_trade_summary_report_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Text
finra_orf_tdds_dfi_v2_1_size_of.text = 2

-- Display: Text
finra_orf_tdds_dfi_v2_1_display.text = function(value)
  return "Text: "..value
end

-- Dissect: Text
finra_orf_tdds_dfi_v2_1_dissect.text = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.text
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.text(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.text, range, value, display)

  return offset + length, value
end

-- Calculate size of: General Administrative Message
finra_orf_tdds_dfi_v2_1_size_of.general_administrative_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.text

  return index
end

-- Display: General Administrative Message
finra_orf_tdds_dfi_v2_1_display.general_administrative_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Administrative Message
finra_orf_tdds_dfi_v2_1_dissect.general_administrative_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  -- Text: 2 Byte Ascii String
  index, text = finra_orf_tdds_dfi_v2_1_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: General Administrative Message
finra_orf_tdds_dfi_v2_1_dissect.general_administrative_message = function(buffer, offset, packet, parent)
  if show.general_administrative_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.general_administrative_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.general_administrative_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.general_administrative_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.general_administrative_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Administrative Payload
finra_orf_tdds_dfi_v2_1_size_of.administrative_payload = function(buffer, offset, administrative_message_type)
  -- Size of General Administrative Message
  if administrative_message_type == "A" then
    return finra_orf_tdds_dfi_v2_1_size_of.general_administrative_message(buffer, offset)
  end
  -- Size of Closing Trade Summary Report Message
  if administrative_message_type == "2" then
    return finra_orf_tdds_dfi_v2_1_size_of.closing_trade_summary_report_message(buffer, offset)
  end
  -- Size of Trading Action Message
  if administrative_message_type == "H" then
    return finra_orf_tdds_dfi_v2_1_size_of.trading_action_message(buffer, offset)
  end
  -- Size of Market Wide Circuit Breaker Event Message
  if administrative_message_type == "M" then
    return finra_orf_tdds_dfi_v2_1_size_of.market_wide_circuit_breaker_event_message(buffer, offset)
  end

  return 0
end

-- Display: Administrative Payload
finra_orf_tdds_dfi_v2_1_display.administrative_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Administrative Payload
finra_orf_tdds_dfi_v2_1_dissect.administrative_payload_branches = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect General Administrative Message
  if administrative_message_type == "A" then
    return finra_orf_tdds_dfi_v2_1_dissect.general_administrative_message(buffer, offset, packet, parent)
  end
  -- Dissect Closing Trade Summary Report Message
  if administrative_message_type == "2" then
    return finra_orf_tdds_dfi_v2_1_dissect.closing_trade_summary_report_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if administrative_message_type == "H" then
    return finra_orf_tdds_dfi_v2_1_dissect.trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Event Message
  if administrative_message_type == "M" then
    return finra_orf_tdds_dfi_v2_1_dissect.market_wide_circuit_breaker_event_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Administrative Payload
finra_orf_tdds_dfi_v2_1_dissect.administrative_payload = function(buffer, offset, packet, parent, administrative_message_type)
  if not show.administrative_payload then
    return finra_orf_tdds_dfi_v2_1_dissect.administrative_payload_branches(buffer, offset, packet, parent, administrative_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_orf_tdds_dfi_v2_1_size_of.administrative_payload(buffer, offset, administrative_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_orf_tdds_dfi_v2_1_display.administrative_payload(buffer, packet, parent)
  local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.administrative_payload, range, display)

  return finra_orf_tdds_dfi_v2_1_dissect.administrative_payload_branches(buffer, offset, packet, parent, administrative_message_type)
end

-- Size: Administrative Message Type
finra_orf_tdds_dfi_v2_1_size_of.administrative_message_type = 1

-- Display: Administrative Message Type
finra_orf_tdds_dfi_v2_1_display.administrative_message_type = function(value)
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
finra_orf_tdds_dfi_v2_1_dissect.administrative_message_type = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.administrative_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.administrative_message_type(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Administrative
finra_orf_tdds_dfi_v2_1_size_of.administrative = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.administrative_message_type

  -- Calculate runtime size of Administrative Payload field
  local administrative_payload_offset = offset + index
  local administrative_payload_type = buffer(administrative_payload_offset - 1, 1):string()
  index = index + finra_orf_tdds_dfi_v2_1_size_of.administrative_payload(buffer, administrative_payload_offset, administrative_payload_type)

  return index
end

-- Display: Administrative
finra_orf_tdds_dfi_v2_1_display.administrative = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative
finra_orf_tdds_dfi_v2_1_dissect.administrative_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String Enum with 4 values
  index, administrative_message_type = finra_orf_tdds_dfi_v2_1_dissect.administrative_message_type(buffer, index, packet, parent)

  -- Administrative Payload: Runtime Type with 4 branches
  index = finra_orf_tdds_dfi_v2_1_dissect.administrative_payload(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative
finra_orf_tdds_dfi_v2_1_dissect.administrative = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.administrative then
    local length = finra_orf_tdds_dfi_v2_1_size_of.administrative(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_orf_tdds_dfi_v2_1_display.administrative(buffer, packet, parent)
    parent = parent:add(finra_orf_tdds_dfi_v2_1.fields.administrative, range, display)
  end

  return finra_orf_tdds_dfi_v2_1_dissect.administrative_fields(buffer, offset, packet, parent)
end

-- Size: Price Change Indicator
finra_orf_tdds_dfi_v2_1_size_of.price_change_indicator = 1

-- Display: Price Change Indicator
finra_orf_tdds_dfi_v2_1_display.price_change_indicator = function(value)
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
finra_orf_tdds_dfi_v2_1_dissect.price_change_indicator = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.price_change_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.price_change_indicator(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.price_change_indicator, range, value, display)

  return offset + length, value
end

-- Size: Last Sale Price Market Center
finra_orf_tdds_dfi_v2_1_size_of.last_sale_price_market_center = 1

-- Display: Last Sale Price Market Center
finra_orf_tdds_dfi_v2_1_display.last_sale_price_market_center = function(value)
  if value == "u" then
    return "Last Sale Price Market Center: Ootc (u)"
  end
  if value == " " then
    return "Last Sale Price Market Center: Not Applicable (<whitespace>)"
  end

  return "Last Sale Price Market Center: Unknown("..value..")"
end

-- Dissect: Last Sale Price Market Center
finra_orf_tdds_dfi_v2_1_dissect.last_sale_price_market_center = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.last_sale_price_market_center
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.last_sale_price_market_center(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.last_sale_price_market_center, range, value, display)

  return offset + length, value
end

-- Size: Last Sale Price
finra_orf_tdds_dfi_v2_1_size_of.last_sale_price = 12

-- Display: Last Sale Price
finra_orf_tdds_dfi_v2_1_display.last_sale_price = function(value)
  return "Last Sale Price: "..value
end

-- Dissect: Last Sale Price
finra_orf_tdds_dfi_v2_1_dissect.last_sale_price = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.last_sale_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.last_sale_price(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.last_sale_price, range, value, display)

  return offset + length, value
end

-- Size: Last Sale Price Denominator
finra_orf_tdds_dfi_v2_1_size_of.last_sale_price_denominator = 1

-- Display: Last Sale Price Denominator
finra_orf_tdds_dfi_v2_1_display.last_sale_price_denominator = function(value)
  return "Last Sale Price Denominator: "..value
end

-- Dissect: Last Sale Price Denominator
finra_orf_tdds_dfi_v2_1_dissect.last_sale_price_denominator = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.last_sale_price_denominator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.last_sale_price_denominator(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.last_sale_price_denominator, range, value, display)

  return offset + length, value
end

-- Size: Low Price
finra_orf_tdds_dfi_v2_1_size_of.low_price = 12

-- Display: Low Price
finra_orf_tdds_dfi_v2_1_display.low_price = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
finra_orf_tdds_dfi_v2_1_dissect.low_price = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.low_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.low_price(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: Low Price Denominator
finra_orf_tdds_dfi_v2_1_size_of.low_price_denominator = 1

-- Display: Low Price Denominator
finra_orf_tdds_dfi_v2_1_display.low_price_denominator = function(value)
  return "Low Price Denominator: "..value
end

-- Dissect: Low Price Denominator
finra_orf_tdds_dfi_v2_1_dissect.low_price_denominator = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.low_price_denominator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.low_price_denominator(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.low_price_denominator, range, value, display)

  return offset + length, value
end

-- Size: High Price
finra_orf_tdds_dfi_v2_1_size_of.high_price = 12

-- Display: High Price
finra_orf_tdds_dfi_v2_1_display.high_price = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
finra_orf_tdds_dfi_v2_1_dissect.high_price = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.high_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.high_price(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: High Price Denominator
finra_orf_tdds_dfi_v2_1_size_of.high_price_denominator = 1

-- Display: High Price Denominator
finra_orf_tdds_dfi_v2_1_display.high_price_denominator = function(value)
  return "High Price Denominator: "..value
end

-- Dissect: High Price Denominator
finra_orf_tdds_dfi_v2_1_dissect.high_price_denominator = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.high_price_denominator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.high_price_denominator(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.high_price_denominator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Summary Information
finra_orf_tdds_dfi_v2_1_size_of.trade_summary_information = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.high_price_denominator

  index = index + finra_orf_tdds_dfi_v2_1_size_of.high_price

  index = index + finra_orf_tdds_dfi_v2_1_size_of.low_price_denominator

  index = index + finra_orf_tdds_dfi_v2_1_size_of.low_price

  index = index + finra_orf_tdds_dfi_v2_1_size_of.last_sale_price_denominator

  index = index + finra_orf_tdds_dfi_v2_1_size_of.last_sale_price

  index = index + finra_orf_tdds_dfi_v2_1_size_of.last_sale_price_market_center

  index = index + finra_orf_tdds_dfi_v2_1_size_of.total_security_volume

  index = index + finra_orf_tdds_dfi_v2_1_size_of.price_change_indicator

  return index
end

-- Display: Trade Summary Information
finra_orf_tdds_dfi_v2_1_display.trade_summary_information = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Summary Information
finra_orf_tdds_dfi_v2_1_dissect.trade_summary_information_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- High Price Denominator: 1 Byte Ascii String
  index, high_price_denominator = finra_orf_tdds_dfi_v2_1_dissect.high_price_denominator(buffer, index, packet, parent)

  -- High Price: 12 Byte Ascii String
  index, high_price = finra_orf_tdds_dfi_v2_1_dissect.high_price(buffer, index, packet, parent)

  -- Low Price Denominator: 1 Byte Ascii String
  index, low_price_denominator = finra_orf_tdds_dfi_v2_1_dissect.low_price_denominator(buffer, index, packet, parent)

  -- Low Price: 12 Byte Ascii String
  index, low_price = finra_orf_tdds_dfi_v2_1_dissect.low_price(buffer, index, packet, parent)

  -- Last Sale Price Denominator: 1 Byte Ascii String
  index, last_sale_price_denominator = finra_orf_tdds_dfi_v2_1_dissect.last_sale_price_denominator(buffer, index, packet, parent)

  -- Last Sale Price: 12 Byte Ascii String
  index, last_sale_price = finra_orf_tdds_dfi_v2_1_dissect.last_sale_price(buffer, index, packet, parent)

  -- Last Sale Price Market Center: 1 Byte Ascii String Enum with 2 values
  index, last_sale_price_market_center = finra_orf_tdds_dfi_v2_1_dissect.last_sale_price_market_center(buffer, index, packet, parent)

  -- Total Security Volume: 11 Byte Ascii String
  index, total_security_volume = finra_orf_tdds_dfi_v2_1_dissect.total_security_volume(buffer, index, packet, parent)

  -- Price Change Indicator: 1 Byte Ascii String Enum with 8 values
  index, price_change_indicator = finra_orf_tdds_dfi_v2_1_dissect.price_change_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Summary Information
finra_orf_tdds_dfi_v2_1_dissect.trade_summary_information = function(buffer, offset, packet, parent)
  if show.trade_summary_information then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.trade_summary_information, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.trade_summary_information_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.trade_summary_information(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.trade_summary_information_fields(buffer, offset, packet, element)
  end
end

-- Size: Sellers Sale Days
finra_orf_tdds_dfi_v2_1_size_of.sellers_sale_days = 2

-- Display: Sellers Sale Days
finra_orf_tdds_dfi_v2_1_display.sellers_sale_days = function(value)
  return "Sellers Sale Days: "..value
end

-- Dissect: Sellers Sale Days
finra_orf_tdds_dfi_v2_1_dissect.sellers_sale_days = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.sellers_sale_days
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.sellers_sale_days(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition Level 4
finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_4 = 1

-- Display: Sale Condition Level 4
finra_orf_tdds_dfi_v2_1_display.sale_condition_level_4 = function(value)
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
finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_4 = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_4
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.sale_condition_level_4(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_4, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition Level 3
finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_3 = 1

-- Display: Sale Condition Level 3
finra_orf_tdds_dfi_v2_1_display.sale_condition_level_3 = function(value)
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
finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_3 = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_3
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.sale_condition_level_3(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_3, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition Level 2
finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_2 = 1

-- Display: Sale Condition Level 2
finra_orf_tdds_dfi_v2_1_display.sale_condition_level_2 = function(value)
  return "Sale Condition Level 2: "..value
end

-- Dissect: Sale Condition Level 2
finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_2 = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_2
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.sale_condition_level_2(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_2, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition Level 1
finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_1 = 1

-- Display: Sale Condition Level 1
finra_orf_tdds_dfi_v2_1_display.sale_condition_level_1 = function(value)
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
finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_1 = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.sale_condition_level_1(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.sale_condition_level_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Datetime
finra_orf_tdds_dfi_v2_1_size_of.execution_datetime = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.year

  index = index + finra_orf_tdds_dfi_v2_1_size_of.month

  index = index + finra_orf_tdds_dfi_v2_1_size_of.day

  index = index + finra_orf_tdds_dfi_v2_1_size_of.hour

  index = index + finra_orf_tdds_dfi_v2_1_size_of.minute

  index = index + finra_orf_tdds_dfi_v2_1_size_of.second

  index = index + finra_orf_tdds_dfi_v2_1_size_of.fractional_second

  return index
end

-- Display: Execution Datetime
finra_orf_tdds_dfi_v2_1_display.execution_datetime = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Datetime
finra_orf_tdds_dfi_v2_1_dissect.execution_datetime_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 4 Byte Ascii String
  index, year = finra_orf_tdds_dfi_v2_1_dissect.year(buffer, index, packet, parent)

  -- Month: 2 Byte Ascii String
  index, month = finra_orf_tdds_dfi_v2_1_dissect.month(buffer, index, packet, parent)

  -- Day: 2 Byte Ascii String
  index, day = finra_orf_tdds_dfi_v2_1_dissect.day(buffer, index, packet, parent)

  -- Hour: 2 Byte Ascii String
  index, hour = finra_orf_tdds_dfi_v2_1_dissect.hour(buffer, index, packet, parent)

  -- Minute: 2 Byte Ascii String
  index, minute = finra_orf_tdds_dfi_v2_1_dissect.minute(buffer, index, packet, parent)

  -- Second: 2 Byte Ascii String
  index, second = finra_orf_tdds_dfi_v2_1_dissect.second(buffer, index, packet, parent)

  -- Fractional Second: 9 Byte Ascii String
  index, fractional_second = finra_orf_tdds_dfi_v2_1_dissect.fractional_second(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Datetime
finra_orf_tdds_dfi_v2_1_dissect.execution_datetime = function(buffer, offset, packet, parent)
  if show.execution_datetime then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.execution_datetime, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.execution_datetime_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.execution_datetime(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.execution_datetime_fields(buffer, offset, packet, element)
  end
end

-- Size: As Of Indicator
finra_orf_tdds_dfi_v2_1_size_of.as_of_indicator = 1

-- Display: As Of Indicator
finra_orf_tdds_dfi_v2_1_display.as_of_indicator = function(value)
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
finra_orf_tdds_dfi_v2_1_dissect.as_of_indicator = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.as_of_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.as_of_indicator(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.as_of_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trade Price
finra_orf_tdds_dfi_v2_1_size_of.trade_price = 12

-- Display: Trade Price
finra_orf_tdds_dfi_v2_1_display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
finra_orf_tdds_dfi_v2_1_dissect.trade_price = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.trade_price
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.trade_price(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Size: Trade Price Denominator
finra_orf_tdds_dfi_v2_1_size_of.trade_price_denominator = 1

-- Display: Trade Price Denominator
finra_orf_tdds_dfi_v2_1_display.trade_price_denominator = function(value)
  return "Trade Price Denominator: "..value
end

-- Dissect: Trade Price Denominator
finra_orf_tdds_dfi_v2_1_dissect.trade_price_denominator = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.trade_price_denominator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.trade_price_denominator(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.trade_price_denominator, range, value, display)

  return offset + length, value
end

-- Size: Report Volume
finra_orf_tdds_dfi_v2_1_size_of.report_volume = 8

-- Display: Report Volume
finra_orf_tdds_dfi_v2_1_display.report_volume = function(value)
  return "Report Volume: "..value
end

-- Dissect: Report Volume
finra_orf_tdds_dfi_v2_1_dissect.report_volume = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.report_volume
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.report_volume(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.report_volume, range, value, display)

  return offset + length, value
end

-- Calculate size of: Corrected Trade Information
finra_orf_tdds_dfi_v2_1_size_of.corrected_trade_information = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.report_volume

  index = index + finra_orf_tdds_dfi_v2_1_size_of.trade_price_denominator

  index = index + finra_orf_tdds_dfi_v2_1_size_of.trade_price

  index = index + finra_orf_tdds_dfi_v2_1_size_of.currency

  index = index + finra_orf_tdds_dfi_v2_1_size_of.as_of_indicator

  index = index + finra_orf_tdds_dfi_v2_1_size_of.execution_datetime(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_1

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_2

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_3

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_4

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sellers_sale_days

  return index
end

-- Display: Corrected Trade Information
finra_orf_tdds_dfi_v2_1_display.corrected_trade_information = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Trade Information
finra_orf_tdds_dfi_v2_1_dissect.corrected_trade_information_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Report Volume: 8 Byte Ascii String
  index, report_volume = finra_orf_tdds_dfi_v2_1_dissect.report_volume(buffer, index, packet, parent)

  -- Trade Price Denominator: 1 Byte Ascii String
  index, trade_price_denominator = finra_orf_tdds_dfi_v2_1_dissect.trade_price_denominator(buffer, index, packet, parent)

  -- Trade Price: 12 Byte Ascii String
  index, trade_price = finra_orf_tdds_dfi_v2_1_dissect.trade_price(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = finra_orf_tdds_dfi_v2_1_dissect.currency(buffer, index, packet, parent)

  -- As Of Indicator: 1 Byte Ascii String Enum with 3 values
  index, as_of_indicator = finra_orf_tdds_dfi_v2_1_dissect.as_of_indicator(buffer, index, packet, parent)

  -- Execution Datetime: Struct of 7 fields
  index, execution_datetime = finra_orf_tdds_dfi_v2_1_dissect.execution_datetime(buffer, index, packet, parent)

  -- Sale Condition Level 1: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_1 = finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_1(buffer, index, packet, parent)

  -- Sale Condition Level 2: 1 Byte Ascii String
  index, sale_condition_level_2 = finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_2(buffer, index, packet, parent)

  -- Sale Condition Level 3: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_3 = finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_3(buffer, index, packet, parent)

  -- Sale Condition Level 4: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_4 = finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_4(buffer, index, packet, parent)

  -- Sellers Sale Days: 2 Byte Ascii String
  index, sellers_sale_days = finra_orf_tdds_dfi_v2_1_dissect.sellers_sale_days(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Trade Information
finra_orf_tdds_dfi_v2_1_dissect.corrected_trade_information = function(buffer, offset, packet, parent)
  if show.corrected_trade_information then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.corrected_trade_information, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.corrected_trade_information_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.corrected_trade_information(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.corrected_trade_information_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Original Trade Information
finra_orf_tdds_dfi_v2_1_size_of.original_trade_information = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.report_volume

  index = index + finra_orf_tdds_dfi_v2_1_size_of.trade_price_denominator

  index = index + finra_orf_tdds_dfi_v2_1_size_of.trade_price

  index = index + finra_orf_tdds_dfi_v2_1_size_of.currency

  index = index + finra_orf_tdds_dfi_v2_1_size_of.as_of_indicator

  index = index + finra_orf_tdds_dfi_v2_1_size_of.execution_datetime(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_1

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_2

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_3

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_4

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sellers_sale_days

  return index
end

-- Display: Original Trade Information
finra_orf_tdds_dfi_v2_1_display.original_trade_information = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Original Trade Information
finra_orf_tdds_dfi_v2_1_dissect.original_trade_information_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Report Volume: 8 Byte Ascii String
  index, report_volume = finra_orf_tdds_dfi_v2_1_dissect.report_volume(buffer, index, packet, parent)

  -- Trade Price Denominator: 1 Byte Ascii String
  index, trade_price_denominator = finra_orf_tdds_dfi_v2_1_dissect.trade_price_denominator(buffer, index, packet, parent)

  -- Trade Price: 12 Byte Ascii String
  index, trade_price = finra_orf_tdds_dfi_v2_1_dissect.trade_price(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = finra_orf_tdds_dfi_v2_1_dissect.currency(buffer, index, packet, parent)

  -- As Of Indicator: 1 Byte Ascii String Enum with 3 values
  index, as_of_indicator = finra_orf_tdds_dfi_v2_1_dissect.as_of_indicator(buffer, index, packet, parent)

  -- Execution Datetime: Struct of 7 fields
  index, execution_datetime = finra_orf_tdds_dfi_v2_1_dissect.execution_datetime(buffer, index, packet, parent)

  -- Sale Condition Level 1: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_1 = finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_1(buffer, index, packet, parent)

  -- Sale Condition Level 2: 1 Byte Ascii String
  index, sale_condition_level_2 = finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_2(buffer, index, packet, parent)

  -- Sale Condition Level 3: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_3 = finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_3(buffer, index, packet, parent)

  -- Sale Condition Level 4: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_4 = finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_4(buffer, index, packet, parent)

  -- Sellers Sale Days: 2 Byte Ascii String
  index, sellers_sale_days = finra_orf_tdds_dfi_v2_1_dissect.sellers_sale_days(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Trade Information
finra_orf_tdds_dfi_v2_1_dissect.original_trade_information = function(buffer, offset, packet, parent)
  if show.original_trade_information then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.original_trade_information, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.original_trade_information_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.original_trade_information(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.original_trade_information_fields(buffer, offset, packet, element)
  end
end

-- Size: Report Function
finra_orf_tdds_dfi_v2_1_size_of.report_function = 1

-- Display: Report Function
finra_orf_tdds_dfi_v2_1_display.report_function = function(value)
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
finra_orf_tdds_dfi_v2_1_dissect.report_function = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.report_function
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.report_function(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.report_function, range, value, display)

  return offset + length, value
end

-- Calculate size of: Original Dissemination Date
finra_orf_tdds_dfi_v2_1_size_of.original_dissemination_date = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.year

  index = index + finra_orf_tdds_dfi_v2_1_size_of.month

  index = index + finra_orf_tdds_dfi_v2_1_size_of.day

  return index
end

-- Display: Original Dissemination Date
finra_orf_tdds_dfi_v2_1_display.original_dissemination_date = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Original Dissemination Date
finra_orf_tdds_dfi_v2_1_dissect.original_dissemination_date_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 4 Byte Ascii String
  index, year = finra_orf_tdds_dfi_v2_1_dissect.year(buffer, index, packet, parent)

  -- Month: 2 Byte Ascii String
  index, month = finra_orf_tdds_dfi_v2_1_dissect.month(buffer, index, packet, parent)

  -- Day: 2 Byte Ascii String
  index, day = finra_orf_tdds_dfi_v2_1_dissect.day(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Dissemination Date
finra_orf_tdds_dfi_v2_1_dissect.original_dissemination_date = function(buffer, offset, packet, parent)
  if show.original_dissemination_date then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.original_dissemination_date, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.original_dissemination_date_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.original_dissemination_date(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.original_dissemination_date_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Trade Correction Message
finra_orf_tdds_dfi_v2_1_size_of.trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.security_symbol

  index = index + finra_orf_tdds_dfi_v2_1_size_of.original_dissemination_date(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.report_function

  index = index + finra_orf_tdds_dfi_v2_1_size_of.original_trade_information(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.corrected_trade_information(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.trade_summary_information(buffer, offset + index)

  return index
end

-- Display: Trade Correction Message
finra_orf_tdds_dfi_v2_1_display.trade_correction_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
finra_orf_tdds_dfi_v2_1_dissect.trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  -- Security Symbol: 14 Byte Ascii String
  index, security_symbol = finra_orf_tdds_dfi_v2_1_dissect.security_symbol(buffer, index, packet, parent)

  -- Original Dissemination Date: Struct of 3 fields
  index, original_dissemination_date = finra_orf_tdds_dfi_v2_1_dissect.original_dissemination_date(buffer, index, packet, parent)

  -- Report Function: 1 Byte Ascii String Enum with 3 values
  index, report_function = finra_orf_tdds_dfi_v2_1_dissect.report_function(buffer, index, packet, parent)

  -- Original Trade Information: Struct of 11 fields
  index, original_trade_information = finra_orf_tdds_dfi_v2_1_dissect.original_trade_information(buffer, index, packet, parent)

  -- Corrected Trade Information: Struct of 11 fields
  index, corrected_trade_information = finra_orf_tdds_dfi_v2_1_dissect.corrected_trade_information(buffer, index, packet, parent)

  -- Trade Summary Information: Struct of 9 fields
  index, trade_summary_information = finra_orf_tdds_dfi_v2_1_dissect.trade_summary_information(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
finra_orf_tdds_dfi_v2_1_dissect.trade_correction_message = function(buffer, offset, packet, parent)
  if show.trade_correction_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.trade_correction_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.trade_correction_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.trade_correction_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.trade_correction_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Trade Cancel Error Message
finra_orf_tdds_dfi_v2_1_size_of.trade_cancel_error_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.security_symbol

  index = index + finra_orf_tdds_dfi_v2_1_size_of.original_dissemination_date(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.report_function

  index = index + finra_orf_tdds_dfi_v2_1_size_of.original_trade_information(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.trade_summary_information(buffer, offset + index)

  return index
end

-- Display: Trade Cancel Error Message
finra_orf_tdds_dfi_v2_1_display.trade_cancel_error_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
finra_orf_tdds_dfi_v2_1_dissect.trade_cancel_error_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  -- Security Symbol: 14 Byte Ascii String
  index, security_symbol = finra_orf_tdds_dfi_v2_1_dissect.security_symbol(buffer, index, packet, parent)

  -- Original Dissemination Date: Struct of 3 fields
  index, original_dissemination_date = finra_orf_tdds_dfi_v2_1_dissect.original_dissemination_date(buffer, index, packet, parent)

  -- Report Function: 1 Byte Ascii String Enum with 3 values
  index, report_function = finra_orf_tdds_dfi_v2_1_dissect.report_function(buffer, index, packet, parent)

  -- Original Trade Information: Struct of 11 fields
  index, original_trade_information = finra_orf_tdds_dfi_v2_1_dissect.original_trade_information(buffer, index, packet, parent)

  -- Trade Summary Information: Struct of 9 fields
  index, trade_summary_information = finra_orf_tdds_dfi_v2_1_dissect.trade_summary_information(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
finra_orf_tdds_dfi_v2_1_dissect.trade_cancel_error_message = function(buffer, offset, packet, parent)
  if show.trade_cancel_error_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.trade_cancel_error_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.trade_cancel_error_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.trade_cancel_error_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.trade_cancel_error_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Trade Information
finra_orf_tdds_dfi_v2_1_size_of.trade_information = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.report_volume

  index = index + finra_orf_tdds_dfi_v2_1_size_of.trade_price_denominator

  index = index + finra_orf_tdds_dfi_v2_1_size_of.trade_price

  index = index + finra_orf_tdds_dfi_v2_1_size_of.currency

  index = index + finra_orf_tdds_dfi_v2_1_size_of.as_of_indicator

  index = index + finra_orf_tdds_dfi_v2_1_size_of.execution_datetime(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_1

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_2

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_3

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_4

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sellers_sale_days

  index = index + finra_orf_tdds_dfi_v2_1_size_of.price_change_indicator

  return index
end

-- Display: Trade Information
finra_orf_tdds_dfi_v2_1_display.trade_information = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Information
finra_orf_tdds_dfi_v2_1_dissect.trade_information_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Report Volume: 8 Byte Ascii String
  index, report_volume = finra_orf_tdds_dfi_v2_1_dissect.report_volume(buffer, index, packet, parent)

  -- Trade Price Denominator: 1 Byte Ascii String
  index, trade_price_denominator = finra_orf_tdds_dfi_v2_1_dissect.trade_price_denominator(buffer, index, packet, parent)

  -- Trade Price: 12 Byte Ascii String
  index, trade_price = finra_orf_tdds_dfi_v2_1_dissect.trade_price(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = finra_orf_tdds_dfi_v2_1_dissect.currency(buffer, index, packet, parent)

  -- As Of Indicator: 1 Byte Ascii String Enum with 3 values
  index, as_of_indicator = finra_orf_tdds_dfi_v2_1_dissect.as_of_indicator(buffer, index, packet, parent)

  -- Execution Datetime: Struct of 7 fields
  index, execution_datetime = finra_orf_tdds_dfi_v2_1_dissect.execution_datetime(buffer, index, packet, parent)

  -- Sale Condition Level 1: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_1 = finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_1(buffer, index, packet, parent)

  -- Sale Condition Level 2: 1 Byte Ascii String
  index, sale_condition_level_2 = finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_2(buffer, index, packet, parent)

  -- Sale Condition Level 3: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_3 = finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_3(buffer, index, packet, parent)

  -- Sale Condition Level 4: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_4 = finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_4(buffer, index, packet, parent)

  -- Sellers Sale Days: 2 Byte Ascii String
  index, sellers_sale_days = finra_orf_tdds_dfi_v2_1_dissect.sellers_sale_days(buffer, index, packet, parent)

  -- Price Change Indicator: 1 Byte Ascii String Enum with 8 values
  index, price_change_indicator = finra_orf_tdds_dfi_v2_1_dissect.price_change_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Information
finra_orf_tdds_dfi_v2_1_dissect.trade_information = function(buffer, offset, packet, parent)
  if show.trade_information then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.trade_information, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.trade_information_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.trade_information(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.trade_information_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Trade Report Long Form Message
finra_orf_tdds_dfi_v2_1_size_of.trade_report_long_form_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.security_symbol

  index = index + finra_orf_tdds_dfi_v2_1_size_of.original_dissemination_date(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.trade_information(buffer, offset + index)

  return index
end

-- Display: Trade Report Long Form Message
finra_orf_tdds_dfi_v2_1_display.trade_report_long_form_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Long Form Message
finra_orf_tdds_dfi_v2_1_dissect.trade_report_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  -- Security Symbol: 14 Byte Ascii String
  index, security_symbol = finra_orf_tdds_dfi_v2_1_dissect.security_symbol(buffer, index, packet, parent)

  -- Original Dissemination Date: Struct of 3 fields
  index, original_dissemination_date = finra_orf_tdds_dfi_v2_1_dissect.original_dissemination_date(buffer, index, packet, parent)

  -- Trade Information: Struct of 12 fields
  index, trade_information = finra_orf_tdds_dfi_v2_1_dissect.trade_information(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Long Form Message
finra_orf_tdds_dfi_v2_1_dissect.trade_report_long_form_message = function(buffer, offset, packet, parent)
  if show.trade_report_long_form_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.trade_report_long_form_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.trade_report_long_form_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.trade_report_long_form_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.trade_report_long_form_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Report Volume Short
finra_orf_tdds_dfi_v2_1_size_of.report_volume_short = 6

-- Display: Report Volume Short
finra_orf_tdds_dfi_v2_1_display.report_volume_short = function(value)
  return "Report Volume Short: "..value
end

-- Dissect: Report Volume Short
finra_orf_tdds_dfi_v2_1_dissect.report_volume_short = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.report_volume_short
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.report_volume_short(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.report_volume_short, range, value, display)

  return offset + length, value
end

-- Size: Trade Price Short
finra_orf_tdds_dfi_v2_1_size_of.trade_price_short = 6

-- Display: Trade Price Short
finra_orf_tdds_dfi_v2_1_display.trade_price_short = function(value)
  return "Trade Price Short: "..value
end

-- Dissect: Trade Price Short
finra_orf_tdds_dfi_v2_1_dissect.trade_price_short = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.trade_price_short
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_orf_tdds_dfi_v2_1_display.trade_price_short(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.trade_price_short, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol Short
finra_orf_tdds_dfi_v2_1_size_of.security_symbol_short = 5

-- Display: Security Symbol Short
finra_orf_tdds_dfi_v2_1_display.security_symbol_short = function(value)
  return "Security Symbol Short: "..value
end

-- Dissect: Security Symbol Short
finra_orf_tdds_dfi_v2_1_dissect.security_symbol_short = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.security_symbol_short
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.security_symbol_short(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.security_symbol_short, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Report Short Form Message
finra_orf_tdds_dfi_v2_1_size_of.trade_report_short_form_message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_header(buffer, offset + index)

  index = index + finra_orf_tdds_dfi_v2_1_size_of.security_symbol_short

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sale_condition_level_1

  index = index + finra_orf_tdds_dfi_v2_1_size_of.trade_price_denominator

  index = index + finra_orf_tdds_dfi_v2_1_size_of.trade_price_short

  index = index + finra_orf_tdds_dfi_v2_1_size_of.report_volume_short

  index = index + finra_orf_tdds_dfi_v2_1_size_of.price_change_indicator

  return index
end

-- Display: Trade Report Short Form Message
finra_orf_tdds_dfi_v2_1_display.trade_report_short_form_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Short Form Message
finra_orf_tdds_dfi_v2_1_dissect.trade_report_short_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = finra_orf_tdds_dfi_v2_1_dissect.message_header(buffer, index, packet, parent)

  -- Security Symbol Short: 5 Byte Ascii String
  index, security_symbol_short = finra_orf_tdds_dfi_v2_1_dissect.security_symbol_short(buffer, index, packet, parent)

  -- Sale Condition Level 1: 1 Byte Ascii String Enum with 4 values
  index, sale_condition_level_1 = finra_orf_tdds_dfi_v2_1_dissect.sale_condition_level_1(buffer, index, packet, parent)

  -- Trade Price Denominator: 1 Byte Ascii String
  index, trade_price_denominator = finra_orf_tdds_dfi_v2_1_dissect.trade_price_denominator(buffer, index, packet, parent)

  -- Trade Price Short: 6 Byte Ascii String
  index, trade_price_short = finra_orf_tdds_dfi_v2_1_dissect.trade_price_short(buffer, index, packet, parent)

  -- Report Volume Short: 6 Byte Ascii String
  index, report_volume_short = finra_orf_tdds_dfi_v2_1_dissect.report_volume_short(buffer, index, packet, parent)

  -- Price Change Indicator: 1 Byte Ascii String Enum with 8 values
  index, price_change_indicator = finra_orf_tdds_dfi_v2_1_dissect.price_change_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Short Form Message
finra_orf_tdds_dfi_v2_1_dissect.trade_report_short_form_message = function(buffer, offset, packet, parent)
  if show.trade_report_short_form_message then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.trade_report_short_form_message, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.trade_report_short_form_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.trade_report_short_form_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.trade_report_short_form_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Trade Payload
finra_orf_tdds_dfi_v2_1_size_of.trade_payload = function(buffer, offset, trade_message_type)
  -- Size of Trade Report Short Form Message
  if trade_message_type == "5" then
    return finra_orf_tdds_dfi_v2_1_size_of.trade_report_short_form_message(buffer, offset)
  end
  -- Size of Trade Report Long Form Message
  if trade_message_type == "6" then
    return finra_orf_tdds_dfi_v2_1_size_of.trade_report_long_form_message(buffer, offset)
  end
  -- Size of Trade Cancel Error Message
  if trade_message_type == "7" then
    return finra_orf_tdds_dfi_v2_1_size_of.trade_cancel_error_message(buffer, offset)
  end
  -- Size of Trade Correction Message
  if trade_message_type == "8" then
    return finra_orf_tdds_dfi_v2_1_size_of.trade_correction_message(buffer, offset)
  end

  return 0
end

-- Display: Trade Payload
finra_orf_tdds_dfi_v2_1_display.trade_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Trade Payload
finra_orf_tdds_dfi_v2_1_dissect.trade_payload_branches = function(buffer, offset, packet, parent, trade_message_type)
  -- Dissect Trade Report Short Form Message
  if trade_message_type == "5" then
    return finra_orf_tdds_dfi_v2_1_dissect.trade_report_short_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Long Form Message
  if trade_message_type == "6" then
    return finra_orf_tdds_dfi_v2_1_dissect.trade_report_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error Message
  if trade_message_type == "7" then
    return finra_orf_tdds_dfi_v2_1_dissect.trade_cancel_error_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if trade_message_type == "8" then
    return finra_orf_tdds_dfi_v2_1_dissect.trade_correction_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Trade Payload
finra_orf_tdds_dfi_v2_1_dissect.trade_payload = function(buffer, offset, packet, parent, trade_message_type)
  if not show.trade_payload then
    return finra_orf_tdds_dfi_v2_1_dissect.trade_payload_branches(buffer, offset, packet, parent, trade_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_orf_tdds_dfi_v2_1_size_of.trade_payload(buffer, offset, trade_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_orf_tdds_dfi_v2_1_display.trade_payload(buffer, packet, parent)
  local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.trade_payload, range, display)

  return finra_orf_tdds_dfi_v2_1_dissect.trade_payload_branches(buffer, offset, packet, parent, trade_message_type)
end

-- Size: Trade Message Type
finra_orf_tdds_dfi_v2_1_size_of.trade_message_type = 1

-- Display: Trade Message Type
finra_orf_tdds_dfi_v2_1_display.trade_message_type = function(value)
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
finra_orf_tdds_dfi_v2_1_dissect.trade_message_type = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.trade_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.trade_message_type(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.trade_message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade
finra_orf_tdds_dfi_v2_1_size_of.trade = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.trade_message_type

  -- Calculate runtime size of Trade Payload field
  local trade_payload_offset = offset + index
  local trade_payload_type = buffer(trade_payload_offset - 1, 1):string()
  index = index + finra_orf_tdds_dfi_v2_1_size_of.trade_payload(buffer, trade_payload_offset, trade_payload_type)

  return index
end

-- Display: Trade
finra_orf_tdds_dfi_v2_1_display.trade = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade
finra_orf_tdds_dfi_v2_1_dissect.trade_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Message Type: 1 Byte Ascii String Enum with 4 values
  index, trade_message_type = finra_orf_tdds_dfi_v2_1_dissect.trade_message_type(buffer, index, packet, parent)

  -- Trade Payload: Runtime Type with 4 branches
  index = finra_orf_tdds_dfi_v2_1_dissect.trade_payload(buffer, index, packet, parent, trade_message_type)

  return index
end

-- Dissect: Trade
finra_orf_tdds_dfi_v2_1_dissect.trade = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.trade then
    local length = finra_orf_tdds_dfi_v2_1_size_of.trade(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_orf_tdds_dfi_v2_1_display.trade(buffer, packet, parent)
    parent = parent:add(finra_orf_tdds_dfi_v2_1.fields.trade, range, display)
  end

  return finra_orf_tdds_dfi_v2_1_dissect.trade_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
finra_orf_tdds_dfi_v2_1_size_of.payload = function(buffer, offset, message_category)
  -- Size of Trade
  if message_category == "T" then
    return finra_orf_tdds_dfi_v2_1_size_of.trade(buffer, offset)
  end
  -- Size of Administrative
  if message_category == "A" then
    return finra_orf_tdds_dfi_v2_1_size_of.administrative(buffer, offset)
  end
  -- Size of Control
  if message_category == "C" then
    return finra_orf_tdds_dfi_v2_1_size_of.control(buffer, offset)
  end

  return 0
end

-- Display: Payload
finra_orf_tdds_dfi_v2_1_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
finra_orf_tdds_dfi_v2_1_dissect.payload_branches = function(buffer, offset, packet, parent, message_category)
  -- Dissect Trade
  if message_category == "T" then
    return finra_orf_tdds_dfi_v2_1_dissect.trade(buffer, offset, packet, parent)
  end
  -- Dissect Administrative
  if message_category == "A" then
    return finra_orf_tdds_dfi_v2_1_dissect.administrative(buffer, offset, packet, parent)
  end
  -- Dissect Control
  if message_category == "C" then
    return finra_orf_tdds_dfi_v2_1_dissect.control(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
finra_orf_tdds_dfi_v2_1_dissect.payload = function(buffer, offset, packet, parent, message_category)
  if not show.payload then
    return finra_orf_tdds_dfi_v2_1_dissect.payload_branches(buffer, offset, packet, parent, message_category)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_orf_tdds_dfi_v2_1_size_of.payload(buffer, offset, message_category)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_orf_tdds_dfi_v2_1_display.payload(buffer, packet, parent)
  local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.payload, range, display)

  return finra_orf_tdds_dfi_v2_1_dissect.payload_branches(buffer, offset, packet, parent, message_category)
end

-- Size: Message Category
finra_orf_tdds_dfi_v2_1_size_of.message_category = 1

-- Display: Message Category
finra_orf_tdds_dfi_v2_1_display.message_category = function(value)
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
finra_orf_tdds_dfi_v2_1_dissect.message_category = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.message_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.message_category(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.message_category, range, value, display)

  return offset + length, value
end

-- Size: Length
finra_orf_tdds_dfi_v2_1_size_of.length = 2

-- Display: Length
finra_orf_tdds_dfi_v2_1_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
finra_orf_tdds_dfi_v2_1_dissect.length = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = finra_orf_tdds_dfi_v2_1_display.length(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mold Udp64
finra_orf_tdds_dfi_v2_1_size_of.mold_udp64 = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.length

  index = index + finra_orf_tdds_dfi_v2_1_size_of.message_category

  return index
end

-- Display: Mold Udp64
finra_orf_tdds_dfi_v2_1_display.mold_udp64 = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mold Udp64
finra_orf_tdds_dfi_v2_1_dissect.mold_udp64_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = finra_orf_tdds_dfi_v2_1_dissect.length(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String Enum with 3 values
  index, message_category = finra_orf_tdds_dfi_v2_1_dissect.message_category(buffer, index, packet, parent)

  return index
end

-- Dissect: Mold Udp64
finra_orf_tdds_dfi_v2_1_dissect.mold_udp64 = function(buffer, offset, packet, parent)
  if show.mold_udp64 then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.mold_udp64, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.mold_udp64_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.mold_udp64(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.mold_udp64_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Message
finra_orf_tdds_dfi_v2_1_size_of.message = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.mold_udp64(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + finra_orf_tdds_dfi_v2_1_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
finra_orf_tdds_dfi_v2_1_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
finra_orf_tdds_dfi_v2_1_dissect.message_fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(finra_orf_tdds_dfi_v2_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Mold Udp64: Struct of 2 fields
  index, mold_udp64 = finra_orf_tdds_dfi_v2_1_dissect.mold_udp64(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 3 branches
  index = finra_orf_tdds_dfi_v2_1_dissect.payload(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
finra_orf_tdds_dfi_v2_1_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = finra_orf_tdds_dfi_v2_1_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_orf_tdds_dfi_v2_1_display.message(buffer, packet, parent)
    parent = parent:add(finra_orf_tdds_dfi_v2_1.fields.message, range, display)
  end

  return finra_orf_tdds_dfi_v2_1_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Count
finra_orf_tdds_dfi_v2_1_size_of.count = 2

-- Display: Count
finra_orf_tdds_dfi_v2_1_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
finra_orf_tdds_dfi_v2_1_dissect.count = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = finra_orf_tdds_dfi_v2_1_display.count(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
finra_orf_tdds_dfi_v2_1_size_of.sequence = 8

-- Display: Sequence
finra_orf_tdds_dfi_v2_1_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
finra_orf_tdds_dfi_v2_1_dissect.sequence = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = finra_orf_tdds_dfi_v2_1_display.sequence(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
finra_orf_tdds_dfi_v2_1_size_of.session = 10

-- Display: Session
finra_orf_tdds_dfi_v2_1_display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
finra_orf_tdds_dfi_v2_1_dissect.session = function(buffer, offset, packet, parent)
  local length = finra_orf_tdds_dfi_v2_1_size_of.session
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_orf_tdds_dfi_v2_1_display.session(value, buffer, offset, packet, parent)

  parent:add(finra_orf_tdds_dfi_v2_1.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
finra_orf_tdds_dfi_v2_1_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + finra_orf_tdds_dfi_v2_1_size_of.session

  index = index + finra_orf_tdds_dfi_v2_1_size_of.sequence

  index = index + finra_orf_tdds_dfi_v2_1_size_of.count

  return index
end

-- Display: Packet Header
finra_orf_tdds_dfi_v2_1_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
finra_orf_tdds_dfi_v2_1_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = finra_orf_tdds_dfi_v2_1_dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = finra_orf_tdds_dfi_v2_1_dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = finra_orf_tdds_dfi_v2_1_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
finra_orf_tdds_dfi_v2_1_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(finra_orf_tdds_dfi_v2_1.fields.packet_header, buffer(offset, 0))
    local index = finra_orf_tdds_dfi_v2_1_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = finra_orf_tdds_dfi_v2_1_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return finra_orf_tdds_dfi_v2_1_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
finra_orf_tdds_dfi_v2_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = finra_orf_tdds_dfi_v2_1_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = finra_orf_tdds_dfi_v2_1_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function finra_orf_tdds_dfi_v2_1.init()
end

-- Dissector for Finra Orf Tdds Dfi 2.1
function finra_orf_tdds_dfi_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = finra_orf_tdds_dfi_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(finra_orf_tdds_dfi_v2_1, buffer(), finra_orf_tdds_dfi_v2_1.description, "("..buffer:len().." Bytes)")
  return finra_orf_tdds_dfi_v2_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, finra_orf_tdds_dfi_v2_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.finra_orf_tdds_dfi_v2_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Finra Orf Tdds Dfi 2.1
local function finra_orf_tdds_dfi_v2_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.finra_orf_tdds_dfi_v2_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = finra_orf_tdds_dfi_v2_1
  finra_orf_tdds_dfi_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Finra Orf Tdds Dfi 2.1
finra_orf_tdds_dfi_v2_1:register_heuristic("udp", finra_orf_tdds_dfi_v2_1_heuristic)

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
