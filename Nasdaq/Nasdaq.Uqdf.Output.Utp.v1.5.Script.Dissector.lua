-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Uqdf Output Utp 1.5 Protocol
local nasdaq_uqdf_output_utp_v1_5 = Proto("Nasdaq.Uqdf.Output.Utp.v1.5.Lua", "Nasdaq Uqdf Output Utp 1.5")

-- Component Tables
local show = {}
local format = {}
local nasdaq_uqdf_output_utp_v1_5_display = {}
local nasdaq_uqdf_output_utp_v1_5_dissect = {}
local nasdaq_uqdf_output_utp_v1_5_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Uqdf Output Utp 1.5 Fields
nasdaq_uqdf_output_utp_v1_5.fields.action_timestamp = ProtoField.new("Action Timestamp", "nasdaq.uqdf.output.utp.v1.5.actiontimestamp", ftypes.UINT64)
nasdaq_uqdf_output_utp_v1_5.fields.administrative = ProtoField.new("Administrative", "nasdaq.uqdf.output.utp.v1.5.administrative", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "nasdaq.uqdf.output.utp.v1.5.administrativemessagetype", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.administrative_payload = ProtoField.new("Administrative Payload", "nasdaq.uqdf.output.utp.v1.5.administrativepayload", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.ask_adf_mpid = ProtoField.new("Ask Adf Mpid", "nasdaq.uqdf.output.utp.v1.5.askadfmpid", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.uqdf.output.utp.v1.5.askprice", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.ask_price_short = ProtoField.new("Ask Price Short", "nasdaq.uqdf.output.utp.v1.5.askpriceshort", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.uqdf.output.utp.v1.5.asksize", ftypes.UINT32)
nasdaq_uqdf_output_utp_v1_5.fields.ask_size_short = ProtoField.new("Ask Size Short", "nasdaq.uqdf.output.utp.v1.5.asksizeshort", ftypes.UINT16)
nasdaq_uqdf_output_utp_v1_5.fields.auction_collar_message = ProtoField.new("Auction Collar Message", "nasdaq.uqdf.output.utp.v1.5.auctioncollarmessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.uqdf.output.utp.v1.5.authenticity", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.best_ask_market_center = ProtoField.new("Best Ask Market Center", "nasdaq.uqdf.output.utp.v1.5.bestaskmarketcenter", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.best_ask_price = ProtoField.new("Best Ask Price", "nasdaq.uqdf.output.utp.v1.5.bestaskprice", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.best_ask_size = ProtoField.new("Best Ask Size", "nasdaq.uqdf.output.utp.v1.5.bestasksize", ftypes.UINT32)
nasdaq_uqdf_output_utp_v1_5.fields.best_bid_market_center = ProtoField.new("Best Bid Market Center", "nasdaq.uqdf.output.utp.v1.5.bestbidmarketcenter", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.best_bid_price = ProtoField.new("Best Bid Price", "nasdaq.uqdf.output.utp.v1.5.bestbidprice", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.best_bid_size = ProtoField.new("Best Bid Size", "nasdaq.uqdf.output.utp.v1.5.bestbidsize", ftypes.UINT32)
nasdaq_uqdf_output_utp_v1_5.fields.bid_adf_mpid = ProtoField.new("Bid Adf Mpid", "nasdaq.uqdf.output.utp.v1.5.bidadfmpid", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.uqdf.output.utp.v1.5.bidprice", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.bid_price_short = ProtoField.new("Bid Price Short", "nasdaq.uqdf.output.utp.v1.5.bidpriceshort", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.uqdf.output.utp.v1.5.bidsize", ftypes.UINT32)
nasdaq_uqdf_output_utp_v1_5.fields.bid_size_short = ProtoField.new("Bid Size Short", "nasdaq.uqdf.output.utp.v1.5.bidsizeshort", ftypes.UINT16)
nasdaq_uqdf_output_utp_v1_5.fields.collar_down_price = ProtoField.new("Collar Down Price", "nasdaq.uqdf.output.utp.v1.5.collardownprice", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.collar_extension_indicator = ProtoField.new("Collar Extension Indicator", "nasdaq.uqdf.output.utp.v1.5.collarextensionindicator", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.collar_reference_price = ProtoField.new("Collar Reference Price", "nasdaq.uqdf.output.utp.v1.5.collarreferenceprice", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.collar_up_price = ProtoField.new("Collar Up Price", "nasdaq.uqdf.output.utp.v1.5.collarupprice", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.control = ProtoField.new("Control", "nasdaq.uqdf.output.utp.v1.5.control", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.control_message_type = ProtoField.new("Control Message Type", "nasdaq.uqdf.output.utp.v1.5.controlmessagetype", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.control_payload = ProtoField.new("Control Payload", "nasdaq.uqdf.output.utp.v1.5.controlpayload", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.count = ProtoField.new("Count", "nasdaq.uqdf.output.utp.v1.5.count", ftypes.UINT16)
nasdaq_uqdf_output_utp_v1_5.fields.cross_sro_trading_action_message = ProtoField.new("Cross Sro Trading Action Message", "nasdaq.uqdf.output.utp.v1.5.crosssrotradingactionmessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.end_of_day_message = ProtoField.new("End Of Day Message", "nasdaq.uqdf.output.utp.v1.5.endofdaymessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.end_of_transmissions_message = ProtoField.new("End Of Transmissions Message", "nasdaq.uqdf.output.utp.v1.5.endoftransmissionsmessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.uqdf.output.utp.v1.5.financialstatusindicator", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_market_participant_quotation_message = ProtoField.new("Finra Adf Market Participant Quotation Message", "nasdaq.uqdf.output.utp.v1.5.finraadfmarketparticipantquotationmessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_mpid_appendage = ProtoField.new("Finra Adf Mpid Appendage", "nasdaq.uqdf.output.utp.v1.5.finraadfmpidappendage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_mpid_appendage_indicator = ProtoField.new("Finra Adf Mpid Appendage Indicator", "nasdaq.uqdf.output.utp.v1.5.finraadfmpidappendageindicator", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.finra_market_participant = ProtoField.new("Finra Market Participant", "nasdaq.uqdf.output.utp.v1.5.finramarketparticipant", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.finra_timestamp = ProtoField.new("Finra Timestamp", "nasdaq.uqdf.output.utp.v1.5.finratimestamp", ftypes.UINT64)
nasdaq_uqdf_output_utp_v1_5.fields.general_administrative_message = ProtoField.new("General Administrative Message", "nasdaq.uqdf.output.utp.v1.5.generaladministrativemessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.issue_name = ProtoField.new("Issue Name", "nasdaq.uqdf.output.utp.v1.5.issuename", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.issue_subtype = ProtoField.new("Issue Subtype", "nasdaq.uqdf.output.utp.v1.5.issuesubtype", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.issue_symbol_directory_message = ProtoField.new("Issue Symbol Directory Message", "nasdaq.uqdf.output.utp.v1.5.issuesymboldirectorymessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.issue_type = ProtoField.new("Issue Type", "nasdaq.uqdf.output.utp.v1.5.issuetype", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.limit_down_price = ProtoField.new("Limit Down Price", "nasdaq.uqdf.output.utp.v1.5.limitdownprice", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.limit_up_limit_down_price_band_message = ProtoField.new("Limit Up Limit Down Price Band Message", "nasdaq.uqdf.output.utp.v1.5.limituplimitdownpricebandmessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.limit_up_price = ProtoField.new("Limit Up Price", "nasdaq.uqdf.output.utp.v1.5.limitupprice", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.long_form_national_bbo_appendage = ProtoField.new("Long Form National Bbo Appendage", "nasdaq.uqdf.output.utp.v1.5.longformnationalbboappendage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.luld_bbo_indicator = ProtoField.new("Luld Bbo Indicator", "nasdaq.uqdf.output.utp.v1.5.luldbboindicator", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.luld_national_bbo_indicator = ProtoField.new("Luld National Bbo Indicator", "nasdaq.uqdf.output.utp.v1.5.luldnationalbboindicator", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.luld_price_band_indicator = ProtoField.new("Luld Price Band Indicator", "nasdaq.uqdf.output.utp.v1.5.luldpricebandindicator", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.luld_timestamp = ProtoField.new("Luld Timestamp", "nasdaq.uqdf.output.utp.v1.5.luldtimestamp", ftypes.UINT64)
nasdaq_uqdf_output_utp_v1_5.fields.market_center_ask_price = ProtoField.new("Market Center Ask Price", "nasdaq.uqdf.output.utp.v1.5.marketcenteraskprice", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.market_center_ask_size = ProtoField.new("Market Center Ask Size", "nasdaq.uqdf.output.utp.v1.5.marketcenterasksize", ftypes.UINT64)
nasdaq_uqdf_output_utp_v1_5.fields.market_center_bid_price = ProtoField.new("Market Center Bid Price", "nasdaq.uqdf.output.utp.v1.5.marketcenterbidprice", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.market_center_bid_size = ProtoField.new("Market Center Bid Size", "nasdaq.uqdf.output.utp.v1.5.marketcenterbidsize", ftypes.UINT64)
nasdaq_uqdf_output_utp_v1_5.fields.market_center_close_recap = ProtoField.new("Market Center Close Recap", "nasdaq.uqdf.output.utp.v1.5.marketcentercloserecap", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.market_center_identifier = ProtoField.new("Market Center Identifier", "nasdaq.uqdf.output.utp.v1.5.marketcenteridentifier", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.market_center_originator_id = ProtoField.new("Market Center Originator Id", "nasdaq.uqdf.output.utp.v1.5.marketcenteroriginatorid", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.market_center_trading_action_message = ProtoField.new("Market Center Trading Action Message", "nasdaq.uqdf.output.utp.v1.5.marketcentertradingactionmessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.market_session_close_message = ProtoField.new("Market Session Close Message", "nasdaq.uqdf.output.utp.v1.5.marketsessionclosemessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.market_session_open_message = ProtoField.new("Market Session Open Message", "nasdaq.uqdf.output.utp.v1.5.marketsessionopenmessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.market_tier = ProtoField.new("Market Tier", "nasdaq.uqdf.output.utp.v1.5.markettier", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.market_wide_circuit_breaker_decline_level_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Message", "nasdaq.uqdf.output.utp.v1.5.marketwidecircuitbreakerdeclinelevelmessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.message = ProtoField.new("Message", "nasdaq.uqdf.output.utp.v1.5.message", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.message_category = ProtoField.new("Message Category", "nasdaq.uqdf.output.utp.v1.5.messagecategory", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.message_header = ProtoField.new("Message Header", "nasdaq.uqdf.output.utp.v1.5.messageheader", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.message_info = ProtoField.new("Message Info", "nasdaq.uqdf.output.utp.v1.5.messageinfo", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.message_length = ProtoField.new("Message Length", "nasdaq.uqdf.output.utp.v1.5.messagelength", ftypes.UINT16)
nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_1 = ProtoField.new("Mwcb Level 1", "nasdaq.uqdf.output.utp.v1.5.mwcblevel1", ftypes.UINT64)
nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "nasdaq.uqdf.output.utp.v1.5.mwcblevel2", ftypes.UINT64)
nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "nasdaq.uqdf.output.utp.v1.5.mwcblevel3", ftypes.UINT64)
nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_market_center = ProtoField.new("National Best Ask Market Center", "nasdaq.uqdf.output.utp.v1.5.nationalbestaskmarketcenter", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_price = ProtoField.new("National Best Ask Price", "nasdaq.uqdf.output.utp.v1.5.nationalbestaskprice", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_price_short = ProtoField.new("National Best Ask Price Short", "nasdaq.uqdf.output.utp.v1.5.nationalbestaskpriceshort", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_size = ProtoField.new("National Best Ask Size", "nasdaq.uqdf.output.utp.v1.5.nationalbestasksize", ftypes.UINT64)
nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_size_short = ProtoField.new("National Best Ask Size Short", "nasdaq.uqdf.output.utp.v1.5.nationalbestasksizeshort", ftypes.UINT16)
nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_market_center = ProtoField.new("National Best Bid Market Center", "nasdaq.uqdf.output.utp.v1.5.nationalbestbidmarketcenter", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_price = ProtoField.new("National Best Bid Price", "nasdaq.uqdf.output.utp.v1.5.nationalbestbidprice", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_price_short = ProtoField.new("National Best Bid Price Short", "nasdaq.uqdf.output.utp.v1.5.nationalbestbidpriceshort", ftypes.DOUBLE)
nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_size = ProtoField.new("National Best Bid Size", "nasdaq.uqdf.output.utp.v1.5.nationalbestbidsize", ftypes.UINT64)
nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_size_short = ProtoField.new("National Best Bid Size Short", "nasdaq.uqdf.output.utp.v1.5.nationalbestbidsizeshort", ftypes.UINT16)
nasdaq_uqdf_output_utp_v1_5.fields.nbbo_appendage_indicator = ProtoField.new("Nbbo Appendage Indicator", "nasdaq.uqdf.output.utp.v1.5.nbboappendageindicator", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.nbbo_quote_condition = ProtoField.new("Nbbo Quote Condition", "nasdaq.uqdf.output.utp.v1.5.nbboquotecondition", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.number_of_market_center_attachments = ProtoField.new("Number Of Market Center Attachments", "nasdaq.uqdf.output.utp.v1.5.numberofmarketcenterattachments", ftypes.UINT16)
nasdaq_uqdf_output_utp_v1_5.fields.old_symbol = ProtoField.new("Old Symbol", "nasdaq.uqdf.output.utp.v1.5.oldsymbol", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.packet = ProtoField.new("Packet", "nasdaq.uqdf.output.utp.v1.5.packet", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.uqdf.output.utp.v1.5.packetheader", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.participant_timestamp = ProtoField.new("Participant Timestamp", "nasdaq.uqdf.output.utp.v1.5.participanttimestamp", ftypes.UINT64)
nasdaq_uqdf_output_utp_v1_5.fields.participant_token = ProtoField.new("Participant Token", "nasdaq.uqdf.output.utp.v1.5.participanttoken", ftypes.UINT64)
nasdaq_uqdf_output_utp_v1_5.fields.payload = ProtoField.new("Payload", "nasdaq.uqdf.output.utp.v1.5.payload", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.quote = ProtoField.new("Quote", "nasdaq.uqdf.output.utp.v1.5.quote", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.uqdf.output.utp.v1.5.quotecondition", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.quote_long_form_message = ProtoField.new("Quote Long Form Message", "nasdaq.uqdf.output.utp.v1.5.quotelongformmessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.quote_message_type = ProtoField.new("Quote Message Type", "nasdaq.uqdf.output.utp.v1.5.quotemessagetype", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.quote_payload = ProtoField.new("Quote Payload", "nasdaq.uqdf.output.utp.v1.5.quotepayload", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.quote_short_form_message = ProtoField.new("Quote Short Form Message", "nasdaq.uqdf.output.utp.v1.5.quoteshortformmessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.quote_wipe_out_message = ProtoField.new("Quote Wipe Out Message", "nasdaq.uqdf.output.utp.v1.5.quotewipeoutmessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.uqdf.output.utp.v1.5.regshoaction", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.regulation_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Regulation Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.uqdf.output.utp.v1.5.regulationshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.retail_interest_indicator = ProtoField.new("Retail Interest Indicator", "nasdaq.uqdf.output.utp.v1.5.retailinterestindicator", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.uqdf.output.utp.v1.5.roundlotsize", ftypes.UINT16)
nasdaq_uqdf_output_utp_v1_5.fields.sequence = ProtoField.new("Sequence", "nasdaq.uqdf.output.utp.v1.5.sequence", ftypes.UINT64)
nasdaq_uqdf_output_utp_v1_5.fields.session = ProtoField.new("Session", "nasdaq.uqdf.output.utp.v1.5.session", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.session_close_recap_message = ProtoField.new("Session Close Recap Message", "nasdaq.uqdf.output.utp.v1.5.sessioncloserecapmessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.short_form_national_bbo_appendage = ProtoField.new("Short Form National Bbo Appendage", "nasdaq.uqdf.output.utp.v1.5.shortformnationalbboappendage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.uqdf.output.utp.v1.5.shortsalethresholdindicator", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.sip_generated_update = ProtoField.new("Sip Generated Update", "nasdaq.uqdf.output.utp.v1.5.sipgeneratedupdate", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.sip_timestamp = ProtoField.new("Sip Timestamp", "nasdaq.uqdf.output.utp.v1.5.siptimestamp", ftypes.UINT64)
nasdaq_uqdf_output_utp_v1_5.fields.special_condition = ProtoField.new("Special Condition", "nasdaq.uqdf.output.utp.v1.5.specialcondition", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "nasdaq.uqdf.output.utp.v1.5.startofdaymessage", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.sub_market_center_id = ProtoField.new("Sub Market Center Id", "nasdaq.uqdf.output.utp.v1.5.submarketcenterid", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.symbol = ProtoField.new("Symbol", "nasdaq.uqdf.output.utp.v1.5.symbol", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.symbol_short = ProtoField.new("Symbol Short", "nasdaq.uqdf.output.utp.v1.5.symbolshort", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.text = ProtoField.new("Text", "nasdaq.uqdf.output.utp.v1.5.text", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.text_length = ProtoField.new("Text Length", "nasdaq.uqdf.output.utp.v1.5.textlength", ftypes.UINT16)
nasdaq_uqdf_output_utp_v1_5.fields.trading_action_code = ProtoField.new("Trading Action Code", "nasdaq.uqdf.output.utp.v1.5.tradingactioncode", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.trading_action_reason = ProtoField.new("Trading Action Reason", "nasdaq.uqdf.output.utp.v1.5.tradingactionreason", ftypes.STRING)
nasdaq_uqdf_output_utp_v1_5.fields.trading_action_sequence_number = ProtoField.new("Trading Action Sequence Number", "nasdaq.uqdf.output.utp.v1.5.tradingactionsequencenumber", ftypes.UINT32)
nasdaq_uqdf_output_utp_v1_5.fields.version = ProtoField.new("Version", "nasdaq.uqdf.output.utp.v1.5.version", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Uqdf Output Utp 1.5 Element Dissection Options
show.administrative = true
show.auction_collar_message = true
show.control = true
show.cross_sro_trading_action_message = true
show.end_of_day_message = true
show.end_of_transmissions_message = true
show.finra_adf_market_participant_quotation_message = true
show.finra_adf_mpid_appendage = true
show.general_administrative_message = true
show.issue_symbol_directory_message = true
show.limit_up_limit_down_price_band_message = true
show.long_form_national_bbo_appendage = true
show.market_center_close_recap = true
show.market_center_trading_action_message = true
show.market_session_close_message = true
show.market_session_open_message = true
show.market_wide_circuit_breaker_decline_level_message = true
show.message = true
show.message_header = true
show.message_info = true
show.packet = true
show.packet_header = true
show.quote = true
show.quote_long_form_message = true
show.quote_short_form_message = true
show.quote_wipe_out_message = true
show.regulation_sho_short_sale_price_test_restricted_indicator_message = true
show.session_close_recap_message = true
show.short_form_national_bbo_appendage = true
show.start_of_day_message = true
show.administrative_payload = false
show.control_payload = false
show.payload = false
show.quote_payload = false

-- Register Nasdaq Uqdf Output Utp 1.5 Show Options
nasdaq_uqdf_output_utp_v1_5.prefs.show_administrative = Pref.bool("Show Administrative", show.administrative, "Parse and add Administrative to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_auction_collar_message = Pref.bool("Show Auction Collar Message", show.auction_collar_message, "Parse and add Auction Collar Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_control = Pref.bool("Show Control", show.control, "Parse and add Control to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_cross_sro_trading_action_message = Pref.bool("Show Cross Sro Trading Action Message", show.cross_sro_trading_action_message, "Parse and add Cross Sro Trading Action Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_end_of_day_message = Pref.bool("Show End Of Day Message", show.end_of_day_message, "Parse and add End Of Day Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_end_of_transmissions_message = Pref.bool("Show End Of Transmissions Message", show.end_of_transmissions_message, "Parse and add End Of Transmissions Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_finra_adf_market_participant_quotation_message = Pref.bool("Show Finra Adf Market Participant Quotation Message", show.finra_adf_market_participant_quotation_message, "Parse and add Finra Adf Market Participant Quotation Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_finra_adf_mpid_appendage = Pref.bool("Show Finra Adf Mpid Appendage", show.finra_adf_mpid_appendage, "Parse and add Finra Adf Mpid Appendage to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_general_administrative_message = Pref.bool("Show General Administrative Message", show.general_administrative_message, "Parse and add General Administrative Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_issue_symbol_directory_message = Pref.bool("Show Issue Symbol Directory Message", show.issue_symbol_directory_message, "Parse and add Issue Symbol Directory Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_limit_up_limit_down_price_band_message = Pref.bool("Show Limit Up Limit Down Price Band Message", show.limit_up_limit_down_price_band_message, "Parse and add Limit Up Limit Down Price Band Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_long_form_national_bbo_appendage = Pref.bool("Show Long Form National Bbo Appendage", show.long_form_national_bbo_appendage, "Parse and add Long Form National Bbo Appendage to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_market_center_close_recap = Pref.bool("Show Market Center Close Recap", show.market_center_close_recap, "Parse and add Market Center Close Recap to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_market_center_trading_action_message = Pref.bool("Show Market Center Trading Action Message", show.market_center_trading_action_message, "Parse and add Market Center Trading Action Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_market_session_close_message = Pref.bool("Show Market Session Close Message", show.market_session_close_message, "Parse and add Market Session Close Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_market_session_open_message = Pref.bool("Show Market Session Open Message", show.market_session_open_message, "Parse and add Market Session Open Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_market_wide_circuit_breaker_decline_level_message = Pref.bool("Show Market Wide Circuit Breaker Decline Level Message", show.market_wide_circuit_breaker_decline_level_message, "Parse and add Market Wide Circuit Breaker Decline Level Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_message_info = Pref.bool("Show Message Info", show.message_info, "Parse and add Message Info to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_quote = Pref.bool("Show Quote", show.quote, "Parse and add Quote to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_quote_long_form_message = Pref.bool("Show Quote Long Form Message", show.quote_long_form_message, "Parse and add Quote Long Form Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_quote_short_form_message = Pref.bool("Show Quote Short Form Message", show.quote_short_form_message, "Parse and add Quote Short Form Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_quote_wipe_out_message = Pref.bool("Show Quote Wipe Out Message", show.quote_wipe_out_message, "Parse and add Quote Wipe Out Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_regulation_sho_short_sale_price_test_restricted_indicator_message = Pref.bool("Show Regulation Sho Short Sale Price Test Restricted Indicator Message", show.regulation_sho_short_sale_price_test_restricted_indicator_message, "Parse and add Regulation Sho Short Sale Price Test Restricted Indicator Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_session_close_recap_message = Pref.bool("Show Session Close Recap Message", show.session_close_recap_message, "Parse and add Session Close Recap Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_short_form_national_bbo_appendage = Pref.bool("Show Short Form National Bbo Appendage", show.short_form_national_bbo_appendage, "Parse and add Short Form National Bbo Appendage to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_administrative_payload = Pref.bool("Show Administrative Payload", show.administrative_payload, "Parse and add Administrative Payload to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_control_payload = Pref.bool("Show Control Payload", show.control_payload, "Parse and add Control Payload to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
nasdaq_uqdf_output_utp_v1_5.prefs.show_quote_payload = Pref.bool("Show Quote Payload", show.quote_payload, "Parse and add Quote Payload to protocol tree")

-- Handle changed preferences
function nasdaq_uqdf_output_utp_v1_5.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.administrative ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_administrative then
    show.administrative = nasdaq_uqdf_output_utp_v1_5.prefs.show_administrative
    changed = true
  end
  if show.auction_collar_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_auction_collar_message then
    show.auction_collar_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_auction_collar_message
    changed = true
  end
  if show.control ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_control then
    show.control = nasdaq_uqdf_output_utp_v1_5.prefs.show_control
    changed = true
  end
  if show.cross_sro_trading_action_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_cross_sro_trading_action_message then
    show.cross_sro_trading_action_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_cross_sro_trading_action_message
    changed = true
  end
  if show.end_of_day_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_end_of_day_message then
    show.end_of_day_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_end_of_day_message
    changed = true
  end
  if show.end_of_transmissions_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_end_of_transmissions_message then
    show.end_of_transmissions_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_end_of_transmissions_message
    changed = true
  end
  if show.finra_adf_market_participant_quotation_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_finra_adf_market_participant_quotation_message then
    show.finra_adf_market_participant_quotation_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_finra_adf_market_participant_quotation_message
    changed = true
  end
  if show.finra_adf_mpid_appendage ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_finra_adf_mpid_appendage then
    show.finra_adf_mpid_appendage = nasdaq_uqdf_output_utp_v1_5.prefs.show_finra_adf_mpid_appendage
    changed = true
  end
  if show.general_administrative_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_general_administrative_message then
    show.general_administrative_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_general_administrative_message
    changed = true
  end
  if show.issue_symbol_directory_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_issue_symbol_directory_message then
    show.issue_symbol_directory_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_issue_symbol_directory_message
    changed = true
  end
  if show.limit_up_limit_down_price_band_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_limit_up_limit_down_price_band_message then
    show.limit_up_limit_down_price_band_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_limit_up_limit_down_price_band_message
    changed = true
  end
  if show.long_form_national_bbo_appendage ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_long_form_national_bbo_appendage then
    show.long_form_national_bbo_appendage = nasdaq_uqdf_output_utp_v1_5.prefs.show_long_form_national_bbo_appendage
    changed = true
  end
  if show.market_center_close_recap ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_market_center_close_recap then
    show.market_center_close_recap = nasdaq_uqdf_output_utp_v1_5.prefs.show_market_center_close_recap
    changed = true
  end
  if show.market_center_trading_action_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_market_center_trading_action_message then
    show.market_center_trading_action_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_market_center_trading_action_message
    changed = true
  end
  if show.market_session_close_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_market_session_close_message then
    show.market_session_close_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_market_session_close_message
    changed = true
  end
  if show.market_session_open_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_market_session_open_message then
    show.market_session_open_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_market_session_open_message
    changed = true
  end
  if show.market_wide_circuit_breaker_decline_level_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_market_wide_circuit_breaker_decline_level_message then
    show.market_wide_circuit_breaker_decline_level_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_market_wide_circuit_breaker_decline_level_message
    changed = true
  end
  if show.message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_message then
    show.message = nasdaq_uqdf_output_utp_v1_5.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_message_header then
    show.message_header = nasdaq_uqdf_output_utp_v1_5.prefs.show_message_header
    changed = true
  end
  if show.message_info ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_message_info then
    show.message_info = nasdaq_uqdf_output_utp_v1_5.prefs.show_message_info
    changed = true
  end
  if show.packet ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_packet then
    show.packet = nasdaq_uqdf_output_utp_v1_5.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_packet_header then
    show.packet_header = nasdaq_uqdf_output_utp_v1_5.prefs.show_packet_header
    changed = true
  end
  if show.quote ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_quote then
    show.quote = nasdaq_uqdf_output_utp_v1_5.prefs.show_quote
    changed = true
  end
  if show.quote_long_form_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_quote_long_form_message then
    show.quote_long_form_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_quote_long_form_message
    changed = true
  end
  if show.quote_short_form_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_quote_short_form_message then
    show.quote_short_form_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_quote_short_form_message
    changed = true
  end
  if show.quote_wipe_out_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_quote_wipe_out_message then
    show.quote_wipe_out_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_quote_wipe_out_message
    changed = true
  end
  if show.regulation_sho_short_sale_price_test_restricted_indicator_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_regulation_sho_short_sale_price_test_restricted_indicator_message then
    show.regulation_sho_short_sale_price_test_restricted_indicator_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_regulation_sho_short_sale_price_test_restricted_indicator_message
    changed = true
  end
  if show.session_close_recap_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_session_close_recap_message then
    show.session_close_recap_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_session_close_recap_message
    changed = true
  end
  if show.short_form_national_bbo_appendage ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_short_form_national_bbo_appendage then
    show.short_form_national_bbo_appendage = nasdaq_uqdf_output_utp_v1_5.prefs.show_short_form_national_bbo_appendage
    changed = true
  end
  if show.start_of_day_message ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_start_of_day_message then
    show.start_of_day_message = nasdaq_uqdf_output_utp_v1_5.prefs.show_start_of_day_message
    changed = true
  end
  if show.administrative_payload ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_administrative_payload then
    show.administrative_payload = nasdaq_uqdf_output_utp_v1_5.prefs.show_administrative_payload
    changed = true
  end
  if show.control_payload ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_control_payload then
    show.control_payload = nasdaq_uqdf_output_utp_v1_5.prefs.show_control_payload
    changed = true
  end
  if show.payload ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_payload then
    show.payload = nasdaq_uqdf_output_utp_v1_5.prefs.show_payload
    changed = true
  end
  if show.quote_payload ~= nasdaq_uqdf_output_utp_v1_5.prefs.show_quote_payload then
    show.quote_payload = nasdaq_uqdf_output_utp_v1_5.prefs.show_quote_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Uqdf Output Utp 1.5
-----------------------------------------------------------------------

-- Size: Participant Token
nasdaq_uqdf_output_utp_v1_5_size_of.participant_token = 8

-- Display: Participant Token
nasdaq_uqdf_output_utp_v1_5_display.participant_token = function(value)
  return "Participant Token: "..value
end

-- Dissect: Participant Token
nasdaq_uqdf_output_utp_v1_5_dissect.participant_token = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.participant_token
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5_display.participant_token(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.participant_token, range, value, display)

  return offset + length, value
end

-- Size: Participant Timestamp
nasdaq_uqdf_output_utp_v1_5_size_of.participant_timestamp = 8

-- Display: Participant Timestamp
nasdaq_uqdf_output_utp_v1_5_display.participant_timestamp = function(value)
  return "Participant Timestamp: "..value
end

-- Dissect: Participant Timestamp
nasdaq_uqdf_output_utp_v1_5_dissect.participant_timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.participant_timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5_display.participant_timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.participant_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Sip Timestamp
nasdaq_uqdf_output_utp_v1_5_size_of.sip_timestamp = 8

-- Display: Sip Timestamp
nasdaq_uqdf_output_utp_v1_5_display.sip_timestamp = function(value)
  return "Sip Timestamp: "..value
end

-- Dissect: Sip Timestamp
nasdaq_uqdf_output_utp_v1_5_dissect.sip_timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.sip_timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5_display.sip_timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.sip_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Sub Market Center Id
nasdaq_uqdf_output_utp_v1_5_size_of.sub_market_center_id = 1

-- Display: Sub Market Center Id
nasdaq_uqdf_output_utp_v1_5_display.sub_market_center_id = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.sub_market_center_id = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.sub_market_center_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.sub_market_center_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.sub_market_center_id, range, value, display)

  return offset + length, value
end

-- Size: Market Center Originator Id
nasdaq_uqdf_output_utp_v1_5_size_of.market_center_originator_id = 1

-- Display: Market Center Originator Id
nasdaq_uqdf_output_utp_v1_5_display.market_center_originator_id = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.market_center_originator_id = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.market_center_originator_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.market_center_originator_id(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.market_center_originator_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Info
nasdaq_uqdf_output_utp_v1_5_size_of.message_info = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.market_center_originator_id

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.sub_market_center_id

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.sip_timestamp

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.participant_timestamp

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.participant_token

  return index
end

-- Display: Message Info
nasdaq_uqdf_output_utp_v1_5_display.message_info = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Info
nasdaq_uqdf_output_utp_v1_5_dissect.message_info_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator Id: 1 Byte Ascii String Enum with 20 values
  index, market_center_originator_id = nasdaq_uqdf_output_utp_v1_5_dissect.market_center_originator_id(buffer, index, packet, parent)

  -- Sub Market Center Id: 1 Byte Ascii String Enum with 4 values
  index, sub_market_center_id = nasdaq_uqdf_output_utp_v1_5_dissect.sub_market_center_id(buffer, index, packet, parent)

  -- Sip Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, sip_timestamp = nasdaq_uqdf_output_utp_v1_5_dissect.sip_timestamp(buffer, index, packet, parent)

  -- Participant Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, participant_timestamp = nasdaq_uqdf_output_utp_v1_5_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Participant Token: 8 Byte Unsigned Fixed Width Integer
  index, participant_token = nasdaq_uqdf_output_utp_v1_5_dissect.participant_token(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Info
nasdaq_uqdf_output_utp_v1_5_dissect.message_info = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_info then
    local length = nasdaq_uqdf_output_utp_v1_5_size_of.message_info(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_uqdf_output_utp_v1_5_display.message_info(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.message_info, range, display)
  end

  return nasdaq_uqdf_output_utp_v1_5_dissect.message_info_fields(buffer, offset, packet, parent)
end

-- Read runtime size of: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v1_5_size_of.quote_wipe_out_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v1_5_display.quote_wipe_out_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v1_5_dissect.quote_wipe_out_message_fields = function(buffer, offset, packet, parent, size_of_quote_wipe_out_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Wipe Out Message
nasdaq_uqdf_output_utp_v1_5_dissect.quote_wipe_out_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_quote_wipe_out_message = nasdaq_uqdf_output_utp_v1_5_size_of.quote_wipe_out_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.quote_wipe_out_message then
    local range = buffer(offset, size_of_quote_wipe_out_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.quote_wipe_out_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.quote_wipe_out_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.quote_wipe_out_message_fields(buffer, offset, packet, parent, size_of_quote_wipe_out_message)

  return offset + size_of_quote_wipe_out_message
end

-- Read runtime size of: End Of Transmissions Message
nasdaq_uqdf_output_utp_v1_5_size_of.end_of_transmissions_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: End Of Transmissions Message
nasdaq_uqdf_output_utp_v1_5_display.end_of_transmissions_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Transmissions Message
nasdaq_uqdf_output_utp_v1_5_dissect.end_of_transmissions_message_fields = function(buffer, offset, packet, parent, size_of_end_of_transmissions_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmissions Message
nasdaq_uqdf_output_utp_v1_5_dissect.end_of_transmissions_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_end_of_transmissions_message = nasdaq_uqdf_output_utp_v1_5_size_of.end_of_transmissions_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.end_of_transmissions_message then
    local range = buffer(offset, size_of_end_of_transmissions_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.end_of_transmissions_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.end_of_transmissions_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.end_of_transmissions_message_fields(buffer, offset, packet, parent, size_of_end_of_transmissions_message)

  return offset + size_of_end_of_transmissions_message
end

-- Read runtime size of: Market Session Close Message
nasdaq_uqdf_output_utp_v1_5_size_of.market_session_close_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Market Session Close Message
nasdaq_uqdf_output_utp_v1_5_display.market_session_close_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Session Close Message
nasdaq_uqdf_output_utp_v1_5_dissect.market_session_close_message_fields = function(buffer, offset, packet, parent, size_of_market_session_close_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Close Message
nasdaq_uqdf_output_utp_v1_5_dissect.market_session_close_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_session_close_message = nasdaq_uqdf_output_utp_v1_5_size_of.market_session_close_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_session_close_message then
    local range = buffer(offset, size_of_market_session_close_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.market_session_close_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.market_session_close_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.market_session_close_message_fields(buffer, offset, packet, parent, size_of_market_session_close_message)

  return offset + size_of_market_session_close_message
end

-- Read runtime size of: Market Session Open Message
nasdaq_uqdf_output_utp_v1_5_size_of.market_session_open_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Market Session Open Message
nasdaq_uqdf_output_utp_v1_5_display.market_session_open_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Session Open Message
nasdaq_uqdf_output_utp_v1_5_dissect.market_session_open_message_fields = function(buffer, offset, packet, parent, size_of_market_session_open_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Open Message
nasdaq_uqdf_output_utp_v1_5_dissect.market_session_open_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_session_open_message = nasdaq_uqdf_output_utp_v1_5_size_of.market_session_open_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_session_open_message then
    local range = buffer(offset, size_of_market_session_open_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.market_session_open_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.market_session_open_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.market_session_open_message_fields(buffer, offset, packet, parent, size_of_market_session_open_message)

  return offset + size_of_market_session_open_message
end

-- Read runtime size of: End Of Day Message
nasdaq_uqdf_output_utp_v1_5_size_of.end_of_day_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: End Of Day Message
nasdaq_uqdf_output_utp_v1_5_display.end_of_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Day Message
nasdaq_uqdf_output_utp_v1_5_dissect.end_of_day_message_fields = function(buffer, offset, packet, parent, size_of_end_of_day_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
nasdaq_uqdf_output_utp_v1_5_dissect.end_of_day_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_end_of_day_message = nasdaq_uqdf_output_utp_v1_5_size_of.end_of_day_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.end_of_day_message then
    local range = buffer(offset, size_of_end_of_day_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.end_of_day_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.end_of_day_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.end_of_day_message_fields(buffer, offset, packet, parent, size_of_end_of_day_message)

  return offset + size_of_end_of_day_message
end

-- Read runtime size of: Start Of Day Message
nasdaq_uqdf_output_utp_v1_5_size_of.start_of_day_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Start Of Day Message
nasdaq_uqdf_output_utp_v1_5_display.start_of_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Day Message
nasdaq_uqdf_output_utp_v1_5_dissect.start_of_day_message_fields = function(buffer, offset, packet, parent, size_of_start_of_day_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
nasdaq_uqdf_output_utp_v1_5_dissect.start_of_day_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_start_of_day_message = nasdaq_uqdf_output_utp_v1_5_size_of.start_of_day_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.start_of_day_message then
    local range = buffer(offset, size_of_start_of_day_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.start_of_day_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.start_of_day_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.start_of_day_message_fields(buffer, offset, packet, parent, size_of_start_of_day_message)

  return offset + size_of_start_of_day_message
end

-- Calculate runtime size of: Control Payload
nasdaq_uqdf_output_utp_v1_5_size_of.control_payload = function(buffer, offset, control_message_type)
  -- Size of Start Of Day Message
  if control_message_type == "I" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.start_of_day_message(buffer, offset)
  end
  -- Size of End Of Day Message
  if control_message_type == "J" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.end_of_day_message(buffer, offset)
  end
  -- Size of Market Session Open Message
  if control_message_type == "O" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.market_session_open_message(buffer, offset)
  end
  -- Size of Market Session Close Message
  if control_message_type == "C" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.market_session_close_message(buffer, offset)
  end
  -- Size of End Of Transmissions Message
  if control_message_type == "Z" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.end_of_transmissions_message(buffer, offset)
  end
  -- Size of Quote Wipe Out Message
  if control_message_type == "P" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.quote_wipe_out_message(buffer, offset)
  end

  return 0
end

-- Display: Control Payload
nasdaq_uqdf_output_utp_v1_5_display.control_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Control Payload
nasdaq_uqdf_output_utp_v1_5_dissect.control_payload_branches = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "I" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.start_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "J" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.end_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Open Message
  if control_message_type == "O" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.market_session_open_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Close Message
  if control_message_type == "C" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.market_session_close_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmissions Message
  if control_message_type == "Z" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.end_of_transmissions_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Wipe Out Message
  if control_message_type == "P" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.quote_wipe_out_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Control Payload
nasdaq_uqdf_output_utp_v1_5_dissect.control_payload = function(buffer, offset, packet, parent, control_message_type)
  if not show.control_payload then
    return nasdaq_uqdf_output_utp_v1_5_dissect.control_payload_branches(buffer, offset, packet, parent, control_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_uqdf_output_utp_v1_5_size_of.control_payload(buffer, offset, control_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_uqdf_output_utp_v1_5_display.control_payload(buffer, packet, parent)
  local element = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.control_payload, range, display)

  return nasdaq_uqdf_output_utp_v1_5_dissect.control_payload_branches(buffer, offset, packet, parent, control_message_type)
end

-- Size: Control Message Type
nasdaq_uqdf_output_utp_v1_5_size_of.control_message_type = 1

-- Display: Control Message Type
nasdaq_uqdf_output_utp_v1_5_display.control_message_type = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.control_message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.control_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.control_message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Control
nasdaq_uqdf_output_utp_v1_5_size_of.control = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 2
end

-- Display: Control
nasdaq_uqdf_output_utp_v1_5_display.control = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Control
nasdaq_uqdf_output_utp_v1_5_dissect.control_fields = function(buffer, offset, packet, parent, size_of_control)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String Enum with 6 values
  index, control_message_type = nasdaq_uqdf_output_utp_v1_5_dissect.control_message_type(buffer, index, packet, parent)

  -- Control Payload: Runtime Type with 6 branches
  index = nasdaq_uqdf_output_utp_v1_5_dissect.control_payload(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control
nasdaq_uqdf_output_utp_v1_5_dissect.control = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_control = nasdaq_uqdf_output_utp_v1_5_size_of.control(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.control then
    local range = buffer(offset, size_of_control)
    local display = nasdaq_uqdf_output_utp_v1_5_display.control(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.control, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.control_fields(buffer, offset, packet, parent, size_of_control)

  return offset + size_of_control
end

-- Size: Market Center Ask Size
nasdaq_uqdf_output_utp_v1_5_size_of.market_center_ask_size = 8

-- Display: Market Center Ask Size
nasdaq_uqdf_output_utp_v1_5_display.market_center_ask_size = function(value)
  return "Market Center Ask Size: "..value
end

-- Dissect: Market Center Ask Size
nasdaq_uqdf_output_utp_v1_5_dissect.market_center_ask_size = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.market_center_ask_size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5_display.market_center_ask_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.market_center_ask_size, range, value, display)

  return offset + length, value
end

-- Size: Market Center Ask Price
nasdaq_uqdf_output_utp_v1_5_size_of.market_center_ask_price = 8

-- Display: Market Center Ask Price
nasdaq_uqdf_output_utp_v1_5_display.market_center_ask_price = function(value)
  return "Market Center Ask Price: "..value
end

-- Translate: Market Center Ask Price
translate.market_center_ask_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Center Ask Price
nasdaq_uqdf_output_utp_v1_5_dissect.market_center_ask_price = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.market_center_ask_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.market_center_ask_price(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.market_center_ask_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.market_center_ask_price, range, value, display)

  return offset + length, value
end

-- Size: Market Center Bid Size
nasdaq_uqdf_output_utp_v1_5_size_of.market_center_bid_size = 8

-- Display: Market Center Bid Size
nasdaq_uqdf_output_utp_v1_5_display.market_center_bid_size = function(value)
  return "Market Center Bid Size: "..value
end

-- Dissect: Market Center Bid Size
nasdaq_uqdf_output_utp_v1_5_dissect.market_center_bid_size = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.market_center_bid_size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5_display.market_center_bid_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.market_center_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Market Center Bid Price
nasdaq_uqdf_output_utp_v1_5_size_of.market_center_bid_price = 8

-- Display: Market Center Bid Price
nasdaq_uqdf_output_utp_v1_5_display.market_center_bid_price = function(value)
  return "Market Center Bid Price: "..value
end

-- Translate: Market Center Bid Price
translate.market_center_bid_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Center Bid Price
nasdaq_uqdf_output_utp_v1_5_dissect.market_center_bid_price = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.market_center_bid_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.market_center_bid_price(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.market_center_bid_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.market_center_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Market Center Identifier
nasdaq_uqdf_output_utp_v1_5_size_of.market_center_identifier = 1

-- Display: Market Center Identifier
nasdaq_uqdf_output_utp_v1_5_display.market_center_identifier = function(value)
  return "Market Center Identifier: "..value
end

-- Dissect: Market Center Identifier
nasdaq_uqdf_output_utp_v1_5_dissect.market_center_identifier = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.market_center_identifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.market_center_identifier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.market_center_identifier, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Center Close Recap
nasdaq_uqdf_output_utp_v1_5_size_of.market_center_close_recap = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.market_center_identifier

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.market_center_bid_price

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.market_center_bid_size

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.market_center_ask_price

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.market_center_ask_size

  return index
end

-- Display: Market Center Close Recap
nasdaq_uqdf_output_utp_v1_5_display.market_center_close_recap = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Center Close Recap
nasdaq_uqdf_output_utp_v1_5_dissect.market_center_close_recap_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Identifier: 1 Byte Ascii String
  index, market_center_identifier = nasdaq_uqdf_output_utp_v1_5_dissect.market_center_identifier(buffer, index, packet, parent)

  -- Market Center Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, market_center_bid_price = nasdaq_uqdf_output_utp_v1_5_dissect.market_center_bid_price(buffer, index, packet, parent)

  -- Market Center Bid Size: 8 Byte Unsigned Fixed Width Integer
  index, market_center_bid_size = nasdaq_uqdf_output_utp_v1_5_dissect.market_center_bid_size(buffer, index, packet, parent)

  -- Market Center Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, market_center_ask_price = nasdaq_uqdf_output_utp_v1_5_dissect.market_center_ask_price(buffer, index, packet, parent)

  -- Market Center Ask Size: 8 Byte Unsigned Fixed Width Integer
  index, market_center_ask_size = nasdaq_uqdf_output_utp_v1_5_dissect.market_center_ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Close Recap
nasdaq_uqdf_output_utp_v1_5_dissect.market_center_close_recap = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_center_close_recap then
    local length = nasdaq_uqdf_output_utp_v1_5_size_of.market_center_close_recap(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_uqdf_output_utp_v1_5_display.market_center_close_recap(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.market_center_close_recap, range, display)
  end

  return nasdaq_uqdf_output_utp_v1_5_dissect.market_center_close_recap_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Market Center Attachments
nasdaq_uqdf_output_utp_v1_5_size_of.number_of_market_center_attachments = 2

-- Display: Number Of Market Center Attachments
nasdaq_uqdf_output_utp_v1_5_display.number_of_market_center_attachments = function(value)
  return "Number Of Market Center Attachments: "..value
end

-- Dissect: Number Of Market Center Attachments
nasdaq_uqdf_output_utp_v1_5_dissect.number_of_market_center_attachments = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.number_of_market_center_attachments
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5_display.number_of_market_center_attachments(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.number_of_market_center_attachments, range, value, display)

  return offset + length, value
end

-- Size: Special Condition
nasdaq_uqdf_output_utp_v1_5_size_of.special_condition = 1

-- Display: Special Condition
nasdaq_uqdf_output_utp_v1_5_display.special_condition = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.special_condition = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.special_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.special_condition(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.special_condition, range, value, display)

  return offset + length, value
end

-- Size: National Best Ask Size
nasdaq_uqdf_output_utp_v1_5_size_of.national_best_ask_size = 8

-- Display: National Best Ask Size
nasdaq_uqdf_output_utp_v1_5_display.national_best_ask_size = function(value)
  return "National Best Ask Size: "..value
end

-- Dissect: National Best Ask Size
nasdaq_uqdf_output_utp_v1_5_dissect.national_best_ask_size = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.national_best_ask_size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5_display.national_best_ask_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_size, range, value, display)

  return offset + length, value
end

-- Size: National Best Ask Price
nasdaq_uqdf_output_utp_v1_5_size_of.national_best_ask_price = 8

-- Display: National Best Ask Price
nasdaq_uqdf_output_utp_v1_5_display.national_best_ask_price = function(value)
  return "National Best Ask Price: "..value
end

-- Translate: National Best Ask Price
translate.national_best_ask_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Ask Price
nasdaq_uqdf_output_utp_v1_5_dissect.national_best_ask_price = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.national_best_ask_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.national_best_ask_price(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.national_best_ask_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_price, range, value, display)

  return offset + length, value
end

-- Size: National Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5_size_of.national_best_ask_market_center = 1

-- Display: National Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5_display.national_best_ask_market_center = function(value)
  return "National Best Ask Market Center: "..value
end

-- Dissect: National Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5_dissect.national_best_ask_market_center = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.national_best_ask_market_center
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.national_best_ask_market_center(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_market_center, range, value, display)

  return offset + length, value
end

-- Size: National Best Bid Size
nasdaq_uqdf_output_utp_v1_5_size_of.national_best_bid_size = 8

-- Display: National Best Bid Size
nasdaq_uqdf_output_utp_v1_5_display.national_best_bid_size = function(value)
  return "National Best Bid Size: "..value
end

-- Dissect: National Best Bid Size
nasdaq_uqdf_output_utp_v1_5_dissect.national_best_bid_size = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.national_best_bid_size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5_display.national_best_bid_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_size, range, value, display)

  return offset + length, value
end

-- Size: National Best Bid Price
nasdaq_uqdf_output_utp_v1_5_size_of.national_best_bid_price = 8

-- Display: National Best Bid Price
nasdaq_uqdf_output_utp_v1_5_display.national_best_bid_price = function(value)
  return "National Best Bid Price: "..value
end

-- Translate: National Best Bid Price
translate.national_best_bid_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Bid Price
nasdaq_uqdf_output_utp_v1_5_dissect.national_best_bid_price = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.national_best_bid_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.national_best_bid_price(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.national_best_bid_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_price, range, value, display)

  return offset + length, value
end

-- Size: National Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5_size_of.national_best_bid_market_center = 1

-- Display: National Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5_display.national_best_bid_market_center = function(value)
  return "National Best Bid Market Center: "..value
end

-- Dissect: National Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5_dissect.national_best_bid_market_center = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.national_best_bid_market_center
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.national_best_bid_market_center(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_market_center, range, value, display)

  return offset + length, value
end

-- Size: Symbol
nasdaq_uqdf_output_utp_v1_5_size_of.symbol = 11

-- Display: Symbol
nasdaq_uqdf_output_utp_v1_5_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_uqdf_output_utp_v1_5_dissect.symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.symbol, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Session Close Recap Message
nasdaq_uqdf_output_utp_v1_5_size_of.session_close_recap_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Session Close Recap Message
nasdaq_uqdf_output_utp_v1_5_display.session_close_recap_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Session Close Recap Message
nasdaq_uqdf_output_utp_v1_5_dissect.session_close_recap_message_fields = function(buffer, offset, packet, parent, size_of_session_close_recap_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5_dissect.symbol(buffer, index, packet, parent)

  -- National Best Bid Market Center: 1 Byte Ascii String
  index, national_best_bid_market_center = nasdaq_uqdf_output_utp_v1_5_dissect.national_best_bid_market_center(buffer, index, packet, parent)

  -- National Best Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, national_best_bid_price = nasdaq_uqdf_output_utp_v1_5_dissect.national_best_bid_price(buffer, index, packet, parent)

  -- National Best Bid Size: 8 Byte Unsigned Fixed Width Integer
  index, national_best_bid_size = nasdaq_uqdf_output_utp_v1_5_dissect.national_best_bid_size(buffer, index, packet, parent)

  -- National Best Ask Market Center: 1 Byte Ascii String
  index, national_best_ask_market_center = nasdaq_uqdf_output_utp_v1_5_dissect.national_best_ask_market_center(buffer, index, packet, parent)

  -- National Best Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, national_best_ask_price = nasdaq_uqdf_output_utp_v1_5_dissect.national_best_ask_price(buffer, index, packet, parent)

  -- National Best Ask Size: 8 Byte Unsigned Fixed Width Integer
  index, national_best_ask_size = nasdaq_uqdf_output_utp_v1_5_dissect.national_best_ask_size(buffer, index, packet, parent)

  -- Special Condition: 1 Byte Ascii String Enum with 4 values
  index, special_condition = nasdaq_uqdf_output_utp_v1_5_dissect.special_condition(buffer, index, packet, parent)

  -- Number Of Market Center Attachments: 2 Byte Unsigned Fixed Width Integer
  index, number_of_market_center_attachments = nasdaq_uqdf_output_utp_v1_5_dissect.number_of_market_center_attachments(buffer, index, packet, parent)

  -- Market Center Close Recap: Struct of 5 fields
  for i = 1, number_of_market_center_attachments do
    index = nasdaq_uqdf_output_utp_v1_5_dissect.market_center_close_recap(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Session Close Recap Message
nasdaq_uqdf_output_utp_v1_5_dissect.session_close_recap_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_session_close_recap_message = nasdaq_uqdf_output_utp_v1_5_size_of.session_close_recap_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.session_close_recap_message then
    local range = buffer(offset, size_of_session_close_recap_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.session_close_recap_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.session_close_recap_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.session_close_recap_message_fields(buffer, offset, packet, parent, size_of_session_close_recap_message)

  return offset + size_of_session_close_recap_message
end

-- Size: Collar Extension Indicator
nasdaq_uqdf_output_utp_v1_5_size_of.collar_extension_indicator = 1

-- Display: Collar Extension Indicator
nasdaq_uqdf_output_utp_v1_5_display.collar_extension_indicator = function(value)
  return "Collar Extension Indicator: "..value
end

-- Dissect: Collar Extension Indicator
nasdaq_uqdf_output_utp_v1_5_dissect.collar_extension_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.collar_extension_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.collar_extension_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.collar_extension_indicator, range, value, display)

  return offset + length, value
end

-- Size: Collar Down Price
nasdaq_uqdf_output_utp_v1_5_size_of.collar_down_price = 8

-- Display: Collar Down Price
nasdaq_uqdf_output_utp_v1_5_display.collar_down_price = function(value)
  return "Collar Down Price: "..value
end

-- Translate: Collar Down Price
translate.collar_down_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Down Price
nasdaq_uqdf_output_utp_v1_5_dissect.collar_down_price = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.collar_down_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.collar_down_price(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.collar_down_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.collar_down_price, range, value, display)

  return offset + length, value
end

-- Size: Collar Up Price
nasdaq_uqdf_output_utp_v1_5_size_of.collar_up_price = 8

-- Display: Collar Up Price
nasdaq_uqdf_output_utp_v1_5_display.collar_up_price = function(value)
  return "Collar Up Price: "..value
end

-- Translate: Collar Up Price
translate.collar_up_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Up Price
nasdaq_uqdf_output_utp_v1_5_dissect.collar_up_price = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.collar_up_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.collar_up_price(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.collar_up_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.collar_up_price, range, value, display)

  return offset + length, value
end

-- Size: Collar Reference Price
nasdaq_uqdf_output_utp_v1_5_size_of.collar_reference_price = 8

-- Display: Collar Reference Price
nasdaq_uqdf_output_utp_v1_5_display.collar_reference_price = function(value)
  return "Collar Reference Price: "..value
end

-- Translate: Collar Reference Price
translate.collar_reference_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Reference Price
nasdaq_uqdf_output_utp_v1_5_dissect.collar_reference_price = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.collar_reference_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.collar_reference_price(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.collar_reference_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.collar_reference_price, range, value, display)

  return offset + length, value
end

-- Size: Trading Action Sequence Number
nasdaq_uqdf_output_utp_v1_5_size_of.trading_action_sequence_number = 4

-- Display: Trading Action Sequence Number
nasdaq_uqdf_output_utp_v1_5_display.trading_action_sequence_number = function(value)
  return "Trading Action Sequence Number: "..value
end

-- Dissect: Trading Action Sequence Number
nasdaq_uqdf_output_utp_v1_5_dissect.trading_action_sequence_number = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.trading_action_sequence_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5_display.trading_action_sequence_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.trading_action_sequence_number, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Auction Collar Message
nasdaq_uqdf_output_utp_v1_5_size_of.auction_collar_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Auction Collar Message
nasdaq_uqdf_output_utp_v1_5_display.auction_collar_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Collar Message
nasdaq_uqdf_output_utp_v1_5_dissect.auction_collar_message_fields = function(buffer, offset, packet, parent, size_of_auction_collar_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5_dissect.symbol(buffer, index, packet, parent)

  -- Trading Action Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, trading_action_sequence_number = nasdaq_uqdf_output_utp_v1_5_dissect.trading_action_sequence_number(buffer, index, packet, parent)

  -- Collar Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, collar_reference_price = nasdaq_uqdf_output_utp_v1_5_dissect.collar_reference_price(buffer, index, packet, parent)

  -- Collar Up Price: 8 Byte Unsigned Fixed Width Integer
  index, collar_up_price = nasdaq_uqdf_output_utp_v1_5_dissect.collar_up_price(buffer, index, packet, parent)

  -- Collar Down Price: 8 Byte Unsigned Fixed Width Integer
  index, collar_down_price = nasdaq_uqdf_output_utp_v1_5_dissect.collar_down_price(buffer, index, packet, parent)

  -- Collar Extension Indicator: 1 Byte Ascii String
  index, collar_extension_indicator = nasdaq_uqdf_output_utp_v1_5_dissect.collar_extension_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Collar Message
nasdaq_uqdf_output_utp_v1_5_dissect.auction_collar_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_auction_collar_message = nasdaq_uqdf_output_utp_v1_5_size_of.auction_collar_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.auction_collar_message then
    local range = buffer(offset, size_of_auction_collar_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.auction_collar_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.auction_collar_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.auction_collar_message_fields(buffer, offset, packet, parent, size_of_auction_collar_message)

  return offset + size_of_auction_collar_message
end

-- Size: Mwcb Level 3
nasdaq_uqdf_output_utp_v1_5_size_of.mwcb_level_3 = 8

-- Display: Mwcb Level 3
nasdaq_uqdf_output_utp_v1_5_display.mwcb_level_3 = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
nasdaq_uqdf_output_utp_v1_5_dissect.mwcb_level_3 = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.mwcb_level_3
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5_display.mwcb_level_3(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- Size: Mwcb Level 2
nasdaq_uqdf_output_utp_v1_5_size_of.mwcb_level_2 = 8

-- Display: Mwcb Level 2
nasdaq_uqdf_output_utp_v1_5_display.mwcb_level_2 = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
nasdaq_uqdf_output_utp_v1_5_dissect.mwcb_level_2 = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.mwcb_level_2
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5_display.mwcb_level_2(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Size: Mwcb Level 1
nasdaq_uqdf_output_utp_v1_5_size_of.mwcb_level_1 = 8

-- Display: Mwcb Level 1
nasdaq_uqdf_output_utp_v1_5_display.mwcb_level_1 = function(value)
  return "Mwcb Level 1: "..value
end

-- Dissect: Mwcb Level 1
nasdaq_uqdf_output_utp_v1_5_dissect.mwcb_level_1 = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.mwcb_level_1
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5_display.mwcb_level_1(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.mwcb_level_1, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v1_5_size_of.market_wide_circuit_breaker_decline_level_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v1_5_display.market_wide_circuit_breaker_decline_level_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v1_5_dissect.market_wide_circuit_breaker_decline_level_message_fields = function(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  -- Mwcb Level 1: 8 Byte Unsigned Fixed Width Integer
  index, mwcb_level_1 = nasdaq_uqdf_output_utp_v1_5_dissect.mwcb_level_1(buffer, index, packet, parent)

  -- Mwcb Level 2: 8 Byte Unsigned Fixed Width Integer
  index, mwcb_level_2 = nasdaq_uqdf_output_utp_v1_5_dissect.mwcb_level_2(buffer, index, packet, parent)

  -- Mwcb Level 3: 8 Byte Unsigned Fixed Width Integer
  index, mwcb_level_3 = nasdaq_uqdf_output_utp_v1_5_dissect.mwcb_level_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Message
nasdaq_uqdf_output_utp_v1_5_dissect.market_wide_circuit_breaker_decline_level_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_wide_circuit_breaker_decline_level_message = nasdaq_uqdf_output_utp_v1_5_size_of.market_wide_circuit_breaker_decline_level_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_wide_circuit_breaker_decline_level_message then
    local range = buffer(offset, size_of_market_wide_circuit_breaker_decline_level_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.market_wide_circuit_breaker_decline_level_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.market_wide_circuit_breaker_decline_level_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.market_wide_circuit_breaker_decline_level_message_fields(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_message)

  return offset + size_of_market_wide_circuit_breaker_decline_level_message
end

-- Size: Limit Up Price
nasdaq_uqdf_output_utp_v1_5_size_of.limit_up_price = 8

-- Display: Limit Up Price
nasdaq_uqdf_output_utp_v1_5_display.limit_up_price = function(value)
  return "Limit Up Price: "..value
end

-- Translate: Limit Up Price
translate.limit_up_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Up Price
nasdaq_uqdf_output_utp_v1_5_dissect.limit_up_price = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.limit_up_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.limit_up_price(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.limit_up_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.limit_up_price, range, value, display)

  return offset + length, value
end

-- Size: Limit Down Price
nasdaq_uqdf_output_utp_v1_5_size_of.limit_down_price = 8

-- Display: Limit Down Price
nasdaq_uqdf_output_utp_v1_5_display.limit_down_price = function(value)
  return "Limit Down Price: "..value
end

-- Translate: Limit Down Price
translate.limit_down_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Down Price
nasdaq_uqdf_output_utp_v1_5_dissect.limit_down_price = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.limit_down_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.limit_down_price(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.limit_down_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.limit_down_price, range, value, display)

  return offset + length, value
end

-- Size: Luld Timestamp
nasdaq_uqdf_output_utp_v1_5_size_of.luld_timestamp = 8

-- Display: Luld Timestamp
nasdaq_uqdf_output_utp_v1_5_display.luld_timestamp = function(value)
  return "Luld Timestamp: "..value
end

-- Dissect: Luld Timestamp
nasdaq_uqdf_output_utp_v1_5_dissect.luld_timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.luld_timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5_display.luld_timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.luld_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Luld Price Band Indicator
nasdaq_uqdf_output_utp_v1_5_size_of.luld_price_band_indicator = 1

-- Display: Luld Price Band Indicator
nasdaq_uqdf_output_utp_v1_5_display.luld_price_band_indicator = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.luld_price_band_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.luld_price_band_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.luld_price_band_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.luld_price_band_indicator, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v1_5_size_of.limit_up_limit_down_price_band_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v1_5_display.limit_up_limit_down_price_band_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v1_5_dissect.limit_up_limit_down_price_band_message_fields = function(buffer, offset, packet, parent, size_of_limit_up_limit_down_price_band_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5_dissect.symbol(buffer, index, packet, parent)

  -- Luld Price Band Indicator: 1 Byte Ascii String Enum with 7 values
  index, luld_price_band_indicator = nasdaq_uqdf_output_utp_v1_5_dissect.luld_price_band_indicator(buffer, index, packet, parent)

  -- Luld Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, luld_timestamp = nasdaq_uqdf_output_utp_v1_5_dissect.luld_timestamp(buffer, index, packet, parent)

  -- Limit Down Price: 8 Byte Unsigned Fixed Width Integer
  index, limit_down_price = nasdaq_uqdf_output_utp_v1_5_dissect.limit_down_price(buffer, index, packet, parent)

  -- Limit Up Price: 8 Byte Unsigned Fixed Width Integer
  index, limit_up_price = nasdaq_uqdf_output_utp_v1_5_dissect.limit_up_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Up Limit Down Price Band Message
nasdaq_uqdf_output_utp_v1_5_dissect.limit_up_limit_down_price_band_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_limit_up_limit_down_price_band_message = nasdaq_uqdf_output_utp_v1_5_size_of.limit_up_limit_down_price_band_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.limit_up_limit_down_price_band_message then
    local range = buffer(offset, size_of_limit_up_limit_down_price_band_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.limit_up_limit_down_price_band_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.limit_up_limit_down_price_band_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.limit_up_limit_down_price_band_message_fields(buffer, offset, packet, parent, size_of_limit_up_limit_down_price_band_message)

  return offset + size_of_limit_up_limit_down_price_band_message
end

-- Size: Reg Sho Action
nasdaq_uqdf_output_utp_v1_5_size_of.reg_sho_action = 1

-- Display: Reg Sho Action
nasdaq_uqdf_output_utp_v1_5_display.reg_sho_action = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.reg_sho_action = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.reg_sho_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.reg_sho_action(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v1_5_size_of.regulation_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v1_5_display.regulation_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v1_5_dissect.regulation_sho_short_sale_price_test_restricted_indicator_message_fields = function(buffer, offset, packet, parent, size_of_regulation_sho_short_sale_price_test_restricted_indicator_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5_dissect.symbol(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = nasdaq_uqdf_output_utp_v1_5_dissect.reg_sho_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_uqdf_output_utp_v1_5_dissect.regulation_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_regulation_sho_short_sale_price_test_restricted_indicator_message = nasdaq_uqdf_output_utp_v1_5_size_of.regulation_sho_short_sale_price_test_restricted_indicator_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.regulation_sho_short_sale_price_test_restricted_indicator_message then
    local range = buffer(offset, size_of_regulation_sho_short_sale_price_test_restricted_indicator_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.regulation_sho_short_sale_price_test_restricted_indicator_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.regulation_sho_short_sale_price_test_restricted_indicator_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.regulation_sho_short_sale_price_test_restricted_indicator_message_fields(buffer, offset, packet, parent, size_of_regulation_sho_short_sale_price_test_restricted_indicator_message)

  return offset + size_of_regulation_sho_short_sale_price_test_restricted_indicator_message
end

-- Size: Financial Status Indicator
nasdaq_uqdf_output_utp_v1_5_size_of.financial_status_indicator = 1

-- Display: Financial Status Indicator
nasdaq_uqdf_output_utp_v1_5_display.financial_status_indicator = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.financial_status_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.financial_status_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.financial_status_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Size: Round Lot Size
nasdaq_uqdf_output_utp_v1_5_size_of.round_lot_size = 2

-- Display: Round Lot Size
nasdaq_uqdf_output_utp_v1_5_display.round_lot_size = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_uqdf_output_utp_v1_5_dissect.round_lot_size = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.round_lot_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5_display.round_lot_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Short Sale Threshold Indicator
nasdaq_uqdf_output_utp_v1_5_size_of.short_sale_threshold_indicator = 1

-- Display: Short Sale Threshold Indicator
nasdaq_uqdf_output_utp_v1_5_display.short_sale_threshold_indicator = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.short_sale_threshold_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.short_sale_threshold_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.short_sale_threshold_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Size: Authenticity
nasdaq_uqdf_output_utp_v1_5_size_of.authenticity = 1

-- Display: Authenticity
nasdaq_uqdf_output_utp_v1_5_display.authenticity = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.authenticity = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.authenticity
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.authenticity(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Size: Market Tier
nasdaq_uqdf_output_utp_v1_5_size_of.market_tier = 1

-- Display: Market Tier
nasdaq_uqdf_output_utp_v1_5_display.market_tier = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.market_tier = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.market_tier
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.market_tier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.market_tier, range, value, display)

  return offset + length, value
end

-- Size: Issue Subtype
nasdaq_uqdf_output_utp_v1_5_size_of.issue_subtype = 2

-- Display: Issue Subtype
nasdaq_uqdf_output_utp_v1_5_display.issue_subtype = function(value)
  return "Issue Subtype: "..value
end

-- Dissect: Issue Subtype
nasdaq_uqdf_output_utp_v1_5_dissect.issue_subtype = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.issue_subtype
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.issue_subtype(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.issue_subtype, range, value, display)

  return offset + length, value
end

-- Size: Issue Type
nasdaq_uqdf_output_utp_v1_5_size_of.issue_type = 1

-- Display: Issue Type
nasdaq_uqdf_output_utp_v1_5_display.issue_type = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.issue_type = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.issue_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.issue_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.issue_type, range, value, display)

  return offset + length, value
end

-- Size: Issue Name
nasdaq_uqdf_output_utp_v1_5_size_of.issue_name = 30

-- Display: Issue Name
nasdaq_uqdf_output_utp_v1_5_display.issue_name = function(value)
  return "Issue Name: "..value
end

-- Dissect: Issue Name
nasdaq_uqdf_output_utp_v1_5_dissect.issue_name = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.issue_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.issue_name(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.issue_name, range, value, display)

  return offset + length, value
end

-- Size: Old Symbol
nasdaq_uqdf_output_utp_v1_5_size_of.old_symbol = 11

-- Display: Old Symbol
nasdaq_uqdf_output_utp_v1_5_display.old_symbol = function(value)
  return "Old Symbol: "..value
end

-- Dissect: Old Symbol
nasdaq_uqdf_output_utp_v1_5_dissect.old_symbol = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.old_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.old_symbol(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.old_symbol, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v1_5_size_of.issue_symbol_directory_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v1_5_display.issue_symbol_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v1_5_dissect.issue_symbol_directory_message_fields = function(buffer, offset, packet, parent, size_of_issue_symbol_directory_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5_dissect.symbol(buffer, index, packet, parent)

  -- Old Symbol: 11 Byte Ascii String
  index, old_symbol = nasdaq_uqdf_output_utp_v1_5_dissect.old_symbol(buffer, index, packet, parent)

  -- Issue Name: 30 Byte Ascii String
  index, issue_name = nasdaq_uqdf_output_utp_v1_5_dissect.issue_name(buffer, index, packet, parent)

  -- Issue Type: 1 Byte Ascii String Enum with 16 values
  index, issue_type = nasdaq_uqdf_output_utp_v1_5_dissect.issue_type(buffer, index, packet, parent)

  -- Issue Subtype: 2 Byte Ascii String
  index, issue_subtype = nasdaq_uqdf_output_utp_v1_5_dissect.issue_subtype(buffer, index, packet, parent)

  -- Market Tier: 1 Byte Ascii String Enum with 3 values
  index, market_tier = nasdaq_uqdf_output_utp_v1_5_dissect.market_tier(buffer, index, packet, parent)

  -- Authenticity: 1 Byte Ascii String Enum with 4 values
  index, authenticity = nasdaq_uqdf_output_utp_v1_5_dissect.authenticity(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: 1 Byte Ascii String Enum with 3 values
  index, short_sale_threshold_indicator = nasdaq_uqdf_output_utp_v1_5_dissect.short_sale_threshold_indicator(buffer, index, packet, parent)

  -- Round Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, round_lot_size = nasdaq_uqdf_output_utp_v1_5_dissect.round_lot_size(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 9 values
  index, financial_status_indicator = nasdaq_uqdf_output_utp_v1_5_dissect.financial_status_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Symbol Directory Message
nasdaq_uqdf_output_utp_v1_5_dissect.issue_symbol_directory_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_issue_symbol_directory_message = nasdaq_uqdf_output_utp_v1_5_size_of.issue_symbol_directory_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.issue_symbol_directory_message then
    local range = buffer(offset, size_of_issue_symbol_directory_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.issue_symbol_directory_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.issue_symbol_directory_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.issue_symbol_directory_message_fields(buffer, offset, packet, parent, size_of_issue_symbol_directory_message)

  return offset + size_of_issue_symbol_directory_message
end

-- Size: Action Timestamp
nasdaq_uqdf_output_utp_v1_5_size_of.action_timestamp = 8

-- Display: Action Timestamp
nasdaq_uqdf_output_utp_v1_5_display.action_timestamp = function(value)
  return "Action Timestamp: "..value
end

-- Dissect: Action Timestamp
nasdaq_uqdf_output_utp_v1_5_dissect.action_timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.action_timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5_display.action_timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.action_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Trading Action Code
nasdaq_uqdf_output_utp_v1_5_size_of.trading_action_code = 1

-- Display: Trading Action Code
nasdaq_uqdf_output_utp_v1_5_display.trading_action_code = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.trading_action_code = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.trading_action_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.trading_action_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.trading_action_code, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v1_5_size_of.market_center_trading_action_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v1_5_display.market_center_trading_action_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v1_5_dissect.market_center_trading_action_message_fields = function(buffer, offset, packet, parent, size_of_market_center_trading_action_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5_dissect.symbol(buffer, index, packet, parent)

  -- Trading Action Code: 1 Byte Ascii String Enum with 4 values
  index, trading_action_code = nasdaq_uqdf_output_utp_v1_5_dissect.trading_action_code(buffer, index, packet, parent)

  -- Action Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, action_timestamp = nasdaq_uqdf_output_utp_v1_5_dissect.action_timestamp(buffer, index, packet, parent)

  -- Market Center Identifier: 1 Byte Ascii String
  index, market_center_identifier = nasdaq_uqdf_output_utp_v1_5_dissect.market_center_identifier(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Trading Action Message
nasdaq_uqdf_output_utp_v1_5_dissect.market_center_trading_action_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_center_trading_action_message = nasdaq_uqdf_output_utp_v1_5_size_of.market_center_trading_action_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_center_trading_action_message then
    local range = buffer(offset, size_of_market_center_trading_action_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.market_center_trading_action_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.market_center_trading_action_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.market_center_trading_action_message_fields(buffer, offset, packet, parent, size_of_market_center_trading_action_message)

  return offset + size_of_market_center_trading_action_message
end

-- Size: Trading Action Reason
nasdaq_uqdf_output_utp_v1_5_size_of.trading_action_reason = 6

-- Display: Trading Action Reason
nasdaq_uqdf_output_utp_v1_5_display.trading_action_reason = function(value)
  return "Trading Action Reason: "..value
end

-- Dissect: Trading Action Reason
nasdaq_uqdf_output_utp_v1_5_dissect.trading_action_reason = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.trading_action_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.trading_action_reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.trading_action_reason, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v1_5_size_of.cross_sro_trading_action_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v1_5_display.cross_sro_trading_action_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v1_5_dissect.cross_sro_trading_action_message_fields = function(buffer, offset, packet, parent, size_of_cross_sro_trading_action_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5_dissect.symbol(buffer, index, packet, parent)

  -- Trading Action Code: 1 Byte Ascii String Enum with 4 values
  index, trading_action_code = nasdaq_uqdf_output_utp_v1_5_dissect.trading_action_code(buffer, index, packet, parent)

  -- Trading Action Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, trading_action_sequence_number = nasdaq_uqdf_output_utp_v1_5_dissect.trading_action_sequence_number(buffer, index, packet, parent)

  -- Action Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, action_timestamp = nasdaq_uqdf_output_utp_v1_5_dissect.action_timestamp(buffer, index, packet, parent)

  -- Trading Action Reason: 6 Byte Ascii String
  index, trading_action_reason = nasdaq_uqdf_output_utp_v1_5_dissect.trading_action_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Sro Trading Action Message
nasdaq_uqdf_output_utp_v1_5_dissect.cross_sro_trading_action_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_cross_sro_trading_action_message = nasdaq_uqdf_output_utp_v1_5_size_of.cross_sro_trading_action_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.cross_sro_trading_action_message then
    local range = buffer(offset, size_of_cross_sro_trading_action_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.cross_sro_trading_action_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.cross_sro_trading_action_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.cross_sro_trading_action_message_fields(buffer, offset, packet, parent, size_of_cross_sro_trading_action_message)

  return offset + size_of_cross_sro_trading_action_message
end

-- Display: Text
nasdaq_uqdf_output_utp_v1_5_display.text = function(value)
  return "Text: "..value
end

-- Dissect runtime sized field: Text
nasdaq_uqdf_output_utp_v1_5_dissect.text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.text(value, buffer, offset, packet, parent, size)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.text, range, value, display)

  return offset + size
end

-- Size: Text Length
nasdaq_uqdf_output_utp_v1_5_size_of.text_length = 2

-- Display: Text Length
nasdaq_uqdf_output_utp_v1_5_display.text_length = function(value)
  return "Text Length: "..value
end

-- Dissect: Text Length
nasdaq_uqdf_output_utp_v1_5_dissect.text_length = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.text_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5_display.text_length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.text_length, range, value, display)

  return offset + length, value
end

-- Read runtime size of: General Administrative Message
nasdaq_uqdf_output_utp_v1_5_size_of.general_administrative_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: General Administrative Message
nasdaq_uqdf_output_utp_v1_5_display.general_administrative_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: General Administrative Message
nasdaq_uqdf_output_utp_v1_5_dissect.general_administrative_message_fields = function(buffer, offset, packet, parent, size_of_general_administrative_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  -- Text Length: 2 Byte Unsigned Fixed Width Integer
  index, text_length = nasdaq_uqdf_output_utp_v1_5_dissect.text_length(buffer, index, packet, parent)

  -- Text: 0 Byte Ascii String
  index = nasdaq_uqdf_output_utp_v1_5_dissect.text(buffer, index, packet, parent, text_length)

  return index
end

-- Dissect: General Administrative Message
nasdaq_uqdf_output_utp_v1_5_dissect.general_administrative_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_general_administrative_message = nasdaq_uqdf_output_utp_v1_5_size_of.general_administrative_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.general_administrative_message then
    local range = buffer(offset, size_of_general_administrative_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.general_administrative_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.general_administrative_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.general_administrative_message_fields(buffer, offset, packet, parent, size_of_general_administrative_message)

  return offset + size_of_general_administrative_message
end

-- Calculate runtime size of: Administrative Payload
nasdaq_uqdf_output_utp_v1_5_size_of.administrative_payload = function(buffer, offset, administrative_message_type)
  -- Size of General Administrative Message
  if administrative_message_type == "A" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.general_administrative_message(buffer, offset)
  end
  -- Size of Cross Sro Trading Action Message
  if administrative_message_type == "H" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.cross_sro_trading_action_message(buffer, offset)
  end
  -- Size of Market Center Trading Action Message
  if administrative_message_type == "H" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.market_center_trading_action_message(buffer, offset)
  end
  -- Size of Issue Symbol Directory Message
  if administrative_message_type == "B" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.issue_symbol_directory_message(buffer, offset)
  end
  -- Size of Regulation Sho Short Sale Price Test Restricted Indicator Message
  if administrative_message_type == "V" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.regulation_sho_short_sale_price_test_restricted_indicator_message(buffer, offset)
  end
  -- Size of Limit Up Limit Down Price Band Message
  if administrative_message_type == "P" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.limit_up_limit_down_price_band_message(buffer, offset)
  end
  -- Size of Market Wide Circuit Breaker Decline Level Message
  if administrative_message_type == "C" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.market_wide_circuit_breaker_decline_level_message(buffer, offset)
  end
  -- Size of Market Wide Circuit Breaker Decline Level Message
  if administrative_message_type == "D" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.market_wide_circuit_breaker_decline_level_message(buffer, offset)
  end
  -- Size of Auction Collar Message
  if administrative_message_type == "E" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.auction_collar_message(buffer, offset)
  end
  -- Size of Session Close Recap Message
  if administrative_message_type == "R" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.session_close_recap_message(buffer, offset)
  end

  return 0
end

-- Display: Administrative Payload
nasdaq_uqdf_output_utp_v1_5_display.administrative_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Administrative Payload
nasdaq_uqdf_output_utp_v1_5_dissect.administrative_payload_branches = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect General Administrative Message
  if administrative_message_type == "A" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.general_administrative_message(buffer, offset, packet, parent)
  end
  -- Dissect Cross Sro Trading Action Message
  if administrative_message_type == "H" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.cross_sro_trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Center Trading Action Message
  if administrative_message_type == "H" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.market_center_trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Issue Symbol Directory Message
  if administrative_message_type == "B" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.issue_symbol_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Regulation Sho Short Sale Price Test Restricted Indicator Message
  if administrative_message_type == "V" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.regulation_sho_short_sale_price_test_restricted_indicator_message(buffer, offset, packet, parent)
  end
  -- Dissect Limit Up Limit Down Price Band Message
  if administrative_message_type == "P" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.limit_up_limit_down_price_band_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Decline Level Message
  if administrative_message_type == "C" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.market_wide_circuit_breaker_decline_level_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Decline Level Message
  if administrative_message_type == "D" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.market_wide_circuit_breaker_decline_level_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Collar Message
  if administrative_message_type == "E" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.auction_collar_message(buffer, offset, packet, parent)
  end
  -- Dissect Session Close Recap Message
  if administrative_message_type == "R" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.session_close_recap_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Administrative Payload
nasdaq_uqdf_output_utp_v1_5_dissect.administrative_payload = function(buffer, offset, packet, parent, administrative_message_type)
  if not show.administrative_payload then
    return nasdaq_uqdf_output_utp_v1_5_dissect.administrative_payload_branches(buffer, offset, packet, parent, administrative_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_uqdf_output_utp_v1_5_size_of.administrative_payload(buffer, offset, administrative_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_uqdf_output_utp_v1_5_display.administrative_payload(buffer, packet, parent)
  local element = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.administrative_payload, range, display)

  return nasdaq_uqdf_output_utp_v1_5_dissect.administrative_payload_branches(buffer, offset, packet, parent, administrative_message_type)
end

-- Size: Administrative Message Type
nasdaq_uqdf_output_utp_v1_5_size_of.administrative_message_type = 1

-- Display: Administrative Message Type
nasdaq_uqdf_output_utp_v1_5_display.administrative_message_type = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.administrative_message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.administrative_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.administrative_message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Administrative
nasdaq_uqdf_output_utp_v1_5_size_of.administrative = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 2
end

-- Display: Administrative
nasdaq_uqdf_output_utp_v1_5_display.administrative = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Administrative
nasdaq_uqdf_output_utp_v1_5_dissect.administrative_fields = function(buffer, offset, packet, parent, size_of_administrative)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String Enum with 10 values
  index, administrative_message_type = nasdaq_uqdf_output_utp_v1_5_dissect.administrative_message_type(buffer, index, packet, parent)

  -- Administrative Payload: Runtime Type with 10 branches
  index = nasdaq_uqdf_output_utp_v1_5_dissect.administrative_payload(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative
nasdaq_uqdf_output_utp_v1_5_dissect.administrative = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_administrative = nasdaq_uqdf_output_utp_v1_5_size_of.administrative(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.administrative then
    local range = buffer(offset, size_of_administrative)
    local display = nasdaq_uqdf_output_utp_v1_5_display.administrative(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.administrative, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.administrative_fields(buffer, offset, packet, parent, size_of_administrative)

  return offset + size_of_administrative
end

-- Size: Finra Market Participant
nasdaq_uqdf_output_utp_v1_5_size_of.finra_market_participant = 4

-- Display: Finra Market Participant
nasdaq_uqdf_output_utp_v1_5_display.finra_market_participant = function(value)
  return "Finra Market Participant: "..value
end

-- Dissect: Finra Market Participant
nasdaq_uqdf_output_utp_v1_5_dissect.finra_market_participant = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.finra_market_participant
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.finra_market_participant(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.finra_market_participant, range, value, display)

  return offset + length, value
end

-- Size: Quote Condition
nasdaq_uqdf_output_utp_v1_5_size_of.quote_condition = 1

-- Display: Quote Condition
nasdaq_uqdf_output_utp_v1_5_display.quote_condition = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.quote_condition = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Ask Size
nasdaq_uqdf_output_utp_v1_5_size_of.ask_size = 4

-- Display: Ask Size
nasdaq_uqdf_output_utp_v1_5_display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_uqdf_output_utp_v1_5_dissect.ask_size = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.ask_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5_display.ask_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
nasdaq_uqdf_output_utp_v1_5_size_of.ask_price = 8

-- Display: Ask Price
nasdaq_uqdf_output_utp_v1_5_display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
translate.ask_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Price
nasdaq_uqdf_output_utp_v1_5_dissect.ask_price = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.ask_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.ask_price(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.ask_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
nasdaq_uqdf_output_utp_v1_5_size_of.bid_size = 4

-- Display: Bid Size
nasdaq_uqdf_output_utp_v1_5_display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_uqdf_output_utp_v1_5_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
nasdaq_uqdf_output_utp_v1_5_size_of.bid_price = 8

-- Display: Bid Price
nasdaq_uqdf_output_utp_v1_5_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
translate.bid_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
nasdaq_uqdf_output_utp_v1_5_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.bid_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.bid_price(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Finra Timestamp
nasdaq_uqdf_output_utp_v1_5_size_of.finra_timestamp = 8

-- Display: Finra Timestamp
nasdaq_uqdf_output_utp_v1_5_display.finra_timestamp = function(value)
  return "Finra Timestamp: "..value
end

-- Dissect: Finra Timestamp
nasdaq_uqdf_output_utp_v1_5_dissect.finra_timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.finra_timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5_display.finra_timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.finra_timestamp, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v1_5_size_of.finra_adf_market_participant_quotation_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v1_5_display.finra_adf_market_participant_quotation_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v1_5_dissect.finra_adf_market_participant_quotation_message_fields = function(buffer, offset, packet, parent, size_of_finra_adf_market_participant_quotation_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  -- Finra Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, finra_timestamp = nasdaq_uqdf_output_utp_v1_5_dissect.finra_timestamp(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5_dissect.symbol(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, bid_price = nasdaq_uqdf_output_utp_v1_5_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = nasdaq_uqdf_output_utp_v1_5_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, ask_price = nasdaq_uqdf_output_utp_v1_5_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = nasdaq_uqdf_output_utp_v1_5_dissect.ask_size(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, quote_condition = nasdaq_uqdf_output_utp_v1_5_dissect.quote_condition(buffer, index, packet, parent)

  -- Finra Market Participant: 4 Byte Ascii String
  index, finra_market_participant = nasdaq_uqdf_output_utp_v1_5_dissect.finra_market_participant(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Adf Market Participant Quotation Message
nasdaq_uqdf_output_utp_v1_5_dissect.finra_adf_market_participant_quotation_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_finra_adf_market_participant_quotation_message = nasdaq_uqdf_output_utp_v1_5_size_of.finra_adf_market_participant_quotation_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.finra_adf_market_participant_quotation_message then
    local range = buffer(offset, size_of_finra_adf_market_participant_quotation_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.finra_adf_market_participant_quotation_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_market_participant_quotation_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.finra_adf_market_participant_quotation_message_fields(buffer, offset, packet, parent, size_of_finra_adf_market_participant_quotation_message)

  return offset + size_of_finra_adf_market_participant_quotation_message
end

-- Size: Ask Adf Mpid
nasdaq_uqdf_output_utp_v1_5_size_of.ask_adf_mpid = 4

-- Display: Ask Adf Mpid
nasdaq_uqdf_output_utp_v1_5_display.ask_adf_mpid = function(value)
  return "Ask Adf Mpid: "..value
end

-- Dissect: Ask Adf Mpid
nasdaq_uqdf_output_utp_v1_5_dissect.ask_adf_mpid = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.ask_adf_mpid
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.ask_adf_mpid(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.ask_adf_mpid, range, value, display)

  return offset + length, value
end

-- Size: Bid Adf Mpid
nasdaq_uqdf_output_utp_v1_5_size_of.bid_adf_mpid = 4

-- Display: Bid Adf Mpid
nasdaq_uqdf_output_utp_v1_5_display.bid_adf_mpid = function(value)
  return "Bid Adf Mpid: "..value
end

-- Dissect: Bid Adf Mpid
nasdaq_uqdf_output_utp_v1_5_dissect.bid_adf_mpid = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.bid_adf_mpid
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.bid_adf_mpid(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.bid_adf_mpid, range, value, display)

  return offset + length, value
end

-- Calculate size of: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v1_5_size_of.finra_adf_mpid_appendage = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.bid_adf_mpid

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.ask_adf_mpid

  return index
end

-- Display: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v1_5_display.finra_adf_mpid_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v1_5_dissect.finra_adf_mpid_appendage_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Adf Mpid: 4 Byte Ascii String
  index, bid_adf_mpid = nasdaq_uqdf_output_utp_v1_5_dissect.bid_adf_mpid(buffer, index, packet, parent)

  -- Ask Adf Mpid: 4 Byte Ascii String
  index, ask_adf_mpid = nasdaq_uqdf_output_utp_v1_5_dissect.ask_adf_mpid(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Adf Mpid Appendage
nasdaq_uqdf_output_utp_v1_5_dissect.finra_adf_mpid_appendage = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.finra_adf_mpid_appendage then
    local length = nasdaq_uqdf_output_utp_v1_5_size_of.finra_adf_mpid_appendage(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_uqdf_output_utp_v1_5_display.finra_adf_mpid_appendage(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_mpid_appendage, range, display)
  end

  return nasdaq_uqdf_output_utp_v1_5_dissect.finra_adf_mpid_appendage_fields(buffer, offset, packet, parent)
end

-- Size: Best Ask Size
nasdaq_uqdf_output_utp_v1_5_size_of.best_ask_size = 4

-- Display: Best Ask Size
nasdaq_uqdf_output_utp_v1_5_display.best_ask_size = function(value)
  return "Best Ask Size: "..value
end

-- Dissect: Best Ask Size
nasdaq_uqdf_output_utp_v1_5_dissect.best_ask_size = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.best_ask_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5_display.best_ask_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.best_ask_size, range, value, display)

  return offset + length, value
end

-- Size: Best Ask Price
nasdaq_uqdf_output_utp_v1_5_size_of.best_ask_price = 8

-- Display: Best Ask Price
nasdaq_uqdf_output_utp_v1_5_display.best_ask_price = function(value)
  return "Best Ask Price: "..value
end

-- Translate: Best Ask Price
translate.best_ask_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Best Ask Price
nasdaq_uqdf_output_utp_v1_5_dissect.best_ask_price = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.best_ask_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.best_ask_price(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.best_ask_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Size: Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5_size_of.best_ask_market_center = 1

-- Display: Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5_display.best_ask_market_center = function(value)
  return "Best Ask Market Center: "..value
end

-- Dissect: Best Ask Market Center
nasdaq_uqdf_output_utp_v1_5_dissect.best_ask_market_center = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.best_ask_market_center
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.best_ask_market_center(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.best_ask_market_center, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Size
nasdaq_uqdf_output_utp_v1_5_size_of.best_bid_size = 4

-- Display: Best Bid Size
nasdaq_uqdf_output_utp_v1_5_display.best_bid_size = function(value)
  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
nasdaq_uqdf_output_utp_v1_5_dissect.best_bid_size = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.best_bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5_display.best_bid_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Price
nasdaq_uqdf_output_utp_v1_5_size_of.best_bid_price = 8

-- Display: Best Bid Price
nasdaq_uqdf_output_utp_v1_5_display.best_bid_price = function(value)
  return "Best Bid Price: "..value
end

-- Translate: Best Bid Price
translate.best_bid_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Best Bid Price
nasdaq_uqdf_output_utp_v1_5_dissect.best_bid_price = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.best_bid_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.best_bid_price(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.best_bid_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5_size_of.best_bid_market_center = 1

-- Display: Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5_display.best_bid_market_center = function(value)
  return "Best Bid Market Center: "..value
end

-- Dissect: Best Bid Market Center
nasdaq_uqdf_output_utp_v1_5_dissect.best_bid_market_center = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.best_bid_market_center
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.best_bid_market_center(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.best_bid_market_center, range, value, display)

  return offset + length, value
end

-- Size: Nbbo Quote Condition
nasdaq_uqdf_output_utp_v1_5_size_of.nbbo_quote_condition = 1

-- Display: Nbbo Quote Condition
nasdaq_uqdf_output_utp_v1_5_display.nbbo_quote_condition = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.nbbo_quote_condition = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.nbbo_quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.nbbo_quote_condition(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.nbbo_quote_condition, range, value, display)

  return offset + length, value
end

-- Calculate size of: Long Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5_size_of.long_form_national_bbo_appendage = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.nbbo_quote_condition

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.best_bid_market_center

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.best_bid_price

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.best_bid_size

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.best_ask_market_center

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.best_ask_price

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.best_ask_size

  return index
end

-- Display: Long Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5_display.long_form_national_bbo_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5_dissect.long_form_national_bbo_appendage_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nbbo Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, nbbo_quote_condition = nasdaq_uqdf_output_utp_v1_5_dissect.nbbo_quote_condition(buffer, index, packet, parent)

  -- Best Bid Market Center: 1 Byte Ascii String
  index, best_bid_market_center = nasdaq_uqdf_output_utp_v1_5_dissect.best_bid_market_center(buffer, index, packet, parent)

  -- Best Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, best_bid_price = nasdaq_uqdf_output_utp_v1_5_dissect.best_bid_price(buffer, index, packet, parent)

  -- Best Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, best_bid_size = nasdaq_uqdf_output_utp_v1_5_dissect.best_bid_size(buffer, index, packet, parent)

  -- Best Ask Market Center: 1 Byte Ascii String
  index, best_ask_market_center = nasdaq_uqdf_output_utp_v1_5_dissect.best_ask_market_center(buffer, index, packet, parent)

  -- Best Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, best_ask_price = nasdaq_uqdf_output_utp_v1_5_dissect.best_ask_price(buffer, index, packet, parent)

  -- Best Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, best_ask_size = nasdaq_uqdf_output_utp_v1_5_dissect.best_ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5_dissect.long_form_national_bbo_appendage = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_form_national_bbo_appendage then
    local length = nasdaq_uqdf_output_utp_v1_5_size_of.long_form_national_bbo_appendage(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_uqdf_output_utp_v1_5_display.long_form_national_bbo_appendage(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.long_form_national_bbo_appendage, range, display)
  end

  return nasdaq_uqdf_output_utp_v1_5_dissect.long_form_national_bbo_appendage_fields(buffer, offset, packet, parent)
end

-- Size: National Best Ask Size Short
nasdaq_uqdf_output_utp_v1_5_size_of.national_best_ask_size_short = 2

-- Display: National Best Ask Size Short
nasdaq_uqdf_output_utp_v1_5_display.national_best_ask_size_short = function(value)
  return "National Best Ask Size Short: "..value
end

-- Dissect: National Best Ask Size Short
nasdaq_uqdf_output_utp_v1_5_dissect.national_best_ask_size_short = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.national_best_ask_size_short
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5_display.national_best_ask_size_short(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_size_short, range, value, display)

  return offset + length, value
end

-- Size: National Best Ask Price Short
nasdaq_uqdf_output_utp_v1_5_size_of.national_best_ask_price_short = 2

-- Display: National Best Ask Price Short
nasdaq_uqdf_output_utp_v1_5_display.national_best_ask_price_short = function(value)
  return "National Best Ask Price Short: "..value
end

-- Translate: National Best Ask Price Short
translate.national_best_ask_price_short = function(raw)
  return raw/100
end

-- Dissect: National Best Ask Price Short
nasdaq_uqdf_output_utp_v1_5_dissect.national_best_ask_price_short = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.national_best_ask_price_short
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.national_best_ask_price_short(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.national_best_ask_price_short(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.national_best_ask_price_short, range, value, display)

  return offset + length, value
end

-- Size: National Best Bid Size Short
nasdaq_uqdf_output_utp_v1_5_size_of.national_best_bid_size_short = 2

-- Display: National Best Bid Size Short
nasdaq_uqdf_output_utp_v1_5_display.national_best_bid_size_short = function(value)
  return "National Best Bid Size Short: "..value
end

-- Dissect: National Best Bid Size Short
nasdaq_uqdf_output_utp_v1_5_dissect.national_best_bid_size_short = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.national_best_bid_size_short
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5_display.national_best_bid_size_short(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_size_short, range, value, display)

  return offset + length, value
end

-- Size: National Best Bid Price Short
nasdaq_uqdf_output_utp_v1_5_size_of.national_best_bid_price_short = 2

-- Display: National Best Bid Price Short
nasdaq_uqdf_output_utp_v1_5_display.national_best_bid_price_short = function(value)
  return "National Best Bid Price Short: "..value
end

-- Translate: National Best Bid Price Short
translate.national_best_bid_price_short = function(raw)
  return raw/100
end

-- Dissect: National Best Bid Price Short
nasdaq_uqdf_output_utp_v1_5_dissect.national_best_bid_price_short = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.national_best_bid_price_short
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.national_best_bid_price_short(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.national_best_bid_price_short(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.national_best_bid_price_short, range, value, display)

  return offset + length, value
end

-- Calculate size of: Short Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5_size_of.short_form_national_bbo_appendage = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.nbbo_quote_condition

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.national_best_bid_market_center

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.national_best_bid_price_short

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.national_best_bid_size_short

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.national_best_ask_market_center

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.national_best_ask_price_short

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.national_best_ask_size_short

  return index
end

-- Display: Short Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5_display.short_form_national_bbo_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5_dissect.short_form_national_bbo_appendage_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nbbo Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, nbbo_quote_condition = nasdaq_uqdf_output_utp_v1_5_dissect.nbbo_quote_condition(buffer, index, packet, parent)

  -- National Best Bid Market Center: 1 Byte Ascii String
  index, national_best_bid_market_center = nasdaq_uqdf_output_utp_v1_5_dissect.national_best_bid_market_center(buffer, index, packet, parent)

  -- National Best Bid Price Short: 2 Byte Unsigned Fixed Width Integer
  index, national_best_bid_price_short = nasdaq_uqdf_output_utp_v1_5_dissect.national_best_bid_price_short(buffer, index, packet, parent)

  -- National Best Bid Size Short: 2 Byte Unsigned Fixed Width Integer
  index, national_best_bid_size_short = nasdaq_uqdf_output_utp_v1_5_dissect.national_best_bid_size_short(buffer, index, packet, parent)

  -- National Best Ask Market Center: 1 Byte Ascii String
  index, national_best_ask_market_center = nasdaq_uqdf_output_utp_v1_5_dissect.national_best_ask_market_center(buffer, index, packet, parent)

  -- National Best Ask Price Short: 2 Byte Unsigned Fixed Width Integer
  index, national_best_ask_price_short = nasdaq_uqdf_output_utp_v1_5_dissect.national_best_ask_price_short(buffer, index, packet, parent)

  -- National Best Ask Size Short: 2 Byte Unsigned Fixed Width Integer
  index, national_best_ask_size_short = nasdaq_uqdf_output_utp_v1_5_dissect.national_best_ask_size_short(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Form National Bbo Appendage
nasdaq_uqdf_output_utp_v1_5_dissect.short_form_national_bbo_appendage = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_form_national_bbo_appendage then
    local length = nasdaq_uqdf_output_utp_v1_5_size_of.short_form_national_bbo_appendage(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_uqdf_output_utp_v1_5_display.short_form_national_bbo_appendage(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.short_form_national_bbo_appendage, range, display)
  end

  return nasdaq_uqdf_output_utp_v1_5_dissect.short_form_national_bbo_appendage_fields(buffer, offset, packet, parent)
end

-- Size: Finra Adf Mpid Appendage Indicator
nasdaq_uqdf_output_utp_v1_5_size_of.finra_adf_mpid_appendage_indicator = 1

-- Display: Finra Adf Mpid Appendage Indicator
nasdaq_uqdf_output_utp_v1_5_display.finra_adf_mpid_appendage_indicator = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.finra_adf_mpid_appendage_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.finra_adf_mpid_appendage_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.finra_adf_mpid_appendage_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.finra_adf_mpid_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Size: Luld National Bbo Indicator
nasdaq_uqdf_output_utp_v1_5_size_of.luld_national_bbo_indicator = 1

-- Display: Luld National Bbo Indicator
nasdaq_uqdf_output_utp_v1_5_display.luld_national_bbo_indicator = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.luld_national_bbo_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.luld_national_bbo_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.luld_national_bbo_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.luld_national_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Size: Nbbo Appendage Indicator
nasdaq_uqdf_output_utp_v1_5_size_of.nbbo_appendage_indicator = 1

-- Display: Nbbo Appendage Indicator
nasdaq_uqdf_output_utp_v1_5_display.nbbo_appendage_indicator = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.nbbo_appendage_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.nbbo_appendage_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.nbbo_appendage_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.nbbo_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Size: Retail Interest Indicator
nasdaq_uqdf_output_utp_v1_5_size_of.retail_interest_indicator = 1

-- Display: Retail Interest Indicator
nasdaq_uqdf_output_utp_v1_5_display.retail_interest_indicator = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.retail_interest_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.retail_interest_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.retail_interest_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.retail_interest_indicator, range, value, display)

  return offset + length, value
end

-- Size: Luld Bbo Indicator
nasdaq_uqdf_output_utp_v1_5_size_of.luld_bbo_indicator = 1

-- Display: Luld Bbo Indicator
nasdaq_uqdf_output_utp_v1_5_display.luld_bbo_indicator = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.luld_bbo_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.luld_bbo_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.luld_bbo_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.luld_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Size: Sip Generated Update
nasdaq_uqdf_output_utp_v1_5_size_of.sip_generated_update = 1

-- Display: Sip Generated Update
nasdaq_uqdf_output_utp_v1_5_display.sip_generated_update = function(value)
  if value == " " then
    return "Sip Generated Update: Originated From The Market Participant (<whitespace>)"
  end
  if value == "E" then
    return "Sip Generated Update: Si Pgenerated Transaction (E)"
  end

  return "Sip Generated Update: Unknown("..value..")"
end

-- Dissect: Sip Generated Update
nasdaq_uqdf_output_utp_v1_5_dissect.sip_generated_update = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.sip_generated_update
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.sip_generated_update(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.sip_generated_update, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Quote Long Form Message
nasdaq_uqdf_output_utp_v1_5_size_of.quote_long_form_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Quote Long Form Message
nasdaq_uqdf_output_utp_v1_5_display.quote_long_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Long Form Message
nasdaq_uqdf_output_utp_v1_5_dissect.quote_long_form_message_fields = function(buffer, offset, packet, parent, size_of_quote_long_form_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  -- Finra Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, finra_timestamp = nasdaq_uqdf_output_utp_v1_5_dissect.finra_timestamp(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nasdaq_uqdf_output_utp_v1_5_dissect.symbol(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, bid_price = nasdaq_uqdf_output_utp_v1_5_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = nasdaq_uqdf_output_utp_v1_5_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, ask_price = nasdaq_uqdf_output_utp_v1_5_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = nasdaq_uqdf_output_utp_v1_5_dissect.ask_size(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, quote_condition = nasdaq_uqdf_output_utp_v1_5_dissect.quote_condition(buffer, index, packet, parent)

  -- Sip Generated Update: 1 Byte Ascii String Enum with 2 values
  index, sip_generated_update = nasdaq_uqdf_output_utp_v1_5_dissect.sip_generated_update(buffer, index, packet, parent)

  -- Luld Bbo Indicator: 1 Byte Ascii String Enum with 4 values
  index, luld_bbo_indicator = nasdaq_uqdf_output_utp_v1_5_dissect.luld_bbo_indicator(buffer, index, packet, parent)

  -- Retail Interest Indicator: 1 Byte Ascii String Enum with 4 values
  index, retail_interest_indicator = nasdaq_uqdf_output_utp_v1_5_dissect.retail_interest_indicator(buffer, index, packet, parent)

  -- Nbbo Appendage Indicator: 1 Byte Ascii String Enum with 5 values
  index, nbbo_appendage_indicator = nasdaq_uqdf_output_utp_v1_5_dissect.nbbo_appendage_indicator(buffer, index, packet, parent)

  -- Luld National Bbo Indicator: 1 Byte Ascii String Enum with 10 values
  index, luld_national_bbo_indicator = nasdaq_uqdf_output_utp_v1_5_dissect.luld_national_bbo_indicator(buffer, index, packet, parent)

  -- Finra Adf Mpid Appendage Indicator: 1 Byte Ascii String Enum with 4 values
  index, finra_adf_mpid_appendage_indicator = nasdaq_uqdf_output_utp_v1_5_dissect.finra_adf_mpid_appendage_indicator(buffer, index, packet, parent)

  -- Runtime optional field exists: Short Form National Bbo Appendage
  local short_form_national_bbo_appendage_exists = nbbo_appendage_indicator == "2"

  -- Runtime optional field: Short Form National Bbo Appendage
  if short_form_national_bbo_appendage_exists then
    index = nasdaq_uqdf_output_utp_v1_5_dissect.short_form_national_bbo_appendage(buffer, index, packet, parent)
  end

  -- Runtime optional field exists: Long Form National Bbo Appendage
  local long_form_national_bbo_appendage_exists = nbbo_appendage_indicator == "3"

  -- Runtime optional field: Long Form National Bbo Appendage
  if long_form_national_bbo_appendage_exists then
    index = nasdaq_uqdf_output_utp_v1_5_dissect.long_form_national_bbo_appendage(buffer, index, packet, parent)
  end

  -- Runtime optional field exists: Finra Adf Mpid Appendage
  local finra_adf_mpid_appendage_exists = finra_adf_mpid_appendage_indicator == "2"

  -- Runtime optional field: Finra Adf Mpid Appendage
  if finra_adf_mpid_appendage_exists then
    index = nasdaq_uqdf_output_utp_v1_5_dissect.finra_adf_mpid_appendage(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Long Form Message
nasdaq_uqdf_output_utp_v1_5_dissect.quote_long_form_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_quote_long_form_message = nasdaq_uqdf_output_utp_v1_5_size_of.quote_long_form_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.quote_long_form_message then
    local range = buffer(offset, size_of_quote_long_form_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.quote_long_form_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.quote_long_form_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.quote_long_form_message_fields(buffer, offset, packet, parent, size_of_quote_long_form_message)

  return offset + size_of_quote_long_form_message
end

-- Size: Ask Size Short
nasdaq_uqdf_output_utp_v1_5_size_of.ask_size_short = 2

-- Display: Ask Size Short
nasdaq_uqdf_output_utp_v1_5_display.ask_size_short = function(value)
  return "Ask Size Short: "..value
end

-- Dissect: Ask Size Short
nasdaq_uqdf_output_utp_v1_5_dissect.ask_size_short = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.ask_size_short
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5_display.ask_size_short(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.ask_size_short, range, value, display)

  return offset + length, value
end

-- Size: Ask Price Short
nasdaq_uqdf_output_utp_v1_5_size_of.ask_price_short = 2

-- Display: Ask Price Short
nasdaq_uqdf_output_utp_v1_5_display.ask_price_short = function(value)
  return "Ask Price Short: "..value
end

-- Translate: Ask Price Short
translate.ask_price_short = function(raw)
  return raw/100
end

-- Dissect: Ask Price Short
nasdaq_uqdf_output_utp_v1_5_dissect.ask_price_short = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.ask_price_short
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.ask_price_short(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.ask_price_short(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Size: Bid Size Short
nasdaq_uqdf_output_utp_v1_5_size_of.bid_size_short = 2

-- Display: Bid Size Short
nasdaq_uqdf_output_utp_v1_5_display.bid_size_short = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
nasdaq_uqdf_output_utp_v1_5_dissect.bid_size_short = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.bid_size_short
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5_display.bid_size_short(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Short
nasdaq_uqdf_output_utp_v1_5_size_of.bid_price_short = 2

-- Display: Bid Price Short
nasdaq_uqdf_output_utp_v1_5_display.bid_price_short = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
translate.bid_price_short = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
nasdaq_uqdf_output_utp_v1_5_dissect.bid_price_short = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.bid_price_short
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.bid_price_short(raw)
  local display = nasdaq_uqdf_output_utp_v1_5_display.bid_price_short(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Size: Symbol Short
nasdaq_uqdf_output_utp_v1_5_size_of.symbol_short = 5

-- Display: Symbol Short
nasdaq_uqdf_output_utp_v1_5_display.symbol_short = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
nasdaq_uqdf_output_utp_v1_5_dissect.symbol_short = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.symbol_short
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.symbol_short(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Quote Short Form Message
nasdaq_uqdf_output_utp_v1_5_size_of.quote_short_form_message = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Quote Short Form Message
nasdaq_uqdf_output_utp_v1_5_display.quote_short_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Short Form Message
nasdaq_uqdf_output_utp_v1_5_dissect.quote_short_form_message_fields = function(buffer, offset, packet, parent, size_of_quote_short_form_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_uqdf_output_utp_v1_5_dissect.message_info(buffer, index, packet, parent)

  -- Symbol Short: 5 Byte Ascii String
  index, symbol_short = nasdaq_uqdf_output_utp_v1_5_dissect.symbol_short(buffer, index, packet, parent)

  -- Bid Price Short: 2 Byte Unsigned Fixed Width Integer
  index, bid_price_short = nasdaq_uqdf_output_utp_v1_5_dissect.bid_price_short(buffer, index, packet, parent)

  -- Bid Size Short: 2 Byte Unsigned Fixed Width Integer
  index, bid_size_short = nasdaq_uqdf_output_utp_v1_5_dissect.bid_size_short(buffer, index, packet, parent)

  -- Ask Price Short: 2 Byte Unsigned Fixed Width Integer
  index, ask_price_short = nasdaq_uqdf_output_utp_v1_5_dissect.ask_price_short(buffer, index, packet, parent)

  -- Ask Size Short: 2 Byte Unsigned Fixed Width Integer
  index, ask_size_short = nasdaq_uqdf_output_utp_v1_5_dissect.ask_size_short(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, quote_condition = nasdaq_uqdf_output_utp_v1_5_dissect.quote_condition(buffer, index, packet, parent)

  -- Sip Generated Update: 1 Byte Ascii String Enum with 2 values
  index, sip_generated_update = nasdaq_uqdf_output_utp_v1_5_dissect.sip_generated_update(buffer, index, packet, parent)

  -- Luld Bbo Indicator: 1 Byte Ascii String Enum with 4 values
  index, luld_bbo_indicator = nasdaq_uqdf_output_utp_v1_5_dissect.luld_bbo_indicator(buffer, index, packet, parent)

  -- Retail Interest Indicator: 1 Byte Ascii String Enum with 4 values
  index, retail_interest_indicator = nasdaq_uqdf_output_utp_v1_5_dissect.retail_interest_indicator(buffer, index, packet, parent)

  -- Nbbo Appendage Indicator: 1 Byte Ascii String Enum with 5 values
  index, nbbo_appendage_indicator = nasdaq_uqdf_output_utp_v1_5_dissect.nbbo_appendage_indicator(buffer, index, packet, parent)

  -- Luld National Bbo Indicator: 1 Byte Ascii String Enum with 10 values
  index, luld_national_bbo_indicator = nasdaq_uqdf_output_utp_v1_5_dissect.luld_national_bbo_indicator(buffer, index, packet, parent)

  -- Runtime optional field exists: Short Form National Bbo Appendage
  local short_form_national_bbo_appendage_exists = nbbo_appendage_indicator == "2"

  -- Runtime optional field: Short Form National Bbo Appendage
  if short_form_national_bbo_appendage_exists then
    index = nasdaq_uqdf_output_utp_v1_5_dissect.short_form_national_bbo_appendage(buffer, index, packet, parent)
  end

  -- Runtime optional field exists: Long Form National Bbo Appendage
  local long_form_national_bbo_appendage_exists = nbbo_appendage_indicator == "3"

  -- Runtime optional field: Long Form National Bbo Appendage
  if long_form_national_bbo_appendage_exists then
    index = nasdaq_uqdf_output_utp_v1_5_dissect.long_form_national_bbo_appendage(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Short Form Message
nasdaq_uqdf_output_utp_v1_5_dissect.quote_short_form_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_quote_short_form_message = nasdaq_uqdf_output_utp_v1_5_size_of.quote_short_form_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.quote_short_form_message then
    local range = buffer(offset, size_of_quote_short_form_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.quote_short_form_message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.quote_short_form_message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.quote_short_form_message_fields(buffer, offset, packet, parent, size_of_quote_short_form_message)

  return offset + size_of_quote_short_form_message
end

-- Calculate runtime size of: Quote Payload
nasdaq_uqdf_output_utp_v1_5_size_of.quote_payload = function(buffer, offset, quote_message_type)
  -- Size of Quote Short Form Message
  if quote_message_type == "E" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.quote_short_form_message(buffer, offset)
  end
  -- Size of Quote Long Form Message
  if quote_message_type == "F" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.quote_long_form_message(buffer, offset)
  end
  -- Size of Finra Adf Market Participant Quotation Message
  if quote_message_type == "M" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.finra_adf_market_participant_quotation_message(buffer, offset)
  end

  return 0
end

-- Display: Quote Payload
nasdaq_uqdf_output_utp_v1_5_display.quote_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Quote Payload
nasdaq_uqdf_output_utp_v1_5_dissect.quote_payload_branches = function(buffer, offset, packet, parent, quote_message_type)
  -- Dissect Quote Short Form Message
  if quote_message_type == "E" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.quote_short_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Long Form Message
  if quote_message_type == "F" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.quote_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Finra Adf Market Participant Quotation Message
  if quote_message_type == "M" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.finra_adf_market_participant_quotation_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Quote Payload
nasdaq_uqdf_output_utp_v1_5_dissect.quote_payload = function(buffer, offset, packet, parent, quote_message_type)
  if not show.quote_payload then
    return nasdaq_uqdf_output_utp_v1_5_dissect.quote_payload_branches(buffer, offset, packet, parent, quote_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_uqdf_output_utp_v1_5_size_of.quote_payload(buffer, offset, quote_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_uqdf_output_utp_v1_5_display.quote_payload(buffer, packet, parent)
  local element = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.quote_payload, range, display)

  return nasdaq_uqdf_output_utp_v1_5_dissect.quote_payload_branches(buffer, offset, packet, parent, quote_message_type)
end

-- Size: Quote Message Type
nasdaq_uqdf_output_utp_v1_5_size_of.quote_message_type = 1

-- Display: Quote Message Type
nasdaq_uqdf_output_utp_v1_5_display.quote_message_type = function(value)
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
nasdaq_uqdf_output_utp_v1_5_dissect.quote_message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.quote_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.quote_message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.quote_message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Quote
nasdaq_uqdf_output_utp_v1_5_size_of.quote = function(buffer, offset)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 2
end

-- Display: Quote
nasdaq_uqdf_output_utp_v1_5_display.quote = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote
nasdaq_uqdf_output_utp_v1_5_dissect.quote_fields = function(buffer, offset, packet, parent, size_of_quote)
  local index = offset

  -- Quote Message Type: 1 Byte Ascii String Enum with 3 values
  index, quote_message_type = nasdaq_uqdf_output_utp_v1_5_dissect.quote_message_type(buffer, index, packet, parent)

  -- Quote Payload: Runtime Type with 3 branches
  index = nasdaq_uqdf_output_utp_v1_5_dissect.quote_payload(buffer, index, packet, parent, quote_message_type)

  return index
end

-- Dissect: Quote
nasdaq_uqdf_output_utp_v1_5_dissect.quote = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_quote = nasdaq_uqdf_output_utp_v1_5_size_of.quote(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.quote then
    local range = buffer(offset, size_of_quote)
    local display = nasdaq_uqdf_output_utp_v1_5_display.quote(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.quote, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.quote_fields(buffer, offset, packet, parent, size_of_quote)

  return offset + size_of_quote
end

-- Calculate runtime size of: Payload
nasdaq_uqdf_output_utp_v1_5_size_of.payload = function(buffer, offset, message_category)
  -- Size of Quote
  if message_category == "Q" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.quote(buffer, offset)
  end
  -- Size of Administrative
  if message_category == "A" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.administrative(buffer, offset)
  end
  -- Size of Control
  if message_category == "C" then
    return nasdaq_uqdf_output_utp_v1_5_size_of.control(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_uqdf_output_utp_v1_5_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_uqdf_output_utp_v1_5_dissect.payload_branches = function(buffer, offset, packet, parent, message_category)
  -- Dissect Quote
  if message_category == "Q" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.quote(buffer, offset, packet, parent)
  end
  -- Dissect Administrative
  if message_category == "A" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.administrative(buffer, offset, packet, parent)
  end
  -- Dissect Control
  if message_category == "C" then
    return nasdaq_uqdf_output_utp_v1_5_dissect.control(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_uqdf_output_utp_v1_5_dissect.payload = function(buffer, offset, packet, parent, message_category)
  if not show.payload then
    return nasdaq_uqdf_output_utp_v1_5_dissect.payload_branches(buffer, offset, packet, parent, message_category)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_uqdf_output_utp_v1_5_size_of.payload(buffer, offset, message_category)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_uqdf_output_utp_v1_5_display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.payload, range, display)

  return nasdaq_uqdf_output_utp_v1_5_dissect.payload_branches(buffer, offset, packet, parent, message_category)
end

-- Size: Message Category
nasdaq_uqdf_output_utp_v1_5_size_of.message_category = 1

-- Display: Message Category
nasdaq_uqdf_output_utp_v1_5_display.message_category = function(value)
  return "Message Category: "..value
end

-- Dissect: Message Category
nasdaq_uqdf_output_utp_v1_5_dissect.message_category = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.message_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.message_category(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.message_category, range, value, display)

  return offset + length, value
end

-- Size: Version
nasdaq_uqdf_output_utp_v1_5_size_of.version = 1

-- Display: Version
nasdaq_uqdf_output_utp_v1_5_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_uqdf_output_utp_v1_5_dissect.version = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5_display.version(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Message Length
nasdaq_uqdf_output_utp_v1_5_size_of.message_length = 2

-- Display: Message Length
nasdaq_uqdf_output_utp_v1_5_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_uqdf_output_utp_v1_5_dissect.message_length = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5_display.message_length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nasdaq_uqdf_output_utp_v1_5_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.message_length

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.version

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.message_category

  return index
end

-- Display: Message Header
nasdaq_uqdf_output_utp_v1_5_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_uqdf_output_utp_v1_5_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_uqdf_output_utp_v1_5_dissect.message_length(buffer, index, packet, parent)

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = nasdaq_uqdf_output_utp_v1_5_dissect.version(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String
  index, message_category = nasdaq_uqdf_output_utp_v1_5_dissect.message_category(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_uqdf_output_utp_v1_5_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = nasdaq_uqdf_output_utp_v1_5_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_uqdf_output_utp_v1_5_display.message_header(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.message_header, range, display)
  end

  return nasdaq_uqdf_output_utp_v1_5_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Message
nasdaq_uqdf_output_utp_v1_5_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
nasdaq_uqdf_output_utp_v1_5_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = nasdaq_uqdf_output_utp_v1_5_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 3 branches
  index = nasdaq_uqdf_output_utp_v1_5_dissect.payload(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
nasdaq_uqdf_output_utp_v1_5_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = nasdaq_uqdf_output_utp_v1_5_display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.message, range, display)
  end

  nasdaq_uqdf_output_utp_v1_5_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Count
nasdaq_uqdf_output_utp_v1_5_size_of.count = 2

-- Display: Count
nasdaq_uqdf_output_utp_v1_5_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_uqdf_output_utp_v1_5_dissect.count = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_uqdf_output_utp_v1_5_display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
nasdaq_uqdf_output_utp_v1_5_size_of.sequence = 8

-- Display: Sequence
nasdaq_uqdf_output_utp_v1_5_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_uqdf_output_utp_v1_5_dissect.sequence = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_uqdf_output_utp_v1_5_display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_uqdf_output_utp_v1_5_size_of.session = 10

-- Display: Session
nasdaq_uqdf_output_utp_v1_5_display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_uqdf_output_utp_v1_5_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_uqdf_output_utp_v1_5_size_of.session
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_uqdf_output_utp_v1_5_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_uqdf_output_utp_v1_5.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_uqdf_output_utp_v1_5_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.session

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.sequence

  index = index + nasdaq_uqdf_output_utp_v1_5_size_of.count

  return index
end

-- Display: Packet Header
nasdaq_uqdf_output_utp_v1_5_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_uqdf_output_utp_v1_5_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_uqdf_output_utp_v1_5_dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_uqdf_output_utp_v1_5_dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_uqdf_output_utp_v1_5_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_uqdf_output_utp_v1_5_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = nasdaq_uqdf_output_utp_v1_5_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_uqdf_output_utp_v1_5_display.packet_header(buffer, packet, parent)
    parent = parent:add(nasdaq_uqdf_output_utp_v1_5.fields.packet_header, range, display)
  end

  return nasdaq_uqdf_output_utp_v1_5_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
nasdaq_uqdf_output_utp_v1_5_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_uqdf_output_utp_v1_5_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index = nasdaq_uqdf_output_utp_v1_5_dissect.message(buffer, index, packet, parent, size_of_message)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_uqdf_output_utp_v1_5.init()
end

-- Dissector for Nasdaq Uqdf Output Utp 1.5
function nasdaq_uqdf_output_utp_v1_5.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_uqdf_output_utp_v1_5.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_uqdf_output_utp_v1_5, buffer(), nasdaq_uqdf_output_utp_v1_5.description, "("..buffer:len().." Bytes)")
  return nasdaq_uqdf_output_utp_v1_5_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_uqdf_output_utp_v1_5)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_uqdf_output_utp_v1_5_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Uqdf Output Utp 1.5
local function nasdaq_uqdf_output_utp_v1_5_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_uqdf_output_utp_v1_5_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_uqdf_output_utp_v1_5
  nasdaq_uqdf_output_utp_v1_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Uqdf Output Utp 1.5
nasdaq_uqdf_output_utp_v1_5:register_heuristic("udp", nasdaq_uqdf_output_utp_v1_5_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
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
-- This script was generated by the Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
