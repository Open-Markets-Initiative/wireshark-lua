-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Finra Otc Bbds Dfi 2018.1A Protocol
local finra_otc_bbds_dfi_v2018_1a = Proto("Finra.Otc.Bbds.Dfi.v2018.1A.Lua", "Finra Otc Bbds Dfi 2018.1A")

-- Component Tables
local show = {}
local format = {}
local finra_otc_bbds_dfi_v2018_1a_display = {}
local finra_otc_bbds_dfi_v2018_1a_dissect = {}
local finra_otc_bbds_dfi_v2018_1a_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Finra Otc Bbds Dfi 2018.1A Fields
finra_otc_bbds_dfi_v2018_1a.fields.action = ProtoField.new("Action", "finra.otc.bbds.dfi.v2018.1a.action", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.action_datetime = ProtoField.new("Action Datetime", "finra.otc.bbds.dfi.v2018.1a.actiondatetime", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.administrative = ProtoField.new("Administrative", "finra.otc.bbds.dfi.v2018.1a.administrative", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "finra.otc.bbds.dfi.v2018.1a.administrativemessagetype", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.administrative_payload = ProtoField.new("Administrative Payload", "finra.otc.bbds.dfi.v2018.1a.administrativepayload", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.ask_price = ProtoField.new("Ask Price", "finra.otc.bbds.dfi.v2018.1a.askprice", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.ask_price_denominator = ProtoField.new("Ask Price Denominator", "finra.otc.bbds.dfi.v2018.1a.askpricedenominator", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.ask_size = ProtoField.new("Ask Size", "finra.otc.bbds.dfi.v2018.1a.asksize", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.bid_price = ProtoField.new("Bid Price", "finra.otc.bbds.dfi.v2018.1a.bidprice", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.bid_price_denominator = ProtoField.new("Bid Price Denominator", "finra.otc.bbds.dfi.v2018.1a.bidpricedenominator", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.bid_size = ProtoField.new("Bid Size", "finra.otc.bbds.dfi.v2018.1a.bidsize", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.block_soh = ProtoField.new("Block Soh", "finra.otc.bbds.dfi.v2018.1a.blocksoh", ftypes.UINT8)
finra_otc_bbds_dfi_v2018_1a.fields.control = ProtoField.new("Control", "finra.otc.bbds.dfi.v2018.1a.control", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.control_message_type = ProtoField.new("Control Message Type", "finra.otc.bbds.dfi.v2018.1a.controlmessagetype", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.control_payload = ProtoField.new("Control Payload", "finra.otc.bbds.dfi.v2018.1a.controlpayload", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.currency = ProtoField.new("Currency", "finra.otc.bbds.dfi.v2018.1a.currency", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.datetime = ProtoField.new("Datetime", "finra.otc.bbds.dfi.v2018.1a.datetime", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.day = ProtoField.new("Day", "finra.otc.bbds.dfi.v2018.1a.day", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.end_of_day_message = ProtoField.new("End Of Day Message", "finra.otc.bbds.dfi.v2018.1a.endofdaymessage", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.end_of_retransmission_requests_message = ProtoField.new("End Of Retransmission Requests Message", "finra.otc.bbds.dfi.v2018.1a.endofretransmissionrequestsmessage", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.end_of_trade_reporting_message = ProtoField.new("End Of Trade Reporting Message", "finra.otc.bbds.dfi.v2018.1a.endoftradereportingmessage", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.end_of_transmissions_message = ProtoField.new("End Of Transmissions Message", "finra.otc.bbds.dfi.v2018.1a.endoftransmissionsmessage", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.general_administrative_message = ProtoField.new("General Administrative Message", "finra.otc.bbds.dfi.v2018.1a.generaladministrativemessage", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.hour = ProtoField.new("Hour", "finra.otc.bbds.dfi.v2018.1a.hour", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.inside_appendage = ProtoField.new("Inside Appendage", "finra.otc.bbds.dfi.v2018.1a.insideappendage", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.inside_appendage_indicator = ProtoField.new("Inside Appendage Indicator", "finra.otc.bbds.dfi.v2018.1a.insideappendageindicator", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.inside_ask_price = ProtoField.new("Inside Ask Price", "finra.otc.bbds.dfi.v2018.1a.insideaskprice", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.inside_ask_price_denominator = ProtoField.new("Inside Ask Price Denominator", "finra.otc.bbds.dfi.v2018.1a.insideaskpricedenominator", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.inside_ask_size = ProtoField.new("Inside Ask Size", "finra.otc.bbds.dfi.v2018.1a.insideasksize", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.inside_bid_price = ProtoField.new("Inside Bid Price", "finra.otc.bbds.dfi.v2018.1a.insidebidprice", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.inside_bid_price_denominator = ProtoField.new("Inside Bid Price Denominator", "finra.otc.bbds.dfi.v2018.1a.insidebidpricedenominator", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.inside_bid_size = ProtoField.new("Inside Bid Size", "finra.otc.bbds.dfi.v2018.1a.insidebidsize", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.inside_quote_condition = ProtoField.new("Inside Quote Condition", "finra.otc.bbds.dfi.v2018.1a.insidequotecondition", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "finra.otc.bbds.dfi.v2018.1a.lineintegritymessage", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.market_center_originator_id = ProtoField.new("Market Center Originator Id", "finra.otc.bbds.dfi.v2018.1a.marketcenteroriginatorid", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.market_participant_identifier = ProtoField.new("Market Participant Identifier", "finra.otc.bbds.dfi.v2018.1a.marketparticipantidentifier", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.market_participant_location_id = ProtoField.new("Market Participant Location Id", "finra.otc.bbds.dfi.v2018.1a.marketparticipantlocationid", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.market_participant_quote_condition = ProtoField.new("Market Participant Quote Condition", "finra.otc.bbds.dfi.v2018.1a.marketparticipantquotecondition", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.market_participant_quote_update_message = ProtoField.new("Market Participant Quote Update Message", "finra.otc.bbds.dfi.v2018.1a.marketparticipantquoteupdatemessage", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.market_participant_status = ProtoField.new("Market Participant Status", "finra.otc.bbds.dfi.v2018.1a.marketparticipantstatus", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.market_session_close_message = ProtoField.new("Market Session Close Message", "finra.otc.bbds.dfi.v2018.1a.marketsessionclosemessage", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.market_session_open_message = ProtoField.new("Market Session Open Message", "finra.otc.bbds.dfi.v2018.1a.marketsessionopenmessage", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.message = ProtoField.new("Message", "finra.otc.bbds.dfi.v2018.1a.message", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.message_category = ProtoField.new("Message Category", "finra.otc.bbds.dfi.v2018.1a.messagecategory", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.message_header = ProtoField.new("Message Header", "finra.otc.bbds.dfi.v2018.1a.messageheader", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.message_separator = ProtoField.new("Message Separator", "finra.otc.bbds.dfi.v2018.1a.messageseparator", ftypes.UINT8)
finra_otc_bbds_dfi_v2018_1a.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "finra.otc.bbds.dfi.v2018.1a.messagesequencenumber", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.minute = ProtoField.new("Minute", "finra.otc.bbds.dfi.v2018.1a.minute", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.month = ProtoField.new("Month", "finra.otc.bbds.dfi.v2018.1a.month", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.otcbb_symbol = ProtoField.new("Otcbb Symbol", "finra.otc.bbds.dfi.v2018.1a.otcbbsymbol", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.otcbb_type = ProtoField.new("Otcbb Type", "finra.otc.bbds.dfi.v2018.1a.otcbbtype", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.packet = ProtoField.new("Packet", "finra.otc.bbds.dfi.v2018.1a.packet", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.payload = ProtoField.new("Payload", "finra.otc.bbds.dfi.v2018.1a.payload", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.quotation = ProtoField.new("Quotation", "finra.otc.bbds.dfi.v2018.1a.quotation", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.quotation_message_type = ProtoField.new("Quotation Message Type", "finra.otc.bbds.dfi.v2018.1a.quotationmessagetype", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.quotation_payload = ProtoField.new("Quotation Payload", "finra.otc.bbds.dfi.v2018.1a.quotationpayload", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.reason_code = ProtoField.new("Reason Code", "finra.otc.bbds.dfi.v2018.1a.reasoncode", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.reserved = ProtoField.new("Reserved", "finra.otc.bbds.dfi.v2018.1a.reserved", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.retransmission_requester = ProtoField.new("Retransmission Requester", "finra.otc.bbds.dfi.v2018.1a.retransmissionrequester", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.second = ProtoField.new("Second", "finra.otc.bbds.dfi.v2018.1a.second", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "finra.otc.bbds.dfi.v2018.1a.sequencenumberresetmessage", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.session_identifier = ProtoField.new("Session Identifier", "finra.otc.bbds.dfi.v2018.1a.sessionidentifier", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "finra.otc.bbds.dfi.v2018.1a.startofdaymessage", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.text = ProtoField.new("Text", "finra.otc.bbds.dfi.v2018.1a.text", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.trading_action_message = ProtoField.new("Trading Action Message", "finra.otc.bbds.dfi.v2018.1a.tradingactionmessage", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.unsolicited_indicator = ProtoField.new("Unsolicited Indicator", "finra.otc.bbds.dfi.v2018.1a.unsolicitedindicator", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.wanted_indicator = ProtoField.new("Wanted Indicator", "finra.otc.bbds.dfi.v2018.1a.wantedindicator", ftypes.STRING)
finra_otc_bbds_dfi_v2018_1a.fields.year = ProtoField.new("Year", "finra.otc.bbds.dfi.v2018.1a.year", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Finra Otc Bbds Dfi 2018.1A Element Dissection Options
show.action_datetime = true
show.administrative = true
show.control = true
show.datetime = true
show.end_of_day_message = true
show.end_of_retransmission_requests_message = true
show.end_of_trade_reporting_message = true
show.end_of_transmissions_message = true
show.general_administrative_message = true
show.inside_appendage = true
show.line_integrity_message = true
show.market_participant_quote_update_message = true
show.market_session_close_message = true
show.market_session_open_message = true
show.message = true
show.message_header = true
show.packet = true
show.quotation = true
show.sequence_number_reset_message = true
show.start_of_day_message = true
show.trading_action_message = true
show.administrative_payload = false
show.control_payload = false
show.payload = false
show.quotation_payload = false

-- Register Finra Otc Bbds Dfi 2018.1A Show Options
finra_otc_bbds_dfi_v2018_1a.prefs.show_action_datetime = Pref.bool("Show Action Datetime", show.action_datetime, "Parse and add Action Datetime to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_administrative = Pref.bool("Show Administrative", show.administrative, "Parse and add Administrative to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_control = Pref.bool("Show Control", show.control, "Parse and add Control to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_datetime = Pref.bool("Show Datetime", show.datetime, "Parse and add Datetime to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_day_message = Pref.bool("Show End Of Day Message", show.end_of_day_message, "Parse and add End Of Day Message to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_retransmission_requests_message = Pref.bool("Show End Of Retransmission Requests Message", show.end_of_retransmission_requests_message, "Parse and add End Of Retransmission Requests Message to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_trade_reporting_message = Pref.bool("Show End Of Trade Reporting Message", show.end_of_trade_reporting_message, "Parse and add End Of Trade Reporting Message to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_transmissions_message = Pref.bool("Show End Of Transmissions Message", show.end_of_transmissions_message, "Parse and add End Of Transmissions Message to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_general_administrative_message = Pref.bool("Show General Administrative Message", show.general_administrative_message, "Parse and add General Administrative Message to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_inside_appendage = Pref.bool("Show Inside Appendage", show.inside_appendage, "Parse and add Inside Appendage to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_line_integrity_message = Pref.bool("Show Line Integrity Message", show.line_integrity_message, "Parse and add Line Integrity Message to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_market_participant_quote_update_message = Pref.bool("Show Market Participant Quote Update Message", show.market_participant_quote_update_message, "Parse and add Market Participant Quote Update Message to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_market_session_close_message = Pref.bool("Show Market Session Close Message", show.market_session_close_message, "Parse and add Market Session Close Message to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_market_session_open_message = Pref.bool("Show Market Session Open Message", show.market_session_open_message, "Parse and add Market Session Open Message to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_quotation = Pref.bool("Show Quotation", show.quotation, "Parse and add Quotation to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_administrative_payload = Pref.bool("Show Administrative Payload", show.administrative_payload, "Parse and add Administrative Payload to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_control_payload = Pref.bool("Show Control Payload", show.control_payload, "Parse and add Control Payload to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
finra_otc_bbds_dfi_v2018_1a.prefs.show_quotation_payload = Pref.bool("Show Quotation Payload", show.quotation_payload, "Parse and add Quotation Payload to protocol tree")

-- Handle changed preferences
function finra_otc_bbds_dfi_v2018_1a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.action_datetime ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_action_datetime then
    show.action_datetime = finra_otc_bbds_dfi_v2018_1a.prefs.show_action_datetime
    changed = true
  end
  if show.administrative ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_administrative then
    show.administrative = finra_otc_bbds_dfi_v2018_1a.prefs.show_administrative
    changed = true
  end
  if show.control ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_control then
    show.control = finra_otc_bbds_dfi_v2018_1a.prefs.show_control
    changed = true
  end
  if show.datetime ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_datetime then
    show.datetime = finra_otc_bbds_dfi_v2018_1a.prefs.show_datetime
    changed = true
  end
  if show.end_of_day_message ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_day_message then
    show.end_of_day_message = finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_day_message
    changed = true
  end
  if show.end_of_retransmission_requests_message ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_retransmission_requests_message then
    show.end_of_retransmission_requests_message = finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_retransmission_requests_message
    changed = true
  end
  if show.end_of_trade_reporting_message ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_trade_reporting_message then
    show.end_of_trade_reporting_message = finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_trade_reporting_message
    changed = true
  end
  if show.end_of_transmissions_message ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_transmissions_message then
    show.end_of_transmissions_message = finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_transmissions_message
    changed = true
  end
  if show.general_administrative_message ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_general_administrative_message then
    show.general_administrative_message = finra_otc_bbds_dfi_v2018_1a.prefs.show_general_administrative_message
    changed = true
  end
  if show.inside_appendage ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_inside_appendage then
    show.inside_appendage = finra_otc_bbds_dfi_v2018_1a.prefs.show_inside_appendage
    changed = true
  end
  if show.line_integrity_message ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_line_integrity_message then
    show.line_integrity_message = finra_otc_bbds_dfi_v2018_1a.prefs.show_line_integrity_message
    changed = true
  end
  if show.market_participant_quote_update_message ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_market_participant_quote_update_message then
    show.market_participant_quote_update_message = finra_otc_bbds_dfi_v2018_1a.prefs.show_market_participant_quote_update_message
    changed = true
  end
  if show.market_session_close_message ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_market_session_close_message then
    show.market_session_close_message = finra_otc_bbds_dfi_v2018_1a.prefs.show_market_session_close_message
    changed = true
  end
  if show.market_session_open_message ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_market_session_open_message then
    show.market_session_open_message = finra_otc_bbds_dfi_v2018_1a.prefs.show_market_session_open_message
    changed = true
  end
  if show.message ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_message then
    show.message = finra_otc_bbds_dfi_v2018_1a.prefs.show_message
    changed = true
  end
  if show.message_header ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_message_header then
    show.message_header = finra_otc_bbds_dfi_v2018_1a.prefs.show_message_header
    changed = true
  end
  if show.packet ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_packet then
    show.packet = finra_otc_bbds_dfi_v2018_1a.prefs.show_packet
    changed = true
  end
  if show.quotation ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_quotation then
    show.quotation = finra_otc_bbds_dfi_v2018_1a.prefs.show_quotation
    changed = true
  end
  if show.sequence_number_reset_message ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = finra_otc_bbds_dfi_v2018_1a.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.start_of_day_message ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_start_of_day_message then
    show.start_of_day_message = finra_otc_bbds_dfi_v2018_1a.prefs.show_start_of_day_message
    changed = true
  end
  if show.trading_action_message ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_trading_action_message then
    show.trading_action_message = finra_otc_bbds_dfi_v2018_1a.prefs.show_trading_action_message
    changed = true
  end
  if show.administrative_payload ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_administrative_payload then
    show.administrative_payload = finra_otc_bbds_dfi_v2018_1a.prefs.show_administrative_payload
    changed = true
  end
  if show.control_payload ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_control_payload then
    show.control_payload = finra_otc_bbds_dfi_v2018_1a.prefs.show_control_payload
    changed = true
  end
  if show.payload ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_payload then
    show.payload = finra_otc_bbds_dfi_v2018_1a.prefs.show_payload
    changed = true
  end
  if show.quotation_payload ~= finra_otc_bbds_dfi_v2018_1a.prefs.show_quotation_payload then
    show.quotation_payload = finra_otc_bbds_dfi_v2018_1a.prefs.show_quotation_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Finra Otc Bbds Dfi 2018.1A
-----------------------------------------------------------------------

-- Size: Message Separator
finra_otc_bbds_dfi_v2018_1a_size_of.message_separator = 1

-- Display: Message Separator
finra_otc_bbds_dfi_v2018_1a_display.message_separator = function(value)
  return "Message Separator: "..value
end

-- Dissect: Message Separator
finra_otc_bbds_dfi_v2018_1a_dissect.message_separator = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.message_separator
  local range = buffer(offset, length)
  local value = range:uint()
  local display = finra_otc_bbds_dfi_v2018_1a_display.message_separator(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.message_separator, range, value, display)

  return offset + length, value
end

-- Size: Reserved
finra_otc_bbds_dfi_v2018_1a_size_of.reserved = 1

-- Display: Reserved
finra_otc_bbds_dfi_v2018_1a_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
finra_otc_bbds_dfi_v2018_1a_dissect.reserved = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.reserved
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.reserved(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Second
finra_otc_bbds_dfi_v2018_1a_size_of.second = 1

-- Display: Second
finra_otc_bbds_dfi_v2018_1a_display.second = function(value)
  return "Second: "..value
end

-- Dissect: Second
finra_otc_bbds_dfi_v2018_1a_dissect.second = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.second
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.second(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.second, range, value, display)

  return offset + length, value
end

-- Size: Minute
finra_otc_bbds_dfi_v2018_1a_size_of.minute = 1

-- Display: Minute
finra_otc_bbds_dfi_v2018_1a_display.minute = function(value)
  return "Minute: "..value
end

-- Dissect: Minute
finra_otc_bbds_dfi_v2018_1a_dissect.minute = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.minute
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.minute(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.minute, range, value, display)

  return offset + length, value
end

-- Size: Hour
finra_otc_bbds_dfi_v2018_1a_size_of.hour = 1

-- Display: Hour
finra_otc_bbds_dfi_v2018_1a_display.hour = function(value)
  return "Hour: "..value
end

-- Dissect: Hour
finra_otc_bbds_dfi_v2018_1a_dissect.hour = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.hour
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.hour(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.hour, range, value, display)

  return offset + length, value
end

-- Size: Day
finra_otc_bbds_dfi_v2018_1a_size_of.day = 1

-- Display: Day
finra_otc_bbds_dfi_v2018_1a_display.day = function(value)
  return "Day: "..value
end

-- Dissect: Day
finra_otc_bbds_dfi_v2018_1a_dissect.day = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.day
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.day(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.day, range, value, display)

  return offset + length, value
end

-- Size: Month
finra_otc_bbds_dfi_v2018_1a_size_of.month = 1

-- Display: Month
finra_otc_bbds_dfi_v2018_1a_display.month = function(value)
  return "Month: "..value
end

-- Dissect: Month
finra_otc_bbds_dfi_v2018_1a_dissect.month = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.month
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.month(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.month, range, value, display)

  return offset + length, value
end

-- Size: Year
finra_otc_bbds_dfi_v2018_1a_size_of.year = 2

-- Display: Year
finra_otc_bbds_dfi_v2018_1a_display.year = function(value)
  return "Year: "..value
end

-- Dissect: Year
finra_otc_bbds_dfi_v2018_1a_dissect.year = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.year
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.year(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.year, range, value, display)

  return offset + length, value
end

-- Calculate size of: Datetime
finra_otc_bbds_dfi_v2018_1a_size_of.datetime = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.year

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.month

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.day

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.hour

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.minute

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.second

  return index
end

-- Display: Datetime
finra_otc_bbds_dfi_v2018_1a_display.datetime = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Datetime
finra_otc_bbds_dfi_v2018_1a_dissect.datetime_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Ascii String
  index, year = finra_otc_bbds_dfi_v2018_1a_dissect.year(buffer, index, packet, parent)

  -- Month: 1 Byte Ascii String
  index, month = finra_otc_bbds_dfi_v2018_1a_dissect.month(buffer, index, packet, parent)

  -- Day: 1 Byte Ascii String
  index, day = finra_otc_bbds_dfi_v2018_1a_dissect.day(buffer, index, packet, parent)

  -- Hour: 1 Byte Ascii String
  index, hour = finra_otc_bbds_dfi_v2018_1a_dissect.hour(buffer, index, packet, parent)

  -- Minute: 1 Byte Ascii String
  index, minute = finra_otc_bbds_dfi_v2018_1a_dissect.minute(buffer, index, packet, parent)

  -- Second: 1 Byte Ascii String
  index, second = finra_otc_bbds_dfi_v2018_1a_dissect.second(buffer, index, packet, parent)

  return index
end

-- Dissect: Datetime
finra_otc_bbds_dfi_v2018_1a_dissect.datetime = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.datetime then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.datetime(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.datetime(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.datetime, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.datetime_fields(buffer, offset, packet, parent)
end

-- Size: Market Center Originator Id
finra_otc_bbds_dfi_v2018_1a_size_of.market_center_originator_id = 2

-- Display: Market Center Originator Id
finra_otc_bbds_dfi_v2018_1a_display.market_center_originator_id = function(value)
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
finra_otc_bbds_dfi_v2018_1a_dissect.market_center_originator_id = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.market_center_originator_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.market_center_originator_id(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.market_center_originator_id, range, value, display)

  return offset + length, value
end

-- Size: Message Sequence Number
finra_otc_bbds_dfi_v2018_1a_size_of.message_sequence_number = 8

-- Display: Message Sequence Number
finra_otc_bbds_dfi_v2018_1a_display.message_sequence_number = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
finra_otc_bbds_dfi_v2018_1a_dissect.message_sequence_number = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.message_sequence_number
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a_display.message_sequence_number(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Retransmission Requester
finra_otc_bbds_dfi_v2018_1a_size_of.retransmission_requester = 2

-- Display: Retransmission Requester
finra_otc_bbds_dfi_v2018_1a_display.retransmission_requester = function(value)
  return "Retransmission Requester: "..value
end

-- Dissect: Retransmission Requester
finra_otc_bbds_dfi_v2018_1a_dissect.retransmission_requester = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.retransmission_requester
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.retransmission_requester(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.retransmission_requester, range, value, display)

  return offset + length, value
end

-- Size: Session Identifier
finra_otc_bbds_dfi_v2018_1a_size_of.session_identifier = 1

-- Display: Session Identifier
finra_otc_bbds_dfi_v2018_1a_display.session_identifier = function(value)
  if value == "A" then
    return "Session Identifier: All Market Sessions Or Session Independent (A)"
  end
  if value == "U" then
    return "Session Identifier: Us Market Session (U)"
  end

  return "Session Identifier: Unknown("..value..")"
end

-- Dissect: Session Identifier
finra_otc_bbds_dfi_v2018_1a_dissect.session_identifier = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.session_identifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.session_identifier(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.session_identifier, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
finra_otc_bbds_dfi_v2018_1a_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.session_identifier

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.retransmission_requester

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.message_sequence_number

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.market_center_originator_id

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.datetime(buffer, offset + index)

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.reserved

  return index
end

-- Display: Message Header
finra_otc_bbds_dfi_v2018_1a_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
finra_otc_bbds_dfi_v2018_1a_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Identifier: 1 Byte Ascii String Enum with 2 values
  index, session_identifier = finra_otc_bbds_dfi_v2018_1a_dissect.session_identifier(buffer, index, packet, parent)

  -- Retransmission Requester: 2 Byte Ascii String
  index, retransmission_requester = finra_otc_bbds_dfi_v2018_1a_dissect.retransmission_requester(buffer, index, packet, parent)

  -- Message Sequence Number: 8 Byte Ascii String
  index, message_sequence_number = finra_otc_bbds_dfi_v2018_1a_dissect.message_sequence_number(buffer, index, packet, parent)

  -- Market Center Originator Id: 2 Byte Ascii String Enum with 4 values
  index, market_center_originator_id = finra_otc_bbds_dfi_v2018_1a_dissect.market_center_originator_id(buffer, index, packet, parent)

  -- Datetime: Struct of 6 fields
  index, datetime = finra_otc_bbds_dfi_v2018_1a_dissect.datetime(buffer, index, packet, parent)

  -- Reserved: 1 Byte Ascii String
  index, reserved = finra_otc_bbds_dfi_v2018_1a_dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
finra_otc_bbds_dfi_v2018_1a_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.message_header(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.message_header, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: End Of Trade Reporting Message
finra_otc_bbds_dfi_v2018_1a_size_of.end_of_trade_reporting_message = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: End Of Trade Reporting Message
finra_otc_bbds_dfi_v2018_1a_display.end_of_trade_reporting_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Trade Reporting Message
finra_otc_bbds_dfi_v2018_1a_dissect.end_of_trade_reporting_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Trade Reporting Message
finra_otc_bbds_dfi_v2018_1a_dissect.end_of_trade_reporting_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_trade_reporting_message then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.end_of_trade_reporting_message(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.end_of_trade_reporting_message(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.end_of_trade_reporting_message, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.end_of_trade_reporting_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Sequence Number Reset Message
finra_otc_bbds_dfi_v2018_1a_size_of.sequence_number_reset_message = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: Sequence Number Reset Message
finra_otc_bbds_dfi_v2018_1a_display.sequence_number_reset_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
finra_otc_bbds_dfi_v2018_1a_dissect.sequence_number_reset_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
finra_otc_bbds_dfi_v2018_1a_dissect.sequence_number_reset_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sequence_number_reset_message then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.sequence_number_reset_message(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.sequence_number_reset_message(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.sequence_number_reset_message, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.sequence_number_reset_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Line Integrity Message
finra_otc_bbds_dfi_v2018_1a_size_of.line_integrity_message = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: Line Integrity Message
finra_otc_bbds_dfi_v2018_1a_display.line_integrity_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Line Integrity Message
finra_otc_bbds_dfi_v2018_1a_dissect.line_integrity_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Line Integrity Message
finra_otc_bbds_dfi_v2018_1a_dissect.line_integrity_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.line_integrity_message then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.line_integrity_message(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.line_integrity_message(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.line_integrity_message, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.line_integrity_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: End Of Transmissions Message
finra_otc_bbds_dfi_v2018_1a_size_of.end_of_transmissions_message = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: End Of Transmissions Message
finra_otc_bbds_dfi_v2018_1a_display.end_of_transmissions_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Transmissions Message
finra_otc_bbds_dfi_v2018_1a_dissect.end_of_transmissions_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmissions Message
finra_otc_bbds_dfi_v2018_1a_dissect.end_of_transmissions_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_transmissions_message then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.end_of_transmissions_message(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.end_of_transmissions_message(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.end_of_transmissions_message, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.end_of_transmissions_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: End Of Retransmission Requests Message
finra_otc_bbds_dfi_v2018_1a_size_of.end_of_retransmission_requests_message = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: End Of Retransmission Requests Message
finra_otc_bbds_dfi_v2018_1a_display.end_of_retransmission_requests_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Retransmission Requests Message
finra_otc_bbds_dfi_v2018_1a_dissect.end_of_retransmission_requests_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Retransmission Requests Message
finra_otc_bbds_dfi_v2018_1a_dissect.end_of_retransmission_requests_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_retransmission_requests_message then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.end_of_retransmission_requests_message(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.end_of_retransmission_requests_message(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.end_of_retransmission_requests_message, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.end_of_retransmission_requests_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Market Session Close Message
finra_otc_bbds_dfi_v2018_1a_size_of.market_session_close_message = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: Market Session Close Message
finra_otc_bbds_dfi_v2018_1a_display.market_session_close_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Session Close Message
finra_otc_bbds_dfi_v2018_1a_dissect.market_session_close_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Close Message
finra_otc_bbds_dfi_v2018_1a_dissect.market_session_close_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_session_close_message then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.market_session_close_message(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.market_session_close_message(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.market_session_close_message, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.market_session_close_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Market Session Open Message
finra_otc_bbds_dfi_v2018_1a_size_of.market_session_open_message = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: Market Session Open Message
finra_otc_bbds_dfi_v2018_1a_display.market_session_open_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Session Open Message
finra_otc_bbds_dfi_v2018_1a_dissect.market_session_open_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Open Message
finra_otc_bbds_dfi_v2018_1a_dissect.market_session_open_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_session_open_message then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.market_session_open_message(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.market_session_open_message(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.market_session_open_message, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.market_session_open_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: End Of Day Message
finra_otc_bbds_dfi_v2018_1a_size_of.end_of_day_message = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: End Of Day Message
finra_otc_bbds_dfi_v2018_1a_display.end_of_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Day Message
finra_otc_bbds_dfi_v2018_1a_dissect.end_of_day_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
finra_otc_bbds_dfi_v2018_1a_dissect.end_of_day_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_day_message then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.end_of_day_message(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.end_of_day_message(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.end_of_day_message, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.end_of_day_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Start Of Day Message
finra_otc_bbds_dfi_v2018_1a_size_of.start_of_day_message = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.message_header(buffer, offset + index)

  return index
end

-- Display: Start Of Day Message
finra_otc_bbds_dfi_v2018_1a_display.start_of_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Day Message
finra_otc_bbds_dfi_v2018_1a_dissect.start_of_day_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a_dissect.message_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
finra_otc_bbds_dfi_v2018_1a_dissect.start_of_day_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.start_of_day_message then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.start_of_day_message(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.start_of_day_message(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.start_of_day_message, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.start_of_day_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Control Payload
finra_otc_bbds_dfi_v2018_1a_size_of.control_payload = function(buffer, offset, control_message_type)
  -- Size of Start Of Day Message
  if control_message_type == "I" then
    return finra_otc_bbds_dfi_v2018_1a_size_of.start_of_day_message(buffer, offset)
  end
  -- Size of End Of Day Message
  if control_message_type == "J" then
    return finra_otc_bbds_dfi_v2018_1a_size_of.end_of_day_message(buffer, offset)
  end
  -- Size of Market Session Open Message
  if control_message_type == "O" then
    return finra_otc_bbds_dfi_v2018_1a_size_of.market_session_open_message(buffer, offset)
  end
  -- Size of Market Session Close Message
  if control_message_type == "O" then
    return finra_otc_bbds_dfi_v2018_1a_size_of.market_session_close_message(buffer, offset)
  end
  -- Size of End Of Retransmission Requests Message
  if control_message_type == "K" then
    return finra_otc_bbds_dfi_v2018_1a_size_of.end_of_retransmission_requests_message(buffer, offset)
  end
  -- Size of End Of Transmissions Message
  if control_message_type == "Z" then
    return finra_otc_bbds_dfi_v2018_1a_size_of.end_of_transmissions_message(buffer, offset)
  end
  -- Size of Line Integrity Message
  if control_message_type == "T" then
    return finra_otc_bbds_dfi_v2018_1a_size_of.line_integrity_message(buffer, offset)
  end
  -- Size of Sequence Number Reset Message
  if control_message_type == "L" then
    return finra_otc_bbds_dfi_v2018_1a_size_of.sequence_number_reset_message(buffer, offset)
  end
  -- Size of End Of Trade Reporting Message
  if control_message_type == "X" then
    return finra_otc_bbds_dfi_v2018_1a_size_of.end_of_trade_reporting_message(buffer, offset)
  end

  return 0
end

-- Display: Control Payload
finra_otc_bbds_dfi_v2018_1a_display.control_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Control Payload
finra_otc_bbds_dfi_v2018_1a_dissect.control_payload_branches = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "I" then
    return finra_otc_bbds_dfi_v2018_1a_dissect.start_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "J" then
    return finra_otc_bbds_dfi_v2018_1a_dissect.end_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Open Message
  if control_message_type == "O" then
    return finra_otc_bbds_dfi_v2018_1a_dissect.market_session_open_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Close Message
  if control_message_type == "O" then
    return finra_otc_bbds_dfi_v2018_1a_dissect.market_session_close_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Retransmission Requests Message
  if control_message_type == "K" then
    return finra_otc_bbds_dfi_v2018_1a_dissect.end_of_retransmission_requests_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmissions Message
  if control_message_type == "Z" then
    return finra_otc_bbds_dfi_v2018_1a_dissect.end_of_transmissions_message(buffer, offset, packet, parent)
  end
  -- Dissect Line Integrity Message
  if control_message_type == "T" then
    return finra_otc_bbds_dfi_v2018_1a_dissect.line_integrity_message(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Number Reset Message
  if control_message_type == "L" then
    return finra_otc_bbds_dfi_v2018_1a_dissect.sequence_number_reset_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Trade Reporting Message
  if control_message_type == "X" then
    return finra_otc_bbds_dfi_v2018_1a_dissect.end_of_trade_reporting_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Control Payload
finra_otc_bbds_dfi_v2018_1a_dissect.control_payload = function(buffer, offset, packet, parent, control_message_type)
  if not show.control_payload then
    return finra_otc_bbds_dfi_v2018_1a_dissect.control_payload_branches(buffer, offset, packet, parent, control_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_otc_bbds_dfi_v2018_1a_size_of.control_payload(buffer, offset, control_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_otc_bbds_dfi_v2018_1a_display.control_payload(buffer, packet, parent)
  local element = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.control_payload, range, display)

  return finra_otc_bbds_dfi_v2018_1a_dissect.control_payload_branches(buffer, offset, packet, parent, control_message_type)
end

-- Size: Control Message Type
finra_otc_bbds_dfi_v2018_1a_size_of.control_message_type = 1

-- Display: Control Message Type
finra_otc_bbds_dfi_v2018_1a_display.control_message_type = function(value)
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
finra_otc_bbds_dfi_v2018_1a_dissect.control_message_type = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.control_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.control_message_type(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Control
finra_otc_bbds_dfi_v2018_1a_size_of.control = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.control_message_type

  -- Calculate runtime size of Control Payload field
  local control_payload_offset = offset + index
  local control_payload_type = buffer(control_payload_offset - 1, 1):string()
  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.control_payload(buffer, control_payload_offset, control_payload_type)

  return index
end

-- Display: Control
finra_otc_bbds_dfi_v2018_1a_display.control = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Control
finra_otc_bbds_dfi_v2018_1a_dissect.control_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String Enum with 9 values
  index, control_message_type = finra_otc_bbds_dfi_v2018_1a_dissect.control_message_type(buffer, index, packet, parent)

  -- Control Payload: Runtime Type with 9 branches
  index = finra_otc_bbds_dfi_v2018_1a_dissect.control_payload(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control
finra_otc_bbds_dfi_v2018_1a_dissect.control = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.control then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.control(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.control(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.control, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.control_fields(buffer, offset, packet, parent)
end

-- Size: Reason Code
finra_otc_bbds_dfi_v2018_1a_size_of.reason_code = 6

-- Display: Reason Code
finra_otc_bbds_dfi_v2018_1a_display.reason_code = function(value)
  return "Reason Code: "..value
end

-- Dissect: Reason Code
finra_otc_bbds_dfi_v2018_1a_dissect.reason_code = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.reason_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.reason_code(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Action Datetime
finra_otc_bbds_dfi_v2018_1a_size_of.action_datetime = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.year

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.month

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.day

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.hour

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.minute

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.second

  return index
end

-- Display: Action Datetime
finra_otc_bbds_dfi_v2018_1a_display.action_datetime = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Action Datetime
finra_otc_bbds_dfi_v2018_1a_dissect.action_datetime_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Ascii String
  index, year = finra_otc_bbds_dfi_v2018_1a_dissect.year(buffer, index, packet, parent)

  -- Month: 1 Byte Ascii String
  index, month = finra_otc_bbds_dfi_v2018_1a_dissect.month(buffer, index, packet, parent)

  -- Day: 1 Byte Ascii String
  index, day = finra_otc_bbds_dfi_v2018_1a_dissect.day(buffer, index, packet, parent)

  -- Hour: 1 Byte Ascii String
  index, hour = finra_otc_bbds_dfi_v2018_1a_dissect.hour(buffer, index, packet, parent)

  -- Minute: 1 Byte Ascii String
  index, minute = finra_otc_bbds_dfi_v2018_1a_dissect.minute(buffer, index, packet, parent)

  -- Second: 1 Byte Ascii String
  index, second = finra_otc_bbds_dfi_v2018_1a_dissect.second(buffer, index, packet, parent)

  return index
end

-- Dissect: Action Datetime
finra_otc_bbds_dfi_v2018_1a_dissect.action_datetime = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.action_datetime then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.action_datetime(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.action_datetime(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.action_datetime, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.action_datetime_fields(buffer, offset, packet, parent)
end

-- Size: Action
finra_otc_bbds_dfi_v2018_1a_size_of.action = 1

-- Display: Action
finra_otc_bbds_dfi_v2018_1a_display.action = function(value)
  if value == "H" then
    return "Action: Trading Halt (H)"
  end
  if value == "Q" then
    return "Action: Quotation Resumption (Q)"
  end
  if value == "T" then
    return "Action: Trading Resumption (T)"
  end

  return "Action: Unknown("..value..")"
end

-- Dissect: Action
finra_otc_bbds_dfi_v2018_1a_dissect.action = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.action
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.action(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.action, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Action Message
finra_otc_bbds_dfi_v2018_1a_size_of.trading_action_message = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.message_header(buffer, offset + index)

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.security_symbol

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.action

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.action_datetime(buffer, offset + index)

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.reason_code

  return index
end

-- Display: Trading Action Message
finra_otc_bbds_dfi_v2018_1a_display.trading_action_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Action Message
finra_otc_bbds_dfi_v2018_1a_dissect.trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a_dissect.message_header(buffer, index, packet, parent)

  -- Security Symbol
  index, security_symbol = finra_otc_bbds_dfi_v2018_1a_dissect.security_symbol(buffer, index, packet, parent)

  -- Action: 1 Byte Ascii String Enum with 3 values
  index, action = finra_otc_bbds_dfi_v2018_1a_dissect.action(buffer, index, packet, parent)

  -- Action Datetime: Struct of 6 fields
  index, action_datetime = finra_otc_bbds_dfi_v2018_1a_dissect.action_datetime(buffer, index, packet, parent)

  -- Reason Code: 6 Byte Ascii String
  index, reason_code = finra_otc_bbds_dfi_v2018_1a_dissect.reason_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
finra_otc_bbds_dfi_v2018_1a_dissect.trading_action_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_action_message then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.trading_action_message(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.trading_action_message(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.trading_action_message, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.trading_action_message_fields(buffer, offset, packet, parent)
end

-- Size: Text
finra_otc_bbds_dfi_v2018_1a_size_of.text = 2

-- Display: Text
finra_otc_bbds_dfi_v2018_1a_display.text = function(value)
  return "Text: "..value
end

-- Dissect: Text
finra_otc_bbds_dfi_v2018_1a_dissect.text = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.text
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.text(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.text, range, value, display)

  return offset + length, value
end

-- Calculate size of: General Administrative Message
finra_otc_bbds_dfi_v2018_1a_size_of.general_administrative_message = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.message_header(buffer, offset + index)

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.text

  return index
end

-- Display: General Administrative Message
finra_otc_bbds_dfi_v2018_1a_display.general_administrative_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: General Administrative Message
finra_otc_bbds_dfi_v2018_1a_dissect.general_administrative_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a_dissect.message_header(buffer, index, packet, parent)

  -- Text: 2 Byte Ascii String
  index, text = finra_otc_bbds_dfi_v2018_1a_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: General Administrative Message
finra_otc_bbds_dfi_v2018_1a_dissect.general_administrative_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.general_administrative_message then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.general_administrative_message(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.general_administrative_message(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.general_administrative_message, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.general_administrative_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Administrative Payload
finra_otc_bbds_dfi_v2018_1a_size_of.administrative_payload = function(buffer, offset, administrative_message_type)
  -- Size of General Administrative Message
  if administrative_message_type == "A" then
    return finra_otc_bbds_dfi_v2018_1a_size_of.general_administrative_message(buffer, offset)
  end
  -- Size of Trading Action Message
  if administrative_message_type == "H" then
    return finra_otc_bbds_dfi_v2018_1a_size_of.trading_action_message(buffer, offset)
  end

  return 0
end

-- Display: Administrative Payload
finra_otc_bbds_dfi_v2018_1a_display.administrative_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Administrative Payload
finra_otc_bbds_dfi_v2018_1a_dissect.administrative_payload_branches = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect General Administrative Message
  if administrative_message_type == "A" then
    return finra_otc_bbds_dfi_v2018_1a_dissect.general_administrative_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if administrative_message_type == "H" then
    return finra_otc_bbds_dfi_v2018_1a_dissect.trading_action_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Administrative Payload
finra_otc_bbds_dfi_v2018_1a_dissect.administrative_payload = function(buffer, offset, packet, parent, administrative_message_type)
  if not show.administrative_payload then
    return finra_otc_bbds_dfi_v2018_1a_dissect.administrative_payload_branches(buffer, offset, packet, parent, administrative_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_otc_bbds_dfi_v2018_1a_size_of.administrative_payload(buffer, offset, administrative_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_otc_bbds_dfi_v2018_1a_display.administrative_payload(buffer, packet, parent)
  local element = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.administrative_payload, range, display)

  return finra_otc_bbds_dfi_v2018_1a_dissect.administrative_payload_branches(buffer, offset, packet, parent, administrative_message_type)
end

-- Size: Administrative Message Type
finra_otc_bbds_dfi_v2018_1a_size_of.administrative_message_type = 1

-- Display: Administrative Message Type
finra_otc_bbds_dfi_v2018_1a_display.administrative_message_type = function(value)
  if value == "A" then
    return "Administrative Message Type: General Administrative Message (A)"
  end
  if value == "H" then
    return "Administrative Message Type: Trading Action Message (H)"
  end

  return "Administrative Message Type: Unknown("..value..")"
end

-- Dissect: Administrative Message Type
finra_otc_bbds_dfi_v2018_1a_dissect.administrative_message_type = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.administrative_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.administrative_message_type(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Administrative
finra_otc_bbds_dfi_v2018_1a_size_of.administrative = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.administrative_message_type

  -- Calculate runtime size of Administrative Payload field
  local administrative_payload_offset = offset + index
  local administrative_payload_type = buffer(administrative_payload_offset - 1, 1):string()
  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.administrative_payload(buffer, administrative_payload_offset, administrative_payload_type)

  return index
end

-- Display: Administrative
finra_otc_bbds_dfi_v2018_1a_display.administrative = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Administrative
finra_otc_bbds_dfi_v2018_1a_dissect.administrative_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String Enum with 2 values
  index, administrative_message_type = finra_otc_bbds_dfi_v2018_1a_dissect.administrative_message_type(buffer, index, packet, parent)

  -- Administrative Payload: Runtime Type with 2 branches
  index = finra_otc_bbds_dfi_v2018_1a_dissect.administrative_payload(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative
finra_otc_bbds_dfi_v2018_1a_dissect.administrative = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.administrative then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.administrative(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.administrative(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.administrative, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.administrative_fields(buffer, offset, packet, parent)
end

-- Size: Inside Ask Size
finra_otc_bbds_dfi_v2018_1a_size_of.inside_ask_size = 12

-- Display: Inside Ask Size
finra_otc_bbds_dfi_v2018_1a_display.inside_ask_size = function(value)
  return "Inside Ask Size: "..value
end

-- Dissect: Inside Ask Size
finra_otc_bbds_dfi_v2018_1a_dissect.inside_ask_size = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.inside_ask_size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a_display.inside_ask_size(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.inside_ask_size, range, value, display)

  return offset + length, value
end

-- Size: Inside Ask Price
finra_otc_bbds_dfi_v2018_1a_size_of.inside_ask_price = 12

-- Display: Inside Ask Price
finra_otc_bbds_dfi_v2018_1a_display.inside_ask_price = function(value)
  return "Inside Ask Price: "..value
end

-- Dissect: Inside Ask Price
finra_otc_bbds_dfi_v2018_1a_dissect.inside_ask_price = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.inside_ask_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a_display.inside_ask_price(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.inside_ask_price, range, value, display)

  return offset + length, value
end

-- Size: Inside Ask Price Denominator
finra_otc_bbds_dfi_v2018_1a_size_of.inside_ask_price_denominator = 1

-- Display: Inside Ask Price Denominator
finra_otc_bbds_dfi_v2018_1a_display.inside_ask_price_denominator = function(value)
  return "Inside Ask Price Denominator: "..value
end

-- Dissect: Inside Ask Price Denominator
finra_otc_bbds_dfi_v2018_1a_dissect.inside_ask_price_denominator = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.inside_ask_price_denominator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.inside_ask_price_denominator(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.inside_ask_price_denominator, range, value, display)

  return offset + length, value
end

-- Size: Inside Bid Size
finra_otc_bbds_dfi_v2018_1a_size_of.inside_bid_size = 12

-- Display: Inside Bid Size
finra_otc_bbds_dfi_v2018_1a_display.inside_bid_size = function(value)
  return "Inside Bid Size: "..value
end

-- Dissect: Inside Bid Size
finra_otc_bbds_dfi_v2018_1a_dissect.inside_bid_size = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.inside_bid_size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a_display.inside_bid_size(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.inside_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Inside Bid Price
finra_otc_bbds_dfi_v2018_1a_size_of.inside_bid_price = 12

-- Display: Inside Bid Price
finra_otc_bbds_dfi_v2018_1a_display.inside_bid_price = function(value)
  return "Inside Bid Price: "..value
end

-- Dissect: Inside Bid Price
finra_otc_bbds_dfi_v2018_1a_dissect.inside_bid_price = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.inside_bid_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a_display.inside_bid_price(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.inside_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Inside Bid Price Denominator
finra_otc_bbds_dfi_v2018_1a_size_of.inside_bid_price_denominator = 1

-- Display: Inside Bid Price Denominator
finra_otc_bbds_dfi_v2018_1a_display.inside_bid_price_denominator = function(value)
  return "Inside Bid Price Denominator: "..value
end

-- Dissect: Inside Bid Price Denominator
finra_otc_bbds_dfi_v2018_1a_dissect.inside_bid_price_denominator = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.inside_bid_price_denominator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.inside_bid_price_denominator(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.inside_bid_price_denominator, range, value, display)

  return offset + length, value
end

-- Size: Inside Quote Condition
finra_otc_bbds_dfi_v2018_1a_size_of.inside_quote_condition = 1

-- Display: Inside Quote Condition
finra_otc_bbds_dfi_v2018_1a_display.inside_quote_condition = function(value)
  if value == "O" then
    return "Inside Quote Condition: Open (O)"
  end
  if value == "C" then
    return "Inside Quote Condition: Closed (C)"
  end

  return "Inside Quote Condition: Unknown("..value..")"
end

-- Dissect: Inside Quote Condition
finra_otc_bbds_dfi_v2018_1a_dissect.inside_quote_condition = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.inside_quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.inside_quote_condition(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.inside_quote_condition, range, value, display)

  return offset + length, value
end

-- Calculate size of: Inside Appendage
finra_otc_bbds_dfi_v2018_1a_size_of.inside_appendage = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.inside_quote_condition

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.inside_bid_price_denominator

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.inside_bid_price

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.inside_bid_size

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.inside_ask_price_denominator

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.inside_ask_price

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.inside_ask_size

  return index
end

-- Display: Inside Appendage
finra_otc_bbds_dfi_v2018_1a_display.inside_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inside Appendage
finra_otc_bbds_dfi_v2018_1a_dissect.inside_appendage_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inside Quote Condition: 1 Byte Ascii String Enum with 2 values
  index, inside_quote_condition = finra_otc_bbds_dfi_v2018_1a_dissect.inside_quote_condition(buffer, index, packet, parent)

  -- Inside Bid Price Denominator: 1 Byte Ascii String
  index, inside_bid_price_denominator = finra_otc_bbds_dfi_v2018_1a_dissect.inside_bid_price_denominator(buffer, index, packet, parent)

  -- Inside Bid Price: 12 Byte Ascii String
  index, inside_bid_price = finra_otc_bbds_dfi_v2018_1a_dissect.inside_bid_price(buffer, index, packet, parent)

  -- Inside Bid Size: 12 Byte Ascii String
  index, inside_bid_size = finra_otc_bbds_dfi_v2018_1a_dissect.inside_bid_size(buffer, index, packet, parent)

  -- Inside Ask Price Denominator: 1 Byte Ascii String
  index, inside_ask_price_denominator = finra_otc_bbds_dfi_v2018_1a_dissect.inside_ask_price_denominator(buffer, index, packet, parent)

  -- Inside Ask Price: 12 Byte Ascii String
  index, inside_ask_price = finra_otc_bbds_dfi_v2018_1a_dissect.inside_ask_price(buffer, index, packet, parent)

  -- Inside Ask Size: 12 Byte Ascii String
  index, inside_ask_size = finra_otc_bbds_dfi_v2018_1a_dissect.inside_ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Inside Appendage
finra_otc_bbds_dfi_v2018_1a_dissect.inside_appendage = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.inside_appendage then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.inside_appendage(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.inside_appendage(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.inside_appendage, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.inside_appendage_fields(buffer, offset, packet, parent)
end

-- Size: Inside Appendage Indicator
finra_otc_bbds_dfi_v2018_1a_size_of.inside_appendage_indicator = 1

-- Display: Inside Appendage Indicator
finra_otc_bbds_dfi_v2018_1a_display.inside_appendage_indicator = function(value)
  if value == "1" then
    return "Inside Appendage Indicator: No Change To Inside Quote (1)"
  end
  if value == "2" then
    return "Inside Appendage Indicator: No Inside Exists (2)"
  end
  if value == "3" then
    return "Inside Appendage Indicator: Inside Quote Appendage Is Attached (3)"
  end

  return "Inside Appendage Indicator: Unknown("..value..")"
end

-- Dissect: Inside Appendage Indicator
finra_otc_bbds_dfi_v2018_1a_dissect.inside_appendage_indicator = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.inside_appendage_indicator
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a_display.inside_appendage_indicator(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.inside_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Size: Currency
finra_otc_bbds_dfi_v2018_1a_size_of.currency = 3

-- Display: Currency
finra_otc_bbds_dfi_v2018_1a_display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
finra_otc_bbds_dfi_v2018_1a_dissect.currency = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.currency(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Ask Size
finra_otc_bbds_dfi_v2018_1a_size_of.ask_size = 7

-- Display: Ask Size
finra_otc_bbds_dfi_v2018_1a_display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
finra_otc_bbds_dfi_v2018_1a_dissect.ask_size = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.ask_size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a_display.ask_size(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
finra_otc_bbds_dfi_v2018_1a_size_of.ask_price = 12

-- Display: Ask Price
finra_otc_bbds_dfi_v2018_1a_display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
finra_otc_bbds_dfi_v2018_1a_dissect.ask_price = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.ask_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a_display.ask_price(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Size: Ask Price Denominator
finra_otc_bbds_dfi_v2018_1a_size_of.ask_price_denominator = 1

-- Display: Ask Price Denominator
finra_otc_bbds_dfi_v2018_1a_display.ask_price_denominator = function(value)
  return "Ask Price Denominator: "..value
end

-- Dissect: Ask Price Denominator
finra_otc_bbds_dfi_v2018_1a_dissect.ask_price_denominator = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.ask_price_denominator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.ask_price_denominator(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.ask_price_denominator, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
finra_otc_bbds_dfi_v2018_1a_size_of.bid_size = 7

-- Display: Bid Size
finra_otc_bbds_dfi_v2018_1a_display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
finra_otc_bbds_dfi_v2018_1a_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.bid_size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
finra_otc_bbds_dfi_v2018_1a_size_of.bid_price = 12

-- Display: Bid Price
finra_otc_bbds_dfi_v2018_1a_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
finra_otc_bbds_dfi_v2018_1a_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.bid_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Denominator
finra_otc_bbds_dfi_v2018_1a_size_of.bid_price_denominator = 1

-- Display: Bid Price Denominator
finra_otc_bbds_dfi_v2018_1a_display.bid_price_denominator = function(value)
  return "Bid Price Denominator: "..value
end

-- Dissect: Bid Price Denominator
finra_otc_bbds_dfi_v2018_1a_dissect.bid_price_denominator = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.bid_price_denominator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.bid_price_denominator(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.bid_price_denominator, range, value, display)

  return offset + length, value
end

-- Size: Unsolicited Indicator
finra_otc_bbds_dfi_v2018_1a_size_of.unsolicited_indicator = 1

-- Display: Unsolicited Indicator
finra_otc_bbds_dfi_v2018_1a_display.unsolicited_indicator = function(value)
  if value == "A" then
    return "Unsolicited Indicator: Unsolicited Ask (A)"
  end
  if value == "B" then
    return "Unsolicited Indicator: Unsolicited Bid (B)"
  end
  if value == "U" then
    return "Unsolicited Indicator: Unsolicited Bid And Ask (U)"
  end
  if value == " " then
    return "Unsolicited Indicator: Not Applicable (<whitespace>)"
  end

  return "Unsolicited Indicator: Unknown("..value..")"
end

-- Dissect: Unsolicited Indicator
finra_otc_bbds_dfi_v2018_1a_dissect.unsolicited_indicator = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.unsolicited_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.unsolicited_indicator(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.unsolicited_indicator, range, value, display)

  return offset + length, value
end

-- Size: Wanted Indicator
finra_otc_bbds_dfi_v2018_1a_size_of.wanted_indicator = 1

-- Display: Wanted Indicator
finra_otc_bbds_dfi_v2018_1a_display.wanted_indicator = function(value)
  return "Wanted Indicator: "..value
end

-- Dissect: Wanted Indicator
finra_otc_bbds_dfi_v2018_1a_dissect.wanted_indicator = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.wanted_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.wanted_indicator(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.wanted_indicator, range, value, display)

  return offset + length, value
end

-- Size: Market Participant Quote Condition
finra_otc_bbds_dfi_v2018_1a_size_of.market_participant_quote_condition = 1

-- Display: Market Participant Quote Condition
finra_otc_bbds_dfi_v2018_1a_display.market_participant_quote_condition = function(value)
  if value == "O" then
    return "Market Participant Quote Condition: Open (O)"
  end
  if value == "C" then
    return "Market Participant Quote Condition: Closed (C)"
  end
  if value == "B" then
    return "Market Participant Quote Condition: Bid (B)"
  end
  if value == "N" then
    return "Market Participant Quote Condition: Not Applicable (N)"
  end
  if value == "O" then
    return "Market Participant Quote Condition: Offer (O)"
  end
  if value == "W" then
    return "Market Participant Quote Condition: Bid And Offer (W)"
  end
  if value == "I" then
    return "Market Participant Quote Condition: Periodic Indicative Other Securities (I)"
  end
  if value == "K" then
    return "Market Participant Quote Condition: Realtime Quotes (K)"
  end
  if value == "L" then
    return "Market Participant Quote Condition: Periodic Indicative Quotes (L)"
  end

  return "Market Participant Quote Condition: Unknown("..value..")"
end

-- Dissect: Market Participant Quote Condition
finra_otc_bbds_dfi_v2018_1a_dissect.market_participant_quote_condition = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.market_participant_quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.market_participant_quote_condition(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.market_participant_quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Market Participant Status
finra_otc_bbds_dfi_v2018_1a_size_of.market_participant_status = 1

-- Display: Market Participant Status
finra_otc_bbds_dfi_v2018_1a_display.market_participant_status = function(value)
  if value == "A" then
    return "Market Participant Status: Active (A)"
  end
  if value == "D" then
    return "Market Participant Status: Deleted (D)"
  end
  if value == "E" then
    return "Market Participant Status: Excused (E)"
  end
  if value == "W" then
    return "Market Participant Status: Withdrawn (W)"
  end
  if value == "S" then
    return "Market Participant Status: Suspended (S)"
  end

  return "Market Participant Status: Unknown("..value..")"
end

-- Dissect: Market Participant Status
finra_otc_bbds_dfi_v2018_1a_dissect.market_participant_status = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.market_participant_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.market_participant_status(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.market_participant_status, range, value, display)

  return offset + length, value
end

-- Size: Market Participant Location Id
finra_otc_bbds_dfi_v2018_1a_size_of.market_participant_location_id = 1

-- Display: Market Participant Location Id
finra_otc_bbds_dfi_v2018_1a_display.market_participant_location_id = function(value)
  return "Market Participant Location Id: "..value
end

-- Dissect: Market Participant Location Id
finra_otc_bbds_dfi_v2018_1a_dissect.market_participant_location_id = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.market_participant_location_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.market_participant_location_id(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.market_participant_location_id, range, value, display)

  return offset + length, value
end

-- Size: Market Participant Identifier
finra_otc_bbds_dfi_v2018_1a_size_of.market_participant_identifier = 1

-- Display: Market Participant Identifier
finra_otc_bbds_dfi_v2018_1a_display.market_participant_identifier = function(value)
  return "Market Participant Identifier: "..value
end

-- Dissect: Market Participant Identifier
finra_otc_bbds_dfi_v2018_1a_dissect.market_participant_identifier = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.market_participant_identifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.market_participant_identifier(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.market_participant_identifier, range, value, display)

  return offset + length, value
end

-- Size: Otcbb Type
finra_otc_bbds_dfi_v2018_1a_size_of.otcbb_type = 1

-- Display: Otcbb Type
finra_otc_bbds_dfi_v2018_1a_display.otcbb_type = function(value)
  return "Otcbb Type: "..value
end

-- Dissect: Otcbb Type
finra_otc_bbds_dfi_v2018_1a_dissect.otcbb_type = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.otcbb_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.otcbb_type(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.otcbb_type, range, value, display)

  return offset + length, value
end

-- Size: Otcbb Symbol
finra_otc_bbds_dfi_v2018_1a_size_of.otcbb_symbol = 11

-- Display: Otcbb Symbol
finra_otc_bbds_dfi_v2018_1a_display.otcbb_symbol = function(value)
  return "Otcbb Symbol: "..value
end

-- Dissect: Otcbb Symbol
finra_otc_bbds_dfi_v2018_1a_dissect.otcbb_symbol = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.otcbb_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.otcbb_symbol(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.otcbb_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Participant Quote Update Message
finra_otc_bbds_dfi_v2018_1a_size_of.market_participant_quote_update_message = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.otcbb_symbol

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.otcbb_type

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.market_participant_identifier

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.market_participant_location_id

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.market_participant_status

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.market_participant_quote_condition

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.reserved

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.wanted_indicator

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.unsolicited_indicator

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.bid_price_denominator

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.bid_price

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.bid_size

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.ask_price_denominator

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.ask_price

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.ask_size

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.currency

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.inside_appendage_indicator

  local inside_appendage_indicator = buffer(offset + index - 1, 1):string()

  if inside_appendage_indicator == "3" then
    index = index + finra_otc_bbds_dfi_v2018_1a_size_of.inside_appendage(buffer, offset + index)

  end

  return index
end

-- Display: Market Participant Quote Update Message
finra_otc_bbds_dfi_v2018_1a_display.market_participant_quote_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Participant Quote Update Message
finra_otc_bbds_dfi_v2018_1a_dissect.market_participant_quote_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Otcbb Symbol: 11 Byte Ascii String
  index, otcbb_symbol = finra_otc_bbds_dfi_v2018_1a_dissect.otcbb_symbol(buffer, index, packet, parent)

  -- Otcbb Type: 1 Byte Ascii String
  index, otcbb_type = finra_otc_bbds_dfi_v2018_1a_dissect.otcbb_type(buffer, index, packet, parent)

  -- Market Participant Identifier: 1 Byte Ascii String
  index, market_participant_identifier = finra_otc_bbds_dfi_v2018_1a_dissect.market_participant_identifier(buffer, index, packet, parent)

  -- Market Participant Location Id: 1 Byte Ascii String
  index, market_participant_location_id = finra_otc_bbds_dfi_v2018_1a_dissect.market_participant_location_id(buffer, index, packet, parent)

  -- Market Participant Status: 1 Byte Ascii String Enum with 5 values
  index, market_participant_status = finra_otc_bbds_dfi_v2018_1a_dissect.market_participant_status(buffer, index, packet, parent)

  -- Market Participant Quote Condition: 1 Byte Ascii String Enum with 9 values
  index, market_participant_quote_condition = finra_otc_bbds_dfi_v2018_1a_dissect.market_participant_quote_condition(buffer, index, packet, parent)

  -- Reserved: 1 Byte Ascii String
  index, reserved = finra_otc_bbds_dfi_v2018_1a_dissect.reserved(buffer, index, packet, parent)

  -- Wanted Indicator: 1 Byte Ascii String
  index, wanted_indicator = finra_otc_bbds_dfi_v2018_1a_dissect.wanted_indicator(buffer, index, packet, parent)

  -- Unsolicited Indicator: 1 Byte Ascii String Enum with 4 values
  index, unsolicited_indicator = finra_otc_bbds_dfi_v2018_1a_dissect.unsolicited_indicator(buffer, index, packet, parent)

  -- Bid Price Denominator: 1 Byte Ascii String
  index, bid_price_denominator = finra_otc_bbds_dfi_v2018_1a_dissect.bid_price_denominator(buffer, index, packet, parent)

  -- Bid Price: 12 Byte Ascii String
  index, bid_price = finra_otc_bbds_dfi_v2018_1a_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 7 Byte Ascii String
  index, bid_size = finra_otc_bbds_dfi_v2018_1a_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price Denominator: 1 Byte Ascii String
  index, ask_price_denominator = finra_otc_bbds_dfi_v2018_1a_dissect.ask_price_denominator(buffer, index, packet, parent)

  -- Ask Price: 12 Byte Ascii String
  index, ask_price = finra_otc_bbds_dfi_v2018_1a_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 7 Byte Ascii String
  index, ask_size = finra_otc_bbds_dfi_v2018_1a_dissect.ask_size(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = finra_otc_bbds_dfi_v2018_1a_dissect.currency(buffer, index, packet, parent)

  -- Inside Appendage Indicator: 1 Byte Ascii String Enum with 3 values
  index, inside_appendage_indicator = finra_otc_bbds_dfi_v2018_1a_dissect.inside_appendage_indicator(buffer, index, packet, parent)

  -- Runtime optional field exists: Inside Appendage
  local inside_appendage_exists = inside_appendage_indicator == "3"

  -- Runtime optional field: Inside Appendage
  if inside_appendage_exists then
    index = finra_otc_bbds_dfi_v2018_1a_dissect.inside_appendage(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Market Participant Quote Update Message
finra_otc_bbds_dfi_v2018_1a_dissect.market_participant_quote_update_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_participant_quote_update_message then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.market_participant_quote_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.market_participant_quote_update_message(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.market_participant_quote_update_message, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.market_participant_quote_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Quotation Payload
finra_otc_bbds_dfi_v2018_1a_size_of.quotation_payload = function(buffer, offset, quotation_message_type)
  -- Size of Market Participant Quote Update Message
  if quotation_message_type == "1" then
    return finra_otc_bbds_dfi_v2018_1a_size_of.market_participant_quote_update_message(buffer, offset)
  end

  return 0
end

-- Display: Quotation Payload
finra_otc_bbds_dfi_v2018_1a_display.quotation_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Quotation Payload
finra_otc_bbds_dfi_v2018_1a_dissect.quotation_payload_branches = function(buffer, offset, packet, parent, quotation_message_type)
  -- Dissect Market Participant Quote Update Message
  if quotation_message_type == "1" then
    return finra_otc_bbds_dfi_v2018_1a_dissect.market_participant_quote_update_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Quotation Payload
finra_otc_bbds_dfi_v2018_1a_dissect.quotation_payload = function(buffer, offset, packet, parent, quotation_message_type)
  if not show.quotation_payload then
    return finra_otc_bbds_dfi_v2018_1a_dissect.quotation_payload_branches(buffer, offset, packet, parent, quotation_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_otc_bbds_dfi_v2018_1a_size_of.quotation_payload(buffer, offset, quotation_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_otc_bbds_dfi_v2018_1a_display.quotation_payload(buffer, packet, parent)
  local element = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.quotation_payload, range, display)

  return finra_otc_bbds_dfi_v2018_1a_dissect.quotation_payload_branches(buffer, offset, packet, parent, quotation_message_type)
end

-- Size: Quotation Message Type
finra_otc_bbds_dfi_v2018_1a_size_of.quotation_message_type = 1

-- Display: Quotation Message Type
finra_otc_bbds_dfi_v2018_1a_display.quotation_message_type = function(value)
  if value == "1" then
    return "Quotation Message Type: Market Participant Quote Update Message (1)"
  end

  return "Quotation Message Type: Unknown("..value..")"
end

-- Dissect: Quotation Message Type
finra_otc_bbds_dfi_v2018_1a_dissect.quotation_message_type = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.quotation_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.quotation_message_type(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.quotation_message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quotation
finra_otc_bbds_dfi_v2018_1a_size_of.quotation = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.quotation_message_type

  -- Calculate runtime size of Quotation Payload field
  local quotation_payload_offset = offset + index
  local quotation_payload_type = buffer(quotation_payload_offset - 1, 1):string()
  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.quotation_payload(buffer, quotation_payload_offset, quotation_payload_type)

  return index
end

-- Display: Quotation
finra_otc_bbds_dfi_v2018_1a_display.quotation = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quotation
finra_otc_bbds_dfi_v2018_1a_dissect.quotation_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quotation Message Type: 1 Byte Ascii String Enum with 1 values
  index, quotation_message_type = finra_otc_bbds_dfi_v2018_1a_dissect.quotation_message_type(buffer, index, packet, parent)

  -- Quotation Payload: Runtime Type with 1 branches
  index = finra_otc_bbds_dfi_v2018_1a_dissect.quotation_payload(buffer, index, packet, parent, quotation_message_type)

  return index
end

-- Dissect: Quotation
finra_otc_bbds_dfi_v2018_1a_dissect.quotation = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quotation then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.quotation(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.quotation(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.quotation, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.quotation_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
finra_otc_bbds_dfi_v2018_1a_size_of.payload = function(buffer, offset, message_category)
  -- Size of Quotation
  if message_category == "Q" then
    return finra_otc_bbds_dfi_v2018_1a_size_of.quotation(buffer, offset)
  end
  -- Size of Administrative
  if message_category == "A" then
    return finra_otc_bbds_dfi_v2018_1a_size_of.administrative(buffer, offset)
  end
  -- Size of Control
  if message_category == "C" then
    return finra_otc_bbds_dfi_v2018_1a_size_of.control(buffer, offset)
  end

  return 0
end

-- Display: Payload
finra_otc_bbds_dfi_v2018_1a_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
finra_otc_bbds_dfi_v2018_1a_dissect.payload_branches = function(buffer, offset, packet, parent, message_category)
  -- Dissect Quotation
  if message_category == "Q" then
    return finra_otc_bbds_dfi_v2018_1a_dissect.quotation(buffer, offset, packet, parent)
  end
  -- Dissect Administrative
  if message_category == "A" then
    return finra_otc_bbds_dfi_v2018_1a_dissect.administrative(buffer, offset, packet, parent)
  end
  -- Dissect Control
  if message_category == "C" then
    return finra_otc_bbds_dfi_v2018_1a_dissect.control(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
finra_otc_bbds_dfi_v2018_1a_dissect.payload = function(buffer, offset, packet, parent, message_category)
  if not show.payload then
    return finra_otc_bbds_dfi_v2018_1a_dissect.payload_branches(buffer, offset, packet, parent, message_category)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_otc_bbds_dfi_v2018_1a_size_of.payload(buffer, offset, message_category)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_otc_bbds_dfi_v2018_1a_display.payload(buffer, packet, parent)
  local element = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.payload, range, display)

  return finra_otc_bbds_dfi_v2018_1a_dissect.payload_branches(buffer, offset, packet, parent, message_category)
end

-- Size: Message Category
finra_otc_bbds_dfi_v2018_1a_size_of.message_category = 1

-- Display: Message Category
finra_otc_bbds_dfi_v2018_1a_display.message_category = function(value)
  if value == "Q" then
    return "Message Category: Quotation (Q)"
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
finra_otc_bbds_dfi_v2018_1a_dissect.message_category = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.message_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a_display.message_category(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.message_category, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
finra_otc_bbds_dfi_v2018_1a_size_of.message = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.message_category

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.payload(buffer, payload_offset, payload_type)

  index = index + finra_otc_bbds_dfi_v2018_1a_size_of.message_separator

  return index
end

-- Display: Message
finra_otc_bbds_dfi_v2018_1a_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
finra_otc_bbds_dfi_v2018_1a_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Category: 1 Byte Ascii String Enum with 3 values
  index, message_category = finra_otc_bbds_dfi_v2018_1a_dissect.message_category(buffer, index, packet, parent)

  -- Payload: Runtime Type with 3 branches
  index = finra_otc_bbds_dfi_v2018_1a_dissect.payload(buffer, index, packet, parent, message_category)

  -- Message Separator: 1 Byte Unsigned Fixed Width Integer
  index, message_separator = finra_otc_bbds_dfi_v2018_1a_dissect.message_separator(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
finra_otc_bbds_dfi_v2018_1a_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = finra_otc_bbds_dfi_v2018_1a_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a_display.message(buffer, packet, parent)
    parent = parent:add(finra_otc_bbds_dfi_v2018_1a.fields.message, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Block Soh
finra_otc_bbds_dfi_v2018_1a_size_of.block_soh = 1

-- Display: Block Soh
finra_otc_bbds_dfi_v2018_1a_display.block_soh = function(value)
  return "Block Soh: "..value
end

-- Dissect: Block Soh
finra_otc_bbds_dfi_v2018_1a_dissect.block_soh = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a_size_of.block_soh
  local range = buffer(offset, length)
  local value = range:uint()
  local display = finra_otc_bbds_dfi_v2018_1a_display.block_soh(value, buffer, offset, packet, parent)

  parent:add(finra_otc_bbds_dfi_v2018_1a.fields.block_soh, range, value, display)

  return offset + length, value
end

-- Dissect Packet
finra_otc_bbds_dfi_v2018_1a_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Block Soh: 1 Byte Unsigned Fixed Width Integer
  index, block_soh = finra_otc_bbds_dfi_v2018_1a_dissect.block_soh(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index = finra_otc_bbds_dfi_v2018_1a_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function finra_otc_bbds_dfi_v2018_1a.init()
end

-- Dissector for Finra Otc Bbds Dfi 2018.1A
function finra_otc_bbds_dfi_v2018_1a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = finra_otc_bbds_dfi_v2018_1a.name

  -- Dissect protocol
  local protocol = parent:add(finra_otc_bbds_dfi_v2018_1a, buffer(), finra_otc_bbds_dfi_v2018_1a.description, "("..buffer:len().." Bytes)")
  return finra_otc_bbds_dfi_v2018_1a_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, finra_otc_bbds_dfi_v2018_1a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.finra_otc_bbds_dfi_v2018_1a_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Finra Otc Bbds Dfi 2018.1A
local function finra_otc_bbds_dfi_v2018_1a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.finra_otc_bbds_dfi_v2018_1a_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = finra_otc_bbds_dfi_v2018_1a
  finra_otc_bbds_dfi_v2018_1a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Finra Otc Bbds Dfi 2018.1A
finra_otc_bbds_dfi_v2018_1a:register_heuristic("udp", finra_otc_bbds_dfi_v2018_1a_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Financial Industry Regulatory Authority
--   Version: 2018.1A
--   Date: Monday, May 14, 2018
--   Specification: BBDS_Specs_v2018-1.pdf
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
