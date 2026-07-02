-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Utp Snapshot Utp 3.0 Protocol
local omi_nasdaq_utp_snapshot_utp_v3_0 = Proto("Omi.Nasdaq.Utp.Snapshot.Utp.v3.0", "Nasdaq Utp Snapshot Utp 3.0")

-- Protocol table
local nasdaq_utp_snapshot_utp_v3_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Utp Snapshot Utp 3.0 Fields
omi_nasdaq_utp_snapshot_utp_v3_0.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "nasdaq.utp.snapshot.utp.v3.0.acceptedsequencenumber", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.accepted_session = ProtoField.new("Accepted Session", "nasdaq.utp.snapshot.utp.v3.0.acceptedsession", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.action_time = ProtoField.new("Action Time", "nasdaq.utp.snapshot.utp.v3.0.actiontime", ftypes.UINT64)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.adf_timestamp = ProtoField.new("Adf Timestamp", "nasdaq.utp.snapshot.utp.v3.0.adftimestamp", ftypes.UINT64)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.administrative_message = ProtoField.new("Administrative Message", "nasdaq.utp.snapshot.utp.v3.0.administrativemessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "nasdaq.utp.snapshot.utp.v3.0.administrativemessagetype", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.ask_adf_mpid = ProtoField.new("Ask Adf Mpid", "nasdaq.utp.snapshot.utp.v3.0.askadfmpid", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.utp.snapshot.utp.v3.0.askprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.ask_size = ProtoField.new("Ask Size", "nasdaq.utp.snapshot.utp.v3.0.asksize", ftypes.UINT32)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.utp.snapshot.utp.v3.0.authenticity", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bid_adf_mpid = ProtoField.new("Bid Adf Mpid", "nasdaq.utp.snapshot.utp.v3.0.bidadfmpid", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.utp.snapshot.utp.v3.0.bidprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bid_size = ProtoField.new("Bid Size", "nasdaq.utp.snapshot.utp.v3.0.bidsize", ftypes.UINT32)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_appendage_indicator = ProtoField.new("Bolo Appendage Indicator", "nasdaq.utp.snapshot.utp.v3.0.boloappendageindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_appendage_mpid_form = ProtoField.new("Bolo Appendage Mpid Form", "nasdaq.utp.snapshot.utp.v3.0.boloappendagempidform", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_ask_price = ProtoField.new("Bolo Ask Price", "nasdaq.utp.snapshot.utp.v3.0.boloaskprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_ask_size = ProtoField.new("Bolo Ask Size", "nasdaq.utp.snapshot.utp.v3.0.boloasksize", ftypes.UINT16)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_ask_market_center = ProtoField.new("Bolo Best Ask Market Center", "nasdaq.utp.snapshot.utp.v3.0.bolobestaskmarketcenter", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_ask_market_participant_identifier = ProtoField.new("Bolo Best Ask Market Participant Identifier", "nasdaq.utp.snapshot.utp.v3.0.bolobestaskmarketparticipantidentifier", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_bid_market_center = ProtoField.new("Bolo Best Bid Market Center", "nasdaq.utp.snapshot.utp.v3.0.bolobestbidmarketcenter", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_bid_market_participant_identifier = ProtoField.new("Bolo Best Bid Market Participant Identifier", "nasdaq.utp.snapshot.utp.v3.0.bolobestbidmarketparticipantidentifier", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_bid_price = ProtoField.new("Bolo Bid Price", "nasdaq.utp.snapshot.utp.v3.0.bolobidprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_bid_size = ProtoField.new("Bolo Bid Size", "nasdaq.utp.snapshot.utp.v3.0.bolobidsize", ftypes.UINT16)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_down_price = ProtoField.new("Collar Down Price", "nasdaq.utp.snapshot.utp.v3.0.collardownprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_extension_indicator = ProtoField.new("Collar Extension Indicator", "nasdaq.utp.snapshot.utp.v3.0.collarextensionindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_reference_price = ProtoField.new("Collar Reference Price", "nasdaq.utp.snapshot.utp.v3.0.collarreferenceprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_up_price = ProtoField.new("Collar Up Price", "nasdaq.utp.snapshot.utp.v3.0.collarupprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.consolidated_prior_day_close_price = ProtoField.new("Consolidated Prior Day Close Price", "nasdaq.utp.snapshot.utp.v3.0.consolidatedpriordaycloseprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.control_message = ProtoField.new("Control Message", "nasdaq.utp.snapshot.utp.v3.0.controlmessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.control_message_type = ProtoField.new("Control Message Type", "nasdaq.utp.snapshot.utp.v3.0.controlmessagetype", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.etp_indicator = ProtoField.new("Etp Indicator", "nasdaq.utp.snapshot.utp.v3.0.etpindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.utp.snapshot.utp.v3.0.financialstatusindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.finra_adf_mpid_appendage = ProtoField.new("Finra Adf Mpid Appendage", "nasdaq.utp.snapshot.utp.v3.0.finraadfmpidappendage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.finra_adf_mpid_appendage_indicator = ProtoField.new("Finra Adf Mpid Appendage Indicator", "nasdaq.utp.snapshot.utp.v3.0.finraadfmpidappendageindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.finra_adf_timestamp = ProtoField.new("Finra Adf Timestamp", "nasdaq.utp.snapshot.utp.v3.0.finraadftimestamp", ftypes.UINT64)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.halt_reason = ProtoField.new("Halt Reason", "nasdaq.utp.snapshot.utp.v3.0.haltreason", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_name = ProtoField.new("Issue Name", "nasdaq.utp.snapshot.utp.v3.0.issuename", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_subtype = ProtoField.new("Issue Subtype", "nasdaq.utp.snapshot.utp.v3.0.issuesubtype", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_type = ProtoField.new("Issue Type", "nasdaq.utp.snapshot.utp.v3.0.issuetype", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.limit_down_price = ProtoField.new("Limit Down Price", "nasdaq.utp.snapshot.utp.v3.0.limitdownprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.limit_up_price = ProtoField.new("Limit Up Price", "nasdaq.utp.snapshot.utp.v3.0.limitupprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.listing_market_official_prior_day_close_price = ProtoField.new("Listing Market Official Prior Day Close Price", "nasdaq.utp.snapshot.utp.v3.0.listingmarketofficialpriordaycloseprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_bbo_indicator = ProtoField.new("Luld Bbo Indicator", "nasdaq.utp.snapshot.utp.v3.0.luldbboindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_national_bbo_indicator = ProtoField.new("Luld National Bbo Indicator", "nasdaq.utp.snapshot.utp.v3.0.luldnationalbboindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_price_band_effective_time = ProtoField.new("Luld Price Band Effective Time", "nasdaq.utp.snapshot.utp.v3.0.luldpricebandeffectivetime", ftypes.UINT64)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_price_band_indicator = ProtoField.new("Luld Price Band Indicator", "nasdaq.utp.snapshot.utp.v3.0.luldpricebandindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_center_identifier = ProtoField.new("Market Center Identifier", "nasdaq.utp.snapshot.utp.v3.0.marketcenteridentifier", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_center_originator = ProtoField.new("Market Center Originator", "nasdaq.utp.snapshot.utp.v3.0.marketcenteroriginator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_tier = ProtoField.new("Market Tier", "nasdaq.utp.snapshot.utp.v3.0.markettier", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.message_category = ProtoField.new("Message Category", "nasdaq.utp.snapshot.utp.v3.0.messagecategory", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.utp.snapshot.utp.v3.0.messageheader", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.mpi_tick = ProtoField.new("Mpi Tick", "nasdaq.utp.snapshot.utp.v3.0.mpitick", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.mwcb_level_1 = ProtoField.new("Mwcb Level 1", "nasdaq.utp.snapshot.utp.v3.0.mwcblevel1", ftypes.UINT64)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "nasdaq.utp.snapshot.utp.v3.0.mwcblevel2", ftypes.UINT64)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "nasdaq.utp.snapshot.utp.v3.0.mwcblevel3", ftypes.UINT64)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_bbo_appendage_longform = ProtoField.new("National Bbo Appendage Longform", "nasdaq.utp.snapshot.utp.v3.0.nationalbboappendagelongform", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_ask_market_center = ProtoField.new("National Best Ask Market Center", "nasdaq.utp.snapshot.utp.v3.0.nationalbestaskmarketcenter", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_ask_price = ProtoField.new("National Best Ask Price", "nasdaq.utp.snapshot.utp.v3.0.nationalbestaskprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_ask_size = ProtoField.new("National Best Ask Size", "nasdaq.utp.snapshot.utp.v3.0.nationalbestasksize", ftypes.UINT32)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_bid_market_center = ProtoField.new("National Best Bid Market Center", "nasdaq.utp.snapshot.utp.v3.0.nationalbestbidmarketcenter", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_bid_price = ProtoField.new("National Best Bid Price", "nasdaq.utp.snapshot.utp.v3.0.nationalbestbidprice", ftypes.DOUBLE)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_bid_size = ProtoField.new("National Best Bid Size", "nasdaq.utp.snapshot.utp.v3.0.nationalbestbidsize", ftypes.UINT32)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.nbbo_appendage_indicator = ProtoField.new("Nbbo Appendage Indicator", "nasdaq.utp.snapshot.utp.v3.0.nbboappendageindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.nbbo_quote_condition = ProtoField.new("Nbbo Quote Condition", "nasdaq.utp.snapshot.utp.v3.0.nbboquotecondition", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.new_issue_indicator = ProtoField.new("New Issue Indicator", "nasdaq.utp.snapshot.utp.v3.0.newissueindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.odd_lot_attachment_count = ProtoField.new("Odd Lot Attachment Count", "nasdaq.utp.snapshot.utp.v3.0.oddlotattachmentcount", ftypes.UINT16)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.odd_lot_attachment_type = ProtoField.new("Odd Lot Attachment Type", "nasdaq.utp.snapshot.utp.v3.0.oddlotattachmenttype", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.old_symbol = ProtoField.new("Old Symbol", "nasdaq.utp.snapshot.utp.v3.0.oldsymbol", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.packet = ProtoField.new("Packet", "nasdaq.utp.snapshot.utp.v3.0.packet", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.utp.snapshot.utp.v3.0.packetlength", ftypes.UINT16)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.packet_type = ProtoField.new("Packet Type", "nasdaq.utp.snapshot.utp.v3.0.packettype", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.participant_token = ProtoField.new("Participant Token", "nasdaq.utp.snapshot.utp.v3.0.participanttoken", ftypes.UINT64)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.password = ProtoField.new("Password", "nasdaq.utp.snapshot.utp.v3.0.password", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.utp.snapshot.utp.v3.0.quotecondition", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.quote_message = ProtoField.new("Quote Message", "nasdaq.utp.snapshot.utp.v3.0.quotemessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.quote_message_type = ProtoField.new("Quote Message Type", "nasdaq.utp.snapshot.utp.v3.0.quotemessagetype", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.reason_for_the_trading_action = ProtoField.new("Reason For The Trading Action", "nasdaq.utp.snapshot.utp.v3.0.reasonforthetradingaction", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.utp.snapshot.utp.v3.0.regshoaction", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.utp.snapshot.utp.v3.0.rejectreasoncode", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.utp.snapshot.utp.v3.0.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.utp.snapshot.utp.v3.0.requestedsession", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.retail_interest_indicator = ProtoField.new("Retail Interest Indicator", "nasdaq.utp.snapshot.utp.v3.0.retailinterestindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.utp.snapshot.utp.v3.0.roundlotsize", ftypes.UINT16)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.utp.snapshot.utp.v3.0.sequencenumber", ftypes.UINT64)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.utp.snapshot.utp.v3.0.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.sip_generated_update_flag = ProtoField.new("Sip Generated Update Flag", "nasdaq.utp.snapshot.utp.v3.0.sipgeneratedupdateflag", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.sip_timestamp = ProtoField.new("Sip Timestamp", "nasdaq.utp.snapshot.utp.v3.0.siptimestamp", ftypes.UINT64)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.sub_market_center_id = ProtoField.new("Sub Market Center Id", "nasdaq.utp.snapshot.utp.v3.0.submarketcenterid", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.symbol = ProtoField.new("Symbol", "nasdaq.utp.snapshot.utp.v3.0.symbol", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.tcp_packet_header = ProtoField.new("Tcp Packet Header", "nasdaq.utp.snapshot.utp.v3.0.tcppacketheader", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.text = ProtoField.new("Text", "nasdaq.utp.snapshot.utp.v3.0.text", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.timestamp_1 = ProtoField.new("Timestamp 1", "nasdaq.utp.snapshot.utp.v3.0.timestamp1", ftypes.UINT64)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.trading_action_code = ProtoField.new("Trading Action Code", "nasdaq.utp.snapshot.utp.v3.0.tradingactioncode", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.trading_action_sequence_number = ProtoField.new("Trading Action Sequence Number", "nasdaq.utp.snapshot.utp.v3.0.tradingactionsequencenumber", ftypes.UINT32)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.trading_state = ProtoField.new("Trading State", "nasdaq.utp.snapshot.utp.v3.0.tradingstate", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.username = ProtoField.new("Username", "nasdaq.utp.snapshot.utp.v3.0.username", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.version = ProtoField.new("Version", "nasdaq.utp.snapshot.utp.v3.0.version", ftypes.UINT8)

-- Nasdaq Utp Utp Snapshot 3.0 Application Messages
omi_nasdaq_utp_snapshot_utp_v3_0.fields.auction_collar_message = ProtoField.new("Auction Collar Message", "nasdaq.utp.snapshot.utp.v3.0.auctioncollarmessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.cross_sro_trading_action_message = ProtoField.new("Cross Sro Trading Action Message", "nasdaq.utp.snapshot.utp.v3.0.crosssrotradingactionmessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.end_of_day_message = ProtoField.new("End Of Day Message", "nasdaq.utp.snapshot.utp.v3.0.endofdaymessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.end_of_transmissions_message = ProtoField.new("End Of Transmissions Message", "nasdaq.utp.snapshot.utp.v3.0.endoftransmissionsmessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.enhanced_issue_symbol_directory_message = ProtoField.new("Enhanced Issue Symbol Directory Message", "nasdaq.utp.snapshot.utp.v3.0.enhancedissuesymboldirectorymessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_symbol_directory_message = ProtoField.new("Issue Symbol Directory Message", "nasdaq.utp.snapshot.utp.v3.0.issuesymboldirectorymessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.limit_up_limit_down_price_band_message = ProtoField.new("Limit Up Limit Down Price Band Message", "nasdaq.utp.snapshot.utp.v3.0.limituplimitdownpricebandmessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_center_trading_action_message = ProtoField.new("Market Center Trading Action Message", "nasdaq.utp.snapshot.utp.v3.0.marketcentertradingactionmessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_session_close_message = ProtoField.new("Market Session Close Message", "nasdaq.utp.snapshot.utp.v3.0.marketsessionclosemessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_session_open_message = ProtoField.new("Market Session Open Message", "nasdaq.utp.snapshot.utp.v3.0.marketsessionopenmessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_wide_circuit_breaker_decline_level_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Message", "nasdaq.utp.snapshot.utp.v3.0.marketwidecircuitbreakerdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.odd_lot_quote_message_long_form = ProtoField.new("Odd Lot Quote Message Long Form", "nasdaq.utp.snapshot.utp.v3.0.oddlotquotemessagelongform", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.utp.snapshot.utp.v3.0.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.utp.snapshot.utp.v3.0.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.snapshot_sequence_message = ProtoField.new("Snapshot Sequence Message", "nasdaq.utp.snapshot.utp.v3.0.snapshotsequencemessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "nasdaq.utp.snapshot.utp.v3.0.startofdaymessage", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.utp_combined_quote_message_long_form = ProtoField.new("Utp Combined Quote Message Long Form", "nasdaq.utp.snapshot.utp.v3.0.utpcombinedquotemessagelongform", ftypes.STRING)

-- Nasdaq Utp Utp Snapshot 3.0 Session Messages
omi_nasdaq_utp_snapshot_utp_v3_0.fields.client_heartbeat_packet = ProtoField.new("Client Heartbeat Packet", "nasdaq.utp.snapshot.utp.v3.0.clientheartbeatpacket", ftypes.BYTES)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.utp.snapshot.utp.v3.0.debugpacket", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.end_of_session_packet = ProtoField.new("End Of Session Packet", "nasdaq.utp.snapshot.utp.v3.0.endofsessionpacket", ftypes.BYTES)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.utp.snapshot.utp.v3.0.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.utp.snapshot.utp.v3.0.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.utp.snapshot.utp.v3.0.loginrequestpacket", ftypes.STRING)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.logout_request_packet = ProtoField.new("Logout Request Packet", "nasdaq.utp.snapshot.utp.v3.0.logoutrequestpacket", ftypes.BYTES)
omi_nasdaq_utp_snapshot_utp_v3_0.fields.server_heartbeat_packet = ProtoField.new("Server Heartbeat Packet", "nasdaq.utp.snapshot.utp.v3.0.serverheartbeatpacket", ftypes.BYTES)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq Utp Snapshot Utp 3.0 Element Dissection Options
show.administrative_message = true
show.application_messages = true
show.bolo_appendage_mpid_form = true
show.control_message = true
show.session_messages = true
show.finra_adf_mpid_appendage = true
show.message_header = true
show.national_bbo_appendage_longform = true
show.packet = true
show.quote_message = true
show.tcp_packet_header = true

-- Register Nasdaq Utp Snapshot Utp 3.0 Show Options
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_administrative_message = Pref.bool("Show Administrative Message", show.administrative_message, "Parse and add Administrative Message to protocol tree")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_bolo_appendage_mpid_form = Pref.bool("Show Bolo Appendage Mpid Form", show.bolo_appendage_mpid_form, "Parse and add Bolo Appendage Mpid Form to protocol tree")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_control_message = Pref.bool("Show Control Message", show.control_message, "Parse and add Control Message to protocol tree")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_finra_adf_mpid_appendage = Pref.bool("Show Finra Adf Mpid Appendage", show.finra_adf_mpid_appendage, "Parse and add Finra Adf Mpid Appendage to protocol tree")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_national_bbo_appendage_longform = Pref.bool("Show National Bbo Appendage Longform", show.national_bbo_appendage_longform, "Parse and add National Bbo Appendage Longform to protocol tree")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_quote_message = Pref.bool("Show Quote Message", show.quote_message, "Parse and add Quote Message to protocol tree")
omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_tcp_packet_header = Pref.bool("Show Tcp Packet Header", show.tcp_packet_header, "Parse and add Tcp Packet Header to protocol tree")


-- Handle changed preferences
function omi_nasdaq_utp_snapshot_utp_v3_0.prefs_changed()

  -- Check if preferences have changed
  if show.administrative_message ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_administrative_message then
    show.administrative_message = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_administrative_message
  end
  if show.application_messages ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_application_messages
  end
  if show.bolo_appendage_mpid_form ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_bolo_appendage_mpid_form then
    show.bolo_appendage_mpid_form = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_bolo_appendage_mpid_form
  end
  if show.control_message ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_control_message then
    show.control_message = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_control_message
  end
  if show.finra_adf_mpid_appendage ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_finra_adf_mpid_appendage then
    show.finra_adf_mpid_appendage = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_finra_adf_mpid_appendage
  end
  if show.message_header ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_message_header then
    show.message_header = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_message_header
  end
  if show.national_bbo_appendage_longform ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_national_bbo_appendage_longform then
    show.national_bbo_appendage_longform = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_national_bbo_appendage_longform
  end
  if show.packet ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_packet then
    show.packet = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_packet
  end
  if show.quote_message ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_quote_message then
    show.quote_message = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_quote_message
  end
  if show.session_messages ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_session_messages
  end
  if show.tcp_packet_header ~= omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_tcp_packet_header then
    show.tcp_packet_header = omi_nasdaq_utp_snapshot_utp_v3_0.prefs.show_tcp_packet_header
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
-- Nasdaq Utp Snapshot Utp 3.0 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
nasdaq_utp_snapshot_utp_v3_0.accepted_session = {}

-- Size: Accepted Session
nasdaq_utp_snapshot_utp_v3_0.accepted_session.size = 10

-- Display: Accepted Session
nasdaq_utp_snapshot_utp_v3_0.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
nasdaq_utp_snapshot_utp_v3_0.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.accepted_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Action Time
nasdaq_utp_snapshot_utp_v3_0.action_time = {}

-- Size: Action Time
nasdaq_utp_snapshot_utp_v3_0.action_time.size = 8

-- Display: Action Time
nasdaq_utp_snapshot_utp_v3_0.action_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Action Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Action Time
nasdaq_utp_snapshot_utp_v3_0.action_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.action_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.action_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.action_time, range, value, display)

  return offset + length, value
end

-- Adf Timestamp
nasdaq_utp_snapshot_utp_v3_0.adf_timestamp = {}

-- Size: Adf Timestamp
nasdaq_utp_snapshot_utp_v3_0.adf_timestamp.size = 8

-- Display: Adf Timestamp
nasdaq_utp_snapshot_utp_v3_0.adf_timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Adf Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Adf Timestamp
nasdaq_utp_snapshot_utp_v3_0.adf_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.adf_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.adf_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.adf_timestamp, range, value, display)

  return offset + length, value
end

-- Administrative Message Type
nasdaq_utp_snapshot_utp_v3_0.administrative_message_type = {}

-- Size: Administrative Message Type
nasdaq_utp_snapshot_utp_v3_0.administrative_message_type.size = 1

-- Display: Administrative Message Type
nasdaq_utp_snapshot_utp_v3_0.administrative_message_type.display = function(value)
  return "Administrative Message Type: "..value
end

-- Dissect: Administrative Message Type
nasdaq_utp_snapshot_utp_v3_0.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Ask Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid = {}

-- Size: Ask Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid.size = 4

-- Display: Ask Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid.display = function(value)
  return "Ask Adf Mpid: "..value
end

-- Dissect: Ask Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.ask_adf_mpid, range, value, display)

  return offset + length, value
end

-- Ask Price
nasdaq_utp_snapshot_utp_v3_0.ask_price = {}

-- Size: Ask Price
nasdaq_utp_snapshot_utp_v3_0.ask_price.size = 8

-- Display: Ask Price
nasdaq_utp_snapshot_utp_v3_0.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
nasdaq_utp_snapshot_utp_v3_0.ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Price
nasdaq_utp_snapshot_utp_v3_0.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.ask_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Size
nasdaq_utp_snapshot_utp_v3_0.ask_size = {}

-- Size: Ask Size
nasdaq_utp_snapshot_utp_v3_0.ask_size.size = 4

-- Display: Ask Size
nasdaq_utp_snapshot_utp_v3_0.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nasdaq_utp_snapshot_utp_v3_0.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_utp_snapshot_utp_v3_0.authenticity = {}

-- Size: Authenticity
nasdaq_utp_snapshot_utp_v3_0.authenticity.size = 1

-- Display: Authenticity
nasdaq_utp_snapshot_utp_v3_0.authenticity.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Bid Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid = {}

-- Size: Bid Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid.size = 4

-- Display: Bid Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid.display = function(value)
  return "Bid Adf Mpid: "..value
end

-- Dissect: Bid Adf Mpid
nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bid_adf_mpid, range, value, display)

  return offset + length, value
end

-- Bid Price
nasdaq_utp_snapshot_utp_v3_0.bid_price = {}

-- Size: Bid Price
nasdaq_utp_snapshot_utp_v3_0.bid_price.size = 8

-- Display: Bid Price
nasdaq_utp_snapshot_utp_v3_0.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
nasdaq_utp_snapshot_utp_v3_0.bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
nasdaq_utp_snapshot_utp_v3_0.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.bid_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
nasdaq_utp_snapshot_utp_v3_0.bid_size = {}

-- Size: Bid Size
nasdaq_utp_snapshot_utp_v3_0.bid_size.size = 4

-- Display: Bid Size
nasdaq_utp_snapshot_utp_v3_0.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nasdaq_utp_snapshot_utp_v3_0.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bolo Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator = {}

-- Size: Bolo Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.size = 1

-- Display: Bolo Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Bolo Ask Price
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price = {}

-- Size: Bolo Ask Price
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.size = 8

-- Display: Bolo Ask Price
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.display = function(value)
  return "Bolo Ask Price: "..value
end

-- Translate: Bolo Ask Price
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bolo Ask Price
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_ask_price, range, value, display)

  return offset + length, value
end

-- Bolo Ask Size
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size = {}

-- Size: Bolo Ask Size
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size.size = 2

-- Display: Bolo Ask Size
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size.display = function(value)
  return "Bolo Ask Size: "..value
end

-- Dissect: Bolo Ask Size
nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_ask_size, range, value, display)

  return offset + length, value
end

-- Bolo Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center = {}

-- Size: Bolo Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center.size = 1

-- Display: Bolo Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center.display = function(value)
  return "Bolo Best Ask Market Center: "..value
end

-- Dissect: Bolo Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_ask_market_center, range, value, display)

  return offset + length, value
end

-- Bolo Best Ask Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier = {}

-- Size: Bolo Best Ask Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier.size = 4

-- Display: Bolo Best Ask Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier.display = function(value)
  return "Bolo Best Ask Market Participant Identifier: "..value
end

-- Dissect: Bolo Best Ask Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_ask_market_participant_identifier, range, value, display)

  return offset + length, value
end

-- Bolo Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center = {}

-- Size: Bolo Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center.size = 1

-- Display: Bolo Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center.display = function(value)
  return "Bolo Best Bid Market Center: "..value
end

-- Dissect: Bolo Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_bid_market_center, range, value, display)

  return offset + length, value
end

-- Bolo Best Bid Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier = {}

-- Size: Bolo Best Bid Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier.size = 4

-- Display: Bolo Best Bid Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier.display = function(value)
  return "Bolo Best Bid Market Participant Identifier: "..value
end

-- Dissect: Bolo Best Bid Market Participant Identifier
nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_best_bid_market_participant_identifier, range, value, display)

  return offset + length, value
end

-- Bolo Bid Price
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price = {}

-- Size: Bolo Bid Price
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.size = 8

-- Display: Bolo Bid Price
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.display = function(value)
  return "Bolo Bid Price: "..value
end

-- Translate: Bolo Bid Price
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bolo Bid Price
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_bid_price, range, value, display)

  return offset + length, value
end

-- Bolo Bid Size
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size = {}

-- Size: Bolo Bid Size
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size.size = 2

-- Display: Bolo Bid Size
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size.display = function(value)
  return "Bolo Bid Size: "..value
end

-- Dissect: Bolo Bid Size
nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_bid_size, range, value, display)

  return offset + length, value
end

-- Collar Down Price
nasdaq_utp_snapshot_utp_v3_0.collar_down_price = {}

-- Size: Collar Down Price
nasdaq_utp_snapshot_utp_v3_0.collar_down_price.size = 8

-- Display: Collar Down Price
nasdaq_utp_snapshot_utp_v3_0.collar_down_price.display = function(value)
  return "Collar Down Price: "..value
end

-- Translate: Collar Down Price
nasdaq_utp_snapshot_utp_v3_0.collar_down_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Down Price
nasdaq_utp_snapshot_utp_v3_0.collar_down_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.collar_down_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.collar_down_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.collar_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_down_price, range, value, display)

  return offset + length, value
end

-- Collar Extension Indicator
nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator = {}

-- Size: Collar Extension Indicator
nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator.size = 1

-- Display: Collar Extension Indicator
nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator.display = function(value)
  return "Collar Extension Indicator: "..value
end

-- Dissect: Collar Extension Indicator
nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_extension_indicator, range, value, display)

  return offset + length, value
end

-- Collar Reference Price
nasdaq_utp_snapshot_utp_v3_0.collar_reference_price = {}

-- Size: Collar Reference Price
nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.size = 8

-- Display: Collar Reference Price
nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.display = function(value)
  return "Collar Reference Price: "..value
end

-- Translate: Collar Reference Price
nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Reference Price
nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_reference_price, range, value, display)

  return offset + length, value
end

-- Collar Up Price
nasdaq_utp_snapshot_utp_v3_0.collar_up_price = {}

-- Size: Collar Up Price
nasdaq_utp_snapshot_utp_v3_0.collar_up_price.size = 8

-- Display: Collar Up Price
nasdaq_utp_snapshot_utp_v3_0.collar_up_price.display = function(value)
  return "Collar Up Price: "..value
end

-- Translate: Collar Up Price
nasdaq_utp_snapshot_utp_v3_0.collar_up_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Up Price
nasdaq_utp_snapshot_utp_v3_0.collar_up_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.collar_up_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.collar_up_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.collar_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.collar_up_price, range, value, display)

  return offset + length, value
end

-- Consolidated Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price = {}

-- Size: Consolidated Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.size = 8

-- Display: Consolidated Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.display = function(value)
  return "Consolidated Prior Day Close Price: "..value
end

-- Translate: Consolidated Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.consolidated_prior_day_close_price, range, value, display)

  return offset + length, value
end

-- Control Message Type
nasdaq_utp_snapshot_utp_v3_0.control_message_type = {}

-- Size: Control Message Type
nasdaq_utp_snapshot_utp_v3_0.control_message_type.size = 1

-- Display: Control Message Type
nasdaq_utp_snapshot_utp_v3_0.control_message_type.display = function(value)
  return "Control Message Type: "..value
end

-- Dissect: Control Message Type
nasdaq_utp_snapshot_utp_v3_0.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Etp Indicator
nasdaq_utp_snapshot_utp_v3_0.etp_indicator = {}

-- Size: Etp Indicator
nasdaq_utp_snapshot_utp_v3_0.etp_indicator.size = 1

-- Display: Etp Indicator
nasdaq_utp_snapshot_utp_v3_0.etp_indicator.display = function(value)
  return "Etp Indicator: "..value
end

-- Dissect: Etp Indicator
nasdaq_utp_snapshot_utp_v3_0.etp_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.etp_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.etp_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.etp_indicator, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Finra Adf Mpid Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator = {}

-- Size: Finra Adf Mpid Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator.size = 1

-- Display: Finra Adf Mpid Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.finra_adf_mpid_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Finra Adf Timestamp
nasdaq_utp_snapshot_utp_v3_0.finra_adf_timestamp = {}

-- Size: Finra Adf Timestamp
nasdaq_utp_snapshot_utp_v3_0.finra_adf_timestamp.size = 8

-- Display: Finra Adf Timestamp
nasdaq_utp_snapshot_utp_v3_0.finra_adf_timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Finra Adf Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Finra Adf Timestamp
nasdaq_utp_snapshot_utp_v3_0.finra_adf_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.finra_adf_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.finra_adf_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.finra_adf_timestamp, range, value, display)

  return offset + length, value
end

-- Halt Reason
nasdaq_utp_snapshot_utp_v3_0.halt_reason = {}

-- Size: Halt Reason
nasdaq_utp_snapshot_utp_v3_0.halt_reason.size = 6

-- Display: Halt Reason
nasdaq_utp_snapshot_utp_v3_0.halt_reason.display = function(value)
  return "Halt Reason: "..value
end

-- Dissect: Halt Reason
nasdaq_utp_snapshot_utp_v3_0.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.halt_reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Issue Name
nasdaq_utp_snapshot_utp_v3_0.issue_name = {}

-- Size: Issue Name
nasdaq_utp_snapshot_utp_v3_0.issue_name.size = 30

-- Display: Issue Name
nasdaq_utp_snapshot_utp_v3_0.issue_name.display = function(value)
  return "Issue Name: "..value
end

-- Dissect: Issue Name
nasdaq_utp_snapshot_utp_v3_0.issue_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.issue_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_name, range, value, display)

  return offset + length, value
end

-- Issue Subtype
nasdaq_utp_snapshot_utp_v3_0.issue_subtype = {}

-- Size: Issue Subtype
nasdaq_utp_snapshot_utp_v3_0.issue_subtype.size = 2

-- Display: Issue Subtype
nasdaq_utp_snapshot_utp_v3_0.issue_subtype.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.issue_subtype.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.issue_subtype.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.issue_subtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_subtype, range, value, display)

  return offset + length, value
end

-- Issue Type
nasdaq_utp_snapshot_utp_v3_0.issue_type = {}

-- Size: Issue Type
nasdaq_utp_snapshot_utp_v3_0.issue_type.size = 1

-- Display: Issue Type
nasdaq_utp_snapshot_utp_v3_0.issue_type.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.issue_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.issue_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.issue_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_type, range, value, display)

  return offset + length, value
end

-- Limit Down Price
nasdaq_utp_snapshot_utp_v3_0.limit_down_price = {}

-- Size: Limit Down Price
nasdaq_utp_snapshot_utp_v3_0.limit_down_price.size = 8

-- Display: Limit Down Price
nasdaq_utp_snapshot_utp_v3_0.limit_down_price.display = function(value)
  return "Limit Down Price: "..value
end

-- Translate: Limit Down Price
nasdaq_utp_snapshot_utp_v3_0.limit_down_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Down Price
nasdaq_utp_snapshot_utp_v3_0.limit_down_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.limit_down_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.limit_down_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.limit_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.limit_down_price, range, value, display)

  return offset + length, value
end

-- Limit Up Price
nasdaq_utp_snapshot_utp_v3_0.limit_up_price = {}

-- Size: Limit Up Price
nasdaq_utp_snapshot_utp_v3_0.limit_up_price.size = 8

-- Display: Limit Up Price
nasdaq_utp_snapshot_utp_v3_0.limit_up_price.display = function(value)
  return "Limit Up Price: "..value
end

-- Translate: Limit Up Price
nasdaq_utp_snapshot_utp_v3_0.limit_up_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Up Price
nasdaq_utp_snapshot_utp_v3_0.limit_up_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.limit_up_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.limit_up_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.limit_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.limit_up_price, range, value, display)

  return offset + length, value
end

-- Listing Market Official Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price = {}

-- Size: Listing Market Official Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.size = 8

-- Display: Listing Market Official Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.display = function(value)
  return "Listing Market Official Prior Day Close Price: "..value
end

-- Translate: Listing Market Official Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Listing Market Official Prior Day Close Price
nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.listing_market_official_prior_day_close_price, range, value, display)

  return offset + length, value
end

-- Luld Bbo Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator = {}

-- Size: Luld Bbo Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator.size = 1

-- Display: Luld Bbo Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Luld National Bbo Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator = {}

-- Size: Luld National Bbo Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator.size = 1

-- Display: Luld National Bbo Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_national_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Luld Price Band Effective Time
nasdaq_utp_snapshot_utp_v3_0.luld_price_band_effective_time = {}

-- Size: Luld Price Band Effective Time
nasdaq_utp_snapshot_utp_v3_0.luld_price_band_effective_time.size = 8

-- Display: Luld Price Band Effective Time
nasdaq_utp_snapshot_utp_v3_0.luld_price_band_effective_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Luld Price Band Effective Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Luld Price Band Effective Time
nasdaq_utp_snapshot_utp_v3_0.luld_price_band_effective_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.luld_price_band_effective_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.luld_price_band_effective_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_price_band_effective_time, range, value, display)

  return offset + length, value
end

-- Luld Price Band Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator = {}

-- Size: Luld Price Band Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator.size = 1

-- Display: Luld Price Band Indicator
nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.luld_price_band_indicator, range, value, display)

  return offset + length, value
end

-- Market Center Identifier
nasdaq_utp_snapshot_utp_v3_0.market_center_identifier = {}

-- Size: Market Center Identifier
nasdaq_utp_snapshot_utp_v3_0.market_center_identifier.size = 1

-- Display: Market Center Identifier
nasdaq_utp_snapshot_utp_v3_0.market_center_identifier.display = function(value)
  return "Market Center Identifier: "..value
end

-- Dissect: Market Center Identifier
nasdaq_utp_snapshot_utp_v3_0.market_center_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.market_center_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.market_center_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_center_identifier, range, value, display)

  return offset + length, value
end

-- Market Center Originator
nasdaq_utp_snapshot_utp_v3_0.market_center_originator = {}

-- Size: Market Center Originator
nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size = 1

-- Display: Market Center Originator
nasdaq_utp_snapshot_utp_v3_0.market_center_originator.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_center_originator, range, value, display)

  return offset + length, value
end

-- Market Tier
nasdaq_utp_snapshot_utp_v3_0.market_tier = {}

-- Size: Market Tier
nasdaq_utp_snapshot_utp_v3_0.market_tier.size = 1

-- Display: Market Tier
nasdaq_utp_snapshot_utp_v3_0.market_tier.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.market_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.market_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.market_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_tier, range, value, display)

  return offset + length, value
end

-- Message Category
nasdaq_utp_snapshot_utp_v3_0.message_category = {}

-- Size: Message Category
nasdaq_utp_snapshot_utp_v3_0.message_category.size = 1

-- Display: Message Category
nasdaq_utp_snapshot_utp_v3_0.message_category.display = function(value)
  return "Message Category: "..value
end

-- Dissect: Message Category
nasdaq_utp_snapshot_utp_v3_0.message_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.message_category, range, value, display)

  return offset + length, value
end

-- Mpi Tick
nasdaq_utp_snapshot_utp_v3_0.mpi_tick = {}

-- Size: Mpi Tick
nasdaq_utp_snapshot_utp_v3_0.mpi_tick.size = 1

-- Display: Mpi Tick
nasdaq_utp_snapshot_utp_v3_0.mpi_tick.display = function(value)
  if value == "P" then
    return "Mpi Tick: Penny Mpi (P)"
  end
  if value == "H" then
    return "Mpi Tick: Half Penny Mpi Effective Nov 2026 Per Sec Mandate (H)"
  end

  return "Mpi Tick: Unknown("..value..")"
end

-- Dissect: Mpi Tick
nasdaq_utp_snapshot_utp_v3_0.mpi_tick.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.mpi_tick.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.mpi_tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.mpi_tick, range, value, display)

  return offset + length, value
end

-- Mwcb Level 1
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1 = {}

-- Size: Mwcb Level 1
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1.size = 8

-- Display: Mwcb Level 1
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1.display = function(value)
  return "Mwcb Level 1: "..value
end

-- Dissect: Mwcb Level 1
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.mwcb_level_1, range, value, display)

  return offset + length, value
end

-- Mwcb Level 2
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2 = {}

-- Size: Mwcb Level 2
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2.size = 8

-- Display: Mwcb Level 2
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2.display = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Mwcb Level 3
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3 = {}

-- Size: Mwcb Level 3
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3.size = 8

-- Display: Mwcb Level 3
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3.display = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- National Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center = {}

-- Size: National Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center.size = 1

-- Display: National Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center.display = function(value)
  return "National Best Ask Market Center: "..value
end

-- Dissect: National Best Ask Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_ask_market_center, range, value, display)

  return offset + length, value
end

-- National Best Ask Price
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price = {}

-- Size: National Best Ask Price
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.size = 8

-- Display: National Best Ask Price
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.display = function(value)
  return "National Best Ask Price: "..value
end

-- Translate: National Best Ask Price
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Ask Price
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_ask_price, range, value, display)

  return offset + length, value
end

-- National Best Ask Size
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size = {}

-- Size: National Best Ask Size
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size.size = 4

-- Display: National Best Ask Size
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size.display = function(value)
  return "National Best Ask Size: "..value
end

-- Dissect: National Best Ask Size
nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_ask_size, range, value, display)

  return offset + length, value
end

-- National Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center = {}

-- Size: National Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center.size = 1

-- Display: National Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center.display = function(value)
  return "National Best Bid Market Center: "..value
end

-- Dissect: National Best Bid Market Center
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_bid_market_center, range, value, display)

  return offset + length, value
end

-- National Best Bid Price
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price = {}

-- Size: National Best Bid Price
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.size = 8

-- Display: National Best Bid Price
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.display = function(value)
  return "National Best Bid Price: "..value
end

-- Translate: National Best Bid Price
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Bid Price
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.translate(raw)
  local display = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_bid_price, range, value, display)

  return offset + length, value
end

-- National Best Bid Size
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size = {}

-- Size: National Best Bid Size
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size.size = 4

-- Display: National Best Bid Size
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size.display = function(value)
  return "National Best Bid Size: "..value
end

-- Dissect: National Best Bid Size
nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_best_bid_size, range, value, display)

  return offset + length, value
end

-- Nbbo Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator = {}

-- Size: Nbbo Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.size = 1

-- Display: Nbbo Appendage Indicator
nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.nbbo_appendage_indicator, range, value, display)

  return offset + length, value
end

-- Nbbo Quote Condition
nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition = {}

-- Size: Nbbo Quote Condition
nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition.size = 1

-- Display: Nbbo Quote Condition
nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition.display = function(value)
  return "Nbbo Quote Condition: "..value
end

-- Dissect: Nbbo Quote Condition
nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.nbbo_quote_condition, range, value, display)

  return offset + length, value
end

-- New Issue Indicator
nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator = {}

-- Size: New Issue Indicator
nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator.size = 1

-- Display: New Issue Indicator
nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator.display = function(value)
  return "New Issue Indicator: "..value
end

-- Dissect: New Issue Indicator
nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.new_issue_indicator, range, value, display)

  return offset + length, value
end

-- Odd Lot Attachment Count
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count = {}

-- Size: Odd Lot Attachment Count
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.size = 2

-- Display: Odd Lot Attachment Count
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.display = function(value)
  return "Odd Lot Attachment Count: "..value
end

-- Dissect: Odd Lot Attachment Count
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.odd_lot_attachment_count, range, value, display)

  return offset + length, value
end

-- Odd Lot Attachment Type
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type = {}

-- Size: Odd Lot Attachment Type
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.size = 1

-- Display: Odd Lot Attachment Type
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.odd_lot_attachment_type, range, value, display)

  return offset + length, value
end

-- Old Symbol
nasdaq_utp_snapshot_utp_v3_0.old_symbol = {}

-- Size: Old Symbol
nasdaq_utp_snapshot_utp_v3_0.old_symbol.size = 11

-- Display: Old Symbol
nasdaq_utp_snapshot_utp_v3_0.old_symbol.display = function(value)
  return "Old Symbol: "..value
end

-- Dissect: Old Symbol
nasdaq_utp_snapshot_utp_v3_0.old_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.old_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.old_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.old_symbol, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_utp_snapshot_utp_v3_0.packet_length = {}

-- Size: Packet Length
nasdaq_utp_snapshot_utp_v3_0.packet_length.size = 2

-- Display: Packet Length
nasdaq_utp_snapshot_utp_v3_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_utp_snapshot_utp_v3_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
nasdaq_utp_snapshot_utp_v3_0.packet_type = {}

-- Size: Packet Type
nasdaq_utp_snapshot_utp_v3_0.packet_type.size = 1

-- Display: Packet Type
nasdaq_utp_snapshot_utp_v3_0.packet_type.display = function(value)
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
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
nasdaq_utp_snapshot_utp_v3_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Participant Token
nasdaq_utp_snapshot_utp_v3_0.participant_token = {}

-- Size: Participant Token
nasdaq_utp_snapshot_utp_v3_0.participant_token.size = 8

-- Display: Participant Token
nasdaq_utp_snapshot_utp_v3_0.participant_token.display = function(value)
  return "Participant Token: "..value
end

-- Dissect: Participant Token
nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.participant_token.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.participant_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.participant_token, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_utp_snapshot_utp_v3_0.password = {}

-- Size: Password
nasdaq_utp_snapshot_utp_v3_0.password.size = 10

-- Display: Password
nasdaq_utp_snapshot_utp_v3_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_utp_snapshot_utp_v3_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.password, range, value, display)

  return offset + length, value
end

-- Quote Condition
nasdaq_utp_snapshot_utp_v3_0.quote_condition = {}

-- Size: Quote Condition
nasdaq_utp_snapshot_utp_v3_0.quote_condition.size = 1

-- Display: Quote Condition
nasdaq_utp_snapshot_utp_v3_0.quote_condition.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Quote Message Type
nasdaq_utp_snapshot_utp_v3_0.quote_message_type = {}

-- Size: Quote Message Type
nasdaq_utp_snapshot_utp_v3_0.quote_message_type.size = 1

-- Display: Quote Message Type
nasdaq_utp_snapshot_utp_v3_0.quote_message_type.display = function(value)
  return "Quote Message Type: "..value
end

-- Dissect: Quote Message Type
nasdaq_utp_snapshot_utp_v3_0.quote_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.quote_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.quote_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.quote_message_type, range, value, display)

  return offset + length, value
end

-- Reason For The Trading Action
nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action = {}

-- Size: Reason For The Trading Action
nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action.size = 6

-- Display: Reason For The Trading Action
nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.reason_for_the_trading_action, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_utp_snapshot_utp_v3_0.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_utp_snapshot_utp_v3_0.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_utp_snapshot_utp_v3_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_utp_snapshot_utp_v3_0.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_utp_snapshot_utp_v3_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_utp_snapshot_utp_v3_0.requested_session = {}

-- Size: Requested Session
nasdaq_utp_snapshot_utp_v3_0.requested_session.size = 10

-- Display: Requested Session
nasdaq_utp_snapshot_utp_v3_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_utp_snapshot_utp_v3_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Retail Interest Indicator
nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator = {}

-- Size: Retail Interest Indicator
nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator.size = 1

-- Display: Retail Interest Indicator
nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.retail_interest_indicator, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_utp_snapshot_utp_v3_0.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_utp_snapshot_utp_v3_0.round_lot_size.size = 2

-- Display: Round Lot Size
nasdaq_utp_snapshot_utp_v3_0.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_utp_snapshot_utp_v3_0.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_utp_snapshot_utp_v3_0.sequence_number = {}

-- Size: Sequence Number
nasdaq_utp_snapshot_utp_v3_0.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_utp_snapshot_utp_v3_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_utp_snapshot_utp_v3_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Sip Generated Update Flag
nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag = {}

-- Size: Sip Generated Update Flag
nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.size = 1

-- Display: Sip Generated Update Flag
nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.display = function(value)
  if value == " " then
    return "Sip Generated Update Flag: Transaction Originated From Market Participant (<whitespace>)"
  end
  if value == "E" then
    return "Sip Generated Update Flag: Si Pgenerated Transaction Eg Price Band Change (E)"
  end

  return "Sip Generated Update Flag: Unknown("..value..")"
end

-- Dissect: Sip Generated Update Flag
nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.sip_generated_update_flag, range, value, display)

  return offset + length, value
end

-- Sip Timestamp
nasdaq_utp_snapshot_utp_v3_0.sip_timestamp = {}

-- Size: Sip Timestamp
nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size = 8

-- Display: Sip Timestamp
nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Sip Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sip Timestamp
nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.sip_timestamp, range, value, display)

  return offset + length, value
end

-- Sub Market Center Id
nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id = {}

-- Size: Sub Market Center Id
nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size = 1

-- Display: Sub Market Center Id
nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.sub_market_center_id, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_utp_snapshot_utp_v3_0.symbol = {}

-- Size: Symbol
nasdaq_utp_snapshot_utp_v3_0.symbol.size = 11

-- Display: Symbol
nasdaq_utp_snapshot_utp_v3_0.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_utp_snapshot_utp_v3_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_utp_snapshot_utp_v3_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_utp_snapshot_utp_v3_0.text = {}

-- Size: Text
nasdaq_utp_snapshot_utp_v3_0.text.size = 1

-- Display: Text
nasdaq_utp_snapshot_utp_v3_0.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_utp_snapshot_utp_v3_0.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp 1
nasdaq_utp_snapshot_utp_v3_0.timestamp_1 = {}

-- Size: Timestamp 1
nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size = 8

-- Display: Timestamp 1
nasdaq_utp_snapshot_utp_v3_0.timestamp_1.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp 1: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp 1
nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.timestamp_1, range, value, display)

  return offset + length, value
end

-- Trading Action Code
nasdaq_utp_snapshot_utp_v3_0.trading_action_code = {}

-- Size: Trading Action Code
nasdaq_utp_snapshot_utp_v3_0.trading_action_code.size = 1

-- Display: Trading Action Code
nasdaq_utp_snapshot_utp_v3_0.trading_action_code.display = function(value)
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
nasdaq_utp_snapshot_utp_v3_0.trading_action_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.trading_action_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.trading_action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.trading_action_code, range, value, display)

  return offset + length, value
end

-- Trading Action Sequence Number
nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number = {}

-- Size: Trading Action Sequence Number
nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.size = 4

-- Display: Trading Action Sequence Number
nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.display = function(value)
  return "Trading Action Sequence Number: "..value
end

-- Dissect: Trading Action Sequence Number
nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.trading_action_sequence_number, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_utp_snapshot_utp_v3_0.trading_state = {}

-- Size: Trading State
nasdaq_utp_snapshot_utp_v3_0.trading_state.size = 1

-- Display: Trading State
nasdaq_utp_snapshot_utp_v3_0.trading_state.display = function(value)
  if value == "H" then
    return "Trading State: Halted (H)"
  end
  if value == "T" then
    return "Trading State: Trading (T)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_utp_snapshot_utp_v3_0.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_utp_snapshot_utp_v3_0.username = {}

-- Size: Username
nasdaq_utp_snapshot_utp_v3_0.username.size = 6

-- Display: Username
nasdaq_utp_snapshot_utp_v3_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_utp_snapshot_utp_v3_0.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utp_snapshot_utp_v3_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.username, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_utp_snapshot_utp_v3_0.version = {}

-- Size: Version
nasdaq_utp_snapshot_utp_v3_0.version.size = 1

-- Display: Version
nasdaq_utp_snapshot_utp_v3_0.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_utp_snapshot_utp_v3_0.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utp_snapshot_utp_v3_0.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utp_snapshot_utp_v3_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Utp Snapshot Utp 3.0
-----------------------------------------------------------------------

-- Login Rejected Packet
nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.size =
  nasdaq_utp_snapshot_utp_v3_0.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_utp_snapshot_utp_v3_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.size =
  nasdaq_utp_snapshot_utp_v3_0.accepted_session.size + 
  nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number.size

-- Display: Login Accepted Packet
nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = nasdaq_utp_snapshot_utp_v3_0.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = nasdaq_utp_snapshot_utp_v3_0.accepted_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
nasdaq_utp_snapshot_utp_v3_0.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_utp_snapshot_utp_v3_0.login_request_packet.size =
  nasdaq_utp_snapshot_utp_v3_0.username.size + 
  nasdaq_utp_snapshot_utp_v3_0.password.size + 
  nasdaq_utp_snapshot_utp_v3_0.requested_session.size + 
  nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_utp_snapshot_utp_v3_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_utp_snapshot_utp_v3_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_utp_snapshot_utp_v3_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_utp_snapshot_utp_v3_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_utp_snapshot_utp_v3_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_utp_snapshot_utp_v3_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_utp_snapshot_utp_v3_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_utp_snapshot_utp_v3_0.debug_packet = {}

-- Size: Debug Packet
nasdaq_utp_snapshot_utp_v3_0.debug_packet.size =
  nasdaq_utp_snapshot_utp_v3_0.text.size

-- Display: Debug Packet
nasdaq_utp_snapshot_utp_v3_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_utp_snapshot_utp_v3_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_utp_snapshot_utp_v3_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_utp_snapshot_utp_v3_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Bolo Appendage Mpid Form
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form = {}

-- Size: Bolo Appendage Mpid Form
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.size =
  nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier.size

-- Display: Bolo Appendage Mpid Form
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bolo Appendage Mpid Form
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bolo Best Bid Market Center: byte
  index, bolo_best_bid_market_center = nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_center.dissect(buffer, index, packet, parent)

  -- Bolo Bid Price: long
  index, bolo_bid_price = nasdaq_utp_snapshot_utp_v3_0.bolo_bid_price.dissect(buffer, index, packet, parent)

  -- Bolo Bid Size: short
  index, bolo_bid_size = nasdaq_utp_snapshot_utp_v3_0.bolo_bid_size.dissect(buffer, index, packet, parent)

  -- Bolo Best Ask Market Center: byte
  index, bolo_best_ask_market_center = nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_center.dissect(buffer, index, packet, parent)

  -- Bolo Ask Price: long
  index, bolo_ask_price = nasdaq_utp_snapshot_utp_v3_0.bolo_ask_price.dissect(buffer, index, packet, parent)

  -- Bolo Ask Size: short
  index, bolo_ask_size = nasdaq_utp_snapshot_utp_v3_0.bolo_ask_size.dissect(buffer, index, packet, parent)

  -- Bolo Best Bid Market Participant Identifier: byte[]
  index, bolo_best_bid_market_participant_identifier = nasdaq_utp_snapshot_utp_v3_0.bolo_best_bid_market_participant_identifier.dissect(buffer, index, packet, parent)

  -- Bolo Best Ask Market Participant Identifier: byte[]
  index, bolo_best_ask_market_participant_identifier = nasdaq_utp_snapshot_utp_v3_0.bolo_best_ask_market_participant_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bolo Appendage Mpid Form
nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.dissect = function(buffer, offset, packet, parent)
  if show.bolo_appendage_mpid_form then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.bolo_appendage_mpid_form, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.fields(buffer, offset, packet, parent)
  end
end

-- Odd Lot Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form = {}

-- Size: Odd Lot Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.adf_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.size + 
  nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.size

-- Display: Odd Lot Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Adf Timestamp: long
  index, adf_timestamp = nasdaq_utp_snapshot_utp_v3_0.adf_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Sip Generated Update Flag: byte
  index, sip_generated_update_flag = nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.dissect(buffer, index, packet, parent)

  -- Bolo Appendage Indicator: byte
  index, bolo_appendage_indicator = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Type: byte
  index, odd_lot_attachment_type = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Count: short
  index, odd_lot_attachment_count = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.dissect(buffer, index, packet, parent)

  -- Bolo Appendage Mpid Form: Struct of 8 fields
  index, bolo_appendage_mpid_form = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Odd Lot Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.odd_lot_quote_message_long_form, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Finra Adf Mpid Appendage
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage = {}

-- Size: Finra Adf Mpid Appendage
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.size =
  nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid.size + 
  nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid.size

-- Display: Finra Adf Mpid Appendage
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Adf Mpid Appendage
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Adf Mpid: byte[]
  index, bid_adf_mpid = nasdaq_utp_snapshot_utp_v3_0.bid_adf_mpid.dissect(buffer, index, packet, parent)

  -- Ask Adf Mpid: byte[]
  index, ask_adf_mpid = nasdaq_utp_snapshot_utp_v3_0.ask_adf_mpid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Adf Mpid Appendage
nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.dissect = function(buffer, offset, packet, parent)
  if show.finra_adf_mpid_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.finra_adf_mpid_appendage, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.fields(buffer, offset, packet, parent)
  end
end

-- National Bbo Appendage Longform
nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_longform = {}

-- Size: National Bbo Appendage Longform
nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_longform.size =
  nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition.size + 
  nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center.size + 
  nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size.size + 
  nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center.size + 
  nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size.size

-- Display: National Bbo Appendage Longform
nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_longform.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: National Bbo Appendage Longform
nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_longform.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nbbo Quote Condition: byte
  index, nbbo_quote_condition = nasdaq_utp_snapshot_utp_v3_0.nbbo_quote_condition.dissect(buffer, index, packet, parent)

  -- National Best Bid Market Center: byte
  index, national_best_bid_market_center = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_market_center.dissect(buffer, index, packet, parent)

  -- National Best Bid Price: long
  index, national_best_bid_price = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_price.dissect(buffer, index, packet, parent)

  -- National Best Bid Size: int
  index, national_best_bid_size = nasdaq_utp_snapshot_utp_v3_0.national_best_bid_size.dissect(buffer, index, packet, parent)

  -- National Best Ask Market Center: byte
  index, national_best_ask_market_center = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_market_center.dissect(buffer, index, packet, parent)

  -- National Best Ask Price: long
  index, national_best_ask_price = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_price.dissect(buffer, index, packet, parent)

  -- National Best Ask Size: int
  index, national_best_ask_size = nasdaq_utp_snapshot_utp_v3_0.national_best_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: National Bbo Appendage Longform
nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_longform.dissect = function(buffer, offset, packet, parent)
  if show.national_bbo_appendage_longform then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.national_bbo_appendage_longform, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_longform.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_longform.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_longform.fields(buffer, offset, packet, parent)
  end
end

-- Utp Combined Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form = {}

-- Size: Utp Combined Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.finra_adf_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.bid_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.bid_size.size + 
  nasdaq_utp_snapshot_utp_v3_0.ask_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.ask_size.size + 
  nasdaq_utp_snapshot_utp_v3_0.quote_condition.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.size + 
  nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.size + 
  nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.size + 
  nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_longform.size + 
  nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.size + 
  nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.size

-- Display: Utp Combined Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Utp Combined Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Finra Adf Timestamp: long
  index, finra_adf_timestamp = nasdaq_utp_snapshot_utp_v3_0.finra_adf_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price: long
  index, bid_price = nasdaq_utp_snapshot_utp_v3_0.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: int
  index, bid_size = nasdaq_utp_snapshot_utp_v3_0.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: long
  index, ask_price = nasdaq_utp_snapshot_utp_v3_0.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: int
  index, ask_size = nasdaq_utp_snapshot_utp_v3_0.ask_size.dissect(buffer, index, packet, parent)

  -- Quote Condition: byte
  index, quote_condition = nasdaq_utp_snapshot_utp_v3_0.quote_condition.dissect(buffer, index, packet, parent)

  -- Sip Generated Update Flag: byte
  index, sip_generated_update_flag = nasdaq_utp_snapshot_utp_v3_0.sip_generated_update_flag.dissect(buffer, index, packet, parent)

  -- Luld Bbo Indicator: byte
  index, luld_bbo_indicator = nasdaq_utp_snapshot_utp_v3_0.luld_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: byte
  index, retail_interest_indicator = nasdaq_utp_snapshot_utp_v3_0.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Nbbo Appendage Indicator: byte
  index, nbbo_appendage_indicator = nasdaq_utp_snapshot_utp_v3_0.nbbo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Luld National Bbo Indicator: byte
  index, luld_national_bbo_indicator = nasdaq_utp_snapshot_utp_v3_0.luld_national_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Finra Adf Mpid Appendage Indicator: byte
  index, finra_adf_mpid_appendage_indicator = nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Bolo Appendage Indicator: byte
  index, bolo_appendage_indicator = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_indicator.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Type: byte
  index, odd_lot_attachment_type = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_type.dissect(buffer, index, packet, parent)

  -- Odd Lot Attachment Count: short
  index, odd_lot_attachment_count = nasdaq_utp_snapshot_utp_v3_0.odd_lot_attachment_count.dissect(buffer, index, packet, parent)

  -- National Bbo Appendage Longform: Struct of 7 fields
  index, national_bbo_appendage_longform = nasdaq_utp_snapshot_utp_v3_0.national_bbo_appendage_longform.dissect(buffer, index, packet, parent)

  -- Finra Adf Mpid Appendage: Struct of 2 fields
  index, finra_adf_mpid_appendage = nasdaq_utp_snapshot_utp_v3_0.finra_adf_mpid_appendage.dissect(buffer, index, packet, parent)

  -- Bolo Appendage Mpid Form: Struct of 8 fields
  index, bolo_appendage_mpid_form = nasdaq_utp_snapshot_utp_v3_0.bolo_appendage_mpid_form.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Utp Combined Quote Message Long Form
nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.utp_combined_quote_message_long_form, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.fields(buffer, offset, packet, parent)
  end
end

-- Quote Message Payload
nasdaq_utp_snapshot_utp_v3_0.quote_message_payload = {}

-- Dissect: Quote Message Payload
nasdaq_utp_snapshot_utp_v3_0.quote_message_payload.dissect = function(buffer, offset, packet, parent, quote_message_type)
  -- Dissect Utp Combined Quote Message Long Form
  if quote_message_type == "D" then
    return nasdaq_utp_snapshot_utp_v3_0.utp_combined_quote_message_long_form.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Odd Lot Quote Message Long Form
  if quote_message_type == "B" then
    return nasdaq_utp_snapshot_utp_v3_0.odd_lot_quote_message_long_form.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Quote Message
nasdaq_utp_snapshot_utp_v3_0.quote_message = {}

-- Calculate size of: Quote Message
nasdaq_utp_snapshot_utp_v3_0.quote_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_snapshot_utp_v3_0.quote_message_type.size

  -- Calculate runtime size of Quote Message Payload field
  local quote_message_payload_offset = offset + index
  local quote_message_payload_type = buffer(quote_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utp_snapshot_utp_v3_0.quote_message_payload.size(buffer, quote_message_payload_offset, quote_message_payload_type)

  return index
end

-- Display: Quote Message
nasdaq_utp_snapshot_utp_v3_0.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
nasdaq_utp_snapshot_utp_v3_0.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Message Type: 1 Byte Ascii String
  index, quote_message_type = nasdaq_utp_snapshot_utp_v3_0.quote_message_type.dissect(buffer, index, packet, parent)

  -- Quote Message Payload: Runtime Type with 2 branches
  index = nasdaq_utp_snapshot_utp_v3_0.quote_message_payload.dissect(buffer, index, packet, parent, quote_message_type)

  return index
end

-- Dissect: Quote Message
nasdaq_utp_snapshot_utp_v3_0.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.quote_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmissions Message
nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message = {}

-- Size: End Of Transmissions Message
nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size

-- Display: End Of Transmissions Message
nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmissions Message
nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmissions Message
nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.end_of_transmissions_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Day Message
nasdaq_utp_snapshot_utp_v3_0.end_of_day_message = {}

-- Size: End Of Day Message
nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size

-- Display: End Of Day Message
nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.end_of_day_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Close Message
nasdaq_utp_snapshot_utp_v3_0.market_session_close_message = {}

-- Size: Market Session Close Message
nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size

-- Display: Market Session Close Message
nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Close Message
nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Close Message
nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_session_close_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Session Open Message
nasdaq_utp_snapshot_utp_v3_0.market_session_open_message = {}

-- Size: Market Session Open Message
nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size

-- Display: Market Session Open Message
nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Open Message
nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Open Message
nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_session_open_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Day Message
nasdaq_utp_snapshot_utp_v3_0.start_of_day_message = {}

-- Size: Start Of Day Message
nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size

-- Display: Start Of Day Message
nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.start_of_day_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message Payload
nasdaq_utp_snapshot_utp_v3_0.control_message_payload = {}

-- Dissect: Control Message Payload
nasdaq_utp_snapshot_utp_v3_0.control_message_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "I" then
    return nasdaq_utp_snapshot_utp_v3_0.start_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Open Message
  if control_message_type == "O" then
    return nasdaq_utp_snapshot_utp_v3_0.market_session_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Close Message
  if control_message_type == "C" then
    return nasdaq_utp_snapshot_utp_v3_0.market_session_close_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "J" then
    return nasdaq_utp_snapshot_utp_v3_0.end_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmissions Message
  if control_message_type == "Z" then
    return nasdaq_utp_snapshot_utp_v3_0.end_of_transmissions_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control Message
nasdaq_utp_snapshot_utp_v3_0.control_message = {}

-- Calculate size of: Control Message
nasdaq_utp_snapshot_utp_v3_0.control_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_snapshot_utp_v3_0.control_message_type.size

  -- Calculate runtime size of Control Message Payload field
  local control_message_payload_offset = offset + index
  local control_message_payload_type = buffer(control_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utp_snapshot_utp_v3_0.control_message_payload.size(buffer, control_message_payload_offset, control_message_payload_type)

  return index
end

-- Display: Control Message
nasdaq_utp_snapshot_utp_v3_0.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
nasdaq_utp_snapshot_utp_v3_0.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String
  index, control_message_type = nasdaq_utp_snapshot_utp_v3_0.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Message Payload: Runtime Type with 5 branches
  index = nasdaq_utp_snapshot_utp_v3_0.control_message_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control Message
nasdaq_utp_snapshot_utp_v3_0.control_message.dissect = function(buffer, offset, packet, parent)
  if show.control_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.control_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.control_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Sequence Message
nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message = {}

-- Size: Snapshot Sequence Message
nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.sequence_number.size

-- Display: Snapshot Sequence Message
nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Sequence Message
nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Sequence Number: long
  index, sequence_number = nasdaq_utp_snapshot_utp_v3_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Sequence Message
nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.snapshot_sequence_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Collar Message
nasdaq_utp_snapshot_utp_v3_0.auction_collar_message = {}

-- Size: Auction Collar Message
nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.size + 
  nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.collar_up_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.collar_down_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator.size

-- Display: Auction Collar Message
nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Collar Message
nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Trading Action Sequence Number: int
  index, trading_action_sequence_number = nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.dissect(buffer, index, packet, parent)

  -- Collar Reference Price: long
  index, collar_reference_price = nasdaq_utp_snapshot_utp_v3_0.collar_reference_price.dissect(buffer, index, packet, parent)

  -- Collar Up Price: long
  index, collar_up_price = nasdaq_utp_snapshot_utp_v3_0.collar_up_price.dissect(buffer, index, packet, parent)

  -- Collar Down Price: long
  index, collar_down_price = nasdaq_utp_snapshot_utp_v3_0.collar_down_price.dissect(buffer, index, packet, parent)

  -- Collar Extension Indicator: byte
  index, collar_extension_indicator = nasdaq_utp_snapshot_utp_v3_0.collar_extension_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Collar Message
nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.auction_collar_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.fields(buffer, offset, packet, parent)
  end
end

-- Limit Up Limit Down Price Band Message
nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message = {}

-- Size: Limit Up Limit Down Price Band Message
nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.luld_price_band_effective_time.size + 
  nasdaq_utp_snapshot_utp_v3_0.limit_down_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.limit_up_price.size

-- Display: Limit Up Limit Down Price Band Message
nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Up Limit Down Price Band Message
nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Luld Price Band Indicator: byte
  index, luld_price_band_indicator = nasdaq_utp_snapshot_utp_v3_0.luld_price_band_indicator.dissect(buffer, index, packet, parent)

  -- Luld Price Band Effective Time: long
  index, luld_price_band_effective_time = nasdaq_utp_snapshot_utp_v3_0.luld_price_band_effective_time.dissect(buffer, index, packet, parent)

  -- Limit Down Price: long
  index, limit_down_price = nasdaq_utp_snapshot_utp_v3_0.limit_down_price.dissect(buffer, index, packet, parent)

  -- Limit Up Price: long
  index, limit_up_price = nasdaq_utp_snapshot_utp_v3_0.limit_up_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Up Limit Down Price Band Message
nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.limit_up_limit_down_price_band_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Wide Circuit Breaker Decline Level Message
nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message = {}

-- Size: Market Wide Circuit Breaker Decline Level Message
nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2.size + 
  nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3.size

-- Display: Market Wide Circuit Breaker Decline Level Message
nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Message
nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Mwcb Level 1: long
  index, mwcb_level_1 = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_1.dissect(buffer, index, packet, parent)

  -- Mwcb Level 2: long
  index, mwcb_level_2 = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_2.dissect(buffer, index, packet, parent)

  -- Mwcb Level 3: long
  index, mwcb_level_3 = nasdaq_utp_snapshot_utp_v3_0.mwcb_level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Message
nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_wide_circuit_breaker_decline_level_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Center Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message = {}

-- Size: Market Center Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.trading_action_code.size + 
  nasdaq_utp_snapshot_utp_v3_0.action_time.size + 
  nasdaq_utp_snapshot_utp_v3_0.market_center_identifier.size

-- Display: Market Center Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Trading Action Code: byte
  index, trading_action_code = nasdaq_utp_snapshot_utp_v3_0.trading_action_code.dissect(buffer, index, packet, parent)

  -- Action Time: long
  index, action_time = nasdaq_utp_snapshot_utp_v3_0.action_time.dissect(buffer, index, packet, parent)

  -- Market Center Identifier: byte
  index, market_center_identifier = nasdaq_utp_snapshot_utp_v3_0.market_center_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.market_center_trading_action_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Sro Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message = {}

-- Size: Cross Sro Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.trading_action_code.size + 
  nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.size + 
  nasdaq_utp_snapshot_utp_v3_0.action_time.size + 
  nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action.size

-- Display: Cross Sro Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Sro Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Trading Action Code: byte
  index, trading_action_code = nasdaq_utp_snapshot_utp_v3_0.trading_action_code.dissect(buffer, index, packet, parent)

  -- Trading Action Sequence Number: int
  index, trading_action_sequence_number = nasdaq_utp_snapshot_utp_v3_0.trading_action_sequence_number.dissect(buffer, index, packet, parent)

  -- Action Time: long
  index, action_time = nasdaq_utp_snapshot_utp_v3_0.action_time.dissect(buffer, index, packet, parent)

  -- Reason For The Trading Action: byte[]
  index, reason_for_the_trading_action = nasdaq_utp_snapshot_utp_v3_0.reason_for_the_trading_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Sro Trading Action Message
nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.cross_sro_trading_action_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: byte
  index, reg_sho_action = nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Enhanced Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message = {}

-- Size: Enhanced Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.old_symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.issue_name.size + 
  nasdaq_utp_snapshot_utp_v3_0.issue_type.size + 
  nasdaq_utp_snapshot_utp_v3_0.issue_subtype.size + 
  nasdaq_utp_snapshot_utp_v3_0.market_tier.size + 
  nasdaq_utp_snapshot_utp_v3_0.authenticity.size + 
  nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.round_lot_size.size + 
  nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.etp_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.mpi_tick.size + 
  nasdaq_utp_snapshot_utp_v3_0.trading_state.size + 
  nasdaq_utp_snapshot_utp_v3_0.halt_reason.size + 
  nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.size + 
  nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.size + 
  nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.size

-- Display: Enhanced Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhanced Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Old Symbol: byte[]
  index, old_symbol = nasdaq_utp_snapshot_utp_v3_0.old_symbol.dissect(buffer, index, packet, parent)

  -- Issue Name: byte[]
  index, issue_name = nasdaq_utp_snapshot_utp_v3_0.issue_name.dissect(buffer, index, packet, parent)

  -- Issue Type: byte
  index, issue_type = nasdaq_utp_snapshot_utp_v3_0.issue_type.dissect(buffer, index, packet, parent)

  -- Issue Subtype: byte[]
  index, issue_subtype = nasdaq_utp_snapshot_utp_v3_0.issue_subtype.dissect(buffer, index, packet, parent)

  -- Market Tier: byte
  index, market_tier = nasdaq_utp_snapshot_utp_v3_0.market_tier.dissect(buffer, index, packet, parent)

  -- Authenticity: byte
  index, authenticity = nasdaq_utp_snapshot_utp_v3_0.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: byte
  index, short_sale_threshold_indicator = nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: short
  index, round_lot_size = nasdaq_utp_snapshot_utp_v3_0.round_lot_size.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: byte
  index, financial_status_indicator = nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Etp Indicator: byte
  index, etp_indicator = nasdaq_utp_snapshot_utp_v3_0.etp_indicator.dissect(buffer, index, packet, parent)

  -- New Issue Indicator: byte
  index, new_issue_indicator = nasdaq_utp_snapshot_utp_v3_0.new_issue_indicator.dissect(buffer, index, packet, parent)

  -- Mpi Tick: byte
  index, mpi_tick = nasdaq_utp_snapshot_utp_v3_0.mpi_tick.dissect(buffer, index, packet, parent)

  -- Trading State: byte
  index, trading_state = nasdaq_utp_snapshot_utp_v3_0.trading_state.dissect(buffer, index, packet, parent)

  -- Halt Reason: byte[]
  index, halt_reason = nasdaq_utp_snapshot_utp_v3_0.halt_reason.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: byte
  index, reg_sho_action = nasdaq_utp_snapshot_utp_v3_0.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Consolidated Prior Day Close Price: long
  index, consolidated_prior_day_close_price = nasdaq_utp_snapshot_utp_v3_0.consolidated_prior_day_close_price.dissect(buffer, index, packet, parent)

  -- Listing Market Official Prior Day Close Price: long
  index, listing_market_official_prior_day_close_price = nasdaq_utp_snapshot_utp_v3_0.listing_market_official_prior_day_close_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhanced Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.enhanced_issue_symbol_directory_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message = {}

-- Size: Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.size =
  nasdaq_utp_snapshot_utp_v3_0.market_center_originator.size + 
  nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.size + 
  nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.size + 
  nasdaq_utp_snapshot_utp_v3_0.timestamp_1.size + 
  nasdaq_utp_snapshot_utp_v3_0.participant_token.size + 
  nasdaq_utp_snapshot_utp_v3_0.symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.old_symbol.size + 
  nasdaq_utp_snapshot_utp_v3_0.issue_name.size + 
  nasdaq_utp_snapshot_utp_v3_0.issue_type.size + 
  nasdaq_utp_snapshot_utp_v3_0.issue_subtype.size + 
  nasdaq_utp_snapshot_utp_v3_0.market_tier.size + 
  nasdaq_utp_snapshot_utp_v3_0.authenticity.size + 
  nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.size + 
  nasdaq_utp_snapshot_utp_v3_0.round_lot_size.size + 
  nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.size

-- Display: Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator: byte
  index, market_center_originator = nasdaq_utp_snapshot_utp_v3_0.market_center_originator.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: byte
  index, sub_market_center_id = nasdaq_utp_snapshot_utp_v3_0.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: long
  index, sip_timestamp = nasdaq_utp_snapshot_utp_v3_0.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Timestamp 1: long
  index, timestamp_1 = nasdaq_utp_snapshot_utp_v3_0.timestamp_1.dissect(buffer, index, packet, parent)

  -- Participant Token: long
  index, participant_token = nasdaq_utp_snapshot_utp_v3_0.participant_token.dissect(buffer, index, packet, parent)

  -- Symbol: byte[]
  index, symbol = nasdaq_utp_snapshot_utp_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Old Symbol: byte[]
  index, old_symbol = nasdaq_utp_snapshot_utp_v3_0.old_symbol.dissect(buffer, index, packet, parent)

  -- Issue Name: byte[]
  index, issue_name = nasdaq_utp_snapshot_utp_v3_0.issue_name.dissect(buffer, index, packet, parent)

  -- Issue Type: byte
  index, issue_type = nasdaq_utp_snapshot_utp_v3_0.issue_type.dissect(buffer, index, packet, parent)

  -- Issue Subtype: byte[]
  index, issue_subtype = nasdaq_utp_snapshot_utp_v3_0.issue_subtype.dissect(buffer, index, packet, parent)

  -- Market Tier: byte
  index, market_tier = nasdaq_utp_snapshot_utp_v3_0.market_tier.dissect(buffer, index, packet, parent)

  -- Authenticity: byte
  index, authenticity = nasdaq_utp_snapshot_utp_v3_0.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: byte
  index, short_sale_threshold_indicator = nasdaq_utp_snapshot_utp_v3_0.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: short
  index, round_lot_size = nasdaq_utp_snapshot_utp_v3_0.round_lot_size.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: byte
  index, financial_status_indicator = nasdaq_utp_snapshot_utp_v3_0.financial_status_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Symbol Directory Message
nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.issue_symbol_directory_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Message Payload
nasdaq_utp_snapshot_utp_v3_0.administrative_message_payload = {}

-- Dissect: Administrative Message Payload
nasdaq_utp_snapshot_utp_v3_0.administrative_message_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect Issue Symbol Directory Message
  if administrative_message_type == "B" then
    return nasdaq_utp_snapshot_utp_v3_0.issue_symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Enhanced Issue Symbol Directory Message
  if administrative_message_type == "F" then
    return nasdaq_utp_snapshot_utp_v3_0.enhanced_issue_symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if administrative_message_type == "V" then
    return nasdaq_utp_snapshot_utp_v3_0.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Sro Trading Action Message
  if administrative_message_type == "H" then
    return nasdaq_utp_snapshot_utp_v3_0.cross_sro_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Center Trading Action Message
  if administrative_message_type == "K" then
    return nasdaq_utp_snapshot_utp_v3_0.market_center_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Decline Level Message
  if administrative_message_type == "C" then
    return nasdaq_utp_snapshot_utp_v3_0.market_wide_circuit_breaker_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Limit Up Limit Down Price Band Message
  if administrative_message_type == "P" then
    return nasdaq_utp_snapshot_utp_v3_0.limit_up_limit_down_price_band_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Collar Message
  if administrative_message_type == "E" then
    return nasdaq_utp_snapshot_utp_v3_0.auction_collar_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Sequence Message
  if administrative_message_type == "S" then
    return nasdaq_utp_snapshot_utp_v3_0.snapshot_sequence_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Administrative Message
nasdaq_utp_snapshot_utp_v3_0.administrative_message = {}

-- Calculate size of: Administrative Message
nasdaq_utp_snapshot_utp_v3_0.administrative_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_snapshot_utp_v3_0.administrative_message_type.size

  -- Calculate runtime size of Administrative Message Payload field
  local administrative_message_payload_offset = offset + index
  local administrative_message_payload_type = buffer(administrative_message_payload_offset - 1, 1):string()
  index = index + nasdaq_utp_snapshot_utp_v3_0.administrative_message_payload.size(buffer, administrative_message_payload_offset, administrative_message_payload_type)

  return index
end

-- Display: Administrative Message
nasdaq_utp_snapshot_utp_v3_0.administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative Message
nasdaq_utp_snapshot_utp_v3_0.administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String
  index, administrative_message_type = nasdaq_utp_snapshot_utp_v3_0.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Message Payload: Runtime Type with 9 branches
  index = nasdaq_utp_snapshot_utp_v3_0.administrative_message_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative Message
nasdaq_utp_snapshot_utp_v3_0.administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.administrative_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.administrative_message, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Category Payload
nasdaq_utp_snapshot_utp_v3_0.category_payload = {}

-- Dissect: Category Payload
nasdaq_utp_snapshot_utp_v3_0.category_payload.dissect = function(buffer, offset, packet, parent, message_category)
  -- Dissect Administrative Message
  if message_category == "A" then
    return nasdaq_utp_snapshot_utp_v3_0.administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control Message
  if message_category == "C" then
    return nasdaq_utp_snapshot_utp_v3_0.control_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Message
  if message_category == "Q" then
    return nasdaq_utp_snapshot_utp_v3_0.quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_utp_snapshot_utp_v3_0.message_header = {}

-- Size: Message Header
nasdaq_utp_snapshot_utp_v3_0.message_header.size =
  nasdaq_utp_snapshot_utp_v3_0.version.size + 
  nasdaq_utp_snapshot_utp_v3_0.message_category.size

-- Display: Message Header
nasdaq_utp_snapshot_utp_v3_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_utp_snapshot_utp_v3_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: Byte
  index, version = nasdaq_utp_snapshot_utp_v3_0.version.dissect(buffer, index, packet, parent)

  -- Message Category: Byte
  index, message_category = nasdaq_utp_snapshot_utp_v3_0.message_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_utp_snapshot_utp_v3_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_utp_snapshot_utp_v3_0.message_header.size

  -- Parse runtime size of: Category Payload
  index = index + buffer(offset + index - 5, 2):uint()

  return index
end

-- Display: Sequenced Data Packet
nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_utp_snapshot_utp_v3_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Category Payload: Runtime Type with 3 branches
  index = nasdaq_utp_snapshot_utp_v3_0.category_payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.sequenced_data_packet, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Tcp Payload
nasdaq_utp_snapshot_utp_v3_0.tcp_payload = {}

-- Dissect: Tcp Payload
nasdaq_utp_snapshot_utp_v3_0.tcp_payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return nasdaq_utp_snapshot_utp_v3_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Debug Packet
  if packet_type == "+" then
    return nasdaq_utp_snapshot_utp_v3_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return nasdaq_utp_snapshot_utp_v3_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return nasdaq_utp_snapshot_utp_v3_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return nasdaq_utp_snapshot_utp_v3_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
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
nasdaq_utp_snapshot_utp_v3_0.tcp_packet_header = {}

-- Size: Tcp Packet Header
nasdaq_utp_snapshot_utp_v3_0.tcp_packet_header.size =
  nasdaq_utp_snapshot_utp_v3_0.packet_length.size + 
  nasdaq_utp_snapshot_utp_v3_0.packet_type.size

-- Display: Tcp Packet Header
nasdaq_utp_snapshot_utp_v3_0.tcp_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Packet Header
nasdaq_utp_snapshot_utp_v3_0.tcp_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: Short
  index, packet_length = nasdaq_utp_snapshot_utp_v3_0.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: Char
  index, packet_type = nasdaq_utp_snapshot_utp_v3_0.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tcp Packet Header
nasdaq_utp_snapshot_utp_v3_0.tcp_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.tcp_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0.fields.tcp_packet_header, buffer(offset, 0))
    local index = nasdaq_utp_snapshot_utp_v3_0.tcp_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utp_snapshot_utp_v3_0.tcp_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utp_snapshot_utp_v3_0.tcp_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_utp_snapshot_utp_v3_0.packet = {}

-- Verify required size of Tcp packet
nasdaq_utp_snapshot_utp_v3_0.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_utp_snapshot_utp_v3_0.tcp_packet_header.size
end

-- Dissect Packet
nasdaq_utp_snapshot_utp_v3_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Tcp Packet Header: Struct of 2 fields
    index, tcp_packet_header = nasdaq_utp_snapshot_utp_v3_0.tcp_packet_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Packet Type
    local packet_type = buffer(index - 1, 1):string()

    -- Tcp Payload: Runtime Type with 9 branches
    index = nasdaq_utp_snapshot_utp_v3_0.tcp_payload.dissect(buffer, index, packet, parent, packet_type)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_utp_snapshot_utp_v3_0.init()
end

-- Dissector for Nasdaq Utp Snapshot Utp 3.0
function omi_nasdaq_utp_snapshot_utp_v3_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_utp_snapshot_utp_v3_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_utp_snapshot_utp_v3_0, buffer(), omi_nasdaq_utp_snapshot_utp_v3_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_utp_snapshot_utp_v3_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq Utp Snapshot Utp 3.0 (Tcp)
local function omi_nasdaq_utp_snapshot_utp_v3_0_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_utp_snapshot_utp_v3_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_utp_snapshot_utp_v3_0
  omi_nasdaq_utp_snapshot_utp_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Utp Snapshot Utp 3.0
omi_nasdaq_utp_snapshot_utp_v3_0:register_heuristic("tcp", omi_nasdaq_utp_snapshot_utp_v3_0_tcp_heuristic)

-- Register Nasdaq Utp Snapshot Utp 3.0 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_utp_snapshot_utp_v3_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 3.0
--   Date: Monday, June 1, 2026
--   Specification: UTPSnapShotSpec.pdf
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
