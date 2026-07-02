-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Utp Input Utp 4.0 Protocol
local omi_nasdaq_utp_input_utp_v4_0 = Proto("Omi.Nasdaq.Utp.Input.Utp.v4.0", "Nasdaq Utp Input Utp 4.0")

-- Protocol table
local nasdaq_utp_input_utp_v4_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Utp Input Utp 4.0 Fields
omi_nasdaq_utp_input_utp_v4_0.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.utp.input.utp.v4.0.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.utp.input.utp.v4.0.acceptedsession", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.action = ProtoField.new("Action", "nasdaq.utp.input.utp.v4.0.action", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.action_sequence = ProtoField.new("Action Sequence", "nasdaq.utp.input.utp.v4.0.actionsequence", ftypes.UINT32)
omi_nasdaq_utp_input_utp_v4_0.fields.action_time = ProtoField.new("Action Time", "nasdaq.utp.input.utp.v4.0.actiontime", ftypes.UINT64)
omi_nasdaq_utp_input_utp_v4_0.fields.ask_long_8 = ProtoField.new("Ask Long 8", "nasdaq.utp.input.utp.v4.0.asklong8", ftypes.UINT64)
omi_nasdaq_utp_input_utp_v4_0.fields.ask_short_2 = ProtoField.new("Ask Short 2", "nasdaq.utp.input.utp.v4.0.askshort2", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.ask_size_int_4 = ProtoField.new("Ask Size Int 4", "nasdaq.utp.input.utp.v4.0.asksizeint4", ftypes.UINT32)
omi_nasdaq_utp_input_utp_v4_0.fields.ask_size_short_2 = ProtoField.new("Ask Size Short 2", "nasdaq.utp.input.utp.v4.0.asksizeshort2", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.bbo_ask = ProtoField.new("Bbo Ask", "nasdaq.utp.input.utp.v4.0.bboask", ftypes.UINT64)
omi_nasdaq_utp_input_utp_v4_0.fields.bbo_ask_mpid = ProtoField.new("Bbo Ask Mpid", "nasdaq.utp.input.utp.v4.0.bboaskmpid", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.bbo_ask_price = ProtoField.new("Bbo Ask Price", "nasdaq.utp.input.utp.v4.0.bboaskprice", ftypes.DOUBLE)
omi_nasdaq_utp_input_utp_v4_0.fields.bbo_ask_size = ProtoField.new("Bbo Ask Size", "nasdaq.utp.input.utp.v4.0.bboasksize", ftypes.UINT32)
omi_nasdaq_utp_input_utp_v4_0.fields.bbo_bid = ProtoField.new("Bbo Bid", "nasdaq.utp.input.utp.v4.0.bbobid", ftypes.UINT64)
omi_nasdaq_utp_input_utp_v4_0.fields.bbo_bid_mpid = ProtoField.new("Bbo Bid Mpid", "nasdaq.utp.input.utp.v4.0.bbobidmpid", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.bbo_bid_price = ProtoField.new("Bbo Bid Price", "nasdaq.utp.input.utp.v4.0.bbobidprice", ftypes.DOUBLE)
omi_nasdaq_utp_input_utp_v4_0.fields.bbo_bid_size = ProtoField.new("Bbo Bid Size", "nasdaq.utp.input.utp.v4.0.bbobidsize", ftypes.UINT32)
omi_nasdaq_utp_input_utp_v4_0.fields.bbo_cond = ProtoField.new("Bbo Cond", "nasdaq.utp.input.utp.v4.0.bbocond", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.bbo_indicator = ProtoField.new("Bbo Indicator", "nasdaq.utp.input.utp.v4.0.bboindicator", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.bid_long_8 = ProtoField.new("Bid Long 8", "nasdaq.utp.input.utp.v4.0.bidlong8", ftypes.UINT64)
omi_nasdaq_utp_input_utp_v4_0.fields.bid_short_2 = ProtoField.new("Bid Short 2", "nasdaq.utp.input.utp.v4.0.bidshort2", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.bid_size_int_4 = ProtoField.new("Bid Size Int 4", "nasdaq.utp.input.utp.v4.0.bidsizeint4", ftypes.UINT32)
omi_nasdaq_utp_input_utp_v4_0.fields.bid_size_short_2 = ProtoField.new("Bid Size Short 2", "nasdaq.utp.input.utp.v4.0.bidsizeshort2", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.cancel_type = ProtoField.new("Cancel Type", "nasdaq.utp.input.utp.v4.0.canceltype", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.collar_down_price = ProtoField.new("Collar Down Price", "nasdaq.utp.input.utp.v4.0.collardownprice", ftypes.DOUBLE)
omi_nasdaq_utp_input_utp_v4_0.fields.collar_extension = ProtoField.new("Collar Extension", "nasdaq.utp.input.utp.v4.0.collarextension", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.collar_reference_price = ProtoField.new("Collar Reference Price", "nasdaq.utp.input.utp.v4.0.collarreferenceprice", ftypes.DOUBLE)
omi_nasdaq_utp_input_utp_v4_0.fields.collar_up_price = ProtoField.new("Collar Up Price", "nasdaq.utp.input.utp.v4.0.collarupprice", ftypes.DOUBLE)
omi_nasdaq_utp_input_utp_v4_0.fields.cond = ProtoField.new("Cond", "nasdaq.utp.input.utp.v4.0.cond", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.feed_sequence = ProtoField.new("Feed Sequence", "nasdaq.utp.input.utp.v4.0.feedsequence", ftypes.UINT64)
omi_nasdaq_utp_input_utp_v4_0.fields.first_security = ProtoField.new("First Security", "nasdaq.utp.input.utp.v4.0.firstsecurity", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.inbound_administrative_messages_message = ProtoField.new("Inbound Administrative Messages Message", "nasdaq.utp.input.utp.v4.0.inboundadministrativemessagesmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.inbound_administrative_messages_message_type = ProtoField.new("Inbound Administrative Messages Message Type", "nasdaq.utp.input.utp.v4.0.inboundadministrativemessagesmessagetype", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.inbound_control_messages_message = ProtoField.new("Inbound Control Messages Message", "nasdaq.utp.input.utp.v4.0.inboundcontrolmessagesmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.inbound_control_messages_message_type = ProtoField.new("Inbound Control Messages Message Type", "nasdaq.utp.input.utp.v4.0.inboundcontrolmessagesmessagetype", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.inbound_quote_messages_message = ProtoField.new("Inbound Quote Messages Message", "nasdaq.utp.input.utp.v4.0.inboundquotemessagesmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.inbound_quote_messages_message_type = ProtoField.new("Inbound Quote Messages Message Type", "nasdaq.utp.input.utp.v4.0.inboundquotemessagesmessagetype", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.inbound_trade_messages_message = ProtoField.new("Inbound Trade Messages Message", "nasdaq.utp.input.utp.v4.0.inboundtrademessagesmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.inbound_trade_messages_message_type = ProtoField.new("Inbound Trade Messages Message Type", "nasdaq.utp.input.utp.v4.0.inboundtrademessagesmessagetype", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.last_security = ProtoField.new("Last Security", "nasdaq.utp.input.utp.v4.0.lastsecurity", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.message_category = ProtoField.new("Message Category", "nasdaq.utp.input.utp.v4.0.messagecategory", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.utp.input.utp.v4.0.messageheader", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.mpid = ProtoField.new("Mpid", "nasdaq.utp.input.utp.v4.0.mpid", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.new_price = ProtoField.new("New Price", "nasdaq.utp.input.utp.v4.0.newprice", ftypes.DOUBLE)
omi_nasdaq_utp_input_utp_v4_0.fields.new_ssday = ProtoField.new("New Ssday", "nasdaq.utp.input.utp.v4.0.newssday", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.new_trcond = ProtoField.new("New Trcond", "nasdaq.utp.input.utp.v4.0.newtrcond", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.new_tt_exempt = ProtoField.new("New Tt Exempt", "nasdaq.utp.input.utp.v4.0.newttexempt", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.new_volume_int_4 = ProtoField.new("New Volume Int 4", "nasdaq.utp.input.utp.v4.0.newvolumeint4", ftypes.UINT32)
omi_nasdaq_utp_input_utp_v4_0.fields.new_volume_long_8 = ProtoField.new("New Volume Long 8", "nasdaq.utp.input.utp.v4.0.newvolumelong8", ftypes.DOUBLE)
omi_nasdaq_utp_input_utp_v4_0.fields.next_action_sequence = ProtoField.new("Next Action Sequence", "nasdaq.utp.input.utp.v4.0.nextactionsequence", ftypes.UINT32)
omi_nasdaq_utp_input_utp_v4_0.fields.next_trade_id = ProtoField.new("Next Trade Id", "nasdaq.utp.input.utp.v4.0.nexttradeid", ftypes.UINT32)
omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_ask_adf_form_attachment = ProtoField.new("Odd Lot Ask Adf Form Attachment", "nasdaq.utp.input.utp.v4.0.oddlotaskadfformattachment", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_ask_long_form_attachment = ProtoField.new("Odd Lot Ask Long Form Attachment", "nasdaq.utp.input.utp.v4.0.oddlotasklongformattachment", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_ask_short_form_attachment = ProtoField.new("Odd Lot Ask Short Form Attachment", "nasdaq.utp.input.utp.v4.0.oddlotaskshortformattachment", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_bid_adf_form_attachment = ProtoField.new("Odd Lot Bid Adf Form Attachment", "nasdaq.utp.input.utp.v4.0.oddlotbidadfformattachment", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_bid_long_form_attachment = ProtoField.new("Odd Lot Bid Long Form Attachment", "nasdaq.utp.input.utp.v4.0.oddlotbidlongformattachment", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_bid_short_form_attachment = ProtoField.new("Odd Lot Bid Short Form Attachment", "nasdaq.utp.input.utp.v4.0.oddlotbidshortformattachment", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.ol_ask_level_count = ProtoField.new("Ol Ask Level Count", "nasdaq.utp.input.utp.v4.0.olasklevelcount", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.ol_attachmen_type = ProtoField.new("Ol Attachmen Type", "nasdaq.utp.input.utp.v4.0.olattachmentype", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.ol_attachment_count = ProtoField.new("Ol Attachment Count", "nasdaq.utp.input.utp.v4.0.olattachmentcount", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.ol_bid_level_count = ProtoField.new("Ol Bid Level Count", "nasdaq.utp.input.utp.v4.0.olbidlevelcount", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.ol_price_long_8 = ProtoField.new("Ol Price Long 8", "nasdaq.utp.input.utp.v4.0.olpricelong8", ftypes.DOUBLE)
omi_nasdaq_utp_input_utp_v4_0.fields.ol_price_short_2 = ProtoField.new("Ol Price Short 2", "nasdaq.utp.input.utp.v4.0.olpriceshort2", ftypes.DOUBLE)
omi_nasdaq_utp_input_utp_v4_0.fields.ol_size = ProtoField.new("Ol Size", "nasdaq.utp.input.utp.v4.0.olsize", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.orig = ProtoField.new("Orig", "nasdaq.utp.input.utp.v4.0.orig", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.orig_price = ProtoField.new("Orig Price", "nasdaq.utp.input.utp.v4.0.origprice", ftypes.DOUBLE)
omi_nasdaq_utp_input_utp_v4_0.fields.orig_side = ProtoField.new("Orig Side", "nasdaq.utp.input.utp.v4.0.origside", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.orig_ssday = ProtoField.new("Orig Ssday", "nasdaq.utp.input.utp.v4.0.origssday", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.orig_trade_id = ProtoField.new("Orig Trade Id", "nasdaq.utp.input.utp.v4.0.origtradeid", ftypes.UINT32)
omi_nasdaq_utp_input_utp_v4_0.fields.orig_trcond = ProtoField.new("Orig Trcond", "nasdaq.utp.input.utp.v4.0.origtrcond", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.orig_tt_exempt = ProtoField.new("Orig Tt Exempt", "nasdaq.utp.input.utp.v4.0.origttexempt", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.orig_volume_int_4 = ProtoField.new("Orig Volume Int 4", "nasdaq.utp.input.utp.v4.0.origvolumeint4", ftypes.UINT32)
omi_nasdaq_utp_input_utp_v4_0.fields.orig_volume_long_8 = ProtoField.new("Orig Volume Long 8", "nasdaq.utp.input.utp.v4.0.origvolumelong8", ftypes.DOUBLE)
omi_nasdaq_utp_input_utp_v4_0.fields.packet = ProtoField.new("Packet", "nasdaq.utp.input.utp.v4.0.packet", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.utp.input.utp.v4.0.packetlength", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.packet_type = ProtoField.new("Packet Type", "nasdaq.utp.input.utp.v4.0.packettype", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.part_token = ProtoField.new("Part Token", "nasdaq.utp.input.utp.v4.0.parttoken", ftypes.UINT64)
omi_nasdaq_utp_input_utp_v4_0.fields.password = ProtoField.new("Password", "nasdaq.utp.input.utp.v4.0.password", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.price = ProtoField.new("Price", "nasdaq.utp.input.utp.v4.0.price", ftypes.DOUBLE)
omi_nasdaq_utp_input_utp_v4_0.fields.reason = ProtoField.new("Reason", "nasdaq.utp.input.utp.v4.0.reason", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.reject_code = ProtoField.new("Reject Code", "nasdaq.utp.input.utp.v4.0.rejectcode", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.utp.input.utp.v4.0.rejectreasoncode", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.utp.input.utp.v4.0.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.utp.input.utp.v4.0.requestedsession", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.return_administrative_messages_message = ProtoField.new("Return Administrative Messages Message", "nasdaq.utp.input.utp.v4.0.returnadministrativemessagesmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.return_administrative_messages_message_type = ProtoField.new("Return Administrative Messages Message Type", "nasdaq.utp.input.utp.v4.0.returnadministrativemessagesmessagetype", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.return_control_messages_message = ProtoField.new("Return Control Messages Message", "nasdaq.utp.input.utp.v4.0.returncontrolmessagesmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.return_control_messages_message_type = ProtoField.new("Return Control Messages Message Type", "nasdaq.utp.input.utp.v4.0.returncontrolmessagesmessagetype", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.reversal = ProtoField.new("Reversal", "nasdaq.utp.input.utp.v4.0.reversal", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.rii = ProtoField.new("Rii", "nasdaq.utp.input.utp.v4.0.rii", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.side = ProtoField.new("Side", "nasdaq.utp.input.utp.v4.0.side", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.sip_state = ProtoField.new("Sip State", "nasdaq.utp.input.utp.v4.0.sipstate", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.sip_time = ProtoField.new("Sip Time", "nasdaq.utp.input.utp.v4.0.siptime", ftypes.UINT64)
omi_nasdaq_utp_input_utp_v4_0.fields.ssday = ProtoField.new("Ssday", "nasdaq.utp.input.utp.v4.0.ssday", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.symbol_byte_11 = ProtoField.new("Symbol Byte 11", "nasdaq.utp.input.utp.v4.0.symbolbyte11", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.symbol_byte_5 = ProtoField.new("Symbol Byte 5", "nasdaq.utp.input.utp.v4.0.symbolbyte5", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.symbol_state = ProtoField.new("Symbol State", "nasdaq.utp.input.utp.v4.0.symbolstate", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.syntax_violation = ProtoField.new("Syntax Violation", "nasdaq.utp.input.utp.v4.0.syntaxviolation", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.tcp_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.utp.input.utp.v4.0.tcppacketheader", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.text = ProtoField.new("Text", "nasdaq.utp.input.utp.v4.0.text", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.text_len = ProtoField.new("Text Len", "nasdaq.utp.input.utp.v4.0.textlen", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.timestamp_1 = ProtoField.new("Timestamp 1", "nasdaq.utp.input.utp.v4.0.timestamp1", ftypes.UINT64)
omi_nasdaq_utp_input_utp_v4_0.fields.timestamp_2 = ProtoField.new("Timestamp 2", "nasdaq.utp.input.utp.v4.0.timestamp2", ftypes.UINT64)
omi_nasdaq_utp_input_utp_v4_0.fields.trade_id = ProtoField.new("Trade Id", "nasdaq.utp.input.utp.v4.0.tradeid", ftypes.UINT32)
omi_nasdaq_utp_input_utp_v4_0.fields.trade_time = ProtoField.new("Trade Time", "nasdaq.utp.input.utp.v4.0.tradetime", ftypes.UINT64)
omi_nasdaq_utp_input_utp_v4_0.fields.trcond = ProtoField.new("Trcond", "nasdaq.utp.input.utp.v4.0.trcond", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.tt_exempt = ProtoField.new("Tt Exempt", "nasdaq.utp.input.utp.v4.0.ttexempt", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.username = ProtoField.new("Username", "nasdaq.utp.input.utp.v4.0.username", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.version = ProtoField.new("Version", "nasdaq.utp.input.utp.v4.0.version", ftypes.UINT8)
omi_nasdaq_utp_input_utp_v4_0.fields.volume_int_4 = ProtoField.new("Volume Int 4", "nasdaq.utp.input.utp.v4.0.volumeint4", ftypes.UINT32)
omi_nasdaq_utp_input_utp_v4_0.fields.volume_long_8 = ProtoField.new("Volume Long 8", "nasdaq.utp.input.utp.v4.0.volumelong8", ftypes.DOUBLE)
omi_nasdaq_utp_input_utp_v4_0.fields.warning_code = ProtoField.new("Warning Code", "nasdaq.utp.input.utp.v4.0.warningcode", ftypes.UINT16)

-- Nasdaq Utp Utp Input 4.0 Application Messages
omi_nasdaq_utp_input_utp_v4_0.fields.as_of_trade_report_message = ProtoField.new("As Of Trade Report Message", "nasdaq.utp.input.utp.v4.0.asoftradereportmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.auction_collar_message = ProtoField.new("Auction Collar Message", "nasdaq.utp.input.utp.v4.0.auctioncollarmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.end_of_day_message = ProtoField.new("End Of Day Message", "nasdaq.utp.input.utp.v4.0.endofdaymessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.end_of_participant_reporting_message = ProtoField.new("End Of Participant Reporting Message", "nasdaq.utp.input.utp.v4.0.endofparticipantreportingmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.exchange_combined_quote_message_long_form_message = ProtoField.new("Exchange Combined Quote Message Long Form Message", "nasdaq.utp.input.utp.v4.0.exchangecombinedquotemessagelongformmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.exchange_combined_quote_message_short_form_message = ProtoField.new("Exchange Combined Quote Message Short Form Message", "nasdaq.utp.input.utp.v4.0.exchangecombinedquotemessageshortformmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.exchange_odd_lot_quote_message_long_form_message = ProtoField.new("Exchange Odd Lot Quote Message Long Form Message", "nasdaq.utp.input.utp.v4.0.exchangeoddlotquotemessagelongformmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.exchange_odd_lot_quote_message_short_form_message = ProtoField.new("Exchange Odd Lot Quote Message Short Form Message", "nasdaq.utp.input.utp.v4.0.exchangeoddlotquotemessageshortformmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.finra_adf_combined_quote_message_with_bbo = ProtoField.new("Finra Adf Combined Quote Message With Bbo", "nasdaq.utp.input.utp.v4.0.finraadfcombinedquotemessagewithbbo", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.finra_adf_odd_lot_quotation_message = ProtoField.new("Finra Adf Odd Lot Quotation Message", "nasdaq.utp.input.utp.v4.0.finraadfoddlotquotationmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.finra_protected_quote_message_with_bbo_info_message = ProtoField.new("Finra Protected Quote Message With Bbo Info Message", "nasdaq.utp.input.utp.v4.0.finraprotectedquotemessagewithbboinfomessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.finra_protected_quote_message_without_bbo_info_message = ProtoField.new("Finra Protected Quote Message Without Bbo Info Message", "nasdaq.utp.input.utp.v4.0.finraprotectedquotemessagewithoutbboinfomessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.fractional_as_of_trade_report_message = ProtoField.new("Fractional As Of Trade Report Message", "nasdaq.utp.input.utp.v4.0.fractionalasoftradereportmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.fractional_regular_trade_report_message = ProtoField.new("Fractional Regular Trade Report Message", "nasdaq.utp.input.utp.v4.0.fractionalregulartradereportmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.fractional_trade_cancel_error_message = ProtoField.new("Fractional Trade Cancel Error Message", "nasdaq.utp.input.utp.v4.0.fractionaltradecancelerrormessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.fractional_trade_correction_message = ProtoField.new("Fractional Trade Correction Message", "nasdaq.utp.input.utp.v4.0.fractionaltradecorrectionmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.general_administrative_message = ProtoField.new("General Administrative Message", "nasdaq.utp.input.utp.v4.0.generaladministrativemessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.market_center_mass_trading_action_message = ProtoField.new("Market Center Mass Trading Action Message", "nasdaq.utp.input.utp.v4.0.marketcentermasstradingactionmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.market_center_trading_action_message = ProtoField.new("Market Center Trading Action Message", "nasdaq.utp.input.utp.v4.0.marketcentertradingactionmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.market_closed_message = ProtoField.new("Market Closed Message", "nasdaq.utp.input.utp.v4.0.marketclosedmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.market_open_message = ProtoField.new("Market Open Message", "nasdaq.utp.input.utp.v4.0.marketopenmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.opening_reference_midpoint_price_message = ProtoField.new("Opening Reference Midpoint Price Message", "nasdaq.utp.input.utp.v4.0.openingreferencemidpointpricemessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.participant_input_warning_message = ProtoField.new("Participant Input Warning Message", "nasdaq.utp.input.utp.v4.0.participantinputwarningmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.protected_exchange_quote_message_longform_message = ProtoField.new("Protected Exchange Quote Message Longform Message", "nasdaq.utp.input.utp.v4.0.protectedexchangequotemessagelongformmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.protected_exchange_quote_message_shortform_message = ProtoField.new("Protected Exchange Quote Message Shortform Message", "nasdaq.utp.input.utp.v4.0.protectedexchangequotemessageshortformmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.utp.input.utp.v4.0.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.regular_trade_report_message = ProtoField.new("Regular Trade Report Message", "nasdaq.utp.input.utp.v4.0.regulartradereportmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.reject_message = ProtoField.new("Reject Message", "nasdaq.utp.input.utp.v4.0.rejectmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.return_general_administrative_message = ProtoField.new("Return General Administrative Message", "nasdaq.utp.input.utp.v4.0.returngeneraladministrativemessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.return_market_center_trading_action_acknowledgement_message = ProtoField.new("Return Market Center Trading Action Acknowledgement Message", "nasdaq.utp.input.utp.v4.0.returnmarketcentertradingactionacknowledgementmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.return_market_closed_message = ProtoField.new("Return Market Closed Message", "nasdaq.utp.input.utp.v4.0.returnmarketclosedmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.return_market_open_message = ProtoField.new("Return Market Open Message", "nasdaq.utp.input.utp.v4.0.returnmarketopenmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.sequence_acknowledgement_message = ProtoField.new("Sequence Acknowledgement Message", "nasdaq.utp.input.utp.v4.0.sequenceacknowledgementmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.sequence_inquiry_message = ProtoField.new("Sequence Inquiry Message", "nasdaq.utp.input.utp.v4.0.sequenceinquirymessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.sequence_inquiry_response_message = ProtoField.new("Sequence Inquiry Response Message", "nasdaq.utp.input.utp.v4.0.sequenceinquiryresponsemessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.utp.input.utp.v4.0.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "nasdaq.utp.input.utp.v4.0.startofdaymessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.symbol_state_inquiry_message = ProtoField.new("Symbol State Inquiry Message", "nasdaq.utp.input.utp.v4.0.symbolstateinquirymessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.symbol_state_inquiry_response_message = ProtoField.new("Symbol State Inquiry Response Message", "nasdaq.utp.input.utp.v4.0.symbolstateinquiryresponsemessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.t_1_adjusted_closing_price_message = ProtoField.new("T 1 Adjusted Closing Price Message", "nasdaq.utp.input.utp.v4.0.t1adjustedclosingpricemessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "nasdaq.utp.input.utp.v4.0.tradecancelerrormessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nasdaq.utp.input.utp.v4.0.tradecorrectionmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.utp.input.utp.v4.0.tradingactionmessage", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.utp.input.utp.v4.0.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq Utp Utp Input 4.0 Session Messages
omi_nasdaq_utp_input_utp_v4_0.fields.client_heartbeat_packet = ProtoField.new("Client Heartbeat Packet", "nasdaq.utp.input.utp.v4.0.clientheartbeatpacket", ftypes.BYTES)
omi_nasdaq_utp_input_utp_v4_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.utp.input.utp.v4.0.debugpacket", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.end_of_session_packet = ProtoField.new("End Of Session Packet", "nasdaq.utp.input.utp.v4.0.endofsessionpacket", ftypes.BYTES)
omi_nasdaq_utp_input_utp_v4_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.utp.input.utp.v4.0.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.utp.input.utp.v4.0.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.utp.input.utp.v4.0.loginrequestpacket", ftypes.STRING)
omi_nasdaq_utp_input_utp_v4_0.fields.logout_request_packet = ProtoField.new("Logout Request Packet", "nasdaq.utp.input.utp.v4.0.logoutrequestpacket", ftypes.BYTES)
omi_nasdaq_utp_input_utp_v4_0.fields.server_heartbeat_packet = ProtoField.new("Server Heartbeat Packet", "nasdaq.utp.input.utp.v4.0.serverheartbeatpacket", ftypes.BYTES)

-- Nasdaq Utp Input Utp 4.0 generated fields
omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_ask_adf_form_attachment_index = ProtoField.new("Odd Lot Ask Adf Form Attachment Index", "nasdaq.utp.input.utp.v4.0.oddlotaskadfformattachmentindex", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_ask_long_form_attachment_index = ProtoField.new("Odd Lot Ask Long Form Attachment Index", "nasdaq.utp.input.utp.v4.0.oddlotasklongformattachmentindex", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_ask_short_form_attachment_index = ProtoField.new("Odd Lot Ask Short Form Attachment Index", "nasdaq.utp.input.utp.v4.0.oddlotaskshortformattachmentindex", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_bid_adf_form_attachment_index = ProtoField.new("Odd Lot Bid Adf Form Attachment Index", "nasdaq.utp.input.utp.v4.0.oddlotbidadfformattachmentindex", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_bid_long_form_attachment_index = ProtoField.new("Odd Lot Bid Long Form Attachment Index", "nasdaq.utp.input.utp.v4.0.oddlotbidlongformattachmentindex", ftypes.UINT16)
omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_bid_short_form_attachment_index = ProtoField.new("Odd Lot Bid Short Form Attachment Index", "nasdaq.utp.input.utp.v4.0.oddlotbidshortformattachmentindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq Utp Input Utp 4.0 Element Dissection Options
show.application_messages = true
show.session_messages = true
show.inbound_administrative_messages_message = true
show.inbound_control_messages_message = true
show.inbound_quote_messages_message = true
show.inbound_trade_messages_message = true
show.message_header = true
show.odd_lot_ask_adf_form_attachment = true
show.odd_lot_ask_long_form_attachment = true
show.odd_lot_ask_short_form_attachment = true
show.odd_lot_bid_adf_form_attachment = true
show.odd_lot_bid_long_form_attachment = true
show.odd_lot_bid_short_form_attachment = true
show.packet = true
show.return_administrative_messages_message = true
show.return_control_messages_message = true
show.tcp_packet_header = true
show.odd_lot_bid_short_form_attachment_index = true
show.odd_lot_ask_short_form_attachment_index = true
show.odd_lot_bid_long_form_attachment_index = true
show.odd_lot_ask_long_form_attachment_index = true
show.odd_lot_bid_adf_form_attachment_index = true
show.odd_lot_ask_adf_form_attachment_index = true

-- Register Nasdaq Utp Input Utp 4.0 Show Options
omi_nasdaq_utp_input_utp_v4_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_inbound_administrative_messages_message = Pref.bool("Show Inbound Administrative Messages Message", show.inbound_administrative_messages_message, "Parse and add Inbound Administrative Messages Message to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_inbound_control_messages_message = Pref.bool("Show Inbound Control Messages Message", show.inbound_control_messages_message, "Parse and add Inbound Control Messages Message to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_inbound_quote_messages_message = Pref.bool("Show Inbound Quote Messages Message", show.inbound_quote_messages_message, "Parse and add Inbound Quote Messages Message to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_inbound_trade_messages_message = Pref.bool("Show Inbound Trade Messages Message", show.inbound_trade_messages_message, "Parse and add Inbound Trade Messages Message to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_adf_form_attachment = Pref.bool("Show Odd Lot Ask Adf Form Attachment", show.odd_lot_ask_adf_form_attachment, "Parse and add Odd Lot Ask Adf Form Attachment to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_long_form_attachment = Pref.bool("Show Odd Lot Ask Long Form Attachment", show.odd_lot_ask_long_form_attachment, "Parse and add Odd Lot Ask Long Form Attachment to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_short_form_attachment = Pref.bool("Show Odd Lot Ask Short Form Attachment", show.odd_lot_ask_short_form_attachment, "Parse and add Odd Lot Ask Short Form Attachment to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_adf_form_attachment = Pref.bool("Show Odd Lot Bid Adf Form Attachment", show.odd_lot_bid_adf_form_attachment, "Parse and add Odd Lot Bid Adf Form Attachment to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_long_form_attachment = Pref.bool("Show Odd Lot Bid Long Form Attachment", show.odd_lot_bid_long_form_attachment, "Parse and add Odd Lot Bid Long Form Attachment to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_short_form_attachment = Pref.bool("Show Odd Lot Bid Short Form Attachment", show.odd_lot_bid_short_form_attachment, "Parse and add Odd Lot Bid Short Form Attachment to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_return_administrative_messages_message = Pref.bool("Show Return Administrative Messages Message", show.return_administrative_messages_message, "Parse and add Return Administrative Messages Message to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_return_control_messages_message = Pref.bool("Show Return Control Messages Message", show.return_control_messages_message, "Parse and add Return Control Messages Message to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_tcp_packet_header = Pref.bool("Show Tcp Packet Header", show.tcp_packet_header, "Parse and add Tcp Packet Header to protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_short_form_attachment_index = Pref.bool("Show Odd Lot Bid Short Form Attachment Index", show.odd_lot_bid_short_form_attachment_index, "Show generated odd lot bid short form attachment index in protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_short_form_attachment_index = Pref.bool("Show Odd Lot Ask Short Form Attachment Index", show.odd_lot_ask_short_form_attachment_index, "Show generated odd lot ask short form attachment index in protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_long_form_attachment_index = Pref.bool("Show Odd Lot Bid Long Form Attachment Index", show.odd_lot_bid_long_form_attachment_index, "Show generated odd lot bid long form attachment index in protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_long_form_attachment_index = Pref.bool("Show Odd Lot Ask Long Form Attachment Index", show.odd_lot_ask_long_form_attachment_index, "Show generated odd lot ask long form attachment index in protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_adf_form_attachment_index = Pref.bool("Show Odd Lot Bid Adf Form Attachment Index", show.odd_lot_bid_adf_form_attachment_index, "Show generated odd lot bid adf form attachment index in protocol tree")
omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_adf_form_attachment_index = Pref.bool("Show Odd Lot Ask Adf Form Attachment Index", show.odd_lot_ask_adf_form_attachment_index, "Show generated odd lot ask adf form attachment index in protocol tree")


-- Handle changed preferences
function omi_nasdaq_utp_input_utp_v4_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_utp_input_utp_v4_0.prefs.show_application_messages
  end
  if show.inbound_administrative_messages_message ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_inbound_administrative_messages_message then
    show.inbound_administrative_messages_message = omi_nasdaq_utp_input_utp_v4_0.prefs.show_inbound_administrative_messages_message
  end
  if show.inbound_control_messages_message ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_inbound_control_messages_message then
    show.inbound_control_messages_message = omi_nasdaq_utp_input_utp_v4_0.prefs.show_inbound_control_messages_message
  end
  if show.inbound_quote_messages_message ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_inbound_quote_messages_message then
    show.inbound_quote_messages_message = omi_nasdaq_utp_input_utp_v4_0.prefs.show_inbound_quote_messages_message
  end
  if show.inbound_trade_messages_message ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_inbound_trade_messages_message then
    show.inbound_trade_messages_message = omi_nasdaq_utp_input_utp_v4_0.prefs.show_inbound_trade_messages_message
  end
  if show.message_header ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_message_header then
    show.message_header = omi_nasdaq_utp_input_utp_v4_0.prefs.show_message_header
  end
  if show.odd_lot_ask_adf_form_attachment ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_adf_form_attachment then
    show.odd_lot_ask_adf_form_attachment = omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_adf_form_attachment
  end
  if show.odd_lot_ask_long_form_attachment ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_long_form_attachment then
    show.odd_lot_ask_long_form_attachment = omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_long_form_attachment
  end
  if show.odd_lot_ask_short_form_attachment ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_short_form_attachment then
    show.odd_lot_ask_short_form_attachment = omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_short_form_attachment
  end
  if show.odd_lot_bid_adf_form_attachment ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_adf_form_attachment then
    show.odd_lot_bid_adf_form_attachment = omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_adf_form_attachment
  end
  if show.odd_lot_bid_long_form_attachment ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_long_form_attachment then
    show.odd_lot_bid_long_form_attachment = omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_long_form_attachment
  end
  if show.odd_lot_bid_short_form_attachment ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_short_form_attachment then
    show.odd_lot_bid_short_form_attachment = omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_short_form_attachment
  end
  if show.packet ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_packet then
    show.packet = omi_nasdaq_utp_input_utp_v4_0.prefs.show_packet
  end
  if show.return_administrative_messages_message ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_return_administrative_messages_message then
    show.return_administrative_messages_message = omi_nasdaq_utp_input_utp_v4_0.prefs.show_return_administrative_messages_message
  end
  if show.return_control_messages_message ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_return_control_messages_message then
    show.return_control_messages_message = omi_nasdaq_utp_input_utp_v4_0.prefs.show_return_control_messages_message
  end
  if show.session_messages ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_utp_input_utp_v4_0.prefs.show_session_messages
  end
  if show.tcp_packet_header ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_tcp_packet_header then
    show.tcp_packet_header = omi_nasdaq_utp_input_utp_v4_0.prefs.show_tcp_packet_header
  end
  if show.odd_lot_bid_short_form_attachment_index ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_short_form_attachment_index then
    show.odd_lot_bid_short_form_attachment_index = omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_short_form_attachment_index
  end
  if show.odd_lot_ask_short_form_attachment_index ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_short_form_attachment_index then
    show.odd_lot_ask_short_form_attachment_index = omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_short_form_attachment_index
  end
  if show.odd_lot_bid_long_form_attachment_index ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_long_form_attachment_index then
    show.odd_lot_bid_long_form_attachment_index = omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_long_form_attachment_index
  end
  if show.odd_lot_ask_long_form_attachment_index ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_long_form_attachment_index then
    show.odd_lot_ask_long_form_attachment_index = omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_long_form_attachment_index
  end
  if show.odd_lot_bid_adf_form_attachment_index ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_adf_form_attachment_index then
    show.odd_lot_bid_adf_form_attachment_index = omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_bid_adf_form_attachment_index
  end
  if show.odd_lot_ask_adf_form_attachment_index ~= omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_adf_form_attachment_index then
    show.odd_lot_ask_adf_form_attachment_index = omi_nasdaq_utp_input_utp_v4_0.prefs.show_odd_lot_ask_adf_form_attachment_index
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
-- Nasdaq Utp Input Utp 4.0 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_utp_input_utp_v4_0.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_utp_input_utp_v4_0.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_utp_input_utp_v4_0.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_utp_input_utp_v4_0.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_utp_input_utp_v4_0.accepted_session = {}

-- Size: Accepted Session
nasdaq_utp_input_utp_v4_0.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_utp_input_utp_v4_0.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_utp_input_utp_v4_0.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.accepted_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Action
nasdaq_utp_input_utp_v4_0.action = {}

-- Size: Action
nasdaq_utp_input_utp_v4_0.action.size = 1

-- Display: Action
nasdaq_utp_input_utp_v4_0.action.display = function(value)
  if value == "H" then
    return "Action: Trading Halt (H)"
  end
  if value == "Q" then
    return "Action: Quotation Resumption Including Revoke Emergency Market Action (Q)"
  end
  if value == "T" then
    return "Action: Trading Resumption (T)"
  end
  if value == "P" then
    return "Action: Volatility Trading Pause (P)"
  end
  if value == "W" then
    return "Action: Wipeout Quote (W)"
  end
  if value == "E" then
    return "Action: Emergency Market Action Wipeout And Reject New Quotes (E)"
  end
  if value == "O" then
    return "Action: Clear Odd Lot Quotes (O)"
  end

  return "Action: Unknown("..value..")"
end

-- Dissect: Action
nasdaq_utp_input_utp_v4_0.action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.action, range, value, display)

  return offset + length, value
end

-- Action Sequence
nasdaq_utp_input_utp_v4_0.action_sequence = {}

-- Size: Action Sequence
nasdaq_utp_input_utp_v4_0.action_sequence.size = 4

-- Display: Action Sequence
nasdaq_utp_input_utp_v4_0.action_sequence.display = function(value)
  return "Action Sequence: "..value
end

-- Dissect: Action Sequence
nasdaq_utp_input_utp_v4_0.action_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.action_sequence.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.action_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.action_sequence, range, value, display)

  return offset + length, value
end

-- Action Time
nasdaq_utp_input_utp_v4_0.action_time = {}

-- Size: Action Time
nasdaq_utp_input_utp_v4_0.action_time.size = 8

-- Display: Action Time
nasdaq_utp_input_utp_v4_0.action_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Action Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Action Time
nasdaq_utp_input_utp_v4_0.action_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.action_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_input_utp_v4_0.action_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.action_time, range, value, display)

  return offset + length, value
end

-- Ask Long 8
nasdaq_utp_input_utp_v4_0.ask_long_8 = {}

-- Size: Ask Long 8
nasdaq_utp_input_utp_v4_0.ask_long_8.size = 8

-- Display: Ask Long 8
nasdaq_utp_input_utp_v4_0.ask_long_8.display = function(value)
  return "Ask Long 8: "..value
end

-- Dissect: Ask Long 8
nasdaq_utp_input_utp_v4_0.ask_long_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.ask_long_8.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_input_utp_v4_0.ask_long_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.ask_long_8, range, value, display)

  return offset + length, value
end

-- Ask Short 2
nasdaq_utp_input_utp_v4_0.ask_short_2 = {}

-- Size: Ask Short 2
nasdaq_utp_input_utp_v4_0.ask_short_2.size = 2

-- Display: Ask Short 2
nasdaq_utp_input_utp_v4_0.ask_short_2.display = function(value)
  return "Ask Short 2: "..value
end

-- Dissect: Ask Short 2
nasdaq_utp_input_utp_v4_0.ask_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.ask_short_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.ask_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.ask_short_2, range, value, display)

  return offset + length, value
end

-- Ask Size Int 4
nasdaq_utp_input_utp_v4_0.ask_size_int_4 = {}

-- Size: Ask Size Int 4
nasdaq_utp_input_utp_v4_0.ask_size_int_4.size = 4

-- Display: Ask Size Int 4
nasdaq_utp_input_utp_v4_0.ask_size_int_4.display = function(value)
  return "Ask Size Int 4: "..value
end

-- Dissect: Ask Size Int 4
nasdaq_utp_input_utp_v4_0.ask_size_int_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.ask_size_int_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.ask_size_int_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.ask_size_int_4, range, value, display)

  return offset + length, value
end

-- Ask Size Short 2
nasdaq_utp_input_utp_v4_0.ask_size_short_2 = {}

-- Size: Ask Size Short 2
nasdaq_utp_input_utp_v4_0.ask_size_short_2.size = 2

-- Display: Ask Size Short 2
nasdaq_utp_input_utp_v4_0.ask_size_short_2.display = function(value)
  return "Ask Size Short 2: "..value
end

-- Dissect: Ask Size Short 2
nasdaq_utp_input_utp_v4_0.ask_size_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.ask_size_short_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.ask_size_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.ask_size_short_2, range, value, display)

  return offset + length, value
end

-- Bbo Ask
nasdaq_utp_input_utp_v4_0.bbo_ask = {}

-- Size: Bbo Ask
nasdaq_utp_input_utp_v4_0.bbo_ask.size = 8

-- Display: Bbo Ask
nasdaq_utp_input_utp_v4_0.bbo_ask.display = function(value)
  return "Bbo Ask: "..value
end

-- Dissect: Bbo Ask
nasdaq_utp_input_utp_v4_0.bbo_ask.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.bbo_ask.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_input_utp_v4_0.bbo_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.bbo_ask, range, value, display)

  return offset + length, value
end

-- Bbo Ask Mpid
nasdaq_utp_input_utp_v4_0.bbo_ask_mpid = {}

-- Size: Bbo Ask Mpid
nasdaq_utp_input_utp_v4_0.bbo_ask_mpid.size = 4

-- Display: Bbo Ask Mpid
nasdaq_utp_input_utp_v4_0.bbo_ask_mpid.display = function(value)
  return "Bbo Ask Mpid: "..value
end

-- Dissect: Bbo Ask Mpid
nasdaq_utp_input_utp_v4_0.bbo_ask_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.bbo_ask_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_input_utp_v4_0.bbo_ask_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.bbo_ask_mpid, range, value, display)

  return offset + length, value
end

-- Bbo Ask Price
nasdaq_utp_input_utp_v4_0.bbo_ask_price = {}

-- Size: Bbo Ask Price
nasdaq_utp_input_utp_v4_0.bbo_ask_price.size = 8

-- Display: Bbo Ask Price
nasdaq_utp_input_utp_v4_0.bbo_ask_price.display = function(value)
  return "Bbo Ask Price: "..value
end

-- Translate: Bbo Ask Price
nasdaq_utp_input_utp_v4_0.bbo_ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bbo Ask Price
nasdaq_utp_input_utp_v4_0.bbo_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.bbo_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_input_utp_v4_0.bbo_ask_price.translate(raw)
  local display = nasdaq_utp_input_utp_v4_0.bbo_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.bbo_ask_price, range, value, display)

  return offset + length, value
end

-- Bbo Ask Size
nasdaq_utp_input_utp_v4_0.bbo_ask_size = {}

-- Size: Bbo Ask Size
nasdaq_utp_input_utp_v4_0.bbo_ask_size.size = 4

-- Display: Bbo Ask Size
nasdaq_utp_input_utp_v4_0.bbo_ask_size.display = function(value)
  return "Bbo Ask Size: "..value
end

-- Dissect: Bbo Ask Size
nasdaq_utp_input_utp_v4_0.bbo_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.bbo_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.bbo_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.bbo_ask_size, range, value, display)

  return offset + length, value
end

-- Bbo Bid
nasdaq_utp_input_utp_v4_0.bbo_bid = {}

-- Size: Bbo Bid
nasdaq_utp_input_utp_v4_0.bbo_bid.size = 8

-- Display: Bbo Bid
nasdaq_utp_input_utp_v4_0.bbo_bid.display = function(value)
  return "Bbo Bid: "..value
end

-- Dissect: Bbo Bid
nasdaq_utp_input_utp_v4_0.bbo_bid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.bbo_bid.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_input_utp_v4_0.bbo_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.bbo_bid, range, value, display)

  return offset + length, value
end

-- Bbo Bid Mpid
nasdaq_utp_input_utp_v4_0.bbo_bid_mpid = {}

-- Size: Bbo Bid Mpid
nasdaq_utp_input_utp_v4_0.bbo_bid_mpid.size = 4

-- Display: Bbo Bid Mpid
nasdaq_utp_input_utp_v4_0.bbo_bid_mpid.display = function(value)
  return "Bbo Bid Mpid: "..value
end

-- Dissect: Bbo Bid Mpid
nasdaq_utp_input_utp_v4_0.bbo_bid_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.bbo_bid_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_input_utp_v4_0.bbo_bid_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.bbo_bid_mpid, range, value, display)

  return offset + length, value
end

-- Bbo Bid Price
nasdaq_utp_input_utp_v4_0.bbo_bid_price = {}

-- Size: Bbo Bid Price
nasdaq_utp_input_utp_v4_0.bbo_bid_price.size = 8

-- Display: Bbo Bid Price
nasdaq_utp_input_utp_v4_0.bbo_bid_price.display = function(value)
  return "Bbo Bid Price: "..value
end

-- Translate: Bbo Bid Price
nasdaq_utp_input_utp_v4_0.bbo_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bbo Bid Price
nasdaq_utp_input_utp_v4_0.bbo_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.bbo_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_input_utp_v4_0.bbo_bid_price.translate(raw)
  local display = nasdaq_utp_input_utp_v4_0.bbo_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.bbo_bid_price, range, value, display)

  return offset + length, value
end

-- Bbo Bid Size
nasdaq_utp_input_utp_v4_0.bbo_bid_size = {}

-- Size: Bbo Bid Size
nasdaq_utp_input_utp_v4_0.bbo_bid_size.size = 4

-- Display: Bbo Bid Size
nasdaq_utp_input_utp_v4_0.bbo_bid_size.display = function(value)
  return "Bbo Bid Size: "..value
end

-- Dissect: Bbo Bid Size
nasdaq_utp_input_utp_v4_0.bbo_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.bbo_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.bbo_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.bbo_bid_size, range, value, display)

  return offset + length, value
end

-- Bbo Cond
nasdaq_utp_input_utp_v4_0.bbo_cond = {}

-- Size: Bbo Cond
nasdaq_utp_input_utp_v4_0.bbo_cond.size = 1

-- Display: Bbo Cond
nasdaq_utp_input_utp_v4_0.bbo_cond.display = function(value)
  if value == "A" then
    return "Bbo Cond: Manual Ask Automated Bid (A)"
  end
  if value == "B" then
    return "Bbo Cond: Manual Bid Automated Ask (B)"
  end
  if value == "F" then
    return "Bbo Cond: Fast Trading (F)"
  end
  if value == "H" then
    return "Bbo Cond: Manual Bid And Ask (H)"
  end
  if value == "I" then
    return "Bbo Cond: Order Imbalance (I)"
  end
  if value == "L" then
    return "Bbo Cond: Closed Quote (L)"
  end
  if value == "N" then
    return "Bbo Cond: Nonfirm Quote (N)"
  end
  if value == "O" then
    return "Bbo Cond: Opening Quote Automated (O)"
  end
  if value == "R" then
    return "Bbo Cond: Regular Twosided Open Quote Automated (R)"
  end

  return "Bbo Cond: Unknown("..value..")"
end

-- Dissect: Bbo Cond
nasdaq_utp_input_utp_v4_0.bbo_cond.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.bbo_cond.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.bbo_cond.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.bbo_cond, range, value, display)

  return offset + length, value
end

-- Bbo Indicator
nasdaq_utp_input_utp_v4_0.bbo_indicator = {}

-- Size: Bbo Indicator
nasdaq_utp_input_utp_v4_0.bbo_indicator.size = 1

-- Display: Bbo Indicator
nasdaq_utp_input_utp_v4_0.bbo_indicator.display = function(value)
  if value == "A" then
    return "Bbo Indicator: No Finra Bbo Change (A)"
  end
  if value == "B" then
    return "Bbo Indicator: No Finra Bbo Exists (B)"
  end

  return "Bbo Indicator: Unknown("..value..")"
end

-- Dissect: Bbo Indicator
nasdaq_utp_input_utp_v4_0.bbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.bbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.bbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.bbo_indicator, range, value, display)

  return offset + length, value
end

-- Bid Long 8
nasdaq_utp_input_utp_v4_0.bid_long_8 = {}

-- Size: Bid Long 8
nasdaq_utp_input_utp_v4_0.bid_long_8.size = 8

-- Display: Bid Long 8
nasdaq_utp_input_utp_v4_0.bid_long_8.display = function(value)
  return "Bid Long 8: "..value
end

-- Dissect: Bid Long 8
nasdaq_utp_input_utp_v4_0.bid_long_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.bid_long_8.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_input_utp_v4_0.bid_long_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.bid_long_8, range, value, display)

  return offset + length, value
end

-- Bid Short 2
nasdaq_utp_input_utp_v4_0.bid_short_2 = {}

-- Size: Bid Short 2
nasdaq_utp_input_utp_v4_0.bid_short_2.size = 2

-- Display: Bid Short 2
nasdaq_utp_input_utp_v4_0.bid_short_2.display = function(value)
  return "Bid Short 2: "..value
end

-- Dissect: Bid Short 2
nasdaq_utp_input_utp_v4_0.bid_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.bid_short_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.bid_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.bid_short_2, range, value, display)

  return offset + length, value
end

-- Bid Size Int 4
nasdaq_utp_input_utp_v4_0.bid_size_int_4 = {}

-- Size: Bid Size Int 4
nasdaq_utp_input_utp_v4_0.bid_size_int_4.size = 4

-- Display: Bid Size Int 4
nasdaq_utp_input_utp_v4_0.bid_size_int_4.display = function(value)
  return "Bid Size Int 4: "..value
end

-- Dissect: Bid Size Int 4
nasdaq_utp_input_utp_v4_0.bid_size_int_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.bid_size_int_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.bid_size_int_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.bid_size_int_4, range, value, display)

  return offset + length, value
end

-- Bid Size Short 2
nasdaq_utp_input_utp_v4_0.bid_size_short_2 = {}

-- Size: Bid Size Short 2
nasdaq_utp_input_utp_v4_0.bid_size_short_2.size = 2

-- Display: Bid Size Short 2
nasdaq_utp_input_utp_v4_0.bid_size_short_2.display = function(value)
  return "Bid Size Short 2: "..value
end

-- Dissect: Bid Size Short 2
nasdaq_utp_input_utp_v4_0.bid_size_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.bid_size_short_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.bid_size_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.bid_size_short_2, range, value, display)

  return offset + length, value
end

-- Cancel Type
nasdaq_utp_input_utp_v4_0.cancel_type = {}

-- Size: Cancel Type
nasdaq_utp_input_utp_v4_0.cancel_type.size = 1

-- Display: Cancel Type
nasdaq_utp_input_utp_v4_0.cancel_type.display = function(value)
  if value == "C" then
    return "Cancel Type: Cancel (C)"
  end
  if value == "E" then
    return "Cancel Type: Error (E)"
  end

  return "Cancel Type: Unknown("..value..")"
end

-- Dissect: Cancel Type
nasdaq_utp_input_utp_v4_0.cancel_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.cancel_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.cancel_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.cancel_type, range, value, display)

  return offset + length, value
end

-- Collar Down Price
nasdaq_utp_input_utp_v4_0.collar_down_price = {}

-- Size: Collar Down Price
nasdaq_utp_input_utp_v4_0.collar_down_price.size = 8

-- Display: Collar Down Price
nasdaq_utp_input_utp_v4_0.collar_down_price.display = function(value)
  return "Collar Down Price: "..value
end

-- Translate: Collar Down Price
nasdaq_utp_input_utp_v4_0.collar_down_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Down Price
nasdaq_utp_input_utp_v4_0.collar_down_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.collar_down_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_input_utp_v4_0.collar_down_price.translate(raw)
  local display = nasdaq_utp_input_utp_v4_0.collar_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.collar_down_price, range, value, display)

  return offset + length, value
end

-- Collar Extension
nasdaq_utp_input_utp_v4_0.collar_extension = {}

-- Size: Collar Extension
nasdaq_utp_input_utp_v4_0.collar_extension.size = 1

-- Display: Collar Extension
nasdaq_utp_input_utp_v4_0.collar_extension.display = function(value)
  return "Collar Extension: "..value
end

-- Dissect: Collar Extension
nasdaq_utp_input_utp_v4_0.collar_extension.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.collar_extension.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.collar_extension.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.collar_extension, range, value, display)

  return offset + length, value
end

-- Collar Reference Price
nasdaq_utp_input_utp_v4_0.collar_reference_price = {}

-- Size: Collar Reference Price
nasdaq_utp_input_utp_v4_0.collar_reference_price.size = 8

-- Display: Collar Reference Price
nasdaq_utp_input_utp_v4_0.collar_reference_price.display = function(value)
  return "Collar Reference Price: "..value
end

-- Translate: Collar Reference Price
nasdaq_utp_input_utp_v4_0.collar_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Reference Price
nasdaq_utp_input_utp_v4_0.collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_input_utp_v4_0.collar_reference_price.translate(raw)
  local display = nasdaq_utp_input_utp_v4_0.collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.collar_reference_price, range, value, display)

  return offset + length, value
end

-- Collar Up Price
nasdaq_utp_input_utp_v4_0.collar_up_price = {}

-- Size: Collar Up Price
nasdaq_utp_input_utp_v4_0.collar_up_price.size = 8

-- Display: Collar Up Price
nasdaq_utp_input_utp_v4_0.collar_up_price.display = function(value)
  return "Collar Up Price: "..value
end

-- Translate: Collar Up Price
nasdaq_utp_input_utp_v4_0.collar_up_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Up Price
nasdaq_utp_input_utp_v4_0.collar_up_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.collar_up_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_input_utp_v4_0.collar_up_price.translate(raw)
  local display = nasdaq_utp_input_utp_v4_0.collar_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.collar_up_price, range, value, display)

  return offset + length, value
end

-- Cond
nasdaq_utp_input_utp_v4_0.cond = {}

-- Size: Cond
nasdaq_utp_input_utp_v4_0.cond.size = 1

-- Display: Cond
nasdaq_utp_input_utp_v4_0.cond.display = function(value)
  if value == "A" then
    return "Cond: Manual Ask Automated Bid (A)"
  end
  if value == "B" then
    return "Cond: Manual Bid Automated Ask (B)"
  end
  if value == "F" then
    return "Cond: Fast Trading (F)"
  end
  if value == "H" then
    return "Cond: Manual Bid And Ask (H)"
  end
  if value == "I" then
    return "Cond: Order Imbalance (I)"
  end
  if value == "L" then
    return "Cond: Closed Quote (L)"
  end
  if value == "N" then
    return "Cond: Nonfirm Quote (N)"
  end
  if value == "O" then
    return "Cond: Opening Quote Automated (O)"
  end
  if value == "R" then
    return "Cond: Regular Twosided Open Quote Automated (R)"
  end
  if value == "U" then
    return "Cond: Manual Bid And Ask Nonfirm (U)"
  end
  if value == "X" then
    return "Cond: Order Influx (X)"
  end
  if value == "Y" then
    return "Cond: Automated Bid No Offer Or Automated Offer No Bid (Y)"
  end
  if value == "Z" then
    return "Cond: No Openno Resume (Z)"
  end
  if value == "4" then
    return "Cond: Intraday Auction (4)"
  end

  return "Cond: Unknown("..value..")"
end

-- Dissect: Cond
nasdaq_utp_input_utp_v4_0.cond.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.cond.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.cond.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.cond, range, value, display)

  return offset + length, value
end

-- Feed Sequence
nasdaq_utp_input_utp_v4_0.feed_sequence = {}

-- Size: Feed Sequence
nasdaq_utp_input_utp_v4_0.feed_sequence.size = 8

-- Display: Feed Sequence
nasdaq_utp_input_utp_v4_0.feed_sequence.display = function(value)
  return "Feed Sequence: "..value
end

-- Dissect: Feed Sequence
nasdaq_utp_input_utp_v4_0.feed_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.feed_sequence.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_input_utp_v4_0.feed_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.feed_sequence, range, value, display)

  return offset + length, value
end

-- First Security
nasdaq_utp_input_utp_v4_0.first_security = {}

-- Size: First Security
nasdaq_utp_input_utp_v4_0.first_security.size = 11

-- Display: First Security
nasdaq_utp_input_utp_v4_0.first_security.display = function(value)
  return "First Security: "..value
end

-- Dissect: First Security
nasdaq_utp_input_utp_v4_0.first_security.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.first_security.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_input_utp_v4_0.first_security.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.first_security, range, value, display)

  return offset + length, value
end

-- Inbound Administrative Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message_type = {}

-- Size: Inbound Administrative Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message_type.size = 1

-- Display: Inbound Administrative Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message_type.display = function(value)
  return "Inbound Administrative Messages Message Type: "..value
end

-- Dissect: Inbound Administrative Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.inbound_administrative_messages_message_type, range, value, display)

  return offset + length, value
end

-- Inbound Control Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_control_messages_message_type = {}

-- Size: Inbound Control Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_control_messages_message_type.size = 1

-- Display: Inbound Control Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_control_messages_message_type.display = function(value)
  return "Inbound Control Messages Message Type: "..value
end

-- Dissect: Inbound Control Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_control_messages_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.inbound_control_messages_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.inbound_control_messages_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.inbound_control_messages_message_type, range, value, display)

  return offset + length, value
end

-- Inbound Quote Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message_type = {}

-- Size: Inbound Quote Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message_type.size = 1

-- Display: Inbound Quote Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message_type.display = function(value)
  return "Inbound Quote Messages Message Type: "..value
end

-- Dissect: Inbound Quote Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.inbound_quote_messages_message_type, range, value, display)

  return offset + length, value
end

-- Inbound Trade Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message_type = {}

-- Size: Inbound Trade Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message_type.size = 1

-- Display: Inbound Trade Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message_type.display = function(value)
  return "Inbound Trade Messages Message Type: "..value
end

-- Dissect: Inbound Trade Messages Message Type
nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.inbound_trade_messages_message_type, range, value, display)

  return offset + length, value
end

-- Last Security
nasdaq_utp_input_utp_v4_0.last_security = {}

-- Size: Last Security
nasdaq_utp_input_utp_v4_0.last_security.size = 11

-- Display: Last Security
nasdaq_utp_input_utp_v4_0.last_security.display = function(value)
  return "Last Security: "..value
end

-- Dissect: Last Security
nasdaq_utp_input_utp_v4_0.last_security.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.last_security.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_input_utp_v4_0.last_security.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.last_security, range, value, display)

  return offset + length, value
end

-- Message Category
nasdaq_utp_input_utp_v4_0.message_category = {}

-- Size: Message Category
nasdaq_utp_input_utp_v4_0.message_category.size = 1

-- Display: Message Category
nasdaq_utp_input_utp_v4_0.message_category.display = function(value)
  return "Message Category: "..value
end

-- Dissect: Message Category
nasdaq_utp_input_utp_v4_0.message_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.message_category, range, value, display)

  return offset + length, value
end

-- Mpid
nasdaq_utp_input_utp_v4_0.mpid = {}

-- Size: Mpid
nasdaq_utp_input_utp_v4_0.mpid.size = 4

-- Display: Mpid
nasdaq_utp_input_utp_v4_0.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
nasdaq_utp_input_utp_v4_0.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_input_utp_v4_0.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.mpid, range, value, display)

  return offset + length, value
end

-- New Price
nasdaq_utp_input_utp_v4_0.new_price = {}

-- Size: New Price
nasdaq_utp_input_utp_v4_0.new_price.size = 8

-- Display: New Price
nasdaq_utp_input_utp_v4_0.new_price.display = function(value)
  return "New Price: "..value
end

-- Translate: New Price
nasdaq_utp_input_utp_v4_0.new_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: New Price
nasdaq_utp_input_utp_v4_0.new_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.new_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_input_utp_v4_0.new_price.translate(raw)
  local display = nasdaq_utp_input_utp_v4_0.new_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.new_price, range, value, display)

  return offset + length, value
end

-- New Ssday
nasdaq_utp_input_utp_v4_0.new_ssday = {}

-- Size: New Ssday
nasdaq_utp_input_utp_v4_0.new_ssday.size = 2

-- Display: New Ssday
nasdaq_utp_input_utp_v4_0.new_ssday.display = function(value)
  return "New Ssday: "..value
end

-- Dissect: New Ssday
nasdaq_utp_input_utp_v4_0.new_ssday.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.new_ssday.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.new_ssday.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.new_ssday, range, value, display)

  return offset + length, value
end

-- New Trcond
nasdaq_utp_input_utp_v4_0.new_trcond = {}

-- Size: New Trcond
nasdaq_utp_input_utp_v4_0.new_trcond.size = 4

-- Display: New Trcond
nasdaq_utp_input_utp_v4_0.new_trcond.display = function(value)
  return "New Trcond: "..value
end

-- Dissect: New Trcond
nasdaq_utp_input_utp_v4_0.new_trcond.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.new_trcond.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_input_utp_v4_0.new_trcond.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.new_trcond, range, value, display)

  return offset + length, value
end

-- New Tt Exempt
nasdaq_utp_input_utp_v4_0.new_tt_exempt = {}

-- Size: New Tt Exempt
nasdaq_utp_input_utp_v4_0.new_tt_exempt.size = 1

-- Display: New Tt Exempt
nasdaq_utp_input_utp_v4_0.new_tt_exempt.display = function(value)
  return "New Tt Exempt: "..value
end

-- Dissect: New Tt Exempt
nasdaq_utp_input_utp_v4_0.new_tt_exempt.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.new_tt_exempt.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.new_tt_exempt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.new_tt_exempt, range, value, display)

  return offset + length, value
end

-- New Volume Int 4
nasdaq_utp_input_utp_v4_0.new_volume_int_4 = {}

-- Size: New Volume Int 4
nasdaq_utp_input_utp_v4_0.new_volume_int_4.size = 4

-- Display: New Volume Int 4
nasdaq_utp_input_utp_v4_0.new_volume_int_4.display = function(value)
  return "New Volume Int 4: "..value
end

-- Dissect: New Volume Int 4
nasdaq_utp_input_utp_v4_0.new_volume_int_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.new_volume_int_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.new_volume_int_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.new_volume_int_4, range, value, display)

  return offset + length, value
end

-- New Volume Long 8
nasdaq_utp_input_utp_v4_0.new_volume_long_8 = {}

-- Size: New Volume Long 8
nasdaq_utp_input_utp_v4_0.new_volume_long_8.size = 8

-- Display: New Volume Long 8
nasdaq_utp_input_utp_v4_0.new_volume_long_8.display = function(value)
  return "New Volume Long 8: "..value
end

-- Translate: New Volume Long 8
nasdaq_utp_input_utp_v4_0.new_volume_long_8.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: New Volume Long 8
nasdaq_utp_input_utp_v4_0.new_volume_long_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.new_volume_long_8.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_input_utp_v4_0.new_volume_long_8.translate(raw)
  local display = nasdaq_utp_input_utp_v4_0.new_volume_long_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.new_volume_long_8, range, value, display)

  return offset + length, value
end

-- Next Action Sequence
nasdaq_utp_input_utp_v4_0.next_action_sequence = {}

-- Size: Next Action Sequence
nasdaq_utp_input_utp_v4_0.next_action_sequence.size = 4

-- Display: Next Action Sequence
nasdaq_utp_input_utp_v4_0.next_action_sequence.display = function(value)
  return "Next Action Sequence: "..value
end

-- Dissect: Next Action Sequence
nasdaq_utp_input_utp_v4_0.next_action_sequence.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.next_action_sequence.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.next_action_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.next_action_sequence, range, value, display)

  return offset + length, value
end

-- Next Trade Id
nasdaq_utp_input_utp_v4_0.next_trade_id = {}

-- Size: Next Trade Id
nasdaq_utp_input_utp_v4_0.next_trade_id.size = 4

-- Display: Next Trade Id
nasdaq_utp_input_utp_v4_0.next_trade_id.display = function(value)
  return "Next Trade Id: "..value
end

-- Dissect: Next Trade Id
nasdaq_utp_input_utp_v4_0.next_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.next_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.next_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.next_trade_id, range, value, display)

  return offset + length, value
end

-- Ol Ask Level Count
nasdaq_utp_input_utp_v4_0.ol_ask_level_count = {}

-- Size: Ol Ask Level Count
nasdaq_utp_input_utp_v4_0.ol_ask_level_count.size = 2

-- Display: Ol Ask Level Count
nasdaq_utp_input_utp_v4_0.ol_ask_level_count.display = function(value)
  return "Ol Ask Level Count: "..value
end

-- Dissect: Ol Ask Level Count
nasdaq_utp_input_utp_v4_0.ol_ask_level_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.ol_ask_level_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.ol_ask_level_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.ol_ask_level_count, range, value, display)

  return offset + length, value
end

-- Ol Attachmen Type
nasdaq_utp_input_utp_v4_0.ol_attachmen_type = {}

-- Size: Ol Attachmen Type
nasdaq_utp_input_utp_v4_0.ol_attachmen_type.size = 1

-- Display: Ol Attachmen Type
nasdaq_utp_input_utp_v4_0.ol_attachmen_type.display = function(value)
  return "Ol Attachmen Type: "..value
end

-- Dissect: Ol Attachmen Type
nasdaq_utp_input_utp_v4_0.ol_attachmen_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.ol_attachmen_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.ol_attachmen_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.ol_attachmen_type, range, value, display)

  return offset + length, value
end

-- Ol Attachment Count
nasdaq_utp_input_utp_v4_0.ol_attachment_count = {}

-- Size: Ol Attachment Count
nasdaq_utp_input_utp_v4_0.ol_attachment_count.size = 2

-- Display: Ol Attachment Count
nasdaq_utp_input_utp_v4_0.ol_attachment_count.display = function(value)
  return "Ol Attachment Count: "..value
end

-- Dissect: Ol Attachment Count
nasdaq_utp_input_utp_v4_0.ol_attachment_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.ol_attachment_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.ol_attachment_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.ol_attachment_count, range, value, display)

  return offset + length, value
end

-- Ol Bid Level Count
nasdaq_utp_input_utp_v4_0.ol_bid_level_count = {}

-- Size: Ol Bid Level Count
nasdaq_utp_input_utp_v4_0.ol_bid_level_count.size = 2

-- Display: Ol Bid Level Count
nasdaq_utp_input_utp_v4_0.ol_bid_level_count.display = function(value)
  return "Ol Bid Level Count: "..value
end

-- Dissect: Ol Bid Level Count
nasdaq_utp_input_utp_v4_0.ol_bid_level_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.ol_bid_level_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.ol_bid_level_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.ol_bid_level_count, range, value, display)

  return offset + length, value
end

-- Ol Price Long 8
nasdaq_utp_input_utp_v4_0.ol_price_long_8 = {}

-- Size: Ol Price Long 8
nasdaq_utp_input_utp_v4_0.ol_price_long_8.size = 8

-- Display: Ol Price Long 8
nasdaq_utp_input_utp_v4_0.ol_price_long_8.display = function(value)
  return "Ol Price Long 8: "..value
end

-- Translate: Ol Price Long 8
nasdaq_utp_input_utp_v4_0.ol_price_long_8.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ol Price Long 8
nasdaq_utp_input_utp_v4_0.ol_price_long_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.ol_price_long_8.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_input_utp_v4_0.ol_price_long_8.translate(raw)
  local display = nasdaq_utp_input_utp_v4_0.ol_price_long_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.ol_price_long_8, range, value, display)

  return offset + length, value
end

-- Ol Price Short 2
nasdaq_utp_input_utp_v4_0.ol_price_short_2 = {}

-- Size: Ol Price Short 2
nasdaq_utp_input_utp_v4_0.ol_price_short_2.size = 2

-- Display: Ol Price Short 2
nasdaq_utp_input_utp_v4_0.ol_price_short_2.display = function(value)
  return "Ol Price Short 2: "..value
end

-- Translate: Ol Price Short 2
nasdaq_utp_input_utp_v4_0.ol_price_short_2.translate = function(raw)
  return raw/100
end

-- Dissect: Ol Price Short 2
nasdaq_utp_input_utp_v4_0.ol_price_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.ol_price_short_2.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_utp_input_utp_v4_0.ol_price_short_2.translate(raw)
  local display = nasdaq_utp_input_utp_v4_0.ol_price_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.ol_price_short_2, range, value, display)

  return offset + length, value
end

-- Ol Size
nasdaq_utp_input_utp_v4_0.ol_size = {}

-- Size: Ol Size
nasdaq_utp_input_utp_v4_0.ol_size.size = 2

-- Display: Ol Size
nasdaq_utp_input_utp_v4_0.ol_size.display = function(value)
  return "Ol Size: "..value
end

-- Dissect: Ol Size
nasdaq_utp_input_utp_v4_0.ol_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.ol_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.ol_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.ol_size, range, value, display)

  return offset + length, value
end

-- Orig
nasdaq_utp_input_utp_v4_0.orig = {}

-- Size: Orig
nasdaq_utp_input_utp_v4_0.orig.size = 2

-- Display: Orig
nasdaq_utp_input_utp_v4_0.orig.display = function(value)
  if value == "AU" then
    return "Orig: Nyse American Llc (AU)"
  end
  if value == "BU" then
    return "Orig: Nasdaq Texas Llc (BU)"
  end
  if value == "CU" then
    return "Orig: Nyse National Inc (CU)"
  end
  if value == "FU" then
    return "Orig: Texas Stock Exchange Llc (FU)"
  end
  if value == "GU" then
    return "Orig: 24 X National Exchange Llc (GU)"
  end
  if value == "HU" then
    return "Orig: Miax Pearl Llc (HU)"
  end
  if value == "IU" then
    return "Orig: Nasdaq Ise Llc (IU)"
  end
  if value == "JU" then
    return "Orig: Cboe Edga Exchange Inc (JU)"
  end
  if value == "KU" then
    return "Orig: Cboe Edgx Exchange Inc (KU)"
  end
  if value == "LU" then
    return "Orig: Long Term Stock Exchange (LU)"
  end
  if value == "MU" then
    return "Orig: Nyse Texas (MU)"
  end
  if value == "ND" then
    return "Orig: Finra Alternative Display Facility Adf (ND)"
  end
  if value == "NU" then
    return "Orig: New York Stock Exchange Llc (NU)"
  end
  if value == "PU" then
    return "Orig: Nyse Arca Inc (PU)"
  end
  if value == "QU" then
    return "Orig: Nasdaq Stock Market Llc (QU)"
  end
  if value == "UU" then
    return "Orig: Memx Llc (UU)"
  end
  if value == "VU" then
    return "Orig: Investors Exchange Llc (VU)"
  end
  if value == "WU" then
    return "Orig: Cboe Exchange Inc (WU)"
  end
  if value == "XU" then
    return "Orig: Nasdaq Psx (XU)"
  end
  if value == "YU" then
    return "Orig: Cboe Byx Exchange Inc (YU)"
  end
  if value == "ZU" then
    return "Orig: Cboe Bzx Exchange Inc (ZU)"
  end
  if value == "SU" then
    return "Orig: Securities Information Processor Sip (SU)"
  end
  if value == "NL" then
    return "Orig: Finra Nyse Trf (NL)"
  end
  if value == "QL" then
    return "Orig: Finra Nasdaq Trf Carteret (QL)"
  end
  if value == "BL" then
    return "Orig: Finra Nasdaq Trf Chicago (BL)"
  end

  return "Orig: Unknown("..value..")"
end

-- Dissect: Orig
nasdaq_utp_input_utp_v4_0.orig.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.orig.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_input_utp_v4_0.orig.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.orig, range, value, display)

  return offset + length, value
end

-- Orig Price
nasdaq_utp_input_utp_v4_0.orig_price = {}

-- Size: Orig Price
nasdaq_utp_input_utp_v4_0.orig_price.size = 8

-- Display: Orig Price
nasdaq_utp_input_utp_v4_0.orig_price.display = function(value)
  return "Orig Price: "..value
end

-- Translate: Orig Price
nasdaq_utp_input_utp_v4_0.orig_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Orig Price
nasdaq_utp_input_utp_v4_0.orig_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.orig_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_input_utp_v4_0.orig_price.translate(raw)
  local display = nasdaq_utp_input_utp_v4_0.orig_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.orig_price, range, value, display)

  return offset + length, value
end

-- Orig Side
nasdaq_utp_input_utp_v4_0.orig_side = {}

-- Size: Orig Side
nasdaq_utp_input_utp_v4_0.orig_side.size = 1

-- Display: Orig Side
nasdaq_utp_input_utp_v4_0.orig_side.display = function(value)
  return "Orig Side: "..value
end

-- Dissect: Orig Side
nasdaq_utp_input_utp_v4_0.orig_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.orig_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.orig_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.orig_side, range, value, display)

  return offset + length, value
end

-- Orig Ssday
nasdaq_utp_input_utp_v4_0.orig_ssday = {}

-- Size: Orig Ssday
nasdaq_utp_input_utp_v4_0.orig_ssday.size = 2

-- Display: Orig Ssday
nasdaq_utp_input_utp_v4_0.orig_ssday.display = function(value)
  return "Orig Ssday: "..value
end

-- Dissect: Orig Ssday
nasdaq_utp_input_utp_v4_0.orig_ssday.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.orig_ssday.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.orig_ssday.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.orig_ssday, range, value, display)

  return offset + length, value
end

-- Orig Trade Id
nasdaq_utp_input_utp_v4_0.orig_trade_id = {}

-- Size: Orig Trade Id
nasdaq_utp_input_utp_v4_0.orig_trade_id.size = 4

-- Display: Orig Trade Id
nasdaq_utp_input_utp_v4_0.orig_trade_id.display = function(value)
  return "Orig Trade Id: "..value
end

-- Dissect: Orig Trade Id
nasdaq_utp_input_utp_v4_0.orig_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.orig_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.orig_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.orig_trade_id, range, value, display)

  return offset + length, value
end

-- Orig Trcond
nasdaq_utp_input_utp_v4_0.orig_trcond = {}

-- Size: Orig Trcond
nasdaq_utp_input_utp_v4_0.orig_trcond.size = 4

-- Display: Orig Trcond
nasdaq_utp_input_utp_v4_0.orig_trcond.display = function(value)
  return "Orig Trcond: "..value
end

-- Dissect: Orig Trcond
nasdaq_utp_input_utp_v4_0.orig_trcond.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.orig_trcond.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_input_utp_v4_0.orig_trcond.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.orig_trcond, range, value, display)

  return offset + length, value
end

-- Orig Tt Exempt
nasdaq_utp_input_utp_v4_0.orig_tt_exempt = {}

-- Size: Orig Tt Exempt
nasdaq_utp_input_utp_v4_0.orig_tt_exempt.size = 1

-- Display: Orig Tt Exempt
nasdaq_utp_input_utp_v4_0.orig_tt_exempt.display = function(value)
  return "Orig Tt Exempt: "..value
end

-- Dissect: Orig Tt Exempt
nasdaq_utp_input_utp_v4_0.orig_tt_exempt.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.orig_tt_exempt.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.orig_tt_exempt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.orig_tt_exempt, range, value, display)

  return offset + length, value
end

-- Orig Volume Int 4
nasdaq_utp_input_utp_v4_0.orig_volume_int_4 = {}

-- Size: Orig Volume Int 4
nasdaq_utp_input_utp_v4_0.orig_volume_int_4.size = 4

-- Display: Orig Volume Int 4
nasdaq_utp_input_utp_v4_0.orig_volume_int_4.display = function(value)
  return "Orig Volume Int 4: "..value
end

-- Dissect: Orig Volume Int 4
nasdaq_utp_input_utp_v4_0.orig_volume_int_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.orig_volume_int_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.orig_volume_int_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.orig_volume_int_4, range, value, display)

  return offset + length, value
end

-- Orig Volume Long 8
nasdaq_utp_input_utp_v4_0.orig_volume_long_8 = {}

-- Size: Orig Volume Long 8
nasdaq_utp_input_utp_v4_0.orig_volume_long_8.size = 8

-- Display: Orig Volume Long 8
nasdaq_utp_input_utp_v4_0.orig_volume_long_8.display = function(value)
  return "Orig Volume Long 8: "..value
end

-- Translate: Orig Volume Long 8
nasdaq_utp_input_utp_v4_0.orig_volume_long_8.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Orig Volume Long 8
nasdaq_utp_input_utp_v4_0.orig_volume_long_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.orig_volume_long_8.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_input_utp_v4_0.orig_volume_long_8.translate(raw)
  local display = nasdaq_utp_input_utp_v4_0.orig_volume_long_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.orig_volume_long_8, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_utp_input_utp_v4_0.packet_length = {}

-- Size: Packet Length
nasdaq_utp_input_utp_v4_0.packet_length.size = 2

-- Display: Packet Length
nasdaq_utp_input_utp_v4_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_utp_input_utp_v4_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
nasdaq_utp_input_utp_v4_0.packet_type = {}

-- Size: Packet Type
nasdaq_utp_input_utp_v4_0.packet_type.size = 1

-- Display: Packet Type
nasdaq_utp_input_utp_v4_0.packet_type.display = function(value)
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "L" then
    return "Packet Type: Login Request Packet (L)"
  end
  if value == "A" then
    return "Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Packet Type: Login Rejected Packet (J)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "Z" then
    return "Packet Type: End Of Session Packet (Z)"
  end
  if value == "O" then
    return "Packet Type: Logout Request Packet (O)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
nasdaq_utp_input_utp_v4_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Part Token
nasdaq_utp_input_utp_v4_0.part_token = {}

-- Size: Part Token
nasdaq_utp_input_utp_v4_0.part_token.size = 8

-- Display: Part Token
nasdaq_utp_input_utp_v4_0.part_token.display = function(value)
  return "Part Token: "..value
end

-- Dissect: Part Token
nasdaq_utp_input_utp_v4_0.part_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.part_token.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_input_utp_v4_0.part_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.part_token, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_utp_input_utp_v4_0.password = {}

-- Size: Password
nasdaq_utp_input_utp_v4_0.password.size = 10

-- Display: Password
nasdaq_utp_input_utp_v4_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_utp_input_utp_v4_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_utp_input_utp_v4_0.price = {}

-- Size: Price
nasdaq_utp_input_utp_v4_0.price.size = 8

-- Display: Price
nasdaq_utp_input_utp_v4_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_utp_input_utp_v4_0.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
nasdaq_utp_input_utp_v4_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_input_utp_v4_0.price.translate(raw)
  local display = nasdaq_utp_input_utp_v4_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.price, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_utp_input_utp_v4_0.reason = {}

-- Size: Reason
nasdaq_utp_input_utp_v4_0.reason.size = 6

-- Display: Reason
nasdaq_utp_input_utp_v4_0.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_utp_input_utp_v4_0.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_input_utp_v4_0.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Reject Code
nasdaq_utp_input_utp_v4_0.reject_code = {}

-- Size: Reject Code
nasdaq_utp_input_utp_v4_0.reject_code.size = 2

-- Display: Reject Code
nasdaq_utp_input_utp_v4_0.reject_code.display = function(value)
  if value == 1 then
    return "Reject Code: Invalid Message Type (1)"
  end
  if value == 2 then
    return "Reject Code: Invalid Originating Participant (2)"
  end
  if value == 7 then
    return "Reject Code: Missing Message Gap Detected (7)"
  end
  if value == 11 then
    return "Reject Code: System Not Open (11)"
  end
  if value == 26 then
    return "Reject Code: Unknown Security Id (26)"
  end
  if value == 27 then
    return "Reject Code: Invalid Trade Cancellation Type (27)"
  end
  if value == 28 then
    return "Reject Code: Invalid Price (28)"
  end
  if value == 29 then
    return "Reject Code: Invalid Volume (29)"
  end
  if value == 31 then
    return "Reject Code: Invalid Condition (31)"
  end
  if value == 32 then
    return "Reject Code: Invalid Number Of Days Field (32)"
  end
  if value == 33 then
    return "Reject Code: Invalid Execution Side (33)"
  end
  if value == 36 then
    return "Reject Code: Security Halted (36)"
  end
  if value == 37 then
    return "Reject Code: Invalid Message Format (37)"
  end
  if value == 48 then
    return "Reject Code: Invalid Size (48)"
  end
  if value == 60 then
    return "Reject Code: Invalid Date And Time (60)"
  end
  if value == 62 then
    return "Reject Code: Market Open Message Not Received (62)"
  end
  if value == 66 then
    return "Reject Code: Invalid Mpid (66)"
  end
  if value == 68 then
    return "Reject Code: Invalid Finra Bbo Mpid (68)"
  end
  if value == 69 then
    return "Reject Code: Invalid Finra Bbo Price (69)"
  end
  if value == 70 then
    return "Reject Code: Invalid Finra Bbo Size (70)"
  end
  if value == 71 then
    return "Reject Code: Invalid Finra Bbo Cond (71)"
  end
  if value == 73 then
    return "Reject Code: Trade Doesnt Match (73)"
  end
  if value == 75 then
    return "Reject Code: Participant Halted (75)"
  end
  if value == 76 then
    return "Reject Code: Invalid Reversal Indicator (76)"
  end
  if value == 77 then
    return "Reject Code: Invalid Reason (77)"
  end
  if value == 79 then
    return "Reject Code: Market Wide Halt (79)"
  end
  if value == 80 then
    return "Reject Code: Invalid Retail Interest Indicator (80)"
  end
  if value == 82 then
    return "Reject Code: Invalid Reporting Time (82)"
  end
  if value == 83 then
    return "Reject Code: Unsupported Message Version (83)"
  end
  if value == 84 then
    return "Reject Code: Originating Participant Not Allowed (84)"
  end
  if value == 86 then
    return "Reject Code: Invalid Bbo Indicator (86)"
  end
  if value == 87 then
    return "Reject Code: Invalid Trade Through Exempt Flag (87)"
  end
  if value == 88 then
    return "Reject Code: Invalid Action (88)"
  end
  if value == 89 then
    return "Reject Code: Action Not Allowed (89)"
  end
  if value == 92 then
    return "Reject Code: Unexpected Trade Id (92)"
  end
  if value == 93 then
    return "Reject Code: Unexpected Trading Action Sequence (93)"
  end
  if value == 101 then
    return "Reject Code: Invalid Odd Level (101)"
  end

  return "Reject Code: Unknown("..value..")"
end

-- Dissect: Reject Code
nasdaq_utp_input_utp_v4_0.reject_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.reject_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.reject_code, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_utp_input_utp_v4_0.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_utp_input_utp_v4_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_utp_input_utp_v4_0.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_utp_input_utp_v4_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_utp_input_utp_v4_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_utp_input_utp_v4_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_utp_input_utp_v4_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_utp_input_utp_v4_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_utp_input_utp_v4_0.requested_session = {}

-- Size: Requested Session
nasdaq_utp_input_utp_v4_0.requested_session.size = 10

-- Display: Requested Session
nasdaq_utp_input_utp_v4_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_utp_input_utp_v4_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Return Administrative Messages Message Type
nasdaq_utp_input_utp_v4_0.return_administrative_messages_message_type = {}

-- Size: Return Administrative Messages Message Type
nasdaq_utp_input_utp_v4_0.return_administrative_messages_message_type.size = 1

-- Display: Return Administrative Messages Message Type
nasdaq_utp_input_utp_v4_0.return_administrative_messages_message_type.display = function(value)
  return "Return Administrative Messages Message Type: "..value
end

-- Dissect: Return Administrative Messages Message Type
nasdaq_utp_input_utp_v4_0.return_administrative_messages_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.return_administrative_messages_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.return_administrative_messages_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.return_administrative_messages_message_type, range, value, display)

  return offset + length, value
end

-- Return Control Messages Message Type
nasdaq_utp_input_utp_v4_0.return_control_messages_message_type = {}

-- Size: Return Control Messages Message Type
nasdaq_utp_input_utp_v4_0.return_control_messages_message_type.size = 1

-- Display: Return Control Messages Message Type
nasdaq_utp_input_utp_v4_0.return_control_messages_message_type.display = function(value)
  return "Return Control Messages Message Type: "..value
end

-- Dissect: Return Control Messages Message Type
nasdaq_utp_input_utp_v4_0.return_control_messages_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.return_control_messages_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.return_control_messages_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.return_control_messages_message_type, range, value, display)

  return offset + length, value
end

-- Reversal
nasdaq_utp_input_utp_v4_0.reversal = {}

-- Size: Reversal
nasdaq_utp_input_utp_v4_0.reversal.size = 1

-- Display: Reversal
nasdaq_utp_input_utp_v4_0.reversal.display = function(value)
  if value == "Y" then
    return "Reversal: Transaction Represents A Reversal (Y)"
  end
  if value == "N" then
    return "Reversal: Transaction Does Not Represent A Reversal (N)"
  end

  return "Reversal: Unknown("..value..")"
end

-- Dissect: Reversal
nasdaq_utp_input_utp_v4_0.reversal.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.reversal.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.reversal.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.reversal, range, value, display)

  return offset + length, value
end

-- Rii
nasdaq_utp_input_utp_v4_0.rii = {}

-- Size: Rii
nasdaq_utp_input_utp_v4_0.rii.size = 1

-- Display: Rii
nasdaq_utp_input_utp_v4_0.rii.display = function(value)
  if value == " " then
    return "Rii: Retail Interest Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Rii: Retail Interest On Bid Quote (A)"
  end
  if value == "B" then
    return "Rii: Retail Interest On Ask Quote (B)"
  end
  if value == "C" then
    return "Rii: Retail Interest On Both Bid And Ask Quote (C)"
  end

  return "Rii: Unknown("..value..")"
end

-- Dissect: Rii
nasdaq_utp_input_utp_v4_0.rii.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.rii.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.rii.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.rii, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_utp_input_utp_v4_0.side = {}

-- Size: Side
nasdaq_utp_input_utp_v4_0.side.size = 1

-- Display: Side
nasdaq_utp_input_utp_v4_0.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "X" then
    return "Side: Cross (X)"
  end
  if value == "R" then
    return "Side: Short Sale (R)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_utp_input_utp_v4_0.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.side, range, value, display)

  return offset + length, value
end

-- Sip State
nasdaq_utp_input_utp_v4_0.sip_state = {}

-- Size: Sip State
nasdaq_utp_input_utp_v4_0.sip_state.size = 1

-- Display: Sip State
nasdaq_utp_input_utp_v4_0.sip_state.display = function(value)
  if value == "N" then
    return "Sip State: Before Start Of Day Sod (N)"
  end
  if value == "S" then
    return "Sip State: After Start Of Day Sod Before End Of Day Eod (S)"
  end
  if value == "E" then
    return "Sip State: After End Of Day Eod (E)"
  end

  return "Sip State: Unknown("..value..")"
end

-- Dissect: Sip State
nasdaq_utp_input_utp_v4_0.sip_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.sip_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.sip_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.sip_state, range, value, display)

  return offset + length, value
end

-- Sip Time
nasdaq_utp_input_utp_v4_0.sip_time = {}

-- Size: Sip Time
nasdaq_utp_input_utp_v4_0.sip_time.size = 8

-- Display: Sip Time
nasdaq_utp_input_utp_v4_0.sip_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Sip Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sip Time
nasdaq_utp_input_utp_v4_0.sip_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.sip_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_input_utp_v4_0.sip_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.sip_time, range, value, display)

  return offset + length, value
end

-- Ssday
nasdaq_utp_input_utp_v4_0.ssday = {}

-- Size: Ssday
nasdaq_utp_input_utp_v4_0.ssday.size = 2

-- Display: Ssday
nasdaq_utp_input_utp_v4_0.ssday.display = function(value)
  return "Ssday: "..value
end

-- Dissect: Ssday
nasdaq_utp_input_utp_v4_0.ssday.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.ssday.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.ssday.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.ssday, range, value, display)

  return offset + length, value
end

-- Symbol Byte 11
nasdaq_utp_input_utp_v4_0.symbol_byte_11 = {}

-- Size: Symbol Byte 11
nasdaq_utp_input_utp_v4_0.symbol_byte_11.size = 11

-- Display: Symbol Byte 11
nasdaq_utp_input_utp_v4_0.symbol_byte_11.display = function(value)
  return "Symbol Byte 11: "..value
end

-- Dissect: Symbol Byte 11
nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.symbol_byte_11.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_input_utp_v4_0.symbol_byte_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.symbol_byte_11, range, value, display)

  return offset + length, value
end

-- Symbol Byte 5
nasdaq_utp_input_utp_v4_0.symbol_byte_5 = {}

-- Size: Symbol Byte 5
nasdaq_utp_input_utp_v4_0.symbol_byte_5.size = 5

-- Display: Symbol Byte 5
nasdaq_utp_input_utp_v4_0.symbol_byte_5.display = function(value)
  return "Symbol Byte 5: "..value
end

-- Dissect: Symbol Byte 5
nasdaq_utp_input_utp_v4_0.symbol_byte_5.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.symbol_byte_5.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_input_utp_v4_0.symbol_byte_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.symbol_byte_5, range, value, display)

  return offset + length, value
end

-- Symbol State
nasdaq_utp_input_utp_v4_0.symbol_state = {}

-- Size: Symbol State
nasdaq_utp_input_utp_v4_0.symbol_state.size = 1

-- Display: Symbol State
nasdaq_utp_input_utp_v4_0.symbol_state.display = function(value)
  if value == "H" then
    return "Symbol State: Trading Halt (H)"
  end
  if value == "Q" then
    return "Symbol State: Quotation Only (Q)"
  end
  if value == "T" then
    return "Symbol State: Trading (T)"
  end
  if value == "P" then
    return "Symbol State: Volatility Trading Pause (P)"
  end

  return "Symbol State: Unknown("..value..")"
end

-- Dissect: Symbol State
nasdaq_utp_input_utp_v4_0.symbol_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.symbol_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.symbol_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.symbol_state, range, value, display)

  return offset + length, value
end

-- Syntax Violation
nasdaq_utp_input_utp_v4_0.syntax_violation = {}

-- Size: Syntax Violation
nasdaq_utp_input_utp_v4_0.syntax_violation.size = 1

-- Display: Syntax Violation
nasdaq_utp_input_utp_v4_0.syntax_violation.display = function(value)
  if value == "Y" then
    return "Syntax Violation: Syntax Violation— Port Will Disconnect (Y)"
  end
  if value == "N" then
    return "Syntax Violation: No Syntax Violation (N)"
  end

  return "Syntax Violation: Unknown("..value..")"
end

-- Dissect: Syntax Violation
nasdaq_utp_input_utp_v4_0.syntax_violation.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.syntax_violation.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.syntax_violation.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.syntax_violation, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_utp_input_utp_v4_0.text = {}

-- Size: Text
nasdaq_utp_input_utp_v4_0.text.size = 0

-- Display: Text
nasdaq_utp_input_utp_v4_0.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_utp_input_utp_v4_0.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.text, range, value, display)

  return offset + length, value
end

-- Text Len
nasdaq_utp_input_utp_v4_0.text_len = {}

-- Size: Text Len
nasdaq_utp_input_utp_v4_0.text_len.size = 2

-- Display: Text Len
nasdaq_utp_input_utp_v4_0.text_len.display = function(value)
  return "Text Len: "..value
end

-- Dissect: Text Len
nasdaq_utp_input_utp_v4_0.text_len.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.text_len.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.text_len.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.text_len, range, value, display)

  return offset + length, value
end

-- Timestamp 1
nasdaq_utp_input_utp_v4_0.timestamp_1 = {}

-- Size: Timestamp 1
nasdaq_utp_input_utp_v4_0.timestamp_1.size = 8

-- Display: Timestamp 1
nasdaq_utp_input_utp_v4_0.timestamp_1.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp 1: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp 1
nasdaq_utp_input_utp_v4_0.timestamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.timestamp_1.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_input_utp_v4_0.timestamp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.timestamp_1, range, value, display)

  return offset + length, value
end

-- Timestamp 2
nasdaq_utp_input_utp_v4_0.timestamp_2 = {}

-- Size: Timestamp 2
nasdaq_utp_input_utp_v4_0.timestamp_2.size = 8

-- Display: Timestamp 2
nasdaq_utp_input_utp_v4_0.timestamp_2.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp 2: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp 2
nasdaq_utp_input_utp_v4_0.timestamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.timestamp_2.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_input_utp_v4_0.timestamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.timestamp_2, range, value, display)

  return offset + length, value
end

-- Trade Id
nasdaq_utp_input_utp_v4_0.trade_id = {}

-- Size: Trade Id
nasdaq_utp_input_utp_v4_0.trade_id.size = 4

-- Display: Trade Id
nasdaq_utp_input_utp_v4_0.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nasdaq_utp_input_utp_v4_0.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Time
nasdaq_utp_input_utp_v4_0.trade_time = {}

-- Size: Trade Time
nasdaq_utp_input_utp_v4_0.trade_time.size = 8

-- Display: Trade Time
nasdaq_utp_input_utp_v4_0.trade_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Trade Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trade Time
nasdaq_utp_input_utp_v4_0.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.trade_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_input_utp_v4_0.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Trcond
nasdaq_utp_input_utp_v4_0.trcond = {}

-- Size: Trcond
nasdaq_utp_input_utp_v4_0.trcond.size = 4

-- Display: Trcond
nasdaq_utp_input_utp_v4_0.trcond.display = function(value)
  return "Trcond: "..value
end

-- Dissect: Trcond
nasdaq_utp_input_utp_v4_0.trcond.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.trcond.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_input_utp_v4_0.trcond.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.trcond, range, value, display)

  return offset + length, value
end

-- Tt Exempt
nasdaq_utp_input_utp_v4_0.tt_exempt = {}

-- Size: Tt Exempt
nasdaq_utp_input_utp_v4_0.tt_exempt.size = 1

-- Display: Tt Exempt
nasdaq_utp_input_utp_v4_0.tt_exempt.display = function(value)
  if value == "X" then
    return "Tt Exempt: 611 Trade Through Exempt (X)"
  end
  if value == " " then
    return "Tt Exempt: Not 611 Trade Through Exempt (<whitespace>)"
  end

  return "Tt Exempt: Unknown("..value..")"
end

-- Dissect: Tt Exempt
nasdaq_utp_input_utp_v4_0.tt_exempt.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.tt_exempt.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.tt_exempt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.tt_exempt, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_utp_input_utp_v4_0.username = {}

-- Size: Username
nasdaq_utp_input_utp_v4_0.username.size = 6

-- Display: Username
nasdaq_utp_input_utp_v4_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_utp_input_utp_v4_0.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_input_utp_v4_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.username, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_utp_input_utp_v4_0.version = {}

-- Size: Version
nasdaq_utp_input_utp_v4_0.version.size = 1

-- Display: Version
nasdaq_utp_input_utp_v4_0.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_utp_input_utp_v4_0.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.version, range, value, display)

  return offset + length, value
end

-- Volume Int 4
nasdaq_utp_input_utp_v4_0.volume_int_4 = {}

-- Size: Volume Int 4
nasdaq_utp_input_utp_v4_0.volume_int_4.size = 4

-- Display: Volume Int 4
nasdaq_utp_input_utp_v4_0.volume_int_4.display = function(value)
  return "Volume Int 4: "..value
end

-- Dissect: Volume Int 4
nasdaq_utp_input_utp_v4_0.volume_int_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.volume_int_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.volume_int_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.volume_int_4, range, value, display)

  return offset + length, value
end

-- Volume Long 8
nasdaq_utp_input_utp_v4_0.volume_long_8 = {}

-- Size: Volume Long 8
nasdaq_utp_input_utp_v4_0.volume_long_8.size = 8

-- Display: Volume Long 8
nasdaq_utp_input_utp_v4_0.volume_long_8.display = function(value)
  return "Volume Long 8: "..value
end

-- Translate: Volume Long 8
nasdaq_utp_input_utp_v4_0.volume_long_8.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Volume Long 8
nasdaq_utp_input_utp_v4_0.volume_long_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.volume_long_8.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_input_utp_v4_0.volume_long_8.translate(raw)
  local display = nasdaq_utp_input_utp_v4_0.volume_long_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.volume_long_8, range, value, display)

  return offset + length, value
end

-- Warning Code
nasdaq_utp_input_utp_v4_0.warning_code = {}

-- Size: Warning Code
nasdaq_utp_input_utp_v4_0.warning_code.size = 2

-- Display: Warning Code
nasdaq_utp_input_utp_v4_0.warning_code.display = function(value)
  return "Warning Code: "..value
end

-- Dissect: Warning Code
nasdaq_utp_input_utp_v4_0.warning_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_input_utp_v4_0.warning_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_input_utp_v4_0.warning_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.warning_code, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Utp Input Utp 4.0
-----------------------------------------------------------------------

-- Login Rejected Packet
nasdaq_utp_input_utp_v4_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_utp_input_utp_v4_0.login_rejected_packet.size =
  nasdaq_utp_input_utp_v4_0.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_utp_input_utp_v4_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_utp_input_utp_v4_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_utp_input_utp_v4_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_utp_input_utp_v4_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_utp_input_utp_v4_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_utp_input_utp_v4_0.login_accepted_packet.size =
  nasdaq_utp_input_utp_v4_0.accepted_session.size + 
  nasdaq_utp_input_utp_v4_0.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_utp_input_utp_v4_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_utp_input_utp_v4_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_utp_input_utp_v4_0.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_utp_input_utp_v4_0.accepted_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_utp_input_utp_v4_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
nasdaq_utp_input_utp_v4_0.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_utp_input_utp_v4_0.login_request_packet.size =
  nasdaq_utp_input_utp_v4_0.username.size + 
  nasdaq_utp_input_utp_v4_0.password.size + 
  nasdaq_utp_input_utp_v4_0.requested_session.size + 
  nasdaq_utp_input_utp_v4_0.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_utp_input_utp_v4_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_utp_input_utp_v4_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_utp_input_utp_v4_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_utp_input_utp_v4_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_utp_input_utp_v4_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_utp_input_utp_v4_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_utp_input_utp_v4_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_utp_input_utp_v4_0.debug_packet = {}

-- Size: Debug Packet
nasdaq_utp_input_utp_v4_0.debug_packet.size =
  nasdaq_utp_input_utp_v4_0.text.size

-- Display: Debug Packet
nasdaq_utp_input_utp_v4_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_utp_input_utp_v4_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: varbyte[]
  index, text = nasdaq_utp_input_utp_v4_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_utp_input_utp_v4_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Symbol State Inquiry Response Message
nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_response_message = {}

-- Size: Symbol State Inquiry Response Message
nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_response_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.sip_time.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.next_trade_id.size + 
  nasdaq_utp_input_utp_v4_0.next_action_sequence.size + 
  nasdaq_utp_input_utp_v4_0.symbol_state.size

-- Display: Symbol State Inquiry Response Message
nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol State Inquiry Response Message
nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Sip Time: long
  index, sip_time = nasdaq_utp_input_utp_v4_0.sip_time.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Next Trade Id: int
  index, next_trade_id = nasdaq_utp_input_utp_v4_0.next_trade_id.dissect(buffer, index, packet, parent)

  -- Next Action Sequence: int
  index, next_action_sequence = nasdaq_utp_input_utp_v4_0.next_action_sequence.dissect(buffer, index, packet, parent)

  -- Symbol State: byte
  index, symbol_state = nasdaq_utp_input_utp_v4_0.symbol_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol State Inquiry Response Message
nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.symbol_state_inquiry_response_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Inquiry Response Message
nasdaq_utp_input_utp_v4_0.sequence_inquiry_response_message = {}

-- Size: Sequence Inquiry Response Message
nasdaq_utp_input_utp_v4_0.sequence_inquiry_response_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.sip_time.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.sip_state.size

-- Display: Sequence Inquiry Response Message
nasdaq_utp_input_utp_v4_0.sequence_inquiry_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Inquiry Response Message
nasdaq_utp_input_utp_v4_0.sequence_inquiry_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Sip Time: long
  index, sip_time = nasdaq_utp_input_utp_v4_0.sip_time.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Sip State: byte
  index, sip_state = nasdaq_utp_input_utp_v4_0.sip_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Inquiry Response Message
nasdaq_utp_input_utp_v4_0.sequence_inquiry_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.sequence_inquiry_response_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.sequence_inquiry_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.sequence_inquiry_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.sequence_inquiry_response_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Day Message
nasdaq_utp_input_utp_v4_0.end_of_day_message = {}

-- Size: End Of Day Message
nasdaq_utp_input_utp_v4_0.end_of_day_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.sip_time.size

-- Display: End Of Day Message
nasdaq_utp_input_utp_v4_0.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
nasdaq_utp_input_utp_v4_0.end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Sip Time: long
  index, sip_time = nasdaq_utp_input_utp_v4_0.sip_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
nasdaq_utp_input_utp_v4_0.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.end_of_day_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Day Message
nasdaq_utp_input_utp_v4_0.start_of_day_message = {}

-- Size: Start Of Day Message
nasdaq_utp_input_utp_v4_0.start_of_day_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.sip_time.size

-- Display: Start Of Day Message
nasdaq_utp_input_utp_v4_0.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
nasdaq_utp_input_utp_v4_0.start_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Sip Time: long
  index, sip_time = nasdaq_utp_input_utp_v4_0.sip_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
nasdaq_utp_input_utp_v4_0.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.start_of_day_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.start_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.start_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.start_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Return Control Messages Message Payload
nasdaq_utp_input_utp_v4_0.return_control_messages_message_payload = {}

-- Dissect: Return Control Messages Message Payload
nasdaq_utp_input_utp_v4_0.return_control_messages_message_payload.dissect = function(buffer, offset, packet, parent, return_control_messages_message_type)
  -- Dissect Start Of Day Message
  if return_control_messages_message_type == "E" then
    return nasdaq_utp_input_utp_v4_0.start_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if return_control_messages_message_type == "F" then
    return nasdaq_utp_input_utp_v4_0.end_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Inquiry Response Message
  if return_control_messages_message_type == "C" then
    return nasdaq_utp_input_utp_v4_0.sequence_inquiry_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol State Inquiry Response Message
  if return_control_messages_message_type == "S" then
    return nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_response_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Return Control Messages Message
nasdaq_utp_input_utp_v4_0.return_control_messages_message = {}

-- Calculate size of: Return Control Messages Message
nasdaq_utp_input_utp_v4_0.return_control_messages_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_input_utp_v4_0.return_control_messages_message_type.size

  -- Calculate runtime size of Return Control Messages Message Payload field
  local return_control_messages_message_payload_offset = offset + index
  local return_control_messages_message_payload_type = buffer(return_control_messages_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utp_input_utp_v4_0.return_control_messages_message_payload.size(buffer, return_control_messages_message_payload_offset, return_control_messages_message_payload_type)

  return index
end

-- Display: Return Control Messages Message
nasdaq_utp_input_utp_v4_0.return_control_messages_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Return Control Messages Message
nasdaq_utp_input_utp_v4_0.return_control_messages_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Return Control Messages Message Type: 1 Byte Ascii String
  index, return_control_messages_message_type = nasdaq_utp_input_utp_v4_0.return_control_messages_message_type.dissect(buffer, index, packet, parent)

  -- Return Control Messages Message Payload: Runtime Type with 4 branches
  index = nasdaq_utp_input_utp_v4_0.return_control_messages_message_payload.dissect(buffer, index, packet, parent, return_control_messages_message_type)

  return index
end

-- Dissect: Return Control Messages Message
nasdaq_utp_input_utp_v4_0.return_control_messages_message.dissect = function(buffer, offset, packet, parent)
  if show.return_control_messages_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.return_control_messages_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.return_control_messages_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.return_control_messages_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.return_control_messages_message.fields(buffer, offset, packet, parent)
  end
end

-- Participant Input Warning Message
nasdaq_utp_input_utp_v4_0.participant_input_warning_message = {}

-- Size: Participant Input Warning Message
nasdaq_utp_input_utp_v4_0.participant_input_warning_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.sip_time.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.warning_code.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.ol_attachmen_type.size + 
  nasdaq_utp_input_utp_v4_0.ol_attachment_count.size

-- Display: Participant Input Warning Message
nasdaq_utp_input_utp_v4_0.participant_input_warning_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant Input Warning Message
nasdaq_utp_input_utp_v4_0.participant_input_warning_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Sip Time: long
  index, sip_time = nasdaq_utp_input_utp_v4_0.sip_time.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Warning Code: short
  index, warning_code = nasdaq_utp_input_utp_v4_0.warning_code.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Ol Attachmen Type: byte
  index, ol_attachmen_type = nasdaq_utp_input_utp_v4_0.ol_attachmen_type.dissect(buffer, index, packet, parent)

  -- Ol Attachment Count: short
  index, ol_attachment_count = nasdaq_utp_input_utp_v4_0.ol_attachment_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Input Warning Message
nasdaq_utp_input_utp_v4_0.participant_input_warning_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.participant_input_warning_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.participant_input_warning_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.participant_input_warning_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.participant_input_warning_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Acknowledgement Message
nasdaq_utp_input_utp_v4_0.sequence_acknowledgement_message = {}

-- Size: Sequence Acknowledgement Message
nasdaq_utp_input_utp_v4_0.sequence_acknowledgement_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.sip_time.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size

-- Display: Sequence Acknowledgement Message
nasdaq_utp_input_utp_v4_0.sequence_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Acknowledgement Message
nasdaq_utp_input_utp_v4_0.sequence_acknowledgement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Sip Time: long
  index, sip_time = nasdaq_utp_input_utp_v4_0.sip_time.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Acknowledgement Message
nasdaq_utp_input_utp_v4_0.sequence_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.sequence_acknowledgement_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.sequence_acknowledgement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.sequence_acknowledgement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.sequence_acknowledgement_message.fields(buffer, offset, packet, parent)
  end
end

-- Reject Message
nasdaq_utp_input_utp_v4_0.reject_message = {}

-- Size: Reject Message
nasdaq_utp_input_utp_v4_0.reject_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.sip_time.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.reject_code.size + 
  nasdaq_utp_input_utp_v4_0.syntax_violation.size

-- Display: Reject Message
nasdaq_utp_input_utp_v4_0.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
nasdaq_utp_input_utp_v4_0.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Sip Time: long
  index, sip_time = nasdaq_utp_input_utp_v4_0.sip_time.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Reject Code: short
  index, reject_code = nasdaq_utp_input_utp_v4_0.reject_code.dissect(buffer, index, packet, parent)

  -- Syntax Violation: byte
  index, syntax_violation = nasdaq_utp_input_utp_v4_0.syntax_violation.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
nasdaq_utp_input_utp_v4_0.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.reject_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Return Market Closed Message
nasdaq_utp_input_utp_v4_0.return_market_closed_message = {}

-- Size: Return Market Closed Message
nasdaq_utp_input_utp_v4_0.return_market_closed_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.sip_time.size

-- Display: Return Market Closed Message
nasdaq_utp_input_utp_v4_0.return_market_closed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Return Market Closed Message
nasdaq_utp_input_utp_v4_0.return_market_closed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Sip Time: long
  index, sip_time = nasdaq_utp_input_utp_v4_0.sip_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Return Market Closed Message
nasdaq_utp_input_utp_v4_0.return_market_closed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.return_market_closed_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.return_market_closed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.return_market_closed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.return_market_closed_message.fields(buffer, offset, packet, parent)
  end
end

-- Return Market Open Message
nasdaq_utp_input_utp_v4_0.return_market_open_message = {}

-- Size: Return Market Open Message
nasdaq_utp_input_utp_v4_0.return_market_open_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.sip_time.size

-- Display: Return Market Open Message
nasdaq_utp_input_utp_v4_0.return_market_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Return Market Open Message
nasdaq_utp_input_utp_v4_0.return_market_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Sip Time: long
  index, sip_time = nasdaq_utp_input_utp_v4_0.sip_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Return Market Open Message
nasdaq_utp_input_utp_v4_0.return_market_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.return_market_open_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.return_market_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.return_market_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.return_market_open_message.fields(buffer, offset, packet, parent)
  end
end

-- Return Market Center Trading Action Acknowledgement Message
nasdaq_utp_input_utp_v4_0.return_market_center_trading_action_acknowledgement_message = {}

-- Size: Return Market Center Trading Action Acknowledgement Message
nasdaq_utp_input_utp_v4_0.return_market_center_trading_action_acknowledgement_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.sip_time.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.action.size + 
  nasdaq_utp_input_utp_v4_0.action_time.size

-- Display: Return Market Center Trading Action Acknowledgement Message
nasdaq_utp_input_utp_v4_0.return_market_center_trading_action_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Return Market Center Trading Action Acknowledgement Message
nasdaq_utp_input_utp_v4_0.return_market_center_trading_action_acknowledgement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Sip Time: long
  index, sip_time = nasdaq_utp_input_utp_v4_0.sip_time.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Action: byte
  index, action = nasdaq_utp_input_utp_v4_0.action.dissect(buffer, index, packet, parent)

  -- Action Time: long
  index, action_time = nasdaq_utp_input_utp_v4_0.action_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Return Market Center Trading Action Acknowledgement Message
nasdaq_utp_input_utp_v4_0.return_market_center_trading_action_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.return_market_center_trading_action_acknowledgement_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.return_market_center_trading_action_acknowledgement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.return_market_center_trading_action_acknowledgement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.return_market_center_trading_action_acknowledgement_message.fields(buffer, offset, packet, parent)
  end
end

-- Return General Administrative Message
nasdaq_utp_input_utp_v4_0.return_general_administrative_message = {}

-- Size: Return General Administrative Message
nasdaq_utp_input_utp_v4_0.return_general_administrative_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.sip_time.size + 
  nasdaq_utp_input_utp_v4_0.text_len.size + 
  nasdaq_utp_input_utp_v4_0.text.size

-- Display: Return General Administrative Message
nasdaq_utp_input_utp_v4_0.return_general_administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Return General Administrative Message
nasdaq_utp_input_utp_v4_0.return_general_administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Sip Time: long
  index, sip_time = nasdaq_utp_input_utp_v4_0.sip_time.dissect(buffer, index, packet, parent)

  -- Text Len: short
  index, text_len = nasdaq_utp_input_utp_v4_0.text_len.dissect(buffer, index, packet, parent)

  -- Text: varbyte[]
  index, text = nasdaq_utp_input_utp_v4_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Return General Administrative Message
nasdaq_utp_input_utp_v4_0.return_general_administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.return_general_administrative_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.return_general_administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.return_general_administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.return_general_administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Return Administrative Messages Message Payload
nasdaq_utp_input_utp_v4_0.return_administrative_messages_message_payload = {}

-- Dissect: Return Administrative Messages Message Payload
nasdaq_utp_input_utp_v4_0.return_administrative_messages_message_payload.dissect = function(buffer, offset, packet, parent, return_administrative_messages_message_type)
  -- Dissect Return General Administrative Message
  if return_administrative_messages_message_type == "A" then
    return nasdaq_utp_input_utp_v4_0.return_general_administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Return Market Center Trading Action Acknowledgement Message
  if return_administrative_messages_message_type == "J" then
    return nasdaq_utp_input_utp_v4_0.return_market_center_trading_action_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Return Market Open Message
  if return_administrative_messages_message_type == "X" then
    return nasdaq_utp_input_utp_v4_0.return_market_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Return Market Closed Message
  if return_administrative_messages_message_type == "Y" then
    return nasdaq_utp_input_utp_v4_0.return_market_closed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reject Message
  if return_administrative_messages_message_type == "R" then
    return nasdaq_utp_input_utp_v4_0.reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Acknowledgement Message
  if return_administrative_messages_message_type == "K" then
    return nasdaq_utp_input_utp_v4_0.sequence_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Participant Input Warning Message
  if return_administrative_messages_message_type == "W" then
    return nasdaq_utp_input_utp_v4_0.participant_input_warning_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Return Administrative Messages Message
nasdaq_utp_input_utp_v4_0.return_administrative_messages_message = {}

-- Calculate size of: Return Administrative Messages Message
nasdaq_utp_input_utp_v4_0.return_administrative_messages_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_input_utp_v4_0.return_administrative_messages_message_type.size

  -- Calculate runtime size of Return Administrative Messages Message Payload field
  local return_administrative_messages_message_payload_offset = offset + index
  local return_administrative_messages_message_payload_type = buffer(return_administrative_messages_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utp_input_utp_v4_0.return_administrative_messages_message_payload.size(buffer, return_administrative_messages_message_payload_offset, return_administrative_messages_message_payload_type)

  return index
end

-- Display: Return Administrative Messages Message
nasdaq_utp_input_utp_v4_0.return_administrative_messages_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Return Administrative Messages Message
nasdaq_utp_input_utp_v4_0.return_administrative_messages_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Return Administrative Messages Message Type: 1 Byte Ascii String
  index, return_administrative_messages_message_type = nasdaq_utp_input_utp_v4_0.return_administrative_messages_message_type.dissect(buffer, index, packet, parent)

  -- Return Administrative Messages Message Payload: Runtime Type with 7 branches
  index = nasdaq_utp_input_utp_v4_0.return_administrative_messages_message_payload.dissect(buffer, index, packet, parent, return_administrative_messages_message_type)

  return index
end

-- Dissect: Return Administrative Messages Message
nasdaq_utp_input_utp_v4_0.return_administrative_messages_message.dissect = function(buffer, offset, packet, parent)
  if show.return_administrative_messages_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.return_administrative_messages_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.return_administrative_messages_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.return_administrative_messages_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.return_administrative_messages_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Participant Reporting Message
nasdaq_utp_input_utp_v4_0.end_of_participant_reporting_message = {}

-- Size: End Of Participant Reporting Message
nasdaq_utp_input_utp_v4_0.end_of_participant_reporting_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size

-- Display: End Of Participant Reporting Message
nasdaq_utp_input_utp_v4_0.end_of_participant_reporting_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Participant Reporting Message
nasdaq_utp_input_utp_v4_0.end_of_participant_reporting_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Participant Reporting Message
nasdaq_utp_input_utp_v4_0.end_of_participant_reporting_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.end_of_participant_reporting_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.end_of_participant_reporting_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.end_of_participant_reporting_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.end_of_participant_reporting_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol State Inquiry Message
nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_message = {}

-- Size: Symbol State Inquiry Message
nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size

-- Display: Symbol State Inquiry Message
nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol State Inquiry Message
nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol State Inquiry Message
nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.symbol_state_inquiry_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Inquiry Message
nasdaq_utp_input_utp_v4_0.sequence_inquiry_message = {}

-- Size: Sequence Inquiry Message
nasdaq_utp_input_utp_v4_0.sequence_inquiry_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size

-- Display: Sequence Inquiry Message
nasdaq_utp_input_utp_v4_0.sequence_inquiry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Inquiry Message
nasdaq_utp_input_utp_v4_0.sequence_inquiry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Inquiry Message
nasdaq_utp_input_utp_v4_0.sequence_inquiry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.sequence_inquiry_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.sequence_inquiry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.sequence_inquiry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.sequence_inquiry_message.fields(buffer, offset, packet, parent)
  end
end

-- Inbound Control Messages Message Payload
nasdaq_utp_input_utp_v4_0.inbound_control_messages_message_payload = {}

-- Dissect: Inbound Control Messages Message Payload
nasdaq_utp_input_utp_v4_0.inbound_control_messages_message_payload.dissect = function(buffer, offset, packet, parent, inbound_control_messages_message_type)
  -- Dissect Sequence Inquiry Message
  if inbound_control_messages_message_type == "C" then
    return nasdaq_utp_input_utp_v4_0.sequence_inquiry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol State Inquiry Message
  if inbound_control_messages_message_type == "S" then
    return nasdaq_utp_input_utp_v4_0.symbol_state_inquiry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Participant Reporting Message
  if inbound_control_messages_message_type == "G" then
    return nasdaq_utp_input_utp_v4_0.end_of_participant_reporting_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Inbound Control Messages Message
nasdaq_utp_input_utp_v4_0.inbound_control_messages_message = {}

-- Calculate size of: Inbound Control Messages Message
nasdaq_utp_input_utp_v4_0.inbound_control_messages_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_input_utp_v4_0.inbound_control_messages_message_type.size

  -- Calculate runtime size of Inbound Control Messages Message Payload field
  local inbound_control_messages_message_payload_offset = offset + index
  local inbound_control_messages_message_payload_type = buffer(inbound_control_messages_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utp_input_utp_v4_0.inbound_control_messages_message_payload.size(buffer, inbound_control_messages_message_payload_offset, inbound_control_messages_message_payload_type)

  return index
end

-- Display: Inbound Control Messages Message
nasdaq_utp_input_utp_v4_0.inbound_control_messages_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inbound Control Messages Message
nasdaq_utp_input_utp_v4_0.inbound_control_messages_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Control Messages Message Type: 1 Byte Ascii String
  index, inbound_control_messages_message_type = nasdaq_utp_input_utp_v4_0.inbound_control_messages_message_type.dissect(buffer, index, packet, parent)

  -- Inbound Control Messages Message Payload: Runtime Type with 3 branches
  index = nasdaq_utp_input_utp_v4_0.inbound_control_messages_message_payload.dissect(buffer, index, packet, parent, inbound_control_messages_message_type)

  return index
end

-- Dissect: Inbound Control Messages Message
nasdaq_utp_input_utp_v4_0.inbound_control_messages_message.dissect = function(buffer, offset, packet, parent)
  if show.inbound_control_messages_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.inbound_control_messages_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.inbound_control_messages_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.inbound_control_messages_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.inbound_control_messages_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Collar Message
nasdaq_utp_input_utp_v4_0.auction_collar_message = {}

-- Size: Auction Collar Message
nasdaq_utp_input_utp_v4_0.auction_collar_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.action_sequence.size + 
  nasdaq_utp_input_utp_v4_0.collar_reference_price.size + 
  nasdaq_utp_input_utp_v4_0.collar_up_price.size + 
  nasdaq_utp_input_utp_v4_0.collar_down_price.size + 
  nasdaq_utp_input_utp_v4_0.collar_extension.size

-- Display: Auction Collar Message
nasdaq_utp_input_utp_v4_0.auction_collar_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Collar Message
nasdaq_utp_input_utp_v4_0.auction_collar_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Action Sequence: int
  index, action_sequence = nasdaq_utp_input_utp_v4_0.action_sequence.dissect(buffer, index, packet, parent)

  -- Collar Reference Price: long
  index, collar_reference_price = nasdaq_utp_input_utp_v4_0.collar_reference_price.dissect(buffer, index, packet, parent)

  -- Collar Up Price: long
  index, collar_up_price = nasdaq_utp_input_utp_v4_0.collar_up_price.dissect(buffer, index, packet, parent)

  -- Collar Down Price: long
  index, collar_down_price = nasdaq_utp_input_utp_v4_0.collar_down_price.dissect(buffer, index, packet, parent)

  -- Collar Extension: byte
  index, collar_extension = nasdaq_utp_input_utp_v4_0.collar_extension.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Collar Message
nasdaq_utp_input_utp_v4_0.auction_collar_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.auction_collar_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.auction_collar_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.auction_collar_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.auction_collar_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Closed Message
nasdaq_utp_input_utp_v4_0.market_closed_message = {}

-- Size: Market Closed Message
nasdaq_utp_input_utp_v4_0.market_closed_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size

-- Display: Market Closed Message
nasdaq_utp_input_utp_v4_0.market_closed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Closed Message
nasdaq_utp_input_utp_v4_0.market_closed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Closed Message
nasdaq_utp_input_utp_v4_0.market_closed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.market_closed_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.market_closed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.market_closed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.market_closed_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Open Message
nasdaq_utp_input_utp_v4_0.market_open_message = {}

-- Size: Market Open Message
nasdaq_utp_input_utp_v4_0.market_open_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size

-- Display: Market Open Message
nasdaq_utp_input_utp_v4_0.market_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Open Message
nasdaq_utp_input_utp_v4_0.market_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Open Message
nasdaq_utp_input_utp_v4_0.market_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.market_open_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.market_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.market_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.market_open_message.fields(buffer, offset, packet, parent)
  end
end

-- T 1 Adjusted Closing Price Message
nasdaq_utp_input_utp_v4_0.t_1_adjusted_closing_price_message = {}

-- Size: T 1 Adjusted Closing Price Message
nasdaq_utp_input_utp_v4_0.t_1_adjusted_closing_price_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.price.size

-- Display: T 1 Adjusted Closing Price Message
nasdaq_utp_input_utp_v4_0.t_1_adjusted_closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: T 1 Adjusted Closing Price Message
nasdaq_utp_input_utp_v4_0.t_1_adjusted_closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Price: long
  index, price = nasdaq_utp_input_utp_v4_0.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: T 1 Adjusted Closing Price Message
nasdaq_utp_input_utp_v4_0.t_1_adjusted_closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.t_1_adjusted_closing_price_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.t_1_adjusted_closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.t_1_adjusted_closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.t_1_adjusted_closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Opening Reference Midpoint Price Message
nasdaq_utp_input_utp_v4_0.opening_reference_midpoint_price_message = {}

-- Size: Opening Reference Midpoint Price Message
nasdaq_utp_input_utp_v4_0.opening_reference_midpoint_price_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.price.size

-- Display: Opening Reference Midpoint Price Message
nasdaq_utp_input_utp_v4_0.opening_reference_midpoint_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Opening Reference Midpoint Price Message
nasdaq_utp_input_utp_v4_0.opening_reference_midpoint_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Price: long
  index, price = nasdaq_utp_input_utp_v4_0.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Opening Reference Midpoint Price Message
nasdaq_utp_input_utp_v4_0.opening_reference_midpoint_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.opening_reference_midpoint_price_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.opening_reference_midpoint_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.opening_reference_midpoint_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.opening_reference_midpoint_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utp_input_utp_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utp_input_utp_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utp_input_utp_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utp_input_utp_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Action: byte
  index, action = nasdaq_utp_input_utp_v4_0.action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utp_input_utp_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Center Mass Trading Action Message
nasdaq_utp_input_utp_v4_0.market_center_mass_trading_action_message = {}

-- Size: Market Center Mass Trading Action Message
nasdaq_utp_input_utp_v4_0.market_center_mass_trading_action_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.first_security.size + 
  nasdaq_utp_input_utp_v4_0.last_security.size + 
  nasdaq_utp_input_utp_v4_0.action.size + 
  nasdaq_utp_input_utp_v4_0.action_time.size

-- Display: Market Center Mass Trading Action Message
nasdaq_utp_input_utp_v4_0.market_center_mass_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Mass Trading Action Message
nasdaq_utp_input_utp_v4_0.market_center_mass_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- First Security: byte[]
  index, first_security = nasdaq_utp_input_utp_v4_0.first_security.dissect(buffer, index, packet, parent)

  -- Last Security: byte[]
  index, last_security = nasdaq_utp_input_utp_v4_0.last_security.dissect(buffer, index, packet, parent)

  -- Action: byte
  index, action = nasdaq_utp_input_utp_v4_0.action.dissect(buffer, index, packet, parent)

  -- Action Time: long
  index, action_time = nasdaq_utp_input_utp_v4_0.action_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Mass Trading Action Message
nasdaq_utp_input_utp_v4_0.market_center_mass_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.market_center_mass_trading_action_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.market_center_mass_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.market_center_mass_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.market_center_mass_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Center Trading Action Message
nasdaq_utp_input_utp_v4_0.market_center_trading_action_message = {}

-- Size: Market Center Trading Action Message
nasdaq_utp_input_utp_v4_0.market_center_trading_action_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.action.size + 
  nasdaq_utp_input_utp_v4_0.action_time.size

-- Display: Market Center Trading Action Message
nasdaq_utp_input_utp_v4_0.market_center_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Trading Action Message
nasdaq_utp_input_utp_v4_0.market_center_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Action: byte
  index, action = nasdaq_utp_input_utp_v4_0.action.dissect(buffer, index, packet, parent)

  -- Action Time: long
  index, action_time = nasdaq_utp_input_utp_v4_0.action_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Trading Action Message
nasdaq_utp_input_utp_v4_0.market_center_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.market_center_trading_action_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.market_center_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.market_center_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.market_center_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
nasdaq_utp_input_utp_v4_0.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_utp_input_utp_v4_0.trading_action_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.action.size + 
  nasdaq_utp_input_utp_v4_0.action_sequence.size + 
  nasdaq_utp_input_utp_v4_0.action_time.size + 
  nasdaq_utp_input_utp_v4_0.reason.size

-- Display: Trading Action Message
nasdaq_utp_input_utp_v4_0.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_utp_input_utp_v4_0.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Action: byte
  index, action = nasdaq_utp_input_utp_v4_0.action.dissect(buffer, index, packet, parent)

  -- Action Sequence: int
  index, action_sequence = nasdaq_utp_input_utp_v4_0.action_sequence.dissect(buffer, index, packet, parent)

  -- Action Time: long
  index, action_time = nasdaq_utp_input_utp_v4_0.action_time.dissect(buffer, index, packet, parent)

  -- Reason: byte[]
  index, reason = nasdaq_utp_input_utp_v4_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_utp_input_utp_v4_0.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- General Administrative Message
nasdaq_utp_input_utp_v4_0.general_administrative_message = {}

-- Size: General Administrative Message
nasdaq_utp_input_utp_v4_0.general_administrative_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.text_len.size + 
  nasdaq_utp_input_utp_v4_0.text.size

-- Display: General Administrative Message
nasdaq_utp_input_utp_v4_0.general_administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Administrative Message
nasdaq_utp_input_utp_v4_0.general_administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Text Len: short
  index, text_len = nasdaq_utp_input_utp_v4_0.text_len.dissect(buffer, index, packet, parent)

  -- Text: varbyte[]
  index, text = nasdaq_utp_input_utp_v4_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: General Administrative Message
nasdaq_utp_input_utp_v4_0.general_administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.general_administrative_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.general_administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.general_administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.general_administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Inbound Administrative Messages Message Payload
nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message_payload = {}

-- Dissect: Inbound Administrative Messages Message Payload
nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message_payload.dissect = function(buffer, offset, packet, parent, inbound_administrative_messages_message_type)
  -- Dissect General Administrative Message
  if inbound_administrative_messages_message_type == "A" then
    return nasdaq_utp_input_utp_v4_0.general_administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if inbound_administrative_messages_message_type == "O" then
    return nasdaq_utp_input_utp_v4_0.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Center Trading Action Message
  if inbound_administrative_messages_message_type == "J" then
    return nasdaq_utp_input_utp_v4_0.market_center_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Center Mass Trading Action Message
  if inbound_administrative_messages_message_type == "U" then
    return nasdaq_utp_input_utp_v4_0.market_center_mass_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if inbound_administrative_messages_message_type == "V" then
    return nasdaq_utp_input_utp_v4_0.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Opening Reference Midpoint Price Message
  if inbound_administrative_messages_message_type == "M" then
    return nasdaq_utp_input_utp_v4_0.opening_reference_midpoint_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect T 1 Adjusted Closing Price Message
  if inbound_administrative_messages_message_type == "N" then
    return nasdaq_utp_input_utp_v4_0.t_1_adjusted_closing_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Open Message
  if inbound_administrative_messages_message_type == "X" then
    return nasdaq_utp_input_utp_v4_0.market_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Closed Message
  if inbound_administrative_messages_message_type == "Y" then
    return nasdaq_utp_input_utp_v4_0.market_closed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Collar Message
  if inbound_administrative_messages_message_type == "E" then
    return nasdaq_utp_input_utp_v4_0.auction_collar_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Inbound Administrative Messages Message
nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message = {}

-- Calculate size of: Inbound Administrative Messages Message
nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message_type.size

  -- Calculate runtime size of Inbound Administrative Messages Message Payload field
  local inbound_administrative_messages_message_payload_offset = offset + index
  local inbound_administrative_messages_message_payload_type = buffer(inbound_administrative_messages_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message_payload.size(buffer, inbound_administrative_messages_message_payload_offset, inbound_administrative_messages_message_payload_type)

  return index
end

-- Display: Inbound Administrative Messages Message
nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inbound Administrative Messages Message
nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Administrative Messages Message Type: 1 Byte Ascii String
  index, inbound_administrative_messages_message_type = nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message_type.dissect(buffer, index, packet, parent)

  -- Inbound Administrative Messages Message Payload: Runtime Type with 10 branches
  index = nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message_payload.dissect(buffer, index, packet, parent, inbound_administrative_messages_message_type)

  return index
end

-- Dissect: Inbound Administrative Messages Message
nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message.dissect = function(buffer, offset, packet, parent)
  if show.inbound_administrative_messages_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.inbound_administrative_messages_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional As Of Trade Report Message
nasdaq_utp_input_utp_v4_0.fractional_as_of_trade_report_message = {}

-- Size: Fractional As Of Trade Report Message
nasdaq_utp_input_utp_v4_0.fractional_as_of_trade_report_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.trade_id.size + 
  nasdaq_utp_input_utp_v4_0.tt_exempt.size + 
  nasdaq_utp_input_utp_v4_0.trcond.size + 
  nasdaq_utp_input_utp_v4_0.ssday.size + 
  nasdaq_utp_input_utp_v4_0.side.size + 
  nasdaq_utp_input_utp_v4_0.price.size + 
  nasdaq_utp_input_utp_v4_0.volume_long_8.size + 
  nasdaq_utp_input_utp_v4_0.trade_time.size + 
  nasdaq_utp_input_utp_v4_0.reversal.size

-- Display: Fractional As Of Trade Report Message
nasdaq_utp_input_utp_v4_0.fractional_as_of_trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional As Of Trade Report Message
nasdaq_utp_input_utp_v4_0.fractional_as_of_trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Trade Id: int
  index, trade_id = nasdaq_utp_input_utp_v4_0.trade_id.dissect(buffer, index, packet, parent)

  -- Tt Exempt: byte
  index, tt_exempt = nasdaq_utp_input_utp_v4_0.tt_exempt.dissect(buffer, index, packet, parent)

  -- Trcond: byte[]
  index, trcond = nasdaq_utp_input_utp_v4_0.trcond.dissect(buffer, index, packet, parent)

  -- Ssday: short
  index, ssday = nasdaq_utp_input_utp_v4_0.ssday.dissect(buffer, index, packet, parent)

  -- Side: byte
  index, side = nasdaq_utp_input_utp_v4_0.side.dissect(buffer, index, packet, parent)

  -- Price: long
  index, price = nasdaq_utp_input_utp_v4_0.price.dissect(buffer, index, packet, parent)

  -- Volume Long 8: long
  index, volume_long_8 = nasdaq_utp_input_utp_v4_0.volume_long_8.dissect(buffer, index, packet, parent)

  -- Trade Time: long
  index, trade_time = nasdaq_utp_input_utp_v4_0.trade_time.dissect(buffer, index, packet, parent)

  -- Reversal: byte
  index, reversal = nasdaq_utp_input_utp_v4_0.reversal.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional As Of Trade Report Message
nasdaq_utp_input_utp_v4_0.fractional_as_of_trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.fractional_as_of_trade_report_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.fractional_as_of_trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.fractional_as_of_trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.fractional_as_of_trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Trade Correction Message
nasdaq_utp_input_utp_v4_0.fractional_trade_correction_message = {}

-- Size: Fractional Trade Correction Message
nasdaq_utp_input_utp_v4_0.fractional_trade_correction_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_2.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.trade_id.size + 
  nasdaq_utp_input_utp_v4_0.orig_trade_id.size + 
  nasdaq_utp_input_utp_v4_0.orig_tt_exempt.size + 
  nasdaq_utp_input_utp_v4_0.orig_trcond.size + 
  nasdaq_utp_input_utp_v4_0.orig_ssday.size + 
  nasdaq_utp_input_utp_v4_0.side.size + 
  nasdaq_utp_input_utp_v4_0.orig_price.size + 
  nasdaq_utp_input_utp_v4_0.orig_volume_long_8.size + 
  nasdaq_utp_input_utp_v4_0.new_tt_exempt.size + 
  nasdaq_utp_input_utp_v4_0.new_trcond.size + 
  nasdaq_utp_input_utp_v4_0.new_ssday.size + 
  nasdaq_utp_input_utp_v4_0.new_price.size + 
  nasdaq_utp_input_utp_v4_0.new_volume_long_8.size

-- Display: Fractional Trade Correction Message
nasdaq_utp_input_utp_v4_0.fractional_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Trade Correction Message
nasdaq_utp_input_utp_v4_0.fractional_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utp_input_utp_v4_0.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Trade Id: int
  index, trade_id = nasdaq_utp_input_utp_v4_0.trade_id.dissect(buffer, index, packet, parent)

  -- Orig Trade Id: int
  index, orig_trade_id = nasdaq_utp_input_utp_v4_0.orig_trade_id.dissect(buffer, index, packet, parent)

  -- Orig Tt Exempt: byte
  index, orig_tt_exempt = nasdaq_utp_input_utp_v4_0.orig_tt_exempt.dissect(buffer, index, packet, parent)

  -- Orig Trcond: byte[]
  index, orig_trcond = nasdaq_utp_input_utp_v4_0.orig_trcond.dissect(buffer, index, packet, parent)

  -- Orig Ssday: short
  index, orig_ssday = nasdaq_utp_input_utp_v4_0.orig_ssday.dissect(buffer, index, packet, parent)

  -- Side: byte
  index, side = nasdaq_utp_input_utp_v4_0.side.dissect(buffer, index, packet, parent)

  -- Orig Price: long
  index, orig_price = nasdaq_utp_input_utp_v4_0.orig_price.dissect(buffer, index, packet, parent)

  -- Orig Volume Long 8: long
  index, orig_volume_long_8 = nasdaq_utp_input_utp_v4_0.orig_volume_long_8.dissect(buffer, index, packet, parent)

  -- New Tt Exempt: byte
  index, new_tt_exempt = nasdaq_utp_input_utp_v4_0.new_tt_exempt.dissect(buffer, index, packet, parent)

  -- New Trcond: byte[]
  index, new_trcond = nasdaq_utp_input_utp_v4_0.new_trcond.dissect(buffer, index, packet, parent)

  -- New Ssday: short
  index, new_ssday = nasdaq_utp_input_utp_v4_0.new_ssday.dissect(buffer, index, packet, parent)

  -- New Price: long
  index, new_price = nasdaq_utp_input_utp_v4_0.new_price.dissect(buffer, index, packet, parent)

  -- New Volume Long 8: long
  index, new_volume_long_8 = nasdaq_utp_input_utp_v4_0.new_volume_long_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Trade Correction Message
nasdaq_utp_input_utp_v4_0.fractional_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.fractional_trade_correction_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.fractional_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.fractional_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.fractional_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Trade Cancel Error Message
nasdaq_utp_input_utp_v4_0.fractional_trade_cancel_error_message = {}

-- Size: Fractional Trade Cancel Error Message
nasdaq_utp_input_utp_v4_0.fractional_trade_cancel_error_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_2.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.cancel_type.size + 
  nasdaq_utp_input_utp_v4_0.orig_trade_id.size + 
  nasdaq_utp_input_utp_v4_0.orig_tt_exempt.size + 
  nasdaq_utp_input_utp_v4_0.orig_trcond.size + 
  nasdaq_utp_input_utp_v4_0.orig_ssday.size + 
  nasdaq_utp_input_utp_v4_0.orig_side.size + 
  nasdaq_utp_input_utp_v4_0.orig_price.size + 
  nasdaq_utp_input_utp_v4_0.orig_volume_long_8.size

-- Display: Fractional Trade Cancel Error Message
nasdaq_utp_input_utp_v4_0.fractional_trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Trade Cancel Error Message
nasdaq_utp_input_utp_v4_0.fractional_trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utp_input_utp_v4_0.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Cancel Type: byte
  index, cancel_type = nasdaq_utp_input_utp_v4_0.cancel_type.dissect(buffer, index, packet, parent)

  -- Orig Trade Id: int
  index, orig_trade_id = nasdaq_utp_input_utp_v4_0.orig_trade_id.dissect(buffer, index, packet, parent)

  -- Orig Tt Exempt: byte
  index, orig_tt_exempt = nasdaq_utp_input_utp_v4_0.orig_tt_exempt.dissect(buffer, index, packet, parent)

  -- Orig Trcond: byte[]
  index, orig_trcond = nasdaq_utp_input_utp_v4_0.orig_trcond.dissect(buffer, index, packet, parent)

  -- Orig Ssday: short
  index, orig_ssday = nasdaq_utp_input_utp_v4_0.orig_ssday.dissect(buffer, index, packet, parent)

  -- Orig Side: byte
  index, orig_side = nasdaq_utp_input_utp_v4_0.orig_side.dissect(buffer, index, packet, parent)

  -- Orig Price: long
  index, orig_price = nasdaq_utp_input_utp_v4_0.orig_price.dissect(buffer, index, packet, parent)

  -- Orig Volume Long 8: long
  index, orig_volume_long_8 = nasdaq_utp_input_utp_v4_0.orig_volume_long_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Trade Cancel Error Message
nasdaq_utp_input_utp_v4_0.fractional_trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.fractional_trade_cancel_error_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.fractional_trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.fractional_trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.fractional_trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Regular Trade Report Message
nasdaq_utp_input_utp_v4_0.fractional_regular_trade_report_message = {}

-- Size: Fractional Regular Trade Report Message
nasdaq_utp_input_utp_v4_0.fractional_regular_trade_report_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_2.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.trade_id.size + 
  nasdaq_utp_input_utp_v4_0.tt_exempt.size + 
  nasdaq_utp_input_utp_v4_0.trcond.size + 
  nasdaq_utp_input_utp_v4_0.ssday.size + 
  nasdaq_utp_input_utp_v4_0.side.size + 
  nasdaq_utp_input_utp_v4_0.price.size + 
  nasdaq_utp_input_utp_v4_0.volume_long_8.size

-- Display: Fractional Regular Trade Report Message
nasdaq_utp_input_utp_v4_0.fractional_regular_trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Regular Trade Report Message
nasdaq_utp_input_utp_v4_0.fractional_regular_trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utp_input_utp_v4_0.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Trade Id: int
  index, trade_id = nasdaq_utp_input_utp_v4_0.trade_id.dissect(buffer, index, packet, parent)

  -- Tt Exempt: byte
  index, tt_exempt = nasdaq_utp_input_utp_v4_0.tt_exempt.dissect(buffer, index, packet, parent)

  -- Trcond: byte[]
  index, trcond = nasdaq_utp_input_utp_v4_0.trcond.dissect(buffer, index, packet, parent)

  -- Ssday: short
  index, ssday = nasdaq_utp_input_utp_v4_0.ssday.dissect(buffer, index, packet, parent)

  -- Side: byte
  index, side = nasdaq_utp_input_utp_v4_0.side.dissect(buffer, index, packet, parent)

  -- Price: long
  index, price = nasdaq_utp_input_utp_v4_0.price.dissect(buffer, index, packet, parent)

  -- Volume Long 8: long
  index, volume_long_8 = nasdaq_utp_input_utp_v4_0.volume_long_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Regular Trade Report Message
nasdaq_utp_input_utp_v4_0.fractional_regular_trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.fractional_regular_trade_report_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.fractional_regular_trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.fractional_regular_trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.fractional_regular_trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- As Of Trade Report Message
nasdaq_utp_input_utp_v4_0.as_of_trade_report_message = {}

-- Size: As Of Trade Report Message
nasdaq_utp_input_utp_v4_0.as_of_trade_report_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.trade_id.size + 
  nasdaq_utp_input_utp_v4_0.tt_exempt.size + 
  nasdaq_utp_input_utp_v4_0.trcond.size + 
  nasdaq_utp_input_utp_v4_0.ssday.size + 
  nasdaq_utp_input_utp_v4_0.side.size + 
  nasdaq_utp_input_utp_v4_0.price.size + 
  nasdaq_utp_input_utp_v4_0.volume_int_4.size + 
  nasdaq_utp_input_utp_v4_0.trade_time.size + 
  nasdaq_utp_input_utp_v4_0.reversal.size

-- Display: As Of Trade Report Message
nasdaq_utp_input_utp_v4_0.as_of_trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: As Of Trade Report Message
nasdaq_utp_input_utp_v4_0.as_of_trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Trade Id: int
  index, trade_id = nasdaq_utp_input_utp_v4_0.trade_id.dissect(buffer, index, packet, parent)

  -- Tt Exempt: byte
  index, tt_exempt = nasdaq_utp_input_utp_v4_0.tt_exempt.dissect(buffer, index, packet, parent)

  -- Trcond: byte[]
  index, trcond = nasdaq_utp_input_utp_v4_0.trcond.dissect(buffer, index, packet, parent)

  -- Ssday: short
  index, ssday = nasdaq_utp_input_utp_v4_0.ssday.dissect(buffer, index, packet, parent)

  -- Side: byte
  index, side = nasdaq_utp_input_utp_v4_0.side.dissect(buffer, index, packet, parent)

  -- Price: long
  index, price = nasdaq_utp_input_utp_v4_0.price.dissect(buffer, index, packet, parent)

  -- Volume Int 4: int
  index, volume_int_4 = nasdaq_utp_input_utp_v4_0.volume_int_4.dissect(buffer, index, packet, parent)

  -- Trade Time: long
  index, trade_time = nasdaq_utp_input_utp_v4_0.trade_time.dissect(buffer, index, packet, parent)

  -- Reversal: byte
  index, reversal = nasdaq_utp_input_utp_v4_0.reversal.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: As Of Trade Report Message
nasdaq_utp_input_utp_v4_0.as_of_trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.as_of_trade_report_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.as_of_trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.as_of_trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.as_of_trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
nasdaq_utp_input_utp_v4_0.trade_correction_message = {}

-- Size: Trade Correction Message
nasdaq_utp_input_utp_v4_0.trade_correction_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_2.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.trade_id.size + 
  nasdaq_utp_input_utp_v4_0.orig_trade_id.size + 
  nasdaq_utp_input_utp_v4_0.orig_tt_exempt.size + 
  nasdaq_utp_input_utp_v4_0.orig_trcond.size + 
  nasdaq_utp_input_utp_v4_0.orig_ssday.size + 
  nasdaq_utp_input_utp_v4_0.side.size + 
  nasdaq_utp_input_utp_v4_0.orig_price.size + 
  nasdaq_utp_input_utp_v4_0.orig_volume_int_4.size + 
  nasdaq_utp_input_utp_v4_0.new_tt_exempt.size + 
  nasdaq_utp_input_utp_v4_0.new_trcond.size + 
  nasdaq_utp_input_utp_v4_0.new_ssday.size + 
  nasdaq_utp_input_utp_v4_0.new_price.size + 
  nasdaq_utp_input_utp_v4_0.new_volume_int_4.size

-- Display: Trade Correction Message
nasdaq_utp_input_utp_v4_0.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
nasdaq_utp_input_utp_v4_0.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utp_input_utp_v4_0.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Trade Id: int
  index, trade_id = nasdaq_utp_input_utp_v4_0.trade_id.dissect(buffer, index, packet, parent)

  -- Orig Trade Id: int
  index, orig_trade_id = nasdaq_utp_input_utp_v4_0.orig_trade_id.dissect(buffer, index, packet, parent)

  -- Orig Tt Exempt: byte
  index, orig_tt_exempt = nasdaq_utp_input_utp_v4_0.orig_tt_exempt.dissect(buffer, index, packet, parent)

  -- Orig Trcond: byte[]
  index, orig_trcond = nasdaq_utp_input_utp_v4_0.orig_trcond.dissect(buffer, index, packet, parent)

  -- Orig Ssday: short
  index, orig_ssday = nasdaq_utp_input_utp_v4_0.orig_ssday.dissect(buffer, index, packet, parent)

  -- Side: byte
  index, side = nasdaq_utp_input_utp_v4_0.side.dissect(buffer, index, packet, parent)

  -- Orig Price: long
  index, orig_price = nasdaq_utp_input_utp_v4_0.orig_price.dissect(buffer, index, packet, parent)

  -- Orig Volume Int 4: int
  index, orig_volume_int_4 = nasdaq_utp_input_utp_v4_0.orig_volume_int_4.dissect(buffer, index, packet, parent)

  -- New Tt Exempt: byte
  index, new_tt_exempt = nasdaq_utp_input_utp_v4_0.new_tt_exempt.dissect(buffer, index, packet, parent)

  -- New Trcond: byte[]
  index, new_trcond = nasdaq_utp_input_utp_v4_0.new_trcond.dissect(buffer, index, packet, parent)

  -- New Ssday: short
  index, new_ssday = nasdaq_utp_input_utp_v4_0.new_ssday.dissect(buffer, index, packet, parent)

  -- New Price: long
  index, new_price = nasdaq_utp_input_utp_v4_0.new_price.dissect(buffer, index, packet, parent)

  -- New Volume Int 4: int
  index, new_volume_int_4 = nasdaq_utp_input_utp_v4_0.new_volume_int_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nasdaq_utp_input_utp_v4_0.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.trade_correction_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Error Message
nasdaq_utp_input_utp_v4_0.trade_cancel_error_message = {}

-- Size: Trade Cancel Error Message
nasdaq_utp_input_utp_v4_0.trade_cancel_error_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_2.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.cancel_type.size + 
  nasdaq_utp_input_utp_v4_0.orig_trade_id.size + 
  nasdaq_utp_input_utp_v4_0.orig_tt_exempt.size + 
  nasdaq_utp_input_utp_v4_0.orig_trcond.size + 
  nasdaq_utp_input_utp_v4_0.orig_ssday.size + 
  nasdaq_utp_input_utp_v4_0.orig_side.size + 
  nasdaq_utp_input_utp_v4_0.orig_price.size + 
  nasdaq_utp_input_utp_v4_0.orig_volume_int_4.size

-- Display: Trade Cancel Error Message
nasdaq_utp_input_utp_v4_0.trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
nasdaq_utp_input_utp_v4_0.trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utp_input_utp_v4_0.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Cancel Type: byte
  index, cancel_type = nasdaq_utp_input_utp_v4_0.cancel_type.dissect(buffer, index, packet, parent)

  -- Orig Trade Id: int
  index, orig_trade_id = nasdaq_utp_input_utp_v4_0.orig_trade_id.dissect(buffer, index, packet, parent)

  -- Orig Tt Exempt: byte
  index, orig_tt_exempt = nasdaq_utp_input_utp_v4_0.orig_tt_exempt.dissect(buffer, index, packet, parent)

  -- Orig Trcond: byte[]
  index, orig_trcond = nasdaq_utp_input_utp_v4_0.orig_trcond.dissect(buffer, index, packet, parent)

  -- Orig Ssday: short
  index, orig_ssday = nasdaq_utp_input_utp_v4_0.orig_ssday.dissect(buffer, index, packet, parent)

  -- Orig Side: byte
  index, orig_side = nasdaq_utp_input_utp_v4_0.orig_side.dissect(buffer, index, packet, parent)

  -- Orig Price: long
  index, orig_price = nasdaq_utp_input_utp_v4_0.orig_price.dissect(buffer, index, packet, parent)

  -- Orig Volume Int 4: int
  index, orig_volume_int_4 = nasdaq_utp_input_utp_v4_0.orig_volume_int_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
nasdaq_utp_input_utp_v4_0.trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.trade_cancel_error_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Regular Trade Report Message
nasdaq_utp_input_utp_v4_0.regular_trade_report_message = {}

-- Size: Regular Trade Report Message
nasdaq_utp_input_utp_v4_0.regular_trade_report_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_2.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.trade_id.size + 
  nasdaq_utp_input_utp_v4_0.tt_exempt.size + 
  nasdaq_utp_input_utp_v4_0.trcond.size + 
  nasdaq_utp_input_utp_v4_0.ssday.size + 
  nasdaq_utp_input_utp_v4_0.side.size + 
  nasdaq_utp_input_utp_v4_0.price.size + 
  nasdaq_utp_input_utp_v4_0.volume_int_4.size

-- Display: Regular Trade Report Message
nasdaq_utp_input_utp_v4_0.regular_trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Regular Trade Report Message
nasdaq_utp_input_utp_v4_0.regular_trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utp_input_utp_v4_0.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Trade Id: int
  index, trade_id = nasdaq_utp_input_utp_v4_0.trade_id.dissect(buffer, index, packet, parent)

  -- Tt Exempt: byte
  index, tt_exempt = nasdaq_utp_input_utp_v4_0.tt_exempt.dissect(buffer, index, packet, parent)

  -- Trcond: byte[]
  index, trcond = nasdaq_utp_input_utp_v4_0.trcond.dissect(buffer, index, packet, parent)

  -- Ssday: short
  index, ssday = nasdaq_utp_input_utp_v4_0.ssday.dissect(buffer, index, packet, parent)

  -- Side: byte
  index, side = nasdaq_utp_input_utp_v4_0.side.dissect(buffer, index, packet, parent)

  -- Price: long
  index, price = nasdaq_utp_input_utp_v4_0.price.dissect(buffer, index, packet, parent)

  -- Volume Int 4: int
  index, volume_int_4 = nasdaq_utp_input_utp_v4_0.volume_int_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Regular Trade Report Message
nasdaq_utp_input_utp_v4_0.regular_trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.regular_trade_report_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.regular_trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.regular_trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.regular_trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Inbound Trade Messages Message Payload
nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message_payload = {}

-- Dissect: Inbound Trade Messages Message Payload
nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message_payload.dissect = function(buffer, offset, packet, parent, inbound_trade_messages_message_type)
  -- Dissect Regular Trade Report Message
  if inbound_trade_messages_message_type == "E" then
    return nasdaq_utp_input_utp_v4_0.regular_trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error Message
  if inbound_trade_messages_message_type == "I" then
    return nasdaq_utp_input_utp_v4_0.trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if inbound_trade_messages_message_type == "J" then
    return nasdaq_utp_input_utp_v4_0.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect As Of Trade Report Message
  if inbound_trade_messages_message_type == "H" then
    return nasdaq_utp_input_utp_v4_0.as_of_trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Regular Trade Report Message
  if inbound_trade_messages_message_type == "K" then
    return nasdaq_utp_input_utp_v4_0.fractional_regular_trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Trade Cancel Error Message
  if inbound_trade_messages_message_type == "O" then
    return nasdaq_utp_input_utp_v4_0.fractional_trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Trade Correction Message
  if inbound_trade_messages_message_type == "P" then
    return nasdaq_utp_input_utp_v4_0.fractional_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional As Of Trade Report Message
  if inbound_trade_messages_message_type == "Q" then
    return nasdaq_utp_input_utp_v4_0.fractional_as_of_trade_report_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Inbound Trade Messages Message
nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message = {}

-- Calculate size of: Inbound Trade Messages Message
nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message_type.size

  -- Calculate runtime size of Inbound Trade Messages Message Payload field
  local inbound_trade_messages_message_payload_offset = offset + index
  local inbound_trade_messages_message_payload_type = buffer(inbound_trade_messages_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message_payload.size(buffer, inbound_trade_messages_message_payload_offset, inbound_trade_messages_message_payload_type)

  return index
end

-- Display: Inbound Trade Messages Message
nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inbound Trade Messages Message
nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Trade Messages Message Type: 1 Byte Ascii String
  index, inbound_trade_messages_message_type = nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message_type.dissect(buffer, index, packet, parent)

  -- Inbound Trade Messages Message Payload: Runtime Type with 8 branches
  index = nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message_payload.dissect(buffer, index, packet, parent, inbound_trade_messages_message_type)

  return index
end

-- Dissect: Inbound Trade Messages Message
nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message.dissect = function(buffer, offset, packet, parent)
  if show.inbound_trade_messages_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.inbound_trade_messages_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message.fields(buffer, offset, packet, parent)
  end
end

-- Odd Lot Ask Adf Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_ask_adf_form_attachment = {}

-- Size: Odd Lot Ask Adf Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_ask_adf_form_attachment.size =
  nasdaq_utp_input_utp_v4_0.ol_price_long_8.size + 
  nasdaq_utp_input_utp_v4_0.ol_size.size + 
  nasdaq_utp_input_utp_v4_0.mpid.size

-- Display: Odd Lot Ask Adf Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_ask_adf_form_attachment.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Ask Adf Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_ask_adf_form_attachment.fields = function(buffer, offset, packet, parent, odd_lot_ask_adf_form_attachment_index)
  local index = offset

  -- Implicit Odd Lot Ask Adf Form Attachment Index
  if odd_lot_ask_adf_form_attachment_index ~= nil and show.odd_lot_ask_adf_form_attachment_index then
    local iteration = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_ask_adf_form_attachment_index, odd_lot_ask_adf_form_attachment_index)
    iteration:set_generated()
  end

  -- Ol Price Long 8: long
  index, ol_price_long_8 = nasdaq_utp_input_utp_v4_0.ol_price_long_8.dissect(buffer, index, packet, parent)

  -- Ol Size: short
  index, ol_size = nasdaq_utp_input_utp_v4_0.ol_size.dissect(buffer, index, packet, parent)

  -- Mpid: byte[]
  index, mpid = nasdaq_utp_input_utp_v4_0.mpid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Odd Lot Ask Adf Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_ask_adf_form_attachment.dissect = function(buffer, offset, packet, parent, odd_lot_ask_adf_form_attachment_index)
  if show.odd_lot_ask_adf_form_attachment then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_ask_adf_form_attachment, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.odd_lot_ask_adf_form_attachment.fields(buffer, offset, packet, parent, odd_lot_ask_adf_form_attachment_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.odd_lot_ask_adf_form_attachment.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.odd_lot_ask_adf_form_attachment.fields(buffer, offset, packet, parent, odd_lot_ask_adf_form_attachment_index)
  end
end

-- Odd Lot Bid Adf Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_bid_adf_form_attachment = {}

-- Size: Odd Lot Bid Adf Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_bid_adf_form_attachment.size =
  nasdaq_utp_input_utp_v4_0.ol_price_long_8.size + 
  nasdaq_utp_input_utp_v4_0.ol_size.size + 
  nasdaq_utp_input_utp_v4_0.mpid.size

-- Display: Odd Lot Bid Adf Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_bid_adf_form_attachment.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Bid Adf Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_bid_adf_form_attachment.fields = function(buffer, offset, packet, parent, odd_lot_bid_adf_form_attachment_index)
  local index = offset

  -- Implicit Odd Lot Bid Adf Form Attachment Index
  if odd_lot_bid_adf_form_attachment_index ~= nil and show.odd_lot_bid_adf_form_attachment_index then
    local iteration = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_bid_adf_form_attachment_index, odd_lot_bid_adf_form_attachment_index)
    iteration:set_generated()
  end

  -- Ol Price Long 8: long
  index, ol_price_long_8 = nasdaq_utp_input_utp_v4_0.ol_price_long_8.dissect(buffer, index, packet, parent)

  -- Ol Size: short
  index, ol_size = nasdaq_utp_input_utp_v4_0.ol_size.dissect(buffer, index, packet, parent)

  -- Mpid: byte[]
  index, mpid = nasdaq_utp_input_utp_v4_0.mpid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Odd Lot Bid Adf Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_bid_adf_form_attachment.dissect = function(buffer, offset, packet, parent, odd_lot_bid_adf_form_attachment_index)
  if show.odd_lot_bid_adf_form_attachment then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_bid_adf_form_attachment, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.odd_lot_bid_adf_form_attachment.fields(buffer, offset, packet, parent, odd_lot_bid_adf_form_attachment_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.odd_lot_bid_adf_form_attachment.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.odd_lot_bid_adf_form_attachment.fields(buffer, offset, packet, parent, odd_lot_bid_adf_form_attachment_index)
  end
end

-- Finra Adf Combined Quote Message With Bbo
nasdaq_utp_input_utp_v4_0.finra_adf_combined_quote_message_with_bbo = {}

-- Calculate size of: Finra Adf Combined Quote Message With Bbo
nasdaq_utp_input_utp_v4_0.finra_adf_combined_quote_message_with_bbo.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_input_utp_v4_0.orig.size

  index = index + nasdaq_utp_input_utp_v4_0.timestamp_1.size

  index = index + nasdaq_utp_input_utp_v4_0.feed_sequence.size

  index = index + nasdaq_utp_input_utp_v4_0.part_token.size

  index = index + nasdaq_utp_input_utp_v4_0.timestamp_2.size

  index = index + nasdaq_utp_input_utp_v4_0.symbol_byte_11.size

  index = index + nasdaq_utp_input_utp_v4_0.bid_long_8.size

  index = index + nasdaq_utp_input_utp_v4_0.bid_size_int_4.size

  index = index + nasdaq_utp_input_utp_v4_0.ask_long_8.size

  index = index + nasdaq_utp_input_utp_v4_0.ask_size_int_4.size

  index = index + nasdaq_utp_input_utp_v4_0.cond.size

  index = index + nasdaq_utp_input_utp_v4_0.mpid.size

  index = index + nasdaq_utp_input_utp_v4_0.rii.size

  index = index + nasdaq_utp_input_utp_v4_0.bbo_bid_price.size

  index = index + nasdaq_utp_input_utp_v4_0.bbo_bid_size.size

  index = index + nasdaq_utp_input_utp_v4_0.bbo_bid_mpid.size

  index = index + nasdaq_utp_input_utp_v4_0.bbo_ask_price.size

  index = index + nasdaq_utp_input_utp_v4_0.bbo_ask_size.size

  index = index + nasdaq_utp_input_utp_v4_0.bbo_ask_mpid.size

  index = index + nasdaq_utp_input_utp_v4_0.bbo_cond.size

  index = index + nasdaq_utp_input_utp_v4_0.ol_bid_level_count.size

  index = index + nasdaq_utp_input_utp_v4_0.ol_ask_level_count.size

  -- Calculate field size from count
  local odd_lot_bid_adf_form_attachment_count = buffer(offset + index - 4, 2):uint()
  index = index + odd_lot_bid_adf_form_attachment_count * 14

  -- Calculate field size from count
  local odd_lot_ask_adf_form_attachment_count = buffer(offset + index - 16, 2):uint()
  index = index + odd_lot_ask_adf_form_attachment_count * 14

  return index
end

-- Display: Finra Adf Combined Quote Message With Bbo
nasdaq_utp_input_utp_v4_0.finra_adf_combined_quote_message_with_bbo.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Adf Combined Quote Message With Bbo
nasdaq_utp_input_utp_v4_0.finra_adf_combined_quote_message_with_bbo.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utp_input_utp_v4_0.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Bid Long 8: long
  index, bid_long_8 = nasdaq_utp_input_utp_v4_0.bid_long_8.dissect(buffer, index, packet, parent)

  -- Bid Size Int 4: int
  index, bid_size_int_4 = nasdaq_utp_input_utp_v4_0.bid_size_int_4.dissect(buffer, index, packet, parent)

  -- Ask Long 8: long
  index, ask_long_8 = nasdaq_utp_input_utp_v4_0.ask_long_8.dissect(buffer, index, packet, parent)

  -- Ask Size Int 4: int
  index, ask_size_int_4 = nasdaq_utp_input_utp_v4_0.ask_size_int_4.dissect(buffer, index, packet, parent)

  -- Cond: byte
  index, cond = nasdaq_utp_input_utp_v4_0.cond.dissect(buffer, index, packet, parent)

  -- Mpid: byte[]
  index, mpid = nasdaq_utp_input_utp_v4_0.mpid.dissect(buffer, index, packet, parent)

  -- Rii: byte
  index, rii = nasdaq_utp_input_utp_v4_0.rii.dissect(buffer, index, packet, parent)

  -- Bbo Bid Price: long
  index, bbo_bid_price = nasdaq_utp_input_utp_v4_0.bbo_bid_price.dissect(buffer, index, packet, parent)

  -- Bbo Bid Size: int
  index, bbo_bid_size = nasdaq_utp_input_utp_v4_0.bbo_bid_size.dissect(buffer, index, packet, parent)

  -- Bbo Bid Mpid: byte[]
  index, bbo_bid_mpid = nasdaq_utp_input_utp_v4_0.bbo_bid_mpid.dissect(buffer, index, packet, parent)

  -- Bbo Ask Price: long
  index, bbo_ask_price = nasdaq_utp_input_utp_v4_0.bbo_ask_price.dissect(buffer, index, packet, parent)

  -- Bbo Ask Size: int
  index, bbo_ask_size = nasdaq_utp_input_utp_v4_0.bbo_ask_size.dissect(buffer, index, packet, parent)

  -- Bbo Ask Mpid: byte[]
  index, bbo_ask_mpid = nasdaq_utp_input_utp_v4_0.bbo_ask_mpid.dissect(buffer, index, packet, parent)

  -- Bbo Cond: byte
  index, bbo_cond = nasdaq_utp_input_utp_v4_0.bbo_cond.dissect(buffer, index, packet, parent)

  -- Ol Bid Level Count: short
  index, ol_bid_level_count = nasdaq_utp_input_utp_v4_0.ol_bid_level_count.dissect(buffer, index, packet, parent)

  -- Ol Ask Level Count: short
  index, ol_ask_level_count = nasdaq_utp_input_utp_v4_0.ol_ask_level_count.dissect(buffer, index, packet, parent)

  -- Repeating: Odd Lot Bid Adf Form Attachment
  for odd_lot_bid_adf_form_attachment_index = 1, ol_bid_level_count do
    index, odd_lot_bid_adf_form_attachment = nasdaq_utp_input_utp_v4_0.odd_lot_bid_adf_form_attachment.dissect(buffer, index, packet, parent, odd_lot_bid_adf_form_attachment_index)
  end

  -- Repeating: Odd Lot Ask Adf Form Attachment
  for odd_lot_ask_adf_form_attachment_index = 1, ol_ask_level_count do
    index, odd_lot_ask_adf_form_attachment = nasdaq_utp_input_utp_v4_0.odd_lot_ask_adf_form_attachment.dissect(buffer, index, packet, parent, odd_lot_ask_adf_form_attachment_index)
  end

  return index
end

-- Dissect: Finra Adf Combined Quote Message With Bbo
nasdaq_utp_input_utp_v4_0.finra_adf_combined_quote_message_with_bbo.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.finra_adf_combined_quote_message_with_bbo, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.finra_adf_combined_quote_message_with_bbo.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.finra_adf_combined_quote_message_with_bbo.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.finra_adf_combined_quote_message_with_bbo.fields(buffer, offset, packet, parent)
  end
end

-- Finra Adf Odd Lot Quotation Message
nasdaq_utp_input_utp_v4_0.finra_adf_odd_lot_quotation_message = {}

-- Calculate size of: Finra Adf Odd Lot Quotation Message
nasdaq_utp_input_utp_v4_0.finra_adf_odd_lot_quotation_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_input_utp_v4_0.orig.size

  index = index + nasdaq_utp_input_utp_v4_0.timestamp_1.size

  index = index + nasdaq_utp_input_utp_v4_0.feed_sequence.size

  index = index + nasdaq_utp_input_utp_v4_0.part_token.size

  index = index + nasdaq_utp_input_utp_v4_0.timestamp_2.size

  index = index + nasdaq_utp_input_utp_v4_0.symbol_byte_11.size

  index = index + nasdaq_utp_input_utp_v4_0.ol_bid_level_count.size

  index = index + nasdaq_utp_input_utp_v4_0.ol_ask_level_count.size

  -- Calculate field size from count
  local odd_lot_bid_adf_form_attachment_count = buffer(offset + index - 4, 2):uint()
  index = index + odd_lot_bid_adf_form_attachment_count * 14

  -- Calculate field size from count
  local odd_lot_ask_adf_form_attachment_count = buffer(offset + index - 16, 2):uint()
  index = index + odd_lot_ask_adf_form_attachment_count * 14

  return index
end

-- Display: Finra Adf Odd Lot Quotation Message
nasdaq_utp_input_utp_v4_0.finra_adf_odd_lot_quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Adf Odd Lot Quotation Message
nasdaq_utp_input_utp_v4_0.finra_adf_odd_lot_quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utp_input_utp_v4_0.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Ol Bid Level Count: short
  index, ol_bid_level_count = nasdaq_utp_input_utp_v4_0.ol_bid_level_count.dissect(buffer, index, packet, parent)

  -- Ol Ask Level Count: short
  index, ol_ask_level_count = nasdaq_utp_input_utp_v4_0.ol_ask_level_count.dissect(buffer, index, packet, parent)

  -- Repeating: Odd Lot Bid Adf Form Attachment
  for odd_lot_bid_adf_form_attachment_index = 1, ol_bid_level_count do
    index, odd_lot_bid_adf_form_attachment = nasdaq_utp_input_utp_v4_0.odd_lot_bid_adf_form_attachment.dissect(buffer, index, packet, parent, odd_lot_bid_adf_form_attachment_index)
  end

  -- Repeating: Odd Lot Ask Adf Form Attachment
  for odd_lot_ask_adf_form_attachment_index = 1, ol_ask_level_count do
    index, odd_lot_ask_adf_form_attachment = nasdaq_utp_input_utp_v4_0.odd_lot_ask_adf_form_attachment.dissect(buffer, index, packet, parent, odd_lot_ask_adf_form_attachment_index)
  end

  return index
end

-- Dissect: Finra Adf Odd Lot Quotation Message
nasdaq_utp_input_utp_v4_0.finra_adf_odd_lot_quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.finra_adf_odd_lot_quotation_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.finra_adf_odd_lot_quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.finra_adf_odd_lot_quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.finra_adf_odd_lot_quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Finra Protected Quote Message Without Bbo Info Message
nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_without_bbo_info_message = {}

-- Size: Finra Protected Quote Message Without Bbo Info Message
nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_without_bbo_info_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_2.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.bid_long_8.size + 
  nasdaq_utp_input_utp_v4_0.bid_size_int_4.size + 
  nasdaq_utp_input_utp_v4_0.ask_long_8.size + 
  nasdaq_utp_input_utp_v4_0.ask_size_int_4.size + 
  nasdaq_utp_input_utp_v4_0.cond.size + 
  nasdaq_utp_input_utp_v4_0.mpid.size + 
  nasdaq_utp_input_utp_v4_0.bbo_indicator.size

-- Display: Finra Protected Quote Message Without Bbo Info Message
nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_without_bbo_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Protected Quote Message Without Bbo Info Message
nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_without_bbo_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utp_input_utp_v4_0.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Bid Long 8: long
  index, bid_long_8 = nasdaq_utp_input_utp_v4_0.bid_long_8.dissect(buffer, index, packet, parent)

  -- Bid Size Int 4: int
  index, bid_size_int_4 = nasdaq_utp_input_utp_v4_0.bid_size_int_4.dissect(buffer, index, packet, parent)

  -- Ask Long 8: long
  index, ask_long_8 = nasdaq_utp_input_utp_v4_0.ask_long_8.dissect(buffer, index, packet, parent)

  -- Ask Size Int 4: int
  index, ask_size_int_4 = nasdaq_utp_input_utp_v4_0.ask_size_int_4.dissect(buffer, index, packet, parent)

  -- Cond: byte
  index, cond = nasdaq_utp_input_utp_v4_0.cond.dissect(buffer, index, packet, parent)

  -- Mpid: byte[]
  index, mpid = nasdaq_utp_input_utp_v4_0.mpid.dissect(buffer, index, packet, parent)

  -- Bbo Indicator: byte
  index, bbo_indicator = nasdaq_utp_input_utp_v4_0.bbo_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Protected Quote Message Without Bbo Info Message
nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_without_bbo_info_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.finra_protected_quote_message_without_bbo_info_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_without_bbo_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_without_bbo_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_without_bbo_info_message.fields(buffer, offset, packet, parent)
  end
end

-- Finra Protected Quote Message With Bbo Info Message
nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_with_bbo_info_message = {}

-- Size: Finra Protected Quote Message With Bbo Info Message
nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_with_bbo_info_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_2.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.bid_long_8.size + 
  nasdaq_utp_input_utp_v4_0.bid_size_int_4.size + 
  nasdaq_utp_input_utp_v4_0.ask_long_8.size + 
  nasdaq_utp_input_utp_v4_0.ask_size_int_4.size + 
  nasdaq_utp_input_utp_v4_0.cond.size + 
  nasdaq_utp_input_utp_v4_0.mpid.size + 
  nasdaq_utp_input_utp_v4_0.bbo_bid.size + 
  nasdaq_utp_input_utp_v4_0.bbo_bid_size.size + 
  nasdaq_utp_input_utp_v4_0.bbo_bid_mpid.size + 
  nasdaq_utp_input_utp_v4_0.bbo_ask.size + 
  nasdaq_utp_input_utp_v4_0.bbo_ask_size.size + 
  nasdaq_utp_input_utp_v4_0.bbo_ask_mpid.size + 
  nasdaq_utp_input_utp_v4_0.bbo_cond.size

-- Display: Finra Protected Quote Message With Bbo Info Message
nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_with_bbo_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Protected Quote Message With Bbo Info Message
nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_with_bbo_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_utp_input_utp_v4_0.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Bid Long 8: long
  index, bid_long_8 = nasdaq_utp_input_utp_v4_0.bid_long_8.dissect(buffer, index, packet, parent)

  -- Bid Size Int 4: int
  index, bid_size_int_4 = nasdaq_utp_input_utp_v4_0.bid_size_int_4.dissect(buffer, index, packet, parent)

  -- Ask Long 8: long
  index, ask_long_8 = nasdaq_utp_input_utp_v4_0.ask_long_8.dissect(buffer, index, packet, parent)

  -- Ask Size Int 4: int
  index, ask_size_int_4 = nasdaq_utp_input_utp_v4_0.ask_size_int_4.dissect(buffer, index, packet, parent)

  -- Cond: byte
  index, cond = nasdaq_utp_input_utp_v4_0.cond.dissect(buffer, index, packet, parent)

  -- Mpid: byte[]
  index, mpid = nasdaq_utp_input_utp_v4_0.mpid.dissect(buffer, index, packet, parent)

  -- Bbo Bid: long
  index, bbo_bid = nasdaq_utp_input_utp_v4_0.bbo_bid.dissect(buffer, index, packet, parent)

  -- Bbo Bid Size: int
  index, bbo_bid_size = nasdaq_utp_input_utp_v4_0.bbo_bid_size.dissect(buffer, index, packet, parent)

  -- Bbo Bid Mpid: byte[]
  index, bbo_bid_mpid = nasdaq_utp_input_utp_v4_0.bbo_bid_mpid.dissect(buffer, index, packet, parent)

  -- Bbo Ask: long
  index, bbo_ask = nasdaq_utp_input_utp_v4_0.bbo_ask.dissect(buffer, index, packet, parent)

  -- Bbo Ask Size: int
  index, bbo_ask_size = nasdaq_utp_input_utp_v4_0.bbo_ask_size.dissect(buffer, index, packet, parent)

  -- Bbo Ask Mpid: byte[]
  index, bbo_ask_mpid = nasdaq_utp_input_utp_v4_0.bbo_ask_mpid.dissect(buffer, index, packet, parent)

  -- Bbo Cond: byte
  index, bbo_cond = nasdaq_utp_input_utp_v4_0.bbo_cond.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Protected Quote Message With Bbo Info Message
nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_with_bbo_info_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.finra_protected_quote_message_with_bbo_info_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_with_bbo_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_with_bbo_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_with_bbo_info_message.fields(buffer, offset, packet, parent)
  end
end

-- Odd Lot Ask Long Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_ask_long_form_attachment = {}

-- Size: Odd Lot Ask Long Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_ask_long_form_attachment.size =
  nasdaq_utp_input_utp_v4_0.ol_price_long_8.size + 
  nasdaq_utp_input_utp_v4_0.ol_size.size

-- Display: Odd Lot Ask Long Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_ask_long_form_attachment.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Ask Long Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_ask_long_form_attachment.fields = function(buffer, offset, packet, parent, odd_lot_ask_long_form_attachment_index)
  local index = offset

  -- Implicit Odd Lot Ask Long Form Attachment Index
  if odd_lot_ask_long_form_attachment_index ~= nil and show.odd_lot_ask_long_form_attachment_index then
    local iteration = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_ask_long_form_attachment_index, odd_lot_ask_long_form_attachment_index)
    iteration:set_generated()
  end

  -- Ol Price Long 8: long
  index, ol_price_long_8 = nasdaq_utp_input_utp_v4_0.ol_price_long_8.dissect(buffer, index, packet, parent)

  -- Ol Size: short
  index, ol_size = nasdaq_utp_input_utp_v4_0.ol_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Odd Lot Ask Long Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_ask_long_form_attachment.dissect = function(buffer, offset, packet, parent, odd_lot_ask_long_form_attachment_index)
  if show.odd_lot_ask_long_form_attachment then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_ask_long_form_attachment, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.odd_lot_ask_long_form_attachment.fields(buffer, offset, packet, parent, odd_lot_ask_long_form_attachment_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.odd_lot_ask_long_form_attachment.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.odd_lot_ask_long_form_attachment.fields(buffer, offset, packet, parent, odd_lot_ask_long_form_attachment_index)
  end
end

-- Odd Lot Bid Long Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_bid_long_form_attachment = {}

-- Size: Odd Lot Bid Long Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_bid_long_form_attachment.size =
  nasdaq_utp_input_utp_v4_0.ol_price_long_8.size + 
  nasdaq_utp_input_utp_v4_0.ol_size.size

-- Display: Odd Lot Bid Long Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_bid_long_form_attachment.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Bid Long Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_bid_long_form_attachment.fields = function(buffer, offset, packet, parent, odd_lot_bid_long_form_attachment_index)
  local index = offset

  -- Implicit Odd Lot Bid Long Form Attachment Index
  if odd_lot_bid_long_form_attachment_index ~= nil and show.odd_lot_bid_long_form_attachment_index then
    local iteration = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_bid_long_form_attachment_index, odd_lot_bid_long_form_attachment_index)
    iteration:set_generated()
  end

  -- Ol Price Long 8: long
  index, ol_price_long_8 = nasdaq_utp_input_utp_v4_0.ol_price_long_8.dissect(buffer, index, packet, parent)

  -- Ol Size: short
  index, ol_size = nasdaq_utp_input_utp_v4_0.ol_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Odd Lot Bid Long Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_bid_long_form_attachment.dissect = function(buffer, offset, packet, parent, odd_lot_bid_long_form_attachment_index)
  if show.odd_lot_bid_long_form_attachment then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_bid_long_form_attachment, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.odd_lot_bid_long_form_attachment.fields(buffer, offset, packet, parent, odd_lot_bid_long_form_attachment_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.odd_lot_bid_long_form_attachment.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.odd_lot_bid_long_form_attachment.fields(buffer, offset, packet, parent, odd_lot_bid_long_form_attachment_index)
  end
end

-- Exchange Combined Quote Message Long Form Message
nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_long_form_message = {}

-- Calculate size of: Exchange Combined Quote Message Long Form Message
nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_long_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_input_utp_v4_0.orig.size

  index = index + nasdaq_utp_input_utp_v4_0.timestamp_1.size

  index = index + nasdaq_utp_input_utp_v4_0.feed_sequence.size

  index = index + nasdaq_utp_input_utp_v4_0.part_token.size

  index = index + nasdaq_utp_input_utp_v4_0.symbol_byte_11.size

  index = index + nasdaq_utp_input_utp_v4_0.bid_long_8.size

  index = index + nasdaq_utp_input_utp_v4_0.bid_size_int_4.size

  index = index + nasdaq_utp_input_utp_v4_0.ask_long_8.size

  index = index + nasdaq_utp_input_utp_v4_0.ask_size_int_4.size

  index = index + nasdaq_utp_input_utp_v4_0.cond.size

  index = index + nasdaq_utp_input_utp_v4_0.rii.size

  index = index + nasdaq_utp_input_utp_v4_0.ol_bid_level_count.size

  index = index + nasdaq_utp_input_utp_v4_0.ol_ask_level_count.size

  -- Calculate field size from count
  local odd_lot_bid_long_form_attachment_count = buffer(offset + index - 4, 2):uint()
  index = index + odd_lot_bid_long_form_attachment_count * 10

  -- Calculate field size from count
  local odd_lot_ask_long_form_attachment_count = buffer(offset + index - 12, 2):uint()
  index = index + odd_lot_ask_long_form_attachment_count * 10

  return index
end

-- Display: Exchange Combined Quote Message Long Form Message
nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exchange Combined Quote Message Long Form Message
nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Bid Long 8: long
  index, bid_long_8 = nasdaq_utp_input_utp_v4_0.bid_long_8.dissect(buffer, index, packet, parent)

  -- Bid Size Int 4: int
  index, bid_size_int_4 = nasdaq_utp_input_utp_v4_0.bid_size_int_4.dissect(buffer, index, packet, parent)

  -- Ask Long 8: long
  index, ask_long_8 = nasdaq_utp_input_utp_v4_0.ask_long_8.dissect(buffer, index, packet, parent)

  -- Ask Size Int 4: int
  index, ask_size_int_4 = nasdaq_utp_input_utp_v4_0.ask_size_int_4.dissect(buffer, index, packet, parent)

  -- Cond: byte
  index, cond = nasdaq_utp_input_utp_v4_0.cond.dissect(buffer, index, packet, parent)

  -- Rii: byte
  index, rii = nasdaq_utp_input_utp_v4_0.rii.dissect(buffer, index, packet, parent)

  -- Ol Bid Level Count: short
  index, ol_bid_level_count = nasdaq_utp_input_utp_v4_0.ol_bid_level_count.dissect(buffer, index, packet, parent)

  -- Ol Ask Level Count: short
  index, ol_ask_level_count = nasdaq_utp_input_utp_v4_0.ol_ask_level_count.dissect(buffer, index, packet, parent)

  -- Repeating: Odd Lot Bid Long Form Attachment
  for odd_lot_bid_long_form_attachment_index = 1, ol_bid_level_count do
    index, odd_lot_bid_long_form_attachment = nasdaq_utp_input_utp_v4_0.odd_lot_bid_long_form_attachment.dissect(buffer, index, packet, parent, odd_lot_bid_long_form_attachment_index)
  end

  -- Repeating: Odd Lot Ask Long Form Attachment
  for odd_lot_ask_long_form_attachment_index = 1, ol_ask_level_count do
    index, odd_lot_ask_long_form_attachment = nasdaq_utp_input_utp_v4_0.odd_lot_ask_long_form_attachment.dissect(buffer, index, packet, parent, odd_lot_ask_long_form_attachment_index)
  end

  return index
end

-- Dissect: Exchange Combined Quote Message Long Form Message
nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.exchange_combined_quote_message_long_form_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Odd Lot Ask Short Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_ask_short_form_attachment = {}

-- Size: Odd Lot Ask Short Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_ask_short_form_attachment.size =
  nasdaq_utp_input_utp_v4_0.ol_price_short_2.size + 
  nasdaq_utp_input_utp_v4_0.ol_size.size

-- Display: Odd Lot Ask Short Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_ask_short_form_attachment.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Ask Short Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_ask_short_form_attachment.fields = function(buffer, offset, packet, parent, odd_lot_ask_short_form_attachment_index)
  local index = offset

  -- Implicit Odd Lot Ask Short Form Attachment Index
  if odd_lot_ask_short_form_attachment_index ~= nil and show.odd_lot_ask_short_form_attachment_index then
    local iteration = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_ask_short_form_attachment_index, odd_lot_ask_short_form_attachment_index)
    iteration:set_generated()
  end

  -- Ol Price Short 2: short
  index, ol_price_short_2 = nasdaq_utp_input_utp_v4_0.ol_price_short_2.dissect(buffer, index, packet, parent)

  -- Ol Size: short
  index, ol_size = nasdaq_utp_input_utp_v4_0.ol_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Odd Lot Ask Short Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_ask_short_form_attachment.dissect = function(buffer, offset, packet, parent, odd_lot_ask_short_form_attachment_index)
  if show.odd_lot_ask_short_form_attachment then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_ask_short_form_attachment, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.odd_lot_ask_short_form_attachment.fields(buffer, offset, packet, parent, odd_lot_ask_short_form_attachment_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.odd_lot_ask_short_form_attachment.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.odd_lot_ask_short_form_attachment.fields(buffer, offset, packet, parent, odd_lot_ask_short_form_attachment_index)
  end
end

-- Odd Lot Bid Short Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_bid_short_form_attachment = {}

-- Size: Odd Lot Bid Short Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_bid_short_form_attachment.size =
  nasdaq_utp_input_utp_v4_0.ol_price_short_2.size + 
  nasdaq_utp_input_utp_v4_0.ol_size.size

-- Display: Odd Lot Bid Short Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_bid_short_form_attachment.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Bid Short Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_bid_short_form_attachment.fields = function(buffer, offset, packet, parent, odd_lot_bid_short_form_attachment_index)
  local index = offset

  -- Implicit Odd Lot Bid Short Form Attachment Index
  if odd_lot_bid_short_form_attachment_index ~= nil and show.odd_lot_bid_short_form_attachment_index then
    local iteration = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_bid_short_form_attachment_index, odd_lot_bid_short_form_attachment_index)
    iteration:set_generated()
  end

  -- Ol Price Short 2: short
  index, ol_price_short_2 = nasdaq_utp_input_utp_v4_0.ol_price_short_2.dissect(buffer, index, packet, parent)

  -- Ol Size: short
  index, ol_size = nasdaq_utp_input_utp_v4_0.ol_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Odd Lot Bid Short Form Attachment
nasdaq_utp_input_utp_v4_0.odd_lot_bid_short_form_attachment.dissect = function(buffer, offset, packet, parent, odd_lot_bid_short_form_attachment_index)
  if show.odd_lot_bid_short_form_attachment then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.odd_lot_bid_short_form_attachment, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.odd_lot_bid_short_form_attachment.fields(buffer, offset, packet, parent, odd_lot_bid_short_form_attachment_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.odd_lot_bid_short_form_attachment.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.odd_lot_bid_short_form_attachment.fields(buffer, offset, packet, parent, odd_lot_bid_short_form_attachment_index)
  end
end

-- Exchange Combined Quote Message Short Form Message
nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_short_form_message = {}

-- Calculate size of: Exchange Combined Quote Message Short Form Message
nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_short_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_input_utp_v4_0.orig.size

  index = index + nasdaq_utp_input_utp_v4_0.timestamp_1.size

  index = index + nasdaq_utp_input_utp_v4_0.feed_sequence.size

  index = index + nasdaq_utp_input_utp_v4_0.part_token.size

  index = index + nasdaq_utp_input_utp_v4_0.symbol_byte_5.size

  index = index + nasdaq_utp_input_utp_v4_0.bid_short_2.size

  index = index + nasdaq_utp_input_utp_v4_0.bid_size_short_2.size

  index = index + nasdaq_utp_input_utp_v4_0.ask_short_2.size

  index = index + nasdaq_utp_input_utp_v4_0.ask_size_short_2.size

  index = index + nasdaq_utp_input_utp_v4_0.cond.size

  index = index + nasdaq_utp_input_utp_v4_0.rii.size

  index = index + nasdaq_utp_input_utp_v4_0.ol_bid_level_count.size

  index = index + nasdaq_utp_input_utp_v4_0.ol_ask_level_count.size

  -- Calculate field size from count
  local odd_lot_bid_short_form_attachment_count = buffer(offset + index - 4, 2):uint()
  index = index + odd_lot_bid_short_form_attachment_count * 4

  -- Calculate field size from count
  local odd_lot_ask_short_form_attachment_count = buffer(offset + index - 6, 2):uint()
  index = index + odd_lot_ask_short_form_attachment_count * 4

  return index
end

-- Display: Exchange Combined Quote Message Short Form Message
nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exchange Combined Quote Message Short Form Message
nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Symbol Byte 5: byte[]
  index, symbol_byte_5 = nasdaq_utp_input_utp_v4_0.symbol_byte_5.dissect(buffer, index, packet, parent)

  -- Bid Short 2: short
  index, bid_short_2 = nasdaq_utp_input_utp_v4_0.bid_short_2.dissect(buffer, index, packet, parent)

  -- Bid Size Short 2: short
  index, bid_size_short_2 = nasdaq_utp_input_utp_v4_0.bid_size_short_2.dissect(buffer, index, packet, parent)

  -- Ask Short 2: short
  index, ask_short_2 = nasdaq_utp_input_utp_v4_0.ask_short_2.dissect(buffer, index, packet, parent)

  -- Ask Size Short 2: short
  index, ask_size_short_2 = nasdaq_utp_input_utp_v4_0.ask_size_short_2.dissect(buffer, index, packet, parent)

  -- Cond: byte
  index, cond = nasdaq_utp_input_utp_v4_0.cond.dissect(buffer, index, packet, parent)

  -- Rii: byte
  index, rii = nasdaq_utp_input_utp_v4_0.rii.dissect(buffer, index, packet, parent)

  -- Ol Bid Level Count: short
  index, ol_bid_level_count = nasdaq_utp_input_utp_v4_0.ol_bid_level_count.dissect(buffer, index, packet, parent)

  -- Ol Ask Level Count: short
  index, ol_ask_level_count = nasdaq_utp_input_utp_v4_0.ol_ask_level_count.dissect(buffer, index, packet, parent)

  -- Repeating: Odd Lot Bid Short Form Attachment
  for odd_lot_bid_short_form_attachment_index = 1, ol_bid_level_count do
    index, odd_lot_bid_short_form_attachment = nasdaq_utp_input_utp_v4_0.odd_lot_bid_short_form_attachment.dissect(buffer, index, packet, parent, odd_lot_bid_short_form_attachment_index)
  end

  -- Repeating: Odd Lot Ask Short Form Attachment
  for odd_lot_ask_short_form_attachment_index = 1, ol_ask_level_count do
    index, odd_lot_ask_short_form_attachment = nasdaq_utp_input_utp_v4_0.odd_lot_ask_short_form_attachment.dissect(buffer, index, packet, parent, odd_lot_ask_short_form_attachment_index)
  end

  return index
end

-- Dissect: Exchange Combined Quote Message Short Form Message
nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.exchange_combined_quote_message_short_form_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Odd Lot Quote Message Long Form Message
nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_long_form_message = {}

-- Calculate size of: Exchange Odd Lot Quote Message Long Form Message
nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_long_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_input_utp_v4_0.orig.size

  index = index + nasdaq_utp_input_utp_v4_0.timestamp_1.size

  index = index + nasdaq_utp_input_utp_v4_0.feed_sequence.size

  index = index + nasdaq_utp_input_utp_v4_0.part_token.size

  index = index + nasdaq_utp_input_utp_v4_0.symbol_byte_11.size

  index = index + nasdaq_utp_input_utp_v4_0.ol_bid_level_count.size

  index = index + nasdaq_utp_input_utp_v4_0.ol_ask_level_count.size

  -- Calculate field size from count
  local odd_lot_bid_long_form_attachment_count = buffer(offset + index - 4, 2):uint()
  index = index + odd_lot_bid_long_form_attachment_count * 10

  -- Calculate field size from count
  local odd_lot_ask_long_form_attachment_count = buffer(offset + index - 12, 2):uint()
  index = index + odd_lot_ask_long_form_attachment_count * 10

  return index
end

-- Display: Exchange Odd Lot Quote Message Long Form Message
nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exchange Odd Lot Quote Message Long Form Message
nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Ol Bid Level Count: short
  index, ol_bid_level_count = nasdaq_utp_input_utp_v4_0.ol_bid_level_count.dissect(buffer, index, packet, parent)

  -- Ol Ask Level Count: short
  index, ol_ask_level_count = nasdaq_utp_input_utp_v4_0.ol_ask_level_count.dissect(buffer, index, packet, parent)

  -- Repeating: Odd Lot Bid Long Form Attachment
  for odd_lot_bid_long_form_attachment_index = 1, ol_bid_level_count do
    index, odd_lot_bid_long_form_attachment = nasdaq_utp_input_utp_v4_0.odd_lot_bid_long_form_attachment.dissect(buffer, index, packet, parent, odd_lot_bid_long_form_attachment_index)
  end

  -- Repeating: Odd Lot Ask Long Form Attachment
  for odd_lot_ask_long_form_attachment_index = 1, ol_ask_level_count do
    index, odd_lot_ask_long_form_attachment = nasdaq_utp_input_utp_v4_0.odd_lot_ask_long_form_attachment.dissect(buffer, index, packet, parent, odd_lot_ask_long_form_attachment_index)
  end

  return index
end

-- Dissect: Exchange Odd Lot Quote Message Long Form Message
nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.exchange_odd_lot_quote_message_long_form_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Odd Lot Quote Message Short Form Message
nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_short_form_message = {}

-- Calculate size of: Exchange Odd Lot Quote Message Short Form Message
nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_short_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_input_utp_v4_0.orig.size

  index = index + nasdaq_utp_input_utp_v4_0.timestamp_1.size

  index = index + nasdaq_utp_input_utp_v4_0.feed_sequence.size

  index = index + nasdaq_utp_input_utp_v4_0.part_token.size

  index = index + nasdaq_utp_input_utp_v4_0.symbol_byte_5.size

  index = index + nasdaq_utp_input_utp_v4_0.ol_bid_level_count.size

  index = index + nasdaq_utp_input_utp_v4_0.ol_ask_level_count.size

  -- Calculate field size from count
  local odd_lot_bid_short_form_attachment_count = buffer(offset + index - 4, 2):uint()
  index = index + odd_lot_bid_short_form_attachment_count * 4

  -- Calculate field size from count
  local odd_lot_ask_short_form_attachment_count = buffer(offset + index - 6, 2):uint()
  index = index + odd_lot_ask_short_form_attachment_count * 4

  return index
end

-- Display: Exchange Odd Lot Quote Message Short Form Message
nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exchange Odd Lot Quote Message Short Form Message
nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Symbol Byte 5: byte[]
  index, symbol_byte_5 = nasdaq_utp_input_utp_v4_0.symbol_byte_5.dissect(buffer, index, packet, parent)

  -- Ol Bid Level Count: short
  index, ol_bid_level_count = nasdaq_utp_input_utp_v4_0.ol_bid_level_count.dissect(buffer, index, packet, parent)

  -- Ol Ask Level Count: short
  index, ol_ask_level_count = nasdaq_utp_input_utp_v4_0.ol_ask_level_count.dissect(buffer, index, packet, parent)

  -- Repeating: Odd Lot Bid Short Form Attachment
  for odd_lot_bid_short_form_attachment_index = 1, ol_bid_level_count do
    index, odd_lot_bid_short_form_attachment = nasdaq_utp_input_utp_v4_0.odd_lot_bid_short_form_attachment.dissect(buffer, index, packet, parent, odd_lot_bid_short_form_attachment_index)
  end

  -- Repeating: Odd Lot Ask Short Form Attachment
  for odd_lot_ask_short_form_attachment_index = 1, ol_ask_level_count do
    index, odd_lot_ask_short_form_attachment = nasdaq_utp_input_utp_v4_0.odd_lot_ask_short_form_attachment.dissect(buffer, index, packet, parent, odd_lot_ask_short_form_attachment_index)
  end

  return index
end

-- Dissect: Exchange Odd Lot Quote Message Short Form Message
nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.exchange_odd_lot_quote_message_short_form_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Protected Exchange Quote Message Longform Message
nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_longform_message = {}

-- Size: Protected Exchange Quote Message Longform Message
nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_longform_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_11.size + 
  nasdaq_utp_input_utp_v4_0.bid_long_8.size + 
  nasdaq_utp_input_utp_v4_0.bid_size_int_4.size + 
  nasdaq_utp_input_utp_v4_0.ask_long_8.size + 
  nasdaq_utp_input_utp_v4_0.ask_size_int_4.size + 
  nasdaq_utp_input_utp_v4_0.cond.size + 
  nasdaq_utp_input_utp_v4_0.rii.size

-- Display: Protected Exchange Quote Message Longform Message
nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_longform_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Protected Exchange Quote Message Longform Message
nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_longform_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Symbol Byte 11: byte[]
  index, symbol_byte_11 = nasdaq_utp_input_utp_v4_0.symbol_byte_11.dissect(buffer, index, packet, parent)

  -- Bid Long 8: long
  index, bid_long_8 = nasdaq_utp_input_utp_v4_0.bid_long_8.dissect(buffer, index, packet, parent)

  -- Bid Size Int 4: int
  index, bid_size_int_4 = nasdaq_utp_input_utp_v4_0.bid_size_int_4.dissect(buffer, index, packet, parent)

  -- Ask Long 8: long
  index, ask_long_8 = nasdaq_utp_input_utp_v4_0.ask_long_8.dissect(buffer, index, packet, parent)

  -- Ask Size Int 4: int
  index, ask_size_int_4 = nasdaq_utp_input_utp_v4_0.ask_size_int_4.dissect(buffer, index, packet, parent)

  -- Cond: byte
  index, cond = nasdaq_utp_input_utp_v4_0.cond.dissect(buffer, index, packet, parent)

  -- Rii: byte
  index, rii = nasdaq_utp_input_utp_v4_0.rii.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Protected Exchange Quote Message Longform Message
nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_longform_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.protected_exchange_quote_message_longform_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_longform_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_longform_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_longform_message.fields(buffer, offset, packet, parent)
  end
end

-- Protected Exchange Quote Message Shortform Message
nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_shortform_message = {}

-- Size: Protected Exchange Quote Message Shortform Message
nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_shortform_message.size =
  nasdaq_utp_input_utp_v4_0.orig.size + 
  nasdaq_utp_input_utp_v4_0.timestamp_1.size + 
  nasdaq_utp_input_utp_v4_0.feed_sequence.size + 
  nasdaq_utp_input_utp_v4_0.part_token.size + 
  nasdaq_utp_input_utp_v4_0.symbol_byte_5.size + 
  nasdaq_utp_input_utp_v4_0.bid_short_2.size + 
  nasdaq_utp_input_utp_v4_0.bid_size_short_2.size + 
  nasdaq_utp_input_utp_v4_0.ask_short_2.size + 
  nasdaq_utp_input_utp_v4_0.ask_size_short_2.size + 
  nasdaq_utp_input_utp_v4_0.cond.size + 
  nasdaq_utp_input_utp_v4_0.rii.size

-- Display: Protected Exchange Quote Message Shortform Message
nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_shortform_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Protected Exchange Quote Message Shortform Message
nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_shortform_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig: byte[]
  index, orig = nasdaq_utp_input_utp_v4_0.orig.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_input_utp_v4_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Feed Sequence: long
  index, feed_sequence = nasdaq_utp_input_utp_v4_0.feed_sequence.dissect(buffer, index, packet, parent)

  -- Part Token: long
  index, part_token = nasdaq_utp_input_utp_v4_0.part_token.dissect(buffer, index, packet, parent)

  -- Symbol Byte 5: byte[]
  index, symbol_byte_5 = nasdaq_utp_input_utp_v4_0.symbol_byte_5.dissect(buffer, index, packet, parent)

  -- Bid Short 2: short
  index, bid_short_2 = nasdaq_utp_input_utp_v4_0.bid_short_2.dissect(buffer, index, packet, parent)

  -- Bid Size Short 2: short
  index, bid_size_short_2 = nasdaq_utp_input_utp_v4_0.bid_size_short_2.dissect(buffer, index, packet, parent)

  -- Ask Short 2: short
  index, ask_short_2 = nasdaq_utp_input_utp_v4_0.ask_short_2.dissect(buffer, index, packet, parent)

  -- Ask Size Short 2: short
  index, ask_size_short_2 = nasdaq_utp_input_utp_v4_0.ask_size_short_2.dissect(buffer, index, packet, parent)

  -- Cond: byte
  index, cond = nasdaq_utp_input_utp_v4_0.cond.dissect(buffer, index, packet, parent)

  -- Rii: byte
  index, rii = nasdaq_utp_input_utp_v4_0.rii.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Protected Exchange Quote Message Shortform Message
nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_shortform_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.protected_exchange_quote_message_shortform_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_shortform_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_shortform_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_shortform_message.fields(buffer, offset, packet, parent)
  end
end

-- Inbound Quote Messages Message Payload
nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message_payload = {}

-- Dissect: Inbound Quote Messages Message Payload
nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message_payload.dissect = function(buffer, offset, packet, parent, inbound_quote_messages_message_type)
  -- Dissect Protected Exchange Quote Message Shortform Message
  if inbound_quote_messages_message_type == "Q" then
    return nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_shortform_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Protected Exchange Quote Message Longform Message
  if inbound_quote_messages_message_type == "L" then
    return nasdaq_utp_input_utp_v4_0.protected_exchange_quote_message_longform_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Exchange Odd Lot Quote Message Short Form Message
  if inbound_quote_messages_message_type == "O" then
    return nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Exchange Odd Lot Quote Message Long Form Message
  if inbound_quote_messages_message_type == "J" then
    return nasdaq_utp_input_utp_v4_0.exchange_odd_lot_quote_message_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Exchange Combined Quote Message Short Form Message
  if inbound_quote_messages_message_type == "P" then
    return nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Exchange Combined Quote Message Long Form Message
  if inbound_quote_messages_message_type == "K" then
    return nasdaq_utp_input_utp_v4_0.exchange_combined_quote_message_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Finra Protected Quote Message With Bbo Info Message
  if inbound_quote_messages_message_type == "G" then
    return nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_with_bbo_info_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Finra Protected Quote Message Without Bbo Info Message
  if inbound_quote_messages_message_type == "F" then
    return nasdaq_utp_input_utp_v4_0.finra_protected_quote_message_without_bbo_info_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Finra Adf Odd Lot Quotation Message
  if inbound_quote_messages_message_type == "H" then
    return nasdaq_utp_input_utp_v4_0.finra_adf_odd_lot_quotation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Finra Adf Combined Quote Message With Bbo
  if inbound_quote_messages_message_type == "R" then
    return nasdaq_utp_input_utp_v4_0.finra_adf_combined_quote_message_with_bbo.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Inbound Quote Messages Message
nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message = {}

-- Calculate size of: Inbound Quote Messages Message
nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message_type.size

  -- Calculate runtime size of Inbound Quote Messages Message Payload field
  local inbound_quote_messages_message_payload_offset = offset + index
  local inbound_quote_messages_message_payload_type = buffer(inbound_quote_messages_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message_payload.size(buffer, inbound_quote_messages_message_payload_offset, inbound_quote_messages_message_payload_type)

  return index
end

-- Display: Inbound Quote Messages Message
nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inbound Quote Messages Message
nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inbound Quote Messages Message Type: 1 Byte Ascii String
  index, inbound_quote_messages_message_type = nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message_type.dissect(buffer, index, packet, parent)

  -- Inbound Quote Messages Message Payload: Runtime Type with 10 branches
  index = nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message_payload.dissect(buffer, index, packet, parent, inbound_quote_messages_message_type)

  return index
end

-- Dissect: Inbound Quote Messages Message
nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message.dissect = function(buffer, offset, packet, parent)
  if show.inbound_quote_messages_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.inbound_quote_messages_message, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message.fields(buffer, offset, packet, parent)
  end
end

-- Category Payload
nasdaq_utp_input_utp_v4_0.category_payload = {}

-- Dissect: Category Payload
nasdaq_utp_input_utp_v4_0.category_payload.dissect = function(buffer, offset, packet, parent, message_category)
  -- Dissect Inbound Quote Messages Message
  if message_category == "Q" then
    return nasdaq_utp_input_utp_v4_0.inbound_quote_messages_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inbound Trade Messages Message
  if message_category == "T" then
    return nasdaq_utp_input_utp_v4_0.inbound_trade_messages_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inbound Administrative Messages Message
  if message_category == "A" then
    return nasdaq_utp_input_utp_v4_0.inbound_administrative_messages_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Inbound Control Messages Message
  if message_category == "C" then
    return nasdaq_utp_input_utp_v4_0.inbound_control_messages_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Return Administrative Messages Message
  if message_category == "a" then
    return nasdaq_utp_input_utp_v4_0.return_administrative_messages_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Return Control Messages Message
  if message_category == "c" then
    return nasdaq_utp_input_utp_v4_0.return_control_messages_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_utp_input_utp_v4_0.message_header = {}

-- Size: Message Header
nasdaq_utp_input_utp_v4_0.message_header.size =
  nasdaq_utp_input_utp_v4_0.version.size + 
  nasdaq_utp_input_utp_v4_0.message_category.size

-- Display: Message Header
nasdaq_utp_input_utp_v4_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_utp_input_utp_v4_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: Byte
  index, version = nasdaq_utp_input_utp_v4_0.version.dissect(buffer, index, packet, parent)

  -- Message Category: Byte
  index, message_category = nasdaq_utp_input_utp_v4_0.message_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_utp_input_utp_v4_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Data Packet
nasdaq_utp_input_utp_v4_0.unsequenced_data_packet = {}

-- Calculate size of: Unsequenced Data Packet
nasdaq_utp_input_utp_v4_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_input_utp_v4_0.message_header.size

  -- Parse runtime size of: Category Payload
  index = index + buffer(offset + index - 5, 2):uint()

  return index
end

-- Display: Unsequenced Data Packet
nasdaq_utp_input_utp_v4_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_utp_input_utp_v4_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_utp_input_utp_v4_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Category Payload: Runtime Type with 6 branches
  index = nasdaq_utp_input_utp_v4_0.category_payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_utp_input_utp_v4_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
nasdaq_utp_input_utp_v4_0.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
nasdaq_utp_input_utp_v4_0.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_input_utp_v4_0.message_header.size

  -- Parse runtime size of: Category Payload
  index = index + buffer(offset + index - 5, 2):uint()

  return index
end

-- Display: Sequenced Data Packet
nasdaq_utp_input_utp_v4_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_utp_input_utp_v4_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_utp_input_utp_v4_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Category Payload: Runtime Type with 6 branches
  index = nasdaq_utp_input_utp_v4_0.category_payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_utp_input_utp_v4_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.sequenced_data_packet, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Tcp Payload
nasdaq_utp_input_utp_v4_0.tcp_payload = {}

-- Dissect: Tcp Payload
nasdaq_utp_input_utp_v4_0.tcp_payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return nasdaq_utp_input_utp_v4_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return nasdaq_utp_input_utp_v4_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Debug Packet
  if packet_type == "+" then
    return nasdaq_utp_input_utp_v4_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return nasdaq_utp_input_utp_v4_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return nasdaq_utp_input_utp_v4_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return nasdaq_utp_input_utp_v4_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat Packet
  if packet_type == "H" then
    return offset
  end
  -- Dissect Client Heartbeat Packet
  if packet_type == "R" then
    return offset
  end
  -- Dissect End Of Session Packet
  if packet_type == "Z" then
    return offset
  end
  -- Dissect Logout Request Packet
  if packet_type == "O" then
    return offset
  end

  return offset
end

-- Tcp Packet Header
nasdaq_utp_input_utp_v4_0.tcp_packet_header = {}

-- Size: Tcp Packet Header
nasdaq_utp_input_utp_v4_0.tcp_packet_header.size =
  nasdaq_utp_input_utp_v4_0.packet_length.size + 
  nasdaq_utp_input_utp_v4_0.packet_type.size

-- Display: Tcp Packet Header
nasdaq_utp_input_utp_v4_0.tcp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Packet Header
nasdaq_utp_input_utp_v4_0.tcp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: Short
  index, packet_length = nasdaq_utp_input_utp_v4_0.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: Char
  index, packet_type = nasdaq_utp_input_utp_v4_0.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tcp Packet Header
nasdaq_utp_input_utp_v4_0.tcp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.tcp_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_input_utp_v4_0.fields.tcp_packet_header, buffer(offset, 0))
    local index = nasdaq_utp_input_utp_v4_0.tcp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_input_utp_v4_0.tcp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_input_utp_v4_0.tcp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_utp_input_utp_v4_0.packet = {}

-- Verify required size of Tcp packet
nasdaq_utp_input_utp_v4_0.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_utp_input_utp_v4_0.tcp_packet_header.size
end

-- Dissect Packet
nasdaq_utp_input_utp_v4_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Tcp Packet Header: Struct of 2 fields
    index, tcp_packet_header = nasdaq_utp_input_utp_v4_0.tcp_packet_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Packet Type
    local packet_type = buffer(index - 1, 1):string()

    -- Tcp Payload: Runtime Type with 10 branches
    index = nasdaq_utp_input_utp_v4_0.tcp_payload.dissect(buffer, index, packet, parent, packet_type)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_utp_input_utp_v4_0.init()
end

-- Dissector for Nasdaq Utp Input Utp 4.0
function omi_nasdaq_utp_input_utp_v4_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_utp_input_utp_v4_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_utp_input_utp_v4_0, buffer(), omi_nasdaq_utp_input_utp_v4_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_utp_input_utp_v4_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq Utp Input Utp 4.0 (Tcp)
local function omi_nasdaq_utp_input_utp_v4_0_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_utp_input_utp_v4_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_utp_input_utp_v4_0
  omi_nasdaq_utp_input_utp_v4_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Utp Input Utp 4.0
omi_nasdaq_utp_input_utp_v4_0:register_heuristic("tcp", omi_nasdaq_utp_input_utp_v4_0_tcp_heuristic)

-- Register Nasdaq Utp Input Utp 4.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_utp_input_utp_v4_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 4.0
--   Date: Monday, June 1, 2026
--   Specification: UtpBinaryInputSpec.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
