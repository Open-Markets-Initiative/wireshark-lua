-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Uqdf Output Utp 3.0.c Protocol
local omi_nasdaq_uqdf_output_utp_v3_0_c = Proto("Omi.Nasdaq.Uqdf.Output.Utp.v3.0.c", "Nasdaq Uqdf Output Utp 3.0.c")

-- Protocol table
local nasdaq_uqdf_output_utp_v3_0_c = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Uqdf Output Utp 3.0.c Fields
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.action_time = ProtoField.new("Action Time", "nasdaq.uqdf.output.utp.v3.0.c.actiontime", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.adf_timestamp = ProtoField.new("Adf Timestamp", "nasdaq.uqdf.output.utp.v3.0.c.adftimestamp", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.administrative_message = ProtoField.new("Administrative Message", "nasdaq.uqdf.output.utp.v3.0.c.administrativemessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "nasdaq.uqdf.output.utp.v3.0.c.administrativemessagetype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.ask_adf_mpid = ProtoField.new("Ask Adf Mpid", "nasdaq.uqdf.output.utp.v3.0.c.askadfmpid", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.ask_price_long = ProtoField.new("Ask Price Long", "nasdaq.uqdf.output.utp.v3.0.c.askpricelong", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.ask_price_short = ProtoField.new("Ask Price Short", "nasdaq.uqdf.output.utp.v3.0.c.askpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.ask_size_long = ProtoField.new("Ask Size Long", "nasdaq.uqdf.output.utp.v3.0.c.asksizelong", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.ask_size_short = ProtoField.new("Ask Size Short", "nasdaq.uqdf.output.utp.v3.0.c.asksizeshort", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.uqdf.output.utp.v3.0.c.authenticity", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bid_adf_mpid = ProtoField.new("Bid Adf Mpid", "nasdaq.uqdf.output.utp.v3.0.c.bidadfmpid", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bid_price_long = ProtoField.new("Bid Price Long", "nasdaq.uqdf.output.utp.v3.0.c.bidpricelong", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bid_price_short = ProtoField.new("Bid Price Short", "nasdaq.uqdf.output.utp.v3.0.c.bidpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bid_size_long = ProtoField.new("Bid Size Long", "nasdaq.uqdf.output.utp.v3.0.c.bidsizelong", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bid_size_short = ProtoField.new("Bid Size Short", "nasdaq.uqdf.output.utp.v3.0.c.bidsizeshort", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_appendage_indicator = ProtoField.new("Bolo Appendage Indicator", "nasdaq.uqdf.output.utp.v3.0.c.boloappendageindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_appendage_long_form = ProtoField.new("Bolo Appendage Long Form", "nasdaq.uqdf.output.utp.v3.0.c.boloappendagelongform", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_appendage_mpid_form = ProtoField.new("Bolo Appendage Mpid Form", "nasdaq.uqdf.output.utp.v3.0.c.boloappendagempidform", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_appendage_short_form = ProtoField.new("Bolo Appendage Short Form", "nasdaq.uqdf.output.utp.v3.0.c.boloappendageshortform", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_ask_price_long = ProtoField.new("Bolo Ask Price Long", "nasdaq.uqdf.output.utp.v3.0.c.boloaskpricelong", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_ask_price_short = ProtoField.new("Bolo Ask Price Short", "nasdaq.uqdf.output.utp.v3.0.c.boloaskpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_ask_size = ProtoField.new("Bolo Ask Size", "nasdaq.uqdf.output.utp.v3.0.c.boloasksize", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_best_ask_market_center = ProtoField.new("Bolo Best Ask Market Center", "nasdaq.uqdf.output.utp.v3.0.c.bolobestaskmarketcenter", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_best_ask_market_participant_identifier = ProtoField.new("Bolo Best Ask Market Participant Identifier", "nasdaq.uqdf.output.utp.v3.0.c.bolobestaskmarketparticipantidentifier", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_best_bid_market_center = ProtoField.new("Bolo Best Bid Market Center", "nasdaq.uqdf.output.utp.v3.0.c.bolobestbidmarketcenter", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_best_bid_market_participant_identifier = ProtoField.new("Bolo Best Bid Market Participant Identifier", "nasdaq.uqdf.output.utp.v3.0.c.bolobestbidmarketparticipantidentifier", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_bid_price_long = ProtoField.new("Bolo Bid Price Long", "nasdaq.uqdf.output.utp.v3.0.c.bolobidpricelong", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_bid_price_short = ProtoField.new("Bolo Bid Price Short", "nasdaq.uqdf.output.utp.v3.0.c.bolobidpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_bid_size = ProtoField.new("Bolo Bid Size", "nasdaq.uqdf.output.utp.v3.0.c.bolobidsize", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.collar_down_price = ProtoField.new("Collar Down Price", "nasdaq.uqdf.output.utp.v3.0.c.collardownprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.collar_extension_indicator = ProtoField.new("Collar Extension Indicator", "nasdaq.uqdf.output.utp.v3.0.c.collarextensionindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.collar_reference_price = ProtoField.new("Collar Reference Price", "nasdaq.uqdf.output.utp.v3.0.c.collarreferenceprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.collar_up_price = ProtoField.new("Collar Up Price", "nasdaq.uqdf.output.utp.v3.0.c.collarupprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.control_message = ProtoField.new("Control Message", "nasdaq.uqdf.output.utp.v3.0.c.controlmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.control_message_type = ProtoField.new("Control Message Type", "nasdaq.uqdf.output.utp.v3.0.c.controlmessagetype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.uqdf.output.utp.v3.0.c.financialstatusindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.finra_adf_mpid_appendage = ProtoField.new("Finra Adf Mpid Appendage", "nasdaq.uqdf.output.utp.v3.0.c.finraadfmpidappendage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.finra_adf_mpid_appendage_indicator = ProtoField.new("Finra Adf Mpid Appendage Indicator", "nasdaq.uqdf.output.utp.v3.0.c.finraadfmpidappendageindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.finra_market_participant = ProtoField.new("Finra Market Participant", "nasdaq.uqdf.output.utp.v3.0.c.finramarketparticipant", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.issue_name = ProtoField.new("Issue Name", "nasdaq.uqdf.output.utp.v3.0.c.issuename", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.issue_subtype = ProtoField.new("Issue Subtype", "nasdaq.uqdf.output.utp.v3.0.c.issuesubtype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.issue_type = ProtoField.new("Issue Type", "nasdaq.uqdf.output.utp.v3.0.c.issuetype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.limit_down_price = ProtoField.new("Limit Down Price", "nasdaq.uqdf.output.utp.v3.0.c.limitdownprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.limit_up_price = ProtoField.new("Limit Up Price", "nasdaq.uqdf.output.utp.v3.0.c.limitupprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.luld_bbo_indicator = ProtoField.new("Luld Bbo Indicator", "nasdaq.uqdf.output.utp.v3.0.c.luldbboindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.luld_national_bbo_indicator = ProtoField.new("Luld National Bbo Indicator", "nasdaq.uqdf.output.utp.v3.0.c.luldnationalbboindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.luld_price_band_effective_time = ProtoField.new("Luld Price Band Effective Time", "nasdaq.uqdf.output.utp.v3.0.c.luldpricebandeffectivetime", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.luld_price_band_indicator = ProtoField.new("Luld Price Band Indicator", "nasdaq.uqdf.output.utp.v3.0.c.luldpricebandindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_ask_price = ProtoField.new("Market Center Ask Price", "nasdaq.uqdf.output.utp.v3.0.c.marketcenteraskprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_ask_size = ProtoField.new("Market Center Ask Size", "nasdaq.uqdf.output.utp.v3.0.c.marketcenterasksize", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_bid_price = ProtoField.new("Market Center Bid Price", "nasdaq.uqdf.output.utp.v3.0.c.marketcenterbidprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_bid_size = ProtoField.new("Market Center Bid Size", "nasdaq.uqdf.output.utp.v3.0.c.marketcenterbidsize", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_close_recap = ProtoField.new("Market Center Close Recap", "nasdaq.uqdf.output.utp.v3.0.c.marketcentercloserecap", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_identifier = ProtoField.new("Market Center Identifier", "nasdaq.uqdf.output.utp.v3.0.c.marketcenteridentifier", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_originator = ProtoField.new("Market Center Originator", "nasdaq.uqdf.output.utp.v3.0.c.marketcenteroriginator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_tier = ProtoField.new("Market Tier", "nasdaq.uqdf.output.utp.v3.0.c.markettier", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.message = ProtoField.new("Message", "nasdaq.uqdf.output.utp.v3.0.c.message", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.message_category = ProtoField.new("Message Category", "nasdaq.uqdf.output.utp.v3.0.c.messagecategory", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.message_count = ProtoField.new("Message Count", "nasdaq.uqdf.output.utp.v3.0.c.messagecount", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.message_header = ProtoField.new("Message Header", "nasdaq.uqdf.output.utp.v3.0.c.messageheader", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.message_length = ProtoField.new("Message Length", "nasdaq.uqdf.output.utp.v3.0.c.messagelength", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.mold_udp_64_packet = ProtoField.new("Mold Udp 64 Packet", "nasdaq.uqdf.output.utp.v3.0.c.moldudp64packet", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.mwcb_level_1 = ProtoField.new("Mwcb Level 1", "nasdaq.uqdf.output.utp.v3.0.c.mwcblevel1", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "nasdaq.uqdf.output.utp.v3.0.c.mwcblevel2", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "nasdaq.uqdf.output.utp.v3.0.c.mwcblevel3", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.mwcb_status_level_indicator = ProtoField.new("Mwcb Status Level Indicator", "nasdaq.uqdf.output.utp.v3.0.c.mwcbstatuslevelindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_bbo_appendage_longform = ProtoField.new("National Bbo Appendage Longform", "nasdaq.uqdf.output.utp.v3.0.c.nationalbboappendagelongform", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_bbo_appendage_shortform = ProtoField.new("National Bbo Appendage Shortform", "nasdaq.uqdf.output.utp.v3.0.c.nationalbboappendageshortform", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_ask_market_center = ProtoField.new("National Best Ask Market Center", "nasdaq.uqdf.output.utp.v3.0.c.nationalbestaskmarketcenter", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_ask_price_long = ProtoField.new("National Best Ask Price Long", "nasdaq.uqdf.output.utp.v3.0.c.nationalbestaskpricelong", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_ask_price_short = ProtoField.new("National Best Ask Price Short", "nasdaq.uqdf.output.utp.v3.0.c.nationalbestaskpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_ask_size = ProtoField.new("National Best Ask Size", "nasdaq.uqdf.output.utp.v3.0.c.nationalbestasksize", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_ask_size_long = ProtoField.new("National Best Ask Size Long", "nasdaq.uqdf.output.utp.v3.0.c.nationalbestasksizelong", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_ask_size_short = ProtoField.new("National Best Ask Size Short", "nasdaq.uqdf.output.utp.v3.0.c.nationalbestasksizeshort", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_bid_market_center = ProtoField.new("National Best Bid Market Center", "nasdaq.uqdf.output.utp.v3.0.c.nationalbestbidmarketcenter", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_bid_price_long = ProtoField.new("National Best Bid Price Long", "nasdaq.uqdf.output.utp.v3.0.c.nationalbestbidpricelong", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_bid_price_short = ProtoField.new("National Best Bid Price Short", "nasdaq.uqdf.output.utp.v3.0.c.nationalbestbidpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_bid_size = ProtoField.new("National Best Bid Size", "nasdaq.uqdf.output.utp.v3.0.c.nationalbestbidsize", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_bid_size_long = ProtoField.new("National Best Bid Size Long", "nasdaq.uqdf.output.utp.v3.0.c.nationalbestbidsizelong", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_bid_size_short = ProtoField.new("National Best Bid Size Short", "nasdaq.uqdf.output.utp.v3.0.c.nationalbestbidsizeshort", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.nbbo_appendage_indicator = ProtoField.new("Nbbo Appendage Indicator", "nasdaq.uqdf.output.utp.v3.0.c.nbboappendageindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.nbbo_quote_condition = ProtoField.new("Nbbo Quote Condition", "nasdaq.uqdf.output.utp.v3.0.c.nbboquotecondition", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.number_of_market_center_attachments = ProtoField.new("Number Of Market Center Attachments", "nasdaq.uqdf.output.utp.v3.0.c.numberofmarketcenterattachments", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.odd_lot_attachment_count = ProtoField.new("Odd Lot Attachment Count", "nasdaq.uqdf.output.utp.v3.0.c.oddlotattachmentcount", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.odd_lot_attachment_type = ProtoField.new("Odd Lot Attachment Type", "nasdaq.uqdf.output.utp.v3.0.c.oddlotattachmenttype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.old_symbol = ProtoField.new("Old Symbol", "nasdaq.uqdf.output.utp.v3.0.c.oldsymbol", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.participant_token = ProtoField.new("Participant Token", "nasdaq.uqdf.output.utp.v3.0.c.participanttoken", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_ask_price_long = ProtoField.new("Protected Ask Price Long", "nasdaq.uqdf.output.utp.v3.0.c.protectedaskpricelong", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_ask_price_short = ProtoField.new("Protected Ask Price Short", "nasdaq.uqdf.output.utp.v3.0.c.protectedaskpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_ask_size_long = ProtoField.new("Protected Ask Size Long", "nasdaq.uqdf.output.utp.v3.0.c.protectedasksizelong", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_ask_size_short = ProtoField.new("Protected Ask Size Short", "nasdaq.uqdf.output.utp.v3.0.c.protectedasksizeshort", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_bid_price_long = ProtoField.new("Protected Bid Price Long", "nasdaq.uqdf.output.utp.v3.0.c.protectedbidpricelong", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_bid_price_short = ProtoField.new("Protected Bid Price Short", "nasdaq.uqdf.output.utp.v3.0.c.protectedbidpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_bid_size_long = ProtoField.new("Protected Bid Size Long", "nasdaq.uqdf.output.utp.v3.0.c.protectedbidsizelong", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_bid_size_short = ProtoField.new("Protected Bid Size Short", "nasdaq.uqdf.output.utp.v3.0.c.protectedbidsizeshort", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.uqdf.output.utp.v3.0.c.quotecondition", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.quote_message = ProtoField.new("Quote Message", "nasdaq.uqdf.output.utp.v3.0.c.quotemessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.quote_message_type = ProtoField.new("Quote Message Type", "nasdaq.uqdf.output.utp.v3.0.c.quotemessagetype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.reason_for_the_trading_action = ProtoField.new("Reason For The Trading Action", "nasdaq.uqdf.output.utp.v3.0.c.reasonforthetradingaction", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.uqdf.output.utp.v3.0.c.regshoaction", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.retail_interest_indicator = ProtoField.new("Retail Interest Indicator", "nasdaq.uqdf.output.utp.v3.0.c.retailinterestindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.uqdf.output.utp.v3.0.c.roundlotsize", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.uqdf.output.utp.v3.0.c.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.sip_generated_update_flag = ProtoField.new("Sip Generated Update Flag", "nasdaq.uqdf.output.utp.v3.0.c.sipgeneratedupdateflag", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.sip_timestamp = ProtoField.new("Sip Timestamp", "nasdaq.uqdf.output.utp.v3.0.c.siptimestamp", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.special_condition = ProtoField.new("Special Condition", "nasdaq.uqdf.output.utp.v3.0.c.specialcondition", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.sub_market_center_id = ProtoField.new("Sub Market Center Id", "nasdaq.uqdf.output.utp.v3.0.c.submarketcenterid", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.symbol_long = ProtoField.new("Symbol Long", "nasdaq.uqdf.output.utp.v3.0.c.symbollong", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.symbol_short = ProtoField.new("Symbol Short", "nasdaq.uqdf.output.utp.v3.0.c.symbolshort", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.text = ProtoField.new("Text", "nasdaq.uqdf.output.utp.v3.0.c.text", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.text_length = ProtoField.new("Text Length", "nasdaq.uqdf.output.utp.v3.0.c.textlength", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.timestamp_1 = ProtoField.new("Timestamp 1", "nasdaq.uqdf.output.utp.v3.0.c.timestamp1", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.timestamp_2 = ProtoField.new("Timestamp 2", "nasdaq.uqdf.output.utp.v3.0.c.timestamp2", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.trading_action_code = ProtoField.new("Trading Action Code", "nasdaq.uqdf.output.utp.v3.0.c.tradingactioncode", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.trading_action_sequence_number = ProtoField.new("Trading Action Sequence Number", "nasdaq.uqdf.output.utp.v3.0.c.tradingactionsequencenumber", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.udp_packet_header = ProtoField.new("Udp Packet Header", "nasdaq.uqdf.output.utp.v3.0.c.udppacketheader", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.udp_sequence_number = ProtoField.new("Udp Sequence Number", "nasdaq.uqdf.output.utp.v3.0.c.udpsequencenumber", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.udp_session = ProtoField.new("Udp Session", "nasdaq.uqdf.output.utp.v3.0.c.udpsession", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.version = ProtoField.new("Version", "nasdaq.uqdf.output.utp.v3.0.c.version", ftypes.STRING)

-- Nasdaq Uqdf Utp Output 3.0.c Application Messages
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.auction_collar_message = ProtoField.new("Auction Collar Message", "nasdaq.uqdf.output.utp.v3.0.c.auctioncollarmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.combined_quote_message_long_form_message = ProtoField.new("Combined Quote Message Long Form Message", "nasdaq.uqdf.output.utp.v3.0.c.combinedquotemessagelongformmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.combined_quote_message_short_form_message = ProtoField.new("Combined Quote Message Short Form Message", "nasdaq.uqdf.output.utp.v3.0.c.combinedquotemessageshortformmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.cross_sro_trading_action_message = ProtoField.new("Cross Sro Trading Action Message", "nasdaq.uqdf.output.utp.v3.0.c.crosssrotradingactionmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.end_of_day_message = ProtoField.new("End Of Day Message", "nasdaq.uqdf.output.utp.v3.0.c.endofdaymessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.end_of_transmissions_message = ProtoField.new("End Of Transmissions Message", "nasdaq.uqdf.output.utp.v3.0.c.endoftransmissionsmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.finra_adf_market_participant_quotation_message = ProtoField.new("Finra Adf Market Participant Quotation Message", "nasdaq.uqdf.output.utp.v3.0.c.finraadfmarketparticipantquotationmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.general_administrative_message = ProtoField.new("General Administrative Message", "nasdaq.uqdf.output.utp.v3.0.c.generaladministrativemessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.issue_symbol_directory_message = ProtoField.new("Issue Symbol Directory Message", "nasdaq.uqdf.output.utp.v3.0.c.issuesymboldirectorymessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.limit_up_limit_down_price_band_message = ProtoField.new("Limit Up Limit Down Price Band Message", "nasdaq.uqdf.output.utp.v3.0.c.limituplimitdownpricebandmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_trading_action_message = ProtoField.new("Market Center Trading Action Message", "nasdaq.uqdf.output.utp.v3.0.c.marketcentertradingactionmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_session_close_message = ProtoField.new("Market Session Close Message", "nasdaq.uqdf.output.utp.v3.0.c.marketsessionclosemessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_session_open_message = ProtoField.new("Market Session Open Message", "nasdaq.uqdf.output.utp.v3.0.c.marketsessionopenmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_wide_circuit_breaker_decline_level_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Message", "nasdaq.uqdf.output.utp.v3.0.c.marketwidecircuitbreakerdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_wide_circuit_breaker_status_message = ProtoField.new("Market Wide Circuit Breaker Status Message", "nasdaq.uqdf.output.utp.v3.0.c.marketwidecircuitbreakerstatusmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.odd_lot_quote_message_long_form_message = ProtoField.new("Odd Lot Quote Message Long Form Message", "nasdaq.uqdf.output.utp.v3.0.c.oddlotquotemessagelongformmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.odd_lot_quote_message_short_form_message = ProtoField.new("Odd Lot Quote Message Short Form Message", "nasdaq.uqdf.output.utp.v3.0.c.oddlotquotemessageshortformmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.quote_wipe_out_message = ProtoField.new("Quote Wipe Out Message", "nasdaq.uqdf.output.utp.v3.0.c.quotewipeoutmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.uqdf.output.utp.v3.0.c.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.session_close_recap_message = ProtoField.new("Session Close Recap Message", "nasdaq.uqdf.output.utp.v3.0.c.sessioncloserecapmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "nasdaq.uqdf.output.utp.v3.0.c.startofdaymessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.utp_quote_longform_message = ProtoField.new("Utp Quote Longform Message", "nasdaq.uqdf.output.utp.v3.0.c.utpquotelongformmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.utp_quote_shortform_message = ProtoField.new("Utp Quote Shortform Message", "nasdaq.uqdf.output.utp.v3.0.c.utpquoteshortformmessage", ftypes.STRING)

-- Nasdaq Uqdf Output Utp 3.0.c generated fields
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_close_recap_index = ProtoField.new("Market Center Close Recap Index", "nasdaq.uqdf.output.utp.v3.0.c.marketcentercloserecapindex", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v3_0_c.fields.message_index = ProtoField.new("Message Index", "nasdaq.uqdf.output.utp.v3.0.c.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq Uqdf Output Utp 3.0.c Element Dissection Options
show.administrative_message = true
show.application_messages = true
show.bolo_appendage_long_form = true
show.bolo_appendage_mpid_form = true
show.bolo_appendage_short_form = true
show.control_message = true
show.finra_adf_mpid_appendage = true
show.market_center_close_recap = true
show.message = true
show.message_header = true
show.mold_udp_64_packet = true
show.national_bbo_appendage_longform = true
show.national_bbo_appendage_shortform = true
show.quote_message = true
show.udp_packet_header = true
show.message_index = true
show.market_center_close_recap_index = true

-- Register Nasdaq Uqdf Output Utp 3.0.c Show Options
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_administrative_message = Pref.bool("Show Administrative Message", show.administrative_message, "Parse and add Administrative Message to protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_bolo_appendage_long_form = Pref.bool("Show Bolo Appendage Long Form", show.bolo_appendage_long_form, "Parse and add Bolo Appendage Long Form to protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_bolo_appendage_mpid_form = Pref.bool("Show Bolo Appendage Mpid Form", show.bolo_appendage_mpid_form, "Parse and add Bolo Appendage Mpid Form to protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_bolo_appendage_short_form = Pref.bool("Show Bolo Appendage Short Form", show.bolo_appendage_short_form, "Parse and add Bolo Appendage Short Form to protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_control_message = Pref.bool("Show Control Message", show.control_message, "Parse and add Control Message to protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_finra_adf_mpid_appendage = Pref.bool("Show Finra Adf Mpid Appendage", show.finra_adf_mpid_appendage, "Parse and add Finra Adf Mpid Appendage to protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_market_center_close_recap = Pref.bool("Show Market Center Close Recap", show.market_center_close_recap, "Parse and add Market Center Close Recap to protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_mold_udp_64_packet = Pref.bool("Show Mold Udp 64 Packet", show.mold_udp_64_packet, "Parse and add Mold Udp 64 Packet to protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_national_bbo_appendage_longform = Pref.bool("Show National Bbo Appendage Longform", show.national_bbo_appendage_longform, "Parse and add National Bbo Appendage Longform to protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_national_bbo_appendage_shortform = Pref.bool("Show National Bbo Appendage Shortform", show.national_bbo_appendage_shortform, "Parse and add National Bbo Appendage Shortform to protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_quote_message = Pref.bool("Show Quote Message", show.quote_message, "Parse and add Quote Message to protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_udp_packet_header = Pref.bool("Show Udp Packet Header", show.udp_packet_header, "Parse and add Udp Packet Header to protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_market_center_close_recap_index = Pref.bool("Show Market Center Close Recap Index", show.market_center_close_recap_index, "Show generated market center close recap index in protocol tree")


-- Handle changed preferences
function omi_nasdaq_uqdf_output_utp_v3_0_c.prefs_changed()

  -- Check if preferences have changed
  if show.administrative_message ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_administrative_message then
    show.administrative_message = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_administrative_message
  end
  if show.application_messages ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_application_messages
  end
  if show.bolo_appendage_long_form ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_bolo_appendage_long_form then
    show.bolo_appendage_long_form = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_bolo_appendage_long_form
  end
  if show.bolo_appendage_mpid_form ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_bolo_appendage_mpid_form then
    show.bolo_appendage_mpid_form = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_bolo_appendage_mpid_form
  end
  if show.bolo_appendage_short_form ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_bolo_appendage_short_form then
    show.bolo_appendage_short_form = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_bolo_appendage_short_form
  end
  if show.control_message ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_control_message then
    show.control_message = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_control_message
  end
  if show.finra_adf_mpid_appendage ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_finra_adf_mpid_appendage then
    show.finra_adf_mpid_appendage = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_finra_adf_mpid_appendage
  end
  if show.market_center_close_recap ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_market_center_close_recap then
    show.market_center_close_recap = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_market_center_close_recap
  end
  if show.message ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_message then
    show.message = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_message
  end
  if show.message_header ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_message_header then
    show.message_header = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_message_header
  end
  if show.mold_udp_64_packet ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_mold_udp_64_packet then
    show.mold_udp_64_packet = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_mold_udp_64_packet
  end
  if show.national_bbo_appendage_longform ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_national_bbo_appendage_longform then
    show.national_bbo_appendage_longform = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_national_bbo_appendage_longform
  end
  if show.national_bbo_appendage_shortform ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_national_bbo_appendage_shortform then
    show.national_bbo_appendage_shortform = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_national_bbo_appendage_shortform
  end
  if show.quote_message ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_quote_message then
    show.quote_message = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_quote_message
  end
  if show.udp_packet_header ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_udp_packet_header then
    show.udp_packet_header = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_udp_packet_header
  end
  if show.message_index ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_message_index then
    show.message_index = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_message_index
  end
  if show.market_center_close_recap_index ~= omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_market_center_close_recap_index then
    show.market_center_close_recap_index = omi_nasdaq_uqdf_output_utp_v3_0_c.prefs.show_market_center_close_recap_index
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
-- Nasdaq Uqdf Output Utp 3.0.c Fields
-----------------------------------------------------------------------

-- Action Time
nasdaq_uqdf_output_utp_v3_0_c.action_time = {}

-- Size: Action Time
nasdaq_uqdf_output_utp_v3_0_c.action_time.size = 8

-- Display: Action Time
nasdaq_uqdf_output_utp_v3_0_c.action_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Action Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Action Time
nasdaq_uqdf_output_utp_v3_0_c.action_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.action_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v3_0_c.action_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.action_time, range, value, display)

  return offset + length, value
end

-- Adf Timestamp
nasdaq_uqdf_output_utp_v3_0_c.adf_timestamp = {}

-- Size: Adf Timestamp
nasdaq_uqdf_output_utp_v3_0_c.adf_timestamp.size = 8

-- Display: Adf Timestamp
nasdaq_uqdf_output_utp_v3_0_c.adf_timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Adf Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Adf Timestamp
nasdaq_uqdf_output_utp_v3_0_c.adf_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.adf_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v3_0_c.adf_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.adf_timestamp, range, value, display)

  return offset + length, value
end

-- Administrative Message Type
nasdaq_uqdf_output_utp_v3_0_c.administrative_message_type = {}

-- Size: Administrative Message Type
nasdaq_uqdf_output_utp_v3_0_c.administrative_message_type.size = 1

-- Display: Administrative Message Type
nasdaq_uqdf_output_utp_v3_0_c.administrative_message_type.display = function(value)
  return "Administrative Message Type: "..value
end

-- Dissect: Administrative Message Type
nasdaq_uqdf_output_utp_v3_0_c.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Ask Adf Mpid
nasdaq_uqdf_output_utp_v3_0_c.ask_adf_mpid = {}

-- Size: Ask Adf Mpid
nasdaq_uqdf_output_utp_v3_0_c.ask_adf_mpid.size = 4

-- Display: Ask Adf Mpid
nasdaq_uqdf_output_utp_v3_0_c.ask_adf_mpid.display = function(value)
  return "Ask Adf Mpid: "..value
end

-- Dissect: Ask Adf Mpid
nasdaq_uqdf_output_utp_v3_0_c.ask_adf_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.ask_adf_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v3_0_c.ask_adf_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.ask_adf_mpid, range, value, display)

  return offset + length, value
end

-- Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.ask_price_long = {}

-- Size: Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.ask_price_long.size = 8

-- Display: Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.ask_price_long.display = function(value)
  return "Ask Price Long: "..value
end

-- Translate: Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.ask_price_long.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.ask_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v3_0_c.ask_price_long.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.ask_price_short = {}

-- Size: Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.ask_price_short.size = 2

-- Display: Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Translate: Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.ask_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v3_0_c.ask_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Size Long
nasdaq_uqdf_output_utp_v3_0_c.ask_size_long = {}

-- Size: Ask Size Long
nasdaq_uqdf_output_utp_v3_0_c.ask_size_long.size = 4

-- Display: Ask Size Long
nasdaq_uqdf_output_utp_v3_0_c.ask_size_long.display = function(value)
  return "Ask Size Long: "..value
end

-- Dissect: Ask Size Long
nasdaq_uqdf_output_utp_v3_0_c.ask_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.ask_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.ask_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.ask_size_long, range, value, display)

  return offset + length, value
end

-- Ask Size Short
nasdaq_uqdf_output_utp_v3_0_c.ask_size_short = {}

-- Size: Ask Size Short
nasdaq_uqdf_output_utp_v3_0_c.ask_size_short.size = 2

-- Display: Ask Size Short
nasdaq_uqdf_output_utp_v3_0_c.ask_size_short.display = function(value)
  return "Ask Size Short: "..value
end

-- Dissect: Ask Size Short
nasdaq_uqdf_output_utp_v3_0_c.ask_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.ask_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.ask_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.ask_size_short, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_uqdf_output_utp_v3_0_c.authenticity = {}

-- Size: Authenticity
nasdaq_uqdf_output_utp_v3_0_c.authenticity.size = 1

-- Display: Authenticity
nasdaq_uqdf_output_utp_v3_0_c.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end
  if value == "D" then
    return "Authenticity: Demo (D)"
  end
  if value == "X" then
    return "Authenticity: Deleted (X)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_uqdf_output_utp_v3_0_c.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Bid Adf Mpid
nasdaq_uqdf_output_utp_v3_0_c.bid_adf_mpid = {}

-- Size: Bid Adf Mpid
nasdaq_uqdf_output_utp_v3_0_c.bid_adf_mpid.size = 4

-- Display: Bid Adf Mpid
nasdaq_uqdf_output_utp_v3_0_c.bid_adf_mpid.display = function(value)
  return "Bid Adf Mpid: "..value
end

-- Dissect: Bid Adf Mpid
nasdaq_uqdf_output_utp_v3_0_c.bid_adf_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bid_adf_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v3_0_c.bid_adf_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bid_adf_mpid, range, value, display)

  return offset + length, value
end

-- Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.bid_price_long = {}

-- Size: Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.bid_price_long.size = 8

-- Display: Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Translate: Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.bid_price_long.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v3_0_c.bid_price_long.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.bid_price_short = {}

-- Size: Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.bid_price_short.size = 2

-- Display: Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v3_0_c.bid_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Size Long
nasdaq_uqdf_output_utp_v3_0_c.bid_size_long = {}

-- Size: Bid Size Long
nasdaq_uqdf_output_utp_v3_0_c.bid_size_long.size = 4

-- Display: Bid Size Long
nasdaq_uqdf_output_utp_v3_0_c.bid_size_long.display = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
nasdaq_uqdf_output_utp_v3_0_c.bid_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bid_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.bid_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Bid Size Short
nasdaq_uqdf_output_utp_v3_0_c.bid_size_short = {}

-- Size: Bid Size Short
nasdaq_uqdf_output_utp_v3_0_c.bid_size_short.size = 2

-- Display: Bid Size Short
nasdaq_uqdf_output_utp_v3_0_c.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
nasdaq_uqdf_output_utp_v3_0_c.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Bolo Appendage Indicator
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_indicator = {}

-- Size: Bolo Appendage Indicator
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_indicator.size = 1

-- Display: Bolo Appendage Indicator
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_indicator.display = function(value)
  if value == "0" then
    return "Bolo Appendage Indicator: No Bolo Change (0)"
  end
  if value == "1" then
    return "Bolo Appendage Indicator: No Bolo Can Be Calculated (1)"
  end
  if value == "2" then
    return "Bolo Appendage Indicator: Short Form Bolo Appendage Attached (2)"
  end
  if value == "3" then
    return "Bolo Appendage Indicator: Long Form Bolo Appendage Attached (3)"
  end
  if value == "5" then
    return "Bolo Appendage Indicator: Mpid Form Bolo Appendage Attached (5)"
  end

  return "Bolo Appendage Indicator: Unknown("..value..")"
end

-- Dissect: Bolo Appendage Indicator
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Bolo Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_long = {}

-- Size: Bolo Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_long.size = 8

-- Display: Bolo Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_long.display = function(value)
  return "Bolo Ask Price Long: "..value
end

-- Translate: Bolo Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_long.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bolo Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_long.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_ask_price_long, range, value, display)

  return offset + length, value
end

-- Bolo Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_short = {}

-- Size: Bolo Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_short.size = 2

-- Display: Bolo Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_short.display = function(value)
  return "Bolo Ask Price Short: "..value
end

-- Translate: Bolo Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bolo Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_ask_price_short, range, value, display)

  return offset + length, value
end

-- Bolo Ask Size
nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_size = {}

-- Size: Bolo Ask Size
nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_size.size = 2

-- Display: Bolo Ask Size
nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_size.display = function(value)
  return "Bolo Ask Size: "..value
end

-- Dissect: Bolo Ask Size
nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_ask_size, range, value, display)

  return offset + length, value
end

-- Bolo Best Ask Market Center
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_center = {}

-- Size: Bolo Best Ask Market Center
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_center.size = 1

-- Display: Bolo Best Ask Market Center
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_center.display = function(value)
  return "Bolo Best Ask Market Center: "..value
end

-- Dissect: Bolo Best Ask Market Center
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_best_ask_market_center, range, value, display)

  return offset + length, value
end

-- Bolo Best Ask Market Participant Identifier
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_participant_identifier = {}

-- Size: Bolo Best Ask Market Participant Identifier
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_participant_identifier.size = 4

-- Display: Bolo Best Ask Market Participant Identifier
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_participant_identifier.display = function(value)
  return "Bolo Best Ask Market Participant Identifier: "..value
end

-- Dissect: Bolo Best Ask Market Participant Identifier
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_participant_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_participant_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_participant_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_best_ask_market_participant_identifier, range, value, display)

  return offset + length, value
end

-- Bolo Best Bid Market Center
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_center = {}

-- Size: Bolo Best Bid Market Center
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_center.size = 1

-- Display: Bolo Best Bid Market Center
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_center.display = function(value)
  return "Bolo Best Bid Market Center: "..value
end

-- Dissect: Bolo Best Bid Market Center
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_best_bid_market_center, range, value, display)

  return offset + length, value
end

-- Bolo Best Bid Market Participant Identifier
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_participant_identifier = {}

-- Size: Bolo Best Bid Market Participant Identifier
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_participant_identifier.size = 4

-- Display: Bolo Best Bid Market Participant Identifier
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_participant_identifier.display = function(value)
  return "Bolo Best Bid Market Participant Identifier: "..value
end

-- Dissect: Bolo Best Bid Market Participant Identifier
nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_participant_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_participant_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_participant_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_best_bid_market_participant_identifier, range, value, display)

  return offset + length, value
end

-- Bolo Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_long = {}

-- Size: Bolo Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_long.size = 8

-- Display: Bolo Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_long.display = function(value)
  return "Bolo Bid Price Long: "..value
end

-- Translate: Bolo Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_long.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bolo Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_long.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_bid_price_long, range, value, display)

  return offset + length, value
end

-- Bolo Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_short = {}

-- Size: Bolo Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_short.size = 2

-- Display: Bolo Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_short.display = function(value)
  return "Bolo Bid Price Short: "..value
end

-- Translate: Bolo Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bolo Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_bid_price_short, range, value, display)

  return offset + length, value
end

-- Bolo Bid Size
nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_size = {}

-- Size: Bolo Bid Size
nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_size.size = 2

-- Display: Bolo Bid Size
nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_size.display = function(value)
  return "Bolo Bid Size: "..value
end

-- Dissect: Bolo Bid Size
nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_bid_size, range, value, display)

  return offset + length, value
end

-- Collar Down Price
nasdaq_uqdf_output_utp_v3_0_c.collar_down_price = {}

-- Size: Collar Down Price
nasdaq_uqdf_output_utp_v3_0_c.collar_down_price.size = 8

-- Display: Collar Down Price
nasdaq_uqdf_output_utp_v3_0_c.collar_down_price.display = function(value)
  return "Collar Down Price: "..value
end

-- Translate: Collar Down Price
nasdaq_uqdf_output_utp_v3_0_c.collar_down_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Down Price
nasdaq_uqdf_output_utp_v3_0_c.collar_down_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.collar_down_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v3_0_c.collar_down_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.collar_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.collar_down_price, range, value, display)

  return offset + length, value
end

-- Collar Extension Indicator
nasdaq_uqdf_output_utp_v3_0_c.collar_extension_indicator = {}

-- Size: Collar Extension Indicator
nasdaq_uqdf_output_utp_v3_0_c.collar_extension_indicator.size = 1

-- Display: Collar Extension Indicator
nasdaq_uqdf_output_utp_v3_0_c.collar_extension_indicator.display = function(value)
  return "Collar Extension Indicator: "..value
end

-- Dissect: Collar Extension Indicator
nasdaq_uqdf_output_utp_v3_0_c.collar_extension_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.collar_extension_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.collar_extension_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.collar_extension_indicator, range, value, display)

  return offset + length, value
end

-- Collar Reference Price
nasdaq_uqdf_output_utp_v3_0_c.collar_reference_price = {}

-- Size: Collar Reference Price
nasdaq_uqdf_output_utp_v3_0_c.collar_reference_price.size = 8

-- Display: Collar Reference Price
nasdaq_uqdf_output_utp_v3_0_c.collar_reference_price.display = function(value)
  return "Collar Reference Price: "..value
end

-- Translate: Collar Reference Price
nasdaq_uqdf_output_utp_v3_0_c.collar_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Reference Price
nasdaq_uqdf_output_utp_v3_0_c.collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v3_0_c.collar_reference_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.collar_reference_price, range, value, display)

  return offset + length, value
end

-- Collar Up Price
nasdaq_uqdf_output_utp_v3_0_c.collar_up_price = {}

-- Size: Collar Up Price
nasdaq_uqdf_output_utp_v3_0_c.collar_up_price.size = 8

-- Display: Collar Up Price
nasdaq_uqdf_output_utp_v3_0_c.collar_up_price.display = function(value)
  return "Collar Up Price: "..value
end

-- Translate: Collar Up Price
nasdaq_uqdf_output_utp_v3_0_c.collar_up_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Up Price
nasdaq_uqdf_output_utp_v3_0_c.collar_up_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.collar_up_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v3_0_c.collar_up_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.collar_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.collar_up_price, range, value, display)

  return offset + length, value
end

-- Control Message Type
nasdaq_uqdf_output_utp_v3_0_c.control_message_type = {}

-- Size: Control Message Type
nasdaq_uqdf_output_utp_v3_0_c.control_message_type.size = 1

-- Display: Control Message Type
nasdaq_uqdf_output_utp_v3_0_c.control_message_type.display = function(value)
  return "Control Message Type: "..value
end

-- Dissect: Control Message Type
nasdaq_uqdf_output_utp_v3_0_c.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_uqdf_output_utp_v3_0_c.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_uqdf_output_utp_v3_0_c.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_uqdf_output_utp_v3_0_c.financial_status_indicator.display = function(value)
  if value == "C" then
    return "Financial Status Indicator: Creations Andor Redemptions Suspended For Exchange Traded Product (C)"
  end
  if value == "D" then
    return "Financial Status Indicator: Deficient Issuer Failed To Meet Nasdaq Continued Listing Requirements (D)"
  end
  if value == "E" then
    return "Financial Status Indicator: Delinquent Issuer Missed Regulatory Filing Deadline (E)"
  end
  if value == "Q" then
    return "Financial Status Indicator: Bankrupt Issuer Has Filed For Bankruptcy (Q)"
  end
  if value == "N" then
    return "Financial Status Indicator: Normal Default Issuer Is Not Deficient Delinquent Or Bankrupt (N)"
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

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_uqdf_output_utp_v3_0_c.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Finra Adf Mpid Appendage Indicator
nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage_indicator = {}

-- Size: Finra Adf Mpid Appendage Indicator
nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage_indicator.size = 1

-- Display: Finra Adf Mpid Appendage Indicator
nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage_indicator.display = function(value)
  if value == " " then
    return "Finra Adf Mpid Appendage Indicator: Not Applicable Quotation Originates From A Utp Participant Other Than Finra (<whitespace>)"
  end
  if value == "0" then
    return "Finra Adf Mpid Appendage Indicator: No Adf Mpid Changes Current Adf Quote Does Not Affect The Finra Mpid (0)"
  end
  if value == "1" then
    return "Finra Adf Mpid Appendage Indicator: No Adf Mpid Exists No Calculation Of The Finra Mpid (1)"
  end
  if value == "2" then
    return "Finra Adf Mpid Appendage Indicator: Adf Mpi Ds Attached Finra Mpid Was Generated (2)"
  end

  return "Finra Adf Mpid Appendage Indicator: Unknown("..value..")"
end

-- Dissect: Finra Adf Mpid Appendage Indicator
nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.finra_adf_mpid_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Finra Market Participant
nasdaq_uqdf_output_utp_v3_0_c.finra_market_participant = {}

-- Size: Finra Market Participant
nasdaq_uqdf_output_utp_v3_0_c.finra_market_participant.size = 4

-- Display: Finra Market Participant
nasdaq_uqdf_output_utp_v3_0_c.finra_market_participant.display = function(value)
  return "Finra Market Participant: "..value
end

-- Dissect: Finra Market Participant
nasdaq_uqdf_output_utp_v3_0_c.finra_market_participant.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.finra_market_participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v3_0_c.finra_market_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.finra_market_participant, range, value, display)

  return offset + length, value
end

-- Issue Name
nasdaq_uqdf_output_utp_v3_0_c.issue_name = {}

-- Size: Issue Name
nasdaq_uqdf_output_utp_v3_0_c.issue_name.size = 30

-- Display: Issue Name
nasdaq_uqdf_output_utp_v3_0_c.issue_name.display = function(value)
  return "Issue Name: "..value
end

-- Dissect: Issue Name
nasdaq_uqdf_output_utp_v3_0_c.issue_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.issue_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v3_0_c.issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.issue_name, range, value, display)

  return offset + length, value
end

-- Issue Subtype
nasdaq_uqdf_output_utp_v3_0_c.issue_subtype = {}

-- Size: Issue Subtype
nasdaq_uqdf_output_utp_v3_0_c.issue_subtype.size = 2

-- Display: Issue Subtype
nasdaq_uqdf_output_utp_v3_0_c.issue_subtype.display = function(value)
  if value == "A" then
    return "Issue Subtype: Trust Preferred (A)"
  end
  if value == "AI" then
    return "Issue Subtype: Alpha Index Et Ns (AI)"
  end
  if value == "B" then
    return "Issue Subtype: Index Linked Note (B)"
  end
  if value == "C" then
    return "Issue Subtype: Common Shares (C)"
  end
  if value == "CB" then
    return "Issue Subtype: Commodity Based Trust Shares (CB)"
  end
  if value == "CF" then
    return "Issue Subtype: Commodity Futures Trust Shares (CF)"
  end
  if value == "CL" then
    return "Issue Subtype: Commodity Linked Securities (CL)"
  end
  if value == "CM" then
    return "Issue Subtype: Commodity Index Trust Shares (CM)"
  end
  if value == "CO" then
    return "Issue Subtype: Collateralized Mortgage Obligation (CO)"
  end
  if value == "CT" then
    return "Issue Subtype: Currency Trust Shares (CT)"
  end
  if value == "CU" then
    return "Issue Subtype: Commodity Currency Linked Securities (CU)"
  end
  if value == "CW" then
    return "Issue Subtype: Currency Warrants (CW)"
  end
  if value == "D" then
    return "Issue Subtype: Global Depositary Shares (D)"
  end
  if value == "E" then
    return "Issue Subtype: Etf Unit Investment Trust (E)"
  end
  if value == "EG" then
    return "Issue Subtype: Equity Gold Shares (EG)"
  end
  if value == "EI" then
    return "Issue Subtype: Etn Equity Index Linked Securities (EI)"
  end
  if value == "EM" then
    return "Issue Subtype: Exchange Traded Managed Fund Etmf (EM)"
  end
  if value == "EN" then
    return "Issue Subtype: Exchange Traded Note (EN)"
  end
  if value == "EU" then
    return "Issue Subtype: Equity Units (EU)"
  end
  if value == "F" then
    return "Issue Subtype: Holdrs (F)"
  end
  if value == "FI" then
    return "Issue Subtype: Etn Fixed Income Linked Securities (FI)"
  end
  if value == "FL" then
    return "Issue Subtype: Etn Futures Linked Securities (FL)"
  end
  if value == "G" then
    return "Issue Subtype: Exchange Traded Debt (G)"
  end
  if value == "I" then
    return "Issue Subtype: Etf Management Investment Company (I)"
  end
  if value == "IR" then
    return "Issue Subtype: Interest Rate (IR)"
  end
  if value == "IW" then
    return "Issue Subtype: Index Warrant (IW)"
  end
  if value == "IX" then
    return "Issue Subtype: Index Linked Exchangeable Notes (IX)"
  end
  if value == "J" then
    return "Issue Subtype: Corporate Backed Trust Security (J)"
  end
  if value == "L" then
    return "Issue Subtype: Contingent Litigation Right Warrant (L)"
  end
  if value == "LL" then
    return "Issue Subtype: Limited Liability Company (LL)"
  end
  if value == "M" then
    return "Issue Subtype: Equity Linked Note (M)"
  end
  if value == "MF" then
    return "Issue Subtype: Managed Fund Shares (MF)"
  end
  if value == "ML" then
    return "Issue Subtype: Etn Multi Factor Index Linked Securities (ML)"
  end
  if value == "MT" then
    return "Issue Subtype: Managed Trust Securities (MT)"
  end
  if value == "N" then
    return "Issue Subtype: Ny Registry Shares (N)"
  end
  if value == "O" then
    return "Issue Subtype: Income Depositary Shares (O)"
  end
  if value == "P" then
    return "Issue Subtype: Third Party Trust Certificate (P)"
  end
  if value == "PP" then
    return "Issue Subtype: Poison Pill (PP)"
  end
  if value == "PU" then
    return "Issue Subtype: Partnership Units (PU)"
  end
  if value == "Q" then
    return "Issue Subtype: Closed End Funds (Q)"
  end
  if value == "R" then
    return "Issue Subtype: Reg S (R)"
  end
  if value == "RC" then
    return "Issue Subtype: Commodity Redeemable Commodity Linked Securities (RC)"
  end
  if value == "RF" then
    return "Issue Subtype: Etn Redeemable Futures Linked Securities (RF)"
  end
  if value == "RT" then
    return "Issue Subtype: Reit (RT)"
  end
  if value == "RU" then
    return "Issue Subtype: Commodity Redeemable Currency Linked Securities (RU)"
  end
  if value == "S" then
    return "Issue Subtype: Seed (S)"
  end
  if value == "SC" then
    return "Issue Subtype: Spot Rate Closing (SC)"
  end
  if value == "SI" then
    return "Issue Subtype: Spot Rate Intraday (SI)"
  end
  if value == "T" then
    return "Issue Subtype: Tracking Stock (T)"
  end
  if value == "TC" then
    return "Issue Subtype: Trust Certificate (TC)"
  end
  if value == "TU" then
    return "Issue Subtype: Trust Units (TU)"
  end
  if value == "U" then
    return "Issue Subtype: Portal (U)"
  end
  if value == "V" then
    return "Issue Subtype: Contingent Value Right (V)"
  end
  if value == "W" then
    return "Issue Subtype: Trust Issued Receipts (W)"
  end
  if value == "WC" then
    return "Issue Subtype: World Currency Option (WC)"
  end
  if value == "X" then
    return "Issue Subtype: Trust (X)"
  end
  if value == "Y" then
    return "Issue Subtype: Other (Y)"
  end
  if value == "Z" then
    return "Issue Subtype: Na (Z)"
  end

  return "Issue Subtype: Unknown("..value..")"
end

-- Dissect: Issue Subtype
nasdaq_uqdf_output_utp_v3_0_c.issue_subtype.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.issue_subtype.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v3_0_c.issue_subtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.issue_subtype, range, value, display)

  return offset + length, value
end

-- Issue Type
nasdaq_uqdf_output_utp_v3_0_c.issue_type = {}

-- Size: Issue Type
nasdaq_uqdf_output_utp_v3_0_c.issue_type.size = 1

-- Display: Issue Type
nasdaq_uqdf_output_utp_v3_0_c.issue_type.display = function(value)
  if value == "A" then
    return "Issue Type: American Depository Receipt (A)"
  end
  if value == "B" then
    return "Issue Type: Bond (B)"
  end
  if value == "C" then
    return "Issue Type: Common Stock (C)"
  end
  if value == "F" then
    return "Issue Type: Depository Receipt (F)"
  end
  if value == "I" then
    return "Issue Type: 144 A (I)"
  end
  if value == "L" then
    return "Issue Type: Limited Partnership (L)"
  end
  if value == "N" then
    return "Issue Type: Note (N)"
  end
  if value == "O" then
    return "Issue Type: Ordinary Shares (O)"
  end
  if value == "P" then
    return "Issue Type: Preferred Stock (P)"
  end
  if value == "Q" then
    return "Issue Type: Other Securities (Q)"
  end
  if value == "R" then
    return "Issue Type: Rights (R)"
  end
  if value == "S" then
    return "Issue Type: Shares Of Beneficial Interest (S)"
  end
  if value == "T" then
    return "Issue Type: Convertible Debenture (T)"
  end
  if value == "U" then
    return "Issue Type: Unit (U)"
  end
  if value == "V" then
    return "Issue Type: Units Of Beneficial Interest (V)"
  end
  if value == "W" then
    return "Issue Type: Warrant (W)"
  end

  return "Issue Type: Unknown("..value..")"
end

-- Dissect: Issue Type
nasdaq_uqdf_output_utp_v3_0_c.issue_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.issue_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.issue_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.issue_type, range, value, display)

  return offset + length, value
end

-- Limit Down Price
nasdaq_uqdf_output_utp_v3_0_c.limit_down_price = {}

-- Size: Limit Down Price
nasdaq_uqdf_output_utp_v3_0_c.limit_down_price.size = 8

-- Display: Limit Down Price
nasdaq_uqdf_output_utp_v3_0_c.limit_down_price.display = function(value)
  return "Limit Down Price: "..value
end

-- Translate: Limit Down Price
nasdaq_uqdf_output_utp_v3_0_c.limit_down_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Down Price
nasdaq_uqdf_output_utp_v3_0_c.limit_down_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.limit_down_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v3_0_c.limit_down_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.limit_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.limit_down_price, range, value, display)

  return offset + length, value
end

-- Limit Up Price
nasdaq_uqdf_output_utp_v3_0_c.limit_up_price = {}

-- Size: Limit Up Price
nasdaq_uqdf_output_utp_v3_0_c.limit_up_price.size = 8

-- Display: Limit Up Price
nasdaq_uqdf_output_utp_v3_0_c.limit_up_price.display = function(value)
  return "Limit Up Price: "..value
end

-- Translate: Limit Up Price
nasdaq_uqdf_output_utp_v3_0_c.limit_up_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Up Price
nasdaq_uqdf_output_utp_v3_0_c.limit_up_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.limit_up_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v3_0_c.limit_up_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.limit_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.limit_up_price, range, value, display)

  return offset + length, value
end

-- Luld Bbo Indicator
nasdaq_uqdf_output_utp_v3_0_c.luld_bbo_indicator = {}

-- Size: Luld Bbo Indicator
nasdaq_uqdf_output_utp_v3_0_c.luld_bbo_indicator.size = 1

-- Display: Luld Bbo Indicator
nasdaq_uqdf_output_utp_v3_0_c.luld_bbo_indicator.display = function(value)
  if value == " " then
    return "Luld Bbo Indicator: Limit Up Limit Down Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Luld Bbo Indicator: Bid Price Above Upper Limit Price Band Bid Is Non Executable (A)"
  end
  if value == "B" then
    return "Luld Bbo Indicator: Ask Price Below Lower Limit Price Band Ask Is Non Executable (B)"
  end
  if value == "C" then
    return "Luld Bbo Indicator: Bid And Ask Outside Price Band Not Executable (C)"
  end

  return "Luld Bbo Indicator: Unknown("..value..")"
end

-- Dissect: Luld Bbo Indicator
nasdaq_uqdf_output_utp_v3_0_c.luld_bbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.luld_bbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.luld_bbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.luld_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Luld National Bbo Indicator
nasdaq_uqdf_output_utp_v3_0_c.luld_national_bbo_indicator = {}

-- Size: Luld National Bbo Indicator
nasdaq_uqdf_output_utp_v3_0_c.luld_national_bbo_indicator.size = 1

-- Display: Luld National Bbo Indicator
nasdaq_uqdf_output_utp_v3_0_c.luld_national_bbo_indicator.display = function(value)
  if value == " " then
    return "Luld National Bbo Indicator: Limit Up Limit Down Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Luld National Bbo Indicator: National Best Bid And National Best Ask Are Executable (A)"
  end
  if value == "B" then
    return "Luld National Bbo Indicator: National Best Bid Below Lower Limit Price Band Non Executable (B)"
  end
  if value == "C" then
    return "Luld National Bbo Indicator: National Best Ask Above Upper Limit Price Band Non Executable (C)"
  end
  if value == "D" then
    return "Luld National Bbo Indicator: National Best Bid Below Lower And National Best Ask Above Upper Limit Price Bands Non Executable (D)"
  end
  if value == "E" then
    return "Luld National Bbo Indicator: National Best Bid Equals Upper Limit Price Band National Best Bid Is In Limit State (E)"
  end
  if value == "F" then
    return "Luld National Bbo Indicator: National Best Offer Equals Lower Limit Price Band National Best Ask Is In Limit State (F)"
  end
  if value == "G" then
    return "Luld National Bbo Indicator: National Best Bid Equals Upper Limit Price Band In Limit State And National Best Ask Above Upper Limit Price Band Non Executable (G)"
  end
  if value == "H" then
    return "Luld National Bbo Indicator: National Best Ask Equals Lower Limit Price Band In Limit State And National Best Bid Below Lower Limit Price Band Non Executable (H)"
  end
  if value == "I" then
    return "Luld National Bbo Indicator: National Best Bid Equals Upper Limit Price Band And National Best Ask Equals Lower Limit Price Band Crossed Not In Limit State (I)"
  end

  return "Luld National Bbo Indicator: Unknown("..value..")"
end

-- Dissect: Luld National Bbo Indicator
nasdaq_uqdf_output_utp_v3_0_c.luld_national_bbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.luld_national_bbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.luld_national_bbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.luld_national_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Luld Price Band Effective Time
nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_effective_time = {}

-- Size: Luld Price Band Effective Time
nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_effective_time.size = 8

-- Display: Luld Price Band Effective Time
nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_effective_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Luld Price Band Effective Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Luld Price Band Effective Time
nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_effective_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_effective_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_effective_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.luld_price_band_effective_time, range, value, display)

  return offset + length, value
end

-- Luld Price Band Indicator
nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_indicator = {}

-- Size: Luld Price Band Indicator
nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_indicator.size = 1

-- Display: Luld Price Band Indicator
nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_indicator.display = function(value)
  if value == "A" then
    return "Luld Price Band Indicator: Opening Update (A)"
  end
  if value == "B" then
    return "Luld Price Band Indicator: Intra Day Update (B)"
  end
  if value == "C" then
    return "Luld Price Band Indicator: Restated Value (C)"
  end
  if value == "D" then
    return "Luld Price Band Indicator: Suspended During Trading Halt Or Trading Pause (D)"
  end
  if value == "E" then
    return "Luld Price Band Indicator: Re Opening Update (E)"
  end
  if value == "F" then
    return "Luld Price Band Indicator: Outside Price Band Rule Hours (F)"
  end
  if value == " " then
    return "Luld Price Band Indicator: None Provided (<whitespace>)"
  end

  return "Luld Price Band Indicator: Unknown("..value..")"
end

-- Dissect: Luld Price Band Indicator
nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.luld_price_band_indicator, range, value, display)

  return offset + length, value
end

-- Market Center Ask Price
nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_price = {}

-- Size: Market Center Ask Price
nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_price.size = 8

-- Display: Market Center Ask Price
nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_price.display = function(value)
  return "Market Center Ask Price: "..value
end

-- Translate: Market Center Ask Price
nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Center Ask Price
nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_ask_price, range, value, display)

  return offset + length, value
end

-- Market Center Ask Size
nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_size = {}

-- Size: Market Center Ask Size
nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_size.size = 8

-- Display: Market Center Ask Size
nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_size.display = function(value)
  return "Market Center Ask Size: "..value
end

-- Dissect: Market Center Ask Size
nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_ask_size, range, value, display)

  return offset + length, value
end

-- Market Center Bid Price
nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_price = {}

-- Size: Market Center Bid Price
nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_price.size = 8

-- Display: Market Center Bid Price
nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_price.display = function(value)
  return "Market Center Bid Price: "..value
end

-- Translate: Market Center Bid Price
nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Center Bid Price
nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_bid_price, range, value, display)

  return offset + length, value
end

-- Market Center Bid Size
nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_size = {}

-- Size: Market Center Bid Size
nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_size.size = 8

-- Display: Market Center Bid Size
nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_size.display = function(value)
  return "Market Center Bid Size: "..value
end

-- Dissect: Market Center Bid Size
nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_bid_size, range, value, display)

  return offset + length, value
end

-- Market Center Identifier
nasdaq_uqdf_output_utp_v3_0_c.market_center_identifier = {}

-- Size: Market Center Identifier
nasdaq_uqdf_output_utp_v3_0_c.market_center_identifier.size = 1

-- Display: Market Center Identifier
nasdaq_uqdf_output_utp_v3_0_c.market_center_identifier.display = function(value)
  return "Market Center Identifier: "..value
end

-- Dissect: Market Center Identifier
nasdaq_uqdf_output_utp_v3_0_c.market_center_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.market_center_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.market_center_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_identifier, range, value, display)

  return offset + length, value
end

-- Market Center Originator
nasdaq_uqdf_output_utp_v3_0_c.market_center_originator = {}

-- Size: Market Center Originator
nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size = 1

-- Display: Market Center Originator
nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.display = function(value)
  if value == "Y" then
    return "Market Center Originator: Cboe Byx Exchange Inc (Y)"
  end
  if value == "Z" then
    return "Market Center Originator: Cboe Bzx Exchange Inc (Z)"
  end
  if value == "J" then
    return "Market Center Originator: Cboe Edga Exchange Inc (J)"
  end
  if value == "K" then
    return "Market Center Originator: Cboe Edgx Exchange Inc (K)"
  end
  if value == "W" then
    return "Market Center Originator: Cboe Exchange Inc (W)"
  end
  if value == "B" then
    return "Market Center Originator: Nasdaq Texas Llc (B)"
  end
  if value == "X" then
    return "Market Center Originator: Nasdaq Phlx Llc (X)"
  end
  if value == "Q" then
    return "Market Center Originator: Nasdaq Inc (Q)"
  end
  if value == "I" then
    return "Market Center Originator: Nasdaq Ise Llc (I)"
  end
  if value == "N" then
    return "Market Center Originator: New York Stock Exchange Llc (N)"
  end
  if value == "P" then
    return "Market Center Originator: Nyse Arca Inc (P)"
  end
  if value == "A" then
    return "Market Center Originator: Nyse American Llc (A)"
  end
  if value == "C" then
    return "Market Center Originator: Nyse National Inc (C)"
  end
  if value == "M" then
    return "Market Center Originator: Nyse Texas (M)"
  end
  if value == "F" then
    return "Market Center Originator: Texas Stock Exchange Llc (F)"
  end
  if value == "G" then
    return "Market Center Originator: 24 X National Exchange Llc (G)"
  end
  if value == "D" then
    return "Market Center Originator: Financial Industry Regulatory Authority (D)"
  end
  if value == "V" then
    return "Market Center Originator: Investors Exchange Llc (V)"
  end
  if value == "L" then
    return "Market Center Originator: Long Term Stock Exchange (L)"
  end
  if value == "H" then
    return "Market Center Originator: Miax Pearl Llc (H)"
  end
  if value == "U" then
    return "Market Center Originator: Memx Llc (U)"
  end
  if value == "E" then
    return "Market Center Originator: Market Independent Generated By Sip (E)"
  end

  return "Market Center Originator: Unknown("..value..")"
end

-- Dissect: Market Center Originator
nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_originator, range, value, display)

  return offset + length, value
end

-- Market Tier
nasdaq_uqdf_output_utp_v3_0_c.market_tier = {}

-- Size: Market Tier
nasdaq_uqdf_output_utp_v3_0_c.market_tier.size = 1

-- Display: Market Tier
nasdaq_uqdf_output_utp_v3_0_c.market_tier.display = function(value)
  if value == "Q" then
    return "Market Tier: Nasdaq Global Select Market (Q)"
  end
  if value == "G" then
    return "Market Tier: Nasdaq Global Market (G)"
  end
  if value == "S" then
    return "Market Tier: Nasdaq Capital Market (S)"
  end

  return "Market Tier: Unknown("..value..")"
end

-- Dissect: Market Tier
nasdaq_uqdf_output_utp_v3_0_c.market_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.market_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.market_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_tier, range, value, display)

  return offset + length, value
end

-- Message Category
nasdaq_uqdf_output_utp_v3_0_c.message_category = {}

-- Size: Message Category
nasdaq_uqdf_output_utp_v3_0_c.message_category.size = 1

-- Display: Message Category
nasdaq_uqdf_output_utp_v3_0_c.message_category.display = function(value)
  return "Message Category: "..value
end

-- Dissect: Message Category
nasdaq_uqdf_output_utp_v3_0_c.message_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_uqdf_output_utp_v3_0_c.message_count = {}

-- Size: Message Count
nasdaq_uqdf_output_utp_v3_0_c.message_count.size = 2

-- Display: Message Count
nasdaq_uqdf_output_utp_v3_0_c.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_uqdf_output_utp_v3_0_c.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_uqdf_output_utp_v3_0_c.message_length = {}

-- Size: Message Length
nasdaq_uqdf_output_utp_v3_0_c.message_length.size = 2

-- Display: Message Length
nasdaq_uqdf_output_utp_v3_0_c.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_uqdf_output_utp_v3_0_c.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.message_length, range, value, display)

  return offset + length, value
end

-- Mwcb Level 1
nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_1 = {}

-- Size: Mwcb Level 1
nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_1.size = 8

-- Display: Mwcb Level 1
nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_1.display = function(value)
  return "Mwcb Level 1: "..value
end

-- Dissect: Mwcb Level 1
nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_1.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.mwcb_level_1, range, value, display)

  return offset + length, value
end

-- Mwcb Level 2
nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_2 = {}

-- Size: Mwcb Level 2
nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_2.size = 8

-- Display: Mwcb Level 2
nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_2.display = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_2.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Mwcb Level 3
nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_3 = {}

-- Size: Mwcb Level 3
nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_3.size = 8

-- Display: Mwcb Level 3
nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_3.display = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_3.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- Mwcb Status Level Indicator
nasdaq_uqdf_output_utp_v3_0_c.mwcb_status_level_indicator = {}

-- Size: Mwcb Status Level Indicator
nasdaq_uqdf_output_utp_v3_0_c.mwcb_status_level_indicator.size = 1

-- Display: Mwcb Status Level Indicator
nasdaq_uqdf_output_utp_v3_0_c.mwcb_status_level_indicator.display = function(value)
  if value == "1" then
    return "Mwcb Status Level Indicator: Market Wide Circuit Breaker Decline Level 1 Breached 7 Decline (1)"
  end
  if value == "2" then
    return "Mwcb Status Level Indicator: Market Wide Circuit Breaker Decline Level 2 Breached 13 Decline (2)"
  end
  if value == "3" then
    return "Mwcb Status Level Indicator: Market Wide Circuit Breaker Decline Level 3 Breached 20 Decline (3)"
  end

  return "Mwcb Status Level Indicator: Unknown("..value..")"
end

-- Dissect: Mwcb Status Level Indicator
nasdaq_uqdf_output_utp_v3_0_c.mwcb_status_level_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.mwcb_status_level_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.mwcb_status_level_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.mwcb_status_level_indicator, range, value, display)

  return offset + length, value
end

-- National Best Ask Market Center
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_market_center = {}

-- Size: National Best Ask Market Center
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_market_center.size = 1

-- Display: National Best Ask Market Center
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_market_center.display = function(value)
  return "National Best Ask Market Center: "..value
end

-- Dissect: National Best Ask Market Center
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_ask_market_center, range, value, display)

  return offset + length, value
end

-- National Best Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_long = {}

-- Size: National Best Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_long.size = 8

-- Display: National Best Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_long.display = function(value)
  return "National Best Ask Price Long: "..value
end

-- Translate: National Best Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_long.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_long.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_ask_price_long, range, value, display)

  return offset + length, value
end

-- National Best Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_short = {}

-- Size: National Best Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_short.size = 2

-- Display: National Best Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_short.display = function(value)
  return "National Best Ask Price Short: "..value
end

-- Translate: National Best Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: National Best Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_ask_price_short, range, value, display)

  return offset + length, value
end

-- National Best Ask Size
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size = {}

-- Size: National Best Ask Size
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size.size = 8

-- Display: National Best Ask Size
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size.display = function(value)
  return "National Best Ask Size: "..value
end

-- Dissect: National Best Ask Size
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_ask_size, range, value, display)

  return offset + length, value
end

-- National Best Ask Size Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_long = {}

-- Size: National Best Ask Size Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_long.size = 4

-- Display: National Best Ask Size Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_long.display = function(value)
  return "National Best Ask Size Long: "..value
end

-- Dissect: National Best Ask Size Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_ask_size_long, range, value, display)

  return offset + length, value
end

-- National Best Ask Size Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_short = {}

-- Size: National Best Ask Size Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_short.size = 2

-- Display: National Best Ask Size Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_short.display = function(value)
  return "National Best Ask Size Short: "..value
end

-- Dissect: National Best Ask Size Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_ask_size_short, range, value, display)

  return offset + length, value
end

-- National Best Bid Market Center
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_market_center = {}

-- Size: National Best Bid Market Center
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_market_center.size = 1

-- Display: National Best Bid Market Center
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_market_center.display = function(value)
  return "National Best Bid Market Center: "..value
end

-- Dissect: National Best Bid Market Center
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_bid_market_center, range, value, display)

  return offset + length, value
end

-- National Best Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_long = {}

-- Size: National Best Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_long.size = 8

-- Display: National Best Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_long.display = function(value)
  return "National Best Bid Price Long: "..value
end

-- Translate: National Best Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_long.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_long.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_bid_price_long, range, value, display)

  return offset + length, value
end

-- National Best Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_short = {}

-- Size: National Best Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_short.size = 2

-- Display: National Best Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_short.display = function(value)
  return "National Best Bid Price Short: "..value
end

-- Translate: National Best Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: National Best Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_bid_price_short, range, value, display)

  return offset + length, value
end

-- National Best Bid Size
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size = {}

-- Size: National Best Bid Size
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size.size = 8

-- Display: National Best Bid Size
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size.display = function(value)
  return "National Best Bid Size: "..value
end

-- Dissect: National Best Bid Size
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_bid_size, range, value, display)

  return offset + length, value
end

-- National Best Bid Size Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_long = {}

-- Size: National Best Bid Size Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_long.size = 4

-- Display: National Best Bid Size Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_long.display = function(value)
  return "National Best Bid Size Long: "..value
end

-- Dissect: National Best Bid Size Long
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_bid_size_long, range, value, display)

  return offset + length, value
end

-- National Best Bid Size Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_short = {}

-- Size: National Best Bid Size Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_short.size = 2

-- Display: National Best Bid Size Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_short.display = function(value)
  return "National Best Bid Size Short: "..value
end

-- Dissect: National Best Bid Size Short
nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_best_bid_size_short, range, value, display)

  return offset + length, value
end

-- Nbbo Appendage Indicator
nasdaq_uqdf_output_utp_v3_0_c.nbbo_appendage_indicator = {}

-- Size: Nbbo Appendage Indicator
nasdaq_uqdf_output_utp_v3_0_c.nbbo_appendage_indicator.size = 1

-- Display: Nbbo Appendage Indicator
nasdaq_uqdf_output_utp_v3_0_c.nbbo_appendage_indicator.display = function(value)
  if value == "0" then
    return "Nbbo Appendage Indicator: No National Bbo Change (0)"
  end
  if value == "1" then
    return "Nbbo Appendage Indicator: No National Bbo Can Be Calculated (1)"
  end
  if value == "2" then
    return "Nbbo Appendage Indicator: Short Form National Bbo Appendage Attached (2)"
  end
  if value == "3" then
    return "Nbbo Appendage Indicator: Long Form National Bbo Appendage Attached (3)"
  end
  if value == "4" then
    return "Nbbo Appendage Indicator: Quote Contains All National Bbo Information (4)"
  end

  return "Nbbo Appendage Indicator: Unknown("..value..")"
end

-- Dissect: Nbbo Appendage Indicator
nasdaq_uqdf_output_utp_v3_0_c.nbbo_appendage_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.nbbo_appendage_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.nbbo_appendage_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.nbbo_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Nbbo Quote Condition
nasdaq_uqdf_output_utp_v3_0_c.nbbo_quote_condition = {}

-- Size: Nbbo Quote Condition
nasdaq_uqdf_output_utp_v3_0_c.nbbo_quote_condition.size = 1

-- Display: Nbbo Quote Condition
nasdaq_uqdf_output_utp_v3_0_c.nbbo_quote_condition.display = function(value)
  return "Nbbo Quote Condition: "..value
end

-- Dissect: Nbbo Quote Condition
nasdaq_uqdf_output_utp_v3_0_c.nbbo_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.nbbo_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.nbbo_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.nbbo_quote_condition, range, value, display)

  return offset + length, value
end

-- Number Of Market Center Attachments
nasdaq_uqdf_output_utp_v3_0_c.number_of_market_center_attachments = {}

-- Size: Number Of Market Center Attachments
nasdaq_uqdf_output_utp_v3_0_c.number_of_market_center_attachments.size = 2

-- Display: Number Of Market Center Attachments
nasdaq_uqdf_output_utp_v3_0_c.number_of_market_center_attachments.display = function(value)
  return "Number Of Market Center Attachments: "..value
end

-- Dissect: Number Of Market Center Attachments
nasdaq_uqdf_output_utp_v3_0_c.number_of_market_center_attachments.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.number_of_market_center_attachments.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.number_of_market_center_attachments.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.number_of_market_center_attachments, range, value, display)

  return offset + length, value
end

-- Odd Lot Attachment Count
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_count = {}

-- Size: Odd Lot Attachment Count
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_count.size = 2

-- Display: Odd Lot Attachment Count
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_count.display = function(value)
  return "Odd Lot Attachment Count: "..value
end

-- Dissect: Odd Lot Attachment Count
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.odd_lot_attachment_count, range, value, display)

  return offset + length, value
end

-- Odd Lot Attachment Type
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_type = {}

-- Size: Odd Lot Attachment Type
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_type.size = 1

-- Display: Odd Lot Attachment Type
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_type.display = function(value)
  if value == "0" then
    return "Odd Lot Attachment Type: No Odd Lot Price Levels Attached (0)"
  end
  if value == "2" then
    return "Odd Lot Attachment Type: Short Form Odd Lot Price Levels Attached (2)"
  end
  if value == "3" then
    return "Odd Lot Attachment Type: Long Form Odd Lot Price Levels Attached (3)"
  end
  if value == "5" then
    return "Odd Lot Attachment Type: Mpid Form Odd Lot Price Levels Attached (5)"
  end

  return "Odd Lot Attachment Type: Unknown("..value..")"
end

-- Dissect: Odd Lot Attachment Type
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.odd_lot_attachment_type, range, value, display)

  return offset + length, value
end

-- Old Symbol
nasdaq_uqdf_output_utp_v3_0_c.old_symbol = {}

-- Size: Old Symbol
nasdaq_uqdf_output_utp_v3_0_c.old_symbol.size = 11

-- Display: Old Symbol
nasdaq_uqdf_output_utp_v3_0_c.old_symbol.display = function(value)
  return "Old Symbol: "..value
end

-- Dissect: Old Symbol
nasdaq_uqdf_output_utp_v3_0_c.old_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.old_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v3_0_c.old_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.old_symbol, range, value, display)

  return offset + length, value
end

-- Participant Token
nasdaq_uqdf_output_utp_v3_0_c.participant_token = {}

-- Size: Participant Token
nasdaq_uqdf_output_utp_v3_0_c.participant_token.size = 8

-- Display: Participant Token
nasdaq_uqdf_output_utp_v3_0_c.participant_token.display = function(value)
  return "Participant Token: "..value
end

-- Dissect: Participant Token
nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.participant_token.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v3_0_c.participant_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.participant_token, range, value, display)

  return offset + length, value
end

-- Protected Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_long = {}

-- Size: Protected Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_long.size = 8

-- Display: Protected Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_long.display = function(value)
  return "Protected Ask Price Long: "..value
end

-- Translate: Protected Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_long.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Protected Ask Price Long
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_long.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_ask_price_long, range, value, display)

  return offset + length, value
end

-- Protected Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_short = {}

-- Size: Protected Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_short.size = 2

-- Display: Protected Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_short.display = function(value)
  return "Protected Ask Price Short: "..value
end

-- Translate: Protected Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Protected Ask Price Short
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_ask_price_short, range, value, display)

  return offset + length, value
end

-- Protected Ask Size Long
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_long = {}

-- Size: Protected Ask Size Long
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_long.size = 4

-- Display: Protected Ask Size Long
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_long.display = function(value)
  return "Protected Ask Size Long: "..value
end

-- Dissect: Protected Ask Size Long
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_ask_size_long, range, value, display)

  return offset + length, value
end

-- Protected Ask Size Short
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_short = {}

-- Size: Protected Ask Size Short
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_short.size = 2

-- Display: Protected Ask Size Short
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_short.display = function(value)
  return "Protected Ask Size Short: "..value
end

-- Dissect: Protected Ask Size Short
nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_ask_size_short, range, value, display)

  return offset + length, value
end

-- Protected Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_long = {}

-- Size: Protected Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_long.size = 8

-- Display: Protected Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_long.display = function(value)
  return "Protected Bid Price Long: "..value
end

-- Translate: Protected Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_long.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Protected Bid Price Long
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_long.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_bid_price_long, range, value, display)

  return offset + length, value
end

-- Protected Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_short = {}

-- Size: Protected Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_short.size = 2

-- Display: Protected Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_short.display = function(value)
  return "Protected Bid Price Short: "..value
end

-- Translate: Protected Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Protected Bid Price Short
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_bid_price_short, range, value, display)

  return offset + length, value
end

-- Protected Bid Size Long
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_long = {}

-- Size: Protected Bid Size Long
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_long.size = 4

-- Display: Protected Bid Size Long
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_long.display = function(value)
  return "Protected Bid Size Long: "..value
end

-- Dissect: Protected Bid Size Long
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_bid_size_long, range, value, display)

  return offset + length, value
end

-- Protected Bid Size Short
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_short = {}

-- Size: Protected Bid Size Short
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_short.size = 2

-- Display: Protected Bid Size Short
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_short.display = function(value)
  return "Protected Bid Size Short: "..value
end

-- Dissect: Protected Bid Size Short
nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.protected_bid_size_short, range, value, display)

  return offset + length, value
end

-- Quote Condition
nasdaq_uqdf_output_utp_v3_0_c.quote_condition = {}

-- Size: Quote Condition
nasdaq_uqdf_output_utp_v3_0_c.quote_condition.size = 1

-- Display: Quote Condition
nasdaq_uqdf_output_utp_v3_0_c.quote_condition.display = function(value)
  if value == "A" then
    return "Quote Condition: Manual Ask Automated Bid (A)"
  end
  if value == "B" then
    return "Quote Condition: Manual Bid Automated Ask (B)"
  end
  if value == "F" then
    return "Quote Condition: Fast Trading (F)"
  end
  if value == "H" then
    return "Quote Condition: Manual Bid And Ask (H)"
  end
  if value == "I" then
    return "Quote Condition: Order Imbalance (I)"
  end
  if value == "L" then
    return "Quote Condition: Closed Quote (L)"
  end
  if value == "N" then
    return "Quote Condition: Nonfirm Quote (N)"
  end
  if value == "O" then
    return "Quote Condition: Opening Quote Automated (O)"
  end
  if value == "R" then
    return "Quote Condition: Regular Twosided Open Quote Automated (R)"
  end
  if value == "U" then
    return "Quote Condition: Manual Bid And Ask Nonfirm (U)"
  end
  if value == "X" then
    return "Quote Condition: Order Influx (X)"
  end
  if value == "Y" then
    return "Quote Condition: Automated Bid No Offer Or Automated Offer No Bid (Y)"
  end
  if value == "Z" then
    return "Quote Condition: No Open No Resume (Z)"
  end
  if value == "4" then
    return "Quote Condition: Intraday Auction (4)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nasdaq_uqdf_output_utp_v3_0_c.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Quote Message Type
nasdaq_uqdf_output_utp_v3_0_c.quote_message_type = {}

-- Size: Quote Message Type
nasdaq_uqdf_output_utp_v3_0_c.quote_message_type.size = 1

-- Display: Quote Message Type
nasdaq_uqdf_output_utp_v3_0_c.quote_message_type.display = function(value)
  return "Quote Message Type: "..value
end

-- Dissect: Quote Message Type
nasdaq_uqdf_output_utp_v3_0_c.quote_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.quote_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.quote_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.quote_message_type, range, value, display)

  return offset + length, value
end

-- Reason For The Trading Action
nasdaq_uqdf_output_utp_v3_0_c.reason_for_the_trading_action = {}

-- Size: Reason For The Trading Action
nasdaq_uqdf_output_utp_v3_0_c.reason_for_the_trading_action.size = 6

-- Display: Reason For The Trading Action
nasdaq_uqdf_output_utp_v3_0_c.reason_for_the_trading_action.display = function(value)
  if value == "T1" then
    return "Reason For The Trading Action: Halt News Pending (T1)"
  end
  if value == "T2" then
    return "Reason For The Trading Action: Halt News Dissemination (T2)"
  end
  if value == "T5" then
    return "Reason For The Trading Action: Single Stock Trading Pause In Affect (T5)"
  end
  if value == "T6" then
    return "Reason For The Trading Action: Regulatory Halt Extraordinary Market Activity (T6)"
  end
  if value == "T8" then
    return "Reason For The Trading Action: Halt Etf (T8)"
  end
  if value == "T12" then
    return "Reason For The Trading Action: Trading Halted For Information Requested By Nasdaq (T12)"
  end
  if value == "H4" then
    return "Reason For The Trading Action: Halt Non Compliance (H4)"
  end
  if value == "H9" then
    return "Reason For The Trading Action: Halt Filings Not Current (H9)"
  end
  if value == "H10" then
    return "Reason For The Trading Action: Halt Sec Trading Suspension (H10)"
  end
  if value == "H11" then
    return "Reason For The Trading Action: Halt Regulatory Concern (H11)"
  end
  if value == "O1" then
    return "Reason For The Trading Action: Operations Halt Contact Market Operations (O1)"
  end
  if value == "IPO1" then
    return "Reason For The Trading Action: Ipo Issue Not Yet Trading (IPO1)"
  end
  if value == "M1" then
    return "Reason For The Trading Action: Corporate Action (M1)"
  end
  if value == "M2" then
    return "Reason For The Trading Action: Quotation Not Available (M2)"
  end
  if value == "LUDP" then
    return "Reason For The Trading Action: Volatility Trading Pause (LUDP)"
  end
  if value == "LUDS" then
    return "Reason For The Trading Action: Volatility Trading Pause Straddle Condition (LUDS)"
  end
  if value == "MWC1" then
    return "Reason For The Trading Action: Market Wide Circuit Breaker Halt Level 1 (MWC1)"
  end
  if value == "MWC2" then
    return "Reason For The Trading Action: Market Wide Circuit Breaker Halt Level 2 (MWC2)"
  end
  if value == "MWC3" then
    return "Reason For The Trading Action: Market Wide Circuit Breaker Halt Level 3 (MWC3)"
  end
  if value == "MWC0" then
    return "Reason For The Trading Action: Market Wide Circuit Breaker Halt Carry Over From Previous Day (MWC0)"
  end
  if value == "T3" then
    return "Reason For The Trading Action: News And Resumption Times (T3)"
  end
  if value == "T7" then
    return "Reason For The Trading Action: Single Stock Trading Pause Quotation Only Period (T7)"
  end
  if value == "R4" then
    return "Reason For The Trading Action: Qualifications Issues Reviewed Resolved Quotations Trading To Resume (R4)"
  end
  if value == "R9" then
    return "Reason For The Trading Action: Filing Requirements Satisfied Resolved Quotations Trading To Resume (R9)"
  end
  if value == "C3" then
    return "Reason For The Trading Action: Issuer News Not Forthcoming Quotations Trading To Resume (C3)"
  end
  if value == "C4" then
    return "Reason For The Trading Action: Qualifications Halt Ended Maintenance Requirements Met Resume (C4)"
  end
  if value == "C9" then
    return "Reason For The Trading Action: Qualifications Halt Concluded Filings Met Quotes Trades Resume (C9)"
  end
  if value == "C11" then
    return "Reason For The Trading Action: Trade Halt Concluded By Other Regulatory Authority Quotes Trades Resume (C11)"
  end
  if value == "R1" then
    return "Reason For The Trading Action: New Issue Available (R1)"
  end
  if value == "R2" then
    return "Reason For The Trading Action: Issue Available (R2)"
  end
  if value == "IPOQ" then
    return "Reason For The Trading Action: Ipo Security Released For Quotation (IPOQ)"
  end
  if value == "IPOE" then
    return "Reason For The Trading Action: Ipo Security Positioning Window Extension (IPOE)"
  end
  if value == "MWCQ" then
    return "Reason For The Trading Action: Market Wide Circuit Breaker Resumption (MWCQ)"
  end
  if value == " " then
    return "Reason For The Trading Action: Reason Not Available (<whitespace>)"
  end

  return "Reason For The Trading Action: Unknown("..value..")"
end

-- Dissect: Reason For The Trading Action
nasdaq_uqdf_output_utp_v3_0_c.reason_for_the_trading_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.reason_for_the_trading_action.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v3_0_c.reason_for_the_trading_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.reason_for_the_trading_action, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_uqdf_output_utp_v3_0_c.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_uqdf_output_utp_v3_0_c.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_uqdf_output_utp_v3_0_c.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho In Effect Due To An Intra Day Price Drop In Security (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Reg Sho Restriction Remains In Effect (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_uqdf_output_utp_v3_0_c.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Retail Interest Indicator
nasdaq_uqdf_output_utp_v3_0_c.retail_interest_indicator = {}

-- Size: Retail Interest Indicator
nasdaq_uqdf_output_utp_v3_0_c.retail_interest_indicator.size = 1

-- Display: Retail Interest Indicator
nasdaq_uqdf_output_utp_v3_0_c.retail_interest_indicator.display = function(value)
  if value == " " then
    return "Retail Interest Indicator: Retail Interest Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Retail Interest Indicator: Retail Interest On Bid Quote (A)"
  end
  if value == "B" then
    return "Retail Interest Indicator: Retail Interest On Ask Quote (B)"
  end
  if value == "C" then
    return "Retail Interest Indicator: Retail Interest On Both Bid And Ask Quote (C)"
  end

  return "Retail Interest Indicator: Unknown("..value..")"
end

-- Dissect: Retail Interest Indicator
nasdaq_uqdf_output_utp_v3_0_c.retail_interest_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.retail_interest_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.retail_interest_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.retail_interest_indicator, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_uqdf_output_utp_v3_0_c.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_uqdf_output_utp_v3_0_c.round_lot_size.size = 2

-- Display: Round Lot Size
nasdaq_uqdf_output_utp_v3_0_c.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_uqdf_output_utp_v3_0_c.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_uqdf_output_utp_v3_0_c.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_uqdf_output_utp_v3_0_c.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_uqdf_output_utp_v3_0_c.short_sale_threshold_indicator.display = function(value)
  if value == "Y" then
    return "Short Sale Threshold Indicator: Issue Is Restricted Under Sec Rule 203 B 3 (Y)"
  end
  if value == "N" then
    return "Short Sale Threshold Indicator: Issue Is Not Restricted (N)"
  end
  if value == " " then
    return "Short Sale Threshold Indicator: Threshold Indicator Not Available (<whitespace>)"
  end

  return "Short Sale Threshold Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Threshold Indicator
nasdaq_uqdf_output_utp_v3_0_c.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Sip Generated Update Flag
nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag = {}

-- Size: Sip Generated Update Flag
nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.size = 1

-- Display: Sip Generated Update Flag
nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.display = function(value)
  if value == " " then
    return "Sip Generated Update Flag: Transaction Originated From Market Participant (<whitespace>)"
  end
  if value == "E" then
    return "Sip Generated Update Flag: Si Pgenerated Transaction Eg Price Band Change (E)"
  end

  return "Sip Generated Update Flag: Unknown("..value..")"
end

-- Dissect: Sip Generated Update Flag
nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.sip_generated_update_flag, range, value, display)

  return offset + length, value
end

-- Sip Timestamp
nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp = {}

-- Size: Sip Timestamp
nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size = 8

-- Display: Sip Timestamp
nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Sip Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sip Timestamp
nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.sip_timestamp, range, value, display)

  return offset + length, value
end

-- Special Condition
nasdaq_uqdf_output_utp_v3_0_c.special_condition = {}

-- Size: Special Condition
nasdaq_uqdf_output_utp_v3_0_c.special_condition.size = 1

-- Display: Special Condition
nasdaq_uqdf_output_utp_v3_0_c.special_condition.display = function(value)
  if value == "O" then
    return "Special Condition: Onesided National Bbo At Market Close (O)"
  end
  if value == "H" then
    return "Special Condition: Trading Halt In Effect At Market Close (H)"
  end
  if value == "M" then
    return "Special Condition: No Eligible Market Participant Quotes In Issue At Market Close (M)"
  end
  if value == " " then
    return "Special Condition: No Special Condition Exists (<whitespace>)"
  end

  return "Special Condition: Unknown("..value..")"
end

-- Dissect: Special Condition
nasdaq_uqdf_output_utp_v3_0_c.special_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.special_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.special_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.special_condition, range, value, display)

  return offset + length, value
end

-- Sub Market Center Id
nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id = {}

-- Size: Sub Market Center Id
nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size = 1

-- Display: Sub Market Center Id
nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.display = function(value)
  if value == "N" then
    return "Sub Market Center Id: Finra Nyse Trf (N)"
  end
  if value == "Q" then
    return "Sub Market Center Id: Finra Nasdaq Trf Carteret (Q)"
  end
  if value == "B" then
    return "Sub Market Center Id: Finra Nasdaq Trf Chicago (B)"
  end
  if value == " " then
    return "Sub Market Center Id: Trade Originates From Finra Alternative Display Facility (<whitespace>)"
  end

  return "Sub Market Center Id: Unknown("..value..")"
end

-- Dissect: Sub Market Center Id
nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.sub_market_center_id, range, value, display)

  return offset + length, value
end

-- Symbol Long
nasdaq_uqdf_output_utp_v3_0_c.symbol_long = {}

-- Size: Symbol Long
nasdaq_uqdf_output_utp_v3_0_c.symbol_long.size = 11

-- Display: Symbol Long
nasdaq_uqdf_output_utp_v3_0_c.symbol_long.display = function(value)
  return "Symbol Long: "..value
end

-- Dissect: Symbol Long
nasdaq_uqdf_output_utp_v3_0_c.symbol_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.symbol_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v3_0_c.symbol_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.symbol_long, range, value, display)

  return offset + length, value
end

-- Symbol Short
nasdaq_uqdf_output_utp_v3_0_c.symbol_short = {}

-- Size: Symbol Short
nasdaq_uqdf_output_utp_v3_0_c.symbol_short.size = 5

-- Display: Symbol Short
nasdaq_uqdf_output_utp_v3_0_c.symbol_short.display = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
nasdaq_uqdf_output_utp_v3_0_c.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.symbol_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_uqdf_output_utp_v3_0_c.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_uqdf_output_utp_v3_0_c.text = {}

-- Display: Text
nasdaq_uqdf_output_utp_v3_0_c.text.display = function(value)
  return "Text: "..value
end

-- Dissect runtime sized field: Text
nasdaq_uqdf_output_utp_v3_0_c.text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.text, range, value, display)

  return offset + size, value
end

-- Text Length
nasdaq_uqdf_output_utp_v3_0_c.text_length = {}

-- Size: Text Length
nasdaq_uqdf_output_utp_v3_0_c.text_length.size = 2

-- Display: Text Length
nasdaq_uqdf_output_utp_v3_0_c.text_length.display = function(value)
  return "Text Length: "..value
end

-- Dissect: Text Length
nasdaq_uqdf_output_utp_v3_0_c.text_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.text_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.text_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.text_length, range, value, display)

  return offset + length, value
end

-- Timestamp 1
nasdaq_uqdf_output_utp_v3_0_c.timestamp_1 = {}

-- Size: Timestamp 1
nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size = 8

-- Display: Timestamp 1
nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.display = function(value)
  -- Check null value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Timestamp 1: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp 1: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp 1
nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.timestamp_1, range, value, display)

  return offset + length, value
end

-- Timestamp 2
nasdaq_uqdf_output_utp_v3_0_c.timestamp_2 = {}

-- Size: Timestamp 2
nasdaq_uqdf_output_utp_v3_0_c.timestamp_2.size = 8

-- Display: Timestamp 2
nasdaq_uqdf_output_utp_v3_0_c.timestamp_2.display = function(value)
  -- Check null value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Timestamp 2: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp 2: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp 2
nasdaq_uqdf_output_utp_v3_0_c.timestamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.timestamp_2.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v3_0_c.timestamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.timestamp_2, range, value, display)

  return offset + length, value
end

-- Trading Action Code
nasdaq_uqdf_output_utp_v3_0_c.trading_action_code = {}

-- Size: Trading Action Code
nasdaq_uqdf_output_utp_v3_0_c.trading_action_code.size = 1

-- Display: Trading Action Code
nasdaq_uqdf_output_utp_v3_0_c.trading_action_code.display = function(value)
  if value == "H" then
    return "Trading Action Code: Trading Halt (H)"
  end
  if value == "Q" then
    return "Trading Action Code: Quotation Resumption Including After Ema (Q)"
  end
  if value == "T" then
    return "Trading Action Code: Trading Resumption (T)"
  end
  if value == "P" then
    return "Trading Action Code: Volatility Trading Pause (P)"
  end

  return "Trading Action Code: Unknown("..value..")"
end

-- Dissect: Trading Action Code
nasdaq_uqdf_output_utp_v3_0_c.trading_action_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.trading_action_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.trading_action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.trading_action_code, range, value, display)

  return offset + length, value
end

-- Trading Action Sequence Number
nasdaq_uqdf_output_utp_v3_0_c.trading_action_sequence_number = {}

-- Size: Trading Action Sequence Number
nasdaq_uqdf_output_utp_v3_0_c.trading_action_sequence_number.size = 4

-- Display: Trading Action Sequence Number
nasdaq_uqdf_output_utp_v3_0_c.trading_action_sequence_number.display = function(value)
  return "Trading Action Sequence Number: "..value
end

-- Dissect: Trading Action Sequence Number
nasdaq_uqdf_output_utp_v3_0_c.trading_action_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.trading_action_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v3_0_c.trading_action_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.trading_action_sequence_number, range, value, display)

  return offset + length, value
end

-- Udp Sequence Number
nasdaq_uqdf_output_utp_v3_0_c.udp_sequence_number = {}

-- Size: Udp Sequence Number
nasdaq_uqdf_output_utp_v3_0_c.udp_sequence_number.size = 8

-- Display: Udp Sequence Number
nasdaq_uqdf_output_utp_v3_0_c.udp_sequence_number.display = function(value)
  return "Udp Sequence Number: "..value
end

-- Dissect: Udp Sequence Number
nasdaq_uqdf_output_utp_v3_0_c.udp_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.udp_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v3_0_c.udp_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.udp_sequence_number, range, value, display)

  return offset + length, value
end

-- Udp Session
nasdaq_uqdf_output_utp_v3_0_c.udp_session = {}

-- Size: Udp Session
nasdaq_uqdf_output_utp_v3_0_c.udp_session.size = 10

-- Display: Udp Session
nasdaq_uqdf_output_utp_v3_0_c.udp_session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Udp Session: No Value"
  end

  return "Udp Session: "..value
end

-- Dissect: Udp Session
nasdaq_uqdf_output_utp_v3_0_c.udp_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.udp_session.size
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

  local display = nasdaq_uqdf_output_utp_v3_0_c.udp_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.udp_session, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_uqdf_output_utp_v3_0_c.version = {}

-- Size: Version
nasdaq_uqdf_output_utp_v3_0_c.version.size = 1

-- Display: Version
nasdaq_uqdf_output_utp_v3_0_c.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_uqdf_output_utp_v3_0_c.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v3_0_c.version.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v3_0_c.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Uqdf Output Utp 3.0.c
-----------------------------------------------------------------------

-- Quote Wipe Out Message
nasdaq_uqdf_output_utp_v3_0_c.quote_wipe_out_message = {}

-- Size: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v3_0_c.quote_wipe_out_message.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.participant_token.size

-- Display: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v3_0_c.quote_wipe_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v3_0_c.quote_wipe_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v3_0_c.quote_wipe_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.quote_wipe_out_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.quote_wipe_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.quote_wipe_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.quote_wipe_out_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmissions Message
nasdaq_uqdf_output_utp_v3_0_c.end_of_transmissions_message = {}

-- Size: End Of Transmissions Message
nasdaq_uqdf_output_utp_v3_0_c.end_of_transmissions_message.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.participant_token.size

-- Display: End Of Transmissions Message
nasdaq_uqdf_output_utp_v3_0_c.end_of_transmissions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmissions Message
nasdaq_uqdf_output_utp_v3_0_c.end_of_transmissions_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmissions Message
nasdaq_uqdf_output_utp_v3_0_c.end_of_transmissions_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.end_of_transmissions_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.end_of_transmissions_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.end_of_transmissions_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.end_of_transmissions_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Close Message
nasdaq_uqdf_output_utp_v3_0_c.market_session_close_message = {}

-- Size: Market Session Close Message
nasdaq_uqdf_output_utp_v3_0_c.market_session_close_message.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.participant_token.size

-- Display: Market Session Close Message
nasdaq_uqdf_output_utp_v3_0_c.market_session_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Close Message
nasdaq_uqdf_output_utp_v3_0_c.market_session_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Close Message
nasdaq_uqdf_output_utp_v3_0_c.market_session_close_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_session_close_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.market_session_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.market_session_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.market_session_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Open Message
nasdaq_uqdf_output_utp_v3_0_c.market_session_open_message = {}

-- Size: Market Session Open Message
nasdaq_uqdf_output_utp_v3_0_c.market_session_open_message.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.participant_token.size

-- Display: Market Session Open Message
nasdaq_uqdf_output_utp_v3_0_c.market_session_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Open Message
nasdaq_uqdf_output_utp_v3_0_c.market_session_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Open Message
nasdaq_uqdf_output_utp_v3_0_c.market_session_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_session_open_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.market_session_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.market_session_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.market_session_open_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Day Message
nasdaq_uqdf_output_utp_v3_0_c.end_of_day_message = {}

-- Size: End Of Day Message
nasdaq_uqdf_output_utp_v3_0_c.end_of_day_message.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.participant_token.size

-- Display: End Of Day Message
nasdaq_uqdf_output_utp_v3_0_c.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
nasdaq_uqdf_output_utp_v3_0_c.end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
nasdaq_uqdf_output_utp_v3_0_c.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.end_of_day_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Day Message
nasdaq_uqdf_output_utp_v3_0_c.start_of_day_message = {}

-- Size: Start Of Day Message
nasdaq_uqdf_output_utp_v3_0_c.start_of_day_message.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.participant_token.size

-- Display: Start Of Day Message
nasdaq_uqdf_output_utp_v3_0_c.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
nasdaq_uqdf_output_utp_v3_0_c.start_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
nasdaq_uqdf_output_utp_v3_0_c.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.start_of_day_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.start_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.start_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.start_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message Payload
nasdaq_uqdf_output_utp_v3_0_c.control_message_payload = {}

-- Dissect: Control Message Payload
nasdaq_uqdf_output_utp_v3_0_c.control_message_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "I" then
    return nasdaq_uqdf_output_utp_v3_0_c.start_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "J" then
    return nasdaq_uqdf_output_utp_v3_0_c.end_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Open Message
  if control_message_type == "O" then
    return nasdaq_uqdf_output_utp_v3_0_c.market_session_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Close Message
  if control_message_type == "C" then
    return nasdaq_uqdf_output_utp_v3_0_c.market_session_close_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmissions Message
  if control_message_type == "Z" then
    return nasdaq_uqdf_output_utp_v3_0_c.end_of_transmissions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Wipe Out Message
  if control_message_type == "P" then
    return nasdaq_uqdf_output_utp_v3_0_c.quote_wipe_out_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control Message
nasdaq_uqdf_output_utp_v3_0_c.control_message = {}

-- Calculate size of: Control Message
nasdaq_uqdf_output_utp_v3_0_c.control_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v3_0_c.control_message_type.size

  -- Calculate runtime size of Control Message Payload field
  local control_message_payload_offset = offset + index
  local control_message_payload_type = buffer(control_message_payload_offset - 1, 1):string()
  index = index + nasdaq_uqdf_output_utp_v3_0_c.control_message_payload.size(buffer, control_message_payload_offset, control_message_payload_type)

  return index
end

-- Display: Control Message
nasdaq_uqdf_output_utp_v3_0_c.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
nasdaq_uqdf_output_utp_v3_0_c.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String
  index, control_message_type = nasdaq_uqdf_output_utp_v3_0_c.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Message Payload: Runtime Type with 6 branches
  index = nasdaq_uqdf_output_utp_v3_0_c.control_message_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control Message
nasdaq_uqdf_output_utp_v3_0_c.control_message.dissect = function(buffer, offset, packet, parent)
  if show.control_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.control_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.control_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Center Close Recap
nasdaq_uqdf_output_utp_v3_0_c.market_center_close_recap = {}

-- Size: Market Center Close Recap
nasdaq_uqdf_output_utp_v3_0_c.market_center_close_recap.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_identifier.size + 
  nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_price.size + 
  nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_size.size + 
  nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_price.size + 
  nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_size.size

-- Display: Market Center Close Recap
nasdaq_uqdf_output_utp_v3_0_c.market_center_close_recap.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Close Recap
nasdaq_uqdf_output_utp_v3_0_c.market_center_close_recap.fields = function(buffer, offset, packet, parent, market_center_close_recap_index)
  local index = offset

  -- Implicit Market Center Close Recap Index
  if market_center_close_recap_index ~= nil and show.market_center_close_recap_index then
    local iteration = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_close_recap_index, market_center_close_recap_index)
    iteration:set_generated()
  end

  -- Market Center Identifier: byte
  index, market_center_identifier = nasdaq_uqdf_output_utp_v3_0_c.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Market Center Bid Price: long
  index, market_center_bid_price = nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_price.dissect(buffer, index, packet, parent)

  -- Market Center Bid Size: long
  index, market_center_bid_size = nasdaq_uqdf_output_utp_v3_0_c.market_center_bid_size.dissect(buffer, index, packet, parent)

  -- Market Center Ask Price: long
  index, market_center_ask_price = nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_price.dissect(buffer, index, packet, parent)

  -- Market Center Ask Size: long
  index, market_center_ask_size = nasdaq_uqdf_output_utp_v3_0_c.market_center_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Close Recap
nasdaq_uqdf_output_utp_v3_0_c.market_center_close_recap.dissect = function(buffer, offset, packet, parent, market_center_close_recap_index)
  if show.market_center_close_recap then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_close_recap, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.market_center_close_recap.fields(buffer, offset, packet, parent, market_center_close_recap_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.market_center_close_recap.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.market_center_close_recap.fields(buffer, offset, packet, parent, market_center_close_recap_index)
  end
end

-- Session Close Recap Message
nasdaq_uqdf_output_utp_v3_0_c.session_close_recap_message = {}

-- Calculate size of: Session Close Recap Message
nasdaq_uqdf_output_utp_v3_0_c.session_close_recap_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.participant_token.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.symbol_long.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_market_center.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_long.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_market_center.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_long.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.special_condition.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.number_of_market_center_attachments.size

  -- Calculate field size from count
  local market_center_close_recap_count = buffer(offset + index - 2, 2):uint()
  index = index + market_center_close_recap_count * 33

  return index
end

-- Display: Session Close Recap Message
nasdaq_uqdf_output_utp_v3_0_c.session_close_recap_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Close Recap Message
nasdaq_uqdf_output_utp_v3_0_c.session_close_recap_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- National Best Bid Market Center: byte
  index, national_best_bid_market_center = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_market_center.dissect(buffer, index, packet, parent)

  -- National Best Bid Price Long: long
  index, national_best_bid_price_long = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_long.dissect(buffer, index, packet, parent)

  -- National Best Bid Size: long
  index, national_best_bid_size = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size.dissect(buffer, index, packet, parent)

  -- National Best Ask Market Center: byte
  index, national_best_ask_market_center = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_market_center.dissect(buffer, index, packet, parent)

  -- National Best Ask Price Long: long
  index, national_best_ask_price_long = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_long.dissect(buffer, index, packet, parent)

  -- National Best Ask Size: long
  index, national_best_ask_size = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size.dissect(buffer, index, packet, parent)

  -- Special Condition: byte
  index, special_condition = nasdaq_uqdf_output_utp_v3_0_c.special_condition.dissect(buffer, index, packet, parent)

  -- Number Of Market Center Attachments: short
  index, number_of_market_center_attachments = nasdaq_uqdf_output_utp_v3_0_c.number_of_market_center_attachments.dissect(buffer, index, packet, parent)

  -- Repeating: Market Center Close Recap
  for market_center_close_recap_index = 1, number_of_market_center_attachments do
    index, market_center_close_recap = nasdaq_uqdf_output_utp_v3_0_c.market_center_close_recap.dissect(buffer, index, packet, parent, market_center_close_recap_index)
  end

  return index
end

-- Dissect: Session Close Recap Message
nasdaq_uqdf_output_utp_v3_0_c.session_close_recap_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.session_close_recap_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.session_close_recap_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.session_close_recap_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.session_close_recap_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Collar Message
nasdaq_uqdf_output_utp_v3_0_c.auction_collar_message = {}

-- Size: Auction Collar Message
nasdaq_uqdf_output_utp_v3_0_c.auction_collar_message.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_uqdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.trading_action_sequence_number.size + 
  nasdaq_uqdf_output_utp_v3_0_c.collar_reference_price.size + 
  nasdaq_uqdf_output_utp_v3_0_c.collar_up_price.size + 
  nasdaq_uqdf_output_utp_v3_0_c.collar_down_price.size + 
  nasdaq_uqdf_output_utp_v3_0_c.collar_extension_indicator.size

-- Display: Auction Collar Message
nasdaq_uqdf_output_utp_v3_0_c.auction_collar_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Collar Message
nasdaq_uqdf_output_utp_v3_0_c.auction_collar_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Trading Action Sequence Number: int
  index, trading_action_sequence_number = nasdaq_uqdf_output_utp_v3_0_c.trading_action_sequence_number.dissect(buffer, index, packet, parent)

  -- Collar Reference Price: long
  index, collar_reference_price = nasdaq_uqdf_output_utp_v3_0_c.collar_reference_price.dissect(buffer, index, packet, parent)

  -- Collar Up Price: long
  index, collar_up_price = nasdaq_uqdf_output_utp_v3_0_c.collar_up_price.dissect(buffer, index, packet, parent)

  -- Collar Down Price: long
  index, collar_down_price = nasdaq_uqdf_output_utp_v3_0_c.collar_down_price.dissect(buffer, index, packet, parent)

  -- Collar Extension Indicator: byte
  index, collar_extension_indicator = nasdaq_uqdf_output_utp_v3_0_c.collar_extension_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Collar Message
nasdaq_uqdf_output_utp_v3_0_c.auction_collar_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.auction_collar_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.auction_collar_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.auction_collar_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.auction_collar_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Wide Circuit Breaker Status Message
nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message = {}

-- Size: Market Wide Circuit Breaker Status Message
nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_uqdf_output_utp_v3_0_c.mwcb_status_level_indicator.size

-- Display: Market Wide Circuit Breaker Status Message
nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Status Message
nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Mwcb Status Level Indicator: byte
  index, mwcb_status_level_indicator = nasdaq_uqdf_output_utp_v3_0_c.mwcb_status_level_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Status Message
nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_wide_circuit_breaker_status_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message = {}

-- Size: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_2.size + 
  nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_3.size

-- Display: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Mwcb Level 1: long
  index, mwcb_level_1 = nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_1.dissect(buffer, index, packet, parent)

  -- Mwcb Level 2: long
  index, mwcb_level_2 = nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_2.dissect(buffer, index, packet, parent)

  -- Mwcb Level 3: long
  index, mwcb_level_3 = nasdaq_uqdf_output_utp_v3_0_c.mwcb_level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_wide_circuit_breaker_decline_level_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message = {}

-- Size: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_uqdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_indicator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_effective_time.size + 
  nasdaq_uqdf_output_utp_v3_0_c.limit_down_price.size + 
  nasdaq_uqdf_output_utp_v3_0_c.limit_up_price.size

-- Display: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Luld Price Band Indicator: byte
  index, luld_price_band_indicator = nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_indicator.dissect(buffer, index, packet, parent)

  -- Luld Price Band Effective Time: long
  index, luld_price_band_effective_time = nasdaq_uqdf_output_utp_v3_0_c.luld_price_band_effective_time.dissect(buffer, index, packet, parent)

  -- Limit Down Price: long
  index, limit_down_price = nasdaq_uqdf_output_utp_v3_0_c.limit_down_price.dissect(buffer, index, packet, parent)

  -- Limit Up Price: long
  index, limit_up_price = nasdaq_uqdf_output_utp_v3_0_c.limit_up_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.limit_up_limit_down_price_band_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_uqdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: byte
  index, reg_sho_action = nasdaq_uqdf_output_utp_v3_0_c.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v3_0_c.issue_symbol_directory_message = {}

-- Size: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v3_0_c.issue_symbol_directory_message.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_uqdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.old_symbol.size + 
  nasdaq_uqdf_output_utp_v3_0_c.issue_name.size + 
  nasdaq_uqdf_output_utp_v3_0_c.issue_type.size + 
  nasdaq_uqdf_output_utp_v3_0_c.issue_subtype.size + 
  nasdaq_uqdf_output_utp_v3_0_c.market_tier.size + 
  nasdaq_uqdf_output_utp_v3_0_c.authenticity.size + 
  nasdaq_uqdf_output_utp_v3_0_c.short_sale_threshold_indicator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.round_lot_size.size + 
  nasdaq_uqdf_output_utp_v3_0_c.financial_status_indicator.size

-- Display: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v3_0_c.issue_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v3_0_c.issue_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Old Symbol: byte[]
  index, old_symbol = nasdaq_uqdf_output_utp_v3_0_c.old_symbol.dissect(buffer, index, packet, parent)

  -- Issue Name: byte[]
  index, issue_name = nasdaq_uqdf_output_utp_v3_0_c.issue_name.dissect(buffer, index, packet, parent)

  -- Issue Type: byte
  index, issue_type = nasdaq_uqdf_output_utp_v3_0_c.issue_type.dissect(buffer, index, packet, parent)

  -- Issue Subtype: byte[]
  index, issue_subtype = nasdaq_uqdf_output_utp_v3_0_c.issue_subtype.dissect(buffer, index, packet, parent)

  -- Market Tier: byte
  index, market_tier = nasdaq_uqdf_output_utp_v3_0_c.market_tier.dissect(buffer, index, packet, parent)

  -- Authenticity: byte
  index, authenticity = nasdaq_uqdf_output_utp_v3_0_c.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: byte
  index, short_sale_threshold_indicator = nasdaq_uqdf_output_utp_v3_0_c.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: short
  index, round_lot_size = nasdaq_uqdf_output_utp_v3_0_c.round_lot_size.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: byte
  index, financial_status_indicator = nasdaq_uqdf_output_utp_v3_0_c.financial_status_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v3_0_c.issue_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.issue_symbol_directory_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.issue_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.issue_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.issue_symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Center Trading Action Message
nasdaq_uqdf_output_utp_v3_0_c.market_center_trading_action_message = {}

-- Size: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v3_0_c.market_center_trading_action_message.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_uqdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.trading_action_code.size + 
  nasdaq_uqdf_output_utp_v3_0_c.action_time.size + 
  nasdaq_uqdf_output_utp_v3_0_c.market_center_identifier.size

-- Display: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v3_0_c.market_center_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v3_0_c.market_center_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Trading Action Code: byte
  index, trading_action_code = nasdaq_uqdf_output_utp_v3_0_c.trading_action_code.dissect(buffer, index, packet, parent)

  -- Action Time: long
  index, action_time = nasdaq_uqdf_output_utp_v3_0_c.action_time.dissect(buffer, index, packet, parent)

  -- Market Center Identifier: byte
  index, market_center_identifier = nasdaq_uqdf_output_utp_v3_0_c.market_center_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v3_0_c.market_center_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.market_center_trading_action_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.market_center_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.market_center_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.market_center_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v3_0_c.cross_sro_trading_action_message = {}

-- Size: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v3_0_c.cross_sro_trading_action_message.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_uqdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.trading_action_code.size + 
  nasdaq_uqdf_output_utp_v3_0_c.trading_action_sequence_number.size + 
  nasdaq_uqdf_output_utp_v3_0_c.action_time.size + 
  nasdaq_uqdf_output_utp_v3_0_c.reason_for_the_trading_action.size

-- Display: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v3_0_c.cross_sro_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v3_0_c.cross_sro_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Trading Action Code: byte
  index, trading_action_code = nasdaq_uqdf_output_utp_v3_0_c.trading_action_code.dissect(buffer, index, packet, parent)

  -- Trading Action Sequence Number: int
  index, trading_action_sequence_number = nasdaq_uqdf_output_utp_v3_0_c.trading_action_sequence_number.dissect(buffer, index, packet, parent)

  -- Action Time: long
  index, action_time = nasdaq_uqdf_output_utp_v3_0_c.action_time.dissect(buffer, index, packet, parent)

  -- Reason For The Trading Action: byte[]
  index, reason_for_the_trading_action = nasdaq_uqdf_output_utp_v3_0_c.reason_for_the_trading_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v3_0_c.cross_sro_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.cross_sro_trading_action_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.cross_sro_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.cross_sro_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.cross_sro_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- General Administrative Message
nasdaq_uqdf_output_utp_v3_0_c.general_administrative_message = {}

-- Calculate size of: General Administrative Message
nasdaq_uqdf_output_utp_v3_0_c.general_administrative_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.participant_token.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.text_length.size

  -- Parse runtime size of: Text
  index = index + buffer(offset + index - 2, 2):uint()

  return index
end

-- Display: General Administrative Message
nasdaq_uqdf_output_utp_v3_0_c.general_administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Administrative Message
nasdaq_uqdf_output_utp_v3_0_c.general_administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Text Length: short
  index, text_length = nasdaq_uqdf_output_utp_v3_0_c.text_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Text
  index, text = nasdaq_uqdf_output_utp_v3_0_c.text.dissect(buffer, index, packet, parent, text_length)

  return index
end

-- Dissect: General Administrative Message
nasdaq_uqdf_output_utp_v3_0_c.general_administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.general_administrative_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.general_administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.general_administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.general_administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Message Payload
nasdaq_uqdf_output_utp_v3_0_c.administrative_message_payload = {}

-- Dissect: Administrative Message Payload
nasdaq_uqdf_output_utp_v3_0_c.administrative_message_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect General Administrative Message
  if administrative_message_type == "A" then
    return nasdaq_uqdf_output_utp_v3_0_c.general_administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Sro Trading Action Message
  if administrative_message_type == "H" then
    return nasdaq_uqdf_output_utp_v3_0_c.cross_sro_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Center Trading Action Message
  if administrative_message_type == "K" then
    return nasdaq_uqdf_output_utp_v3_0_c.market_center_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Symbol Directory Message
  if administrative_message_type == "B" then
    return nasdaq_uqdf_output_utp_v3_0_c.issue_symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if administrative_message_type == "V" then
    return nasdaq_uqdf_output_utp_v3_0_c.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Limit Up Limit Down Price Band Message
  if administrative_message_type == "P" then
    return nasdaq_uqdf_output_utp_v3_0_c.limit_up_limit_down_price_band_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Decline Level Message
  if administrative_message_type == "C" then
    return nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Status Message
  if administrative_message_type == "D" then
    return nasdaq_uqdf_output_utp_v3_0_c.market_wide_circuit_breaker_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Collar Message
  if administrative_message_type == "E" then
    return nasdaq_uqdf_output_utp_v3_0_c.auction_collar_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Close Recap Message
  if administrative_message_type == "R" then
    return nasdaq_uqdf_output_utp_v3_0_c.session_close_recap_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Administrative Message
nasdaq_uqdf_output_utp_v3_0_c.administrative_message = {}

-- Calculate size of: Administrative Message
nasdaq_uqdf_output_utp_v3_0_c.administrative_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v3_0_c.administrative_message_type.size

  -- Calculate runtime size of Administrative Message Payload field
  local administrative_message_payload_offset = offset + index
  local administrative_message_payload_type = buffer(administrative_message_payload_offset - 1, 1):string()
  index = index + nasdaq_uqdf_output_utp_v3_0_c.administrative_message_payload.size(buffer, administrative_message_payload_offset, administrative_message_payload_type)

  return index
end

-- Display: Administrative Message
nasdaq_uqdf_output_utp_v3_0_c.administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative Message
nasdaq_uqdf_output_utp_v3_0_c.administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String
  index, administrative_message_type = nasdaq_uqdf_output_utp_v3_0_c.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Message Payload: Runtime Type with 10 branches
  index = nasdaq_uqdf_output_utp_v3_0_c.administrative_message_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative Message
nasdaq_uqdf_output_utp_v3_0_c.administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.administrative_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.administrative_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Bolo Appendage Mpid Form
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form = {}

-- Size: Bolo Appendage Mpid Form
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form.size =
  nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_center.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_size.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_center.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_size.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_participant_identifier.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_participant_identifier.size

-- Display: Bolo Appendage Mpid Form
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bolo Appendage Mpid Form
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bolo Best Bid Market Center: byte
  index, bolo_best_bid_market_center = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_center.dissect(buffer, index, packet, parent)

  -- Bolo Bid Price Long: long
  index, bolo_bid_price_long = nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_long.dissect(buffer, index, packet, parent)

  -- Bolo Bid Size: short
  index, bolo_bid_size = nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_size.dissect(buffer, index, packet, parent)

  -- Bolo Best Ask Market Center: byte
  index, bolo_best_ask_market_center = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_center.dissect(buffer, index, packet, parent)

  -- Bolo Ask Price Long: long
  index, bolo_ask_price_long = nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_long.dissect(buffer, index, packet, parent)

  -- Bolo Ask Size: short
  index, bolo_ask_size = nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_size.dissect(buffer, index, packet, parent)

  -- Bolo Best Bid Market Participant Identifier: byte[]
  index, bolo_best_bid_market_participant_identifier = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_participant_identifier.dissect(buffer, index, packet, parent)

  -- Bolo Best Ask Market Participant Identifier: byte[]
  index, bolo_best_ask_market_participant_identifier = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_participant_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bolo Appendage Mpid Form
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form.dissect = function(buffer, offset, packet, parent)
  if show.bolo_appendage_mpid_form then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_appendage_mpid_form, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form.fields(buffer, offset, packet, parent)
  end
end

-- Bolo Appendage Long Form
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form = {}

-- Size: Bolo Appendage Long Form
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form.size =
  nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_center.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_size.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_center.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_size.size

-- Display: Bolo Appendage Long Form
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bolo Appendage Long Form
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bolo Best Bid Market Center: byte
  index, bolo_best_bid_market_center = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_center.dissect(buffer, index, packet, parent)

  -- Bolo Bid Price Long: long
  index, bolo_bid_price_long = nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_long.dissect(buffer, index, packet, parent)

  -- Bolo Bid Size: short
  index, bolo_bid_size = nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_size.dissect(buffer, index, packet, parent)

  -- Bolo Best Ask Market Center: byte
  index, bolo_best_ask_market_center = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_center.dissect(buffer, index, packet, parent)

  -- Bolo Ask Price Long: long
  index, bolo_ask_price_long = nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_long.dissect(buffer, index, packet, parent)

  -- Bolo Ask Size: short
  index, bolo_ask_size = nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bolo Appendage Long Form
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form.dissect = function(buffer, offset, packet, parent)
  if show.bolo_appendage_long_form then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_appendage_long_form, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Bolo Appendage Short Form
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form = {}

-- Size: Bolo Appendage Short Form
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form.size =
  nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_center.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_short.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_size.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_center.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_short.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_size.size

-- Display: Bolo Appendage Short Form
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bolo Appendage Short Form
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bolo Best Bid Market Center: byte
  index, bolo_best_bid_market_center = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_bid_market_center.dissect(buffer, index, packet, parent)

  -- Bolo Bid Price Short: short
  index, bolo_bid_price_short = nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_price_short.dissect(buffer, index, packet, parent)

  -- Bolo Bid Size: short
  index, bolo_bid_size = nasdaq_uqdf_output_utp_v3_0_c.bolo_bid_size.dissect(buffer, index, packet, parent)

  -- Bolo Best Ask Market Center: byte
  index, bolo_best_ask_market_center = nasdaq_uqdf_output_utp_v3_0_c.bolo_best_ask_market_center.dissect(buffer, index, packet, parent)

  -- Bolo Ask Price Short: short
  index, bolo_ask_price_short = nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_price_short.dissect(buffer, index, packet, parent)

  -- Bolo Ask Size: short
  index, bolo_ask_size = nasdaq_uqdf_output_utp_v3_0_c.bolo_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bolo Appendage Short Form
nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form.dissect = function(buffer, offset, packet, parent)
  if show.bolo_appendage_short_form then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.bolo_appendage_short_form, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form.fields(buffer, offset, packet, parent)
  end
end

-- Odd Lot Quote Message Long Form Message
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_long_form_message = {}

-- Calculate size of: Odd Lot Quote Message Long Form Message
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_long_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.participant_token.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.adf_timestamp.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.symbol_long.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_type.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_count.size

  local bolo_appendage_indicator = buffer(offset + index - 4, 1):string()

  if bolo_appendage_indicator == "2" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form.size

  end

  local bolo_appendage_indicator = buffer(offset + index - 14, 1):string()

  if bolo_appendage_indicator == "3" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form.size

  end

  local bolo_appendage_indicator = buffer(offset + index - 36, 1):string()

  if bolo_appendage_indicator == "5" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form.size

  end

  return index
end

-- Display: Odd Lot Quote Message Long Form Message
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Quote Message Long Form Message
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Adf Timestamp: long
  index, adf_timestamp = nasdaq_uqdf_output_utp_v3_0_c.adf_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Sip Generated Update Flag: byte
  index, sip_generated_update_flag = nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.dissect(buffer, index, packet, parent)

  -- Bolo Appendage Indicator: byte
  index, bolo_appendage_indicator = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Type: byte
  index, odd_lot_attachment_type = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_type.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Count: short
  index, odd_lot_attachment_count = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_count.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Bolo Appendage Short Form
  local bolo_appendage_short_form = nil

  local bolo_appendage_short_form_exists = bolo_appendage_indicator == "2"

  if bolo_appendage_short_form_exists then
    index, bolo_appendage_short_form = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Bolo Appendage Long Form
  local bolo_appendage_long_form = nil

  local bolo_appendage_long_form_exists = bolo_appendage_indicator == "3"

  if bolo_appendage_long_form_exists then
    index, bolo_appendage_long_form = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Bolo Appendage Mpid Form
  local bolo_appendage_mpid_form = nil

  local bolo_appendage_mpid_form_exists = bolo_appendage_indicator == "5"

  if bolo_appendage_mpid_form_exists then
    index, bolo_appendage_mpid_form = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Odd Lot Quote Message Long Form Message
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.odd_lot_quote_message_long_form_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Odd Lot Quote Message Short Form Message
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_short_form_message = {}

-- Calculate size of: Odd Lot Quote Message Short Form Message
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_short_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.participant_token.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.symbol_short.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_type.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_count.size

  local bolo_appendage_indicator = buffer(offset + index - 4, 1):string()

  if bolo_appendage_indicator == "2" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form.size

  end

  local bolo_appendage_indicator = buffer(offset + index - 14, 1):string()

  if bolo_appendage_indicator == "3" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form.size

  end

  local bolo_appendage_indicator = buffer(offset + index - 36, 1):string()

  if bolo_appendage_indicator == "5" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form.size

  end

  return index
end

-- Display: Odd Lot Quote Message Short Form Message
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Quote Message Short Form Message
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Short: byte[]
  index, symbol_short = nasdaq_uqdf_output_utp_v3_0_c.symbol_short.dissect(buffer, index, packet, parent)

  -- Sip Generated Update Flag: byte
  index, sip_generated_update_flag = nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.dissect(buffer, index, packet, parent)

  -- Bolo Appendage Indicator: byte
  index, bolo_appendage_indicator = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Type: byte
  index, odd_lot_attachment_type = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_type.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Count: short
  index, odd_lot_attachment_count = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_count.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Bolo Appendage Short Form
  local bolo_appendage_short_form = nil

  local bolo_appendage_short_form_exists = bolo_appendage_indicator == "2"

  if bolo_appendage_short_form_exists then
    index, bolo_appendage_short_form = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Bolo Appendage Long Form
  local bolo_appendage_long_form = nil

  local bolo_appendage_long_form_exists = bolo_appendage_indicator == "3"

  if bolo_appendage_long_form_exists then
    index, bolo_appendage_long_form = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Bolo Appendage Mpid Form
  local bolo_appendage_mpid_form = nil

  local bolo_appendage_mpid_form_exists = bolo_appendage_indicator == "5"

  if bolo_appendage_mpid_form_exists then
    index, bolo_appendage_mpid_form = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Odd Lot Quote Message Short Form Message
nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.odd_lot_quote_message_short_form_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage = {}

-- Size: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage.size =
  nasdaq_uqdf_output_utp_v3_0_c.bid_adf_mpid.size + 
  nasdaq_uqdf_output_utp_v3_0_c.ask_adf_mpid.size

-- Display: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Adf Mpid: byte[]
  index, bid_adf_mpid = nasdaq_uqdf_output_utp_v3_0_c.bid_adf_mpid.dissect(buffer, index, packet, parent)

  -- Ask Adf Mpid: byte[]
  index, ask_adf_mpid = nasdaq_uqdf_output_utp_v3_0_c.ask_adf_mpid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage.dissect = function(buffer, offset, packet, parent)
  if show.finra_adf_mpid_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.finra_adf_mpid_appendage, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage.fields(buffer, offset, packet, parent)
  end
end

-- National Bbo Appendage Longform
nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform = {}

-- Size: National Bbo Appendage Longform
nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform.size =
  nasdaq_uqdf_output_utp_v3_0_c.nbbo_quote_condition.size + 
  nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_market_center.size + 
  nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_market_center.size + 
  nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_long.size

-- Display: National Bbo Appendage Longform
nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: National Bbo Appendage Longform
nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nbbo Quote Condition: byte
  index, nbbo_quote_condition = nasdaq_uqdf_output_utp_v3_0_c.nbbo_quote_condition.dissect(buffer, index, packet, parent)

  -- National Best Bid Market Center: byte
  index, national_best_bid_market_center = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_market_center.dissect(buffer, index, packet, parent)

  -- National Best Bid Price Long: long
  index, national_best_bid_price_long = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_long.dissect(buffer, index, packet, parent)

  -- National Best Bid Size Long: int
  index, national_best_bid_size_long = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_long.dissect(buffer, index, packet, parent)

  -- National Best Ask Market Center: byte
  index, national_best_ask_market_center = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_market_center.dissect(buffer, index, packet, parent)

  -- National Best Ask Price Long: long
  index, national_best_ask_price_long = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_long.dissect(buffer, index, packet, parent)

  -- National Best Ask Size Long: int
  index, national_best_ask_size_long = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: National Bbo Appendage Longform
nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform.dissect = function(buffer, offset, packet, parent)
  if show.national_bbo_appendage_longform then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_bbo_appendage_longform, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform.fields(buffer, offset, packet, parent)
  end
end

-- National Bbo Appendage Shortform
nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform = {}

-- Size: National Bbo Appendage Shortform
nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform.size =
  nasdaq_uqdf_output_utp_v3_0_c.nbbo_quote_condition.size + 
  nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_market_center.size + 
  nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_short.size + 
  nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_short.size + 
  nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_market_center.size + 
  nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_short.size + 
  nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_short.size

-- Display: National Bbo Appendage Shortform
nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: National Bbo Appendage Shortform
nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nbbo Quote Condition: byte
  index, nbbo_quote_condition = nasdaq_uqdf_output_utp_v3_0_c.nbbo_quote_condition.dissect(buffer, index, packet, parent)

  -- National Best Bid Market Center: byte
  index, national_best_bid_market_center = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_market_center.dissect(buffer, index, packet, parent)

  -- National Best Bid Price Short: short
  index, national_best_bid_price_short = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_price_short.dissect(buffer, index, packet, parent)

  -- National Best Bid Size Short: short
  index, national_best_bid_size_short = nasdaq_uqdf_output_utp_v3_0_c.national_best_bid_size_short.dissect(buffer, index, packet, parent)

  -- National Best Ask Market Center: byte
  index, national_best_ask_market_center = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_market_center.dissect(buffer, index, packet, parent)

  -- National Best Ask Price Short: short
  index, national_best_ask_price_short = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_price_short.dissect(buffer, index, packet, parent)

  -- National Best Ask Size Short: short
  index, national_best_ask_size_short = nasdaq_uqdf_output_utp_v3_0_c.national_best_ask_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: National Bbo Appendage Shortform
nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform.dissect = function(buffer, offset, packet, parent)
  if show.national_bbo_appendage_shortform then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.national_bbo_appendage_shortform, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform.fields(buffer, offset, packet, parent)
  end
end

-- Combined Quote Message Long Form Message
nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_long_form_message = {}

-- Calculate size of: Combined Quote Message Long Form Message
nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_long_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.participant_token.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.adf_timestamp.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.symbol_long.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_long.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_long.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_long.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_long.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.quote_condition.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.luld_bbo_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.retail_interest_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.nbbo_appendage_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.luld_national_bbo_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_type.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_count.size

  local nbbo_appendage_indicator = buffer(offset + index - 7, 1):string()

  if nbbo_appendage_indicator == "2" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform.size

  end

  local nbbo_appendage_indicator = buffer(offset + index - 18, 1):string()

  if nbbo_appendage_indicator == "3" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform.size

  end

  local finra_adf_mpid_appendage_indicator = buffer(offset + index - 43, 1):string()

  if finra_adf_mpid_appendage_indicator == "2" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage.size

  end

  local bolo_appendage_indicator = buffer(offset + index - 50, 1):string()

  if bolo_appendage_indicator == "2" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form.size

  end

  local bolo_appendage_indicator = buffer(offset + index - 60, 1):string()

  if bolo_appendage_indicator == "3" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form.size

  end

  local bolo_appendage_indicator = buffer(offset + index - 82, 1):string()

  if bolo_appendage_indicator == "5" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form.size

  end

  return index
end

-- Display: Combined Quote Message Long Form Message
nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combined Quote Message Long Form Message
nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Adf Timestamp: long
  index, adf_timestamp = nasdaq_uqdf_output_utp_v3_0_c.adf_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Protected Bid Price Long: long
  index, protected_bid_price_long = nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_long.dissect(buffer, index, packet, parent)

  -- Protected Bid Size Long: int
  index, protected_bid_size_long = nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_long.dissect(buffer, index, packet, parent)

  -- Protected Ask Price Long: long
  index, protected_ask_price_long = nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_long.dissect(buffer, index, packet, parent)

  -- Protected Ask Size Long: int
  index, protected_ask_size_long = nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_long.dissect(buffer, index, packet, parent)

  -- Quote Condition: byte
  index, quote_condition = nasdaq_uqdf_output_utp_v3_0_c.quote_condition.dissect(buffer, index, packet, parent)

  -- Sip Generated Update Flag: byte
  index, sip_generated_update_flag = nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.dissect(buffer, index, packet, parent)

  -- Luld Bbo Indicator: byte
  index, luld_bbo_indicator = nasdaq_uqdf_output_utp_v3_0_c.luld_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: byte
  index, retail_interest_indicator = nasdaq_uqdf_output_utp_v3_0_c.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Nbbo Appendage Indicator: byte
  index, nbbo_appendage_indicator = nasdaq_uqdf_output_utp_v3_0_c.nbbo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Luld National Bbo Indicator: byte
  index, luld_national_bbo_indicator = nasdaq_uqdf_output_utp_v3_0_c.luld_national_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Finra Adf Mpid Appendage Indicator: byte
  index, finra_adf_mpid_appendage_indicator = nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Bolo Appendage Indicator: byte
  index, bolo_appendage_indicator = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Type: byte
  index, odd_lot_attachment_type = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_type.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Count: short
  index, odd_lot_attachment_count = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_count.dissect(buffer, index, packet, parent)

  -- Runtime optional field: National Bbo Appendage Shortform
  local national_bbo_appendage_shortform = nil

  local national_bbo_appendage_shortform_exists = nbbo_appendage_indicator == "2"

  if national_bbo_appendage_shortform_exists then
    index, national_bbo_appendage_shortform = nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Bbo Appendage Longform
  local national_bbo_appendage_longform = nil

  local national_bbo_appendage_longform_exists = nbbo_appendage_indicator == "3"

  if national_bbo_appendage_longform_exists then
    index, national_bbo_appendage_longform = nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Finra Adf Mpid Appendage
  local finra_adf_mpid_appendage = nil

  local finra_adf_mpid_appendage_exists = finra_adf_mpid_appendage_indicator == "2"

  if finra_adf_mpid_appendage_exists then
    index, finra_adf_mpid_appendage = nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Bolo Appendage Short Form
  local bolo_appendage_short_form = nil

  local bolo_appendage_short_form_exists = bolo_appendage_indicator == "2"

  if bolo_appendage_short_form_exists then
    index, bolo_appendage_short_form = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Bolo Appendage Long Form
  local bolo_appendage_long_form = nil

  local bolo_appendage_long_form_exists = bolo_appendage_indicator == "3"

  if bolo_appendage_long_form_exists then
    index, bolo_appendage_long_form = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Bolo Appendage Mpid Form
  local bolo_appendage_mpid_form = nil

  local bolo_appendage_mpid_form_exists = bolo_appendage_indicator == "5"

  if bolo_appendage_mpid_form_exists then
    index, bolo_appendage_mpid_form = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Combined Quote Message Long Form Message
nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.combined_quote_message_long_form_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Combined Quote Message Short Form Message
nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_short_form_message = {}

-- Calculate size of: Combined Quote Message Short Form Message
nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_short_form_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.participant_token.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.symbol_short.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_short.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_short.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_short.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_short.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.quote_condition.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.luld_bbo_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.retail_interest_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.nbbo_appendage_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.luld_national_bbo_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_type.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_count.size

  local nbbo_appendage_indicator = buffer(offset + index - 6, 1):string()

  if nbbo_appendage_indicator == "2" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform.size

  end

  local nbbo_appendage_indicator = buffer(offset + index - 17, 1):string()

  if nbbo_appendage_indicator == "3" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform.size

  end

  local bolo_appendage_indicator = buffer(offset + index - 42, 1):string()

  if bolo_appendage_indicator == "2" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form.size

  end

  local bolo_appendage_indicator = buffer(offset + index - 52, 1):string()

  if bolo_appendage_indicator == "3" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form.size

  end

  local bolo_appendage_indicator = buffer(offset + index - 74, 1):string()

  if bolo_appendage_indicator == "5" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form.size

  end

  return index
end

-- Display: Combined Quote Message Short Form Message
nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combined Quote Message Short Form Message
nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Short: byte[]
  index, symbol_short = nasdaq_uqdf_output_utp_v3_0_c.symbol_short.dissect(buffer, index, packet, parent)

  -- Protected Bid Price Short: short
  index, protected_bid_price_short = nasdaq_uqdf_output_utp_v3_0_c.protected_bid_price_short.dissect(buffer, index, packet, parent)

  -- Protected Bid Size Short: short
  index, protected_bid_size_short = nasdaq_uqdf_output_utp_v3_0_c.protected_bid_size_short.dissect(buffer, index, packet, parent)

  -- Protected Ask Price Short: short
  index, protected_ask_price_short = nasdaq_uqdf_output_utp_v3_0_c.protected_ask_price_short.dissect(buffer, index, packet, parent)

  -- Protected Ask Size Short: short
  index, protected_ask_size_short = nasdaq_uqdf_output_utp_v3_0_c.protected_ask_size_short.dissect(buffer, index, packet, parent)

  -- Quote Condition: byte
  index, quote_condition = nasdaq_uqdf_output_utp_v3_0_c.quote_condition.dissect(buffer, index, packet, parent)

  -- Sip Generated Update Flag: byte
  index, sip_generated_update_flag = nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.dissect(buffer, index, packet, parent)

  -- Luld Bbo Indicator: byte
  index, luld_bbo_indicator = nasdaq_uqdf_output_utp_v3_0_c.luld_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: byte
  index, retail_interest_indicator = nasdaq_uqdf_output_utp_v3_0_c.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Nbbo Appendage Indicator: byte
  index, nbbo_appendage_indicator = nasdaq_uqdf_output_utp_v3_0_c.nbbo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Luld National Bbo Indicator: byte
  index, luld_national_bbo_indicator = nasdaq_uqdf_output_utp_v3_0_c.luld_national_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Bolo Appendage Indicator: byte
  index, bolo_appendage_indicator = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Type: byte
  index, odd_lot_attachment_type = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_type.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Count: short
  index, odd_lot_attachment_count = nasdaq_uqdf_output_utp_v3_0_c.odd_lot_attachment_count.dissect(buffer, index, packet, parent)

  -- Runtime optional field: National Bbo Appendage Shortform
  local national_bbo_appendage_shortform = nil

  local national_bbo_appendage_shortform_exists = nbbo_appendage_indicator == "2"

  if national_bbo_appendage_shortform_exists then
    index, national_bbo_appendage_shortform = nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Bbo Appendage Longform
  local national_bbo_appendage_longform = nil

  local national_bbo_appendage_longform_exists = nbbo_appendage_indicator == "3"

  if national_bbo_appendage_longform_exists then
    index, national_bbo_appendage_longform = nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Bolo Appendage Short Form
  local bolo_appendage_short_form = nil

  local bolo_appendage_short_form_exists = bolo_appendage_indicator == "2"

  if bolo_appendage_short_form_exists then
    index, bolo_appendage_short_form = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_short_form.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Bolo Appendage Long Form
  local bolo_appendage_long_form = nil

  local bolo_appendage_long_form_exists = bolo_appendage_indicator == "3"

  if bolo_appendage_long_form_exists then
    index, bolo_appendage_long_form = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_long_form.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Bolo Appendage Mpid Form
  local bolo_appendage_mpid_form = nil

  local bolo_appendage_mpid_form_exists = bolo_appendage_indicator == "5"

  if bolo_appendage_mpid_form_exists then
    index, bolo_appendage_mpid_form = nasdaq_uqdf_output_utp_v3_0_c.bolo_appendage_mpid_form.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Combined Quote Message Short Form Message
nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.combined_quote_message_short_form_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v3_0_c.finra_adf_market_participant_quotation_message = {}

-- Size: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v3_0_c.finra_adf_market_participant_quotation_message.size =
  nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size + 
  nasdaq_uqdf_output_utp_v3_0_c.participant_token.size + 
  nasdaq_uqdf_output_utp_v3_0_c.timestamp_2.size + 
  nasdaq_uqdf_output_utp_v3_0_c.symbol_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bid_price_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.bid_size_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.ask_price_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.ask_size_long.size + 
  nasdaq_uqdf_output_utp_v3_0_c.quote_condition.size + 
  nasdaq_uqdf_output_utp_v3_0_c.finra_market_participant.size

-- Display: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v3_0_c.finra_adf_market_participant_quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v3_0_c.finra_adf_market_participant_quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Bid Price Long: long
  index, bid_price_long = nasdaq_uqdf_output_utp_v3_0_c.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Long: int
  index, bid_size_long = nasdaq_uqdf_output_utp_v3_0_c.bid_size_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: long
  index, ask_price_long = nasdaq_uqdf_output_utp_v3_0_c.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Size Long: int
  index, ask_size_long = nasdaq_uqdf_output_utp_v3_0_c.ask_size_long.dissect(buffer, index, packet, parent)

  -- Quote Condition: byte
  index, quote_condition = nasdaq_uqdf_output_utp_v3_0_c.quote_condition.dissect(buffer, index, packet, parent)

  -- Finra Market Participant: byte[]
  index, finra_market_participant = nasdaq_uqdf_output_utp_v3_0_c.finra_market_participant.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v3_0_c.finra_adf_market_participant_quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.finra_adf_market_participant_quotation_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.finra_adf_market_participant_quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.finra_adf_market_participant_quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.finra_adf_market_participant_quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Utp Quote Longform Message
nasdaq_uqdf_output_utp_v3_0_c.utp_quote_longform_message = {}

-- Calculate size of: Utp Quote Longform Message
nasdaq_uqdf_output_utp_v3_0_c.utp_quote_longform_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.participant_token.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.timestamp_2.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.symbol_long.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.bid_price_long.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.bid_size_long.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.ask_price_long.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.ask_size_long.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.quote_condition.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.luld_bbo_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.retail_interest_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.nbbo_appendage_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.luld_national_bbo_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage_indicator.size

  local nbbo_appendage_indicator = buffer(offset + index - 3, 1):string()

  if nbbo_appendage_indicator == "2" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform.size

  end

  local nbbo_appendage_indicator = buffer(offset + index - 14, 1):string()

  if nbbo_appendage_indicator == "3" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform.size

  end

  return index
end

-- Display: Utp Quote Longform Message
nasdaq_uqdf_output_utp_v3_0_c.utp_quote_longform_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Utp Quote Longform Message
nasdaq_uqdf_output_utp_v3_0_c.utp_quote_longform_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Timestamp 2: long
  index, timestamp_2 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_2.dissect(buffer, index, packet, parent)

  -- Symbol Long: byte[]
  index, symbol_long = nasdaq_uqdf_output_utp_v3_0_c.symbol_long.dissect(buffer, index, packet, parent)

  -- Bid Price Long: long
  index, bid_price_long = nasdaq_uqdf_output_utp_v3_0_c.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Long: int
  index, bid_size_long = nasdaq_uqdf_output_utp_v3_0_c.bid_size_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: long
  index, ask_price_long = nasdaq_uqdf_output_utp_v3_0_c.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Size Long: int
  index, ask_size_long = nasdaq_uqdf_output_utp_v3_0_c.ask_size_long.dissect(buffer, index, packet, parent)

  -- Quote Condition: byte
  index, quote_condition = nasdaq_uqdf_output_utp_v3_0_c.quote_condition.dissect(buffer, index, packet, parent)

  -- Sip Generated Update Flag: byte
  index, sip_generated_update_flag = nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.dissect(buffer, index, packet, parent)

  -- Luld Bbo Indicator: byte
  index, luld_bbo_indicator = nasdaq_uqdf_output_utp_v3_0_c.luld_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: byte
  index, retail_interest_indicator = nasdaq_uqdf_output_utp_v3_0_c.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Nbbo Appendage Indicator: byte
  index, nbbo_appendage_indicator = nasdaq_uqdf_output_utp_v3_0_c.nbbo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Luld National Bbo Indicator: byte
  index, luld_national_bbo_indicator = nasdaq_uqdf_output_utp_v3_0_c.luld_national_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Finra Adf Mpid Appendage Indicator: byte
  index, finra_adf_mpid_appendage_indicator = nasdaq_uqdf_output_utp_v3_0_c.finra_adf_mpid_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Runtime optional field: National Bbo Appendage Shortform
  local national_bbo_appendage_shortform = nil

  local national_bbo_appendage_shortform_exists = nbbo_appendage_indicator == "2"

  if national_bbo_appendage_shortform_exists then
    index, national_bbo_appendage_shortform = nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Bbo Appendage Longform
  local national_bbo_appendage_longform = nil

  local national_bbo_appendage_longform_exists = nbbo_appendage_indicator == "3"

  if national_bbo_appendage_longform_exists then
    index, national_bbo_appendage_longform = nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Utp Quote Longform Message
nasdaq_uqdf_output_utp_v3_0_c.utp_quote_longform_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.utp_quote_longform_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.utp_quote_longform_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.utp_quote_longform_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.utp_quote_longform_message.fields(buffer, offset, packet, parent)
  end
end

-- Utp Quote Shortform Message
nasdaq_uqdf_output_utp_v3_0_c.utp_quote_shortform_message = {}

-- Calculate size of: Utp Quote Shortform Message
nasdaq_uqdf_output_utp_v3_0_c.utp_quote_shortform_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.participant_token.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.symbol_short.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.bid_price_short.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.bid_size_short.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.ask_price_short.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.ask_size_short.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.quote_condition.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.luld_bbo_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.retail_interest_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.nbbo_appendage_indicator.size

  index = index + nasdaq_uqdf_output_utp_v3_0_c.luld_national_bbo_indicator.size

  local nbbo_appendage_indicator = buffer(offset + index - 2, 1):string()

  if nbbo_appendage_indicator == "2" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform.size

  end

  local nbbo_appendage_indicator = buffer(offset + index - 13, 1):string()

  if nbbo_appendage_indicator == "3" then
    index = index + nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform.size

  end

  return index
end

-- Display: Utp Quote Shortform Message
nasdaq_uqdf_output_utp_v3_0_c.utp_quote_shortform_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Utp Quote Shortform Message
nasdaq_uqdf_output_utp_v3_0_c.utp_quote_shortform_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_uqdf_output_utp_v3_0_c.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v3_0_c.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_uqdf_output_utp_v3_0_c.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_uqdf_output_utp_v3_0_c.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_uqdf_output_utp_v3_0_c.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol Short: byte[]
  index, symbol_short = nasdaq_uqdf_output_utp_v3_0_c.symbol_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: short
  index, bid_price_short = nasdaq_uqdf_output_utp_v3_0_c.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: short
  index, bid_size_short = nasdaq_uqdf_output_utp_v3_0_c.bid_size_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: short
  index, ask_price_short = nasdaq_uqdf_output_utp_v3_0_c.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Size Short: short
  index, ask_size_short = nasdaq_uqdf_output_utp_v3_0_c.ask_size_short.dissect(buffer, index, packet, parent)

  -- Quote Condition: byte
  index, quote_condition = nasdaq_uqdf_output_utp_v3_0_c.quote_condition.dissect(buffer, index, packet, parent)

  -- Sip Generated Update Flag: byte
  index, sip_generated_update_flag = nasdaq_uqdf_output_utp_v3_0_c.sip_generated_update_flag.dissect(buffer, index, packet, parent)

  -- Luld Bbo Indicator: byte
  index, luld_bbo_indicator = nasdaq_uqdf_output_utp_v3_0_c.luld_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: byte
  index, retail_interest_indicator = nasdaq_uqdf_output_utp_v3_0_c.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Nbbo Appendage Indicator: byte
  index, nbbo_appendage_indicator = nasdaq_uqdf_output_utp_v3_0_c.nbbo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Luld National Bbo Indicator: byte
  index, luld_national_bbo_indicator = nasdaq_uqdf_output_utp_v3_0_c.luld_national_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Runtime optional field: National Bbo Appendage Shortform
  local national_bbo_appendage_shortform = nil

  local national_bbo_appendage_shortform_exists = nbbo_appendage_indicator == "2"

  if national_bbo_appendage_shortform_exists then
    index, national_bbo_appendage_shortform = nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_shortform.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Bbo Appendage Longform
  local national_bbo_appendage_longform = nil

  local national_bbo_appendage_longform_exists = nbbo_appendage_indicator == "3"

  if national_bbo_appendage_longform_exists then
    index, national_bbo_appendage_longform = nasdaq_uqdf_output_utp_v3_0_c.national_bbo_appendage_longform.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Utp Quote Shortform Message
nasdaq_uqdf_output_utp_v3_0_c.utp_quote_shortform_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.utp_quote_shortform_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.utp_quote_shortform_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.utp_quote_shortform_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.utp_quote_shortform_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Message Payload
nasdaq_uqdf_output_utp_v3_0_c.quote_message_payload = {}

-- Dissect: Quote Message Payload
nasdaq_uqdf_output_utp_v3_0_c.quote_message_payload.dissect = function(buffer, offset, packet, parent, quote_message_type)
  -- Dissect Utp Quote Shortform Message
  if quote_message_type == "E" then
    return nasdaq_uqdf_output_utp_v3_0_c.utp_quote_shortform_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Utp Quote Longform Message
  if quote_message_type == "F" then
    return nasdaq_uqdf_output_utp_v3_0_c.utp_quote_longform_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Finra Adf Market Participant Quotation Message
  if quote_message_type == "M" then
    return nasdaq_uqdf_output_utp_v3_0_c.finra_adf_market_participant_quotation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combined Quote Message Short Form Message
  if quote_message_type == "C" then
    return nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combined Quote Message Long Form Message
  if quote_message_type == "D" then
    return nasdaq_uqdf_output_utp_v3_0_c.combined_quote_message_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Odd Lot Quote Message Short Form Message
  if quote_message_type == "A" then
    return nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Odd Lot Quote Message Long Form Message
  if quote_message_type == "B" then
    return nasdaq_uqdf_output_utp_v3_0_c.odd_lot_quote_message_long_form_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Quote Message
nasdaq_uqdf_output_utp_v3_0_c.quote_message = {}

-- Calculate size of: Quote Message
nasdaq_uqdf_output_utp_v3_0_c.quote_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v3_0_c.quote_message_type.size

  -- Calculate runtime size of Quote Message Payload field
  local quote_message_payload_offset = offset + index
  local quote_message_payload_type = buffer(quote_message_payload_offset - 1, 1):string()
  index = index + nasdaq_uqdf_output_utp_v3_0_c.quote_message_payload.size(buffer, quote_message_payload_offset, quote_message_payload_type)

  return index
end

-- Display: Quote Message
nasdaq_uqdf_output_utp_v3_0_c.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
nasdaq_uqdf_output_utp_v3_0_c.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Message Type: 1 Byte Ascii String
  index, quote_message_type = nasdaq_uqdf_output_utp_v3_0_c.quote_message_type.dissect(buffer, index, packet, parent)

  -- Quote Message Payload: Runtime Type with 7 branches
  index = nasdaq_uqdf_output_utp_v3_0_c.quote_message_payload.dissect(buffer, index, packet, parent, quote_message_type)

  return index
end

-- Dissect: Quote Message
nasdaq_uqdf_output_utp_v3_0_c.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.quote_message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Category Payload
nasdaq_uqdf_output_utp_v3_0_c.category_payload = {}

-- Dissect: Category Payload
nasdaq_uqdf_output_utp_v3_0_c.category_payload.dissect = function(buffer, offset, packet, parent, message_category)
  -- Dissect Quote Message
  if message_category == "Q" then
    return nasdaq_uqdf_output_utp_v3_0_c.quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Administrative Message
  if message_category == "A" then
    return nasdaq_uqdf_output_utp_v3_0_c.administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control Message
  if message_category == "C" then
    return nasdaq_uqdf_output_utp_v3_0_c.control_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_uqdf_output_utp_v3_0_c.message_header = {}

-- Size: Message Header
nasdaq_uqdf_output_utp_v3_0_c.message_header.size =
  nasdaq_uqdf_output_utp_v3_0_c.message_length.size + 
  nasdaq_uqdf_output_utp_v3_0_c.version.size + 
  nasdaq_uqdf_output_utp_v3_0_c.message_category.size

-- Display: Message Header
nasdaq_uqdf_output_utp_v3_0_c.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_uqdf_output_utp_v3_0_c.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_uqdf_output_utp_v3_0_c.message_length.dissect(buffer, index, packet, parent)

  -- Version: 1 Byte Ascii String
  index, version = nasdaq_uqdf_output_utp_v3_0_c.version.dissect(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String
  index, message_category = nasdaq_uqdf_output_utp_v3_0_c.message_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_uqdf_output_utp_v3_0_c.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.message_header, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_uqdf_output_utp_v3_0_c.message = {}

-- Calculate size of: Message
nasdaq_uqdf_output_utp_v3_0_c.message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v3_0_c.message_header.size

  -- Parse runtime size of: Category Payload
  index = index + buffer(offset + index - 4, 2):uint()

  return index
end

-- Display: Message
nasdaq_uqdf_output_utp_v3_0_c.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_uqdf_output_utp_v3_0_c.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = nasdaq_uqdf_output_utp_v3_0_c.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Category Payload: Runtime Type with 3 branches
  index = nasdaq_uqdf_output_utp_v3_0_c.category_payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
nasdaq_uqdf_output_utp_v3_0_c.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.message, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Messages
nasdaq_uqdf_output_utp_v3_0_c.messages = {}

-- Dissect: Messages
nasdaq_uqdf_output_utp_v3_0_c.messages.dissect = function(buffer, offset, packet, parent, message_count)
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

    -- Message: Struct of 2 fields
    offset = nasdaq_uqdf_output_utp_v3_0_c.message.dissect(buffer, offset, packet, parent, message_index)
  end

  return offset
end

-- Udp Packet Header
nasdaq_uqdf_output_utp_v3_0_c.udp_packet_header = {}

-- Size: Udp Packet Header
nasdaq_uqdf_output_utp_v3_0_c.udp_packet_header.size =
  nasdaq_uqdf_output_utp_v3_0_c.udp_session.size + 
  nasdaq_uqdf_output_utp_v3_0_c.udp_sequence_number.size + 
  nasdaq_uqdf_output_utp_v3_0_c.message_count.size

-- Display: Udp Packet Header
nasdaq_uqdf_output_utp_v3_0_c.udp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Udp Packet Header
nasdaq_uqdf_output_utp_v3_0_c.udp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Udp Session: 10 Byte Ascii String
  index, udp_session = nasdaq_uqdf_output_utp_v3_0_c.udp_session.dissect(buffer, index, packet, parent)

  -- Udp Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, udp_sequence_number = nasdaq_uqdf_output_utp_v3_0_c.udp_sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_uqdf_output_utp_v3_0_c.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Udp Packet Header
nasdaq_uqdf_output_utp_v3_0_c.udp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.udp_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c.fields.udp_packet_header, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v3_0_c.udp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v3_0_c.udp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v3_0_c.udp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Mold Udp 64 Packet
nasdaq_uqdf_output_utp_v3_0_c.mold_udp_64_packet = {}

-- Verify required size of Udp packet
nasdaq_uqdf_output_utp_v3_0_c.mold_udp_64_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_uqdf_output_utp_v3_0_c.udp_packet_header.size
end

-- Dissect Mold Udp 64 Packet
nasdaq_uqdf_output_utp_v3_0_c.mold_udp_64_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Udp Packet Header: Struct of 3 fields
  index, udp_packet_header = nasdaq_uqdf_output_utp_v3_0_c.udp_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_uqdf_output_utp_v3_0_c.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_uqdf_output_utp_v3_0_c.init()
end

-- Dissector for Nasdaq Uqdf Output Utp 3.0.c
function omi_nasdaq_uqdf_output_utp_v3_0_c.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_uqdf_output_utp_v3_0_c.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_uqdf_output_utp_v3_0_c, buffer(), omi_nasdaq_uqdf_output_utp_v3_0_c.description, "("..buffer:len().." Bytes)")
  return nasdaq_uqdf_output_utp_v3_0_c.mold_udp_64_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq Uqdf Output Utp 3.0.c (Udp)
local function omi_nasdaq_uqdf_output_utp_v3_0_c_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_uqdf_output_utp_v3_0_c.mold_udp_64_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_uqdf_output_utp_v3_0_c
  omi_nasdaq_uqdf_output_utp_v3_0_c.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Uqdf Output Utp 3.0.c
omi_nasdaq_uqdf_output_utp_v3_0_c:register_heuristic("udp", omi_nasdaq_uqdf_output_utp_v3_0_c_udp_heuristic)

-- Register Nasdaq Uqdf Output Utp 3.0.c for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_uqdf_output_utp_v3_0_c)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 3.0.c
--   Date: Sunday, February 1, 2026
--   Specification: UtpBinaryOutputSpec.pdf
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
