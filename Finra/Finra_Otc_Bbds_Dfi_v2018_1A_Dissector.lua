-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Finra Otc Bbds Dfi 2018.1A Protocol
local omi_finra_otc_bbds_dfi_v2018_1a = Proto("Finra.Otc.Bbds.Dfi.v2018.1A.Lua", "Finra Otc Bbds Dfi 2018.1A")

-- Protocol table
local finra_otc_bbds_dfi_v2018_1a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Finra Otc Bbds Dfi 2018.1A Fields
omi_finra_otc_bbds_dfi_v2018_1a.fields.action = ProtoField.new("Action", "finra.otc.bbds.dfi.v2018.1a.action", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.action_datetime = ProtoField.new("Action Datetime", "finra.otc.bbds.dfi.v2018.1a.actiondatetime", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.administrative = ProtoField.new("Administrative", "finra.otc.bbds.dfi.v2018.1a.administrative", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "finra.otc.bbds.dfi.v2018.1a.administrativemessagetype", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.administrative_payload = ProtoField.new("Administrative Payload", "finra.otc.bbds.dfi.v2018.1a.administrativepayload", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.ask_price = ProtoField.new("Ask Price", "finra.otc.bbds.dfi.v2018.1a.askprice", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.ask_price_denominator = ProtoField.new("Ask Price Denominator", "finra.otc.bbds.dfi.v2018.1a.askpricedenominator", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.ask_size = ProtoField.new("Ask Size", "finra.otc.bbds.dfi.v2018.1a.asksize", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.bid_price = ProtoField.new("Bid Price", "finra.otc.bbds.dfi.v2018.1a.bidprice", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.bid_price_denominator = ProtoField.new("Bid Price Denominator", "finra.otc.bbds.dfi.v2018.1a.bidpricedenominator", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.bid_size = ProtoField.new("Bid Size", "finra.otc.bbds.dfi.v2018.1a.bidsize", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.block_soh = ProtoField.new("Block Soh", "finra.otc.bbds.dfi.v2018.1a.blocksoh", ftypes.UINT8)
omi_finra_otc_bbds_dfi_v2018_1a.fields.control = ProtoField.new("Control", "finra.otc.bbds.dfi.v2018.1a.control", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.control_message_type = ProtoField.new("Control Message Type", "finra.otc.bbds.dfi.v2018.1a.controlmessagetype", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.control_payload = ProtoField.new("Control Payload", "finra.otc.bbds.dfi.v2018.1a.controlpayload", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.currency = ProtoField.new("Currency", "finra.otc.bbds.dfi.v2018.1a.currency", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.datetime = ProtoField.new("Datetime", "finra.otc.bbds.dfi.v2018.1a.datetime", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.day = ProtoField.new("Day", "finra.otc.bbds.dfi.v2018.1a.day", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.hour = ProtoField.new("Hour", "finra.otc.bbds.dfi.v2018.1a.hour", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_appendage = ProtoField.new("Inside Appendage", "finra.otc.bbds.dfi.v2018.1a.insideappendage", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_appendage_indicator = ProtoField.new("Inside Appendage Indicator", "finra.otc.bbds.dfi.v2018.1a.insideappendageindicator", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_ask_price = ProtoField.new("Inside Ask Price", "finra.otc.bbds.dfi.v2018.1a.insideaskprice", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_ask_price_denominator = ProtoField.new("Inside Ask Price Denominator", "finra.otc.bbds.dfi.v2018.1a.insideaskpricedenominator", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_ask_size = ProtoField.new("Inside Ask Size", "finra.otc.bbds.dfi.v2018.1a.insideasksize", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_bid_price = ProtoField.new("Inside Bid Price", "finra.otc.bbds.dfi.v2018.1a.insidebidprice", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_bid_price_denominator = ProtoField.new("Inside Bid Price Denominator", "finra.otc.bbds.dfi.v2018.1a.insidebidpricedenominator", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_bid_size = ProtoField.new("Inside Bid Size", "finra.otc.bbds.dfi.v2018.1a.insidebidsize", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_quote_condition = ProtoField.new("Inside Quote Condition", "finra.otc.bbds.dfi.v2018.1a.insidequotecondition", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.market_center_originator_id = ProtoField.new("Market Center Originator Id", "finra.otc.bbds.dfi.v2018.1a.marketcenteroriginatorid", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.market_participant_identifier = ProtoField.new("Market Participant Identifier", "finra.otc.bbds.dfi.v2018.1a.marketparticipantidentifier", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.market_participant_location_id = ProtoField.new("Market Participant Location Id", "finra.otc.bbds.dfi.v2018.1a.marketparticipantlocationid", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.market_participant_quote_condition = ProtoField.new("Market Participant Quote Condition", "finra.otc.bbds.dfi.v2018.1a.marketparticipantquotecondition", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.market_participant_status = ProtoField.new("Market Participant Status", "finra.otc.bbds.dfi.v2018.1a.marketparticipantstatus", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.message = ProtoField.new("Message", "finra.otc.bbds.dfi.v2018.1a.message", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.message_category = ProtoField.new("Message Category", "finra.otc.bbds.dfi.v2018.1a.messagecategory", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.message_header = ProtoField.new("Message Header", "finra.otc.bbds.dfi.v2018.1a.messageheader", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.message_separator = ProtoField.new("Message Separator", "finra.otc.bbds.dfi.v2018.1a.messageseparator", ftypes.UINT8)
omi_finra_otc_bbds_dfi_v2018_1a.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "finra.otc.bbds.dfi.v2018.1a.messagesequencenumber", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.minute = ProtoField.new("Minute", "finra.otc.bbds.dfi.v2018.1a.minute", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.month = ProtoField.new("Month", "finra.otc.bbds.dfi.v2018.1a.month", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.otcbb_symbol = ProtoField.new("Otcbb Symbol", "finra.otc.bbds.dfi.v2018.1a.otcbbsymbol", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.otcbb_type = ProtoField.new("Otcbb Type", "finra.otc.bbds.dfi.v2018.1a.otcbbtype", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.packet = ProtoField.new("Packet", "finra.otc.bbds.dfi.v2018.1a.packet", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.payload = ProtoField.new("Payload", "finra.otc.bbds.dfi.v2018.1a.payload", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.quotation = ProtoField.new("Quotation", "finra.otc.bbds.dfi.v2018.1a.quotation", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.quotation_message_type = ProtoField.new("Quotation Message Type", "finra.otc.bbds.dfi.v2018.1a.quotationmessagetype", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.quotation_payload = ProtoField.new("Quotation Payload", "finra.otc.bbds.dfi.v2018.1a.quotationpayload", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.reason_code = ProtoField.new("Reason Code", "finra.otc.bbds.dfi.v2018.1a.reasoncode", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.reserved = ProtoField.new("Reserved", "finra.otc.bbds.dfi.v2018.1a.reserved", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.retransmission_requester = ProtoField.new("Retransmission Requester", "finra.otc.bbds.dfi.v2018.1a.retransmissionrequester", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.second = ProtoField.new("Second", "finra.otc.bbds.dfi.v2018.1a.second", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.session_identifier = ProtoField.new("Session Identifier", "finra.otc.bbds.dfi.v2018.1a.sessionidentifier", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.stock_symbol = ProtoField.new("Stock Symbol", "finra.otc.bbds.dfi.v2018.1a.stocksymbol", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.text = ProtoField.new("Text", "finra.otc.bbds.dfi.v2018.1a.text", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.unsolicited_indicator = ProtoField.new("Unsolicited Indicator", "finra.otc.bbds.dfi.v2018.1a.unsolicitedindicator", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.wanted_indicator = ProtoField.new("Wanted Indicator", "finra.otc.bbds.dfi.v2018.1a.wantedindicator", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.year = ProtoField.new("Year", "finra.otc.bbds.dfi.v2018.1a.year", ftypes.STRING)

-- Finra Otc Bbds Dfi 2018.1A messages
omi_finra_otc_bbds_dfi_v2018_1a.fields.end_of_day_message = ProtoField.new("End Of Day Message", "finra.otc.bbds.dfi.v2018.1a.endofdaymessage", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.end_of_retransmission_requests_message = ProtoField.new("End Of Retransmission Requests Message", "finra.otc.bbds.dfi.v2018.1a.endofretransmissionrequestsmessage", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.end_of_trade_reporting_message = ProtoField.new("End Of Trade Reporting Message", "finra.otc.bbds.dfi.v2018.1a.endoftradereportingmessage", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.end_of_transmissions_message = ProtoField.new("End Of Transmissions Message", "finra.otc.bbds.dfi.v2018.1a.endoftransmissionsmessage", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.general_administrative_message = ProtoField.new("General Administrative Message", "finra.otc.bbds.dfi.v2018.1a.generaladministrativemessage", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "finra.otc.bbds.dfi.v2018.1a.lineintegritymessage", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.market_participant_quote_update_message = ProtoField.new("Market Participant Quote Update Message", "finra.otc.bbds.dfi.v2018.1a.marketparticipantquoteupdatemessage", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.market_session_close_message = ProtoField.new("Market Session Close Message", "finra.otc.bbds.dfi.v2018.1a.marketsessionclosemessage", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.market_session_open_message = ProtoField.new("Market Session Open Message", "finra.otc.bbds.dfi.v2018.1a.marketsessionopenmessage", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "finra.otc.bbds.dfi.v2018.1a.sequencenumberresetmessage", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "finra.otc.bbds.dfi.v2018.1a.startofdaymessage", ftypes.STRING)
omi_finra_otc_bbds_dfi_v2018_1a.fields.trading_action_message = ProtoField.new("Trading Action Message", "finra.otc.bbds.dfi.v2018.1a.tradingactionmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_action_datetime = Pref.bool("Show Action Datetime", show.action_datetime, "Parse and add Action Datetime to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_administrative = Pref.bool("Show Administrative", show.administrative, "Parse and add Administrative to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_control = Pref.bool("Show Control", show.control, "Parse and add Control to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_datetime = Pref.bool("Show Datetime", show.datetime, "Parse and add Datetime to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_day_message = Pref.bool("Show End Of Day Message", show.end_of_day_message, "Parse and add End Of Day Message to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_retransmission_requests_message = Pref.bool("Show End Of Retransmission Requests Message", show.end_of_retransmission_requests_message, "Parse and add End Of Retransmission Requests Message to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_trade_reporting_message = Pref.bool("Show End Of Trade Reporting Message", show.end_of_trade_reporting_message, "Parse and add End Of Trade Reporting Message to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_transmissions_message = Pref.bool("Show End Of Transmissions Message", show.end_of_transmissions_message, "Parse and add End Of Transmissions Message to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_general_administrative_message = Pref.bool("Show General Administrative Message", show.general_administrative_message, "Parse and add General Administrative Message to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_inside_appendage = Pref.bool("Show Inside Appendage", show.inside_appendage, "Parse and add Inside Appendage to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_line_integrity_message = Pref.bool("Show Line Integrity Message", show.line_integrity_message, "Parse and add Line Integrity Message to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_market_participant_quote_update_message = Pref.bool("Show Market Participant Quote Update Message", show.market_participant_quote_update_message, "Parse and add Market Participant Quote Update Message to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_market_session_close_message = Pref.bool("Show Market Session Close Message", show.market_session_close_message, "Parse and add Market Session Close Message to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_market_session_open_message = Pref.bool("Show Market Session Open Message", show.market_session_open_message, "Parse and add Market Session Open Message to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_quotation = Pref.bool("Show Quotation", show.quotation, "Parse and add Quotation to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_trading_action_message = Pref.bool("Show Trading Action Message", show.trading_action_message, "Parse and add Trading Action Message to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_administrative_payload = Pref.bool("Show Administrative Payload", show.administrative_payload, "Parse and add Administrative Payload to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_control_payload = Pref.bool("Show Control Payload", show.control_payload, "Parse and add Control Payload to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_quotation_payload = Pref.bool("Show Quotation Payload", show.quotation_payload, "Parse and add Quotation Payload to protocol tree")

-- Handle changed preferences
function omi_finra_otc_bbds_dfi_v2018_1a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.action_datetime ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_action_datetime then
    show.action_datetime = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_action_datetime
    changed = true
  end
  if show.administrative ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_administrative then
    show.administrative = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_administrative
    changed = true
  end
  if show.control ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_control then
    show.control = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_control
    changed = true
  end
  if show.datetime ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_datetime then
    show.datetime = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_datetime
    changed = true
  end
  if show.end_of_day_message ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_day_message then
    show.end_of_day_message = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_day_message
    changed = true
  end
  if show.end_of_retransmission_requests_message ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_retransmission_requests_message then
    show.end_of_retransmission_requests_message = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_retransmission_requests_message
    changed = true
  end
  if show.end_of_trade_reporting_message ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_trade_reporting_message then
    show.end_of_trade_reporting_message = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_trade_reporting_message
    changed = true
  end
  if show.end_of_transmissions_message ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_transmissions_message then
    show.end_of_transmissions_message = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_end_of_transmissions_message
    changed = true
  end
  if show.general_administrative_message ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_general_administrative_message then
    show.general_administrative_message = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_general_administrative_message
    changed = true
  end
  if show.inside_appendage ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_inside_appendage then
    show.inside_appendage = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_inside_appendage
    changed = true
  end
  if show.line_integrity_message ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_line_integrity_message then
    show.line_integrity_message = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_line_integrity_message
    changed = true
  end
  if show.market_participant_quote_update_message ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_market_participant_quote_update_message then
    show.market_participant_quote_update_message = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_market_participant_quote_update_message
    changed = true
  end
  if show.market_session_close_message ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_market_session_close_message then
    show.market_session_close_message = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_market_session_close_message
    changed = true
  end
  if show.market_session_open_message ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_market_session_open_message then
    show.market_session_open_message = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_market_session_open_message
    changed = true
  end
  if show.message ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_message then
    show.message = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_message_header then
    show.message_header = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_packet then
    show.packet = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_packet
    changed = true
  end
  if show.quotation ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_quotation then
    show.quotation = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_quotation
    changed = true
  end
  if show.sequence_number_reset_message ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.start_of_day_message ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_start_of_day_message then
    show.start_of_day_message = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_start_of_day_message
    changed = true
  end
  if show.trading_action_message ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_trading_action_message then
    show.trading_action_message = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_trading_action_message
    changed = true
  end
  if show.administrative_payload ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_administrative_payload then
    show.administrative_payload = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_administrative_payload
    changed = true
  end
  if show.control_payload ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_control_payload then
    show.control_payload = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_control_payload
    changed = true
  end
  if show.payload ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_payload then
    show.payload = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_payload
    changed = true
  end
  if show.quotation_payload ~= omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_quotation_payload then
    show.quotation_payload = omi_finra_otc_bbds_dfi_v2018_1a.prefs.show_quotation_payload
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

-- Message Separator
finra_otc_bbds_dfi_v2018_1a.message_separator = {}

-- Size Of: Message Separator
finra_otc_bbds_dfi_v2018_1a.message_separator.size = 1

-- Display: Message Separator
finra_otc_bbds_dfi_v2018_1a.message_separator.display = function(value)
  return "Message Separator: "..value
end

-- Dissect: Message Separator
finra_otc_bbds_dfi_v2018_1a.message_separator.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.message_separator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = finra_otc_bbds_dfi_v2018_1a.message_separator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.message_separator, range, value, display)

  return offset + length, value
end

-- Reserved
finra_otc_bbds_dfi_v2018_1a.reserved = {}

-- Size Of: Reserved
finra_otc_bbds_dfi_v2018_1a.reserved.size = 1

-- Display: Reserved
finra_otc_bbds_dfi_v2018_1a.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
finra_otc_bbds_dfi_v2018_1a.reserved.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.reserved, range, value, display)

  return offset + length, value
end

-- Second
finra_otc_bbds_dfi_v2018_1a.second = {}

-- Size Of: Second
finra_otc_bbds_dfi_v2018_1a.second.size = 1

-- Display: Second
finra_otc_bbds_dfi_v2018_1a.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
finra_otc_bbds_dfi_v2018_1a.second.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.second.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.second, range, value, display)

  return offset + length, value
end

-- Minute
finra_otc_bbds_dfi_v2018_1a.minute = {}

-- Size Of: Minute
finra_otc_bbds_dfi_v2018_1a.minute.size = 1

-- Display: Minute
finra_otc_bbds_dfi_v2018_1a.minute.display = function(value)
  return "Minute: "..value
end

-- Dissect: Minute
finra_otc_bbds_dfi_v2018_1a.minute.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.minute.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.minute.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.minute, range, value, display)

  return offset + length, value
end

-- Hour
finra_otc_bbds_dfi_v2018_1a.hour = {}

-- Size Of: Hour
finra_otc_bbds_dfi_v2018_1a.hour.size = 1

-- Display: Hour
finra_otc_bbds_dfi_v2018_1a.hour.display = function(value)
  return "Hour: "..value
end

-- Dissect: Hour
finra_otc_bbds_dfi_v2018_1a.hour.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.hour.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.hour.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.hour, range, value, display)

  return offset + length, value
end

-- Day
finra_otc_bbds_dfi_v2018_1a.day = {}

-- Size Of: Day
finra_otc_bbds_dfi_v2018_1a.day.size = 1

-- Display: Day
finra_otc_bbds_dfi_v2018_1a.day.display = function(value)
  return "Day: "..value
end

-- Dissect: Day
finra_otc_bbds_dfi_v2018_1a.day.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.day.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.day, range, value, display)

  return offset + length, value
end

-- Month
finra_otc_bbds_dfi_v2018_1a.month = {}

-- Size Of: Month
finra_otc_bbds_dfi_v2018_1a.month.size = 1

-- Display: Month
finra_otc_bbds_dfi_v2018_1a.month.display = function(value)
  return "Month: "..value
end

-- Dissect: Month
finra_otc_bbds_dfi_v2018_1a.month.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.month, range, value, display)

  return offset + length, value
end

-- Year
finra_otc_bbds_dfi_v2018_1a.year = {}

-- Size Of: Year
finra_otc_bbds_dfi_v2018_1a.year.size = 2

-- Display: Year
finra_otc_bbds_dfi_v2018_1a.year.display = function(value)
  return "Year: "..value
end

-- Dissect: Year
finra_otc_bbds_dfi_v2018_1a.year.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.year.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.year, range, value, display)

  return offset + length, value
end

-- Datetime
finra_otc_bbds_dfi_v2018_1a.datetime = {}

-- Size Of: Datetime
finra_otc_bbds_dfi_v2018_1a.datetime.size =
  finra_otc_bbds_dfi_v2018_1a.year.size + 
  finra_otc_bbds_dfi_v2018_1a.month.size + 
  finra_otc_bbds_dfi_v2018_1a.day.size + 
  finra_otc_bbds_dfi_v2018_1a.hour.size + 
  finra_otc_bbds_dfi_v2018_1a.minute.size + 
  finra_otc_bbds_dfi_v2018_1a.second.size;

-- Display: Datetime
finra_otc_bbds_dfi_v2018_1a.datetime.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Datetime
finra_otc_bbds_dfi_v2018_1a.datetime.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Ascii String
  index, year = finra_otc_bbds_dfi_v2018_1a.year.dissect(buffer, index, packet, parent)

  -- Month: 1 Byte Ascii String
  index, month = finra_otc_bbds_dfi_v2018_1a.month.dissect(buffer, index, packet, parent)

  -- Day: 1 Byte Ascii String
  index, day = finra_otc_bbds_dfi_v2018_1a.day.dissect(buffer, index, packet, parent)

  -- Hour: 1 Byte Ascii String
  index, hour = finra_otc_bbds_dfi_v2018_1a.hour.dissect(buffer, index, packet, parent)

  -- Minute: 1 Byte Ascii String
  index, minute = finra_otc_bbds_dfi_v2018_1a.minute.dissect(buffer, index, packet, parent)

  -- Second: 1 Byte Ascii String
  index, second = finra_otc_bbds_dfi_v2018_1a.second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Datetime
finra_otc_bbds_dfi_v2018_1a.datetime.dissect = function(buffer, offset, packet, parent)
  if show.datetime then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.datetime, buffer(offset, 0))
    local index = finra_otc_bbds_dfi_v2018_1a.datetime.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_otc_bbds_dfi_v2018_1a.datetime.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_otc_bbds_dfi_v2018_1a.datetime.fields(buffer, offset, packet, parent)
  end
end

-- Market Center Originator Id
finra_otc_bbds_dfi_v2018_1a.market_center_originator_id = {}

-- Size Of: Market Center Originator Id
finra_otc_bbds_dfi_v2018_1a.market_center_originator_id.size = 2

-- Display: Market Center Originator Id
finra_otc_bbds_dfi_v2018_1a.market_center_originator_id.display = function(value)
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
finra_otc_bbds_dfi_v2018_1a.market_center_originator_id.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.market_center_originator_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.market_center_originator_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.market_center_originator_id, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
finra_otc_bbds_dfi_v2018_1a.message_sequence_number = {}

-- Size Of: Message Sequence Number
finra_otc_bbds_dfi_v2018_1a.message_sequence_number.size = 8

-- Display: Message Sequence Number
finra_otc_bbds_dfi_v2018_1a.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
finra_otc_bbds_dfi_v2018_1a.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.message_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Retransmission Requester
finra_otc_bbds_dfi_v2018_1a.retransmission_requester = {}

-- Size Of: Retransmission Requester
finra_otc_bbds_dfi_v2018_1a.retransmission_requester.size = 2

-- Display: Retransmission Requester
finra_otc_bbds_dfi_v2018_1a.retransmission_requester.display = function(value)
  return "Retransmission Requester: "..value
end

-- Dissect: Retransmission Requester
finra_otc_bbds_dfi_v2018_1a.retransmission_requester.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.retransmission_requester.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.retransmission_requester.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.retransmission_requester, range, value, display)

  return offset + length, value
end

-- Session Identifier
finra_otc_bbds_dfi_v2018_1a.session_identifier = {}

-- Size Of: Session Identifier
finra_otc_bbds_dfi_v2018_1a.session_identifier.size = 1

-- Display: Session Identifier
finra_otc_bbds_dfi_v2018_1a.session_identifier.display = function(value)
  if value == "A" then
    return "Session Identifier: All Market Sessions Or Session Independent (A)"
  end
  if value == "U" then
    return "Session Identifier: Us Market Session (U)"
  end

  return "Session Identifier: Unknown("..value..")"
end

-- Dissect: Session Identifier
finra_otc_bbds_dfi_v2018_1a.session_identifier.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.session_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.session_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.session_identifier, range, value, display)

  return offset + length, value
end

-- Message Header
finra_otc_bbds_dfi_v2018_1a.message_header = {}

-- Size Of: Message Header
finra_otc_bbds_dfi_v2018_1a.message_header.size =
  finra_otc_bbds_dfi_v2018_1a.session_identifier.size + 
  finra_otc_bbds_dfi_v2018_1a.retransmission_requester.size + 
  finra_otc_bbds_dfi_v2018_1a.message_sequence_number.size + 
  finra_otc_bbds_dfi_v2018_1a.market_center_originator_id.size + 
  finra_otc_bbds_dfi_v2018_1a.datetime.size + 
  finra_otc_bbds_dfi_v2018_1a.reserved.size;

-- Display: Message Header
finra_otc_bbds_dfi_v2018_1a.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
finra_otc_bbds_dfi_v2018_1a.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Identifier: 1 Byte Ascii String Enum with 2 values
  index, session_identifier = finra_otc_bbds_dfi_v2018_1a.session_identifier.dissect(buffer, index, packet, parent)

  -- Retransmission Requester: 2 Byte Ascii String
  index, retransmission_requester = finra_otc_bbds_dfi_v2018_1a.retransmission_requester.dissect(buffer, index, packet, parent)

  -- Message Sequence Number: 8 Byte Ascii String
  index, message_sequence_number = finra_otc_bbds_dfi_v2018_1a.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Market Center Originator Id: 2 Byte Ascii String Enum with 4 values
  index, market_center_originator_id = finra_otc_bbds_dfi_v2018_1a.market_center_originator_id.dissect(buffer, index, packet, parent)

  -- Datetime: Struct of 6 fields
  index, datetime = finra_otc_bbds_dfi_v2018_1a.datetime.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte Ascii String
  index, reserved = finra_otc_bbds_dfi_v2018_1a.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
finra_otc_bbds_dfi_v2018_1a.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.message_header, buffer(offset, 0))
    local index = finra_otc_bbds_dfi_v2018_1a.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_otc_bbds_dfi_v2018_1a.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_otc_bbds_dfi_v2018_1a.message_header.fields(buffer, offset, packet, parent)
  end
end

-- End Of Trade Reporting Message
finra_otc_bbds_dfi_v2018_1a.end_of_trade_reporting_message = {}

-- Size Of: End Of Trade Reporting Message
finra_otc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.size =
  finra_otc_bbds_dfi_v2018_1a.message_header.size;

-- Display: End Of Trade Reporting Message
finra_otc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Trade Reporting Message
finra_otc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Trade Reporting Message
finra_otc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_trade_reporting_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.end_of_trade_reporting_message, buffer(offset, 0))
    local index = finra_otc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_otc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_otc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
finra_otc_bbds_dfi_v2018_1a.sequence_number_reset_message = {}

-- Size Of: Sequence Number Reset Message
finra_otc_bbds_dfi_v2018_1a.sequence_number_reset_message.size =
  finra_otc_bbds_dfi_v2018_1a.message_header.size;

-- Display: Sequence Number Reset Message
finra_otc_bbds_dfi_v2018_1a.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
finra_otc_bbds_dfi_v2018_1a.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
finra_otc_bbds_dfi_v2018_1a.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = finra_otc_bbds_dfi_v2018_1a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_otc_bbds_dfi_v2018_1a.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_otc_bbds_dfi_v2018_1a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Line Integrity Message
finra_otc_bbds_dfi_v2018_1a.line_integrity_message = {}

-- Size Of: Line Integrity Message
finra_otc_bbds_dfi_v2018_1a.line_integrity_message.size =
  finra_otc_bbds_dfi_v2018_1a.message_header.size;

-- Display: Line Integrity Message
finra_otc_bbds_dfi_v2018_1a.line_integrity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Line Integrity Message
finra_otc_bbds_dfi_v2018_1a.line_integrity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Line Integrity Message
finra_otc_bbds_dfi_v2018_1a.line_integrity_message.dissect = function(buffer, offset, packet, parent)
  if show.line_integrity_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.line_integrity_message, buffer(offset, 0))
    local index = finra_otc_bbds_dfi_v2018_1a.line_integrity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_otc_bbds_dfi_v2018_1a.line_integrity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_otc_bbds_dfi_v2018_1a.line_integrity_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmissions Message
finra_otc_bbds_dfi_v2018_1a.end_of_transmissions_message = {}

-- Size Of: End Of Transmissions Message
finra_otc_bbds_dfi_v2018_1a.end_of_transmissions_message.size =
  finra_otc_bbds_dfi_v2018_1a.message_header.size;

-- Display: End Of Transmissions Message
finra_otc_bbds_dfi_v2018_1a.end_of_transmissions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmissions Message
finra_otc_bbds_dfi_v2018_1a.end_of_transmissions_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmissions Message
finra_otc_bbds_dfi_v2018_1a.end_of_transmissions_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_transmissions_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.end_of_transmissions_message, buffer(offset, 0))
    local index = finra_otc_bbds_dfi_v2018_1a.end_of_transmissions_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_otc_bbds_dfi_v2018_1a.end_of_transmissions_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_otc_bbds_dfi_v2018_1a.end_of_transmissions_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Retransmission Requests Message
finra_otc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message = {}

-- Size Of: End Of Retransmission Requests Message
finra_otc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.size =
  finra_otc_bbds_dfi_v2018_1a.message_header.size;

-- Display: End Of Retransmission Requests Message
finra_otc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Retransmission Requests Message
finra_otc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Retransmission Requests Message
finra_otc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_retransmission_requests_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.end_of_retransmission_requests_message, buffer(offset, 0))
    local index = finra_otc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_otc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_otc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Close Message
finra_otc_bbds_dfi_v2018_1a.market_session_close_message = {}

-- Size Of: Market Session Close Message
finra_otc_bbds_dfi_v2018_1a.market_session_close_message.size =
  finra_otc_bbds_dfi_v2018_1a.message_header.size;

-- Display: Market Session Close Message
finra_otc_bbds_dfi_v2018_1a.market_session_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Close Message
finra_otc_bbds_dfi_v2018_1a.market_session_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Close Message
finra_otc_bbds_dfi_v2018_1a.market_session_close_message.dissect = function(buffer, offset, packet, parent)
  if show.market_session_close_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.market_session_close_message, buffer(offset, 0))
    local index = finra_otc_bbds_dfi_v2018_1a.market_session_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_otc_bbds_dfi_v2018_1a.market_session_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_otc_bbds_dfi_v2018_1a.market_session_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Open Message
finra_otc_bbds_dfi_v2018_1a.market_session_open_message = {}

-- Size Of: Market Session Open Message
finra_otc_bbds_dfi_v2018_1a.market_session_open_message.size =
  finra_otc_bbds_dfi_v2018_1a.message_header.size;

-- Display: Market Session Open Message
finra_otc_bbds_dfi_v2018_1a.market_session_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Open Message
finra_otc_bbds_dfi_v2018_1a.market_session_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Open Message
finra_otc_bbds_dfi_v2018_1a.market_session_open_message.dissect = function(buffer, offset, packet, parent)
  if show.market_session_open_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.market_session_open_message, buffer(offset, 0))
    local index = finra_otc_bbds_dfi_v2018_1a.market_session_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_otc_bbds_dfi_v2018_1a.market_session_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_otc_bbds_dfi_v2018_1a.market_session_open_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Day Message
finra_otc_bbds_dfi_v2018_1a.end_of_day_message = {}

-- Size Of: End Of Day Message
finra_otc_bbds_dfi_v2018_1a.end_of_day_message.size =
  finra_otc_bbds_dfi_v2018_1a.message_header.size;

-- Display: End Of Day Message
finra_otc_bbds_dfi_v2018_1a.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
finra_otc_bbds_dfi_v2018_1a.end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
finra_otc_bbds_dfi_v2018_1a.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_day_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.end_of_day_message, buffer(offset, 0))
    local index = finra_otc_bbds_dfi_v2018_1a.end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_otc_bbds_dfi_v2018_1a.end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_otc_bbds_dfi_v2018_1a.end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Day Message
finra_otc_bbds_dfi_v2018_1a.start_of_day_message = {}

-- Size Of: Start Of Day Message
finra_otc_bbds_dfi_v2018_1a.start_of_day_message.size =
  finra_otc_bbds_dfi_v2018_1a.message_header.size;

-- Display: Start Of Day Message
finra_otc_bbds_dfi_v2018_1a.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
finra_otc_bbds_dfi_v2018_1a.start_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
finra_otc_bbds_dfi_v2018_1a.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_day_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.start_of_day_message, buffer(offset, 0))
    local index = finra_otc_bbds_dfi_v2018_1a.start_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_otc_bbds_dfi_v2018_1a.start_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_otc_bbds_dfi_v2018_1a.start_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Payload
finra_otc_bbds_dfi_v2018_1a.control_payload = {}

-- Calculate runtime size of: Control Payload
finra_otc_bbds_dfi_v2018_1a.control_payload.size = function(buffer, offset, control_message_type)
  -- Size of Start Of Day Message
  if control_message_type == "I" then
    return finra_otc_bbds_dfi_v2018_1a.start_of_day_message.size(buffer, offset)
  end
  -- Size of End Of Day Message
  if control_message_type == "J" then
    return finra_otc_bbds_dfi_v2018_1a.end_of_day_message.size(buffer, offset)
  end
  -- Size of Market Session Open Message
  if control_message_type == "O" then
    return finra_otc_bbds_dfi_v2018_1a.market_session_open_message.size(buffer, offset)
  end
  -- Size of Market Session Close Message
  if control_message_type == "O" then
    return finra_otc_bbds_dfi_v2018_1a.market_session_close_message.size(buffer, offset)
  end
  -- Size of End Of Retransmission Requests Message
  if control_message_type == "K" then
    return finra_otc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.size(buffer, offset)
  end
  -- Size of End Of Transmissions Message
  if control_message_type == "Z" then
    return finra_otc_bbds_dfi_v2018_1a.end_of_transmissions_message.size(buffer, offset)
  end
  -- Size of Line Integrity Message
  if control_message_type == "T" then
    return finra_otc_bbds_dfi_v2018_1a.line_integrity_message.size(buffer, offset)
  end
  -- Size of Sequence Number Reset Message
  if control_message_type == "L" then
    return finra_otc_bbds_dfi_v2018_1a.sequence_number_reset_message.size(buffer, offset)
  end
  -- Size of End Of Trade Reporting Message
  if control_message_type == "X" then
    return finra_otc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.size(buffer, offset)
  end

  return 0
end

-- Display: Control Payload
finra_otc_bbds_dfi_v2018_1a.control_payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Control Payload
finra_otc_bbds_dfi_v2018_1a.control_payload.branches = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "I" then
    return finra_otc_bbds_dfi_v2018_1a.start_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "J" then
    return finra_otc_bbds_dfi_v2018_1a.end_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Open Message
  if control_message_type == "O" then
    return finra_otc_bbds_dfi_v2018_1a.market_session_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Close Message
  if control_message_type == "O" then
    return finra_otc_bbds_dfi_v2018_1a.market_session_close_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Retransmission Requests Message
  if control_message_type == "K" then
    return finra_otc_bbds_dfi_v2018_1a.end_of_retransmission_requests_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmissions Message
  if control_message_type == "Z" then
    return finra_otc_bbds_dfi_v2018_1a.end_of_transmissions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Line Integrity Message
  if control_message_type == "T" then
    return finra_otc_bbds_dfi_v2018_1a.line_integrity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Number Reset Message
  if control_message_type == "L" then
    return finra_otc_bbds_dfi_v2018_1a.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Trade Reporting Message
  if control_message_type == "X" then
    return finra_otc_bbds_dfi_v2018_1a.end_of_trade_reporting_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Control Payload
finra_otc_bbds_dfi_v2018_1a.control_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  if not show.control_payload then
    return finra_otc_bbds_dfi_v2018_1a.control_payload.branches(buffer, offset, packet, parent, control_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_otc_bbds_dfi_v2018_1a.control_payload.size(buffer, offset, control_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_otc_bbds_dfi_v2018_1a.control_payload.display(buffer, packet, parent)
  local element = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.control_payload, range, display)

  return finra_otc_bbds_dfi_v2018_1a.control_payload.branches(buffer, offset, packet, parent, control_message_type)
end

-- Control Message Type
finra_otc_bbds_dfi_v2018_1a.control_message_type = {}

-- Size Of: Control Message Type
finra_otc_bbds_dfi_v2018_1a.control_message_type.size = 1

-- Display: Control Message Type
finra_otc_bbds_dfi_v2018_1a.control_message_type.display = function(value)
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
finra_otc_bbds_dfi_v2018_1a.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Control
finra_otc_bbds_dfi_v2018_1a.control = {}

-- Calculate size of: Control
finra_otc_bbds_dfi_v2018_1a.control.size = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a.control_message_type.size

  -- Calculate runtime size of Control Payload field
  local control_payload_offset = offset + index
  local control_payload_type = buffer(control_payload_offset - 1, 1):string()
  index = index + finra_otc_bbds_dfi_v2018_1a.control_payload.size(buffer, control_payload_offset, control_payload_type)

  return index
end

-- Display: Control
finra_otc_bbds_dfi_v2018_1a.control.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control
finra_otc_bbds_dfi_v2018_1a.control.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String Enum with 9 values
  index, control_message_type = finra_otc_bbds_dfi_v2018_1a.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Payload: Runtime Type with 9 branches
  index = finra_otc_bbds_dfi_v2018_1a.control_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control
finra_otc_bbds_dfi_v2018_1a.control.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.control then
    local length = finra_otc_bbds_dfi_v2018_1a.control.size(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a.control.display(buffer, packet, parent)
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.control, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a.control.fields(buffer, offset, packet, parent)
end

-- Reason Code
finra_otc_bbds_dfi_v2018_1a.reason_code = {}

-- Size Of: Reason Code
finra_otc_bbds_dfi_v2018_1a.reason_code.size = 6

-- Display: Reason Code
finra_otc_bbds_dfi_v2018_1a.reason_code.display = function(value)
  return "Reason Code: "..value
end

-- Dissect: Reason Code
finra_otc_bbds_dfi_v2018_1a.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Action Datetime
finra_otc_bbds_dfi_v2018_1a.action_datetime = {}

-- Size Of: Action Datetime
finra_otc_bbds_dfi_v2018_1a.action_datetime.size =
  finra_otc_bbds_dfi_v2018_1a.year.size + 
  finra_otc_bbds_dfi_v2018_1a.month.size + 
  finra_otc_bbds_dfi_v2018_1a.day.size + 
  finra_otc_bbds_dfi_v2018_1a.hour.size + 
  finra_otc_bbds_dfi_v2018_1a.minute.size + 
  finra_otc_bbds_dfi_v2018_1a.second.size;

-- Display: Action Datetime
finra_otc_bbds_dfi_v2018_1a.action_datetime.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Action Datetime
finra_otc_bbds_dfi_v2018_1a.action_datetime.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Ascii String
  index, year = finra_otc_bbds_dfi_v2018_1a.year.dissect(buffer, index, packet, parent)

  -- Month: 1 Byte Ascii String
  index, month = finra_otc_bbds_dfi_v2018_1a.month.dissect(buffer, index, packet, parent)

  -- Day: 1 Byte Ascii String
  index, day = finra_otc_bbds_dfi_v2018_1a.day.dissect(buffer, index, packet, parent)

  -- Hour: 1 Byte Ascii String
  index, hour = finra_otc_bbds_dfi_v2018_1a.hour.dissect(buffer, index, packet, parent)

  -- Minute: 1 Byte Ascii String
  index, minute = finra_otc_bbds_dfi_v2018_1a.minute.dissect(buffer, index, packet, parent)

  -- Second: 1 Byte Ascii String
  index, second = finra_otc_bbds_dfi_v2018_1a.second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Action Datetime
finra_otc_bbds_dfi_v2018_1a.action_datetime.dissect = function(buffer, offset, packet, parent)
  if show.action_datetime then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.action_datetime, buffer(offset, 0))
    local index = finra_otc_bbds_dfi_v2018_1a.action_datetime.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_otc_bbds_dfi_v2018_1a.action_datetime.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_otc_bbds_dfi_v2018_1a.action_datetime.fields(buffer, offset, packet, parent)
  end
end

-- Action
finra_otc_bbds_dfi_v2018_1a.action = {}

-- Size Of: Action
finra_otc_bbds_dfi_v2018_1a.action.size = 1

-- Display: Action
finra_otc_bbds_dfi_v2018_1a.action.display = function(value)
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
finra_otc_bbds_dfi_v2018_1a.action.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.action, range, value, display)

  return offset + length, value
end

-- Stock Symbol
finra_otc_bbds_dfi_v2018_1a.stock_symbol = {}

-- Size Of: Stock Symbol
finra_otc_bbds_dfi_v2018_1a.stock_symbol.size = 11

-- Display: Stock Symbol
finra_otc_bbds_dfi_v2018_1a.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
finra_otc_bbds_dfi_v2018_1a.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.stock_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Trading Action Message
finra_otc_bbds_dfi_v2018_1a.trading_action_message = {}

-- Size Of: Trading Action Message
finra_otc_bbds_dfi_v2018_1a.trading_action_message.size =
  finra_otc_bbds_dfi_v2018_1a.message_header.size + 
  finra_otc_bbds_dfi_v2018_1a.stock_symbol.size + 
  finra_otc_bbds_dfi_v2018_1a.action.size + 
  finra_otc_bbds_dfi_v2018_1a.action_datetime.size + 
  finra_otc_bbds_dfi_v2018_1a.reason_code.size;

-- Display: Trading Action Message
finra_otc_bbds_dfi_v2018_1a.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
finra_otc_bbds_dfi_v2018_1a.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  -- Stock Symbol: 11 Byte Ascii String
  index, stock_symbol = finra_otc_bbds_dfi_v2018_1a.stock_symbol.dissect(buffer, index, packet, parent)

  -- Action: 1 Byte Ascii String Enum with 3 values
  index, action = finra_otc_bbds_dfi_v2018_1a.action.dissect(buffer, index, packet, parent)

  -- Action Datetime: Struct of 6 fields
  index, action_datetime = finra_otc_bbds_dfi_v2018_1a.action_datetime.dissect(buffer, index, packet, parent)

  -- Reason Code: 6 Byte Ascii String
  index, reason_code = finra_otc_bbds_dfi_v2018_1a.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
finra_otc_bbds_dfi_v2018_1a.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.trading_action_message, buffer(offset, 0))
    local index = finra_otc_bbds_dfi_v2018_1a.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_otc_bbds_dfi_v2018_1a.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_otc_bbds_dfi_v2018_1a.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Text
finra_otc_bbds_dfi_v2018_1a.text = {}

-- Size Of: Text
finra_otc_bbds_dfi_v2018_1a.text.size = 2

-- Display: Text
finra_otc_bbds_dfi_v2018_1a.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
finra_otc_bbds_dfi_v2018_1a.text.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.text, range, value, display)

  return offset + length, value
end

-- General Administrative Message
finra_otc_bbds_dfi_v2018_1a.general_administrative_message = {}

-- Size Of: General Administrative Message
finra_otc_bbds_dfi_v2018_1a.general_administrative_message.size =
  finra_otc_bbds_dfi_v2018_1a.message_header.size + 
  finra_otc_bbds_dfi_v2018_1a.text.size;

-- Display: General Administrative Message
finra_otc_bbds_dfi_v2018_1a.general_administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Administrative Message
finra_otc_bbds_dfi_v2018_1a.general_administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 6 fields
  index, message_header = finra_otc_bbds_dfi_v2018_1a.message_header.dissect(buffer, index, packet, parent)

  -- Text: 2 Byte Ascii String
  index, text = finra_otc_bbds_dfi_v2018_1a.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: General Administrative Message
finra_otc_bbds_dfi_v2018_1a.general_administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.general_administrative_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.general_administrative_message, buffer(offset, 0))
    local index = finra_otc_bbds_dfi_v2018_1a.general_administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_otc_bbds_dfi_v2018_1a.general_administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_otc_bbds_dfi_v2018_1a.general_administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Payload
finra_otc_bbds_dfi_v2018_1a.administrative_payload = {}

-- Calculate runtime size of: Administrative Payload
finra_otc_bbds_dfi_v2018_1a.administrative_payload.size = function(buffer, offset, administrative_message_type)
  -- Size of General Administrative Message
  if administrative_message_type == "A" then
    return finra_otc_bbds_dfi_v2018_1a.general_administrative_message.size(buffer, offset)
  end
  -- Size of Trading Action Message
  if administrative_message_type == "H" then
    return finra_otc_bbds_dfi_v2018_1a.trading_action_message.size(buffer, offset)
  end

  return 0
end

-- Display: Administrative Payload
finra_otc_bbds_dfi_v2018_1a.administrative_payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Administrative Payload
finra_otc_bbds_dfi_v2018_1a.administrative_payload.branches = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect General Administrative Message
  if administrative_message_type == "A" then
    return finra_otc_bbds_dfi_v2018_1a.general_administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if administrative_message_type == "H" then
    return finra_otc_bbds_dfi_v2018_1a.trading_action_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Administrative Payload
finra_otc_bbds_dfi_v2018_1a.administrative_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  if not show.administrative_payload then
    return finra_otc_bbds_dfi_v2018_1a.administrative_payload.branches(buffer, offset, packet, parent, administrative_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_otc_bbds_dfi_v2018_1a.administrative_payload.size(buffer, offset, administrative_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_otc_bbds_dfi_v2018_1a.administrative_payload.display(buffer, packet, parent)
  local element = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.administrative_payload, range, display)

  return finra_otc_bbds_dfi_v2018_1a.administrative_payload.branches(buffer, offset, packet, parent, administrative_message_type)
end

-- Administrative Message Type
finra_otc_bbds_dfi_v2018_1a.administrative_message_type = {}

-- Size Of: Administrative Message Type
finra_otc_bbds_dfi_v2018_1a.administrative_message_type.size = 1

-- Display: Administrative Message Type
finra_otc_bbds_dfi_v2018_1a.administrative_message_type.display = function(value)
  if value == "A" then
    return "Administrative Message Type: General Administrative Message (A)"
  end
  if value == "H" then
    return "Administrative Message Type: Trading Action Message (H)"
  end

  return "Administrative Message Type: Unknown("..value..")"
end

-- Dissect: Administrative Message Type
finra_otc_bbds_dfi_v2018_1a.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Administrative
finra_otc_bbds_dfi_v2018_1a.administrative = {}

-- Calculate size of: Administrative
finra_otc_bbds_dfi_v2018_1a.administrative.size = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a.administrative_message_type.size

  -- Calculate runtime size of Administrative Payload field
  local administrative_payload_offset = offset + index
  local administrative_payload_type = buffer(administrative_payload_offset - 1, 1):string()
  index = index + finra_otc_bbds_dfi_v2018_1a.administrative_payload.size(buffer, administrative_payload_offset, administrative_payload_type)

  return index
end

-- Display: Administrative
finra_otc_bbds_dfi_v2018_1a.administrative.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative
finra_otc_bbds_dfi_v2018_1a.administrative.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String Enum with 2 values
  index, administrative_message_type = finra_otc_bbds_dfi_v2018_1a.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Payload: Runtime Type with 2 branches
  index = finra_otc_bbds_dfi_v2018_1a.administrative_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative
finra_otc_bbds_dfi_v2018_1a.administrative.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.administrative then
    local length = finra_otc_bbds_dfi_v2018_1a.administrative.size(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a.administrative.display(buffer, packet, parent)
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.administrative, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a.administrative.fields(buffer, offset, packet, parent)
end

-- Inside Ask Size
finra_otc_bbds_dfi_v2018_1a.inside_ask_size = {}

-- Size Of: Inside Ask Size
finra_otc_bbds_dfi_v2018_1a.inside_ask_size.size = 12

-- Display: Inside Ask Size
finra_otc_bbds_dfi_v2018_1a.inside_ask_size.display = function(value)
  return "Inside Ask Size: "..value
end

-- Dissect: Inside Ask Size
finra_otc_bbds_dfi_v2018_1a.inside_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.inside_ask_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a.inside_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_ask_size, range, value, display)

  return offset + length, value
end

-- Inside Ask Price
finra_otc_bbds_dfi_v2018_1a.inside_ask_price = {}

-- Size Of: Inside Ask Price
finra_otc_bbds_dfi_v2018_1a.inside_ask_price.size = 12

-- Display: Inside Ask Price
finra_otc_bbds_dfi_v2018_1a.inside_ask_price.display = function(value)
  return "Inside Ask Price: "..value
end

-- Dissect: Inside Ask Price
finra_otc_bbds_dfi_v2018_1a.inside_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.inside_ask_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a.inside_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_ask_price, range, value, display)

  return offset + length, value
end

-- Inside Ask Price Denominator
finra_otc_bbds_dfi_v2018_1a.inside_ask_price_denominator = {}

-- Size Of: Inside Ask Price Denominator
finra_otc_bbds_dfi_v2018_1a.inside_ask_price_denominator.size = 1

-- Display: Inside Ask Price Denominator
finra_otc_bbds_dfi_v2018_1a.inside_ask_price_denominator.display = function(value)
  return "Inside Ask Price Denominator: "..value
end

-- Dissect: Inside Ask Price Denominator
finra_otc_bbds_dfi_v2018_1a.inside_ask_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.inside_ask_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.inside_ask_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_ask_price_denominator, range, value, display)

  return offset + length, value
end

-- Inside Bid Size
finra_otc_bbds_dfi_v2018_1a.inside_bid_size = {}

-- Size Of: Inside Bid Size
finra_otc_bbds_dfi_v2018_1a.inside_bid_size.size = 12

-- Display: Inside Bid Size
finra_otc_bbds_dfi_v2018_1a.inside_bid_size.display = function(value)
  return "Inside Bid Size: "..value
end

-- Dissect: Inside Bid Size
finra_otc_bbds_dfi_v2018_1a.inside_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.inside_bid_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a.inside_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_bid_size, range, value, display)

  return offset + length, value
end

-- Inside Bid Price
finra_otc_bbds_dfi_v2018_1a.inside_bid_price = {}

-- Size Of: Inside Bid Price
finra_otc_bbds_dfi_v2018_1a.inside_bid_price.size = 12

-- Display: Inside Bid Price
finra_otc_bbds_dfi_v2018_1a.inside_bid_price.display = function(value)
  return "Inside Bid Price: "..value
end

-- Dissect: Inside Bid Price
finra_otc_bbds_dfi_v2018_1a.inside_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.inside_bid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a.inside_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_bid_price, range, value, display)

  return offset + length, value
end

-- Inside Bid Price Denominator
finra_otc_bbds_dfi_v2018_1a.inside_bid_price_denominator = {}

-- Size Of: Inside Bid Price Denominator
finra_otc_bbds_dfi_v2018_1a.inside_bid_price_denominator.size = 1

-- Display: Inside Bid Price Denominator
finra_otc_bbds_dfi_v2018_1a.inside_bid_price_denominator.display = function(value)
  return "Inside Bid Price Denominator: "..value
end

-- Dissect: Inside Bid Price Denominator
finra_otc_bbds_dfi_v2018_1a.inside_bid_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.inside_bid_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.inside_bid_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_bid_price_denominator, range, value, display)

  return offset + length, value
end

-- Inside Quote Condition
finra_otc_bbds_dfi_v2018_1a.inside_quote_condition = {}

-- Size Of: Inside Quote Condition
finra_otc_bbds_dfi_v2018_1a.inside_quote_condition.size = 1

-- Display: Inside Quote Condition
finra_otc_bbds_dfi_v2018_1a.inside_quote_condition.display = function(value)
  if value == "O" then
    return "Inside Quote Condition: Open (O)"
  end
  if value == "C" then
    return "Inside Quote Condition: Closed (C)"
  end

  return "Inside Quote Condition: Unknown("..value..")"
end

-- Dissect: Inside Quote Condition
finra_otc_bbds_dfi_v2018_1a.inside_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.inside_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.inside_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_quote_condition, range, value, display)

  return offset + length, value
end

-- Inside Appendage
finra_otc_bbds_dfi_v2018_1a.inside_appendage = {}

-- Size Of: Inside Appendage
finra_otc_bbds_dfi_v2018_1a.inside_appendage.size =
  finra_otc_bbds_dfi_v2018_1a.inside_quote_condition.size + 
  finra_otc_bbds_dfi_v2018_1a.inside_bid_price_denominator.size + 
  finra_otc_bbds_dfi_v2018_1a.inside_bid_price.size + 
  finra_otc_bbds_dfi_v2018_1a.inside_bid_size.size + 
  finra_otc_bbds_dfi_v2018_1a.inside_ask_price_denominator.size + 
  finra_otc_bbds_dfi_v2018_1a.inside_ask_price.size + 
  finra_otc_bbds_dfi_v2018_1a.inside_ask_size.size;

-- Display: Inside Appendage
finra_otc_bbds_dfi_v2018_1a.inside_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inside Appendage
finra_otc_bbds_dfi_v2018_1a.inside_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inside Quote Condition: 1 Byte Ascii String Enum with 2 values
  index, inside_quote_condition = finra_otc_bbds_dfi_v2018_1a.inside_quote_condition.dissect(buffer, index, packet, parent)

  -- Inside Bid Price Denominator: 1 Byte Ascii String
  index, inside_bid_price_denominator = finra_otc_bbds_dfi_v2018_1a.inside_bid_price_denominator.dissect(buffer, index, packet, parent)

  -- Inside Bid Price: 12 Byte Ascii String
  index, inside_bid_price = finra_otc_bbds_dfi_v2018_1a.inside_bid_price.dissect(buffer, index, packet, parent)

  -- Inside Bid Size: 12 Byte Ascii String
  index, inside_bid_size = finra_otc_bbds_dfi_v2018_1a.inside_bid_size.dissect(buffer, index, packet, parent)

  -- Inside Ask Price Denominator: 1 Byte Ascii String
  index, inside_ask_price_denominator = finra_otc_bbds_dfi_v2018_1a.inside_ask_price_denominator.dissect(buffer, index, packet, parent)

  -- Inside Ask Price: 12 Byte Ascii String
  index, inside_ask_price = finra_otc_bbds_dfi_v2018_1a.inside_ask_price.dissect(buffer, index, packet, parent)

  -- Inside Ask Size: 12 Byte Ascii String
  index, inside_ask_size = finra_otc_bbds_dfi_v2018_1a.inside_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inside Appendage
finra_otc_bbds_dfi_v2018_1a.inside_appendage.dissect = function(buffer, offset, packet, parent)
  if show.inside_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_appendage, buffer(offset, 0))
    local index = finra_otc_bbds_dfi_v2018_1a.inside_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = finra_otc_bbds_dfi_v2018_1a.inside_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return finra_otc_bbds_dfi_v2018_1a.inside_appendage.fields(buffer, offset, packet, parent)
  end
end

-- Inside Appendage Indicator
finra_otc_bbds_dfi_v2018_1a.inside_appendage_indicator = {}

-- Size Of: Inside Appendage Indicator
finra_otc_bbds_dfi_v2018_1a.inside_appendage_indicator.size = 1

-- Display: Inside Appendage Indicator
finra_otc_bbds_dfi_v2018_1a.inside_appendage_indicator.display = function(value)
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
finra_otc_bbds_dfi_v2018_1a.inside_appendage_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.inside_appendage_indicator.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a.inside_appendage_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.inside_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Currency
finra_otc_bbds_dfi_v2018_1a.currency = {}

-- Size Of: Currency
finra_otc_bbds_dfi_v2018_1a.currency.size = 3

-- Display: Currency
finra_otc_bbds_dfi_v2018_1a.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
finra_otc_bbds_dfi_v2018_1a.currency.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.currency, range, value, display)

  return offset + length, value
end

-- Ask Size
finra_otc_bbds_dfi_v2018_1a.ask_size = {}

-- Size Of: Ask Size
finra_otc_bbds_dfi_v2018_1a.ask_size.size = 7

-- Display: Ask Size
finra_otc_bbds_dfi_v2018_1a.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
finra_otc_bbds_dfi_v2018_1a.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.ask_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Ask Price
finra_otc_bbds_dfi_v2018_1a.ask_price = {}

-- Size Of: Ask Price
finra_otc_bbds_dfi_v2018_1a.ask_price.size = 12

-- Display: Ask Price
finra_otc_bbds_dfi_v2018_1a.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
finra_otc_bbds_dfi_v2018_1a.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.ask_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Price Denominator
finra_otc_bbds_dfi_v2018_1a.ask_price_denominator = {}

-- Size Of: Ask Price Denominator
finra_otc_bbds_dfi_v2018_1a.ask_price_denominator.size = 1

-- Display: Ask Price Denominator
finra_otc_bbds_dfi_v2018_1a.ask_price_denominator.display = function(value)
  return "Ask Price Denominator: "..value
end

-- Dissect: Ask Price Denominator
finra_otc_bbds_dfi_v2018_1a.ask_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.ask_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.ask_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.ask_price_denominator, range, value, display)

  return offset + length, value
end

-- Bid Size
finra_otc_bbds_dfi_v2018_1a.bid_size = {}

-- Size Of: Bid Size
finra_otc_bbds_dfi_v2018_1a.bid_size.size = 7

-- Display: Bid Size
finra_otc_bbds_dfi_v2018_1a.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
finra_otc_bbds_dfi_v2018_1a.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.bid_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Price
finra_otc_bbds_dfi_v2018_1a.bid_price = {}

-- Size Of: Bid Price
finra_otc_bbds_dfi_v2018_1a.bid_price.size = 12

-- Display: Bid Price
finra_otc_bbds_dfi_v2018_1a.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
finra_otc_bbds_dfi_v2018_1a.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.bid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = finra_otc_bbds_dfi_v2018_1a.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Price Denominator
finra_otc_bbds_dfi_v2018_1a.bid_price_denominator = {}

-- Size Of: Bid Price Denominator
finra_otc_bbds_dfi_v2018_1a.bid_price_denominator.size = 1

-- Display: Bid Price Denominator
finra_otc_bbds_dfi_v2018_1a.bid_price_denominator.display = function(value)
  return "Bid Price Denominator: "..value
end

-- Dissect: Bid Price Denominator
finra_otc_bbds_dfi_v2018_1a.bid_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.bid_price_denominator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.bid_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.bid_price_denominator, range, value, display)

  return offset + length, value
end

-- Unsolicited Indicator
finra_otc_bbds_dfi_v2018_1a.unsolicited_indicator = {}

-- Size Of: Unsolicited Indicator
finra_otc_bbds_dfi_v2018_1a.unsolicited_indicator.size = 1

-- Display: Unsolicited Indicator
finra_otc_bbds_dfi_v2018_1a.unsolicited_indicator.display = function(value)
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
finra_otc_bbds_dfi_v2018_1a.unsolicited_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.unsolicited_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.unsolicited_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.unsolicited_indicator, range, value, display)

  return offset + length, value
end

-- Wanted Indicator
finra_otc_bbds_dfi_v2018_1a.wanted_indicator = {}

-- Size Of: Wanted Indicator
finra_otc_bbds_dfi_v2018_1a.wanted_indicator.size = 1

-- Display: Wanted Indicator
finra_otc_bbds_dfi_v2018_1a.wanted_indicator.display = function(value)
  return "Wanted Indicator: "..value
end

-- Dissect: Wanted Indicator
finra_otc_bbds_dfi_v2018_1a.wanted_indicator.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.wanted_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.wanted_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.wanted_indicator, range, value, display)

  return offset + length, value
end

-- Market Participant Quote Condition
finra_otc_bbds_dfi_v2018_1a.market_participant_quote_condition = {}

-- Size Of: Market Participant Quote Condition
finra_otc_bbds_dfi_v2018_1a.market_participant_quote_condition.size = 1

-- Display: Market Participant Quote Condition
finra_otc_bbds_dfi_v2018_1a.market_participant_quote_condition.display = function(value)
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
finra_otc_bbds_dfi_v2018_1a.market_participant_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.market_participant_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.market_participant_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.market_participant_quote_condition, range, value, display)

  return offset + length, value
end

-- Market Participant Status
finra_otc_bbds_dfi_v2018_1a.market_participant_status = {}

-- Size Of: Market Participant Status
finra_otc_bbds_dfi_v2018_1a.market_participant_status.size = 1

-- Display: Market Participant Status
finra_otc_bbds_dfi_v2018_1a.market_participant_status.display = function(value)
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
finra_otc_bbds_dfi_v2018_1a.market_participant_status.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.market_participant_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.market_participant_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.market_participant_status, range, value, display)

  return offset + length, value
end

-- Market Participant Location Id
finra_otc_bbds_dfi_v2018_1a.market_participant_location_id = {}

-- Size Of: Market Participant Location Id
finra_otc_bbds_dfi_v2018_1a.market_participant_location_id.size = 1

-- Display: Market Participant Location Id
finra_otc_bbds_dfi_v2018_1a.market_participant_location_id.display = function(value)
  return "Market Participant Location Id: "..value
end

-- Dissect: Market Participant Location Id
finra_otc_bbds_dfi_v2018_1a.market_participant_location_id.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.market_participant_location_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.market_participant_location_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.market_participant_location_id, range, value, display)

  return offset + length, value
end

-- Market Participant Identifier
finra_otc_bbds_dfi_v2018_1a.market_participant_identifier = {}

-- Size Of: Market Participant Identifier
finra_otc_bbds_dfi_v2018_1a.market_participant_identifier.size = 1

-- Display: Market Participant Identifier
finra_otc_bbds_dfi_v2018_1a.market_participant_identifier.display = function(value)
  return "Market Participant Identifier: "..value
end

-- Dissect: Market Participant Identifier
finra_otc_bbds_dfi_v2018_1a.market_participant_identifier.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.market_participant_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.market_participant_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.market_participant_identifier, range, value, display)

  return offset + length, value
end

-- Otcbb Type
finra_otc_bbds_dfi_v2018_1a.otcbb_type = {}

-- Size Of: Otcbb Type
finra_otc_bbds_dfi_v2018_1a.otcbb_type.size = 1

-- Display: Otcbb Type
finra_otc_bbds_dfi_v2018_1a.otcbb_type.display = function(value)
  return "Otcbb Type: "..value
end

-- Dissect: Otcbb Type
finra_otc_bbds_dfi_v2018_1a.otcbb_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.otcbb_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.otcbb_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.otcbb_type, range, value, display)

  return offset + length, value
end

-- Otcbb Symbol
finra_otc_bbds_dfi_v2018_1a.otcbb_symbol = {}

-- Size Of: Otcbb Symbol
finra_otc_bbds_dfi_v2018_1a.otcbb_symbol.size = 11

-- Display: Otcbb Symbol
finra_otc_bbds_dfi_v2018_1a.otcbb_symbol.display = function(value)
  return "Otcbb Symbol: "..value
end

-- Dissect: Otcbb Symbol
finra_otc_bbds_dfi_v2018_1a.otcbb_symbol.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.otcbb_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.otcbb_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.otcbb_symbol, range, value, display)

  return offset + length, value
end

-- Market Participant Quote Update Message
finra_otc_bbds_dfi_v2018_1a.market_participant_quote_update_message = {}

-- Calculate size of: Market Participant Quote Update Message
finra_otc_bbds_dfi_v2018_1a.market_participant_quote_update_message.size = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a.otcbb_symbol.size

  index = index + finra_otc_bbds_dfi_v2018_1a.otcbb_type.size

  index = index + finra_otc_bbds_dfi_v2018_1a.market_participant_identifier.size

  index = index + finra_otc_bbds_dfi_v2018_1a.market_participant_location_id.size

  index = index + finra_otc_bbds_dfi_v2018_1a.market_participant_status.size

  index = index + finra_otc_bbds_dfi_v2018_1a.market_participant_quote_condition.size

  index = index + finra_otc_bbds_dfi_v2018_1a.reserved.size

  index = index + finra_otc_bbds_dfi_v2018_1a.wanted_indicator.size

  index = index + finra_otc_bbds_dfi_v2018_1a.unsolicited_indicator.size

  index = index + finra_otc_bbds_dfi_v2018_1a.bid_price_denominator.size

  index = index + finra_otc_bbds_dfi_v2018_1a.bid_price.size

  index = index + finra_otc_bbds_dfi_v2018_1a.bid_size.size

  index = index + finra_otc_bbds_dfi_v2018_1a.ask_price_denominator.size

  index = index + finra_otc_bbds_dfi_v2018_1a.ask_price.size

  index = index + finra_otc_bbds_dfi_v2018_1a.ask_size.size

  index = index + finra_otc_bbds_dfi_v2018_1a.currency.size

  index = index + finra_otc_bbds_dfi_v2018_1a.inside_appendage_indicator.size

  local inside_appendage_indicator = buffer(offset + index - 1, 1):string()

  if inside_appendage_indicator == "3" then
    index = index + finra_otc_bbds_dfi_v2018_1a.inside_appendage.size

  end

  return index
end

-- Display: Market Participant Quote Update Message
finra_otc_bbds_dfi_v2018_1a.market_participant_quote_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Participant Quote Update Message
finra_otc_bbds_dfi_v2018_1a.market_participant_quote_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Otcbb Symbol: 11 Byte Ascii String
  index, otcbb_symbol = finra_otc_bbds_dfi_v2018_1a.otcbb_symbol.dissect(buffer, index, packet, parent)

  -- Otcbb Type: 1 Byte Ascii String
  index, otcbb_type = finra_otc_bbds_dfi_v2018_1a.otcbb_type.dissect(buffer, index, packet, parent)

  -- Market Participant Identifier: 1 Byte Ascii String
  index, market_participant_identifier = finra_otc_bbds_dfi_v2018_1a.market_participant_identifier.dissect(buffer, index, packet, parent)

  -- Market Participant Location Id: 1 Byte Ascii String
  index, market_participant_location_id = finra_otc_bbds_dfi_v2018_1a.market_participant_location_id.dissect(buffer, index, packet, parent)

  -- Market Participant Status: 1 Byte Ascii String Enum with 5 values
  index, market_participant_status = finra_otc_bbds_dfi_v2018_1a.market_participant_status.dissect(buffer, index, packet, parent)

  -- Market Participant Quote Condition: 1 Byte Ascii String Enum with 9 values
  index, market_participant_quote_condition = finra_otc_bbds_dfi_v2018_1a.market_participant_quote_condition.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte Ascii String
  index, reserved = finra_otc_bbds_dfi_v2018_1a.reserved.dissect(buffer, index, packet, parent)

  -- Wanted Indicator: 1 Byte Ascii String
  index, wanted_indicator = finra_otc_bbds_dfi_v2018_1a.wanted_indicator.dissect(buffer, index, packet, parent)

  -- Unsolicited Indicator: 1 Byte Ascii String Enum with 4 values
  index, unsolicited_indicator = finra_otc_bbds_dfi_v2018_1a.unsolicited_indicator.dissect(buffer, index, packet, parent)

  -- Bid Price Denominator: 1 Byte Ascii String
  index, bid_price_denominator = finra_otc_bbds_dfi_v2018_1a.bid_price_denominator.dissect(buffer, index, packet, parent)

  -- Bid Price: 12 Byte Ascii String
  index, bid_price = finra_otc_bbds_dfi_v2018_1a.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: 7 Byte Ascii String
  index, bid_size = finra_otc_bbds_dfi_v2018_1a.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Denominator: 1 Byte Ascii String
  index, ask_price_denominator = finra_otc_bbds_dfi_v2018_1a.ask_price_denominator.dissect(buffer, index, packet, parent)

  -- Ask Price: 12 Byte Ascii String
  index, ask_price = finra_otc_bbds_dfi_v2018_1a.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: 7 Byte Ascii String
  index, ask_size = finra_otc_bbds_dfi_v2018_1a.ask_size.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = finra_otc_bbds_dfi_v2018_1a.currency.dissect(buffer, index, packet, parent)

  -- Inside Appendage Indicator: 1 Byte Ascii String Enum with 3 values
  index, inside_appendage_indicator = finra_otc_bbds_dfi_v2018_1a.inside_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Inside Appendage
  local inside_appendage = nil

  local inside_appendage_exists = inside_appendage_indicator == "3"

  if inside_appendage_exists then
    index, inside_appendage = finra_otc_bbds_dfi_v2018_1a.inside_appendage.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Market Participant Quote Update Message
finra_otc_bbds_dfi_v2018_1a.market_participant_quote_update_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.market_participant_quote_update_message then
    local length = finra_otc_bbds_dfi_v2018_1a.market_participant_quote_update_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a.market_participant_quote_update_message.display(buffer, packet, parent)
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.market_participant_quote_update_message, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a.market_participant_quote_update_message.fields(buffer, offset, packet, parent)
end

-- Quotation Payload
finra_otc_bbds_dfi_v2018_1a.quotation_payload = {}

-- Calculate runtime size of: Quotation Payload
finra_otc_bbds_dfi_v2018_1a.quotation_payload.size = function(buffer, offset, quotation_message_type)
  -- Size of Market Participant Quote Update Message
  if quotation_message_type == "1" then
    return finra_otc_bbds_dfi_v2018_1a.market_participant_quote_update_message.size(buffer, offset)
  end

  return 0
end

-- Display: Quotation Payload
finra_otc_bbds_dfi_v2018_1a.quotation_payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Quotation Payload
finra_otc_bbds_dfi_v2018_1a.quotation_payload.branches = function(buffer, offset, packet, parent, quotation_message_type)
  -- Dissect Market Participant Quote Update Message
  if quotation_message_type == "1" then
    return finra_otc_bbds_dfi_v2018_1a.market_participant_quote_update_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Quotation Payload
finra_otc_bbds_dfi_v2018_1a.quotation_payload.dissect = function(buffer, offset, packet, parent, quotation_message_type)
  if not show.quotation_payload then
    return finra_otc_bbds_dfi_v2018_1a.quotation_payload.branches(buffer, offset, packet, parent, quotation_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_otc_bbds_dfi_v2018_1a.quotation_payload.size(buffer, offset, quotation_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_otc_bbds_dfi_v2018_1a.quotation_payload.display(buffer, packet, parent)
  local element = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.quotation_payload, range, display)

  return finra_otc_bbds_dfi_v2018_1a.quotation_payload.branches(buffer, offset, packet, parent, quotation_message_type)
end

-- Quotation Message Type
finra_otc_bbds_dfi_v2018_1a.quotation_message_type = {}

-- Size Of: Quotation Message Type
finra_otc_bbds_dfi_v2018_1a.quotation_message_type.size = 1

-- Display: Quotation Message Type
finra_otc_bbds_dfi_v2018_1a.quotation_message_type.display = function(value)
  if value == "1" then
    return "Quotation Message Type: Market Participant Quote Update Message (1)"
  end

  return "Quotation Message Type: Unknown("..value..")"
end

-- Dissect: Quotation Message Type
finra_otc_bbds_dfi_v2018_1a.quotation_message_type.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.quotation_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.quotation_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.quotation_message_type, range, value, display)

  return offset + length, value
end

-- Quotation
finra_otc_bbds_dfi_v2018_1a.quotation = {}

-- Calculate size of: Quotation
finra_otc_bbds_dfi_v2018_1a.quotation.size = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a.quotation_message_type.size

  -- Calculate runtime size of Quotation Payload field
  local quotation_payload_offset = offset + index
  local quotation_payload_type = buffer(quotation_payload_offset - 1, 1):string()
  index = index + finra_otc_bbds_dfi_v2018_1a.quotation_payload.size(buffer, quotation_payload_offset, quotation_payload_type)

  return index
end

-- Display: Quotation
finra_otc_bbds_dfi_v2018_1a.quotation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotation
finra_otc_bbds_dfi_v2018_1a.quotation.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quotation Message Type: 1 Byte Ascii String Enum with 1 values
  index, quotation_message_type = finra_otc_bbds_dfi_v2018_1a.quotation_message_type.dissect(buffer, index, packet, parent)

  -- Quotation Payload: Runtime Type with 1 branches
  index = finra_otc_bbds_dfi_v2018_1a.quotation_payload.dissect(buffer, index, packet, parent, quotation_message_type)

  return index
end

-- Dissect: Quotation
finra_otc_bbds_dfi_v2018_1a.quotation.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quotation then
    local length = finra_otc_bbds_dfi_v2018_1a.quotation.size(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a.quotation.display(buffer, packet, parent)
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.quotation, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a.quotation.fields(buffer, offset, packet, parent)
end

-- Payload
finra_otc_bbds_dfi_v2018_1a.payload = {}

-- Calculate runtime size of: Payload
finra_otc_bbds_dfi_v2018_1a.payload.size = function(buffer, offset, message_category)
  -- Size of Quotation
  if message_category == "Q" then
    return finra_otc_bbds_dfi_v2018_1a.quotation.size(buffer, offset)
  end
  -- Size of Administrative
  if message_category == "A" then
    return finra_otc_bbds_dfi_v2018_1a.administrative.size(buffer, offset)
  end
  -- Size of Control
  if message_category == "C" then
    return finra_otc_bbds_dfi_v2018_1a.control.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
finra_otc_bbds_dfi_v2018_1a.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
finra_otc_bbds_dfi_v2018_1a.payload.branches = function(buffer, offset, packet, parent, message_category)
  -- Dissect Quotation
  if message_category == "Q" then
    return finra_otc_bbds_dfi_v2018_1a.quotation.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Administrative
  if message_category == "A" then
    return finra_otc_bbds_dfi_v2018_1a.administrative.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control
  if message_category == "C" then
    return finra_otc_bbds_dfi_v2018_1a.control.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
finra_otc_bbds_dfi_v2018_1a.payload.dissect = function(buffer, offset, packet, parent, message_category)
  if not show.payload then
    return finra_otc_bbds_dfi_v2018_1a.payload.branches(buffer, offset, packet, parent, message_category)
  end

  -- Calculate size and check that branch is not empty
  local size = finra_otc_bbds_dfi_v2018_1a.payload.size(buffer, offset, message_category)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = finra_otc_bbds_dfi_v2018_1a.payload.display(buffer, packet, parent)
  local element = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.payload, range, display)

  return finra_otc_bbds_dfi_v2018_1a.payload.branches(buffer, offset, packet, parent, message_category)
end

-- Message Category
finra_otc_bbds_dfi_v2018_1a.message_category = {}

-- Size Of: Message Category
finra_otc_bbds_dfi_v2018_1a.message_category.size = 1

-- Display: Message Category
finra_otc_bbds_dfi_v2018_1a.message_category.display = function(value)
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
finra_otc_bbds_dfi_v2018_1a.message_category.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = finra_otc_bbds_dfi_v2018_1a.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message
finra_otc_bbds_dfi_v2018_1a.message = {}

-- Calculate size of: Message
finra_otc_bbds_dfi_v2018_1a.message.size = function(buffer, offset)
  local index = 0

  index = index + finra_otc_bbds_dfi_v2018_1a.message_category.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + finra_otc_bbds_dfi_v2018_1a.payload.size(buffer, payload_offset, payload_type)

  index = index + finra_otc_bbds_dfi_v2018_1a.message_separator.size

  return index
end

-- Display: Message
finra_otc_bbds_dfi_v2018_1a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
finra_otc_bbds_dfi_v2018_1a.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Category: 1 Byte Ascii String Enum with 3 values
  index, message_category = finra_otc_bbds_dfi_v2018_1a.message_category.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 3 branches
  index = finra_otc_bbds_dfi_v2018_1a.payload.dissect(buffer, index, packet, parent, message_category)

  -- Message Separator: 1 Byte Unsigned Fixed Width Integer
  index, message_separator = finra_otc_bbds_dfi_v2018_1a.message_separator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
finra_otc_bbds_dfi_v2018_1a.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = finra_otc_bbds_dfi_v2018_1a.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = finra_otc_bbds_dfi_v2018_1a.message.display(buffer, packet, parent)
    parent = parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.message, range, display)
  end

  return finra_otc_bbds_dfi_v2018_1a.message.fields(buffer, offset, packet, parent)
end

-- Block Soh
finra_otc_bbds_dfi_v2018_1a.block_soh = {}

-- Size Of: Block Soh
finra_otc_bbds_dfi_v2018_1a.block_soh.size = 1

-- Display: Block Soh
finra_otc_bbds_dfi_v2018_1a.block_soh.display = function(value)
  return "Block Soh: "..value
end

-- Dissect: Block Soh
finra_otc_bbds_dfi_v2018_1a.block_soh.dissect = function(buffer, offset, packet, parent)
  local length = finra_otc_bbds_dfi_v2018_1a.block_soh.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = finra_otc_bbds_dfi_v2018_1a.block_soh.display(value, buffer, offset, packet, parent)

  parent:add(omi_finra_otc_bbds_dfi_v2018_1a.fields.block_soh, range, value, display)

  return offset + length, value
end

-- Packet
finra_otc_bbds_dfi_v2018_1a.packet = {}

-- Dissect Packet
finra_otc_bbds_dfi_v2018_1a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Block Soh: 1 Byte Unsigned Fixed Width Integer
  index, block_soh = finra_otc_bbds_dfi_v2018_1a.block_soh.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index, message = finra_otc_bbds_dfi_v2018_1a.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_finra_otc_bbds_dfi_v2018_1a.init()
end

-- Dissector for Finra Otc Bbds Dfi 2018.1A
function omi_finra_otc_bbds_dfi_v2018_1a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_finra_otc_bbds_dfi_v2018_1a.name

  -- Dissect protocol
  local protocol = parent:add(omi_finra_otc_bbds_dfi_v2018_1a, buffer(), omi_finra_otc_bbds_dfi_v2018_1a.description, "("..buffer:len().." Bytes)")
  return finra_otc_bbds_dfi_v2018_1a.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_finra_otc_bbds_dfi_v2018_1a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
finra_otc_bbds_dfi_v2018_1a.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Finra Otc Bbds Dfi 2018.1A
local function omi_finra_otc_bbds_dfi_v2018_1a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not finra_otc_bbds_dfi_v2018_1a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_finra_otc_bbds_dfi_v2018_1a
  omi_finra_otc_bbds_dfi_v2018_1a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Finra Otc Bbds Dfi 2018.1A
omi_finra_otc_bbds_dfi_v2018_1a:register_heuristic("udp", omi_finra_otc_bbds_dfi_v2018_1a_heuristic)

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
