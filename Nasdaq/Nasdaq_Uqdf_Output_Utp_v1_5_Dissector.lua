-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Uqdf Output Utp 1.5 Protocol
local omi_nasdaq_uqdf_output_utp_v1_5 = Proto("Nasdaq.Uqdf.Output.Utp.v1.5.Lua", "Nasdaq Uqdf Output Utp 1.5")

-- Protocol table
local nasdaq_uqdf_output_utp_v1_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Uqdf Output Utp 1.5 Fields
omi_nasdaq_uqdf_output_utp_v1_5.fields.action_timestamp = ProtoField.new("Action Timestamp", "nasdaq.uqdf.output.utp.v1.5.actiontimestamp", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.administrative = ProtoField.new("Administrative", "nasdaq.uqdf.output.utp.v1.5.administrative", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "nasdaq.uqdf.output.utp.v1.5.administrativemessagetype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_adf_mpid = ProtoField.new("Ask Adf Mpid", "nasdaq.uqdf.output.utp.v1.5.askadfmpid", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.uqdf.output.utp.v1.5.askprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_price_short = ProtoField.new("Ask Price Short", "nasdaq.uqdf.output.utp.v1.5.askpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.uqdf.output.utp.v1.5.asksize", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_size_short = ProtoField.new("Ask Size Short", "nasdaq.uqdf.output.utp.v1.5.asksizeshort", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.uqdf.output.utp.v1.5.authenticity", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.best_ask_market_center = ProtoField.new("Best Ask Market Center", "nasdaq.uqdf.output.utp.v1.5.bestaskmarketcenter", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.best_ask_price = ProtoField.new("Best Ask Price", "nasdaq.uqdf.output.utp.v1.5.bestaskprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.best_ask_size = ProtoField.new("Best Ask Size", "nasdaq.uqdf.output.utp.v1.5.bestasksize", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v1_5.fields.best_bid_market_center = ProtoField.new("Best Bid Market Center", "nasdaq.uqdf.output.utp.v1.5.bestbidmarketcenter", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.best_bid_price = ProtoField.new("Best Bid Price", "nasdaq.uqdf.output.utp.v1.5.bestbidprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.best_bid_size = ProtoField.new("Best Bid Size", "nasdaq.uqdf.output.utp.v1.5.bestbidsize", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_adf_mpid = ProtoField.new("Bid Adf Mpid", "nasdaq.uqdf.output.utp.v1.5.bidadfmpid", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.uqdf.output.utp.v1.5.bidprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_price_short = ProtoField.new("Bid Price Short", "nasdaq.uqdf.output.utp.v1.5.bidpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.uqdf.output.utp.v1.5.bidsize", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_size_short = ProtoField.new("Bid Size Short", "nasdaq.uqdf.output.utp.v1.5.bidsizeshort", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_down_price = ProtoField.new("Collar Down Price", "nasdaq.uqdf.output.utp.v1.5.collardownprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_extension_indicator = ProtoField.new("Collar Extension Indicator", "nasdaq.uqdf.output.utp.v1.5.collarextensionindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_reference_price = ProtoField.new("Collar Reference Price", "nasdaq.uqdf.output.utp.v1.5.collarreferenceprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_up_price = ProtoField.new("Collar Up Price", "nasdaq.uqdf.output.utp.v1.5.collarupprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.control = ProtoField.new("Control", "nasdaq.uqdf.output.utp.v1.5.control", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.control_message_type = ProtoField.new("Control Message Type", "nasdaq.uqdf.output.utp.v1.5.controlmessagetype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.count = ProtoField.new("Count", "nasdaq.uqdf.output.utp.v1.5.count", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.uqdf.output.utp.v1.5.financialstatusindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_mpid_appendage = ProtoField.new("Finra Adf Mpid Appendage", "nasdaq.uqdf.output.utp.v1.5.finraadfmpidappendage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_mpid_appendage_indicator = ProtoField.new("Finra Adf Mpid Appendage Indicator", "nasdaq.uqdf.output.utp.v1.5.finraadfmpidappendageindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_market_participant = ProtoField.new("Finra Market Participant", "nasdaq.uqdf.output.utp.v1.5.finramarketparticipant", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_timestamp = ProtoField.new("Finra Timestamp", "nasdaq.uqdf.output.utp.v1.5.finratimestamp", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_name = ProtoField.new("Issue Name", "nasdaq.uqdf.output.utp.v1.5.issuename", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_subtype = ProtoField.new("Issue Subtype", "nasdaq.uqdf.output.utp.v1.5.issuesubtype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_type = ProtoField.new("Issue Type", "nasdaq.uqdf.output.utp.v1.5.issuetype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.limit_down_price = ProtoField.new("Limit Down Price", "nasdaq.uqdf.output.utp.v1.5.limitdownprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.limit_up_price = ProtoField.new("Limit Up Price", "nasdaq.uqdf.output.utp.v1.5.limitupprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.long_form_national_bbo_appendage = ProtoField.new("Long Form National Bbo Appendage", "nasdaq.uqdf.output.utp.v1.5.longformnationalbboappendage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_bbo_indicator = ProtoField.new("Luld Bbo Indicator", "nasdaq.uqdf.output.utp.v1.5.luldbboindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_national_bbo_indicator = ProtoField.new("Luld National Bbo Indicator", "nasdaq.uqdf.output.utp.v1.5.luldnationalbboindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_price_band_indicator = ProtoField.new("Luld Price Band Indicator", "nasdaq.uqdf.output.utp.v1.5.luldpricebandindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_timestamp = ProtoField.new("Luld Timestamp", "nasdaq.uqdf.output.utp.v1.5.luldtimestamp", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_ask_price = ProtoField.new("Market Center Ask Price", "nasdaq.uqdf.output.utp.v1.5.marketcenteraskprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_ask_size = ProtoField.new("Market Center Ask Size", "nasdaq.uqdf.output.utp.v1.5.marketcenterasksize", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_bid_price = ProtoField.new("Market Center Bid Price", "nasdaq.uqdf.output.utp.v1.5.marketcenterbidprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_bid_size = ProtoField.new("Market Center Bid Size", "nasdaq.uqdf.output.utp.v1.5.marketcenterbidsize", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_close_recap = ProtoField.new("Market Center Close Recap", "nasdaq.uqdf.output.utp.v1.5.marketcentercloserecap", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_identifier = ProtoField.new("Market Center Identifier", "nasdaq.uqdf.output.utp.v1.5.marketcenteridentifier", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_originator_id = ProtoField.new("Market Center Originator Id", "nasdaq.uqdf.output.utp.v1.5.marketcenteroriginatorid", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_tier = ProtoField.new("Market Tier", "nasdaq.uqdf.output.utp.v1.5.markettier", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.message = ProtoField.new("Message", "nasdaq.uqdf.output.utp.v1.5.message", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.message_category = ProtoField.new("Message Category", "nasdaq.uqdf.output.utp.v1.5.messagecategory", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.message_header = ProtoField.new("Message Header", "nasdaq.uqdf.output.utp.v1.5.messageheader", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.message_info = ProtoField.new("Message Info", "nasdaq.uqdf.output.utp.v1.5.messageinfo", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.message_length = ProtoField.new("Message Length", "nasdaq.uqdf.output.utp.v1.5.messagelength", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_1 = ProtoField.new("Mwcb Level 1", "nasdaq.uqdf.output.utp.v1.5.mwcblevel1", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "nasdaq.uqdf.output.utp.v1.5.mwcblevel2", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "nasdaq.uqdf.output.utp.v1.5.mwcblevel3", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_market_center = ProtoField.new("National Best Ask Market Center", "nasdaq.uqdf.output.utp.v1.5.nationalbestaskmarketcenter", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_price = ProtoField.new("National Best Ask Price", "nasdaq.uqdf.output.utp.v1.5.nationalbestaskprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_price_short = ProtoField.new("National Best Ask Price Short", "nasdaq.uqdf.output.utp.v1.5.nationalbestaskpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_size = ProtoField.new("National Best Ask Size", "nasdaq.uqdf.output.utp.v1.5.nationalbestasksize", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_size_short = ProtoField.new("National Best Ask Size Short", "nasdaq.uqdf.output.utp.v1.5.nationalbestasksizeshort", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_market_center = ProtoField.new("National Best Bid Market Center", "nasdaq.uqdf.output.utp.v1.5.nationalbestbidmarketcenter", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_price = ProtoField.new("National Best Bid Price", "nasdaq.uqdf.output.utp.v1.5.nationalbestbidprice", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_price_short = ProtoField.new("National Best Bid Price Short", "nasdaq.uqdf.output.utp.v1.5.nationalbestbidpriceshort", ftypes.DOUBLE)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_size = ProtoField.new("National Best Bid Size", "nasdaq.uqdf.output.utp.v1.5.nationalbestbidsize", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_size_short = ProtoField.new("National Best Bid Size Short", "nasdaq.uqdf.output.utp.v1.5.nationalbestbidsizeshort", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.nbbo_appendage_indicator = ProtoField.new("Nbbo Appendage Indicator", "nasdaq.uqdf.output.utp.v1.5.nbboappendageindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.nbbo_quote_condition = ProtoField.new("Nbbo Quote Condition", "nasdaq.uqdf.output.utp.v1.5.nbboquotecondition", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.number_of_market_center_attachments = ProtoField.new("Number Of Market Center Attachments", "nasdaq.uqdf.output.utp.v1.5.numberofmarketcenterattachments", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.old_symbol = ProtoField.new("Old Symbol", "nasdaq.uqdf.output.utp.v1.5.oldsymbol", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.packet = ProtoField.new("Packet", "nasdaq.uqdf.output.utp.v1.5.packet", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.uqdf.output.utp.v1.5.packetheader", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.participant_timestamp = ProtoField.new("Participant Timestamp", "nasdaq.uqdf.output.utp.v1.5.participanttimestamp", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.participant_token = ProtoField.new("Participant Token", "nasdaq.uqdf.output.utp.v1.5.participanttoken", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.quote = ProtoField.new("Quote", "nasdaq.uqdf.output.utp.v1.5.quote", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.uqdf.output.utp.v1.5.quotecondition", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_message_type = ProtoField.new("Quote Message Type", "nasdaq.uqdf.output.utp.v1.5.quotemessagetype", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.uqdf.output.utp.v1.5.regshoaction", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.retail_interest_indicator = ProtoField.new("Retail Interest Indicator", "nasdaq.uqdf.output.utp.v1.5.retailinterestindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.uqdf.output.utp.v1.5.roundlotsize", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.sequence = ProtoField.new("Sequence", "nasdaq.uqdf.output.utp.v1.5.sequence", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.session = ProtoField.new("Session", "nasdaq.uqdf.output.utp.v1.5.session", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.short_form_national_bbo_appendage = ProtoField.new("Short Form National Bbo Appendage", "nasdaq.uqdf.output.utp.v1.5.shortformnationalbboappendage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.uqdf.output.utp.v1.5.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.sip_generated_update = ProtoField.new("Sip Generated Update", "nasdaq.uqdf.output.utp.v1.5.sipgeneratedupdate", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.sip_timestamp = ProtoField.new("Sip Timestamp", "nasdaq.uqdf.output.utp.v1.5.siptimestamp", ftypes.UINT64)
omi_nasdaq_uqdf_output_utp_v1_5.fields.special_condition = ProtoField.new("Special Condition", "nasdaq.uqdf.output.utp.v1.5.specialcondition", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.sub_market_center_id = ProtoField.new("Sub Market Center Id", "nasdaq.uqdf.output.utp.v1.5.submarketcenterid", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.symbol = ProtoField.new("Symbol", "nasdaq.uqdf.output.utp.v1.5.symbol", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.symbol_short = ProtoField.new("Symbol Short", "nasdaq.uqdf.output.utp.v1.5.symbolshort", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.text = ProtoField.new("Text", "nasdaq.uqdf.output.utp.v1.5.text", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.text_length = ProtoField.new("Text Length", "nasdaq.uqdf.output.utp.v1.5.textlength", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.trading_action_code = ProtoField.new("Trading Action Code", "nasdaq.uqdf.output.utp.v1.5.tradingactioncode", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.trading_action_reason = ProtoField.new("Trading Action Reason", "nasdaq.uqdf.output.utp.v1.5.tradingactionreason", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.trading_action_sequence_number = ProtoField.new("Trading Action Sequence Number", "nasdaq.uqdf.output.utp.v1.5.tradingactionsequencenumber", ftypes.UINT32)
omi_nasdaq_uqdf_output_utp_v1_5.fields.version = ProtoField.new("Version", "nasdaq.uqdf.output.utp.v1.5.version", ftypes.UINT8)

-- Nasdaq Uqdf Utp Output 1.5 Application Messages
omi_nasdaq_uqdf_output_utp_v1_5.fields.auction_collar_message = ProtoField.new("Auction Collar Message", "nasdaq.uqdf.output.utp.v1.5.auctioncollarmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.cross_sro_trading_action_message = ProtoField.new("Cross Sro Trading Action Message", "nasdaq.uqdf.output.utp.v1.5.crosssrotradingactionmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.end_of_day_message = ProtoField.new("End Of Day Message", "nasdaq.uqdf.output.utp.v1.5.endofdaymessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.end_of_transmissions_message = ProtoField.new("End Of Transmissions Message", "nasdaq.uqdf.output.utp.v1.5.endoftransmissionsmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_market_participant_quotation_message = ProtoField.new("Finra Adf Market Participant Quotation Message", "nasdaq.uqdf.output.utp.v1.5.finraadfmarketparticipantquotationmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.general_administrative_message = ProtoField.new("General Administrative Message", "nasdaq.uqdf.output.utp.v1.5.generaladministrativemessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_symbol_directory_message = ProtoField.new("Issue Symbol Directory Message", "nasdaq.uqdf.output.utp.v1.5.issuesymboldirectorymessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.limit_up_limit_down_price_band_message = ProtoField.new("Limit Up Limit Down Price Band Message", "nasdaq.uqdf.output.utp.v1.5.limituplimitdownpricebandmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_trading_action_message = ProtoField.new("Market Center Trading Action Message", "nasdaq.uqdf.output.utp.v1.5.marketcentertradingactionmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_session_close_message = ProtoField.new("Market Session Close Message", "nasdaq.uqdf.output.utp.v1.5.marketsessionclosemessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_session_open_message = ProtoField.new("Market Session Open Message", "nasdaq.uqdf.output.utp.v1.5.marketsessionopenmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_wide_circuit_breaker_decline_level_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Message", "nasdaq.uqdf.output.utp.v1.5.marketwidecircuitbreakerdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_long_form_message = ProtoField.new("Quote Long Form Message", "nasdaq.uqdf.output.utp.v1.5.quotelongformmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_short_form_message = ProtoField.new("Quote Short Form Message", "nasdaq.uqdf.output.utp.v1.5.quoteshortformmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_wipe_out_message = ProtoField.new("Quote Wipe Out Message", "nasdaq.uqdf.output.utp.v1.5.quotewipeoutmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.regulation_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Regulation Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.uqdf.output.utp.v1.5.regulationshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.session_close_recap_message = ProtoField.new("Session Close Recap Message", "nasdaq.uqdf.output.utp.v1.5.sessioncloserecapmessage", ftypes.STRING)
omi_nasdaq_uqdf_output_utp_v1_5.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "nasdaq.uqdf.output.utp.v1.5.startofdaymessage", ftypes.STRING)

-- Nasdaq Uqdf Output Utp 1.5 generated fields
omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_close_recap_index = ProtoField.new("Market Center Close Recap Index", "nasdaq.uqdf.output.utp.v1.5.marketcentercloserecapindex", ftypes.UINT16)
omi_nasdaq_uqdf_output_utp_v1_5.fields.message_index = ProtoField.new("Message Index", "nasdaq.uqdf.output.utp.v1.5.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq Uqdf Output Utp 1.5 Element Dissection Options
show.administrative = true
show.application_messages = true
show.control = true
show.finra_adf_mpid_appendage = true
show.long_form_national_bbo_appendage = true
show.market_center_close_recap = true
show.message = true
show.message_header = true
show.message_info = true
show.packet = true
show.packet_header = true
show.quote = true
show.short_form_national_bbo_appendage = true
show.message_index = true
show.market_center_close_recap_index = true

-- Register Nasdaq Uqdf Output Utp 1.5 Show Options
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_administrative = Pref.bool("Show Administrative", show.administrative, "Parse and add Administrative to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_control = Pref.bool("Show Control", show.control, "Parse and add Control to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_finra_adf_mpid_appendage = Pref.bool("Show Finra Adf Mpid Appendage", show.finra_adf_mpid_appendage, "Parse and add Finra Adf Mpid Appendage to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_long_form_national_bbo_appendage = Pref.bool("Show Long Form National Bbo Appendage", show.long_form_national_bbo_appendage, "Parse and add Long Form National Bbo Appendage to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_market_center_close_recap = Pref.bool("Show Market Center Close Recap", show.market_center_close_recap, "Parse and add Market Center Close Recap to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_message_info = Pref.bool("Show Message Info", show.message_info, "Parse and add Message Info to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_quote = Pref.bool("Show Quote", show.quote, "Parse and add Quote to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_short_form_national_bbo_appendage = Pref.bool("Show Short Form National Bbo Appendage", show.short_form_national_bbo_appendage, "Parse and add Short Form National Bbo Appendage to protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_market_center_close_recap_index = Pref.bool("Show Market Center Close Recap Index", show.market_center_close_recap_index, "Show generated market center close recap index in protocol tree")

-- Handle changed preferences
function omi_nasdaq_uqdf_output_utp_v1_5.prefs_changed()

  -- Check if show options have changed
  if show.administrative ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_administrative then
    show.administrative = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_administrative
  end
  if show.application_messages ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_application_messages
  end
  if show.control ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_control then
    show.control = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_control
  end
  if show.finra_adf_mpid_appendage ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_finra_adf_mpid_appendage then
    show.finra_adf_mpid_appendage = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_finra_adf_mpid_appendage
  end
  if show.long_form_national_bbo_appendage ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_long_form_national_bbo_appendage then
    show.long_form_national_bbo_appendage = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_long_form_national_bbo_appendage
  end
  if show.market_center_close_recap ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_market_center_close_recap then
    show.market_center_close_recap = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_market_center_close_recap
  end
  if show.message ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_message then
    show.message = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_message
  end
  if show.message_header ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_message_header then
    show.message_header = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_message_header
  end
  if show.message_info ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_message_info then
    show.message_info = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_message_info
  end
  if show.packet ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_packet then
    show.packet = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_packet
  end
  if show.packet_header ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_packet_header
  end
  if show.quote ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_quote then
    show.quote = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_quote
  end
  if show.short_form_national_bbo_appendage ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_short_form_national_bbo_appendage then
    show.short_form_national_bbo_appendage = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_short_form_national_bbo_appendage
  end
  if show.message_index ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_message_index then
    show.message_index = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_message_index
  end
  if show.market_center_close_recap_index ~= omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_market_center_close_recap_index then
    show.market_center_close_recap_index = omi_nasdaq_uqdf_output_utp_v1_5.prefs.show_market_center_close_recap_index
  end
end


-----------------------------------------------------------------------
-- Nasdaq Uqdf Output Utp 1.5 Fields
-----------------------------------------------------------------------

-- Action Timestamp
nasdaq_uqdf_output_utp_v1_5.action_timestamp = {}

-- Size: Action Timestamp
nasdaq_uqdf_output_utp_v1_5.action_timestamp.size = 8

-- Display: Action Timestamp
nasdaq_uqdf_output_utp_v1_5.action_timestamp.display = function(value)
  return "Action Timestamp: "..value
end

-- Dissect: Action Timestamp
nasdaq_uqdf_output_utp_v1_5.action_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.action_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.action_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.action_timestamp, range, value, display)

  return offset + length, value
end

-- Administrative Message Type
nasdaq_uqdf_output_utp_v1_5.administrative_message_type = {}

-- Size: Administrative Message Type
nasdaq_uqdf_output_utp_v1_5.administrative_message_type.size = 1

-- Display: Administrative Message Type
nasdaq_uqdf_output_utp_v1_5.administrative_message_type.display = function(value)
  if value == "A" then
    return "Administrative Message Type: General Administrative Message (A)"
  end
  if value == "H" then
    return "Administrative Message Type: Cross Sro Trading Action Message (H)"
  end
  if value == "H" then
    return "Administrative Message Type: Market Center Trading Action Message (H)"
  end
  if value == "B" then
    return "Administrative Message Type: Issue Symbol Directory Message (B)"
  end
  if value == "V" then
    return "Administrative Message Type: Regulation Sho Short Sale Price Test Restricted Indicator Message (V)"
  end
  if value == "P" then
    return "Administrative Message Type: Limit Up Limit Down Price Band Message (P)"
  end
  if value == "C" then
    return "Administrative Message Type: Market Wide Circuit Breaker Decline Level Message (C)"
  end
  if value == "D" then
    return "Administrative Message Type: Market Wide Circuit Breaker Decline Level Message (D)"
  end
  if value == "E" then
    return "Administrative Message Type: Auction Collar Message (E)"
  end
  if value == "R" then
    return "Administrative Message Type: Session Close Recap Message (R)"
  end

  return "Administrative Message Type: Unknown("..value..")"
end

-- Dissect: Administrative Message Type
nasdaq_uqdf_output_utp_v1_5.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Ask Adf Mpid
nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid = {}

-- Size: Ask Adf Mpid
nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid.size = 4

-- Display: Ask Adf Mpid
nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid.display = function(value)
  return "Ask Adf Mpid: "..value
end

-- Dissect: Ask Adf Mpid
nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_adf_mpid, range, value, display)

  return offset + length, value
end

-- Ask Price
nasdaq_uqdf_output_utp_v1_5.ask_price = {}

-- Size: Ask Price
nasdaq_uqdf_output_utp_v1_5.ask_price.size = 8

-- Display: Ask Price
nasdaq_uqdf_output_utp_v1_5.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
nasdaq_uqdf_output_utp_v1_5.ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Price
nasdaq_uqdf_output_utp_v1_5.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.ask_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Price Short
nasdaq_uqdf_output_utp_v1_5.ask_price_short = {}

-- Size: Ask Price Short
nasdaq_uqdf_output_utp_v1_5.ask_price_short.size = 2

-- Display: Ask Price Short
nasdaq_uqdf_output_utp_v1_5.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Translate: Ask Price Short
nasdaq_uqdf_output_utp_v1_5.ask_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Ask Price Short
nasdaq_uqdf_output_utp_v1_5.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v1_5.ask_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Size
nasdaq_uqdf_output_utp_v1_5.ask_size = {}

-- Size: Ask Size
nasdaq_uqdf_output_utp_v1_5.ask_size.size = 4

-- Display: Ask Size
nasdaq_uqdf_output_utp_v1_5.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_uqdf_output_utp_v1_5.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Ask Size Short
nasdaq_uqdf_output_utp_v1_5.ask_size_short = {}

-- Size: Ask Size Short
nasdaq_uqdf_output_utp_v1_5.ask_size_short.size = 2

-- Display: Ask Size Short
nasdaq_uqdf_output_utp_v1_5.ask_size_short.display = function(value)
  return "Ask Size Short: "..value
end

-- Dissect: Ask Size Short
nasdaq_uqdf_output_utp_v1_5.ask_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.ask_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.ask_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.ask_size_short, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_uqdf_output_utp_v1_5.authenticity = {}

-- Size: Authenticity
nasdaq_uqdf_output_utp_v1_5.authenticity.size = 1

-- Display: Authenticity
nasdaq_uqdf_output_utp_v1_5.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Production (P)"
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
nasdaq_uqdf_output_utp_v1_5.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.best_ask_market_center = {}

-- Size: Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.best_ask_market_center.size = 1

-- Display: Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.best_ask_market_center.display = function(value)
  return "Best Ask Market Center: "..value
end

-- Dissect: Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.best_ask_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.best_ask_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.best_ask_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.best_ask_market_center, range, value, display)

  return offset + length, value
end

-- Best Ask Price
nasdaq_uqdf_output_utp_v1_5.best_ask_price = {}

-- Size: Best Ask Price
nasdaq_uqdf_output_utp_v1_5.best_ask_price.size = 8

-- Display: Best Ask Price
nasdaq_uqdf_output_utp_v1_5.best_ask_price.display = function(value)
  return "Best Ask Price: "..value
end

-- Translate: Best Ask Price
nasdaq_uqdf_output_utp_v1_5.best_ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Best Ask Price
nasdaq_uqdf_output_utp_v1_5.best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.best_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.best_ask_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Best Ask Size
nasdaq_uqdf_output_utp_v1_5.best_ask_size = {}

-- Size: Best Ask Size
nasdaq_uqdf_output_utp_v1_5.best_ask_size.size = 4

-- Display: Best Ask Size
nasdaq_uqdf_output_utp_v1_5.best_ask_size.display = function(value)
  return "Best Ask Size: "..value
end

-- Dissect: Best Ask Size
nasdaq_uqdf_output_utp_v1_5.best_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.best_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.best_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.best_ask_size, range, value, display)

  return offset + length, value
end

-- Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.best_bid_market_center = {}

-- Size: Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.best_bid_market_center.size = 1

-- Display: Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.best_bid_market_center.display = function(value)
  return "Best Bid Market Center: "..value
end

-- Dissect: Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.best_bid_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.best_bid_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.best_bid_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.best_bid_market_center, range, value, display)

  return offset + length, value
end

-- Best Bid Price
nasdaq_uqdf_output_utp_v1_5.best_bid_price = {}

-- Size: Best Bid Price
nasdaq_uqdf_output_utp_v1_5.best_bid_price.size = 8

-- Display: Best Bid Price
nasdaq_uqdf_output_utp_v1_5.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Translate: Best Bid Price
nasdaq_uqdf_output_utp_v1_5.best_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Best Bid Price
nasdaq_uqdf_output_utp_v1_5.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.best_bid_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Size
nasdaq_uqdf_output_utp_v1_5.best_bid_size = {}

-- Size: Best Bid Size
nasdaq_uqdf_output_utp_v1_5.best_bid_size.size = 4

-- Display: Best Bid Size
nasdaq_uqdf_output_utp_v1_5.best_bid_size.display = function(value)
  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
nasdaq_uqdf_output_utp_v1_5.best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Bid Adf Mpid
nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid = {}

-- Size: Bid Adf Mpid
nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid.size = 4

-- Display: Bid Adf Mpid
nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid.display = function(value)
  return "Bid Adf Mpid: "..value
end

-- Dissect: Bid Adf Mpid
nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_adf_mpid, range, value, display)

  return offset + length, value
end

-- Bid Price
nasdaq_uqdf_output_utp_v1_5.bid_price = {}

-- Size: Bid Price
nasdaq_uqdf_output_utp_v1_5.bid_price.size = 8

-- Display: Bid Price
nasdaq_uqdf_output_utp_v1_5.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
nasdaq_uqdf_output_utp_v1_5.bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
nasdaq_uqdf_output_utp_v1_5.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.bid_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Price Short
nasdaq_uqdf_output_utp_v1_5.bid_price_short = {}

-- Size: Bid Price Short
nasdaq_uqdf_output_utp_v1_5.bid_price_short.size = 2

-- Display: Bid Price Short
nasdaq_uqdf_output_utp_v1_5.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
nasdaq_uqdf_output_utp_v1_5.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
nasdaq_uqdf_output_utp_v1_5.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v1_5.bid_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Size
nasdaq_uqdf_output_utp_v1_5.bid_size = {}

-- Size: Bid Size
nasdaq_uqdf_output_utp_v1_5.bid_size.size = 4

-- Display: Bid Size
nasdaq_uqdf_output_utp_v1_5.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_uqdf_output_utp_v1_5.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Size Short
nasdaq_uqdf_output_utp_v1_5.bid_size_short = {}

-- Size: Bid Size Short
nasdaq_uqdf_output_utp_v1_5.bid_size_short.size = 2

-- Display: Bid Size Short
nasdaq_uqdf_output_utp_v1_5.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
nasdaq_uqdf_output_utp_v1_5.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Collar Down Price
nasdaq_uqdf_output_utp_v1_5.collar_down_price = {}

-- Size: Collar Down Price
nasdaq_uqdf_output_utp_v1_5.collar_down_price.size = 8

-- Display: Collar Down Price
nasdaq_uqdf_output_utp_v1_5.collar_down_price.display = function(value)
  return "Collar Down Price: "..value
end

-- Translate: Collar Down Price
nasdaq_uqdf_output_utp_v1_5.collar_down_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Down Price
nasdaq_uqdf_output_utp_v1_5.collar_down_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.collar_down_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.collar_down_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.collar_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_down_price, range, value, display)

  return offset + length, value
end

-- Collar Extension Indicator
nasdaq_uqdf_output_utp_v1_5.collar_extension_indicator = {}

-- Size: Collar Extension Indicator
nasdaq_uqdf_output_utp_v1_5.collar_extension_indicator.size = 1

-- Display: Collar Extension Indicator
nasdaq_uqdf_output_utp_v1_5.collar_extension_indicator.display = function(value)
  return "Collar Extension Indicator: "..value
end

-- Dissect: Collar Extension Indicator
nasdaq_uqdf_output_utp_v1_5.collar_extension_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.collar_extension_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.collar_extension_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_extension_indicator, range, value, display)

  return offset + length, value
end

-- Collar Reference Price
nasdaq_uqdf_output_utp_v1_5.collar_reference_price = {}

-- Size: Collar Reference Price
nasdaq_uqdf_output_utp_v1_5.collar_reference_price.size = 8

-- Display: Collar Reference Price
nasdaq_uqdf_output_utp_v1_5.collar_reference_price.display = function(value)
  return "Collar Reference Price: "..value
end

-- Translate: Collar Reference Price
nasdaq_uqdf_output_utp_v1_5.collar_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Reference Price
nasdaq_uqdf_output_utp_v1_5.collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.collar_reference_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_reference_price, range, value, display)

  return offset + length, value
end

-- Collar Up Price
nasdaq_uqdf_output_utp_v1_5.collar_up_price = {}

-- Size: Collar Up Price
nasdaq_uqdf_output_utp_v1_5.collar_up_price.size = 8

-- Display: Collar Up Price
nasdaq_uqdf_output_utp_v1_5.collar_up_price.display = function(value)
  return "Collar Up Price: "..value
end

-- Translate: Collar Up Price
nasdaq_uqdf_output_utp_v1_5.collar_up_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Up Price
nasdaq_uqdf_output_utp_v1_5.collar_up_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.collar_up_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.collar_up_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.collar_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.collar_up_price, range, value, display)

  return offset + length, value
end

-- Control Message Type
nasdaq_uqdf_output_utp_v1_5.control_message_type = {}

-- Size: Control Message Type
nasdaq_uqdf_output_utp_v1_5.control_message_type.size = 1

-- Display: Control Message Type
nasdaq_uqdf_output_utp_v1_5.control_message_type.display = function(value)
  if value == "I" then
    return "Control Message Type: Start Of Day Message (I)"
  end
  if value == "J" then
    return "Control Message Type: End Of Day Message (J)"
  end
  if value == "O" then
    return "Control Message Type: Market Session Open Message (O)"
  end
  if value == "C" then
    return "Control Message Type: Market Session Close Message (C)"
  end
  if value == "Z" then
    return "Control Message Type: End Of Transmissions Message (Z)"
  end
  if value == "P" then
    return "Control Message Type: Quote Wipe Out Message (P)"
  end

  return "Control Message Type: Unknown("..value..")"
end

-- Dissect: Control Message Type
nasdaq_uqdf_output_utp_v1_5.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Count
nasdaq_uqdf_output_utp_v1_5.count = {}

-- Size: Count
nasdaq_uqdf_output_utp_v1_5.count.size = 2

-- Display: Count
nasdaq_uqdf_output_utp_v1_5.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_uqdf_output_utp_v1_5.count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.count, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_uqdf_output_utp_v1_5.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_uqdf_output_utp_v1_5.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_uqdf_output_utp_v1_5.financial_status_indicator.display = function(value)
  if value == "C" then
    return "Financial Status Indicator: Creations And Or Redemptions Suspended (C)"
  end
  if value == "D" then
    return "Financial Status Indicator: Deficient (D)"
  end
  if value == "E" then
    return "Financial Status Indicator: Delinquent (E)"
  end
  if value == "Q" then
    return "Financial Status Indicator: Bankrupt (Q)"
  end
  if value == "Q" then
    return "Financial Status Indicator: Normal (Q)"
  end
  if value == "G" then
    return "Financial Status Indicator: Normal (G)"
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
nasdaq_uqdf_output_utp_v1_5.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Finra Adf Mpid Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage_indicator = {}

-- Size: Finra Adf Mpid Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage_indicator.size = 1

-- Display: Finra Adf Mpid Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage_indicator.display = function(value)
  if value == " " then
    return "Finra Adf Mpid Appendage Indicator: Not Applicable (<whitespace>)"
  end
  if value == "0" then
    return "Finra Adf Mpid Appendage Indicator: No Adf Mpid Changes (0)"
  end
  if value == "1" then
    return "Finra Adf Mpid Appendage Indicator: No Adf Mpid Exists (1)"
  end
  if value == "2" then
    return "Finra Adf Mpid Appendage Indicator: Adf Mpi Ds Attached (2)"
  end

  return "Finra Adf Mpid Appendage Indicator: Unknown("..value..")"
end

-- Dissect: Finra Adf Mpid Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_mpid_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Finra Market Participant
nasdaq_uqdf_output_utp_v1_5.finra_market_participant = {}

-- Size: Finra Market Participant
nasdaq_uqdf_output_utp_v1_5.finra_market_participant.size = 4

-- Display: Finra Market Participant
nasdaq_uqdf_output_utp_v1_5.finra_market_participant.display = function(value)
  return "Finra Market Participant: "..value
end

-- Dissect: Finra Market Participant
nasdaq_uqdf_output_utp_v1_5.finra_market_participant.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.finra_market_participant.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.finra_market_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_market_participant, range, value, display)

  return offset + length, value
end

-- Finra Timestamp
nasdaq_uqdf_output_utp_v1_5.finra_timestamp = {}

-- Size: Finra Timestamp
nasdaq_uqdf_output_utp_v1_5.finra_timestamp.size = 8

-- Display: Finra Timestamp
nasdaq_uqdf_output_utp_v1_5.finra_timestamp.display = function(value)
  return "Finra Timestamp: "..value
end

-- Dissect: Finra Timestamp
nasdaq_uqdf_output_utp_v1_5.finra_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.finra_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.finra_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_timestamp, range, value, display)

  return offset + length, value
end

-- Issue Name
nasdaq_uqdf_output_utp_v1_5.issue_name = {}

-- Size: Issue Name
nasdaq_uqdf_output_utp_v1_5.issue_name.size = 30

-- Display: Issue Name
nasdaq_uqdf_output_utp_v1_5.issue_name.display = function(value)
  return "Issue Name: "..value
end

-- Dissect: Issue Name
nasdaq_uqdf_output_utp_v1_5.issue_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.issue_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_name, range, value, display)

  return offset + length, value
end

-- Issue Subtype
nasdaq_uqdf_output_utp_v1_5.issue_subtype = {}

-- Size: Issue Subtype
nasdaq_uqdf_output_utp_v1_5.issue_subtype.size = 2

-- Display: Issue Subtype
nasdaq_uqdf_output_utp_v1_5.issue_subtype.display = function(value)
  return "Issue Subtype: "..value
end

-- Dissect: Issue Subtype
nasdaq_uqdf_output_utp_v1_5.issue_subtype.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.issue_subtype.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.issue_subtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_subtype, range, value, display)

  return offset + length, value
end

-- Issue Type
nasdaq_uqdf_output_utp_v1_5.issue_type = {}

-- Size: Issue Type
nasdaq_uqdf_output_utp_v1_5.issue_type.size = 1

-- Display: Issue Type
nasdaq_uqdf_output_utp_v1_5.issue_type.display = function(value)
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
    return "Issue Type: Rule 144a (I)"
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
nasdaq_uqdf_output_utp_v1_5.issue_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.issue_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.issue_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_type, range, value, display)

  return offset + length, value
end

-- Limit Down Price
nasdaq_uqdf_output_utp_v1_5.limit_down_price = {}

-- Size: Limit Down Price
nasdaq_uqdf_output_utp_v1_5.limit_down_price.size = 8

-- Display: Limit Down Price
nasdaq_uqdf_output_utp_v1_5.limit_down_price.display = function(value)
  return "Limit Down Price: "..value
end

-- Translate: Limit Down Price
nasdaq_uqdf_output_utp_v1_5.limit_down_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Down Price
nasdaq_uqdf_output_utp_v1_5.limit_down_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.limit_down_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.limit_down_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.limit_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.limit_down_price, range, value, display)

  return offset + length, value
end

-- Limit Up Price
nasdaq_uqdf_output_utp_v1_5.limit_up_price = {}

-- Size: Limit Up Price
nasdaq_uqdf_output_utp_v1_5.limit_up_price.size = 8

-- Display: Limit Up Price
nasdaq_uqdf_output_utp_v1_5.limit_up_price.display = function(value)
  return "Limit Up Price: "..value
end

-- Translate: Limit Up Price
nasdaq_uqdf_output_utp_v1_5.limit_up_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Up Price
nasdaq_uqdf_output_utp_v1_5.limit_up_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.limit_up_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.limit_up_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.limit_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.limit_up_price, range, value, display)

  return offset + length, value
end

-- Luld Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator = {}

-- Size: Luld Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.size = 1

-- Display: Luld Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.display = function(value)
  if value == " " then
    return "Luld Bbo Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Luld Bbo Indicator: Bid Price Above Upper Limit Price Band (A)"
  end
  if value == "B" then
    return "Luld Bbo Indicator: Ask Price Below Lower Limit Price Band (B)"
  end
  if value == "C" then
    return "Luld Bbo Indicator: Bid And Ask Outside Price Band (C)"
  end

  return "Luld Bbo Indicator: Unknown("..value..")"
end

-- Dissect: Luld Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Luld National Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator = {}

-- Size: Luld National Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.size = 1

-- Display: Luld National Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.display = function(value)
  if value == " " then
    return "Luld National Bbo Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Luld National Bbo Indicator: National Best Bid And National Best Ask Are Executable (A)"
  end
  if value == "B" then
    return "Luld National Bbo Indicator: National Best Bid Below Lower Limit Price Band (B)"
  end
  if value == "C" then
    return "Luld National Bbo Indicator: National Best Ask Above Upper Limit Price Band (C)"
  end
  if value == "D" then
    return "Luld National Bbo Indicator: National Best Bid Below Lower Limit Price Band And National Best Ask Above Upper Limit Price Band (D)"
  end
  if value == "E" then
    return "Luld National Bbo Indicator: National Best Bid Equals Upper Limit Price Band (E)"
  end
  if value == "F" then
    return "Luld National Bbo Indicator: National Best Offer Equals Lower Limit Price Band (F)"
  end
  if value == "G" then
    return "Luld National Bbo Indicator: National Best Bid Equals Upper Limit Price Band (G)"
  end
  if value == "H" then
    return "Luld National Bbo Indicator: National Best Ask Equals Lower Limit Price Band (H)"
  end
  if value == "I" then
    return "Luld National Bbo Indicator: National Best Bid Equals Upper Limit Price Band And National Best Ask Equals Lower Limit Price Band (I)"
  end

  return "Luld National Bbo Indicator: Unknown("..value..")"
end

-- Dissect: Luld National Bbo Indicator
nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_national_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Luld Price Band Indicator
nasdaq_uqdf_output_utp_v1_5.luld_price_band_indicator = {}

-- Size: Luld Price Band Indicator
nasdaq_uqdf_output_utp_v1_5.luld_price_band_indicator.size = 1

-- Display: Luld Price Band Indicator
nasdaq_uqdf_output_utp_v1_5.luld_price_band_indicator.display = function(value)
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
nasdaq_uqdf_output_utp_v1_5.luld_price_band_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.luld_price_band_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.luld_price_band_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_price_band_indicator, range, value, display)

  return offset + length, value
end

-- Luld Timestamp
nasdaq_uqdf_output_utp_v1_5.luld_timestamp = {}

-- Size: Luld Timestamp
nasdaq_uqdf_output_utp_v1_5.luld_timestamp.size = 8

-- Display: Luld Timestamp
nasdaq_uqdf_output_utp_v1_5.luld_timestamp.display = function(value)
  return "Luld Timestamp: "..value
end

-- Dissect: Luld Timestamp
nasdaq_uqdf_output_utp_v1_5.luld_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.luld_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.luld_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.luld_timestamp, range, value, display)

  return offset + length, value
end

-- Market Center Ask Price
nasdaq_uqdf_output_utp_v1_5.market_center_ask_price = {}

-- Size: Market Center Ask Price
nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.size = 8

-- Display: Market Center Ask Price
nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.display = function(value)
  return "Market Center Ask Price: "..value
end

-- Translate: Market Center Ask Price
nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Center Ask Price
nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_ask_price, range, value, display)

  return offset + length, value
end

-- Market Center Ask Size
nasdaq_uqdf_output_utp_v1_5.market_center_ask_size = {}

-- Size: Market Center Ask Size
nasdaq_uqdf_output_utp_v1_5.market_center_ask_size.size = 8

-- Display: Market Center Ask Size
nasdaq_uqdf_output_utp_v1_5.market_center_ask_size.display = function(value)
  return "Market Center Ask Size: "..value
end

-- Dissect: Market Center Ask Size
nasdaq_uqdf_output_utp_v1_5.market_center_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.market_center_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.market_center_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_ask_size, range, value, display)

  return offset + length, value
end

-- Market Center Bid Price
nasdaq_uqdf_output_utp_v1_5.market_center_bid_price = {}

-- Size: Market Center Bid Price
nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.size = 8

-- Display: Market Center Bid Price
nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.display = function(value)
  return "Market Center Bid Price: "..value
end

-- Translate: Market Center Bid Price
nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Center Bid Price
nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_bid_price, range, value, display)

  return offset + length, value
end

-- Market Center Bid Size
nasdaq_uqdf_output_utp_v1_5.market_center_bid_size = {}

-- Size: Market Center Bid Size
nasdaq_uqdf_output_utp_v1_5.market_center_bid_size.size = 8

-- Display: Market Center Bid Size
nasdaq_uqdf_output_utp_v1_5.market_center_bid_size.display = function(value)
  return "Market Center Bid Size: "..value
end

-- Dissect: Market Center Bid Size
nasdaq_uqdf_output_utp_v1_5.market_center_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.market_center_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.market_center_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_bid_size, range, value, display)

  return offset + length, value
end

-- Market Center Identifier
nasdaq_uqdf_output_utp_v1_5.market_center_identifier = {}

-- Size: Market Center Identifier
nasdaq_uqdf_output_utp_v1_5.market_center_identifier.size = 1

-- Display: Market Center Identifier
nasdaq_uqdf_output_utp_v1_5.market_center_identifier.display = function(value)
  return "Market Center Identifier: "..value
end

-- Dissect: Market Center Identifier
nasdaq_uqdf_output_utp_v1_5.market_center_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.market_center_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.market_center_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_identifier, range, value, display)

  return offset + length, value
end

-- Market Center Originator Id
nasdaq_uqdf_output_utp_v1_5.market_center_originator_id = {}

-- Size: Market Center Originator Id
nasdaq_uqdf_output_utp_v1_5.market_center_originator_id.size = 1

-- Display: Market Center Originator Id
nasdaq_uqdf_output_utp_v1_5.market_center_originator_id.display = function(value)
  if value == "Y" then
    return "Market Center Originator Id: Byx (Y)"
  end
  if value == "Z" then
    return "Market Center Originator Id: Bzx (Z)"
  end
  if value == "J" then
    return "Market Center Originator Id: Edga (J)"
  end
  if value == "K" then
    return "Market Center Originator Id: Edgx (K)"
  end
  if value == "W" then
    return "Market Center Originator Id: Cboe (W)"
  end
  if value == "B" then
    return "Market Center Originator Id: Bx (B)"
  end
  if value == "X" then
    return "Market Center Originator Id: Phlx (X)"
  end
  if value == "Q" then
    return "Market Center Originator Id: Nasdaq (Q)"
  end
  if value == "I" then
    return "Market Center Originator Id: Ise (I)"
  end
  if value == "N" then
    return "Market Center Originator Id: Nyse (N)"
  end
  if value == "P" then
    return "Market Center Originator Id: Arca (P)"
  end
  if value == "A" then
    return "Market Center Originator Id: American (A)"
  end
  if value == "C" then
    return "Market Center Originator Id: National (C)"
  end
  if value == "M" then
    return "Market Center Originator Id: Chicago (M)"
  end
  if value == "D" then
    return "Market Center Originator Id: Finra (D)"
  end
  if value == "V" then
    return "Market Center Originator Id: Iex (V)"
  end
  if value == "L" then
    return "Market Center Originator Id: Ltse (L)"
  end
  if value == "H" then
    return "Market Center Originator Id: Pearl (H)"
  end
  if value == "U" then
    return "Market Center Originator Id: Memx (U)"
  end
  if value == "E" then
    return "Market Center Originator Id: Market Independent (E)"
  end

  return "Market Center Originator Id: Unknown("..value..")"
end

-- Dissect: Market Center Originator Id
nasdaq_uqdf_output_utp_v1_5.market_center_originator_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.market_center_originator_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.market_center_originator_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_originator_id, range, value, display)

  return offset + length, value
end

-- Market Tier
nasdaq_uqdf_output_utp_v1_5.market_tier = {}

-- Size: Market Tier
nasdaq_uqdf_output_utp_v1_5.market_tier.size = 1

-- Display: Market Tier
nasdaq_uqdf_output_utp_v1_5.market_tier.display = function(value)
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
nasdaq_uqdf_output_utp_v1_5.market_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.market_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.market_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_tier, range, value, display)

  return offset + length, value
end

-- Message Category
nasdaq_uqdf_output_utp_v1_5.message_category = {}

-- Size: Message Category
nasdaq_uqdf_output_utp_v1_5.message_category.size = 1

-- Display: Message Category
nasdaq_uqdf_output_utp_v1_5.message_category.display = function(value)
  return "Message Category: "..value
end

-- Dissect: Message Category
nasdaq_uqdf_output_utp_v1_5.message_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_uqdf_output_utp_v1_5.message_length = {}

-- Size: Message Length
nasdaq_uqdf_output_utp_v1_5.message_length.size = 2

-- Display: Message Length
nasdaq_uqdf_output_utp_v1_5.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_uqdf_output_utp_v1_5.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.message_length, range, value, display)

  return offset + length, value
end

-- Mwcb Level 1
nasdaq_uqdf_output_utp_v1_5.mwcb_level_1 = {}

-- Size: Mwcb Level 1
nasdaq_uqdf_output_utp_v1_5.mwcb_level_1.size = 8

-- Display: Mwcb Level 1
nasdaq_uqdf_output_utp_v1_5.mwcb_level_1.display = function(value)
  return "Mwcb Level 1: "..value
end

-- Dissect: Mwcb Level 1
nasdaq_uqdf_output_utp_v1_5.mwcb_level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.mwcb_level_1.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.mwcb_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_1, range, value, display)

  return offset + length, value
end

-- Mwcb Level 2
nasdaq_uqdf_output_utp_v1_5.mwcb_level_2 = {}

-- Size: Mwcb Level 2
nasdaq_uqdf_output_utp_v1_5.mwcb_level_2.size = 8

-- Display: Mwcb Level 2
nasdaq_uqdf_output_utp_v1_5.mwcb_level_2.display = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
nasdaq_uqdf_output_utp_v1_5.mwcb_level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.mwcb_level_2.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.mwcb_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Mwcb Level 3
nasdaq_uqdf_output_utp_v1_5.mwcb_level_3 = {}

-- Size: Mwcb Level 3
nasdaq_uqdf_output_utp_v1_5.mwcb_level_3.size = 8

-- Display: Mwcb Level 3
nasdaq_uqdf_output_utp_v1_5.mwcb_level_3.display = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
nasdaq_uqdf_output_utp_v1_5.mwcb_level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.mwcb_level_3.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.mwcb_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- National Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center = {}

-- Size: National Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.size = 1

-- Display: National Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.display = function(value)
  return "National Best Ask Market Center: "..value
end

-- Dissect: National Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_market_center, range, value, display)

  return offset + length, value
end

-- National Best Ask Price
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price = {}

-- Size: National Best Ask Price
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.size = 8

-- Display: National Best Ask Price
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.display = function(value)
  return "National Best Ask Price: "..value
end

-- Translate: National Best Ask Price
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Ask Price
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_price, range, value, display)

  return offset + length, value
end

-- National Best Ask Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short = {}

-- Size: National Best Ask Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.size = 2

-- Display: National Best Ask Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.display = function(value)
  return "National Best Ask Price Short: "..value
end

-- Translate: National Best Ask Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: National Best Ask Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_price_short, range, value, display)

  return offset + length, value
end

-- National Best Ask Size
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size = {}

-- Size: National Best Ask Size
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size.size = 8

-- Display: National Best Ask Size
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size.display = function(value)
  return "National Best Ask Size: "..value
end

-- Dissect: National Best Ask Size
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_size, range, value, display)

  return offset + length, value
end

-- National Best Ask Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short = {}

-- Size: National Best Ask Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short.size = 2

-- Display: National Best Ask Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short.display = function(value)
  return "National Best Ask Size Short: "..value
end

-- Dissect: National Best Ask Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_size_short, range, value, display)

  return offset + length, value
end

-- National Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center = {}

-- Size: National Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.size = 1

-- Display: National Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.display = function(value)
  return "National Best Bid Market Center: "..value
end

-- Dissect: National Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_market_center, range, value, display)

  return offset + length, value
end

-- National Best Bid Price
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price = {}

-- Size: National Best Bid Price
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.size = 8

-- Display: National Best Bid Price
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.display = function(value)
  return "National Best Bid Price: "..value
end

-- Translate: National Best Bid Price
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Bid Price
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_price, range, value, display)

  return offset + length, value
end

-- National Best Bid Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short = {}

-- Size: National Best Bid Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.size = 2

-- Display: National Best Bid Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.display = function(value)
  return "National Best Bid Price Short: "..value
end

-- Translate: National Best Bid Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: National Best Bid Price Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.translate(raw)
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_price_short, range, value, display)

  return offset + length, value
end

-- National Best Bid Size
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size = {}

-- Size: National Best Bid Size
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size.size = 8

-- Display: National Best Bid Size
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size.display = function(value)
  return "National Best Bid Size: "..value
end

-- Dissect: National Best Bid Size
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_size, range, value, display)

  return offset + length, value
end

-- National Best Bid Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short = {}

-- Size: National Best Bid Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short.size = 2

-- Display: National Best Bid Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short.display = function(value)
  return "National Best Bid Size Short: "..value
end

-- Dissect: National Best Bid Size Short
nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_size_short, range, value, display)

  return offset + length, value
end

-- Nbbo Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator = {}

-- Size: Nbbo Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.size = 1

-- Display: Nbbo Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.display = function(value)
  if value == "0" then
    return "Nbbo Appendage Indicator: No National Bbo Change (0)"
  end
  if value == "1" then
    return "Nbbo Appendage Indicator: No National Bbo Can Be Calculated (1)"
  end
  if value == "2" then
    return "Nbbo Appendage Indicator: Short Form National Bbo Appendage (2)"
  end
  if value == "3" then
    return "Nbbo Appendage Indicator: Long Form National Bbo Appendage (3)"
  end
  if value == "4" then
    return "Nbbo Appendage Indicator: Quote Contains All National Bbo Information (4)"
  end

  return "Nbbo Appendage Indicator: Unknown("..value..")"
end

-- Dissect: Nbbo Appendage Indicator
nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.nbbo_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Nbbo Quote Condition
nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition = {}

-- Size: Nbbo Quote Condition
nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.size = 1

-- Display: Nbbo Quote Condition
nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.display = function(value)
  if value == "A" then
    return "Nbbo Quote Condition: Manual Ask Automated Bid (A)"
  end
  if value == "B" then
    return "Nbbo Quote Condition: Manual Bid Automated Ask (B)"
  end
  if value == "F" then
    return "Nbbo Quote Condition: Fast Trading (F)"
  end
  if value == "H" then
    return "Nbbo Quote Condition: Manual Bid And Ask (H)"
  end
  if value == "I" then
    return "Nbbo Quote Condition: Order Imbalance (I)"
  end
  if value == "L" then
    return "Nbbo Quote Condition: Closed Quote (L)"
  end
  if value == "N" then
    return "Nbbo Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "Nbbo Quote Condition: Opening Quote Automated (O)"
  end
  if value == "R" then
    return "Nbbo Quote Condition: Regular Two Sided Open Quote Automated (R)"
  end
  if value == "U" then
    return "Nbbo Quote Condition: Manual Bid And Ask Non Firm (U)"
  end
  if value == "X" then
    return "Nbbo Quote Condition: Order Influx (X)"
  end
  if value == "Y" then
    return "Nbbo Quote Condition: Automated Bid No Offer Or Automated Offer No Bid (Y)"
  end
  if value == "Z" then
    return "Nbbo Quote Condition: No Open No Resume (Z)"
  end
  if value == "4" then
    return "Nbbo Quote Condition: Intraday Auction (4)"
  end

  return "Nbbo Quote Condition: Unknown("..value..")"
end

-- Dissect: Nbbo Quote Condition
nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.nbbo_quote_condition, range, value, display)

  return offset + length, value
end

-- Number Of Market Center Attachments
nasdaq_uqdf_output_utp_v1_5.number_of_market_center_attachments = {}

-- Size: Number Of Market Center Attachments
nasdaq_uqdf_output_utp_v1_5.number_of_market_center_attachments.size = 2

-- Display: Number Of Market Center Attachments
nasdaq_uqdf_output_utp_v1_5.number_of_market_center_attachments.display = function(value)
  return "Number Of Market Center Attachments: "..value
end

-- Dissect: Number Of Market Center Attachments
nasdaq_uqdf_output_utp_v1_5.number_of_market_center_attachments.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.number_of_market_center_attachments.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.number_of_market_center_attachments.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.number_of_market_center_attachments, range, value, display)

  return offset + length, value
end

-- Old Symbol
nasdaq_uqdf_output_utp_v1_5.old_symbol = {}

-- Size: Old Symbol
nasdaq_uqdf_output_utp_v1_5.old_symbol.size = 11

-- Display: Old Symbol
nasdaq_uqdf_output_utp_v1_5.old_symbol.display = function(value)
  return "Old Symbol: "..value
end

-- Dissect: Old Symbol
nasdaq_uqdf_output_utp_v1_5.old_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.old_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.old_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.old_symbol, range, value, display)

  return offset + length, value
end

-- Participant Timestamp
nasdaq_uqdf_output_utp_v1_5.participant_timestamp = {}

-- Size: Participant Timestamp
nasdaq_uqdf_output_utp_v1_5.participant_timestamp.size = 8

-- Display: Participant Timestamp
nasdaq_uqdf_output_utp_v1_5.participant_timestamp.display = function(value)
  return "Participant Timestamp: "..value
end

-- Dissect: Participant Timestamp
nasdaq_uqdf_output_utp_v1_5.participant_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.participant_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.participant_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.participant_timestamp, range, value, display)

  return offset + length, value
end

-- Participant Token
nasdaq_uqdf_output_utp_v1_5.participant_token = {}

-- Size: Participant Token
nasdaq_uqdf_output_utp_v1_5.participant_token.size = 8

-- Display: Participant Token
nasdaq_uqdf_output_utp_v1_5.participant_token.display = function(value)
  return "Participant Token: "..value
end

-- Dissect: Participant Token
nasdaq_uqdf_output_utp_v1_5.participant_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.participant_token.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.participant_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.participant_token, range, value, display)

  return offset + length, value
end

-- Quote Condition
nasdaq_uqdf_output_utp_v1_5.quote_condition = {}

-- Size: Quote Condition
nasdaq_uqdf_output_utp_v1_5.quote_condition.size = 1

-- Display: Quote Condition
nasdaq_uqdf_output_utp_v1_5.quote_condition.display = function(value)
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
    return "Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "Quote Condition: Opening Quote Automated (O)"
  end
  if value == "R" then
    return "Quote Condition: Regular Two Sided Open Quote Automated (R)"
  end
  if value == "U" then
    return "Quote Condition: Manual Bid And Ask Non Firm (U)"
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
nasdaq_uqdf_output_utp_v1_5.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Quote Message Type
nasdaq_uqdf_output_utp_v1_5.quote_message_type = {}

-- Size: Quote Message Type
nasdaq_uqdf_output_utp_v1_5.quote_message_type.size = 1

-- Display: Quote Message Type
nasdaq_uqdf_output_utp_v1_5.quote_message_type.display = function(value)
  if value == "E" then
    return "Quote Message Type: Quote Short Form Message (E)"
  end
  if value == "F" then
    return "Quote Message Type: Quote Long Form Message (F)"
  end
  if value == "M" then
    return "Quote Message Type: Finra Adf Market Participant Quotation Message (M)"
  end

  return "Quote Message Type: Unknown("..value..")"
end

-- Dissect: Quote Message Type
nasdaq_uqdf_output_utp_v1_5.quote_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.quote_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.quote_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_message_type, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_uqdf_output_utp_v1_5.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_uqdf_output_utp_v1_5.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_uqdf_output_utp_v1_5.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho In Effect Due To An Intra Day Price Drop (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Reg Sho Restriction Remains In Effect (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_uqdf_output_utp_v1_5.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Retail Interest Indicator
nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator = {}

-- Size: Retail Interest Indicator
nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.size = 1

-- Display: Retail Interest Indicator
nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.display = function(value)
  if value == " " then
    return "Retail Interest Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Retail Interest Indicator: On Bid Quote (A)"
  end
  if value == "B" then
    return "Retail Interest Indicator: On Ask Quote (B)"
  end
  if value == "C" then
    return "Retail Interest Indicator: On Both Bid And Ask Quote (C)"
  end

  return "Retail Interest Indicator: Unknown("..value..")"
end

-- Dissect: Retail Interest Indicator
nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.retail_interest_indicator, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_uqdf_output_utp_v1_5.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_uqdf_output_utp_v1_5.round_lot_size.size = 2

-- Display: Round Lot Size
nasdaq_uqdf_output_utp_v1_5.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_uqdf_output_utp_v1_5.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Sequence
nasdaq_uqdf_output_utp_v1_5.sequence = {}

-- Size: Sequence
nasdaq_uqdf_output_utp_v1_5.sequence.size = 8

-- Display: Sequence
nasdaq_uqdf_output_utp_v1_5.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_uqdf_output_utp_v1_5.sequence.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.sequence.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_uqdf_output_utp_v1_5.session = {}

-- Size: Session
nasdaq_uqdf_output_utp_v1_5.session.size = 10

-- Display: Session
nasdaq_uqdf_output_utp_v1_5.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_uqdf_output_utp_v1_5.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.session, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_uqdf_output_utp_v1_5.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_uqdf_output_utp_v1_5.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_uqdf_output_utp_v1_5.short_sale_threshold_indicator.display = function(value)
  if value == "Y" then
    return "Short Sale Threshold Indicator: Issue Is Restricted (Y)"
  end
  if value == "N" then
    return "Short Sale Threshold Indicator: Issue Is Not Restricted (N)"
  end
  if value == " " then
    return "Short Sale Threshold Indicator: Not Available (<whitespace>)"
  end

  return "Short Sale Threshold Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Threshold Indicator
nasdaq_uqdf_output_utp_v1_5.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Sip Generated Update
nasdaq_uqdf_output_utp_v1_5.sip_generated_update = {}

-- Size: Sip Generated Update
nasdaq_uqdf_output_utp_v1_5.sip_generated_update.size = 1

-- Display: Sip Generated Update
nasdaq_uqdf_output_utp_v1_5.sip_generated_update.display = function(value)
  if value == " " then
    return "Sip Generated Update: Originated From The Market Participant (<whitespace>)"
  end
  if value == "E" then
    return "Sip Generated Update: Si Pgenerated Transaction (E)"
  end

  return "Sip Generated Update: Unknown("..value..")"
end

-- Dissect: Sip Generated Update
nasdaq_uqdf_output_utp_v1_5.sip_generated_update.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.sip_generated_update.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.sip_generated_update.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.sip_generated_update, range, value, display)

  return offset + length, value
end

-- Sip Timestamp
nasdaq_uqdf_output_utp_v1_5.sip_timestamp = {}

-- Size: Sip Timestamp
nasdaq_uqdf_output_utp_v1_5.sip_timestamp.size = 8

-- Display: Sip Timestamp
nasdaq_uqdf_output_utp_v1_5.sip_timestamp.display = function(value)
  return "Sip Timestamp: "..value
end

-- Dissect: Sip Timestamp
nasdaq_uqdf_output_utp_v1_5.sip_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.sip_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5.sip_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.sip_timestamp, range, value, display)

  return offset + length, value
end

-- Special Condition
nasdaq_uqdf_output_utp_v1_5.special_condition = {}

-- Size: Special Condition
nasdaq_uqdf_output_utp_v1_5.special_condition.size = 1

-- Display: Special Condition
nasdaq_uqdf_output_utp_v1_5.special_condition.display = function(value)
  if value == "O" then
    return "Special Condition: One Sided National Bbo At Market Close (O)"
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
nasdaq_uqdf_output_utp_v1_5.special_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.special_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.special_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.special_condition, range, value, display)

  return offset + length, value
end

-- Sub Market Center Id
nasdaq_uqdf_output_utp_v1_5.sub_market_center_id = {}

-- Size: Sub Market Center Id
nasdaq_uqdf_output_utp_v1_5.sub_market_center_id.size = 1

-- Display: Sub Market Center Id
nasdaq_uqdf_output_utp_v1_5.sub_market_center_id.display = function(value)
  if value == "N" then
    return "Sub Market Center Id: Nyse Trf (N)"
  end
  if value == "Q" then
    return "Sub Market Center Id: Nasdaq Trf Carteret (Q)"
  end
  if value == "B" then
    return "Sub Market Center Id: Nasdaq Trf Chicago (B)"
  end
  if value == " " then
    return "Sub Market Center Id: Finra Alternative Display Facility (<whitespace>)"
  end

  return "Sub Market Center Id: Unknown("..value..")"
end

-- Dissect: Sub Market Center Id
nasdaq_uqdf_output_utp_v1_5.sub_market_center_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.sub_market_center_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.sub_market_center_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.sub_market_center_id, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_uqdf_output_utp_v1_5.symbol = {}

-- Size: Symbol
nasdaq_uqdf_output_utp_v1_5.symbol.size = 11

-- Display: Symbol
nasdaq_uqdf_output_utp_v1_5.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_uqdf_output_utp_v1_5.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Short
nasdaq_uqdf_output_utp_v1_5.symbol_short = {}

-- Size: Symbol Short
nasdaq_uqdf_output_utp_v1_5.symbol_short.size = 5

-- Display: Symbol Short
nasdaq_uqdf_output_utp_v1_5.symbol_short.display = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
nasdaq_uqdf_output_utp_v1_5.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.symbol_short.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_uqdf_output_utp_v1_5.text = {}

-- Display: Text
nasdaq_uqdf_output_utp_v1_5.text.display = function(value)
  return "Text: "..value
end

-- Dissect runtime sized field: Text
nasdaq_uqdf_output_utp_v1_5.text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.text, range, value, display)

  return offset + size, value
end

-- Text Length
nasdaq_uqdf_output_utp_v1_5.text_length = {}

-- Size: Text Length
nasdaq_uqdf_output_utp_v1_5.text_length.size = 2

-- Display: Text Length
nasdaq_uqdf_output_utp_v1_5.text_length.display = function(value)
  return "Text Length: "..value
end

-- Dissect: Text Length
nasdaq_uqdf_output_utp_v1_5.text_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.text_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.text_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.text_length, range, value, display)

  return offset + length, value
end

-- Trading Action Code
nasdaq_uqdf_output_utp_v1_5.trading_action_code = {}

-- Size: Trading Action Code
nasdaq_uqdf_output_utp_v1_5.trading_action_code.size = 1

-- Display: Trading Action Code
nasdaq_uqdf_output_utp_v1_5.trading_action_code.display = function(value)
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
nasdaq_uqdf_output_utp_v1_5.trading_action_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.trading_action_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.trading_action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.trading_action_code, range, value, display)

  return offset + length, value
end

-- Trading Action Reason
nasdaq_uqdf_output_utp_v1_5.trading_action_reason = {}

-- Size: Trading Action Reason
nasdaq_uqdf_output_utp_v1_5.trading_action_reason.size = 6

-- Display: Trading Action Reason
nasdaq_uqdf_output_utp_v1_5.trading_action_reason.display = function(value)
  return "Trading Action Reason: "..value
end

-- Dissect: Trading Action Reason
nasdaq_uqdf_output_utp_v1_5.trading_action_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.trading_action_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5.trading_action_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.trading_action_reason, range, value, display)

  return offset + length, value
end

-- Trading Action Sequence Number
nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number = {}

-- Size: Trading Action Sequence Number
nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.size = 4

-- Display: Trading Action Sequence Number
nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.display = function(value)
  return "Trading Action Sequence Number: "..value
end

-- Dissect: Trading Action Sequence Number
nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.trading_action_sequence_number, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_uqdf_output_utp_v1_5.version = {}

-- Size: Version
nasdaq_uqdf_output_utp_v1_5.version.size = 1

-- Display: Version
nasdaq_uqdf_output_utp_v1_5.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_uqdf_output_utp_v1_5.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Uqdf Output Utp 1.5
-----------------------------------------------------------------------

-- Message Info
nasdaq_uqdf_output_utp_v1_5.message_info = {}

-- Size: Message Info
nasdaq_uqdf_output_utp_v1_5.message_info.size =
  nasdaq_uqdf_output_utp_v1_5.market_center_originator_id.size + 
  nasdaq_uqdf_output_utp_v1_5.sub_market_center_id.size + 
  nasdaq_uqdf_output_utp_v1_5.sip_timestamp.size + 
  nasdaq_uqdf_output_utp_v1_5.participant_timestamp.size + 
  nasdaq_uqdf_output_utp_v1_5.participant_token.size

-- Display: Message Info
nasdaq_uqdf_output_utp_v1_5.message_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Info
nasdaq_uqdf_output_utp_v1_5.message_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator Id: 1 Byte Ascii String Enum with 20 values
  index, market_center_originator_id = nasdaq_uqdf_output_utp_v1_5.market_center_originator_id.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: 1 Byte Ascii String Enum with 4 values
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v1_5.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, sip_timestamp = nasdaq_uqdf_output_utp_v1_5.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Participant Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, participant_timestamp = nasdaq_uqdf_output_utp_v1_5.participant_timestamp.dissect(buffer, index, packet, parent)

  -- Participant Token: 8 Byte Unsigned Fixed Width Integer
  index, participant_token = nasdaq_uqdf_output_utp_v1_5.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Info
nasdaq_uqdf_output_utp_v1_5.message_info.dissect = function(buffer, offset, packet, parent)
  if show.message_info then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.message_info, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.message_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.message_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.message_info.fields(buffer, offset, packet, parent)
  end
end

-- Quote Wipe Out Message
nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message = {}

-- Read runtime size of: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.fields = function(buffer, offset, packet, parent, size_of_quote_wipe_out_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.dissect = function(buffer, offset, packet, parent, size_of_quote_wipe_out_message)
  local size_of_quote_wipe_out_message = nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.size(buffer, offset)
  local index = offset + size_of_quote_wipe_out_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_wipe_out_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.fields(buffer, offset, packet, parent, size_of_quote_wipe_out_message)
    parent:set_len(size_of_quote_wipe_out_message)
    local display = nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.fields(buffer, offset, packet, parent, size_of_quote_wipe_out_message)

    return index
  end
end

-- End Of Transmissions Message
nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message = {}

-- Read runtime size of: End Of Transmissions Message
nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: End Of Transmissions Message
nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmissions Message
nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.fields = function(buffer, offset, packet, parent, size_of_end_of_transmissions_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmissions Message
nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.dissect = function(buffer, offset, packet, parent, size_of_end_of_transmissions_message)
  local size_of_end_of_transmissions_message = nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.size(buffer, offset)
  local index = offset + size_of_end_of_transmissions_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.end_of_transmissions_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.fields(buffer, offset, packet, parent, size_of_end_of_transmissions_message)
    parent:set_len(size_of_end_of_transmissions_message)
    local display = nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.fields(buffer, offset, packet, parent, size_of_end_of_transmissions_message)

    return index
  end
end

-- Market Session Close Message
nasdaq_uqdf_output_utp_v1_5.market_session_close_message = {}

-- Read runtime size of: Market Session Close Message
nasdaq_uqdf_output_utp_v1_5.market_session_close_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Market Session Close Message
nasdaq_uqdf_output_utp_v1_5.market_session_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Close Message
nasdaq_uqdf_output_utp_v1_5.market_session_close_message.fields = function(buffer, offset, packet, parent, size_of_market_session_close_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Close Message
nasdaq_uqdf_output_utp_v1_5.market_session_close_message.dissect = function(buffer, offset, packet, parent, size_of_market_session_close_message)
  local size_of_market_session_close_message = nasdaq_uqdf_output_utp_v1_5.market_session_close_message.size(buffer, offset)
  local index = offset + size_of_market_session_close_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_session_close_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.market_session_close_message.fields(buffer, offset, packet, parent, size_of_market_session_close_message)
    parent:set_len(size_of_market_session_close_message)
    local display = nasdaq_uqdf_output_utp_v1_5.market_session_close_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.market_session_close_message.fields(buffer, offset, packet, parent, size_of_market_session_close_message)

    return index
  end
end

-- Market Session Open Message
nasdaq_uqdf_output_utp_v1_5.market_session_open_message = {}

-- Read runtime size of: Market Session Open Message
nasdaq_uqdf_output_utp_v1_5.market_session_open_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Market Session Open Message
nasdaq_uqdf_output_utp_v1_5.market_session_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Open Message
nasdaq_uqdf_output_utp_v1_5.market_session_open_message.fields = function(buffer, offset, packet, parent, size_of_market_session_open_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Open Message
nasdaq_uqdf_output_utp_v1_5.market_session_open_message.dissect = function(buffer, offset, packet, parent, size_of_market_session_open_message)
  local size_of_market_session_open_message = nasdaq_uqdf_output_utp_v1_5.market_session_open_message.size(buffer, offset)
  local index = offset + size_of_market_session_open_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_session_open_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.market_session_open_message.fields(buffer, offset, packet, parent, size_of_market_session_open_message)
    parent:set_len(size_of_market_session_open_message)
    local display = nasdaq_uqdf_output_utp_v1_5.market_session_open_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.market_session_open_message.fields(buffer, offset, packet, parent, size_of_market_session_open_message)

    return index
  end
end

-- End Of Day Message
nasdaq_uqdf_output_utp_v1_5.end_of_day_message = {}

-- Read runtime size of: End Of Day Message
nasdaq_uqdf_output_utp_v1_5.end_of_day_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: End Of Day Message
nasdaq_uqdf_output_utp_v1_5.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
nasdaq_uqdf_output_utp_v1_5.end_of_day_message.fields = function(buffer, offset, packet, parent, size_of_end_of_day_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
nasdaq_uqdf_output_utp_v1_5.end_of_day_message.dissect = function(buffer, offset, packet, parent, size_of_end_of_day_message)
  local size_of_end_of_day_message = nasdaq_uqdf_output_utp_v1_5.end_of_day_message.size(buffer, offset)
  local index = offset + size_of_end_of_day_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.end_of_day_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.end_of_day_message.fields(buffer, offset, packet, parent, size_of_end_of_day_message)
    parent:set_len(size_of_end_of_day_message)
    local display = nasdaq_uqdf_output_utp_v1_5.end_of_day_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.end_of_day_message.fields(buffer, offset, packet, parent, size_of_end_of_day_message)

    return index
  end
end

-- Start Of Day Message
nasdaq_uqdf_output_utp_v1_5.start_of_day_message = {}

-- Read runtime size of: Start Of Day Message
nasdaq_uqdf_output_utp_v1_5.start_of_day_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Start Of Day Message
nasdaq_uqdf_output_utp_v1_5.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
nasdaq_uqdf_output_utp_v1_5.start_of_day_message.fields = function(buffer, offset, packet, parent, size_of_start_of_day_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
nasdaq_uqdf_output_utp_v1_5.start_of_day_message.dissect = function(buffer, offset, packet, parent, size_of_start_of_day_message)
  local size_of_start_of_day_message = nasdaq_uqdf_output_utp_v1_5.start_of_day_message.size(buffer, offset)
  local index = offset + size_of_start_of_day_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.start_of_day_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.start_of_day_message.fields(buffer, offset, packet, parent, size_of_start_of_day_message)
    parent:set_len(size_of_start_of_day_message)
    local display = nasdaq_uqdf_output_utp_v1_5.start_of_day_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.start_of_day_message.fields(buffer, offset, packet, parent, size_of_start_of_day_message)

    return index
  end
end

-- Control Payload
nasdaq_uqdf_output_utp_v1_5.control_payload = {}

-- Dissect: Control Payload
nasdaq_uqdf_output_utp_v1_5.control_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "I" then
    return nasdaq_uqdf_output_utp_v1_5.start_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "J" then
    return nasdaq_uqdf_output_utp_v1_5.end_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Open Message
  if control_message_type == "O" then
    return nasdaq_uqdf_output_utp_v1_5.market_session_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Close Message
  if control_message_type == "C" then
    return nasdaq_uqdf_output_utp_v1_5.market_session_close_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmissions Message
  if control_message_type == "Z" then
    return nasdaq_uqdf_output_utp_v1_5.end_of_transmissions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Wipe Out Message
  if control_message_type == "P" then
    return nasdaq_uqdf_output_utp_v1_5.quote_wipe_out_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control
nasdaq_uqdf_output_utp_v1_5.control = {}

-- Read runtime size of: Control
nasdaq_uqdf_output_utp_v1_5.control.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 2
end

-- Display: Control
nasdaq_uqdf_output_utp_v1_5.control.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control
nasdaq_uqdf_output_utp_v1_5.control.fields = function(buffer, offset, packet, parent, size_of_control)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String Enum with 6 values
  index, control_message_type = nasdaq_uqdf_output_utp_v1_5.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Payload: Runtime Type with 6 branches
  index = nasdaq_uqdf_output_utp_v1_5.control_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control
nasdaq_uqdf_output_utp_v1_5.control.dissect = function(buffer, offset, packet, parent, size_of_control)
  local size_of_control = nasdaq_uqdf_output_utp_v1_5.control.size(buffer, offset)
  local index = offset + size_of_control

  -- Optionally add group/struct element to protocol tree
  if show.control then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.control, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.control.fields(buffer, offset, packet, parent, size_of_control)
    parent:set_len(size_of_control)
    local display = nasdaq_uqdf_output_utp_v1_5.control.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.control.fields(buffer, offset, packet, parent, size_of_control)

    return index
  end
end

-- Market Center Close Recap
nasdaq_uqdf_output_utp_v1_5.market_center_close_recap = {}

-- Size: Market Center Close Recap
nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.size =
  nasdaq_uqdf_output_utp_v1_5.market_center_identifier.size + 
  nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.size + 
  nasdaq_uqdf_output_utp_v1_5.market_center_bid_size.size + 
  nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.size + 
  nasdaq_uqdf_output_utp_v1_5.market_center_ask_size.size

-- Display: Market Center Close Recap
nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Close Recap
nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.fields = function(buffer, offset, packet, parent, market_center_close_recap_index)
  local index = offset

  -- Implicit Market Center Close Recap Index
  if market_center_close_recap_index ~= nil and show.market_center_close_recap_index then
    local iteration = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_close_recap_index, market_center_close_recap_index)
    iteration:set_generated()
  end

  -- Market Center Identifier: 1 Byte Ascii String
  index, market_center_identifier = nasdaq_uqdf_output_utp_v1_5.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Market Center Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, market_center_bid_price = nasdaq_uqdf_output_utp_v1_5.market_center_bid_price.dissect(buffer, index, packet, parent)

  -- Market Center Bid Size: 8 Byte Unsigned Fixed Width Integer
  index, market_center_bid_size = nasdaq_uqdf_output_utp_v1_5.market_center_bid_size.dissect(buffer, index, packet, parent)

  -- Market Center Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, market_center_ask_price = nasdaq_uqdf_output_utp_v1_5.market_center_ask_price.dissect(buffer, index, packet, parent)

  -- Market Center Ask Size: 8 Byte Unsigned Fixed Width Integer
  index, market_center_ask_size = nasdaq_uqdf_output_utp_v1_5.market_center_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Close Recap
nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.dissect = function(buffer, offset, packet, parent, market_center_close_recap_index)
  if show.market_center_close_recap then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_close_recap, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.fields(buffer, offset, packet, parent, market_center_close_recap_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.fields(buffer, offset, packet, parent, market_center_close_recap_index)
  end
end

-- Session Close Recap Message
nasdaq_uqdf_output_utp_v1_5.session_close_recap_message = {}

-- Read runtime size of: Session Close Recap Message
nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Session Close Recap Message
nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Close Recap Message
nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.fields = function(buffer, offset, packet, parent, size_of_session_close_recap_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- National Best Bid Market Center: 1 Byte Ascii String
  index, national_best_bid_market_center = nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.dissect(buffer, index, packet, parent)

  -- National Best Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, national_best_bid_price = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price.dissect(buffer, index, packet, parent)

  -- National Best Bid Size: 8 Byte Unsigned Fixed Width Integer
  index, national_best_bid_size = nasdaq_uqdf_output_utp_v1_5.national_best_bid_size.dissect(buffer, index, packet, parent)

  -- National Best Ask Market Center: 1 Byte Ascii String
  index, national_best_ask_market_center = nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.dissect(buffer, index, packet, parent)

  -- National Best Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, national_best_ask_price = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price.dissect(buffer, index, packet, parent)

  -- National Best Ask Size: 8 Byte Unsigned Fixed Width Integer
  index, national_best_ask_size = nasdaq_uqdf_output_utp_v1_5.national_best_ask_size.dissect(buffer, index, packet, parent)

  -- Special Condition: 1 Byte Ascii String Enum with 4 values
  index, special_condition = nasdaq_uqdf_output_utp_v1_5.special_condition.dissect(buffer, index, packet, parent)

  -- Number Of Market Center Attachments: 2 Byte Unsigned Fixed Width Integer
  index, number_of_market_center_attachments = nasdaq_uqdf_output_utp_v1_5.number_of_market_center_attachments.dissect(buffer, index, packet, parent)

  -- Repeating: Market Center Close Recap
  for market_center_close_recap_index = 1, number_of_market_center_attachments do
    index, market_center_close_recap = nasdaq_uqdf_output_utp_v1_5.market_center_close_recap.dissect(buffer, index, packet, parent, market_center_close_recap_index)
  end

  return index
end

-- Dissect: Session Close Recap Message
nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.dissect = function(buffer, offset, packet, parent, size_of_session_close_recap_message)
  local size_of_session_close_recap_message = nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.size(buffer, offset)
  local index = offset + size_of_session_close_recap_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.session_close_recap_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.fields(buffer, offset, packet, parent, size_of_session_close_recap_message)
    parent:set_len(size_of_session_close_recap_message)
    local display = nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.fields(buffer, offset, packet, parent, size_of_session_close_recap_message)

    return index
  end
end

-- Auction Collar Message
nasdaq_uqdf_output_utp_v1_5.auction_collar_message = {}

-- Read runtime size of: Auction Collar Message
nasdaq_uqdf_output_utp_v1_5.auction_collar_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Auction Collar Message
nasdaq_uqdf_output_utp_v1_5.auction_collar_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Collar Message
nasdaq_uqdf_output_utp_v1_5.auction_collar_message.fields = function(buffer, offset, packet, parent, size_of_auction_collar_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Trading Action Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, trading_action_sequence_number = nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.dissect(buffer, index, packet, parent)

  -- Collar Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, collar_reference_price = nasdaq_uqdf_output_utp_v1_5.collar_reference_price.dissect(buffer, index, packet, parent)

  -- Collar Up Price: 8 Byte Unsigned Fixed Width Integer
  index, collar_up_price = nasdaq_uqdf_output_utp_v1_5.collar_up_price.dissect(buffer, index, packet, parent)

  -- Collar Down Price: 8 Byte Unsigned Fixed Width Integer
  index, collar_down_price = nasdaq_uqdf_output_utp_v1_5.collar_down_price.dissect(buffer, index, packet, parent)

  -- Collar Extension Indicator: 1 Byte Ascii String
  index, collar_extension_indicator = nasdaq_uqdf_output_utp_v1_5.collar_extension_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Collar Message
nasdaq_uqdf_output_utp_v1_5.auction_collar_message.dissect = function(buffer, offset, packet, parent, size_of_auction_collar_message)
  local size_of_auction_collar_message = nasdaq_uqdf_output_utp_v1_5.auction_collar_message.size(buffer, offset)
  local index = offset + size_of_auction_collar_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.auction_collar_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.auction_collar_message.fields(buffer, offset, packet, parent, size_of_auction_collar_message)
    parent:set_len(size_of_auction_collar_message)
    local display = nasdaq_uqdf_output_utp_v1_5.auction_collar_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.auction_collar_message.fields(buffer, offset, packet, parent, size_of_auction_collar_message)

    return index
  end
end

-- Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message = {}

-- Read runtime size of: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.fields = function(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Mwcb Level 1: 8 Byte Unsigned Fixed Width Integer
  index, mwcb_level_1 = nasdaq_uqdf_output_utp_v1_5.mwcb_level_1.dissect(buffer, index, packet, parent)

  -- Mwcb Level 2: 8 Byte Unsigned Fixed Width Integer
  index, mwcb_level_2 = nasdaq_uqdf_output_utp_v1_5.mwcb_level_2.dissect(buffer, index, packet, parent)

  -- Mwcb Level 3: 8 Byte Unsigned Fixed Width Integer
  index, mwcb_level_3 = nasdaq_uqdf_output_utp_v1_5.mwcb_level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.dissect = function(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_message)
  local size_of_market_wide_circuit_breaker_decline_level_message = nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.size(buffer, offset)
  local index = offset + size_of_market_wide_circuit_breaker_decline_level_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_wide_circuit_breaker_decline_level_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.fields(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_message)
    parent:set_len(size_of_market_wide_circuit_breaker_decline_level_message)
    local display = nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.fields(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_message)

    return index
  end
end

-- Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message = {}

-- Read runtime size of: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.fields = function(buffer, offset, packet, parent, size_of_limit_up_limit_down_price_band_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Luld Price Band Indicator: 1 Byte Ascii String Enum with 7 values
  index, luld_price_band_indicator = nasdaq_uqdf_output_utp_v1_5.luld_price_band_indicator.dissect(buffer, index, packet, parent)

  -- Luld Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, luld_timestamp = nasdaq_uqdf_output_utp_v1_5.luld_timestamp.dissect(buffer, index, packet, parent)

  -- Limit Down Price: 8 Byte Unsigned Fixed Width Integer
  index, limit_down_price = nasdaq_uqdf_output_utp_v1_5.limit_down_price.dissect(buffer, index, packet, parent)

  -- Limit Up Price: 8 Byte Unsigned Fixed Width Integer
  index, limit_up_price = nasdaq_uqdf_output_utp_v1_5.limit_up_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.dissect = function(buffer, offset, packet, parent, size_of_limit_up_limit_down_price_band_message)
  local size_of_limit_up_limit_down_price_band_message = nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.size(buffer, offset)
  local index = offset + size_of_limit_up_limit_down_price_band_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.limit_up_limit_down_price_band_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.fields(buffer, offset, packet, parent, size_of_limit_up_limit_down_price_band_message)
    parent:set_len(size_of_limit_up_limit_down_price_band_message)
    local display = nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.fields(buffer, offset, packet, parent, size_of_limit_up_limit_down_price_band_message)

    return index
  end
end

-- Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message = {}

-- Read runtime size of: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent, size_of_regulation_sho_short_sale_price_test_restricted_indicator_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = nasdaq_uqdf_output_utp_v1_5.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent, size_of_regulation_sho_short_sale_price_test_restricted_indicator_message)
  local size_of_regulation_sho_short_sale_price_test_restricted_indicator_message = nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.size(buffer, offset)
  local index = offset + size_of_regulation_sho_short_sale_price_test_restricted_indicator_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.regulation_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent, size_of_regulation_sho_short_sale_price_test_restricted_indicator_message)
    parent:set_len(size_of_regulation_sho_short_sale_price_test_restricted_indicator_message)
    local display = nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent, size_of_regulation_sho_short_sale_price_test_restricted_indicator_message)

    return index
  end
end

-- Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message = {}

-- Read runtime size of: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.fields = function(buffer, offset, packet, parent, size_of_issue_symbol_directory_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Old Symbol: 11 Byte Ascii String
  index, old_symbol = nasdaq_uqdf_output_utp_v1_5.old_symbol.dissect(buffer, index, packet, parent)

  -- Issue Name: 30 Byte Ascii String
  index, issue_name = nasdaq_uqdf_output_utp_v1_5.issue_name.dissect(buffer, index, packet, parent)

  -- Issue Type: 1 Byte Ascii String Enum with 16 values
  index, issue_type = nasdaq_uqdf_output_utp_v1_5.issue_type.dissect(buffer, index, packet, parent)

  -- Issue Subtype: 2 Byte Ascii String
  index, issue_subtype = nasdaq_uqdf_output_utp_v1_5.issue_subtype.dissect(buffer, index, packet, parent)

  -- Market Tier: 1 Byte Ascii String Enum with 3 values
  index, market_tier = nasdaq_uqdf_output_utp_v1_5.market_tier.dissect(buffer, index, packet, parent)

  -- Authenticity: 1 Byte Ascii String Enum with 4 values
  index, authenticity = nasdaq_uqdf_output_utp_v1_5.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: 1 Byte Ascii String Enum with 3 values
  index, short_sale_threshold_indicator = nasdaq_uqdf_output_utp_v1_5.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, round_lot_size = nasdaq_uqdf_output_utp_v1_5.round_lot_size.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 9 values
  index, financial_status_indicator = nasdaq_uqdf_output_utp_v1_5.financial_status_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.dissect = function(buffer, offset, packet, parent, size_of_issue_symbol_directory_message)
  local size_of_issue_symbol_directory_message = nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.size(buffer, offset)
  local index = offset + size_of_issue_symbol_directory_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.issue_symbol_directory_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.fields(buffer, offset, packet, parent, size_of_issue_symbol_directory_message)
    parent:set_len(size_of_issue_symbol_directory_message)
    local display = nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.fields(buffer, offset, packet, parent, size_of_issue_symbol_directory_message)

    return index
  end
end

-- Market Center Trading Action Message
nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message = {}

-- Read runtime size of: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.fields = function(buffer, offset, packet, parent, size_of_market_center_trading_action_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Trading Action Code: 1 Byte Ascii String Enum with 4 values
  index, trading_action_code = nasdaq_uqdf_output_utp_v1_5.trading_action_code.dissect(buffer, index, packet, parent)

  -- Action Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, action_timestamp = nasdaq_uqdf_output_utp_v1_5.action_timestamp.dissect(buffer, index, packet, parent)

  -- Market Center Identifier: 1 Byte Ascii String
  index, market_center_identifier = nasdaq_uqdf_output_utp_v1_5.market_center_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.dissect = function(buffer, offset, packet, parent, size_of_market_center_trading_action_message)
  local size_of_market_center_trading_action_message = nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.size(buffer, offset)
  local index = offset + size_of_market_center_trading_action_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.market_center_trading_action_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.fields(buffer, offset, packet, parent, size_of_market_center_trading_action_message)
    parent:set_len(size_of_market_center_trading_action_message)
    local display = nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.fields(buffer, offset, packet, parent, size_of_market_center_trading_action_message)

    return index
  end
end

-- Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message = {}

-- Read runtime size of: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.fields = function(buffer, offset, packet, parent, size_of_cross_sro_trading_action_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Trading Action Code: 1 Byte Ascii String Enum with 4 values
  index, trading_action_code = nasdaq_uqdf_output_utp_v1_5.trading_action_code.dissect(buffer, index, packet, parent)

  -- Trading Action Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, trading_action_sequence_number = nasdaq_uqdf_output_utp_v1_5.trading_action_sequence_number.dissect(buffer, index, packet, parent)

  -- Action Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, action_timestamp = nasdaq_uqdf_output_utp_v1_5.action_timestamp.dissect(buffer, index, packet, parent)

  -- Trading Action Reason: 6 Byte Ascii String
  index, trading_action_reason = nasdaq_uqdf_output_utp_v1_5.trading_action_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.dissect = function(buffer, offset, packet, parent, size_of_cross_sro_trading_action_message)
  local size_of_cross_sro_trading_action_message = nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.size(buffer, offset)
  local index = offset + size_of_cross_sro_trading_action_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.cross_sro_trading_action_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.fields(buffer, offset, packet, parent, size_of_cross_sro_trading_action_message)
    parent:set_len(size_of_cross_sro_trading_action_message)
    local display = nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.fields(buffer, offset, packet, parent, size_of_cross_sro_trading_action_message)

    return index
  end
end

-- General Administrative Message
nasdaq_uqdf_output_utp_v1_5.general_administrative_message = {}

-- Read runtime size of: General Administrative Message
nasdaq_uqdf_output_utp_v1_5.general_administrative_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: General Administrative Message
nasdaq_uqdf_output_utp_v1_5.general_administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Administrative Message
nasdaq_uqdf_output_utp_v1_5.general_administrative_message.fields = function(buffer, offset, packet, parent, size_of_general_administrative_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Text Length: 2 Byte Unsigned Fixed Width Integer
  index, text_length = nasdaq_uqdf_output_utp_v1_5.text_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Text
  index, text = nasdaq_uqdf_output_utp_v1_5.text.dissect(buffer, index, packet, parent, text_length)

  return index
end

-- Dissect: General Administrative Message
nasdaq_uqdf_output_utp_v1_5.general_administrative_message.dissect = function(buffer, offset, packet, parent, size_of_general_administrative_message)
  local size_of_general_administrative_message = nasdaq_uqdf_output_utp_v1_5.general_administrative_message.size(buffer, offset)
  local index = offset + size_of_general_administrative_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.general_administrative_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.general_administrative_message.fields(buffer, offset, packet, parent, size_of_general_administrative_message)
    parent:set_len(size_of_general_administrative_message)
    local display = nasdaq_uqdf_output_utp_v1_5.general_administrative_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.general_administrative_message.fields(buffer, offset, packet, parent, size_of_general_administrative_message)

    return index
  end
end

-- Administrative Payload
nasdaq_uqdf_output_utp_v1_5.administrative_payload = {}

-- Dissect: Administrative Payload
nasdaq_uqdf_output_utp_v1_5.administrative_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect General Administrative Message
  if administrative_message_type == "A" then
    return nasdaq_uqdf_output_utp_v1_5.general_administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Sro Trading Action Message
  if administrative_message_type == "H" then
    return nasdaq_uqdf_output_utp_v1_5.cross_sro_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Center Trading Action Message
  if administrative_message_type == "H" then
    return nasdaq_uqdf_output_utp_v1_5.market_center_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Symbol Directory Message
  if administrative_message_type == "B" then
    return nasdaq_uqdf_output_utp_v1_5.issue_symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Regulation Sho Short Sale Price Test Restricted Indicator Message
  if administrative_message_type == "V" then
    return nasdaq_uqdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Limit Up Limit Down Price Band Message
  if administrative_message_type == "P" then
    return nasdaq_uqdf_output_utp_v1_5.limit_up_limit_down_price_band_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Decline Level Message
  if administrative_message_type == "C" then
    return nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Decline Level Message
  if administrative_message_type == "D" then
    return nasdaq_uqdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Collar Message
  if administrative_message_type == "E" then
    return nasdaq_uqdf_output_utp_v1_5.auction_collar_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Close Recap Message
  if administrative_message_type == "R" then
    return nasdaq_uqdf_output_utp_v1_5.session_close_recap_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Administrative
nasdaq_uqdf_output_utp_v1_5.administrative = {}

-- Read runtime size of: Administrative
nasdaq_uqdf_output_utp_v1_5.administrative.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 2
end

-- Display: Administrative
nasdaq_uqdf_output_utp_v1_5.administrative.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative
nasdaq_uqdf_output_utp_v1_5.administrative.fields = function(buffer, offset, packet, parent, size_of_administrative)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String Enum with 10 values
  index, administrative_message_type = nasdaq_uqdf_output_utp_v1_5.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Payload: Runtime Type with 10 branches
  index = nasdaq_uqdf_output_utp_v1_5.administrative_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative
nasdaq_uqdf_output_utp_v1_5.administrative.dissect = function(buffer, offset, packet, parent, size_of_administrative)
  local size_of_administrative = nasdaq_uqdf_output_utp_v1_5.administrative.size(buffer, offset)
  local index = offset + size_of_administrative

  -- Optionally add group/struct element to protocol tree
  if show.administrative then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.administrative, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.administrative.fields(buffer, offset, packet, parent, size_of_administrative)
    parent:set_len(size_of_administrative)
    local display = nasdaq_uqdf_output_utp_v1_5.administrative.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.administrative.fields(buffer, offset, packet, parent, size_of_administrative)

    return index
  end
end

-- Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message = {}

-- Read runtime size of: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.fields = function(buffer, offset, packet, parent, size_of_finra_adf_market_participant_quotation_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Finra Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, finra_timestamp = nasdaq_uqdf_output_utp_v1_5.finra_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, bid_price = nasdaq_uqdf_output_utp_v1_5.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = nasdaq_uqdf_output_utp_v1_5.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, ask_price = nasdaq_uqdf_output_utp_v1_5.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = nasdaq_uqdf_output_utp_v1_5.ask_size.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, quote_condition = nasdaq_uqdf_output_utp_v1_5.quote_condition.dissect(buffer, index, packet, parent)

  -- Finra Market Participant: 4 Byte Ascii String
  index, finra_market_participant = nasdaq_uqdf_output_utp_v1_5.finra_market_participant.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.dissect = function(buffer, offset, packet, parent, size_of_finra_adf_market_participant_quotation_message)
  local size_of_finra_adf_market_participant_quotation_message = nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.size(buffer, offset)
  local index = offset + size_of_finra_adf_market_participant_quotation_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_market_participant_quotation_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.fields(buffer, offset, packet, parent, size_of_finra_adf_market_participant_quotation_message)
    parent:set_len(size_of_finra_adf_market_participant_quotation_message)
    local display = nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.fields(buffer, offset, packet, parent, size_of_finra_adf_market_participant_quotation_message)

    return index
  end
end

-- Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage = {}

-- Size: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.size =
  nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid.size + 
  nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid.size

-- Display: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Adf Mpid: 4 Byte Ascii String
  index, bid_adf_mpid = nasdaq_uqdf_output_utp_v1_5.bid_adf_mpid.dissect(buffer, index, packet, parent)

  -- Ask Adf Mpid: 4 Byte Ascii String
  index, ask_adf_mpid = nasdaq_uqdf_output_utp_v1_5.ask_adf_mpid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.dissect = function(buffer, offset, packet, parent)
  if show.finra_adf_mpid_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_mpid_appendage, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.fields(buffer, offset, packet, parent)
  end
end

-- Long Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage = {}

-- Size: Long Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.size =
  nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.size + 
  nasdaq_uqdf_output_utp_v1_5.best_bid_market_center.size + 
  nasdaq_uqdf_output_utp_v1_5.best_bid_price.size + 
  nasdaq_uqdf_output_utp_v1_5.best_bid_size.size + 
  nasdaq_uqdf_output_utp_v1_5.best_ask_market_center.size + 
  nasdaq_uqdf_output_utp_v1_5.best_ask_price.size + 
  nasdaq_uqdf_output_utp_v1_5.best_ask_size.size

-- Display: Long Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nbbo Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, nbbo_quote_condition = nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.dissect(buffer, index, packet, parent)

  -- Best Bid Market Center: 1 Byte Ascii String
  index, best_bid_market_center = nasdaq_uqdf_output_utp_v1_5.best_bid_market_center.dissect(buffer, index, packet, parent)

  -- Best Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, best_bid_price = nasdaq_uqdf_output_utp_v1_5.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, best_bid_size = nasdaq_uqdf_output_utp_v1_5.best_bid_size.dissect(buffer, index, packet, parent)

  -- Best Ask Market Center: 1 Byte Ascii String
  index, best_ask_market_center = nasdaq_uqdf_output_utp_v1_5.best_ask_market_center.dissect(buffer, index, packet, parent)

  -- Best Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, best_ask_price = nasdaq_uqdf_output_utp_v1_5.best_ask_price.dissect(buffer, index, packet, parent)

  -- Best Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, best_ask_size = nasdaq_uqdf_output_utp_v1_5.best_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.dissect = function(buffer, offset, packet, parent)
  if show.long_form_national_bbo_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.long_form_national_bbo_appendage, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.fields(buffer, offset, packet, parent)
  end
end

-- Short Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage = {}

-- Size: Short Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.size =
  nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.size + 
  nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.size + 
  nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.size + 
  nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short.size + 
  nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.size + 
  nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.size + 
  nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short.size

-- Display: Short Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nbbo Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, nbbo_quote_condition = nasdaq_uqdf_output_utp_v1_5.nbbo_quote_condition.dissect(buffer, index, packet, parent)

  -- National Best Bid Market Center: 1 Byte Ascii String
  index, national_best_bid_market_center = nasdaq_uqdf_output_utp_v1_5.national_best_bid_market_center.dissect(buffer, index, packet, parent)

  -- National Best Bid Price Short: 2 Byte Unsigned Fixed Width Integer
  index, national_best_bid_price_short = nasdaq_uqdf_output_utp_v1_5.national_best_bid_price_short.dissect(buffer, index, packet, parent)

  -- National Best Bid Size Short: 2 Byte Unsigned Fixed Width Integer
  index, national_best_bid_size_short = nasdaq_uqdf_output_utp_v1_5.national_best_bid_size_short.dissect(buffer, index, packet, parent)

  -- National Best Ask Market Center: 1 Byte Ascii String
  index, national_best_ask_market_center = nasdaq_uqdf_output_utp_v1_5.national_best_ask_market_center.dissect(buffer, index, packet, parent)

  -- National Best Ask Price Short: 2 Byte Unsigned Fixed Width Integer
  index, national_best_ask_price_short = nasdaq_uqdf_output_utp_v1_5.national_best_ask_price_short.dissect(buffer, index, packet, parent)

  -- National Best Ask Size Short: 2 Byte Unsigned Fixed Width Integer
  index, national_best_ask_size_short = nasdaq_uqdf_output_utp_v1_5.national_best_ask_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.dissect = function(buffer, offset, packet, parent)
  if show.short_form_national_bbo_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.short_form_national_bbo_appendage, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.fields(buffer, offset, packet, parent)
  end
end

-- Quote Long Form Message
nasdaq_uqdf_output_utp_v1_5.quote_long_form_message = {}

-- Read runtime size of: Quote Long Form Message
nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Quote Long Form Message
nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Long Form Message
nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.fields = function(buffer, offset, packet, parent, size_of_quote_long_form_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Finra Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, finra_timestamp = nasdaq_uqdf_output_utp_v1_5.finra_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, bid_price = nasdaq_uqdf_output_utp_v1_5.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = nasdaq_uqdf_output_utp_v1_5.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, ask_price = nasdaq_uqdf_output_utp_v1_5.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = nasdaq_uqdf_output_utp_v1_5.ask_size.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, quote_condition = nasdaq_uqdf_output_utp_v1_5.quote_condition.dissect(buffer, index, packet, parent)

  -- Sip Generated Update: 1 Byte Ascii String Enum with 2 values
  index, sip_generated_update = nasdaq_uqdf_output_utp_v1_5.sip_generated_update.dissect(buffer, index, packet, parent)

  -- Luld Bbo Indicator: 1 Byte Ascii String Enum with 4 values
  index, luld_bbo_indicator = nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: 1 Byte Ascii String Enum with 4 values
  index, retail_interest_indicator = nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Nbbo Appendage Indicator: 1 Byte Ascii String Enum with 5 values
  index, nbbo_appendage_indicator = nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Luld National Bbo Indicator: 1 Byte Ascii String Enum with 10 values
  index, luld_national_bbo_indicator = nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Finra Adf Mpid Appendage Indicator: 1 Byte Ascii String Enum with 4 values
  index, finra_adf_mpid_appendage_indicator = nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Short Form National Bbo Appendage
  local short_form_national_bbo_appendage = nil

  local short_form_national_bbo_appendage_exists = nbbo_appendage_indicator == "2"

  if short_form_national_bbo_appendage_exists then
    index, short_form_national_bbo_appendage = nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Long Form National Bbo Appendage
  local long_form_national_bbo_appendage = nil

  local long_form_national_bbo_appendage_exists = nbbo_appendage_indicator == "3"

  if long_form_national_bbo_appendage_exists then
    index, long_form_national_bbo_appendage = nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Finra Adf Mpid Appendage
  local finra_adf_mpid_appendage = nil

  local finra_adf_mpid_appendage_exists = finra_adf_mpid_appendage_indicator == "2"

  if finra_adf_mpid_appendage_exists then
    index, finra_adf_mpid_appendage = nasdaq_uqdf_output_utp_v1_5.finra_adf_mpid_appendage.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Long Form Message
nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.dissect = function(buffer, offset, packet, parent, size_of_quote_long_form_message)
  local size_of_quote_long_form_message = nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.size(buffer, offset)
  local index = offset + size_of_quote_long_form_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_long_form_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.fields(buffer, offset, packet, parent, size_of_quote_long_form_message)
    parent:set_len(size_of_quote_long_form_message)
    local display = nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.fields(buffer, offset, packet, parent, size_of_quote_long_form_message)

    return index
  end
end

-- Quote Short Form Message
nasdaq_uqdf_output_utp_v1_5.quote_short_form_message = {}

-- Read runtime size of: Quote Short Form Message
nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Quote Short Form Message
nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Short Form Message
nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.fields = function(buffer, offset, packet, parent, size_of_quote_short_form_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol Short: 5 Byte Ascii String
  index, symbol_short = nasdaq_uqdf_output_utp_v1_5.symbol_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: 2 Byte Unsigned Fixed Width Integer
  index, bid_price_short = nasdaq_uqdf_output_utp_v1_5.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: 2 Byte Unsigned Fixed Width Integer
  index, bid_size_short = nasdaq_uqdf_output_utp_v1_5.bid_size_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: 2 Byte Unsigned Fixed Width Integer
  index, ask_price_short = nasdaq_uqdf_output_utp_v1_5.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Size Short: 2 Byte Unsigned Fixed Width Integer
  index, ask_size_short = nasdaq_uqdf_output_utp_v1_5.ask_size_short.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, quote_condition = nasdaq_uqdf_output_utp_v1_5.quote_condition.dissect(buffer, index, packet, parent)

  -- Sip Generated Update: 1 Byte Ascii String Enum with 2 values
  index, sip_generated_update = nasdaq_uqdf_output_utp_v1_5.sip_generated_update.dissect(buffer, index, packet, parent)

  -- Luld Bbo Indicator: 1 Byte Ascii String Enum with 4 values
  index, luld_bbo_indicator = nasdaq_uqdf_output_utp_v1_5.luld_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: 1 Byte Ascii String Enum with 4 values
  index, retail_interest_indicator = nasdaq_uqdf_output_utp_v1_5.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Nbbo Appendage Indicator: 1 Byte Ascii String Enum with 5 values
  index, nbbo_appendage_indicator = nasdaq_uqdf_output_utp_v1_5.nbbo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Luld National Bbo Indicator: 1 Byte Ascii String Enum with 10 values
  index, luld_national_bbo_indicator = nasdaq_uqdf_output_utp_v1_5.luld_national_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Short Form National Bbo Appendage
  local short_form_national_bbo_appendage = nil

  local short_form_national_bbo_appendage_exists = nbbo_appendage_indicator == "2"

  if short_form_national_bbo_appendage_exists then
    index, short_form_national_bbo_appendage = nasdaq_uqdf_output_utp_v1_5.short_form_national_bbo_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Long Form National Bbo Appendage
  local long_form_national_bbo_appendage = nil

  local long_form_national_bbo_appendage_exists = nbbo_appendage_indicator == "3"

  if long_form_national_bbo_appendage_exists then
    index, long_form_national_bbo_appendage = nasdaq_uqdf_output_utp_v1_5.long_form_national_bbo_appendage.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Short Form Message
nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.dissect = function(buffer, offset, packet, parent, size_of_quote_short_form_message)
  local size_of_quote_short_form_message = nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.size(buffer, offset)
  local index = offset + size_of_quote_short_form_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.quote_short_form_message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.fields(buffer, offset, packet, parent, size_of_quote_short_form_message)
    parent:set_len(size_of_quote_short_form_message)
    local display = nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.fields(buffer, offset, packet, parent, size_of_quote_short_form_message)

    return index
  end
end

-- Quote Payload
nasdaq_uqdf_output_utp_v1_5.quote_payload = {}

-- Dissect: Quote Payload
nasdaq_uqdf_output_utp_v1_5.quote_payload.dissect = function(buffer, offset, packet, parent, quote_message_type)
  -- Dissect Quote Short Form Message
  if quote_message_type == "E" then
    return nasdaq_uqdf_output_utp_v1_5.quote_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Long Form Message
  if quote_message_type == "F" then
    return nasdaq_uqdf_output_utp_v1_5.quote_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Finra Adf Market Participant Quotation Message
  if quote_message_type == "M" then
    return nasdaq_uqdf_output_utp_v1_5.finra_adf_market_participant_quotation_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Quote
nasdaq_uqdf_output_utp_v1_5.quote = {}

-- Read runtime size of: Quote
nasdaq_uqdf_output_utp_v1_5.quote.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 2
end

-- Display: Quote
nasdaq_uqdf_output_utp_v1_5.quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote
nasdaq_uqdf_output_utp_v1_5.quote.fields = function(buffer, offset, packet, parent, size_of_quote)
  local index = offset

  -- Quote Message Type: 1 Byte Ascii String Enum with 3 values
  index, quote_message_type = nasdaq_uqdf_output_utp_v1_5.quote_message_type.dissect(buffer, index, packet, parent)

  -- Quote Payload: Runtime Type with 3 branches
  index = nasdaq_uqdf_output_utp_v1_5.quote_payload.dissect(buffer, index, packet, parent, quote_message_type)

  return index
end

-- Dissect: Quote
nasdaq_uqdf_output_utp_v1_5.quote.dissect = function(buffer, offset, packet, parent, size_of_quote)
  local size_of_quote = nasdaq_uqdf_output_utp_v1_5.quote.size(buffer, offset)
  local index = offset + size_of_quote

  -- Optionally add group/struct element to protocol tree
  if show.quote then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.quote, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.quote.fields(buffer, offset, packet, parent, size_of_quote)
    parent:set_len(size_of_quote)
    local display = nasdaq_uqdf_output_utp_v1_5.quote.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.quote.fields(buffer, offset, packet, parent, size_of_quote)

    return index
  end
end

-- Payload
nasdaq_uqdf_output_utp_v1_5.payload = {}

-- Dissect: Payload
nasdaq_uqdf_output_utp_v1_5.payload.dissect = function(buffer, offset, packet, parent, message_category)
  -- Dissect Quote
  if message_category == "Q" then
    return nasdaq_uqdf_output_utp_v1_5.quote.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Administrative
  if message_category == "A" then
    return nasdaq_uqdf_output_utp_v1_5.administrative.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control
  if message_category == "C" then
    return nasdaq_uqdf_output_utp_v1_5.control.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_uqdf_output_utp_v1_5.message_header = {}

-- Size: Message Header
nasdaq_uqdf_output_utp_v1_5.message_header.size =
  nasdaq_uqdf_output_utp_v1_5.message_length.size + 
  nasdaq_uqdf_output_utp_v1_5.version.size + 
  nasdaq_uqdf_output_utp_v1_5.message_category.size

-- Display: Message Header
nasdaq_uqdf_output_utp_v1_5.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_uqdf_output_utp_v1_5.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_uqdf_output_utp_v1_5.message_length.dissect(buffer, index, packet, parent)

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = nasdaq_uqdf_output_utp_v1_5.version.dissect(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String
  index, message_category = nasdaq_uqdf_output_utp_v1_5.message_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_uqdf_output_utp_v1_5.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.message_header, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_uqdf_output_utp_v1_5.message = {}

-- Display: Message
nasdaq_uqdf_output_utp_v1_5.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_uqdf_output_utp_v1_5.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = nasdaq_uqdf_output_utp_v1_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 3 branches
  index = nasdaq_uqdf_output_utp_v1_5.payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
nasdaq_uqdf_output_utp_v1_5.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.message, buffer(offset, 0))
    local current = nasdaq_uqdf_output_utp_v1_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_uqdf_output_utp_v1_5.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_uqdf_output_utp_v1_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
nasdaq_uqdf_output_utp_v1_5.packet_header = {}

-- Size: Packet Header
nasdaq_uqdf_output_utp_v1_5.packet_header.size =
  nasdaq_uqdf_output_utp_v1_5.session.size + 
  nasdaq_uqdf_output_utp_v1_5.sequence.size + 
  nasdaq_uqdf_output_utp_v1_5.count.size

-- Display: Packet Header
nasdaq_uqdf_output_utp_v1_5.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_uqdf_output_utp_v1_5.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_uqdf_output_utp_v1_5.session.dissect(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_uqdf_output_utp_v1_5.sequence.dissect(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_uqdf_output_utp_v1_5.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_uqdf_output_utp_v1_5.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_uqdf_output_utp_v1_5.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_uqdf_output_utp_v1_5.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_uqdf_output_utp_v1_5.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_uqdf_output_utp_v1_5.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_uqdf_output_utp_v1_5.packet = {}

-- Verify required size of Udp packet
nasdaq_uqdf_output_utp_v1_5.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_uqdf_output_utp_v1_5.packet_header.size
end

-- Dissect Packet
nasdaq_uqdf_output_utp_v1_5.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_uqdf_output_utp_v1_5.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_uqdf_output_utp_v1_5.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_uqdf_output_utp_v1_5.init()
end

-- Dissector for Nasdaq Uqdf Output Utp 1.5
function omi_nasdaq_uqdf_output_utp_v1_5.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_uqdf_output_utp_v1_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_uqdf_output_utp_v1_5, buffer(), omi_nasdaq_uqdf_output_utp_v1_5.description, "("..buffer:len().." Bytes)")
  return nasdaq_uqdf_output_utp_v1_5.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_uqdf_output_utp_v1_5)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq Uqdf Output Utp 1.5 (Udp)
local function omi_nasdaq_uqdf_output_utp_v1_5_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_uqdf_output_utp_v1_5.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_uqdf_output_utp_v1_5
  omi_nasdaq_uqdf_output_utp_v1_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Uqdf Output Utp 1.5
omi_nasdaq_uqdf_output_utp_v1_5:register_heuristic("udp", omi_nasdaq_uqdf_output_utp_v1_5_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.5
--   Date: Friday, May 1, 2020
--   Specification: UtpBinaryOutputSpec.pdf
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
