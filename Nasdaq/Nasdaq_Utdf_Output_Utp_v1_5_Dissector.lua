-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Utdf Output Utp 1.5 Protocol
local omi_nasdaq_utdf_output_utp_v1_5 = Proto("Nasdaq.Utdf.Output.Utp.v1.5.Lua", "Nasdaq Utdf Output Utp 1.5")

-- Protocol table
local nasdaq_utdf_output_utp_v1_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Utdf Output Utp 1.5 Fields
omi_nasdaq_utdf_output_utp_v1_5.fields.action_timestamp = ProtoField.new("Action Timestamp", "nasdaq.utdf.output.utp.v1.5.actiontimestamp", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.administrative = ProtoField.new("Administrative", "nasdaq.utdf.output.utp.v1.5.administrative", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "nasdaq.utdf.output.utp.v1.5.administrativemessagetype", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.administrative_payload = ProtoField.new("Administrative Payload", "nasdaq.utdf.output.utp.v1.5.administrativepayload", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.as_of_action = ProtoField.new("As Of Action", "nasdaq.utdf.output.utp.v1.5.asofaction", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.utdf.output.utp.v1.5.authenticity", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.collar_down_price = ProtoField.new("Collar Down Price", "nasdaq.utdf.output.utp.v1.5.collardownprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.collar_extension_indicator = ProtoField.new("Collar Extension Indicator", "nasdaq.utdf.output.utp.v1.5.collarextensionindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.collar_reference_price = ProtoField.new("Collar Reference Price", "nasdaq.utdf.output.utp.v1.5.collarreferenceprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.collar_up_price = ProtoField.new("Collar Up Price", "nasdaq.utdf.output.utp.v1.5.collarupprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.consolidated_high_price = ProtoField.new("Consolidated High Price", "nasdaq.utdf.output.utp.v1.5.consolidatedhighprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.consolidated_last_price = ProtoField.new("Consolidated Last Price", "nasdaq.utdf.output.utp.v1.5.consolidatedlastprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.consolidated_low_price = ProtoField.new("Consolidated Low Price", "nasdaq.utdf.output.utp.v1.5.consolidatedlowprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.consolidated_price_change_indicator = ProtoField.new("Consolidated Price Change Indicator", "nasdaq.utdf.output.utp.v1.5.consolidatedpricechangeindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.consolidated_volume = ProtoField.new("Consolidated Volume", "nasdaq.utdf.output.utp.v1.5.consolidatedvolume", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.control = ProtoField.new("Control", "nasdaq.utdf.output.utp.v1.5.control", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.control_message_type = ProtoField.new("Control Message Type", "nasdaq.utdf.output.utp.v1.5.controlmessagetype", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.control_payload = ProtoField.new("Control Payload", "nasdaq.utdf.output.utp.v1.5.controlpayload", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.corrected_sale_condition = ProtoField.new("Corrected Sale Condition", "nasdaq.utdf.output.utp.v1.5.correctedsalecondition", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.corrected_sellers_sale_days = ProtoField.new("Corrected Sellers Sale Days", "nasdaq.utdf.output.utp.v1.5.correctedsellerssaledays", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v1_5.fields.corrected_trade_id = ProtoField.new("Corrected Trade Id", "nasdaq.utdf.output.utp.v1.5.correctedtradeid", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "nasdaq.utdf.output.utp.v1.5.correctedtradeprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.corrected_trade_through_exempt_flag = ProtoField.new("Corrected Trade Through Exempt Flag", "nasdaq.utdf.output.utp.v1.5.correctedtradethroughexemptflag", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.corrected_volume = ProtoField.new("Corrected Volume", "nasdaq.utdf.output.utp.v1.5.correctedvolume", ftypes.UINT32)
omi_nasdaq_utdf_output_utp_v1_5.fields.count = ProtoField.new("Count", "nasdaq.utdf.output.utp.v1.5.count", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v1_5.fields.current_market_center_volume = ProtoField.new("Current Market Center Volume", "nasdaq.utdf.output.utp.v1.5.currentmarketcentervolume", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.daily_consolidated_closing_price = ProtoField.new("Daily Consolidated Closing Price", "nasdaq.utdf.output.utp.v1.5.dailyconsolidatedclosingprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.daily_consolidated_high_price = ProtoField.new("Daily Consolidated High Price", "nasdaq.utdf.output.utp.v1.5.dailyconsolidatedhighprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.daily_consolidated_low_price = ProtoField.new("Daily Consolidated Low Price", "nasdaq.utdf.output.utp.v1.5.dailyconsolidatedlowprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.utdf.output.utp.v1.5.financialstatusindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.finra_timestamp = ProtoField.new("Finra Timestamp", "nasdaq.utdf.output.utp.v1.5.finratimestamp", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.issue_name = ProtoField.new("Issue Name", "nasdaq.utdf.output.utp.v1.5.issuename", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.issue_subtype = ProtoField.new("Issue Subtype", "nasdaq.utdf.output.utp.v1.5.issuesubtype", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.issue_type = ProtoField.new("Issue Type", "nasdaq.utdf.output.utp.v1.5.issuetype", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.level_1 = ProtoField.new("Level 1", "nasdaq.utdf.output.utp.v1.5.level1", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.level_2 = ProtoField.new("Level 2", "nasdaq.utdf.output.utp.v1.5.level2", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.level_3 = ProtoField.new("Level 3", "nasdaq.utdf.output.utp.v1.5.level3", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.level_4 = ProtoField.new("Level 4", "nasdaq.utdf.output.utp.v1.5.level4", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.limit_down_price = ProtoField.new("Limit Down Price", "nasdaq.utdf.output.utp.v1.5.limitdownprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.limit_up_price = ProtoField.new("Limit Up Price", "nasdaq.utdf.output.utp.v1.5.limitupprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.luld_price_band_indicator = ProtoField.new("Luld Price Band Indicator", "nasdaq.utdf.output.utp.v1.5.luldpricebandindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.luld_timestamp = ProtoField.new("Luld Timestamp", "nasdaq.utdf.output.utp.v1.5.luldtimestamp", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_close_indicator = ProtoField.new("Market Center Close Indicator", "nasdaq.utdf.output.utp.v1.5.marketcentercloseindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_closing_price = ProtoField.new("Market Center Closing Price", "nasdaq.utdf.output.utp.v1.5.marketcenterclosingprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_closing_price_and_volume_summary = ProtoField.new("Market Center Closing Price And Volume Summary", "nasdaq.utdf.output.utp.v1.5.marketcenterclosingpriceandvolumesummary", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_identifier = ProtoField.new("Market Center Identifier", "nasdaq.utdf.output.utp.v1.5.marketcenteridentifier", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_originator_id = ProtoField.new("Market Center Originator Id", "nasdaq.utdf.output.utp.v1.5.marketcenteroriginatorid", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_volume = ProtoField.new("Market Center Volume", "nasdaq.utdf.output.utp.v1.5.marketcentervolume", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_volume_attachment = ProtoField.new("Market Center Volume Attachment", "nasdaq.utdf.output.utp.v1.5.marketcentervolumeattachment", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_participant_high_price = ProtoField.new("Market Participant High Price", "nasdaq.utdf.output.utp.v1.5.marketparticipanthighprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_participant_last_price = ProtoField.new("Market Participant Last Price", "nasdaq.utdf.output.utp.v1.5.marketparticipantlastprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_participant_low_price = ProtoField.new("Market Participant Low Price", "nasdaq.utdf.output.utp.v1.5.marketparticipantlowprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_participant_volume = ProtoField.new("Market Participant Volume", "nasdaq.utdf.output.utp.v1.5.marketparticipantvolume", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_tier = ProtoField.new("Market Tier", "nasdaq.utdf.output.utp.v1.5.markettier", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.message = ProtoField.new("Message", "nasdaq.utdf.output.utp.v1.5.message", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.message_category = ProtoField.new("Message Category", "nasdaq.utdf.output.utp.v1.5.messagecategory", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.message_header = ProtoField.new("Message Header", "nasdaq.utdf.output.utp.v1.5.messageheader", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.message_info = ProtoField.new("Message Info", "nasdaq.utdf.output.utp.v1.5.messageinfo", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.message_length = ProtoField.new("Message Length", "nasdaq.utdf.output.utp.v1.5.messagelength", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v1_5.fields.mwcb_level_1 = ProtoField.new("Mwcb Level 1", "nasdaq.utdf.output.utp.v1.5.mwcblevel1", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "nasdaq.utdf.output.utp.v1.5.mwcblevel2", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "nasdaq.utdf.output.utp.v1.5.mwcblevel3", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.number_of_market_center_summaries = ProtoField.new("Number Of Market Center Summaries", "nasdaq.utdf.output.utp.v1.5.numberofmarketcentersummaries", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v1_5.fields.number_of_market_center_volumes = ProtoField.new("Number Of Market Center Volumes", "nasdaq.utdf.output.utp.v1.5.numberofmarketcentervolumes", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v1_5.fields.old_symbol = ProtoField.new("Old Symbol", "nasdaq.utdf.output.utp.v1.5.oldsymbol", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.original_sale_condition = ProtoField.new("Original Sale Condition", "nasdaq.utdf.output.utp.v1.5.originalsalecondition", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.original_sellers_sale_days = ProtoField.new("Original Sellers Sale Days", "nasdaq.utdf.output.utp.v1.5.originalsellerssaledays", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v1_5.fields.original_trade_id = ProtoField.new("Original Trade Id", "nasdaq.utdf.output.utp.v1.5.originaltradeid", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.original_trade_price = ProtoField.new("Original Trade Price", "nasdaq.utdf.output.utp.v1.5.originaltradeprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.original_trade_through_exempt_flag = ProtoField.new("Original Trade Through Exempt Flag", "nasdaq.utdf.output.utp.v1.5.originaltradethroughexemptflag", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.original_volume = ProtoField.new("Original Volume", "nasdaq.utdf.output.utp.v1.5.originalvolume", ftypes.UINT32)
omi_nasdaq_utdf_output_utp_v1_5.fields.packet = ProtoField.new("Packet", "nasdaq.utdf.output.utp.v1.5.packet", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.utdf.output.utp.v1.5.packetheader", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.participant_price_change_indicator = ProtoField.new("Participant Price Change Indicator", "nasdaq.utdf.output.utp.v1.5.participantpricechangeindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.participant_timestamp = ProtoField.new("Participant Timestamp", "nasdaq.utdf.output.utp.v1.5.participanttimestamp", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.participant_token = ProtoField.new("Participant Token", "nasdaq.utdf.output.utp.v1.5.participanttoken", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.payload = ProtoField.new("Payload", "nasdaq.utdf.output.utp.v1.5.payload", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.utdf.output.utp.v1.5.regshoaction", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.utdf.output.utp.v1.5.roundlotsize", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v1_5.fields.sale_condition = ProtoField.new("Sale Condition", "nasdaq.utdf.output.utp.v1.5.salecondition", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.sellers_sale_days = ProtoField.new("Sellers Sale Days", "nasdaq.utdf.output.utp.v1.5.sellerssaledays", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v1_5.fields.sequence = ProtoField.new("Sequence", "nasdaq.utdf.output.utp.v1.5.sequence", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.session = ProtoField.new("Session", "nasdaq.utdf.output.utp.v1.5.session", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.utdf.output.utp.v1.5.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.sip_timestamp = ProtoField.new("Sip Timestamp", "nasdaq.utdf.output.utp.v1.5.siptimestamp", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.sub_market_center_id = ProtoField.new("Sub Market Center Id", "nasdaq.utdf.output.utp.v1.5.submarketcenterid", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.symbol = ProtoField.new("Symbol", "nasdaq.utdf.output.utp.v1.5.symbol", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.text = ProtoField.new("Text", "nasdaq.utdf.output.utp.v1.5.text", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.text_length = ProtoField.new("Text Length", "nasdaq.utdf.output.utp.v1.5.textlength", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v1_5.fields.timestamp_of_trade = ProtoField.new("Timestamp Of Trade", "nasdaq.utdf.output.utp.v1.5.timestampoftrade", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.total_consolidated_volume = ProtoField.new("Total Consolidated Volume", "nasdaq.utdf.output.utp.v1.5.totalconsolidatedvolume", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.trade = ProtoField.new("Trade", "nasdaq.utdf.output.utp.v1.5.trade", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.trade_cancellation_type = ProtoField.new("Trade Cancellation Type", "nasdaq.utdf.output.utp.v1.5.tradecancellationtype", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.trade_id = ProtoField.new("Trade Id", "nasdaq.utdf.output.utp.v1.5.tradeid", ftypes.UINT64)
omi_nasdaq_utdf_output_utp_v1_5.fields.trade_message_type = ProtoField.new("Trade Message Type", "nasdaq.utdf.output.utp.v1.5.trademessagetype", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.trade_payload = ProtoField.new("Trade Payload", "nasdaq.utdf.output.utp.v1.5.tradepayload", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.trade_price = ProtoField.new("Trade Price", "nasdaq.utdf.output.utp.v1.5.tradeprice", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.trade_price_short = ProtoField.new("Trade Price Short", "nasdaq.utdf.output.utp.v1.5.tradepriceshort", ftypes.DOUBLE)
omi_nasdaq_utdf_output_utp_v1_5.fields.trade_through_exempt_flag = ProtoField.new("Trade Through Exempt Flag", "nasdaq.utdf.output.utp.v1.5.tradethroughexemptflag", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.trade_volume = ProtoField.new("Trade Volume", "nasdaq.utdf.output.utp.v1.5.tradevolume", ftypes.UINT32)
omi_nasdaq_utdf_output_utp_v1_5.fields.trade_volume_short = ProtoField.new("Trade Volume Short", "nasdaq.utdf.output.utp.v1.5.tradevolumeshort", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v1_5.fields.trading_action_code = ProtoField.new("Trading Action Code", "nasdaq.utdf.output.utp.v1.5.tradingactioncode", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.trading_action_indicator = ProtoField.new("Trading Action Indicator", "nasdaq.utdf.output.utp.v1.5.tradingactionindicator", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.trading_action_reason = ProtoField.new("Trading Action Reason", "nasdaq.utdf.output.utp.v1.5.tradingactionreason", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.trading_action_sequence_number = ProtoField.new("Trading Action Sequence Number", "nasdaq.utdf.output.utp.v1.5.tradingactionsequencenumber", ftypes.UINT32)
omi_nasdaq_utdf_output_utp_v1_5.fields.version = ProtoField.new("Version", "nasdaq.utdf.output.utp.v1.5.version", ftypes.UINT8)
omi_nasdaq_utdf_output_utp_v1_5.fields.volume = ProtoField.new("Volume", "nasdaq.utdf.output.utp.v1.5.volume", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.volume_message_type = ProtoField.new("Volume Message Type", "nasdaq.utdf.output.utp.v1.5.volumemessagetype", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.volume_payload = ProtoField.new("Volume Payload", "nasdaq.utdf.output.utp.v1.5.volumepayload", ftypes.STRING)

-- Nasdaq Utdf Output Utp 1.5 messages
omi_nasdaq_utdf_output_utp_v1_5.fields.auction_collar_message = ProtoField.new("Auction Collar Message", "nasdaq.utdf.output.utp.v1.5.auctioncollarmessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.closing_trade_summary_report_message = ProtoField.new("Closing Trade Summary Report Message", "nasdaq.utdf.output.utp.v1.5.closingtradesummaryreportmessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.cross_sro_trading_action_message = ProtoField.new("Cross Sro Trading Action Message", "nasdaq.utdf.output.utp.v1.5.crosssrotradingactionmessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.end_of_consolidated_last_sale_eligibility = ProtoField.new("End Of Consolidated Last Sale Eligibility", "nasdaq.utdf.output.utp.v1.5.endofconsolidatedlastsaleeligibility", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.end_of_day_message = ProtoField.new("End Of Day Message", "nasdaq.utdf.output.utp.v1.5.endofdaymessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.end_of_trade_reporting_message = ProtoField.new("End Of Trade Reporting Message", "nasdaq.utdf.output.utp.v1.5.endoftradereportingmessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.end_of_transmissions_message = ProtoField.new("End Of Transmissions Message", "nasdaq.utdf.output.utp.v1.5.endoftransmissionsmessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.general_administrative_message = ProtoField.new("General Administrative Message", "nasdaq.utdf.output.utp.v1.5.generaladministrativemessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.issue_symbol_directory_message = ProtoField.new("Issue Symbol Directory Message", "nasdaq.utdf.output.utp.v1.5.issuesymboldirectorymessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.limit_up_limit_down_price_band_message = ProtoField.new("Limit Up Limit Down Price Band Message", "nasdaq.utdf.output.utp.v1.5.limituplimitdownpricebandmessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_trading_action_message = ProtoField.new("Market Center Trading Action Message", "nasdaq.utdf.output.utp.v1.5.marketcentertradingactionmessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_session_close_message = ProtoField.new("Market Session Close Message", "nasdaq.utdf.output.utp.v1.5.marketsessionclosemessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_session_open_message = ProtoField.new("Market Session Open Message", "nasdaq.utdf.output.utp.v1.5.marketsessionopenmessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_wide_circuit_breaker_decline_level_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Message", "nasdaq.utdf.output.utp.v1.5.marketwidecircuitbreakerdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.prior_day_as_of_trade_message = ProtoField.new("Prior Day As Of Trade Message", "nasdaq.utdf.output.utp.v1.5.priordayasoftrademessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.regulation_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Regulation Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.utdf.output.utp.v1.5.regulationshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "nasdaq.utdf.output.utp.v1.5.startofdaymessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.total_consolidated_and_market_center_volume_message = ProtoField.new("Total Consolidated And Market Center Volume Message", "nasdaq.utdf.output.utp.v1.5.totalconsolidatedandmarketcentervolumemessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "nasdaq.utdf.output.utp.v1.5.tradecancelerrormessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nasdaq.utdf.output.utp.v1.5.tradecorrectionmessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.trade_report_message_long_form_message = ProtoField.new("Trade Report Message Long Form Message", "nasdaq.utdf.output.utp.v1.5.tradereportmessagelongformmessage", ftypes.STRING)
omi_nasdaq_utdf_output_utp_v1_5.fields.trade_report_message_short_form_message = ProtoField.new("Trade Report Message Short Form Message", "nasdaq.utdf.output.utp.v1.5.tradereportmessageshortformmessage", ftypes.STRING)

-- Nasdaq Utdf Output Utp 1.5 generated fields
omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_closing_price_and_volume_summary_index = ProtoField.new("Market Center Closing Price And Volume Summary Index", "nasdaq.utdf.output.utp.v1.5.marketcenterclosingpriceandvolumesummaryindex", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_volume_attachment_index = ProtoField.new("Market Center Volume Attachment Index", "nasdaq.utdf.output.utp.v1.5.marketcentervolumeattachmentindex", ftypes.UINT16)
omi_nasdaq_utdf_output_utp_v1_5.fields.message_index = ProtoField.new("Message Index", "nasdaq.utdf.output.utp.v1.5.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq Utdf Output Utp 1.5 Element Dissection Options
show.administrative = true
show.auction_collar_message = true
show.closing_trade_summary_report_message = true
show.control = true
show.corrected_sale_condition = true
show.cross_sro_trading_action_message = true
show.end_of_consolidated_last_sale_eligibility = true
show.end_of_day_message = true
show.end_of_trade_reporting_message = true
show.end_of_transmissions_message = true
show.general_administrative_message = true
show.issue_symbol_directory_message = true
show.limit_up_limit_down_price_band_message = true
show.market_center_closing_price_and_volume_summary = true
show.market_center_trading_action_message = true
show.market_center_volume_attachment = true
show.market_session_close_message = true
show.market_session_open_message = true
show.market_wide_circuit_breaker_decline_level_message = true
show.message = true
show.message_header = true
show.message_info = true
show.original_sale_condition = true
show.packet = true
show.packet_header = true
show.prior_day_as_of_trade_message = true
show.regulation_sho_short_sale_price_test_restricted_indicator_message = true
show.sale_condition = true
show.start_of_day_message = true
show.total_consolidated_and_market_center_volume_message = true
show.trade = true
show.trade_cancel_error_message = true
show.trade_correction_message = true
show.trade_report_message_long_form_message = true
show.trade_report_message_short_form_message = true
show.volume = true
show.administrative_payload = false
show.control_payload = false
show.payload = false
show.trade_payload = false
show.volume_payload = false

-- Register Nasdaq Utdf Output Utp 1.5 Show Options
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_administrative = Pref.bool("Show Administrative", show.administrative, "Parse and add Administrative to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_auction_collar_message = Pref.bool("Show Auction Collar Message", show.auction_collar_message, "Parse and add Auction Collar Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_closing_trade_summary_report_message = Pref.bool("Show Closing Trade Summary Report Message", show.closing_trade_summary_report_message, "Parse and add Closing Trade Summary Report Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_control = Pref.bool("Show Control", show.control, "Parse and add Control to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_corrected_sale_condition = Pref.bool("Show Corrected Sale Condition", show.corrected_sale_condition, "Parse and add Corrected Sale Condition to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_cross_sro_trading_action_message = Pref.bool("Show Cross Sro Trading Action Message", show.cross_sro_trading_action_message, "Parse and add Cross Sro Trading Action Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_end_of_consolidated_last_sale_eligibility = Pref.bool("Show End Of Consolidated Last Sale Eligibility", show.end_of_consolidated_last_sale_eligibility, "Parse and add End Of Consolidated Last Sale Eligibility to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_end_of_day_message = Pref.bool("Show End Of Day Message", show.end_of_day_message, "Parse and add End Of Day Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_end_of_trade_reporting_message = Pref.bool("Show End Of Trade Reporting Message", show.end_of_trade_reporting_message, "Parse and add End Of Trade Reporting Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_end_of_transmissions_message = Pref.bool("Show End Of Transmissions Message", show.end_of_transmissions_message, "Parse and add End Of Transmissions Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_general_administrative_message = Pref.bool("Show General Administrative Message", show.general_administrative_message, "Parse and add General Administrative Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_issue_symbol_directory_message = Pref.bool("Show Issue Symbol Directory Message", show.issue_symbol_directory_message, "Parse and add Issue Symbol Directory Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_limit_up_limit_down_price_band_message = Pref.bool("Show Limit Up Limit Down Price Band Message", show.limit_up_limit_down_price_band_message, "Parse and add Limit Up Limit Down Price Band Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_center_closing_price_and_volume_summary = Pref.bool("Show Market Center Closing Price And Volume Summary", show.market_center_closing_price_and_volume_summary, "Parse and add Market Center Closing Price And Volume Summary to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_center_trading_action_message = Pref.bool("Show Market Center Trading Action Message", show.market_center_trading_action_message, "Parse and add Market Center Trading Action Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_center_volume_attachment = Pref.bool("Show Market Center Volume Attachment", show.market_center_volume_attachment, "Parse and add Market Center Volume Attachment to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_session_close_message = Pref.bool("Show Market Session Close Message", show.market_session_close_message, "Parse and add Market Session Close Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_session_open_message = Pref.bool("Show Market Session Open Message", show.market_session_open_message, "Parse and add Market Session Open Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_wide_circuit_breaker_decline_level_message = Pref.bool("Show Market Wide Circuit Breaker Decline Level Message", show.market_wide_circuit_breaker_decline_level_message, "Parse and add Market Wide Circuit Breaker Decline Level Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_message_info = Pref.bool("Show Message Info", show.message_info, "Parse and add Message Info to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_original_sale_condition = Pref.bool("Show Original Sale Condition", show.original_sale_condition, "Parse and add Original Sale Condition to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_prior_day_as_of_trade_message = Pref.bool("Show Prior Day As Of Trade Message", show.prior_day_as_of_trade_message, "Parse and add Prior Day As Of Trade Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_regulation_sho_short_sale_price_test_restricted_indicator_message = Pref.bool("Show Regulation Sho Short Sale Price Test Restricted Indicator Message", show.regulation_sho_short_sale_price_test_restricted_indicator_message, "Parse and add Regulation Sho Short Sale Price Test Restricted Indicator Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_sale_condition = Pref.bool("Show Sale Condition", show.sale_condition, "Parse and add Sale Condition to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_total_consolidated_and_market_center_volume_message = Pref.bool("Show Total Consolidated And Market Center Volume Message", show.total_consolidated_and_market_center_volume_message, "Parse and add Total Consolidated And Market Center Volume Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade = Pref.bool("Show Trade", show.trade, "Parse and add Trade to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade_cancel_error_message = Pref.bool("Show Trade Cancel Error Message", show.trade_cancel_error_message, "Parse and add Trade Cancel Error Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade_correction_message = Pref.bool("Show Trade Correction Message", show.trade_correction_message, "Parse and add Trade Correction Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade_report_message_long_form_message = Pref.bool("Show Trade Report Message Long Form Message", show.trade_report_message_long_form_message, "Parse and add Trade Report Message Long Form Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade_report_message_short_form_message = Pref.bool("Show Trade Report Message Short Form Message", show.trade_report_message_short_form_message, "Parse and add Trade Report Message Short Form Message to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_volume = Pref.bool("Show Volume", show.volume, "Parse and add Volume to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_administrative_payload = Pref.bool("Show Administrative Payload", show.administrative_payload, "Parse and add Administrative Payload to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_control_payload = Pref.bool("Show Control Payload", show.control_payload, "Parse and add Control Payload to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade_payload = Pref.bool("Show Trade Payload", show.trade_payload, "Parse and add Trade Payload to protocol tree")
omi_nasdaq_utdf_output_utp_v1_5.prefs.show_volume_payload = Pref.bool("Show Volume Payload", show.volume_payload, "Parse and add Volume Payload to protocol tree")

-- Handle changed preferences
function omi_nasdaq_utdf_output_utp_v1_5.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.administrative ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_administrative then
    show.administrative = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_administrative
    changed = true
  end
  if show.auction_collar_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_auction_collar_message then
    show.auction_collar_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_auction_collar_message
    changed = true
  end
  if show.closing_trade_summary_report_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_closing_trade_summary_report_message then
    show.closing_trade_summary_report_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_closing_trade_summary_report_message
    changed = true
  end
  if show.control ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_control then
    show.control = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_control
    changed = true
  end
  if show.corrected_sale_condition ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_corrected_sale_condition then
    show.corrected_sale_condition = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_corrected_sale_condition
    changed = true
  end
  if show.cross_sro_trading_action_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_cross_sro_trading_action_message then
    show.cross_sro_trading_action_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_cross_sro_trading_action_message
    changed = true
  end
  if show.end_of_consolidated_last_sale_eligibility ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_end_of_consolidated_last_sale_eligibility then
    show.end_of_consolidated_last_sale_eligibility = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_end_of_consolidated_last_sale_eligibility
    changed = true
  end
  if show.end_of_day_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_end_of_day_message then
    show.end_of_day_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_end_of_day_message
    changed = true
  end
  if show.end_of_trade_reporting_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_end_of_trade_reporting_message then
    show.end_of_trade_reporting_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_end_of_trade_reporting_message
    changed = true
  end
  if show.end_of_transmissions_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_end_of_transmissions_message then
    show.end_of_transmissions_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_end_of_transmissions_message
    changed = true
  end
  if show.general_administrative_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_general_administrative_message then
    show.general_administrative_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_general_administrative_message
    changed = true
  end
  if show.issue_symbol_directory_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_issue_symbol_directory_message then
    show.issue_symbol_directory_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_issue_symbol_directory_message
    changed = true
  end
  if show.limit_up_limit_down_price_band_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_limit_up_limit_down_price_band_message then
    show.limit_up_limit_down_price_band_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_limit_up_limit_down_price_band_message
    changed = true
  end
  if show.market_center_closing_price_and_volume_summary ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_center_closing_price_and_volume_summary then
    show.market_center_closing_price_and_volume_summary = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_center_closing_price_and_volume_summary
    changed = true
  end
  if show.market_center_trading_action_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_center_trading_action_message then
    show.market_center_trading_action_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_center_trading_action_message
    changed = true
  end
  if show.market_center_volume_attachment ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_center_volume_attachment then
    show.market_center_volume_attachment = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_center_volume_attachment
    changed = true
  end
  if show.market_session_close_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_session_close_message then
    show.market_session_close_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_session_close_message
    changed = true
  end
  if show.market_session_open_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_session_open_message then
    show.market_session_open_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_session_open_message
    changed = true
  end
  if show.market_wide_circuit_breaker_decline_level_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_wide_circuit_breaker_decline_level_message then
    show.market_wide_circuit_breaker_decline_level_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_market_wide_circuit_breaker_decline_level_message
    changed = true
  end
  if show.message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_message then
    show.message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_message_header then
    show.message_header = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_message_header
    changed = true
  end
  if show.message_info ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_message_info then
    show.message_info = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_message_info
    changed = true
  end
  if show.original_sale_condition ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_original_sale_condition then
    show.original_sale_condition = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_original_sale_condition
    changed = true
  end
  if show.packet ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_packet then
    show.packet = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_packet_header
    changed = true
  end
  if show.prior_day_as_of_trade_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_prior_day_as_of_trade_message then
    show.prior_day_as_of_trade_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_prior_day_as_of_trade_message
    changed = true
  end
  if show.regulation_sho_short_sale_price_test_restricted_indicator_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_regulation_sho_short_sale_price_test_restricted_indicator_message then
    show.regulation_sho_short_sale_price_test_restricted_indicator_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_regulation_sho_short_sale_price_test_restricted_indicator_message
    changed = true
  end
  if show.sale_condition ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_sale_condition then
    show.sale_condition = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_sale_condition
    changed = true
  end
  if show.start_of_day_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_start_of_day_message then
    show.start_of_day_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_start_of_day_message
    changed = true
  end
  if show.total_consolidated_and_market_center_volume_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_total_consolidated_and_market_center_volume_message then
    show.total_consolidated_and_market_center_volume_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_total_consolidated_and_market_center_volume_message
    changed = true
  end
  if show.trade ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade then
    show.trade = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade
    changed = true
  end
  if show.trade_cancel_error_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade_cancel_error_message then
    show.trade_cancel_error_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade_cancel_error_message
    changed = true
  end
  if show.trade_correction_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade_correction_message then
    show.trade_correction_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade_correction_message
    changed = true
  end
  if show.trade_report_message_long_form_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade_report_message_long_form_message then
    show.trade_report_message_long_form_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade_report_message_long_form_message
    changed = true
  end
  if show.trade_report_message_short_form_message ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade_report_message_short_form_message then
    show.trade_report_message_short_form_message = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade_report_message_short_form_message
    changed = true
  end
  if show.volume ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_volume then
    show.volume = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_volume
    changed = true
  end
  if show.administrative_payload ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_administrative_payload then
    show.administrative_payload = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_administrative_payload
    changed = true
  end
  if show.control_payload ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_control_payload then
    show.control_payload = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_control_payload
    changed = true
  end
  if show.payload ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_payload then
    show.payload = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_payload
    changed = true
  end
  if show.trade_payload ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade_payload then
    show.trade_payload = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_trade_payload
    changed = true
  end
  if show.volume_payload ~= omi_nasdaq_utdf_output_utp_v1_5.prefs.show_volume_payload then
    show.volume_payload = omi_nasdaq_utdf_output_utp_v1_5.prefs.show_volume_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Utdf Output Utp 1.5
-----------------------------------------------------------------------

-- Participant Token
nasdaq_utdf_output_utp_v1_5.participant_token = {}

-- Size: Participant Token
nasdaq_utdf_output_utp_v1_5.participant_token.size = 8

-- Display: Participant Token
nasdaq_utdf_output_utp_v1_5.participant_token.display = function(value)
  return "Participant Token: "..value
end

-- Dissect: Participant Token
nasdaq_utdf_output_utp_v1_5.participant_token.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.participant_token.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.participant_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.participant_token, range, value, display)

  return offset + length, value
end

-- Participant Timestamp
nasdaq_utdf_output_utp_v1_5.participant_timestamp = {}

-- Size: Participant Timestamp
nasdaq_utdf_output_utp_v1_5.participant_timestamp.size = 8

-- Display: Participant Timestamp
nasdaq_utdf_output_utp_v1_5.participant_timestamp.display = function(value)
  return "Participant Timestamp: "..value
end

-- Dissect: Participant Timestamp
nasdaq_utdf_output_utp_v1_5.participant_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.participant_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.participant_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.participant_timestamp, range, value, display)

  return offset + length, value
end

-- Sip Timestamp
nasdaq_utdf_output_utp_v1_5.sip_timestamp = {}

-- Size: Sip Timestamp
nasdaq_utdf_output_utp_v1_5.sip_timestamp.size = 8

-- Display: Sip Timestamp
nasdaq_utdf_output_utp_v1_5.sip_timestamp.display = function(value)
  return "Sip Timestamp: "..value
end

-- Dissect: Sip Timestamp
nasdaq_utdf_output_utp_v1_5.sip_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.sip_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.sip_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.sip_timestamp, range, value, display)

  return offset + length, value
end

-- Sub Market Center Id
nasdaq_utdf_output_utp_v1_5.sub_market_center_id = {}

-- Size: Sub Market Center Id
nasdaq_utdf_output_utp_v1_5.sub_market_center_id.size = 1

-- Display: Sub Market Center Id
nasdaq_utdf_output_utp_v1_5.sub_market_center_id.display = function(value)
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
nasdaq_utdf_output_utp_v1_5.sub_market_center_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.sub_market_center_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.sub_market_center_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.sub_market_center_id, range, value, display)

  return offset + length, value
end

-- Market Center Originator Id
nasdaq_utdf_output_utp_v1_5.market_center_originator_id = {}

-- Size: Market Center Originator Id
nasdaq_utdf_output_utp_v1_5.market_center_originator_id.size = 1

-- Display: Market Center Originator Id
nasdaq_utdf_output_utp_v1_5.market_center_originator_id.display = function(value)
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
nasdaq_utdf_output_utp_v1_5.market_center_originator_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.market_center_originator_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.market_center_originator_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_originator_id, range, value, display)

  return offset + length, value
end

-- Message Info
nasdaq_utdf_output_utp_v1_5.message_info = {}

-- Size: Message Info
nasdaq_utdf_output_utp_v1_5.message_info.size =
  nasdaq_utdf_output_utp_v1_5.market_center_originator_id.size + 
  nasdaq_utdf_output_utp_v1_5.sub_market_center_id.size + 
  nasdaq_utdf_output_utp_v1_5.sip_timestamp.size + 
  nasdaq_utdf_output_utp_v1_5.participant_timestamp.size + 
  nasdaq_utdf_output_utp_v1_5.participant_token.size

-- Display: Message Info
nasdaq_utdf_output_utp_v1_5.message_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Info
nasdaq_utdf_output_utp_v1_5.message_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Center Originator Id: 1 Byte Ascii String Enum with 20 values
  index, market_center_originator_id = nasdaq_utdf_output_utp_v1_5.market_center_originator_id.dissect(buffer, index, packet, parent)

  -- Sub Market Center Id: 1 Byte Ascii String Enum with 4 values
  index, sub_market_center_id = nasdaq_utdf_output_utp_v1_5.sub_market_center_id.dissect(buffer, index, packet, parent)

  -- Sip Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, sip_timestamp = nasdaq_utdf_output_utp_v1_5.sip_timestamp.dissect(buffer, index, packet, parent)

  -- Participant Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, participant_timestamp = nasdaq_utdf_output_utp_v1_5.participant_timestamp.dissect(buffer, index, packet, parent)

  -- Participant Token: 8 Byte Unsigned Fixed Width Integer
  index, participant_token = nasdaq_utdf_output_utp_v1_5.participant_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Info
nasdaq_utdf_output_utp_v1_5.message_info.dissect = function(buffer, offset, packet, parent)
  if show.message_info then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.message_info, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v1_5.message_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v1_5.message_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v1_5.message_info.fields(buffer, offset, packet, parent)
  end
end

-- End Of Consolidated Last Sale Eligibility
nasdaq_utdf_output_utp_v1_5.end_of_consolidated_last_sale_eligibility = {}

-- Read runtime size of: End Of Consolidated Last Sale Eligibility
nasdaq_utdf_output_utp_v1_5.end_of_consolidated_last_sale_eligibility.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: End Of Consolidated Last Sale Eligibility
nasdaq_utdf_output_utp_v1_5.end_of_consolidated_last_sale_eligibility.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Consolidated Last Sale Eligibility
nasdaq_utdf_output_utp_v1_5.end_of_consolidated_last_sale_eligibility.fields = function(buffer, offset, packet, parent, size_of_end_of_consolidated_last_sale_eligibility)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Consolidated Last Sale Eligibility
nasdaq_utdf_output_utp_v1_5.end_of_consolidated_last_sale_eligibility.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_end_of_consolidated_last_sale_eligibility = nasdaq_utdf_output_utp_v1_5.end_of_consolidated_last_sale_eligibility.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.end_of_consolidated_last_sale_eligibility then
    local range = buffer(offset, size_of_end_of_consolidated_last_sale_eligibility)
    local display = nasdaq_utdf_output_utp_v1_5.end_of_consolidated_last_sale_eligibility.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.end_of_consolidated_last_sale_eligibility, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.end_of_consolidated_last_sale_eligibility.fields(buffer, offset, packet, parent, size_of_end_of_consolidated_last_sale_eligibility)

  return offset + size_of_end_of_consolidated_last_sale_eligibility
end

-- End Of Trade Reporting Message
nasdaq_utdf_output_utp_v1_5.end_of_trade_reporting_message = {}

-- Read runtime size of: End Of Trade Reporting Message
nasdaq_utdf_output_utp_v1_5.end_of_trade_reporting_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: End Of Trade Reporting Message
nasdaq_utdf_output_utp_v1_5.end_of_trade_reporting_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Trade Reporting Message
nasdaq_utdf_output_utp_v1_5.end_of_trade_reporting_message.fields = function(buffer, offset, packet, parent, size_of_end_of_trade_reporting_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Trade Reporting Message
nasdaq_utdf_output_utp_v1_5.end_of_trade_reporting_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_end_of_trade_reporting_message = nasdaq_utdf_output_utp_v1_5.end_of_trade_reporting_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.end_of_trade_reporting_message then
    local range = buffer(offset, size_of_end_of_trade_reporting_message)
    local display = nasdaq_utdf_output_utp_v1_5.end_of_trade_reporting_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.end_of_trade_reporting_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.end_of_trade_reporting_message.fields(buffer, offset, packet, parent, size_of_end_of_trade_reporting_message)

  return offset + size_of_end_of_trade_reporting_message
end

-- End Of Transmissions Message
nasdaq_utdf_output_utp_v1_5.end_of_transmissions_message = {}

-- Read runtime size of: End Of Transmissions Message
nasdaq_utdf_output_utp_v1_5.end_of_transmissions_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: End Of Transmissions Message
nasdaq_utdf_output_utp_v1_5.end_of_transmissions_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmissions Message
nasdaq_utdf_output_utp_v1_5.end_of_transmissions_message.fields = function(buffer, offset, packet, parent, size_of_end_of_transmissions_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmissions Message
nasdaq_utdf_output_utp_v1_5.end_of_transmissions_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_end_of_transmissions_message = nasdaq_utdf_output_utp_v1_5.end_of_transmissions_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.end_of_transmissions_message then
    local range = buffer(offset, size_of_end_of_transmissions_message)
    local display = nasdaq_utdf_output_utp_v1_5.end_of_transmissions_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.end_of_transmissions_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.end_of_transmissions_message.fields(buffer, offset, packet, parent, size_of_end_of_transmissions_message)

  return offset + size_of_end_of_transmissions_message
end

-- Market Session Close Message
nasdaq_utdf_output_utp_v1_5.market_session_close_message = {}

-- Read runtime size of: Market Session Close Message
nasdaq_utdf_output_utp_v1_5.market_session_close_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Market Session Close Message
nasdaq_utdf_output_utp_v1_5.market_session_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Close Message
nasdaq_utdf_output_utp_v1_5.market_session_close_message.fields = function(buffer, offset, packet, parent, size_of_market_session_close_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Close Message
nasdaq_utdf_output_utp_v1_5.market_session_close_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_session_close_message = nasdaq_utdf_output_utp_v1_5.market_session_close_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_session_close_message then
    local range = buffer(offset, size_of_market_session_close_message)
    local display = nasdaq_utdf_output_utp_v1_5.market_session_close_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_session_close_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.market_session_close_message.fields(buffer, offset, packet, parent, size_of_market_session_close_message)

  return offset + size_of_market_session_close_message
end

-- Market Session Open Message
nasdaq_utdf_output_utp_v1_5.market_session_open_message = {}

-- Read runtime size of: Market Session Open Message
nasdaq_utdf_output_utp_v1_5.market_session_open_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Market Session Open Message
nasdaq_utdf_output_utp_v1_5.market_session_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Session Open Message
nasdaq_utdf_output_utp_v1_5.market_session_open_message.fields = function(buffer, offset, packet, parent, size_of_market_session_open_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Session Open Message
nasdaq_utdf_output_utp_v1_5.market_session_open_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_session_open_message = nasdaq_utdf_output_utp_v1_5.market_session_open_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_session_open_message then
    local range = buffer(offset, size_of_market_session_open_message)
    local display = nasdaq_utdf_output_utp_v1_5.market_session_open_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_session_open_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.market_session_open_message.fields(buffer, offset, packet, parent, size_of_market_session_open_message)

  return offset + size_of_market_session_open_message
end

-- End Of Day Message
nasdaq_utdf_output_utp_v1_5.end_of_day_message = {}

-- Read runtime size of: End Of Day Message
nasdaq_utdf_output_utp_v1_5.end_of_day_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: End Of Day Message
nasdaq_utdf_output_utp_v1_5.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
nasdaq_utdf_output_utp_v1_5.end_of_day_message.fields = function(buffer, offset, packet, parent, size_of_end_of_day_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
nasdaq_utdf_output_utp_v1_5.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_end_of_day_message = nasdaq_utdf_output_utp_v1_5.end_of_day_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.end_of_day_message then
    local range = buffer(offset, size_of_end_of_day_message)
    local display = nasdaq_utdf_output_utp_v1_5.end_of_day_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.end_of_day_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.end_of_day_message.fields(buffer, offset, packet, parent, size_of_end_of_day_message)

  return offset + size_of_end_of_day_message
end

-- Start Of Day Message
nasdaq_utdf_output_utp_v1_5.start_of_day_message = {}

-- Read runtime size of: Start Of Day Message
nasdaq_utdf_output_utp_v1_5.start_of_day_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Start Of Day Message
nasdaq_utdf_output_utp_v1_5.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
nasdaq_utdf_output_utp_v1_5.start_of_day_message.fields = function(buffer, offset, packet, parent, size_of_start_of_day_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
nasdaq_utdf_output_utp_v1_5.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_start_of_day_message = nasdaq_utdf_output_utp_v1_5.start_of_day_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.start_of_day_message then
    local range = buffer(offset, size_of_start_of_day_message)
    local display = nasdaq_utdf_output_utp_v1_5.start_of_day_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.start_of_day_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.start_of_day_message.fields(buffer, offset, packet, parent, size_of_start_of_day_message)

  return offset + size_of_start_of_day_message
end

-- Control Payload
nasdaq_utdf_output_utp_v1_5.control_payload = {}

-- Calculate runtime size of: Control Payload
nasdaq_utdf_output_utp_v1_5.control_payload.size = function(buffer, offset, control_message_type)
  -- Size of Start Of Day Message
  if control_message_type == "I" then
    return nasdaq_utdf_output_utp_v1_5.start_of_day_message.size(buffer, offset)
  end
  -- Size of End Of Day Message
  if control_message_type == "J" then
    return nasdaq_utdf_output_utp_v1_5.end_of_day_message.size(buffer, offset)
  end
  -- Size of Market Session Open Message
  if control_message_type == "O" then
    return nasdaq_utdf_output_utp_v1_5.market_session_open_message.size(buffer, offset)
  end
  -- Size of Market Session Close Message
  if control_message_type == "C" then
    return nasdaq_utdf_output_utp_v1_5.market_session_close_message.size(buffer, offset)
  end
  -- Size of End Of Transmissions Message
  if control_message_type == "Z" then
    return nasdaq_utdf_output_utp_v1_5.end_of_transmissions_message.size(buffer, offset)
  end
  -- Size of End Of Trade Reporting Message
  if control_message_type == "X" then
    return nasdaq_utdf_output_utp_v1_5.end_of_trade_reporting_message.size(buffer, offset)
  end
  -- Size of End Of Consolidated Last Sale Eligibility
  if control_message_type == "S" then
    return nasdaq_utdf_output_utp_v1_5.end_of_consolidated_last_sale_eligibility.size(buffer, offset)
  end

  return 0
end

-- Display: Control Payload
nasdaq_utdf_output_utp_v1_5.control_payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Control Payload
nasdaq_utdf_output_utp_v1_5.control_payload.branches = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "I" then
    return nasdaq_utdf_output_utp_v1_5.start_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "J" then
    return nasdaq_utdf_output_utp_v1_5.end_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Open Message
  if control_message_type == "O" then
    return nasdaq_utdf_output_utp_v1_5.market_session_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Session Close Message
  if control_message_type == "C" then
    return nasdaq_utdf_output_utp_v1_5.market_session_close_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmissions Message
  if control_message_type == "Z" then
    return nasdaq_utdf_output_utp_v1_5.end_of_transmissions_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Trade Reporting Message
  if control_message_type == "X" then
    return nasdaq_utdf_output_utp_v1_5.end_of_trade_reporting_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Consolidated Last Sale Eligibility
  if control_message_type == "S" then
    return nasdaq_utdf_output_utp_v1_5.end_of_consolidated_last_sale_eligibility.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Control Payload
nasdaq_utdf_output_utp_v1_5.control_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  if not show.control_payload then
    return nasdaq_utdf_output_utp_v1_5.control_payload.branches(buffer, offset, packet, parent, control_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_utdf_output_utp_v1_5.control_payload.size(buffer, offset, control_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_utdf_output_utp_v1_5.control_payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.control_payload, range, display)

  return nasdaq_utdf_output_utp_v1_5.control_payload.branches(buffer, offset, packet, parent, control_message_type)
end

-- Control Message Type
nasdaq_utdf_output_utp_v1_5.control_message_type = {}

-- Size: Control Message Type
nasdaq_utdf_output_utp_v1_5.control_message_type.size = 1

-- Display: Control Message Type
nasdaq_utdf_output_utp_v1_5.control_message_type.display = function(value)
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
  if value == "X" then
    return "Control Message Type: End Of Trade Reporting Message (X)"
  end
  if value == "S" then
    return "Control Message Type: End Of Consolidated Last Sale Eligibility (S)"
  end

  return "Control Message Type: Unknown("..value..")"
end

-- Dissect: Control Message Type
nasdaq_utdf_output_utp_v1_5.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Control
nasdaq_utdf_output_utp_v1_5.control = {}

-- Read runtime size of: Control
nasdaq_utdf_output_utp_v1_5.control.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 2
end

-- Display: Control
nasdaq_utdf_output_utp_v1_5.control.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control
nasdaq_utdf_output_utp_v1_5.control.fields = function(buffer, offset, packet, parent, size_of_control)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String Enum with 7 values
  index, control_message_type = nasdaq_utdf_output_utp_v1_5.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Payload: Runtime Type with 7 branches
  index = nasdaq_utdf_output_utp_v1_5.control_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control
nasdaq_utdf_output_utp_v1_5.control.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_control = nasdaq_utdf_output_utp_v1_5.control.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.control then
    local range = buffer(offset, size_of_control)
    local display = nasdaq_utdf_output_utp_v1_5.control.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.control, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.control.fields(buffer, offset, packet, parent, size_of_control)

  return offset + size_of_control
end

-- Current Market Center Volume
nasdaq_utdf_output_utp_v1_5.current_market_center_volume = {}

-- Size: Current Market Center Volume
nasdaq_utdf_output_utp_v1_5.current_market_center_volume.size = 8

-- Display: Current Market Center Volume
nasdaq_utdf_output_utp_v1_5.current_market_center_volume.display = function(value)
  return "Current Market Center Volume: "..value
end

-- Dissect: Current Market Center Volume
nasdaq_utdf_output_utp_v1_5.current_market_center_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.current_market_center_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.current_market_center_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.current_market_center_volume, range, value, display)

  return offset + length, value
end

-- Market Center Identifier
nasdaq_utdf_output_utp_v1_5.market_center_identifier = {}

-- Size: Market Center Identifier
nasdaq_utdf_output_utp_v1_5.market_center_identifier.size = 1

-- Display: Market Center Identifier
nasdaq_utdf_output_utp_v1_5.market_center_identifier.display = function(value)
  return "Market Center Identifier: "..value
end

-- Dissect: Market Center Identifier
nasdaq_utdf_output_utp_v1_5.market_center_identifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.market_center_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.market_center_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_identifier, range, value, display)

  return offset + length, value
end

-- Market Center Volume Attachment
nasdaq_utdf_output_utp_v1_5.market_center_volume_attachment = {}

-- Size: Market Center Volume Attachment
nasdaq_utdf_output_utp_v1_5.market_center_volume_attachment.size =
  nasdaq_utdf_output_utp_v1_5.market_center_identifier.size + 
  nasdaq_utdf_output_utp_v1_5.current_market_center_volume.size

-- Display: Market Center Volume Attachment
nasdaq_utdf_output_utp_v1_5.market_center_volume_attachment.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Volume Attachment
nasdaq_utdf_output_utp_v1_5.market_center_volume_attachment.fields = function(buffer, offset, packet, parent, market_center_volume_attachment_index)
  local index = offset

  -- Implicit Market Center Volume Attachment Index
  if market_center_volume_attachment_index ~= nil then
    local iteration = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_volume_attachment_index, market_center_volume_attachment_index)
    iteration:set_generated()
  end

  -- Market Center Identifier: 1 Byte Ascii String
  index, market_center_identifier = nasdaq_utdf_output_utp_v1_5.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Current Market Center Volume: 8 Byte Unsigned Fixed Width Integer
  index, current_market_center_volume = nasdaq_utdf_output_utp_v1_5.current_market_center_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Volume Attachment
nasdaq_utdf_output_utp_v1_5.market_center_volume_attachment.dissect = function(buffer, offset, packet, parent, market_center_volume_attachment_index)
  if show.market_center_volume_attachment then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_volume_attachment, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v1_5.market_center_volume_attachment.fields(buffer, offset, packet, parent, market_center_volume_attachment_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v1_5.market_center_volume_attachment.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v1_5.market_center_volume_attachment.fields(buffer, offset, packet, parent, market_center_volume_attachment_index)
  end
end

-- Number Of Market Center Volumes
nasdaq_utdf_output_utp_v1_5.number_of_market_center_volumes = {}

-- Size: Number Of Market Center Volumes
nasdaq_utdf_output_utp_v1_5.number_of_market_center_volumes.size = 2

-- Display: Number Of Market Center Volumes
nasdaq_utdf_output_utp_v1_5.number_of_market_center_volumes.display = function(value)
  return "Number Of Market Center Volumes: "..value
end

-- Dissect: Number Of Market Center Volumes
nasdaq_utdf_output_utp_v1_5.number_of_market_center_volumes.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.number_of_market_center_volumes.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v1_5.number_of_market_center_volumes.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.number_of_market_center_volumes, range, value, display)

  return offset + length, value
end

-- Total Consolidated Volume
nasdaq_utdf_output_utp_v1_5.total_consolidated_volume = {}

-- Size: Total Consolidated Volume
nasdaq_utdf_output_utp_v1_5.total_consolidated_volume.size = 8

-- Display: Total Consolidated Volume
nasdaq_utdf_output_utp_v1_5.total_consolidated_volume.display = function(value)
  return "Total Consolidated Volume: "..value
end

-- Dissect: Total Consolidated Volume
nasdaq_utdf_output_utp_v1_5.total_consolidated_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.total_consolidated_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.total_consolidated_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.total_consolidated_volume, range, value, display)

  return offset + length, value
end

-- Total Consolidated And Market Center Volume Message
nasdaq_utdf_output_utp_v1_5.total_consolidated_and_market_center_volume_message = {}

-- Read runtime size of: Total Consolidated And Market Center Volume Message
nasdaq_utdf_output_utp_v1_5.total_consolidated_and_market_center_volume_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Total Consolidated And Market Center Volume Message
nasdaq_utdf_output_utp_v1_5.total_consolidated_and_market_center_volume_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Total Consolidated And Market Center Volume Message
nasdaq_utdf_output_utp_v1_5.total_consolidated_and_market_center_volume_message.fields = function(buffer, offset, packet, parent, size_of_total_consolidated_and_market_center_volume_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Total Consolidated Volume: 8 Byte Unsigned Fixed Width Integer
  index, total_consolidated_volume = nasdaq_utdf_output_utp_v1_5.total_consolidated_volume.dissect(buffer, index, packet, parent)

  -- Number Of Market Center Volumes: 2 Byte Unsigned Fixed Width Integer
  index, number_of_market_center_volumes = nasdaq_utdf_output_utp_v1_5.number_of_market_center_volumes.dissect(buffer, index, packet, parent)

  -- Repeating: Market Center Volume Attachment
  for market_center_volume_attachment_index = 1, number_of_market_center_volumes do
    index, market_center_volume_attachment = nasdaq_utdf_output_utp_v1_5.market_center_volume_attachment.dissect(buffer, index, packet, parent, market_center_volume_attachment_index)
  end

  return index
end

-- Dissect: Total Consolidated And Market Center Volume Message
nasdaq_utdf_output_utp_v1_5.total_consolidated_and_market_center_volume_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_total_consolidated_and_market_center_volume_message = nasdaq_utdf_output_utp_v1_5.total_consolidated_and_market_center_volume_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.total_consolidated_and_market_center_volume_message then
    local range = buffer(offset, size_of_total_consolidated_and_market_center_volume_message)
    local display = nasdaq_utdf_output_utp_v1_5.total_consolidated_and_market_center_volume_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.total_consolidated_and_market_center_volume_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.total_consolidated_and_market_center_volume_message.fields(buffer, offset, packet, parent, size_of_total_consolidated_and_market_center_volume_message)

  return offset + size_of_total_consolidated_and_market_center_volume_message
end

-- Volume Payload
nasdaq_utdf_output_utp_v1_5.volume_payload = {}

-- Calculate runtime size of: Volume Payload
nasdaq_utdf_output_utp_v1_5.volume_payload.size = function(buffer, offset, volume_message_type)
  -- Size of Total Consolidated And Market Center Volume Message
  if volume_message_type == "M" then
    return nasdaq_utdf_output_utp_v1_5.total_consolidated_and_market_center_volume_message.size(buffer, offset)
  end

  return 0
end

-- Display: Volume Payload
nasdaq_utdf_output_utp_v1_5.volume_payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Volume Payload
nasdaq_utdf_output_utp_v1_5.volume_payload.branches = function(buffer, offset, packet, parent, volume_message_type)
  -- Dissect Total Consolidated And Market Center Volume Message
  if volume_message_type == "M" then
    return nasdaq_utdf_output_utp_v1_5.total_consolidated_and_market_center_volume_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Volume Payload
nasdaq_utdf_output_utp_v1_5.volume_payload.dissect = function(buffer, offset, packet, parent, volume_message_type)
  if not show.volume_payload then
    return nasdaq_utdf_output_utp_v1_5.volume_payload.branches(buffer, offset, packet, parent, volume_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_utdf_output_utp_v1_5.volume_payload.size(buffer, offset, volume_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_utdf_output_utp_v1_5.volume_payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.volume_payload, range, display)

  return nasdaq_utdf_output_utp_v1_5.volume_payload.branches(buffer, offset, packet, parent, volume_message_type)
end

-- Volume Message Type
nasdaq_utdf_output_utp_v1_5.volume_message_type = {}

-- Size: Volume Message Type
nasdaq_utdf_output_utp_v1_5.volume_message_type.size = 1

-- Display: Volume Message Type
nasdaq_utdf_output_utp_v1_5.volume_message_type.display = function(value)
  if value == "M" then
    return "Volume Message Type: Total Consolidated And Market Center Volume Message (M)"
  end

  return "Volume Message Type: Unknown("..value..")"
end

-- Dissect: Volume Message Type
nasdaq_utdf_output_utp_v1_5.volume_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.volume_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.volume_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.volume_message_type, range, value, display)

  return offset + length, value
end

-- Volume
nasdaq_utdf_output_utp_v1_5.volume = {}

-- Read runtime size of: Volume
nasdaq_utdf_output_utp_v1_5.volume.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 2
end

-- Display: Volume
nasdaq_utdf_output_utp_v1_5.volume.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Volume
nasdaq_utdf_output_utp_v1_5.volume.fields = function(buffer, offset, packet, parent, size_of_volume)
  local index = offset

  -- Volume Message Type: 1 Byte Ascii String Enum with 1 values
  index, volume_message_type = nasdaq_utdf_output_utp_v1_5.volume_message_type.dissect(buffer, index, packet, parent)

  -- Volume Payload: Runtime Type with 1 branches
  index = nasdaq_utdf_output_utp_v1_5.volume_payload.dissect(buffer, index, packet, parent, volume_message_type)

  return index
end

-- Dissect: Volume
nasdaq_utdf_output_utp_v1_5.volume.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_volume = nasdaq_utdf_output_utp_v1_5.volume.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.volume then
    local range = buffer(offset, size_of_volume)
    local display = nasdaq_utdf_output_utp_v1_5.volume.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.volume, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.volume.fields(buffer, offset, packet, parent, size_of_volume)

  return offset + size_of_volume
end

-- Market Participant Low Price
nasdaq_utdf_output_utp_v1_5.market_participant_low_price = {}

-- Size: Market Participant Low Price
nasdaq_utdf_output_utp_v1_5.market_participant_low_price.size = 8

-- Display: Market Participant Low Price
nasdaq_utdf_output_utp_v1_5.market_participant_low_price.display = function(value)
  return "Market Participant Low Price: "..value
end

-- Translate: Market Participant Low Price
nasdaq_utdf_output_utp_v1_5.market_participant_low_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Participant Low Price
nasdaq_utdf_output_utp_v1_5.market_participant_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.market_participant_low_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.market_participant_low_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.market_participant_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_participant_low_price, range, value, display)

  return offset + length, value
end

-- Market Participant High Price
nasdaq_utdf_output_utp_v1_5.market_participant_high_price = {}

-- Size: Market Participant High Price
nasdaq_utdf_output_utp_v1_5.market_participant_high_price.size = 8

-- Display: Market Participant High Price
nasdaq_utdf_output_utp_v1_5.market_participant_high_price.display = function(value)
  return "Market Participant High Price: "..value
end

-- Translate: Market Participant High Price
nasdaq_utdf_output_utp_v1_5.market_participant_high_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Participant High Price
nasdaq_utdf_output_utp_v1_5.market_participant_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.market_participant_high_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.market_participant_high_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.market_participant_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_participant_high_price, range, value, display)

  return offset + length, value
end

-- Market Center Close Indicator
nasdaq_utdf_output_utp_v1_5.market_center_close_indicator = {}

-- Size: Market Center Close Indicator
nasdaq_utdf_output_utp_v1_5.market_center_close_indicator.size = 1

-- Display: Market Center Close Indicator
nasdaq_utdf_output_utp_v1_5.market_center_close_indicator.display = function(value)
  if value == "M" then
    return "Market Center Close Indicator: Based On M Sale Condition (M)"
  end
  if value == " " then
    return "Market Center Close Indicator: Not Based On M Sale Condition (<whitespace>)"
  end

  return "Market Center Close Indicator: Unknown("..value..")"
end

-- Dissect: Market Center Close Indicator
nasdaq_utdf_output_utp_v1_5.market_center_close_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.market_center_close_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.market_center_close_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_close_indicator, range, value, display)

  return offset + length, value
end

-- Market Center Volume
nasdaq_utdf_output_utp_v1_5.market_center_volume = {}

-- Size: Market Center Volume
nasdaq_utdf_output_utp_v1_5.market_center_volume.size = 8

-- Display: Market Center Volume
nasdaq_utdf_output_utp_v1_5.market_center_volume.display = function(value)
  return "Market Center Volume: "..value
end

-- Dissect: Market Center Volume
nasdaq_utdf_output_utp_v1_5.market_center_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.market_center_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.market_center_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_volume, range, value, display)

  return offset + length, value
end

-- Market Center Closing Price
nasdaq_utdf_output_utp_v1_5.market_center_closing_price = {}

-- Size: Market Center Closing Price
nasdaq_utdf_output_utp_v1_5.market_center_closing_price.size = 8

-- Display: Market Center Closing Price
nasdaq_utdf_output_utp_v1_5.market_center_closing_price.display = function(value)
  return "Market Center Closing Price: "..value
end

-- Translate: Market Center Closing Price
nasdaq_utdf_output_utp_v1_5.market_center_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Center Closing Price
nasdaq_utdf_output_utp_v1_5.market_center_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.market_center_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.market_center_closing_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.market_center_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_closing_price, range, value, display)

  return offset + length, value
end

-- Market Center Closing Price And Volume Summary
nasdaq_utdf_output_utp_v1_5.market_center_closing_price_and_volume_summary = {}

-- Size: Market Center Closing Price And Volume Summary
nasdaq_utdf_output_utp_v1_5.market_center_closing_price_and_volume_summary.size =
  nasdaq_utdf_output_utp_v1_5.market_center_identifier.size + 
  nasdaq_utdf_output_utp_v1_5.market_center_closing_price.size + 
  nasdaq_utdf_output_utp_v1_5.market_center_volume.size + 
  nasdaq_utdf_output_utp_v1_5.market_center_close_indicator.size + 
  nasdaq_utdf_output_utp_v1_5.market_participant_high_price.size + 
  nasdaq_utdf_output_utp_v1_5.market_participant_low_price.size

-- Display: Market Center Closing Price And Volume Summary
nasdaq_utdf_output_utp_v1_5.market_center_closing_price_and_volume_summary.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Closing Price And Volume Summary
nasdaq_utdf_output_utp_v1_5.market_center_closing_price_and_volume_summary.fields = function(buffer, offset, packet, parent, market_center_closing_price_and_volume_summary_index)
  local index = offset

  -- Implicit Market Center Closing Price And Volume Summary Index
  if market_center_closing_price_and_volume_summary_index ~= nil then
    local iteration = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_closing_price_and_volume_summary_index, market_center_closing_price_and_volume_summary_index)
    iteration:set_generated()
  end

  -- Market Center Identifier: 1 Byte Ascii String
  index, market_center_identifier = nasdaq_utdf_output_utp_v1_5.market_center_identifier.dissect(buffer, index, packet, parent)

  -- Market Center Closing Price: 8 Byte Unsigned Fixed Width Integer
  index, market_center_closing_price = nasdaq_utdf_output_utp_v1_5.market_center_closing_price.dissect(buffer, index, packet, parent)

  -- Market Center Volume: 8 Byte Unsigned Fixed Width Integer
  index, market_center_volume = nasdaq_utdf_output_utp_v1_5.market_center_volume.dissect(buffer, index, packet, parent)

  -- Market Center Close Indicator: 1 Byte Ascii String Enum with 2 values
  index, market_center_close_indicator = nasdaq_utdf_output_utp_v1_5.market_center_close_indicator.dissect(buffer, index, packet, parent)

  -- Market Participant High Price: 8 Byte Unsigned Fixed Width Integer
  index, market_participant_high_price = nasdaq_utdf_output_utp_v1_5.market_participant_high_price.dissect(buffer, index, packet, parent)

  -- Market Participant Low Price: 8 Byte Unsigned Fixed Width Integer
  index, market_participant_low_price = nasdaq_utdf_output_utp_v1_5.market_participant_low_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Closing Price And Volume Summary
nasdaq_utdf_output_utp_v1_5.market_center_closing_price_and_volume_summary.dissect = function(buffer, offset, packet, parent, market_center_closing_price_and_volume_summary_index)
  if show.market_center_closing_price_and_volume_summary then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_closing_price_and_volume_summary, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v1_5.market_center_closing_price_and_volume_summary.fields(buffer, offset, packet, parent, market_center_closing_price_and_volume_summary_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v1_5.market_center_closing_price_and_volume_summary.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v1_5.market_center_closing_price_and_volume_summary.fields(buffer, offset, packet, parent, market_center_closing_price_and_volume_summary_index)
  end
end

-- Number Of Market Center Summaries
nasdaq_utdf_output_utp_v1_5.number_of_market_center_summaries = {}

-- Size: Number Of Market Center Summaries
nasdaq_utdf_output_utp_v1_5.number_of_market_center_summaries.size = 2

-- Display: Number Of Market Center Summaries
nasdaq_utdf_output_utp_v1_5.number_of_market_center_summaries.display = function(value)
  return "Number Of Market Center Summaries: "..value
end

-- Dissect: Number Of Market Center Summaries
nasdaq_utdf_output_utp_v1_5.number_of_market_center_summaries.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.number_of_market_center_summaries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v1_5.number_of_market_center_summaries.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.number_of_market_center_summaries, range, value, display)

  return offset + length, value
end

-- Trading Action Indicator
nasdaq_utdf_output_utp_v1_5.trading_action_indicator = {}

-- Size: Trading Action Indicator
nasdaq_utdf_output_utp_v1_5.trading_action_indicator.size = 1

-- Display: Trading Action Indicator
nasdaq_utdf_output_utp_v1_5.trading_action_indicator.display = function(value)
  if value == "H" then
    return "Trading Action Indicator: Trading Halt (H)"
  end
  if value == " " then
    return "Trading Action Indicator: Regular Trading (<whitespace>)"
  end

  return "Trading Action Indicator: Unknown("..value..")"
end

-- Dissect: Trading Action Indicator
nasdaq_utdf_output_utp_v1_5.trading_action_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.trading_action_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.trading_action_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trading_action_indicator, range, value, display)

  return offset + length, value
end

-- Consolidated Volume
nasdaq_utdf_output_utp_v1_5.consolidated_volume = {}

-- Size: Consolidated Volume
nasdaq_utdf_output_utp_v1_5.consolidated_volume.size = 8

-- Display: Consolidated Volume
nasdaq_utdf_output_utp_v1_5.consolidated_volume.display = function(value)
  return "Consolidated Volume: "..value
end

-- Dissect: Consolidated Volume
nasdaq_utdf_output_utp_v1_5.consolidated_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.consolidated_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.consolidated_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.consolidated_volume, range, value, display)

  return offset + length, value
end

-- Daily Consolidated Closing Price
nasdaq_utdf_output_utp_v1_5.daily_consolidated_closing_price = {}

-- Size: Daily Consolidated Closing Price
nasdaq_utdf_output_utp_v1_5.daily_consolidated_closing_price.size = 8

-- Display: Daily Consolidated Closing Price
nasdaq_utdf_output_utp_v1_5.daily_consolidated_closing_price.display = function(value)
  return "Daily Consolidated Closing Price: "..value
end

-- Translate: Daily Consolidated Closing Price
nasdaq_utdf_output_utp_v1_5.daily_consolidated_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Daily Consolidated Closing Price
nasdaq_utdf_output_utp_v1_5.daily_consolidated_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.daily_consolidated_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.daily_consolidated_closing_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.daily_consolidated_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.daily_consolidated_closing_price, range, value, display)

  return offset + length, value
end

-- Daily Consolidated Low Price
nasdaq_utdf_output_utp_v1_5.daily_consolidated_low_price = {}

-- Size: Daily Consolidated Low Price
nasdaq_utdf_output_utp_v1_5.daily_consolidated_low_price.size = 8

-- Display: Daily Consolidated Low Price
nasdaq_utdf_output_utp_v1_5.daily_consolidated_low_price.display = function(value)
  return "Daily Consolidated Low Price: "..value
end

-- Translate: Daily Consolidated Low Price
nasdaq_utdf_output_utp_v1_5.daily_consolidated_low_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Daily Consolidated Low Price
nasdaq_utdf_output_utp_v1_5.daily_consolidated_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.daily_consolidated_low_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.daily_consolidated_low_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.daily_consolidated_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.daily_consolidated_low_price, range, value, display)

  return offset + length, value
end

-- Daily Consolidated High Price
nasdaq_utdf_output_utp_v1_5.daily_consolidated_high_price = {}

-- Size: Daily Consolidated High Price
nasdaq_utdf_output_utp_v1_5.daily_consolidated_high_price.size = 8

-- Display: Daily Consolidated High Price
nasdaq_utdf_output_utp_v1_5.daily_consolidated_high_price.display = function(value)
  return "Daily Consolidated High Price: "..value
end

-- Translate: Daily Consolidated High Price
nasdaq_utdf_output_utp_v1_5.daily_consolidated_high_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Daily Consolidated High Price
nasdaq_utdf_output_utp_v1_5.daily_consolidated_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.daily_consolidated_high_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.daily_consolidated_high_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.daily_consolidated_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.daily_consolidated_high_price, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_utdf_output_utp_v1_5.symbol = {}

-- Size: Symbol
nasdaq_utdf_output_utp_v1_5.symbol.size = 5

-- Display: Symbol
nasdaq_utdf_output_utp_v1_5.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_utdf_output_utp_v1_5.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.symbol, range, value, display)

  return offset + length, value
end

-- Closing Trade Summary Report Message
nasdaq_utdf_output_utp_v1_5.closing_trade_summary_report_message = {}

-- Read runtime size of: Closing Trade Summary Report Message
nasdaq_utdf_output_utp_v1_5.closing_trade_summary_report_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Closing Trade Summary Report Message
nasdaq_utdf_output_utp_v1_5.closing_trade_summary_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Trade Summary Report Message
nasdaq_utdf_output_utp_v1_5.closing_trade_summary_report_message.fields = function(buffer, offset, packet, parent, size_of_closing_trade_summary_report_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol: 5 Byte Ascii String
  index, symbol = nasdaq_utdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Daily Consolidated High Price: 8 Byte Unsigned Fixed Width Integer
  index, daily_consolidated_high_price = nasdaq_utdf_output_utp_v1_5.daily_consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Daily Consolidated Low Price: 8 Byte Unsigned Fixed Width Integer
  index, daily_consolidated_low_price = nasdaq_utdf_output_utp_v1_5.daily_consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Daily Consolidated Closing Price: 8 Byte Unsigned Fixed Width Integer
  index, daily_consolidated_closing_price = nasdaq_utdf_output_utp_v1_5.daily_consolidated_closing_price.dissect(buffer, index, packet, parent)

  -- Market Center Originator Id: 1 Byte Ascii String Enum with 20 values
  index, market_center_originator_id = nasdaq_utdf_output_utp_v1_5.market_center_originator_id.dissect(buffer, index, packet, parent)

  -- Consolidated Volume: 8 Byte Unsigned Fixed Width Integer
  index, consolidated_volume = nasdaq_utdf_output_utp_v1_5.consolidated_volume.dissect(buffer, index, packet, parent)

  -- Trading Action Indicator: 1 Byte Ascii String Enum with 2 values
  index, trading_action_indicator = nasdaq_utdf_output_utp_v1_5.trading_action_indicator.dissect(buffer, index, packet, parent)

  -- Number Of Market Center Summaries: 2 Byte Unsigned Fixed Width Integer
  index, number_of_market_center_summaries = nasdaq_utdf_output_utp_v1_5.number_of_market_center_summaries.dissect(buffer, index, packet, parent)

  -- Repeating: Market Center Closing Price And Volume Summary
  for market_center_closing_price_and_volume_summary_index = 1, number_of_market_center_summaries do
    index, market_center_closing_price_and_volume_summary = nasdaq_utdf_output_utp_v1_5.market_center_closing_price_and_volume_summary.dissect(buffer, index, packet, parent, market_center_closing_price_and_volume_summary_index)
  end

  return index
end

-- Dissect: Closing Trade Summary Report Message
nasdaq_utdf_output_utp_v1_5.closing_trade_summary_report_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_closing_trade_summary_report_message = nasdaq_utdf_output_utp_v1_5.closing_trade_summary_report_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.closing_trade_summary_report_message then
    local range = buffer(offset, size_of_closing_trade_summary_report_message)
    local display = nasdaq_utdf_output_utp_v1_5.closing_trade_summary_report_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.closing_trade_summary_report_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.closing_trade_summary_report_message.fields(buffer, offset, packet, parent, size_of_closing_trade_summary_report_message)

  return offset + size_of_closing_trade_summary_report_message
end

-- Collar Extension Indicator
nasdaq_utdf_output_utp_v1_5.collar_extension_indicator = {}

-- Size: Collar Extension Indicator
nasdaq_utdf_output_utp_v1_5.collar_extension_indicator.size = 1

-- Display: Collar Extension Indicator
nasdaq_utdf_output_utp_v1_5.collar_extension_indicator.display = function(value)
  return "Collar Extension Indicator: "..value
end

-- Dissect: Collar Extension Indicator
nasdaq_utdf_output_utp_v1_5.collar_extension_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.collar_extension_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.collar_extension_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.collar_extension_indicator, range, value, display)

  return offset + length, value
end

-- Collar Down Price
nasdaq_utdf_output_utp_v1_5.collar_down_price = {}

-- Size: Collar Down Price
nasdaq_utdf_output_utp_v1_5.collar_down_price.size = 8

-- Display: Collar Down Price
nasdaq_utdf_output_utp_v1_5.collar_down_price.display = function(value)
  return "Collar Down Price: "..value
end

-- Translate: Collar Down Price
nasdaq_utdf_output_utp_v1_5.collar_down_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Down Price
nasdaq_utdf_output_utp_v1_5.collar_down_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.collar_down_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.collar_down_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.collar_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.collar_down_price, range, value, display)

  return offset + length, value
end

-- Collar Up Price
nasdaq_utdf_output_utp_v1_5.collar_up_price = {}

-- Size: Collar Up Price
nasdaq_utdf_output_utp_v1_5.collar_up_price.size = 8

-- Display: Collar Up Price
nasdaq_utdf_output_utp_v1_5.collar_up_price.display = function(value)
  return "Collar Up Price: "..value
end

-- Translate: Collar Up Price
nasdaq_utdf_output_utp_v1_5.collar_up_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Up Price
nasdaq_utdf_output_utp_v1_5.collar_up_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.collar_up_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.collar_up_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.collar_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.collar_up_price, range, value, display)

  return offset + length, value
end

-- Collar Reference Price
nasdaq_utdf_output_utp_v1_5.collar_reference_price = {}

-- Size: Collar Reference Price
nasdaq_utdf_output_utp_v1_5.collar_reference_price.size = 8

-- Display: Collar Reference Price
nasdaq_utdf_output_utp_v1_5.collar_reference_price.display = function(value)
  return "Collar Reference Price: "..value
end

-- Translate: Collar Reference Price
nasdaq_utdf_output_utp_v1_5.collar_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Collar Reference Price
nasdaq_utdf_output_utp_v1_5.collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.collar_reference_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.collar_reference_price, range, value, display)

  return offset + length, value
end

-- Trading Action Sequence Number
nasdaq_utdf_output_utp_v1_5.trading_action_sequence_number = {}

-- Size: Trading Action Sequence Number
nasdaq_utdf_output_utp_v1_5.trading_action_sequence_number.size = 4

-- Display: Trading Action Sequence Number
nasdaq_utdf_output_utp_v1_5.trading_action_sequence_number.display = function(value)
  return "Trading Action Sequence Number: "..value
end

-- Dissect: Trading Action Sequence Number
nasdaq_utdf_output_utp_v1_5.trading_action_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.trading_action_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v1_5.trading_action_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trading_action_sequence_number, range, value, display)

  return offset + length, value
end

-- Auction Collar Message
nasdaq_utdf_output_utp_v1_5.auction_collar_message = {}

-- Read runtime size of: Auction Collar Message
nasdaq_utdf_output_utp_v1_5.auction_collar_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Auction Collar Message
nasdaq_utdf_output_utp_v1_5.auction_collar_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Collar Message
nasdaq_utdf_output_utp_v1_5.auction_collar_message.fields = function(buffer, offset, packet, parent, size_of_auction_collar_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol: 5 Byte Ascii String
  index, symbol = nasdaq_utdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Trading Action Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, trading_action_sequence_number = nasdaq_utdf_output_utp_v1_5.trading_action_sequence_number.dissect(buffer, index, packet, parent)

  -- Collar Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, collar_reference_price = nasdaq_utdf_output_utp_v1_5.collar_reference_price.dissect(buffer, index, packet, parent)

  -- Collar Up Price: 8 Byte Unsigned Fixed Width Integer
  index, collar_up_price = nasdaq_utdf_output_utp_v1_5.collar_up_price.dissect(buffer, index, packet, parent)

  -- Collar Down Price: 8 Byte Unsigned Fixed Width Integer
  index, collar_down_price = nasdaq_utdf_output_utp_v1_5.collar_down_price.dissect(buffer, index, packet, parent)

  -- Collar Extension Indicator: 1 Byte Ascii String
  index, collar_extension_indicator = nasdaq_utdf_output_utp_v1_5.collar_extension_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Collar Message
nasdaq_utdf_output_utp_v1_5.auction_collar_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_auction_collar_message = nasdaq_utdf_output_utp_v1_5.auction_collar_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.auction_collar_message then
    local range = buffer(offset, size_of_auction_collar_message)
    local display = nasdaq_utdf_output_utp_v1_5.auction_collar_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.auction_collar_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.auction_collar_message.fields(buffer, offset, packet, parent, size_of_auction_collar_message)

  return offset + size_of_auction_collar_message
end

-- Mwcb Level 3
nasdaq_utdf_output_utp_v1_5.mwcb_level_3 = {}

-- Size: Mwcb Level 3
nasdaq_utdf_output_utp_v1_5.mwcb_level_3.size = 8

-- Display: Mwcb Level 3
nasdaq_utdf_output_utp_v1_5.mwcb_level_3.display = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
nasdaq_utdf_output_utp_v1_5.mwcb_level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.mwcb_level_3.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.mwcb_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- Mwcb Level 2
nasdaq_utdf_output_utp_v1_5.mwcb_level_2 = {}

-- Size: Mwcb Level 2
nasdaq_utdf_output_utp_v1_5.mwcb_level_2.size = 8

-- Display: Mwcb Level 2
nasdaq_utdf_output_utp_v1_5.mwcb_level_2.display = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
nasdaq_utdf_output_utp_v1_5.mwcb_level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.mwcb_level_2.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.mwcb_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Mwcb Level 1
nasdaq_utdf_output_utp_v1_5.mwcb_level_1 = {}

-- Size: Mwcb Level 1
nasdaq_utdf_output_utp_v1_5.mwcb_level_1.size = 8

-- Display: Mwcb Level 1
nasdaq_utdf_output_utp_v1_5.mwcb_level_1.display = function(value)
  return "Mwcb Level 1: "..value
end

-- Dissect: Mwcb Level 1
nasdaq_utdf_output_utp_v1_5.mwcb_level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.mwcb_level_1.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.mwcb_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.mwcb_level_1, range, value, display)

  return offset + length, value
end

-- Market Wide Circuit Breaker Decline Level Message
nasdaq_utdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message = {}

-- Read runtime size of: Market Wide Circuit Breaker Decline Level Message
nasdaq_utdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Market Wide Circuit Breaker Decline Level Message
nasdaq_utdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Message
nasdaq_utdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.fields = function(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Mwcb Level 1: 8 Byte Unsigned Fixed Width Integer
  index, mwcb_level_1 = nasdaq_utdf_output_utp_v1_5.mwcb_level_1.dissect(buffer, index, packet, parent)

  -- Mwcb Level 2: 8 Byte Unsigned Fixed Width Integer
  index, mwcb_level_2 = nasdaq_utdf_output_utp_v1_5.mwcb_level_2.dissect(buffer, index, packet, parent)

  -- Mwcb Level 3: 8 Byte Unsigned Fixed Width Integer
  index, mwcb_level_3 = nasdaq_utdf_output_utp_v1_5.mwcb_level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Message
nasdaq_utdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_wide_circuit_breaker_decline_level_message = nasdaq_utdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_wide_circuit_breaker_decline_level_message then
    local range = buffer(offset, size_of_market_wide_circuit_breaker_decline_level_message)
    local display = nasdaq_utdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_wide_circuit_breaker_decline_level_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.fields(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_message)

  return offset + size_of_market_wide_circuit_breaker_decline_level_message
end

-- Limit Up Price
nasdaq_utdf_output_utp_v1_5.limit_up_price = {}

-- Size: Limit Up Price
nasdaq_utdf_output_utp_v1_5.limit_up_price.size = 8

-- Display: Limit Up Price
nasdaq_utdf_output_utp_v1_5.limit_up_price.display = function(value)
  return "Limit Up Price: "..value
end

-- Translate: Limit Up Price
nasdaq_utdf_output_utp_v1_5.limit_up_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Up Price
nasdaq_utdf_output_utp_v1_5.limit_up_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.limit_up_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.limit_up_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.limit_up_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.limit_up_price, range, value, display)

  return offset + length, value
end

-- Limit Down Price
nasdaq_utdf_output_utp_v1_5.limit_down_price = {}

-- Size: Limit Down Price
nasdaq_utdf_output_utp_v1_5.limit_down_price.size = 8

-- Display: Limit Down Price
nasdaq_utdf_output_utp_v1_5.limit_down_price.display = function(value)
  return "Limit Down Price: "..value
end

-- Translate: Limit Down Price
nasdaq_utdf_output_utp_v1_5.limit_down_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Limit Down Price
nasdaq_utdf_output_utp_v1_5.limit_down_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.limit_down_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.limit_down_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.limit_down_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.limit_down_price, range, value, display)

  return offset + length, value
end

-- Luld Timestamp
nasdaq_utdf_output_utp_v1_5.luld_timestamp = {}

-- Size: Luld Timestamp
nasdaq_utdf_output_utp_v1_5.luld_timestamp.size = 8

-- Display: Luld Timestamp
nasdaq_utdf_output_utp_v1_5.luld_timestamp.display = function(value)
  return "Luld Timestamp: "..value
end

-- Dissect: Luld Timestamp
nasdaq_utdf_output_utp_v1_5.luld_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.luld_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.luld_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.luld_timestamp, range, value, display)

  return offset + length, value
end

-- Luld Price Band Indicator
nasdaq_utdf_output_utp_v1_5.luld_price_band_indicator = {}

-- Size: Luld Price Band Indicator
nasdaq_utdf_output_utp_v1_5.luld_price_band_indicator.size = 1

-- Display: Luld Price Band Indicator
nasdaq_utdf_output_utp_v1_5.luld_price_band_indicator.display = function(value)
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
nasdaq_utdf_output_utp_v1_5.luld_price_band_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.luld_price_band_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.luld_price_band_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.luld_price_band_indicator, range, value, display)

  return offset + length, value
end

-- Limit Up Limit Down Price Band Message
nasdaq_utdf_output_utp_v1_5.limit_up_limit_down_price_band_message = {}

-- Read runtime size of: Limit Up Limit Down Price Band Message
nasdaq_utdf_output_utp_v1_5.limit_up_limit_down_price_band_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Limit Up Limit Down Price Band Message
nasdaq_utdf_output_utp_v1_5.limit_up_limit_down_price_band_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Up Limit Down Price Band Message
nasdaq_utdf_output_utp_v1_5.limit_up_limit_down_price_band_message.fields = function(buffer, offset, packet, parent, size_of_limit_up_limit_down_price_band_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol: 5 Byte Ascii String
  index, symbol = nasdaq_utdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Luld Price Band Indicator: 1 Byte Ascii String Enum with 7 values
  index, luld_price_band_indicator = nasdaq_utdf_output_utp_v1_5.luld_price_band_indicator.dissect(buffer, index, packet, parent)

  -- Luld Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, luld_timestamp = nasdaq_utdf_output_utp_v1_5.luld_timestamp.dissect(buffer, index, packet, parent)

  -- Limit Down Price: 8 Byte Unsigned Fixed Width Integer
  index, limit_down_price = nasdaq_utdf_output_utp_v1_5.limit_down_price.dissect(buffer, index, packet, parent)

  -- Limit Up Price: 8 Byte Unsigned Fixed Width Integer
  index, limit_up_price = nasdaq_utdf_output_utp_v1_5.limit_up_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Limit Up Limit Down Price Band Message
nasdaq_utdf_output_utp_v1_5.limit_up_limit_down_price_band_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_limit_up_limit_down_price_band_message = nasdaq_utdf_output_utp_v1_5.limit_up_limit_down_price_band_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.limit_up_limit_down_price_band_message then
    local range = buffer(offset, size_of_limit_up_limit_down_price_band_message)
    local display = nasdaq_utdf_output_utp_v1_5.limit_up_limit_down_price_band_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.limit_up_limit_down_price_band_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.limit_up_limit_down_price_band_message.fields(buffer, offset, packet, parent, size_of_limit_up_limit_down_price_band_message)

  return offset + size_of_limit_up_limit_down_price_band_message
end

-- Reg Sho Action
nasdaq_utdf_output_utp_v1_5.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_utdf_output_utp_v1_5.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_utdf_output_utp_v1_5.reg_sho_action.display = function(value)
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
nasdaq_utdf_output_utp_v1_5.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message = {}

-- Read runtime size of: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent, size_of_regulation_sho_short_sale_price_test_restricted_indicator_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol: 5 Byte Ascii String
  index, symbol = nasdaq_utdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = nasdaq_utdf_output_utp_v1_5.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Regulation Sho Short Sale Price Test Restricted Indicator Message
nasdaq_utdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_regulation_sho_short_sale_price_test_restricted_indicator_message = nasdaq_utdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.regulation_sho_short_sale_price_test_restricted_indicator_message then
    local range = buffer(offset, size_of_regulation_sho_short_sale_price_test_restricted_indicator_message)
    local display = nasdaq_utdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.regulation_sho_short_sale_price_test_restricted_indicator_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent, size_of_regulation_sho_short_sale_price_test_restricted_indicator_message)

  return offset + size_of_regulation_sho_short_sale_price_test_restricted_indicator_message
end

-- Financial Status Indicator
nasdaq_utdf_output_utp_v1_5.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_utdf_output_utp_v1_5.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_utdf_output_utp_v1_5.financial_status_indicator.display = function(value)
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
nasdaq_utdf_output_utp_v1_5.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_utdf_output_utp_v1_5.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_utdf_output_utp_v1_5.round_lot_size.size = 2

-- Display: Round Lot Size
nasdaq_utdf_output_utp_v1_5.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_utdf_output_utp_v1_5.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v1_5.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_utdf_output_utp_v1_5.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_utdf_output_utp_v1_5.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_utdf_output_utp_v1_5.short_sale_threshold_indicator.display = function(value)
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
nasdaq_utdf_output_utp_v1_5.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_utdf_output_utp_v1_5.authenticity = {}

-- Size: Authenticity
nasdaq_utdf_output_utp_v1_5.authenticity.size = 1

-- Display: Authenticity
nasdaq_utdf_output_utp_v1_5.authenticity.display = function(value)
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
nasdaq_utdf_output_utp_v1_5.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Market Tier
nasdaq_utdf_output_utp_v1_5.market_tier = {}

-- Size: Market Tier
nasdaq_utdf_output_utp_v1_5.market_tier.size = 1

-- Display: Market Tier
nasdaq_utdf_output_utp_v1_5.market_tier.display = function(value)
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
nasdaq_utdf_output_utp_v1_5.market_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.market_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.market_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_tier, range, value, display)

  return offset + length, value
end

-- Issue Subtype
nasdaq_utdf_output_utp_v1_5.issue_subtype = {}

-- Size: Issue Subtype
nasdaq_utdf_output_utp_v1_5.issue_subtype.size = 2

-- Display: Issue Subtype
nasdaq_utdf_output_utp_v1_5.issue_subtype.display = function(value)
  return "Issue Subtype: "..value
end

-- Dissect: Issue Subtype
nasdaq_utdf_output_utp_v1_5.issue_subtype.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.issue_subtype.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.issue_subtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.issue_subtype, range, value, display)

  return offset + length, value
end

-- Issue Type
nasdaq_utdf_output_utp_v1_5.issue_type = {}

-- Size: Issue Type
nasdaq_utdf_output_utp_v1_5.issue_type.size = 1

-- Display: Issue Type
nasdaq_utdf_output_utp_v1_5.issue_type.display = function(value)
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
nasdaq_utdf_output_utp_v1_5.issue_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.issue_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.issue_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.issue_type, range, value, display)

  return offset + length, value
end

-- Issue Name
nasdaq_utdf_output_utp_v1_5.issue_name = {}

-- Size: Issue Name
nasdaq_utdf_output_utp_v1_5.issue_name.size = 30

-- Display: Issue Name
nasdaq_utdf_output_utp_v1_5.issue_name.display = function(value)
  return "Issue Name: "..value
end

-- Dissect: Issue Name
nasdaq_utdf_output_utp_v1_5.issue_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.issue_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.issue_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.issue_name, range, value, display)

  return offset + length, value
end

-- Old Symbol
nasdaq_utdf_output_utp_v1_5.old_symbol = {}

-- Size: Old Symbol
nasdaq_utdf_output_utp_v1_5.old_symbol.size = 11

-- Display: Old Symbol
nasdaq_utdf_output_utp_v1_5.old_symbol.display = function(value)
  return "Old Symbol: "..value
end

-- Dissect: Old Symbol
nasdaq_utdf_output_utp_v1_5.old_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.old_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.old_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.old_symbol, range, value, display)

  return offset + length, value
end

-- Issue Symbol Directory Message
nasdaq_utdf_output_utp_v1_5.issue_symbol_directory_message = {}

-- Read runtime size of: Issue Symbol Directory Message
nasdaq_utdf_output_utp_v1_5.issue_symbol_directory_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Issue Symbol Directory Message
nasdaq_utdf_output_utp_v1_5.issue_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Symbol Directory Message
nasdaq_utdf_output_utp_v1_5.issue_symbol_directory_message.fields = function(buffer, offset, packet, parent, size_of_issue_symbol_directory_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol: 5 Byte Ascii String
  index, symbol = nasdaq_utdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Old Symbol: 11 Byte Ascii String
  index, old_symbol = nasdaq_utdf_output_utp_v1_5.old_symbol.dissect(buffer, index, packet, parent)

  -- Issue Name: 30 Byte Ascii String
  index, issue_name = nasdaq_utdf_output_utp_v1_5.issue_name.dissect(buffer, index, packet, parent)

  -- Issue Type: 1 Byte Ascii String Enum with 16 values
  index, issue_type = nasdaq_utdf_output_utp_v1_5.issue_type.dissect(buffer, index, packet, parent)

  -- Issue Subtype: 2 Byte Ascii String
  index, issue_subtype = nasdaq_utdf_output_utp_v1_5.issue_subtype.dissect(buffer, index, packet, parent)

  -- Market Tier: 1 Byte Ascii String Enum with 3 values
  index, market_tier = nasdaq_utdf_output_utp_v1_5.market_tier.dissect(buffer, index, packet, parent)

  -- Authenticity: 1 Byte Ascii String Enum with 4 values
  index, authenticity = nasdaq_utdf_output_utp_v1_5.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: 1 Byte Ascii String Enum with 3 values
  index, short_sale_threshold_indicator = nasdaq_utdf_output_utp_v1_5.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, round_lot_size = nasdaq_utdf_output_utp_v1_5.round_lot_size.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 9 values
  index, financial_status_indicator = nasdaq_utdf_output_utp_v1_5.financial_status_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Symbol Directory Message
nasdaq_utdf_output_utp_v1_5.issue_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_issue_symbol_directory_message = nasdaq_utdf_output_utp_v1_5.issue_symbol_directory_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.issue_symbol_directory_message then
    local range = buffer(offset, size_of_issue_symbol_directory_message)
    local display = nasdaq_utdf_output_utp_v1_5.issue_symbol_directory_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.issue_symbol_directory_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.issue_symbol_directory_message.fields(buffer, offset, packet, parent, size_of_issue_symbol_directory_message)

  return offset + size_of_issue_symbol_directory_message
end

-- Action Timestamp
nasdaq_utdf_output_utp_v1_5.action_timestamp = {}

-- Size: Action Timestamp
nasdaq_utdf_output_utp_v1_5.action_timestamp.size = 8

-- Display: Action Timestamp
nasdaq_utdf_output_utp_v1_5.action_timestamp.display = function(value)
  return "Action Timestamp: "..value
end

-- Dissect: Action Timestamp
nasdaq_utdf_output_utp_v1_5.action_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.action_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.action_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.action_timestamp, range, value, display)

  return offset + length, value
end

-- Trading Action Code
nasdaq_utdf_output_utp_v1_5.trading_action_code = {}

-- Size: Trading Action Code
nasdaq_utdf_output_utp_v1_5.trading_action_code.size = 1

-- Display: Trading Action Code
nasdaq_utdf_output_utp_v1_5.trading_action_code.display = function(value)
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
nasdaq_utdf_output_utp_v1_5.trading_action_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.trading_action_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.trading_action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trading_action_code, range, value, display)

  return offset + length, value
end

-- Market Center Trading Action Message
nasdaq_utdf_output_utp_v1_5.market_center_trading_action_message = {}

-- Read runtime size of: Market Center Trading Action Message
nasdaq_utdf_output_utp_v1_5.market_center_trading_action_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Market Center Trading Action Message
nasdaq_utdf_output_utp_v1_5.market_center_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Center Trading Action Message
nasdaq_utdf_output_utp_v1_5.market_center_trading_action_message.fields = function(buffer, offset, packet, parent, size_of_market_center_trading_action_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol: 5 Byte Ascii String
  index, symbol = nasdaq_utdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Trading Action Code: 1 Byte Ascii String Enum with 4 values
  index, trading_action_code = nasdaq_utdf_output_utp_v1_5.trading_action_code.dissect(buffer, index, packet, parent)

  -- Action Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, action_timestamp = nasdaq_utdf_output_utp_v1_5.action_timestamp.dissect(buffer, index, packet, parent)

  -- Market Center Identifier: 1 Byte Ascii String
  index, market_center_identifier = nasdaq_utdf_output_utp_v1_5.market_center_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Center Trading Action Message
nasdaq_utdf_output_utp_v1_5.market_center_trading_action_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_center_trading_action_message = nasdaq_utdf_output_utp_v1_5.market_center_trading_action_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_center_trading_action_message then
    local range = buffer(offset, size_of_market_center_trading_action_message)
    local display = nasdaq_utdf_output_utp_v1_5.market_center_trading_action_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_center_trading_action_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.market_center_trading_action_message.fields(buffer, offset, packet, parent, size_of_market_center_trading_action_message)

  return offset + size_of_market_center_trading_action_message
end

-- Trading Action Reason
nasdaq_utdf_output_utp_v1_5.trading_action_reason = {}

-- Size: Trading Action Reason
nasdaq_utdf_output_utp_v1_5.trading_action_reason.size = 6

-- Display: Trading Action Reason
nasdaq_utdf_output_utp_v1_5.trading_action_reason.display = function(value)
  return "Trading Action Reason: "..value
end

-- Dissect: Trading Action Reason
nasdaq_utdf_output_utp_v1_5.trading_action_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.trading_action_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.trading_action_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trading_action_reason, range, value, display)

  return offset + length, value
end

-- Cross Sro Trading Action Message
nasdaq_utdf_output_utp_v1_5.cross_sro_trading_action_message = {}

-- Read runtime size of: Cross Sro Trading Action Message
nasdaq_utdf_output_utp_v1_5.cross_sro_trading_action_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Cross Sro Trading Action Message
nasdaq_utdf_output_utp_v1_5.cross_sro_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Sro Trading Action Message
nasdaq_utdf_output_utp_v1_5.cross_sro_trading_action_message.fields = function(buffer, offset, packet, parent, size_of_cross_sro_trading_action_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Symbol: 5 Byte Ascii String
  index, symbol = nasdaq_utdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Trading Action Code: 1 Byte Ascii String Enum with 4 values
  index, trading_action_code = nasdaq_utdf_output_utp_v1_5.trading_action_code.dissect(buffer, index, packet, parent)

  -- Trading Action Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, trading_action_sequence_number = nasdaq_utdf_output_utp_v1_5.trading_action_sequence_number.dissect(buffer, index, packet, parent)

  -- Action Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, action_timestamp = nasdaq_utdf_output_utp_v1_5.action_timestamp.dissect(buffer, index, packet, parent)

  -- Trading Action Reason: 6 Byte Ascii String
  index, trading_action_reason = nasdaq_utdf_output_utp_v1_5.trading_action_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Sro Trading Action Message
nasdaq_utdf_output_utp_v1_5.cross_sro_trading_action_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_cross_sro_trading_action_message = nasdaq_utdf_output_utp_v1_5.cross_sro_trading_action_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.cross_sro_trading_action_message then
    local range = buffer(offset, size_of_cross_sro_trading_action_message)
    local display = nasdaq_utdf_output_utp_v1_5.cross_sro_trading_action_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.cross_sro_trading_action_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.cross_sro_trading_action_message.fields(buffer, offset, packet, parent, size_of_cross_sro_trading_action_message)

  return offset + size_of_cross_sro_trading_action_message
end

-- Text
nasdaq_utdf_output_utp_v1_5.text = {}

-- Display: Text
nasdaq_utdf_output_utp_v1_5.text.display = function(value)
  return "Text: "..value
end

-- Dissect runtime sized field: Text
nasdaq_utdf_output_utp_v1_5.text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.text.display(value, packet, parent, size)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.text, range, value, display)

  return offset + size, value
end

-- Text Length
nasdaq_utdf_output_utp_v1_5.text_length = {}

-- Size: Text Length
nasdaq_utdf_output_utp_v1_5.text_length.size = 2

-- Display: Text Length
nasdaq_utdf_output_utp_v1_5.text_length.display = function(value)
  return "Text Length: "..value
end

-- Dissect: Text Length
nasdaq_utdf_output_utp_v1_5.text_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.text_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v1_5.text_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.text_length, range, value, display)

  return offset + length, value
end

-- General Administrative Message
nasdaq_utdf_output_utp_v1_5.general_administrative_message = {}

-- Read runtime size of: General Administrative Message
nasdaq_utdf_output_utp_v1_5.general_administrative_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: General Administrative Message
nasdaq_utdf_output_utp_v1_5.general_administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Administrative Message
nasdaq_utdf_output_utp_v1_5.general_administrative_message.fields = function(buffer, offset, packet, parent, size_of_general_administrative_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Text Length: 2 Byte Unsigned Fixed Width Integer
  index, text_length = nasdaq_utdf_output_utp_v1_5.text_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Text
  index, text = nasdaq_utdf_output_utp_v1_5.text.dissect(buffer, index, packet, parent, text_length)

  return index
end

-- Dissect: General Administrative Message
nasdaq_utdf_output_utp_v1_5.general_administrative_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_general_administrative_message = nasdaq_utdf_output_utp_v1_5.general_administrative_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.general_administrative_message then
    local range = buffer(offset, size_of_general_administrative_message)
    local display = nasdaq_utdf_output_utp_v1_5.general_administrative_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.general_administrative_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.general_administrative_message.fields(buffer, offset, packet, parent, size_of_general_administrative_message)

  return offset + size_of_general_administrative_message
end

-- Administrative Payload
nasdaq_utdf_output_utp_v1_5.administrative_payload = {}

-- Calculate runtime size of: Administrative Payload
nasdaq_utdf_output_utp_v1_5.administrative_payload.size = function(buffer, offset, administrative_message_type)
  -- Size of General Administrative Message
  if administrative_message_type == "A" then
    return nasdaq_utdf_output_utp_v1_5.general_administrative_message.size(buffer, offset)
  end
  -- Size of Cross Sro Trading Action Message
  if administrative_message_type == "H" then
    return nasdaq_utdf_output_utp_v1_5.cross_sro_trading_action_message.size(buffer, offset)
  end
  -- Size of Market Center Trading Action Message
  if administrative_message_type == "H" then
    return nasdaq_utdf_output_utp_v1_5.market_center_trading_action_message.size(buffer, offset)
  end
  -- Size of Issue Symbol Directory Message
  if administrative_message_type == "B" then
    return nasdaq_utdf_output_utp_v1_5.issue_symbol_directory_message.size(buffer, offset)
  end
  -- Size of Regulation Sho Short Sale Price Test Restricted Indicator Message
  if administrative_message_type == "V" then
    return nasdaq_utdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.size(buffer, offset)
  end
  -- Size of Limit Up Limit Down Price Band Message
  if administrative_message_type == "P" then
    return nasdaq_utdf_output_utp_v1_5.limit_up_limit_down_price_band_message.size(buffer, offset)
  end
  -- Size of Market Wide Circuit Breaker Decline Level Message
  if administrative_message_type == "C" then
    return nasdaq_utdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.size(buffer, offset)
  end
  -- Size of Market Wide Circuit Breaker Decline Level Message
  if administrative_message_type == "D" then
    return nasdaq_utdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.size(buffer, offset)
  end
  -- Size of Auction Collar Message
  if administrative_message_type == "E" then
    return nasdaq_utdf_output_utp_v1_5.auction_collar_message.size(buffer, offset)
  end
  -- Size of Closing Trade Summary Report Message
  if administrative_message_type == "Z" then
    return nasdaq_utdf_output_utp_v1_5.closing_trade_summary_report_message.size(buffer, offset)
  end

  return 0
end

-- Display: Administrative Payload
nasdaq_utdf_output_utp_v1_5.administrative_payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Administrative Payload
nasdaq_utdf_output_utp_v1_5.administrative_payload.branches = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect General Administrative Message
  if administrative_message_type == "A" then
    return nasdaq_utdf_output_utp_v1_5.general_administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Sro Trading Action Message
  if administrative_message_type == "H" then
    return nasdaq_utdf_output_utp_v1_5.cross_sro_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Center Trading Action Message
  if administrative_message_type == "H" then
    return nasdaq_utdf_output_utp_v1_5.market_center_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Symbol Directory Message
  if administrative_message_type == "B" then
    return nasdaq_utdf_output_utp_v1_5.issue_symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Regulation Sho Short Sale Price Test Restricted Indicator Message
  if administrative_message_type == "V" then
    return nasdaq_utdf_output_utp_v1_5.regulation_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Limit Up Limit Down Price Band Message
  if administrative_message_type == "P" then
    return nasdaq_utdf_output_utp_v1_5.limit_up_limit_down_price_band_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Decline Level Message
  if administrative_message_type == "C" then
    return nasdaq_utdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Decline Level Message
  if administrative_message_type == "D" then
    return nasdaq_utdf_output_utp_v1_5.market_wide_circuit_breaker_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Collar Message
  if administrative_message_type == "E" then
    return nasdaq_utdf_output_utp_v1_5.auction_collar_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Closing Trade Summary Report Message
  if administrative_message_type == "Z" then
    return nasdaq_utdf_output_utp_v1_5.closing_trade_summary_report_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Administrative Payload
nasdaq_utdf_output_utp_v1_5.administrative_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  if not show.administrative_payload then
    return nasdaq_utdf_output_utp_v1_5.administrative_payload.branches(buffer, offset, packet, parent, administrative_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_utdf_output_utp_v1_5.administrative_payload.size(buffer, offset, administrative_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_utdf_output_utp_v1_5.administrative_payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.administrative_payload, range, display)

  return nasdaq_utdf_output_utp_v1_5.administrative_payload.branches(buffer, offset, packet, parent, administrative_message_type)
end

-- Administrative Message Type
nasdaq_utdf_output_utp_v1_5.administrative_message_type = {}

-- Size: Administrative Message Type
nasdaq_utdf_output_utp_v1_5.administrative_message_type.size = 1

-- Display: Administrative Message Type
nasdaq_utdf_output_utp_v1_5.administrative_message_type.display = function(value)
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
  if value == "Z" then
    return "Administrative Message Type: Closing Trade Summary Report Message (Z)"
  end

  return "Administrative Message Type: Unknown("..value..")"
end

-- Dissect: Administrative Message Type
nasdaq_utdf_output_utp_v1_5.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Administrative
nasdaq_utdf_output_utp_v1_5.administrative = {}

-- Read runtime size of: Administrative
nasdaq_utdf_output_utp_v1_5.administrative.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 2
end

-- Display: Administrative
nasdaq_utdf_output_utp_v1_5.administrative.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative
nasdaq_utdf_output_utp_v1_5.administrative.fields = function(buffer, offset, packet, parent, size_of_administrative)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String Enum with 10 values
  index, administrative_message_type = nasdaq_utdf_output_utp_v1_5.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Payload: Runtime Type with 10 branches
  index = nasdaq_utdf_output_utp_v1_5.administrative_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative
nasdaq_utdf_output_utp_v1_5.administrative.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_administrative = nasdaq_utdf_output_utp_v1_5.administrative.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.administrative then
    local range = buffer(offset, size_of_administrative)
    local display = nasdaq_utdf_output_utp_v1_5.administrative.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.administrative, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.administrative.fields(buffer, offset, packet, parent, size_of_administrative)

  return offset + size_of_administrative
end

-- Timestamp Of Trade
nasdaq_utdf_output_utp_v1_5.timestamp_of_trade = {}

-- Size: Timestamp Of Trade
nasdaq_utdf_output_utp_v1_5.timestamp_of_trade.size = 8

-- Display: Timestamp Of Trade
nasdaq_utdf_output_utp_v1_5.timestamp_of_trade.display = function(value)
  return "Timestamp Of Trade: "..value
end

-- Dissect: Timestamp Of Trade
nasdaq_utdf_output_utp_v1_5.timestamp_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.timestamp_of_trade.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.timestamp_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.timestamp_of_trade, range, value, display)

  return offset + length, value
end

-- As Of Action
nasdaq_utdf_output_utp_v1_5.as_of_action = {}

-- Size: As Of Action
nasdaq_utdf_output_utp_v1_5.as_of_action.size = 1

-- Display: As Of Action
nasdaq_utdf_output_utp_v1_5.as_of_action.display = function(value)
  if value == "A" then
    return "As Of Action: Trade Addition (A)"
  end
  if value == "C" then
    return "As Of Action: Trade Cancel (C)"
  end

  return "As Of Action: Unknown("..value..")"
end

-- Dissect: As Of Action
nasdaq_utdf_output_utp_v1_5.as_of_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.as_of_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.as_of_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.as_of_action, range, value, display)

  return offset + length, value
end

-- Sellers Sale Days
nasdaq_utdf_output_utp_v1_5.sellers_sale_days = {}

-- Size: Sellers Sale Days
nasdaq_utdf_output_utp_v1_5.sellers_sale_days.size = 2

-- Display: Sellers Sale Days
nasdaq_utdf_output_utp_v1_5.sellers_sale_days.display = function(value)
  return "Sellers Sale Days: "..value
end

-- Dissect: Sellers Sale Days
nasdaq_utdf_output_utp_v1_5.sellers_sale_days.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.sellers_sale_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v1_5.sellers_sale_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Trade Through Exempt Flag
nasdaq_utdf_output_utp_v1_5.trade_through_exempt_flag = {}

-- Size: Trade Through Exempt Flag
nasdaq_utdf_output_utp_v1_5.trade_through_exempt_flag.size = 1

-- Display: Trade Through Exempt Flag
nasdaq_utdf_output_utp_v1_5.trade_through_exempt_flag.display = function(value)
  return "Trade Through Exempt Flag: "..value
end

-- Dissect: Trade Through Exempt Flag
nasdaq_utdf_output_utp_v1_5.trade_through_exempt_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.trade_through_exempt_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.trade_through_exempt_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trade_through_exempt_flag, range, value, display)

  return offset + length, value
end

-- Level 4
nasdaq_utdf_output_utp_v1_5.level_4 = {}

-- Size: Level 4
nasdaq_utdf_output_utp_v1_5.level_4.size = 1

-- Display: Level 4
nasdaq_utdf_output_utp_v1_5.level_4.display = function(value)
  return "Level 4: "..value
end

-- Dissect: Level 4
nasdaq_utdf_output_utp_v1_5.level_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.level_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.level_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.level_4, range, value, display)

  return offset + length, value
end

-- Level 3
nasdaq_utdf_output_utp_v1_5.level_3 = {}

-- Size: Level 3
nasdaq_utdf_output_utp_v1_5.level_3.size = 1

-- Display: Level 3
nasdaq_utdf_output_utp_v1_5.level_3.display = function(value)
  if value == "T" then
    return "Level 3: Form T (T)"
  end
  if value == "L" then
    return "Level 3: Sold Last (L)"
  end
  if value == "Z" then
    return "Level 3: Sold Out Of Sequence (Z)"
  end
  if value == "U" then
    return "Level 3: Extended Trading Hours (U)"
  end
  if value == " " then
    return "Level 3: Not Available (<whitespace>)"
  end
  if value == "1" then
    return "Level 3: Stopped Stock (1)"
  end
  if value == "A" then
    return "Level 3: Acquisition (A)"
  end
  if value == "B" then
    return "Level 3: Bunched (B)"
  end
  if value == "D" then
    return "Level 3: Distribution (D)"
  end
  if value == "E" then
    return "Level 3: Placeholder Future (E)"
  end
  if value == "G" then
    return "Level 3: Bunched Sold Trade (G)"
  end
  if value == "H" then
    return "Level 3: Price Variation (H)"
  end
  if value == "I" then
    return "Level 3: Odd Lot Trade (I)"
  end
  if value == "K" then
    return "Level 3: Rule 155 (K)"
  end
  if value == "M" then
    return "Level 3: Market Center Official Close Price (M)"
  end
  if value == "P" then
    return "Level 3: Prior Reference Price (P)"
  end
  if value == "Q" then
    return "Level 3: Market Center Official Open Price (Q)"
  end
  if value == "S" then
    return "Level 3: Split Trade (S)"
  end
  if value == "V" then
    return "Level 3: Contingent Trade (V)"
  end
  if value == "W" then
    return "Level 3: Average Price Trade (W)"
  end
  if value == "X" then
    return "Level 3: Cross Trade (X)"
  end

  return "Level 3: Unknown("..value..")"
end

-- Dissect: Level 3
nasdaq_utdf_output_utp_v1_5.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.level_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.level_3, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_utdf_output_utp_v1_5.level_2 = {}

-- Size: Level 2
nasdaq_utdf_output_utp_v1_5.level_2.size = 1

-- Display: Level 2
nasdaq_utdf_output_utp_v1_5.level_2.display = function(value)
  if value == "F" then
    return "Level 2: Intermarket Sweep (F)"
  end
  if value == "O" then
    return "Level 2: Opening Prints (O)"
  end
  if value == "4" then
    return "Level 2: Derivatively Priced (4)"
  end
  if value == "5" then
    return "Level 2: Re Opening Prints (5)"
  end
  if value == "6" then
    return "Level 2: Closing Prints (6)"
  end
  if value == "7" then
    return "Level 2: Qualified Contingent Trade (7)"
  end
  if value == "8" then
    return "Level 2: Placeholder For 611 Exempt (8)"
  end
  if value == "9" then
    return "Level 2: Corrected Consolidated Close (9)"
  end
  if value == " " then
    return "Level 2: Not Available (<whitespace>)"
  end

  return "Level 2: Unknown("..value..")"
end

-- Dissect: Level 2
nasdaq_utdf_output_utp_v1_5.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.level_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_utdf_output_utp_v1_5.level_1 = {}

-- Size: Level 1
nasdaq_utdf_output_utp_v1_5.level_1.size = 1

-- Display: Level 1
nasdaq_utdf_output_utp_v1_5.level_1.display = function(value)
  if value == "@" then
    return "Level 1: Regular Trade (@)"
  end
  if value == "C" then
    return "Level 1: Cash (C)"
  end
  if value == "N" then
    return "Level 1: Next Day (N)"
  end
  if value == "R" then
    return "Level 1: Seller (R)"
  end
  if value == "Y" then
    return "Level 1: Yellow Flag (Y)"
  end
  if value == " " then
    return "Level 1: Not Available (<whitespace>)"
  end

  return "Level 1: Unknown("..value..")"
end

-- Dissect: Level 1
nasdaq_utdf_output_utp_v1_5.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.level_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.level_1, range, value, display)

  return offset + length, value
end

-- Sale Condition
nasdaq_utdf_output_utp_v1_5.sale_condition = {}

-- Size: Sale Condition
nasdaq_utdf_output_utp_v1_5.sale_condition.size =
  nasdaq_utdf_output_utp_v1_5.level_1.size + 
  nasdaq_utdf_output_utp_v1_5.level_2.size + 
  nasdaq_utdf_output_utp_v1_5.level_3.size + 
  nasdaq_utdf_output_utp_v1_5.level_4.size

-- Display: Sale Condition
nasdaq_utdf_output_utp_v1_5.sale_condition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sale Condition
nasdaq_utdf_output_utp_v1_5.sale_condition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level 1: 1 Byte Ascii String Enum with 6 values
  index, level_1 = nasdaq_utdf_output_utp_v1_5.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: 1 Byte Ascii String Enum with 9 values
  index, level_2 = nasdaq_utdf_output_utp_v1_5.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: 1 Byte Ascii String Enum with 21 values
  index, level_3 = nasdaq_utdf_output_utp_v1_5.level_3.dissect(buffer, index, packet, parent)

  -- Level 4: 1 Byte Ascii String
  index, level_4 = nasdaq_utdf_output_utp_v1_5.level_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sale Condition
nasdaq_utdf_output_utp_v1_5.sale_condition.dissect = function(buffer, offset, packet, parent)
  if show.sale_condition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.sale_condition, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v1_5.sale_condition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v1_5.sale_condition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v1_5.sale_condition.fields(buffer, offset, packet, parent)
  end
end

-- Trade Volume
nasdaq_utdf_output_utp_v1_5.trade_volume = {}

-- Size: Trade Volume
nasdaq_utdf_output_utp_v1_5.trade_volume.size = 4

-- Display: Trade Volume
nasdaq_utdf_output_utp_v1_5.trade_volume.display = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
nasdaq_utdf_output_utp_v1_5.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.trade_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v1_5.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Trade Price
nasdaq_utdf_output_utp_v1_5.trade_price = {}

-- Size: Trade Price
nasdaq_utdf_output_utp_v1_5.trade_price.size = 8

-- Display: Trade Price
nasdaq_utdf_output_utp_v1_5.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
nasdaq_utdf_output_utp_v1_5.trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade Price
nasdaq_utdf_output_utp_v1_5.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.trade_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Id
nasdaq_utdf_output_utp_v1_5.trade_id = {}

-- Size: Trade Id
nasdaq_utdf_output_utp_v1_5.trade_id.size = 8

-- Display: Trade Id
nasdaq_utdf_output_utp_v1_5.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nasdaq_utdf_output_utp_v1_5.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Finra Timestamp
nasdaq_utdf_output_utp_v1_5.finra_timestamp = {}

-- Size: Finra Timestamp
nasdaq_utdf_output_utp_v1_5.finra_timestamp.size = 8

-- Display: Finra Timestamp
nasdaq_utdf_output_utp_v1_5.finra_timestamp.display = function(value)
  return "Finra Timestamp: "..value
end

-- Dissect: Finra Timestamp
nasdaq_utdf_output_utp_v1_5.finra_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.finra_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.finra_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.finra_timestamp, range, value, display)

  return offset + length, value
end

-- Prior Day As Of Trade Message
nasdaq_utdf_output_utp_v1_5.prior_day_as_of_trade_message = {}

-- Read runtime size of: Prior Day As Of Trade Message
nasdaq_utdf_output_utp_v1_5.prior_day_as_of_trade_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Prior Day As Of Trade Message
nasdaq_utdf_output_utp_v1_5.prior_day_as_of_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prior Day As Of Trade Message
nasdaq_utdf_output_utp_v1_5.prior_day_as_of_trade_message.fields = function(buffer, offset, packet, parent, size_of_prior_day_as_of_trade_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Finra Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, finra_timestamp = nasdaq_utdf_output_utp_v1_5.finra_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 5 Byte Ascii String
  index, symbol = nasdaq_utdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = nasdaq_utdf_output_utp_v1_5.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, trade_price = nasdaq_utdf_output_utp_v1_5.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = nasdaq_utdf_output_utp_v1_5.trade_volume.dissect(buffer, index, packet, parent)

  -- Sale Condition: Struct of 4 fields
  index, sale_condition = nasdaq_utdf_output_utp_v1_5.sale_condition.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Flag: 1 Byte Ascii String
  index, trade_through_exempt_flag = nasdaq_utdf_output_utp_v1_5.trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: 2 Byte Unsigned Fixed Width Integer
  index, sellers_sale_days = nasdaq_utdf_output_utp_v1_5.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- As Of Action: 1 Byte Ascii String Enum with 2 values
  index, as_of_action = nasdaq_utdf_output_utp_v1_5.as_of_action.dissect(buffer, index, packet, parent)

  -- Timestamp Of Trade: 8 Byte Unsigned Fixed Width Integer
  index, timestamp_of_trade = nasdaq_utdf_output_utp_v1_5.timestamp_of_trade.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Prior Day As Of Trade Message
nasdaq_utdf_output_utp_v1_5.prior_day_as_of_trade_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_prior_day_as_of_trade_message = nasdaq_utdf_output_utp_v1_5.prior_day_as_of_trade_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.prior_day_as_of_trade_message then
    local range = buffer(offset, size_of_prior_day_as_of_trade_message)
    local display = nasdaq_utdf_output_utp_v1_5.prior_day_as_of_trade_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.prior_day_as_of_trade_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.prior_day_as_of_trade_message.fields(buffer, offset, packet, parent, size_of_prior_day_as_of_trade_message)

  return offset + size_of_prior_day_as_of_trade_message
end

-- Market Participant Volume
nasdaq_utdf_output_utp_v1_5.market_participant_volume = {}

-- Size: Market Participant Volume
nasdaq_utdf_output_utp_v1_5.market_participant_volume.size = 8

-- Display: Market Participant Volume
nasdaq_utdf_output_utp_v1_5.market_participant_volume.display = function(value)
  return "Market Participant Volume: "..value
end

-- Dissect: Market Participant Volume
nasdaq_utdf_output_utp_v1_5.market_participant_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.market_participant_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.market_participant_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_participant_volume, range, value, display)

  return offset + length, value
end

-- Market Participant Last Price
nasdaq_utdf_output_utp_v1_5.market_participant_last_price = {}

-- Size: Market Participant Last Price
nasdaq_utdf_output_utp_v1_5.market_participant_last_price.size = 8

-- Display: Market Participant Last Price
nasdaq_utdf_output_utp_v1_5.market_participant_last_price.display = function(value)
  return "Market Participant Last Price: "..value
end

-- Translate: Market Participant Last Price
nasdaq_utdf_output_utp_v1_5.market_participant_last_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Market Participant Last Price
nasdaq_utdf_output_utp_v1_5.market_participant_last_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.market_participant_last_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.market_participant_last_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.market_participant_last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.market_participant_last_price, range, value, display)

  return offset + length, value
end

-- Consolidated Price Change Indicator
nasdaq_utdf_output_utp_v1_5.consolidated_price_change_indicator = {}

-- Size: Consolidated Price Change Indicator
nasdaq_utdf_output_utp_v1_5.consolidated_price_change_indicator.size = 1

-- Display: Consolidated Price Change Indicator
nasdaq_utdf_output_utp_v1_5.consolidated_price_change_indicator.display = function(value)
  if value == "0" then
    return "Consolidated Price Change Indicator: No Prices Changed (0)"
  end
  if value == "1" then
    return "Consolidated Price Change Indicator: Consolidated Last Price Changed (1)"
  end
  if value == "2" then
    return "Consolidated Price Change Indicator: Consolidated Low Price Changed (2)"
  end
  if value == "3" then
    return "Consolidated Price Change Indicator: Consolidated Last And Consolidated Low Prices Changed (3)"
  end
  if value == "4" then
    return "Consolidated Price Change Indicator: Consolidated High Price Changed (4)"
  end
  if value == "5" then
    return "Consolidated Price Change Indicator: Consolidated Last And Consolidated High Prices Changed (5)"
  end
  if value == "6" then
    return "Consolidated Price Change Indicator: Consolidated High And Consolidated Low Prices Changed (6)"
  end
  if value == "7" then
    return "Consolidated Price Change Indicator: All Consolidated Prices Changed (7)"
  end

  return "Consolidated Price Change Indicator: Unknown("..value..")"
end

-- Dissect: Consolidated Price Change Indicator
nasdaq_utdf_output_utp_v1_5.consolidated_price_change_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.consolidated_price_change_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.consolidated_price_change_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.consolidated_price_change_indicator, range, value, display)

  return offset + length, value
end

-- Consolidated Last Price
nasdaq_utdf_output_utp_v1_5.consolidated_last_price = {}

-- Size: Consolidated Last Price
nasdaq_utdf_output_utp_v1_5.consolidated_last_price.size = 8

-- Display: Consolidated Last Price
nasdaq_utdf_output_utp_v1_5.consolidated_last_price.display = function(value)
  return "Consolidated Last Price: "..value
end

-- Translate: Consolidated Last Price
nasdaq_utdf_output_utp_v1_5.consolidated_last_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated Last Price
nasdaq_utdf_output_utp_v1_5.consolidated_last_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.consolidated_last_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.consolidated_last_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.consolidated_last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.consolidated_last_price, range, value, display)

  return offset + length, value
end

-- Consolidated Low Price
nasdaq_utdf_output_utp_v1_5.consolidated_low_price = {}

-- Size: Consolidated Low Price
nasdaq_utdf_output_utp_v1_5.consolidated_low_price.size = 8

-- Display: Consolidated Low Price
nasdaq_utdf_output_utp_v1_5.consolidated_low_price.display = function(value)
  return "Consolidated Low Price: "..value
end

-- Translate: Consolidated Low Price
nasdaq_utdf_output_utp_v1_5.consolidated_low_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated Low Price
nasdaq_utdf_output_utp_v1_5.consolidated_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.consolidated_low_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.consolidated_low_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.consolidated_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.consolidated_low_price, range, value, display)

  return offset + length, value
end

-- Consolidated High Price
nasdaq_utdf_output_utp_v1_5.consolidated_high_price = {}

-- Size: Consolidated High Price
nasdaq_utdf_output_utp_v1_5.consolidated_high_price.size = 8

-- Display: Consolidated High Price
nasdaq_utdf_output_utp_v1_5.consolidated_high_price.display = function(value)
  return "Consolidated High Price: "..value
end

-- Translate: Consolidated High Price
nasdaq_utdf_output_utp_v1_5.consolidated_high_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated High Price
nasdaq_utdf_output_utp_v1_5.consolidated_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.consolidated_high_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.consolidated_high_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.consolidated_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.consolidated_high_price, range, value, display)

  return offset + length, value
end

-- Corrected Sellers Sale Days
nasdaq_utdf_output_utp_v1_5.corrected_sellers_sale_days = {}

-- Size: Corrected Sellers Sale Days
nasdaq_utdf_output_utp_v1_5.corrected_sellers_sale_days.size = 2

-- Display: Corrected Sellers Sale Days
nasdaq_utdf_output_utp_v1_5.corrected_sellers_sale_days.display = function(value)
  return "Corrected Sellers Sale Days: "..value
end

-- Dissect: Corrected Sellers Sale Days
nasdaq_utdf_output_utp_v1_5.corrected_sellers_sale_days.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.corrected_sellers_sale_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v1_5.corrected_sellers_sale_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.corrected_sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Corrected Trade Through Exempt Flag
nasdaq_utdf_output_utp_v1_5.corrected_trade_through_exempt_flag = {}

-- Size: Corrected Trade Through Exempt Flag
nasdaq_utdf_output_utp_v1_5.corrected_trade_through_exempt_flag.size = 1

-- Display: Corrected Trade Through Exempt Flag
nasdaq_utdf_output_utp_v1_5.corrected_trade_through_exempt_flag.display = function(value)
  return "Corrected Trade Through Exempt Flag: "..value
end

-- Dissect: Corrected Trade Through Exempt Flag
nasdaq_utdf_output_utp_v1_5.corrected_trade_through_exempt_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.corrected_trade_through_exempt_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.corrected_trade_through_exempt_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.corrected_trade_through_exempt_flag, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition
nasdaq_utdf_output_utp_v1_5.corrected_sale_condition = {}

-- Size: Corrected Sale Condition
nasdaq_utdf_output_utp_v1_5.corrected_sale_condition.size =
  nasdaq_utdf_output_utp_v1_5.level_1.size + 
  nasdaq_utdf_output_utp_v1_5.level_2.size + 
  nasdaq_utdf_output_utp_v1_5.level_3.size + 
  nasdaq_utdf_output_utp_v1_5.level_4.size

-- Display: Corrected Sale Condition
nasdaq_utdf_output_utp_v1_5.corrected_sale_condition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Sale Condition
nasdaq_utdf_output_utp_v1_5.corrected_sale_condition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level 1: 1 Byte Ascii String Enum with 6 values
  index, level_1 = nasdaq_utdf_output_utp_v1_5.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: 1 Byte Ascii String Enum with 9 values
  index, level_2 = nasdaq_utdf_output_utp_v1_5.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: 1 Byte Ascii String Enum with 21 values
  index, level_3 = nasdaq_utdf_output_utp_v1_5.level_3.dissect(buffer, index, packet, parent)

  -- Level 4: 1 Byte Ascii String
  index, level_4 = nasdaq_utdf_output_utp_v1_5.level_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Sale Condition
nasdaq_utdf_output_utp_v1_5.corrected_sale_condition.dissect = function(buffer, offset, packet, parent)
  if show.corrected_sale_condition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.corrected_sale_condition, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v1_5.corrected_sale_condition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v1_5.corrected_sale_condition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v1_5.corrected_sale_condition.fields(buffer, offset, packet, parent)
  end
end

-- Corrected Volume
nasdaq_utdf_output_utp_v1_5.corrected_volume = {}

-- Size: Corrected Volume
nasdaq_utdf_output_utp_v1_5.corrected_volume.size = 4

-- Display: Corrected Volume
nasdaq_utdf_output_utp_v1_5.corrected_volume.display = function(value)
  return "Corrected Volume: "..value
end

-- Dissect: Corrected Volume
nasdaq_utdf_output_utp_v1_5.corrected_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.corrected_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v1_5.corrected_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.corrected_volume, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
nasdaq_utdf_output_utp_v1_5.corrected_trade_price = {}

-- Size: Corrected Trade Price
nasdaq_utdf_output_utp_v1_5.corrected_trade_price.size = 8

-- Display: Corrected Trade Price
nasdaq_utdf_output_utp_v1_5.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
nasdaq_utdf_output_utp_v1_5.corrected_trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Trade Price
nasdaq_utdf_output_utp_v1_5.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.corrected_trade_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Id
nasdaq_utdf_output_utp_v1_5.corrected_trade_id = {}

-- Size: Corrected Trade Id
nasdaq_utdf_output_utp_v1_5.corrected_trade_id.size = 8

-- Display: Corrected Trade Id
nasdaq_utdf_output_utp_v1_5.corrected_trade_id.display = function(value)
  return "Corrected Trade Id: "..value
end

-- Dissect: Corrected Trade Id
nasdaq_utdf_output_utp_v1_5.corrected_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.corrected_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.corrected_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.corrected_trade_id, range, value, display)

  return offset + length, value
end

-- Original Sellers Sale Days
nasdaq_utdf_output_utp_v1_5.original_sellers_sale_days = {}

-- Size: Original Sellers Sale Days
nasdaq_utdf_output_utp_v1_5.original_sellers_sale_days.size = 2

-- Display: Original Sellers Sale Days
nasdaq_utdf_output_utp_v1_5.original_sellers_sale_days.display = function(value)
  return "Original Sellers Sale Days: "..value
end

-- Dissect: Original Sellers Sale Days
nasdaq_utdf_output_utp_v1_5.original_sellers_sale_days.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.original_sellers_sale_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v1_5.original_sellers_sale_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.original_sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Original Trade Through Exempt Flag
nasdaq_utdf_output_utp_v1_5.original_trade_through_exempt_flag = {}

-- Size: Original Trade Through Exempt Flag
nasdaq_utdf_output_utp_v1_5.original_trade_through_exempt_flag.size = 1

-- Display: Original Trade Through Exempt Flag
nasdaq_utdf_output_utp_v1_5.original_trade_through_exempt_flag.display = function(value)
  return "Original Trade Through Exempt Flag: "..value
end

-- Dissect: Original Trade Through Exempt Flag
nasdaq_utdf_output_utp_v1_5.original_trade_through_exempt_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.original_trade_through_exempt_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.original_trade_through_exempt_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.original_trade_through_exempt_flag, range, value, display)

  return offset + length, value
end

-- Original Sale Condition
nasdaq_utdf_output_utp_v1_5.original_sale_condition = {}

-- Size: Original Sale Condition
nasdaq_utdf_output_utp_v1_5.original_sale_condition.size =
  nasdaq_utdf_output_utp_v1_5.level_1.size + 
  nasdaq_utdf_output_utp_v1_5.level_2.size + 
  nasdaq_utdf_output_utp_v1_5.level_3.size + 
  nasdaq_utdf_output_utp_v1_5.level_4.size

-- Display: Original Sale Condition
nasdaq_utdf_output_utp_v1_5.original_sale_condition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Original Sale Condition
nasdaq_utdf_output_utp_v1_5.original_sale_condition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level 1: 1 Byte Ascii String Enum with 6 values
  index, level_1 = nasdaq_utdf_output_utp_v1_5.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: 1 Byte Ascii String Enum with 9 values
  index, level_2 = nasdaq_utdf_output_utp_v1_5.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: 1 Byte Ascii String Enum with 21 values
  index, level_3 = nasdaq_utdf_output_utp_v1_5.level_3.dissect(buffer, index, packet, parent)

  -- Level 4: 1 Byte Ascii String
  index, level_4 = nasdaq_utdf_output_utp_v1_5.level_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Sale Condition
nasdaq_utdf_output_utp_v1_5.original_sale_condition.dissect = function(buffer, offset, packet, parent)
  if show.original_sale_condition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.original_sale_condition, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v1_5.original_sale_condition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v1_5.original_sale_condition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v1_5.original_sale_condition.fields(buffer, offset, packet, parent)
  end
end

-- Original Volume
nasdaq_utdf_output_utp_v1_5.original_volume = {}

-- Size: Original Volume
nasdaq_utdf_output_utp_v1_5.original_volume.size = 4

-- Display: Original Volume
nasdaq_utdf_output_utp_v1_5.original_volume.display = function(value)
  return "Original Volume: "..value
end

-- Dissect: Original Volume
nasdaq_utdf_output_utp_v1_5.original_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.original_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v1_5.original_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.original_volume, range, value, display)

  return offset + length, value
end

-- Original Trade Price
nasdaq_utdf_output_utp_v1_5.original_trade_price = {}

-- Size: Original Trade Price
nasdaq_utdf_output_utp_v1_5.original_trade_price.size = 8

-- Display: Original Trade Price
nasdaq_utdf_output_utp_v1_5.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
nasdaq_utdf_output_utp_v1_5.original_trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Trade Price
nasdaq_utdf_output_utp_v1_5.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_utdf_output_utp_v1_5.original_trade_price.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Id
nasdaq_utdf_output_utp_v1_5.original_trade_id = {}

-- Size: Original Trade Id
nasdaq_utdf_output_utp_v1_5.original_trade_id.size = 8

-- Display: Original Trade Id
nasdaq_utdf_output_utp_v1_5.original_trade_id.display = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
nasdaq_utdf_output_utp_v1_5.original_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.original_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.original_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Trade Correction Message
nasdaq_utdf_output_utp_v1_5.trade_correction_message = {}

-- Read runtime size of: Trade Correction Message
nasdaq_utdf_output_utp_v1_5.trade_correction_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Trade Correction Message
nasdaq_utdf_output_utp_v1_5.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
nasdaq_utdf_output_utp_v1_5.trade_correction_message.fields = function(buffer, offset, packet, parent, size_of_trade_correction_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Finra Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, finra_timestamp = nasdaq_utdf_output_utp_v1_5.finra_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 5 Byte Ascii String
  index, symbol = nasdaq_utdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Original Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, original_trade_id = nasdaq_utdf_output_utp_v1_5.original_trade_id.dissect(buffer, index, packet, parent)

  -- Original Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, original_trade_price = nasdaq_utdf_output_utp_v1_5.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Volume: 4 Byte Unsigned Fixed Width Integer
  index, original_volume = nasdaq_utdf_output_utp_v1_5.original_volume.dissect(buffer, index, packet, parent)

  -- Original Sale Condition: Struct of 4 fields
  index, original_sale_condition = nasdaq_utdf_output_utp_v1_5.original_sale_condition.dissect(buffer, index, packet, parent)

  -- Original Trade Through Exempt Flag: 1 Byte Ascii String
  index, original_trade_through_exempt_flag = nasdaq_utdf_output_utp_v1_5.original_trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Original Sellers Sale Days: 2 Byte Unsigned Fixed Width Integer
  index, original_sellers_sale_days = nasdaq_utdf_output_utp_v1_5.original_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Corrected Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, corrected_trade_id = nasdaq_utdf_output_utp_v1_5.corrected_trade_id.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, corrected_trade_price = nasdaq_utdf_output_utp_v1_5.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Volume: 4 Byte Unsigned Fixed Width Integer
  index, corrected_volume = nasdaq_utdf_output_utp_v1_5.corrected_volume.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition: Struct of 4 fields
  index, corrected_sale_condition = nasdaq_utdf_output_utp_v1_5.corrected_sale_condition.dissect(buffer, index, packet, parent)

  -- Corrected Trade Through Exempt Flag: 1 Byte Ascii String
  index, corrected_trade_through_exempt_flag = nasdaq_utdf_output_utp_v1_5.corrected_trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Corrected Sellers Sale Days: 2 Byte Unsigned Fixed Width Integer
  index, corrected_sellers_sale_days = nasdaq_utdf_output_utp_v1_5.corrected_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Consolidated High Price: 8 Byte Unsigned Fixed Width Integer
  index, consolidated_high_price = nasdaq_utdf_output_utp_v1_5.consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Consolidated Low Price: 8 Byte Unsigned Fixed Width Integer
  index, consolidated_low_price = nasdaq_utdf_output_utp_v1_5.consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price: 8 Byte Unsigned Fixed Width Integer
  index, consolidated_last_price = nasdaq_utdf_output_utp_v1_5.consolidated_last_price.dissect(buffer, index, packet, parent)

  -- Consolidated Volume: 8 Byte Unsigned Fixed Width Integer
  index, consolidated_volume = nasdaq_utdf_output_utp_v1_5.consolidated_volume.dissect(buffer, index, packet, parent)

  -- Consolidated Price Change Indicator: 1 Byte Ascii String Enum with 8 values
  index, consolidated_price_change_indicator = nasdaq_utdf_output_utp_v1_5.consolidated_price_change_indicator.dissect(buffer, index, packet, parent)

  -- Market Center Originator Id: 1 Byte Ascii String Enum with 20 values
  index, market_center_originator_id = nasdaq_utdf_output_utp_v1_5.market_center_originator_id.dissect(buffer, index, packet, parent)

  -- Market Participant High Price: 8 Byte Unsigned Fixed Width Integer
  index, market_participant_high_price = nasdaq_utdf_output_utp_v1_5.market_participant_high_price.dissect(buffer, index, packet, parent)

  -- Market Participant Low Price: 8 Byte Unsigned Fixed Width Integer
  index, market_participant_low_price = nasdaq_utdf_output_utp_v1_5.market_participant_low_price.dissect(buffer, index, packet, parent)

  -- Market Participant Last Price: 8 Byte Unsigned Fixed Width Integer
  index, market_participant_last_price = nasdaq_utdf_output_utp_v1_5.market_participant_last_price.dissect(buffer, index, packet, parent)

  -- Market Participant Volume: 8 Byte Unsigned Fixed Width Integer
  index, market_participant_volume = nasdaq_utdf_output_utp_v1_5.market_participant_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nasdaq_utdf_output_utp_v1_5.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_trade_correction_message = nasdaq_utdf_output_utp_v1_5.trade_correction_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.trade_correction_message then
    local range = buffer(offset, size_of_trade_correction_message)
    local display = nasdaq_utdf_output_utp_v1_5.trade_correction_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trade_correction_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.trade_correction_message.fields(buffer, offset, packet, parent, size_of_trade_correction_message)

  return offset + size_of_trade_correction_message
end

-- Trade Cancellation Type
nasdaq_utdf_output_utp_v1_5.trade_cancellation_type = {}

-- Size: Trade Cancellation Type
nasdaq_utdf_output_utp_v1_5.trade_cancellation_type.size = 1

-- Display: Trade Cancellation Type
nasdaq_utdf_output_utp_v1_5.trade_cancellation_type.display = function(value)
  return "Trade Cancellation Type: "..value
end

-- Dissect: Trade Cancellation Type
nasdaq_utdf_output_utp_v1_5.trade_cancellation_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.trade_cancellation_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.trade_cancellation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trade_cancellation_type, range, value, display)

  return offset + length, value
end

-- Trade Cancel Error Message
nasdaq_utdf_output_utp_v1_5.trade_cancel_error_message = {}

-- Read runtime size of: Trade Cancel Error Message
nasdaq_utdf_output_utp_v1_5.trade_cancel_error_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Trade Cancel Error Message
nasdaq_utdf_output_utp_v1_5.trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
nasdaq_utdf_output_utp_v1_5.trade_cancel_error_message.fields = function(buffer, offset, packet, parent, size_of_trade_cancel_error_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Finra Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, finra_timestamp = nasdaq_utdf_output_utp_v1_5.finra_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 5 Byte Ascii String
  index, symbol = nasdaq_utdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Trade Cancellation Type: 1 Byte Ascii String
  index, trade_cancellation_type = nasdaq_utdf_output_utp_v1_5.trade_cancellation_type.dissect(buffer, index, packet, parent)

  -- Original Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, original_trade_id = nasdaq_utdf_output_utp_v1_5.original_trade_id.dissect(buffer, index, packet, parent)

  -- Original Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, original_trade_price = nasdaq_utdf_output_utp_v1_5.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Volume: 4 Byte Unsigned Fixed Width Integer
  index, original_volume = nasdaq_utdf_output_utp_v1_5.original_volume.dissect(buffer, index, packet, parent)

  -- Original Sale Condition: Struct of 4 fields
  index, original_sale_condition = nasdaq_utdf_output_utp_v1_5.original_sale_condition.dissect(buffer, index, packet, parent)

  -- Original Trade Through Exempt Flag: 1 Byte Ascii String
  index, original_trade_through_exempt_flag = nasdaq_utdf_output_utp_v1_5.original_trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Original Sellers Sale Days: 2 Byte Unsigned Fixed Width Integer
  index, original_sellers_sale_days = nasdaq_utdf_output_utp_v1_5.original_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Consolidated High Price: 8 Byte Unsigned Fixed Width Integer
  index, consolidated_high_price = nasdaq_utdf_output_utp_v1_5.consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Consolidated Low Price: 8 Byte Unsigned Fixed Width Integer
  index, consolidated_low_price = nasdaq_utdf_output_utp_v1_5.consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price: 8 Byte Unsigned Fixed Width Integer
  index, consolidated_last_price = nasdaq_utdf_output_utp_v1_5.consolidated_last_price.dissect(buffer, index, packet, parent)

  -- Consolidated Volume: 8 Byte Unsigned Fixed Width Integer
  index, consolidated_volume = nasdaq_utdf_output_utp_v1_5.consolidated_volume.dissect(buffer, index, packet, parent)

  -- Consolidated Price Change Indicator: 1 Byte Ascii String Enum with 8 values
  index, consolidated_price_change_indicator = nasdaq_utdf_output_utp_v1_5.consolidated_price_change_indicator.dissect(buffer, index, packet, parent)

  -- Market Center Originator Id: 1 Byte Ascii String Enum with 20 values
  index, market_center_originator_id = nasdaq_utdf_output_utp_v1_5.market_center_originator_id.dissect(buffer, index, packet, parent)

  -- Market Participant High Price: 8 Byte Unsigned Fixed Width Integer
  index, market_participant_high_price = nasdaq_utdf_output_utp_v1_5.market_participant_high_price.dissect(buffer, index, packet, parent)

  -- Market Participant Low Price: 8 Byte Unsigned Fixed Width Integer
  index, market_participant_low_price = nasdaq_utdf_output_utp_v1_5.market_participant_low_price.dissect(buffer, index, packet, parent)

  -- Market Participant Last Price: 8 Byte Unsigned Fixed Width Integer
  index, market_participant_last_price = nasdaq_utdf_output_utp_v1_5.market_participant_last_price.dissect(buffer, index, packet, parent)

  -- Market Participant Volume: 8 Byte Unsigned Fixed Width Integer
  index, market_participant_volume = nasdaq_utdf_output_utp_v1_5.market_participant_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
nasdaq_utdf_output_utp_v1_5.trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_trade_cancel_error_message = nasdaq_utdf_output_utp_v1_5.trade_cancel_error_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.trade_cancel_error_message then
    local range = buffer(offset, size_of_trade_cancel_error_message)
    local display = nasdaq_utdf_output_utp_v1_5.trade_cancel_error_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trade_cancel_error_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.trade_cancel_error_message.fields(buffer, offset, packet, parent, size_of_trade_cancel_error_message)

  return offset + size_of_trade_cancel_error_message
end

-- Participant Price Change Indicator
nasdaq_utdf_output_utp_v1_5.participant_price_change_indicator = {}

-- Size: Participant Price Change Indicator
nasdaq_utdf_output_utp_v1_5.participant_price_change_indicator.size = 1

-- Display: Participant Price Change Indicator
nasdaq_utdf_output_utp_v1_5.participant_price_change_indicator.display = function(value)
  if value == "0" then
    return "Participant Price Change Indicator: No Prices Changed (0)"
  end
  if value == "1" then
    return "Participant Price Change Indicator: Participant Last Price Changed (1)"
  end
  if value == "2" then
    return "Participant Price Change Indicator: Participant Low Price Changed (2)"
  end
  if value == "3" then
    return "Participant Price Change Indicator: Participant Last And Low Prices Changed (3)"
  end
  if value == "4" then
    return "Participant Price Change Indicator: Participant High Price Changed (4)"
  end
  if value == "5" then
    return "Participant Price Change Indicator: Participant Last And High Prices Changed (5)"
  end
  if value == "6" then
    return "Participant Price Change Indicator: Participant High And Low Prices Changed (6)"
  end
  if value == "7" then
    return "Participant Price Change Indicator: All Participant Prices Changed (7)"
  end

  return "Participant Price Change Indicator: Unknown("..value..")"
end

-- Dissect: Participant Price Change Indicator
nasdaq_utdf_output_utp_v1_5.participant_price_change_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.participant_price_change_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.participant_price_change_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.participant_price_change_indicator, range, value, display)

  return offset + length, value
end

-- Trade Report Message Long Form Message
nasdaq_utdf_output_utp_v1_5.trade_report_message_long_form_message = {}

-- Read runtime size of: Trade Report Message Long Form Message
nasdaq_utdf_output_utp_v1_5.trade_report_message_long_form_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Trade Report Message Long Form Message
nasdaq_utdf_output_utp_v1_5.trade_report_message_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message Long Form Message
nasdaq_utdf_output_utp_v1_5.trade_report_message_long_form_message.fields = function(buffer, offset, packet, parent, size_of_trade_report_message_long_form_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Finra Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, finra_timestamp = nasdaq_utdf_output_utp_v1_5.finra_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 5 Byte Ascii String
  index, symbol = nasdaq_utdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = nasdaq_utdf_output_utp_v1_5.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, trade_price = nasdaq_utdf_output_utp_v1_5.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = nasdaq_utdf_output_utp_v1_5.trade_volume.dissect(buffer, index, packet, parent)

  -- Sale Condition: Struct of 4 fields
  index, sale_condition = nasdaq_utdf_output_utp_v1_5.sale_condition.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Flag: 1 Byte Ascii String
  index, trade_through_exempt_flag = nasdaq_utdf_output_utp_v1_5.trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: 2 Byte Unsigned Fixed Width Integer
  index, sellers_sale_days = nasdaq_utdf_output_utp_v1_5.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Consolidated Price Change Indicator: 1 Byte Ascii String Enum with 8 values
  index, consolidated_price_change_indicator = nasdaq_utdf_output_utp_v1_5.consolidated_price_change_indicator.dissect(buffer, index, packet, parent)

  -- Participant Price Change Indicator: 1 Byte Ascii String Enum with 8 values
  index, participant_price_change_indicator = nasdaq_utdf_output_utp_v1_5.participant_price_change_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message Long Form Message
nasdaq_utdf_output_utp_v1_5.trade_report_message_long_form_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_trade_report_message_long_form_message = nasdaq_utdf_output_utp_v1_5.trade_report_message_long_form_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.trade_report_message_long_form_message then
    local range = buffer(offset, size_of_trade_report_message_long_form_message)
    local display = nasdaq_utdf_output_utp_v1_5.trade_report_message_long_form_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trade_report_message_long_form_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.trade_report_message_long_form_message.fields(buffer, offset, packet, parent, size_of_trade_report_message_long_form_message)

  return offset + size_of_trade_report_message_long_form_message
end

-- Trade Volume Short
nasdaq_utdf_output_utp_v1_5.trade_volume_short = {}

-- Size: Trade Volume Short
nasdaq_utdf_output_utp_v1_5.trade_volume_short.size = 2

-- Display: Trade Volume Short
nasdaq_utdf_output_utp_v1_5.trade_volume_short.display = function(value)
  return "Trade Volume Short: "..value
end

-- Dissect: Trade Volume Short
nasdaq_utdf_output_utp_v1_5.trade_volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.trade_volume_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v1_5.trade_volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trade_volume_short, range, value, display)

  return offset + length, value
end

-- Trade Price Short
nasdaq_utdf_output_utp_v1_5.trade_price_short = {}

-- Size: Trade Price Short
nasdaq_utdf_output_utp_v1_5.trade_price_short.size = 2

-- Display: Trade Price Short
nasdaq_utdf_output_utp_v1_5.trade_price_short.display = function(value)
  return "Trade Price Short: "..value
end

-- Translate: Trade Price Short
nasdaq_utdf_output_utp_v1_5.trade_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Trade Price Short
nasdaq_utdf_output_utp_v1_5.trade_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.trade_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_utdf_output_utp_v1_5.trade_price_short.translate(raw)
  local display = nasdaq_utdf_output_utp_v1_5.trade_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trade_price_short, range, value, display)

  return offset + length, value
end

-- Trade Report Message Short Form Message
nasdaq_utdf_output_utp_v1_5.trade_report_message_short_form_message = {}

-- Read runtime size of: Trade Report Message Short Form Message
nasdaq_utdf_output_utp_v1_5.trade_report_message_short_form_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):uint()

  return message_length - 3
end

-- Display: Trade Report Message Short Form Message
nasdaq_utdf_output_utp_v1_5.trade_report_message_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message Short Form Message
nasdaq_utdf_output_utp_v1_5.trade_report_message_short_form_message.fields = function(buffer, offset, packet, parent, size_of_trade_report_message_short_form_message)
  local index = offset

  -- Message Info: Struct of 5 fields
  index, message_info = nasdaq_utdf_output_utp_v1_5.message_info.dissect(buffer, index, packet, parent)

  -- Finra Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, finra_timestamp = nasdaq_utdf_output_utp_v1_5.finra_timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: 5 Byte Ascii String
  index, symbol = nasdaq_utdf_output_utp_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = nasdaq_utdf_output_utp_v1_5.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Price Short: 2 Byte Unsigned Fixed Width Integer
  index, trade_price_short = nasdaq_utdf_output_utp_v1_5.trade_price_short.dissect(buffer, index, packet, parent)

  -- Trade Volume Short: 2 Byte Unsigned Fixed Width Integer
  index, trade_volume_short = nasdaq_utdf_output_utp_v1_5.trade_volume_short.dissect(buffer, index, packet, parent)

  -- Sale Condition: Struct of 4 fields
  index, sale_condition = nasdaq_utdf_output_utp_v1_5.sale_condition.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Flag: 1 Byte Ascii String
  index, trade_through_exempt_flag = nasdaq_utdf_output_utp_v1_5.trade_through_exempt_flag.dissect(buffer, index, packet, parent)

  -- Consolidated Price Change Indicator: 1 Byte Ascii String Enum with 8 values
  index, consolidated_price_change_indicator = nasdaq_utdf_output_utp_v1_5.consolidated_price_change_indicator.dissect(buffer, index, packet, parent)

  -- Participant Price Change Indicator: 1 Byte Ascii String Enum with 8 values
  index, participant_price_change_indicator = nasdaq_utdf_output_utp_v1_5.participant_price_change_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message Short Form Message
nasdaq_utdf_output_utp_v1_5.trade_report_message_short_form_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_trade_report_message_short_form_message = nasdaq_utdf_output_utp_v1_5.trade_report_message_short_form_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.trade_report_message_short_form_message then
    local range = buffer(offset, size_of_trade_report_message_short_form_message)
    local display = nasdaq_utdf_output_utp_v1_5.trade_report_message_short_form_message.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trade_report_message_short_form_message, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.trade_report_message_short_form_message.fields(buffer, offset, packet, parent, size_of_trade_report_message_short_form_message)

  return offset + size_of_trade_report_message_short_form_message
end

-- Trade Payload
nasdaq_utdf_output_utp_v1_5.trade_payload = {}

-- Calculate runtime size of: Trade Payload
nasdaq_utdf_output_utp_v1_5.trade_payload.size = function(buffer, offset, trade_message_type)
  -- Size of Trade Report Message Short Form Message
  if trade_message_type == "A" then
    return nasdaq_utdf_output_utp_v1_5.trade_report_message_short_form_message.size(buffer, offset)
  end
  -- Size of Trade Report Message Long Form Message
  if trade_message_type == "W" then
    return nasdaq_utdf_output_utp_v1_5.trade_report_message_long_form_message.size(buffer, offset)
  end
  -- Size of Trade Cancel Error Message
  if trade_message_type == "Z" then
    return nasdaq_utdf_output_utp_v1_5.trade_cancel_error_message.size(buffer, offset)
  end
  -- Size of Trade Correction Message
  if trade_message_type == "Y" then
    return nasdaq_utdf_output_utp_v1_5.trade_correction_message.size(buffer, offset)
  end
  -- Size of Prior Day As Of Trade Message
  if trade_message_type == "H" then
    return nasdaq_utdf_output_utp_v1_5.prior_day_as_of_trade_message.size(buffer, offset)
  end

  return 0
end

-- Display: Trade Payload
nasdaq_utdf_output_utp_v1_5.trade_payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Trade Payload
nasdaq_utdf_output_utp_v1_5.trade_payload.branches = function(buffer, offset, packet, parent, trade_message_type)
  -- Dissect Trade Report Message Short Form Message
  if trade_message_type == "A" then
    return nasdaq_utdf_output_utp_v1_5.trade_report_message_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message Long Form Message
  if trade_message_type == "W" then
    return nasdaq_utdf_output_utp_v1_5.trade_report_message_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error Message
  if trade_message_type == "Z" then
    return nasdaq_utdf_output_utp_v1_5.trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if trade_message_type == "Y" then
    return nasdaq_utdf_output_utp_v1_5.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Prior Day As Of Trade Message
  if trade_message_type == "H" then
    return nasdaq_utdf_output_utp_v1_5.prior_day_as_of_trade_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Trade Payload
nasdaq_utdf_output_utp_v1_5.trade_payload.dissect = function(buffer, offset, packet, parent, trade_message_type)
  if not show.trade_payload then
    return nasdaq_utdf_output_utp_v1_5.trade_payload.branches(buffer, offset, packet, parent, trade_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_utdf_output_utp_v1_5.trade_payload.size(buffer, offset, trade_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_utdf_output_utp_v1_5.trade_payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trade_payload, range, display)

  return nasdaq_utdf_output_utp_v1_5.trade_payload.branches(buffer, offset, packet, parent, trade_message_type)
end

-- Trade Message Type
nasdaq_utdf_output_utp_v1_5.trade_message_type = {}

-- Size: Trade Message Type
nasdaq_utdf_output_utp_v1_5.trade_message_type.size = 1

-- Display: Trade Message Type
nasdaq_utdf_output_utp_v1_5.trade_message_type.display = function(value)
  if value == "A" then
    return "Trade Message Type: Trade Report Message Short Form Message (A)"
  end
  if value == "W" then
    return "Trade Message Type: Trade Report Message Long Form Message (W)"
  end
  if value == "Z" then
    return "Trade Message Type: Trade Cancel Error Message (Z)"
  end
  if value == "Y" then
    return "Trade Message Type: Trade Correction Message (Y)"
  end
  if value == "H" then
    return "Trade Message Type: Prior Day As Of Trade Message (H)"
  end

  return "Trade Message Type: Unknown("..value..")"
end

-- Dissect: Trade Message Type
nasdaq_utdf_output_utp_v1_5.trade_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.trade_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.trade_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trade_message_type, range, value, display)

  return offset + length, value
end

-- Trade
nasdaq_utdf_output_utp_v1_5.trade = {}

-- Read runtime size of: Trade
nasdaq_utdf_output_utp_v1_5.trade.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 2
end

-- Display: Trade
nasdaq_utdf_output_utp_v1_5.trade.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade
nasdaq_utdf_output_utp_v1_5.trade.fields = function(buffer, offset, packet, parent, size_of_trade)
  local index = offset

  -- Trade Message Type: 1 Byte Ascii String Enum with 5 values
  index, trade_message_type = nasdaq_utdf_output_utp_v1_5.trade_message_type.dissect(buffer, index, packet, parent)

  -- Trade Payload: Runtime Type with 5 branches
  index = nasdaq_utdf_output_utp_v1_5.trade_payload.dissect(buffer, index, packet, parent, trade_message_type)

  return index
end

-- Dissect: Trade
nasdaq_utdf_output_utp_v1_5.trade.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_trade = nasdaq_utdf_output_utp_v1_5.trade.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.trade then
    local range = buffer(offset, size_of_trade)
    local display = nasdaq_utdf_output_utp_v1_5.trade.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.trade, range, display)
  end

  nasdaq_utdf_output_utp_v1_5.trade.fields(buffer, offset, packet, parent, size_of_trade)

  return offset + size_of_trade
end

-- Payload
nasdaq_utdf_output_utp_v1_5.payload = {}

-- Calculate runtime size of: Payload
nasdaq_utdf_output_utp_v1_5.payload.size = function(buffer, offset, message_category)
  -- Size of Trade
  if message_category == "T" then
    return nasdaq_utdf_output_utp_v1_5.trade.size(buffer, offset)
  end
  -- Size of Administrative
  if message_category == "A" then
    return nasdaq_utdf_output_utp_v1_5.administrative.size(buffer, offset)
  end
  -- Size of Volume
  if message_category == "V" then
    return nasdaq_utdf_output_utp_v1_5.volume.size(buffer, offset)
  end
  -- Size of Control
  if message_category == "C" then
    return nasdaq_utdf_output_utp_v1_5.control.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_utdf_output_utp_v1_5.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_utdf_output_utp_v1_5.payload.branches = function(buffer, offset, packet, parent, message_category)
  -- Dissect Trade
  if message_category == "T" then
    return nasdaq_utdf_output_utp_v1_5.trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Administrative
  if message_category == "A" then
    return nasdaq_utdf_output_utp_v1_5.administrative.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Volume
  if message_category == "V" then
    return nasdaq_utdf_output_utp_v1_5.volume.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control
  if message_category == "C" then
    return nasdaq_utdf_output_utp_v1_5.control.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_utdf_output_utp_v1_5.payload.dissect = function(buffer, offset, packet, parent, message_category)
  if not show.payload then
    return nasdaq_utdf_output_utp_v1_5.payload.branches(buffer, offset, packet, parent, message_category)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_utdf_output_utp_v1_5.payload.size(buffer, offset, message_category)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_utdf_output_utp_v1_5.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.payload, range, display)

  return nasdaq_utdf_output_utp_v1_5.payload.branches(buffer, offset, packet, parent, message_category)
end

-- Message Category
nasdaq_utdf_output_utp_v1_5.message_category = {}

-- Size: Message Category
nasdaq_utdf_output_utp_v1_5.message_category.size = 1

-- Display: Message Category
nasdaq_utdf_output_utp_v1_5.message_category.display = function(value)
  return "Message Category: "..value
end

-- Dissect: Message Category
nasdaq_utdf_output_utp_v1_5.message_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.message_category, range, value, display)

  return offset + length, value
end

-- Version
nasdaq_utdf_output_utp_v1_5.version = {}

-- Size: Version
nasdaq_utdf_output_utp_v1_5.version.size = 1

-- Display: Version
nasdaq_utdf_output_utp_v1_5.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
nasdaq_utdf_output_utp_v1_5.version.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v1_5.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.version, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_utdf_output_utp_v1_5.message_length = {}

-- Size: Message Length
nasdaq_utdf_output_utp_v1_5.message_length.size = 2

-- Display: Message Length
nasdaq_utdf_output_utp_v1_5.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_utdf_output_utp_v1_5.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v1_5.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
nasdaq_utdf_output_utp_v1_5.message_header = {}

-- Size: Message Header
nasdaq_utdf_output_utp_v1_5.message_header.size =
  nasdaq_utdf_output_utp_v1_5.message_length.size + 
  nasdaq_utdf_output_utp_v1_5.version.size + 
  nasdaq_utdf_output_utp_v1_5.message_category.size

-- Display: Message Header
nasdaq_utdf_output_utp_v1_5.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_utdf_output_utp_v1_5.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_utdf_output_utp_v1_5.message_length.dissect(buffer, index, packet, parent)

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = nasdaq_utdf_output_utp_v1_5.version.dissect(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String
  index, message_category = nasdaq_utdf_output_utp_v1_5.message_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_utdf_output_utp_v1_5.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.message_header, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v1_5.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v1_5.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v1_5.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_utdf_output_utp_v1_5.message = {}

-- Display: Message
nasdaq_utdf_output_utp_v1_5.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_utdf_output_utp_v1_5.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = nasdaq_utdf_output_utp_v1_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 4 branches
  index = nasdaq_utdf_output_utp_v1_5.payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
nasdaq_utdf_output_utp_v1_5.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.message, buffer(offset, 0))
    local current = nasdaq_utdf_output_utp_v1_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_utdf_output_utp_v1_5.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_utdf_output_utp_v1_5.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Count
nasdaq_utdf_output_utp_v1_5.count = {}

-- Size: Count
nasdaq_utdf_output_utp_v1_5.count.size = 2

-- Display: Count
nasdaq_utdf_output_utp_v1_5.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_utdf_output_utp_v1_5.count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_utdf_output_utp_v1_5.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.count, range, value, display)

  return offset + length, value
end

-- Sequence
nasdaq_utdf_output_utp_v1_5.sequence = {}

-- Size: Sequence
nasdaq_utdf_output_utp_v1_5.sequence.size = 8

-- Display: Sequence
nasdaq_utdf_output_utp_v1_5.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_utdf_output_utp_v1_5.sequence.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.sequence.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_utdf_output_utp_v1_5.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_utdf_output_utp_v1_5.session = {}

-- Size: Session
nasdaq_utdf_output_utp_v1_5.session.size = 10

-- Display: Session
nasdaq_utdf_output_utp_v1_5.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_utdf_output_utp_v1_5.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_utdf_output_utp_v1_5.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_utdf_output_utp_v1_5.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
nasdaq_utdf_output_utp_v1_5.packet_header = {}

-- Size: Packet Header
nasdaq_utdf_output_utp_v1_5.packet_header.size =
  nasdaq_utdf_output_utp_v1_5.session.size + 
  nasdaq_utdf_output_utp_v1_5.sequence.size + 
  nasdaq_utdf_output_utp_v1_5.count.size

-- Display: Packet Header
nasdaq_utdf_output_utp_v1_5.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_utdf_output_utp_v1_5.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_utdf_output_utp_v1_5.session.dissect(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_utdf_output_utp_v1_5.sequence.dissect(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_utdf_output_utp_v1_5.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_utdf_output_utp_v1_5.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_utdf_output_utp_v1_5.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_utdf_output_utp_v1_5.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_utdf_output_utp_v1_5.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_utdf_output_utp_v1_5.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_utdf_output_utp_v1_5.packet = {}

-- Dissect Packet
nasdaq_utdf_output_utp_v1_5.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_utdf_output_utp_v1_5.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_utdf_output_utp_v1_5.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_utdf_output_utp_v1_5.init()
end

-- Dissector for Nasdaq Utdf Output Utp 1.5
function omi_nasdaq_utdf_output_utp_v1_5.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_utdf_output_utp_v1_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_utdf_output_utp_v1_5, buffer(), omi_nasdaq_utdf_output_utp_v1_5.description, "("..buffer:len().." Bytes)")
  return nasdaq_utdf_output_utp_v1_5.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_utdf_output_utp_v1_5)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_utdf_output_utp_v1_5.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Utdf Output Utp 1.5
local function omi_nasdaq_utdf_output_utp_v1_5_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_utdf_output_utp_v1_5.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_utdf_output_utp_v1_5
  omi_nasdaq_utdf_output_utp_v1_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Utdf Output Utp 1.5
omi_nasdaq_utdf_output_utp_v1_5:register_heuristic("udp", omi_nasdaq_utdf_output_utp_v1_5_heuristic)

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
