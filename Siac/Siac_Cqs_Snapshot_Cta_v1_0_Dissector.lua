-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Siac Cqs Snapshot Cta 1.0 Protocol
local siac_cqs_snapshot_cta_v1_0 = Proto("Siac.Cqs.Snapshot.Cta.v1.0.Lua", "Siac Cqs Snapshot Cta 1.0")

-- Component Tables
local show = {}
local format = {}
local siac_cqs_snapshot_cta_v1_0_display = {}
local siac_cqs_snapshot_cta_v1_0_dissect = {}
local siac_cqs_snapshot_cta_v1_0_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Siac Cqs Snapshot Cta 1.0 Fields
siac_cqs_snapshot_cta_v1_0.fields.auction_collar_lower_threshold_price = ProtoField.new("Auction Collar Lower Threshold Price", "siac.cqs.snapshot.cta.v1.0.auctioncollarlowerthresholdprice", ftypes.DOUBLE)
siac_cqs_snapshot_cta_v1_0.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "siac.cqs.snapshot.cta.v1.0.auctioncollarreferenceprice", ftypes.DOUBLE)
siac_cqs_snapshot_cta_v1_0.fields.auction_collar_upper_threshold_price = ProtoField.new("Auction Collar Upper Threshold Price", "siac.cqs.snapshot.cta.v1.0.auctioncollarupperthresholdprice", ftypes.DOUBLE)
siac_cqs_snapshot_cta_v1_0.fields.bid_price = ProtoField.new("Bid Price", "siac.cqs.snapshot.cta.v1.0.bidprice", ftypes.DOUBLE)
siac_cqs_snapshot_cta_v1_0.fields.bid_size = ProtoField.new("Bid Size", "siac.cqs.snapshot.cta.v1.0.bidsize", ftypes.UINT32)
siac_cqs_snapshot_cta_v1_0.fields.block_checksum = ProtoField.new("Block Checksum", "siac.cqs.snapshot.cta.v1.0.blockchecksum", ftypes.UINT16)
siac_cqs_snapshot_cta_v1_0.fields.block_header = ProtoField.new("Block Header", "siac.cqs.snapshot.cta.v1.0.blockheader", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.block_pad_byte = ProtoField.new("Block Pad Byte", "siac.cqs.snapshot.cta.v1.0.blockpadbyte", ftypes.UINT8)
siac_cqs_snapshot_cta_v1_0.fields.block_sequence_number = ProtoField.new("Block Sequence Number", "siac.cqs.snapshot.cta.v1.0.blocksequencenumber", ftypes.UINT32)
siac_cqs_snapshot_cta_v1_0.fields.block_size = ProtoField.new("Block Size", "siac.cqs.snapshot.cta.v1.0.blocksize", ftypes.UINT16)
siac_cqs_snapshot_cta_v1_0.fields.consolidated_snapshot_message = ProtoField.new("Consolidated Snapshot Message", "siac.cqs.snapshot.cta.v1.0.consolidatedsnapshotmessage", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.delivery_flag = ProtoField.new("Delivery Flag", "siac.cqs.snapshot.cta.v1.0.deliveryflag", ftypes.UINT8)
siac_cqs_snapshot_cta_v1_0.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "siac.cqs.snapshot.cta.v1.0.financialstatusindicator", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.finra_bbo_luld_indicator = ProtoField.new("Finra Bbo Luld Indicator", "siac.cqs.snapshot.cta.v1.0.finrabboluldindicator", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_market_maker_id = ProtoField.new("Finra Best Bid Market Maker Id", "siac.cqs.snapshot.cta.v1.0.finrabestbidmarketmakerid", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_price = ProtoField.new("Finra Best Bid Price", "siac.cqs.snapshot.cta.v1.0.finrabestbidprice", ftypes.DOUBLE)
siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_quote_condition = ProtoField.new("Finra Best Bid Quote Condition", "siac.cqs.snapshot.cta.v1.0.finrabestbidquotecondition", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_size = ProtoField.new("Finra Best Bid Size", "siac.cqs.snapshot.cta.v1.0.finrabestbidsize", ftypes.UINT32)
siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_market_maker_id = ProtoField.new("Finra Best Offer Market Maker Id", "siac.cqs.snapshot.cta.v1.0.finrabestoffermarketmakerid", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_price = ProtoField.new("Finra Best Offer Price", "siac.cqs.snapshot.cta.v1.0.finrabestofferprice", ftypes.DOUBLE)
siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_quote_condition = ProtoField.new("Finra Best Offer Quote Condition", "siac.cqs.snapshot.cta.v1.0.finrabestofferquotecondition", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_size = ProtoField.new("Finra Best Offer Size", "siac.cqs.snapshot.cta.v1.0.finrabestoffersize", ftypes.UINT32)
siac_cqs_snapshot_cta_v1_0.fields.finra_snapshot_message = ProtoField.new("Finra Snapshot Message", "siac.cqs.snapshot.cta.v1.0.finrasnapshotmessage", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.future = ProtoField.new("Future", "siac.cqs.snapshot.cta.v1.0.future", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.halt_reason = ProtoField.new("Halt Reason", "siac.cqs.snapshot.cta.v1.0.haltreason", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.high_indication_price = ProtoField.new("High Indication Price", "siac.cqs.snapshot.cta.v1.0.highindicationprice", ftypes.DOUBLE)
siac_cqs_snapshot_cta_v1_0.fields.instrument_type = ProtoField.new("Instrument Type", "siac.cqs.snapshot.cta.v1.0.instrumenttype", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.last_seq_num = ProtoField.new("Last Seq Num", "siac.cqs.snapshot.cta.v1.0.lastseqnum", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "siac.cqs.snapshot.cta.v1.0.lineintegritymessage", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.low_indication_price = ProtoField.new("Low Indication Price", "siac.cqs.snapshot.cta.v1.0.lowindicationprice", ftypes.DOUBLE)
siac_cqs_snapshot_cta_v1_0.fields.lower_limit_price_band = ProtoField.new("Lower Limit Price Band", "siac.cqs.snapshot.cta.v1.0.lowerlimitpriceband", ftypes.DOUBLE)
siac_cqs_snapshot_cta_v1_0.fields.luld_indicator = ProtoField.new("Luld Indicator", "siac.cqs.snapshot.cta.v1.0.luldindicator", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.market_condition = ProtoField.new("Market Condition", "siac.cqs.snapshot.cta.v1.0.marketcondition", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.market_wide_circuit_breaker_decline_level_status_snapshot_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Status Snapshot Message", "siac.cqs.snapshot.cta.v1.0.marketwidecircuitbreakerdeclinelevelstatussnapshotmessage", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.message = ProtoField.new("Message", "siac.cqs.snapshot.cta.v1.0.message", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.message_category = ProtoField.new("Message Category", "siac.cqs.snapshot.cta.v1.0.messagecategory", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.message_header = ProtoField.new("Message Header", "siac.cqs.snapshot.cta.v1.0.messageheader", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.message_length = ProtoField.new("Message Length", "siac.cqs.snapshot.cta.v1.0.messagelength", ftypes.UINT16)
siac_cqs_snapshot_cta_v1_0.fields.messages_in_block = ProtoField.new("Messages In Block", "siac.cqs.snapshot.cta.v1.0.messagesinblock", ftypes.UINT8)
siac_cqs_snapshot_cta_v1_0.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "siac.cqs.snapshot.cta.v1.0.mwcblevel2", ftypes.INT64)
siac_cqs_snapshot_cta_v1_0.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "siac.cqs.snapshot.cta.v1.0.mwcblevel3", ftypes.INT64)
siac_cqs_snapshot_cta_v1_0.fields.nanoseconds = ProtoField.new("Nanoseconds", "siac.cqs.snapshot.cta.v1.0.nanoseconds", ftypes.UINT32)
siac_cqs_snapshot_cta_v1_0.fields.national_bbo_luld_indicator = ProtoField.new("National Bbo Luld Indicator", "siac.cqs.snapshot.cta.v1.0.nationalbboluldindicator", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_participant_id = ProtoField.new("National Best Bid Participant Id", "siac.cqs.snapshot.cta.v1.0.nationalbestbidparticipantid", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_price = ProtoField.new("National Best Bid Price", "siac.cqs.snapshot.cta.v1.0.nationalbestbidprice", ftypes.DOUBLE)
siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_quote_condition = ProtoField.new("National Best Bid Quote Condition", "siac.cqs.snapshot.cta.v1.0.nationalbestbidquotecondition", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_size = ProtoField.new("National Best Bid Size", "siac.cqs.snapshot.cta.v1.0.nationalbestbidsize", ftypes.UINT32)
siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_participant_id = ProtoField.new("National Best Offer Participant Id", "siac.cqs.snapshot.cta.v1.0.nationalbestofferparticipantid", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_price = ProtoField.new("National Best Offer Price", "siac.cqs.snapshot.cta.v1.0.nationalbestofferprice", ftypes.DOUBLE)
siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_quote_condition = ProtoField.new("National Best Offer Quote Condition", "siac.cqs.snapshot.cta.v1.0.nationalbestofferquotecondition", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_size = ProtoField.new("National Best Offer Size", "siac.cqs.snapshot.cta.v1.0.nationalbestoffersize", ftypes.UINT32)
siac_cqs_snapshot_cta_v1_0.fields.number_of_extensions = ProtoField.new("Number Of Extensions", "siac.cqs.snapshot.cta.v1.0.numberofextensions", ftypes.UINT8)
siac_cqs_snapshot_cta_v1_0.fields.offer_price = ProtoField.new("Offer Price", "siac.cqs.snapshot.cta.v1.0.offerprice", ftypes.DOUBLE)
siac_cqs_snapshot_cta_v1_0.fields.packet = ProtoField.new("Packet", "siac.cqs.snapshot.cta.v1.0.packet", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.participant_id = ProtoField.new("Participant Id", "siac.cqs.snapshot.cta.v1.0.participantid", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.participant_snapshot_message = ProtoField.new("Participant Snapshot Message", "siac.cqs.snapshot.cta.v1.0.participantsnapshotmessage", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.payload = ProtoField.new("Payload", "siac.cqs.snapshot.cta.v1.0.payload", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.primary_listing_market_participant_id = ProtoField.new("Primary Listing Market Participant Id", "siac.cqs.snapshot.cta.v1.0.primarylistingmarketparticipantid", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.quote_condition = ProtoField.new("Quote Condition", "siac.cqs.snapshot.cta.v1.0.quotecondition", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.reserved = ProtoField.new("Reserved", "siac.cqs.snapshot.cta.v1.0.reserved", ftypes.UINT8)
siac_cqs_snapshot_cta_v1_0.fields.retail_interest_indicator = ProtoField.new("Retail Interest Indicator", "siac.cqs.snapshot.cta.v1.0.retailinterestindicator", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.seconds = ProtoField.new("Seconds", "siac.cqs.snapshot.cta.v1.0.seconds", ftypes.UINT32)
siac_cqs_snapshot_cta_v1_0.fields.security_symbol = ProtoField.new("Security Symbol", "siac.cqs.snapshot.cta.v1.0.securitysymbol", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.settlement_condition = ProtoField.new("Settlement Condition", "siac.cqs.snapshot.cta.v1.0.settlementcondition", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.short_sale_restriction_indicator = ProtoField.new("Short Sale Restriction Indicator", "siac.cqs.snapshot.cta.v1.0.shortsalerestrictionindicator", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.sip_block_timestamp = ProtoField.new("Sip Block Timestamp", "siac.cqs.snapshot.cta.v1.0.sipblocktimestamp", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.snapshot = ProtoField.new("Snapshot", "siac.cqs.snapshot.cta.v1.0.snapshot", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.snapshot_message_type = ProtoField.new("Snapshot Message Type", "siac.cqs.snapshot.cta.v1.0.snapshotmessagetype", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.snapshot_payload = ProtoField.new("Snapshot Payload", "siac.cqs.snapshot.cta.v1.0.snapshotpayload", ftypes.STRING)
siac_cqs_snapshot_cta_v1_0.fields.tot_pub_seq_rollover = ProtoField.new("Tot Pub Seq Rollover", "siac.cqs.snapshot.cta.v1.0.totpubseqrollover", ftypes.UINT8)
siac_cqs_snapshot_cta_v1_0.fields.upper_limit_price_band = ProtoField.new("Upper Limit Price Band", "siac.cqs.snapshot.cta.v1.0.upperlimitpriceband", ftypes.DOUBLE)
siac_cqs_snapshot_cta_v1_0.fields.version = ProtoField.new("Version", "siac.cqs.snapshot.cta.v1.0.version", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Siac Cqs Snapshot Cta 1.0 Element Dissection Options
show.block_header = true
show.consolidated_snapshot_message = true
show.finra_snapshot_message = true
show.line_integrity_message = true
show.market_wide_circuit_breaker_decline_level_status_snapshot_message = true
show.message = true
show.message_header = true
show.packet = true
show.participant_snapshot_message = true
show.sip_block_timestamp = true
show.snapshot = true
show.payload = false
show.snapshot_payload = false

-- Register Siac Cqs Snapshot Cta 1.0 Show Options
siac_cqs_snapshot_cta_v1_0.prefs.show_block_header = Pref.bool("Show Block Header", show.block_header, "Parse and add Block Header to protocol tree")
siac_cqs_snapshot_cta_v1_0.prefs.show_consolidated_snapshot_message = Pref.bool("Show Consolidated Snapshot Message", show.consolidated_snapshot_message, "Parse and add Consolidated Snapshot Message to protocol tree")
siac_cqs_snapshot_cta_v1_0.prefs.show_finra_snapshot_message = Pref.bool("Show Finra Snapshot Message", show.finra_snapshot_message, "Parse and add Finra Snapshot Message to protocol tree")
siac_cqs_snapshot_cta_v1_0.prefs.show_line_integrity_message = Pref.bool("Show Line Integrity Message", show.line_integrity_message, "Parse and add Line Integrity Message to protocol tree")
siac_cqs_snapshot_cta_v1_0.prefs.show_market_wide_circuit_breaker_decline_level_status_snapshot_message = Pref.bool("Show Market Wide Circuit Breaker Decline Level Status Snapshot Message", show.market_wide_circuit_breaker_decline_level_status_snapshot_message, "Parse and add Market Wide Circuit Breaker Decline Level Status Snapshot Message to protocol tree")
siac_cqs_snapshot_cta_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
siac_cqs_snapshot_cta_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
siac_cqs_snapshot_cta_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
siac_cqs_snapshot_cta_v1_0.prefs.show_participant_snapshot_message = Pref.bool("Show Participant Snapshot Message", show.participant_snapshot_message, "Parse and add Participant Snapshot Message to protocol tree")
siac_cqs_snapshot_cta_v1_0.prefs.show_sip_block_timestamp = Pref.bool("Show Sip Block Timestamp", show.sip_block_timestamp, "Parse and add Sip Block Timestamp to protocol tree")
siac_cqs_snapshot_cta_v1_0.prefs.show_snapshot = Pref.bool("Show Snapshot", show.snapshot, "Parse and add Snapshot to protocol tree")
siac_cqs_snapshot_cta_v1_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
siac_cqs_snapshot_cta_v1_0.prefs.show_snapshot_payload = Pref.bool("Show Snapshot Payload", show.snapshot_payload, "Parse and add Snapshot Payload to protocol tree")

-- Handle changed preferences
function siac_cqs_snapshot_cta_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.block_header ~= siac_cqs_snapshot_cta_v1_0.prefs.show_block_header then
    show.block_header = siac_cqs_snapshot_cta_v1_0.prefs.show_block_header
    changed = true
  end
  if show.consolidated_snapshot_message ~= siac_cqs_snapshot_cta_v1_0.prefs.show_consolidated_snapshot_message then
    show.consolidated_snapshot_message = siac_cqs_snapshot_cta_v1_0.prefs.show_consolidated_snapshot_message
    changed = true
  end
  if show.finra_snapshot_message ~= siac_cqs_snapshot_cta_v1_0.prefs.show_finra_snapshot_message then
    show.finra_snapshot_message = siac_cqs_snapshot_cta_v1_0.prefs.show_finra_snapshot_message
    changed = true
  end
  if show.line_integrity_message ~= siac_cqs_snapshot_cta_v1_0.prefs.show_line_integrity_message then
    show.line_integrity_message = siac_cqs_snapshot_cta_v1_0.prefs.show_line_integrity_message
    changed = true
  end
  if show.market_wide_circuit_breaker_decline_level_status_snapshot_message ~= siac_cqs_snapshot_cta_v1_0.prefs.show_market_wide_circuit_breaker_decline_level_status_snapshot_message then
    show.market_wide_circuit_breaker_decline_level_status_snapshot_message = siac_cqs_snapshot_cta_v1_0.prefs.show_market_wide_circuit_breaker_decline_level_status_snapshot_message
    changed = true
  end
  if show.message ~= siac_cqs_snapshot_cta_v1_0.prefs.show_message then
    show.message = siac_cqs_snapshot_cta_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= siac_cqs_snapshot_cta_v1_0.prefs.show_message_header then
    show.message_header = siac_cqs_snapshot_cta_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= siac_cqs_snapshot_cta_v1_0.prefs.show_packet then
    show.packet = siac_cqs_snapshot_cta_v1_0.prefs.show_packet
    changed = true
  end
  if show.participant_snapshot_message ~= siac_cqs_snapshot_cta_v1_0.prefs.show_participant_snapshot_message then
    show.participant_snapshot_message = siac_cqs_snapshot_cta_v1_0.prefs.show_participant_snapshot_message
    changed = true
  end
  if show.sip_block_timestamp ~= siac_cqs_snapshot_cta_v1_0.prefs.show_sip_block_timestamp then
    show.sip_block_timestamp = siac_cqs_snapshot_cta_v1_0.prefs.show_sip_block_timestamp
    changed = true
  end
  if show.snapshot ~= siac_cqs_snapshot_cta_v1_0.prefs.show_snapshot then
    show.snapshot = siac_cqs_snapshot_cta_v1_0.prefs.show_snapshot
    changed = true
  end
  if show.payload ~= siac_cqs_snapshot_cta_v1_0.prefs.show_payload then
    show.payload = siac_cqs_snapshot_cta_v1_0.prefs.show_payload
    changed = true
  end
  if show.snapshot_payload ~= siac_cqs_snapshot_cta_v1_0.prefs.show_snapshot_payload then
    show.snapshot_payload = siac_cqs_snapshot_cta_v1_0.prefs.show_snapshot_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- Is value not even?
uneven = function(value)
  return (value % 2 == 1)
end


-----------------------------------------------------------------------
-- Dissect Siac Cqs Snapshot Cta 1.0
-----------------------------------------------------------------------

-- Size: Block Pad Byte
siac_cqs_snapshot_cta_v1_0_size_of.block_pad_byte = 1

-- Display: Block Pad Byte
siac_cqs_snapshot_cta_v1_0_display.block_pad_byte = function(value)
  return "Block Pad Byte: "..value
end

-- Dissect: Block Pad Byte
siac_cqs_snapshot_cta_v1_0_dissect.block_pad_byte = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.block_pad_byte
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.block_pad_byte(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.block_pad_byte, range, value, display)

  return offset + length, value
end

-- Size: Halt Reason
siac_cqs_snapshot_cta_v1_0_size_of.halt_reason = 1

-- Display: Halt Reason
siac_cqs_snapshot_cta_v1_0_display.halt_reason = function(value)
  if value == " " then
    return "Halt Reason: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Halt Reason: Additional Information Requested (A)"
  end
  if value == "C" then
    return "Halt Reason: Regulatory Concern (C)"
  end
  if value == "D" then
    return "Halt Reason: News Released (D)"
  end
  if value == "E" then
    return "Halt Reason: Merger Effective (E)"
  end
  if value == "F" then
    return "Halt Reason: Etf Component Prices Not Available (F)"
  end
  if value == "I" then
    return "Halt Reason: Order Imbalance (I)"
  end
  if value == "M" then
    return "Halt Reason: Limit Up Limit Down Trading Pause (M)"
  end
  if value == "N" then
    return "Halt Reason: Corporate Action (N)"
  end
  if value == "O" then
    return "Halt Reason: New Security Offering (O)"
  end
  if value == "P" then
    return "Halt Reason: News Pending (P)"
  end
  if value == "V" then
    return "Halt Reason: Intraday Indicative Value Not Available (V)"
  end
  if value == "X" then
    return "Halt Reason: Operational (X)"
  end
  if value == "Y" then
    return "Halt Reason: Subpenny Trading (Y)"
  end
  if value == "1" then
    return "Halt Reason: Market Wide Circuit Breaker Level 1 Breached (1)"
  end
  if value == "2" then
    return "Halt Reason: Market Wide Circuit Breaker Level 2 Breached (2)"
  end
  if value == "3" then
    return "Halt Reason: Market Wide Circuit Breaker Level 3 Breached (3)"
  end

  return "Halt Reason: Unknown("..value..")"
end

-- Dissect: Halt Reason
siac_cqs_snapshot_cta_v1_0_dissect.halt_reason = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.halt_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.halt_reason(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Size: Low Indication Price
siac_cqs_snapshot_cta_v1_0_size_of.low_indication_price = 8

-- Display: Low Indication Price
siac_cqs_snapshot_cta_v1_0_display.low_indication_price = function(value)
  return "Low Indication Price: "..value
end

-- Translate: Low Indication Price
translate.low_indication_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Indication Price
siac_cqs_snapshot_cta_v1_0_dissect.low_indication_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.low_indication_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.low_indication_price(raw)
  local display = siac_cqs_snapshot_cta_v1_0_display.low_indication_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.low_indication_price, range, value, display)

  return offset + length, value
end

-- Size: High Indication Price
siac_cqs_snapshot_cta_v1_0_size_of.high_indication_price = 8

-- Display: High Indication Price
siac_cqs_snapshot_cta_v1_0_display.high_indication_price = function(value)
  return "High Indication Price: "..value
end

-- Translate: High Indication Price
translate.high_indication_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Indication Price
siac_cqs_snapshot_cta_v1_0_dissect.high_indication_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.high_indication_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.high_indication_price(raw)
  local display = siac_cqs_snapshot_cta_v1_0_display.high_indication_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.high_indication_price, range, value, display)

  return offset + length, value
end

-- Size: Finra Bbo Luld Indicator
siac_cqs_snapshot_cta_v1_0_size_of.finra_bbo_luld_indicator = 1

-- Display: Finra Bbo Luld Indicator
siac_cqs_snapshot_cta_v1_0_display.finra_bbo_luld_indicator = function(value)
  if value == "" then
    return "Finra Bbo Luld Indicator: Limit Up Limit Down Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Finra Bbo Luld Indicator: Finra Best Bid And Or Finra Best Offer Are Executable (A)"
  end
  if value == "B" then
    return "Finra Bbo Luld Indicator: Finra Best Bid Below Lower Limit Price Band And Finra Best Bid Is Non Executable (B)"
  end
  if value == "C" then
    return "Finra Bbo Luld Indicator: Finra Best Offer Above Upper Limit Price Band And Finra Best Offer Is Non Executable (C)"
  end
  if value == "D" then
    return "Finra Bbo Luld Indicator: Best Bid Below Lower Limit Price Band And Best Offer Above Upper Limit Price Band Best Bid And Best Offer Are Non Executable For Finra (D)"
  end

  return "Finra Bbo Luld Indicator: Unknown("..value..")"
end

-- Dissect: Finra Bbo Luld Indicator
siac_cqs_snapshot_cta_v1_0_dissect.finra_bbo_luld_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.finra_bbo_luld_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.finra_bbo_luld_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.finra_bbo_luld_indicator, range, value, display)

  return offset + length, value
end

-- Size: Finra Best Offer Market Maker Id
siac_cqs_snapshot_cta_v1_0_size_of.finra_best_offer_market_maker_id = 4

-- Display: Finra Best Offer Market Maker Id
siac_cqs_snapshot_cta_v1_0_display.finra_best_offer_market_maker_id = function(value)
  return "Finra Best Offer Market Maker Id: "..value
end

-- Dissect: Finra Best Offer Market Maker Id
siac_cqs_snapshot_cta_v1_0_dissect.finra_best_offer_market_maker_id = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.finra_best_offer_market_maker_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.finra_best_offer_market_maker_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_market_maker_id, range, value, display)

  return offset + length, value
end

-- Size: Finra Best Offer Size
siac_cqs_snapshot_cta_v1_0_size_of.finra_best_offer_size = 4

-- Display: Finra Best Offer Size
siac_cqs_snapshot_cta_v1_0_display.finra_best_offer_size = function(value)
  return "Finra Best Offer Size: "..value
end

-- Dissect: Finra Best Offer Size
siac_cqs_snapshot_cta_v1_0_dissect.finra_best_offer_size = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.finra_best_offer_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.finra_best_offer_size(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_size, range, value, display)

  return offset + length, value
end

-- Size: Finra Best Offer Price
siac_cqs_snapshot_cta_v1_0_size_of.finra_best_offer_price = 8

-- Display: Finra Best Offer Price
siac_cqs_snapshot_cta_v1_0_display.finra_best_offer_price = function(value)
  return "Finra Best Offer Price: "..value
end

-- Translate: Finra Best Offer Price
translate.finra_best_offer_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Finra Best Offer Price
siac_cqs_snapshot_cta_v1_0_dissect.finra_best_offer_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.finra_best_offer_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.finra_best_offer_price(raw)
  local display = siac_cqs_snapshot_cta_v1_0_display.finra_best_offer_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_price, range, value, display)

  return offset + length, value
end

-- Size: Finra Best Offer Quote Condition
siac_cqs_snapshot_cta_v1_0_size_of.finra_best_offer_quote_condition = 1

-- Display: Finra Best Offer Quote Condition
siac_cqs_snapshot_cta_v1_0_display.finra_best_offer_quote_condition = function(value)
  if value == " " then
    return "Finra Best Offer Quote Condition: Quote Condition Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Finra Best Offer Quote Condition: Slow Quote On Offer Side (A)"
  end
  if value == "B" then
    return "Finra Best Offer Quote Condition: Slow Quote On Bid Side (B)"
  end
  if value == "C" then
    return "Finra Best Offer Quote Condition: Closing (C)"
  end
  if value == "E" then
    return "Finra Best Offer Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Bid Side (E)"
  end
  if value == "F" then
    return "Finra Best Offer Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Offer Side (F)"
  end
  if value == "H" then
    return "Finra Best Offer Quote Condition: Slow Quote On The Bid And Offer Sides (H)"
  end
  if value == "L" then
    return "Finra Best Offer Quote Condition: Closed Market Maker (L)"
  end
  if value == "N" then
    return "Finra Best Offer Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "Finra Best Offer Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Finra Best Offer Quote Condition: Regular Finra Open (R)"
  end
  if value == "U" then
    return "Finra Best Offer Quote Condition: Slow Quote Due To Liquidity Replenishment Point Or Gap Quote On Both The Bid And Offer Sides (U)"
  end
  if value == "W" then
    return "Finra Best Offer Quote Condition: Slow Quote Due To Set Slow List On Both The Bid And Offer Sides (W)"
  end
  if value == "4" then
    return "Finra Best Offer Quote Condition: On Demand Intra Day Auction (4)"
  end

  return "Finra Best Offer Quote Condition: Unknown("..value..")"
end

-- Dissect: Finra Best Offer Quote Condition
siac_cqs_snapshot_cta_v1_0_dissect.finra_best_offer_quote_condition = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.finra_best_offer_quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.finra_best_offer_quote_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Finra Best Bid Market Maker Id
siac_cqs_snapshot_cta_v1_0_size_of.finra_best_bid_market_maker_id = 4

-- Display: Finra Best Bid Market Maker Id
siac_cqs_snapshot_cta_v1_0_display.finra_best_bid_market_maker_id = function(value)
  return "Finra Best Bid Market Maker Id: "..value
end

-- Dissect: Finra Best Bid Market Maker Id
siac_cqs_snapshot_cta_v1_0_dissect.finra_best_bid_market_maker_id = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.finra_best_bid_market_maker_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.finra_best_bid_market_maker_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_market_maker_id, range, value, display)

  return offset + length, value
end

-- Size: Finra Best Bid Size
siac_cqs_snapshot_cta_v1_0_size_of.finra_best_bid_size = 4

-- Display: Finra Best Bid Size
siac_cqs_snapshot_cta_v1_0_display.finra_best_bid_size = function(value)
  return "Finra Best Bid Size: "..value
end

-- Dissect: Finra Best Bid Size
siac_cqs_snapshot_cta_v1_0_dissect.finra_best_bid_size = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.finra_best_bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.finra_best_bid_size(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Finra Best Bid Price
siac_cqs_snapshot_cta_v1_0_size_of.finra_best_bid_price = 8

-- Display: Finra Best Bid Price
siac_cqs_snapshot_cta_v1_0_display.finra_best_bid_price = function(value)
  return "Finra Best Bid Price: "..value
end

-- Translate: Finra Best Bid Price
translate.finra_best_bid_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Finra Best Bid Price
siac_cqs_snapshot_cta_v1_0_dissect.finra_best_bid_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.finra_best_bid_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.finra_best_bid_price(raw)
  local display = siac_cqs_snapshot_cta_v1_0_display.finra_best_bid_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Finra Best Bid Quote Condition
siac_cqs_snapshot_cta_v1_0_size_of.finra_best_bid_quote_condition = 1

-- Display: Finra Best Bid Quote Condition
siac_cqs_snapshot_cta_v1_0_display.finra_best_bid_quote_condition = function(value)
  if value == " " then
    return "Finra Best Bid Quote Condition: Quote Condition Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Finra Best Bid Quote Condition: Slow Quote On Offer Side (A)"
  end
  if value == "B" then
    return "Finra Best Bid Quote Condition: Slow Quote On Bid Side (B)"
  end
  if value == "C" then
    return "Finra Best Bid Quote Condition: Closing (C)"
  end
  if value == "E" then
    return "Finra Best Bid Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Bid Side (E)"
  end
  if value == "F" then
    return "Finra Best Bid Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Offer Side (F)"
  end
  if value == "H" then
    return "Finra Best Bid Quote Condition: Slow Quote On The Bid And Offer Sides (H)"
  end
  if value == "L" then
    return "Finra Best Bid Quote Condition: Closed Market Maker (L)"
  end
  if value == "N" then
    return "Finra Best Bid Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "Finra Best Bid Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Finra Best Bid Quote Condition: Regular Finra Open (R)"
  end
  if value == "U" then
    return "Finra Best Bid Quote Condition: Slow Quote Due To Liquidity Replenishment Point Or Gap Quote On Both The Bid And Offer Sides (U)"
  end
  if value == "W" then
    return "Finra Best Bid Quote Condition: Slow Quote Due To Set Slow List On Both The Bid And Offer Sides (W)"
  end
  if value == "4" then
    return "Finra Best Bid Quote Condition: On Demand Intra Day Auction (4)"
  end

  return "Finra Best Bid Quote Condition: Unknown("..value..")"
end

-- Dissect: Finra Best Bid Quote Condition
siac_cqs_snapshot_cta_v1_0_dissect.finra_best_bid_quote_condition = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.finra_best_bid_quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.finra_best_bid_quote_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
siac_cqs_snapshot_cta_v1_0_size_of.security_symbol = 11

-- Display: Security Symbol
siac_cqs_snapshot_cta_v1_0_display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
siac_cqs_snapshot_cta_v1_0_dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.security_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Size: Participant Id
siac_cqs_snapshot_cta_v1_0_size_of.participant_id = 1

-- Display: Participant Id
siac_cqs_snapshot_cta_v1_0_display.participant_id = function(value)
  if value == "A" then
    return "Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "Participant Id: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "Participant Id: Nyse National (C)"
  end
  if value == "D" then
    return "Participant Id: Adf (D)"
  end
  if value == "H" then
    return "Participant Id: Miax (H)"
  end
  if value == "I" then
    return "Participant Id: Ise (I)"
  end
  if value == "J" then
    return "Participant Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "Participant Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "Participant Id: Ltse (L)"
  end
  if value == "M" then
    return "Participant Id: Nyse Chicago (M)"
  end
  if value == "N" then
    return "Participant Id: Nyse (N)"
  end
  if value == "P" then
    return "Participant Id: Nyse Arca (P)"
  end
  if value == "S" then
    return "Participant Id: Cqs (S)"
  end
  if value == "T" then
    return "Participant Id: Nasdaq (T)"
  end
  if value == "U" then
    return "Participant Id: Memx (U)"
  end
  if value == "V" then
    return "Participant Id: Iex (V)"
  end
  if value == "W" then
    return "Participant Id: Cbsx (W)"
  end
  if value == "X" then
    return "Participant Id: Nasdaq Psx (X)"
  end
  if value == "Y" then
    return "Participant Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "Participant Id: Cboe Bzx (Z)"
  end

  return "Participant Id: Unknown("..value..")"
end

-- Dissect: Participant Id
siac_cqs_snapshot_cta_v1_0_dissect.participant_id = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Finra Snapshot Message
siac_cqs_snapshot_cta_v1_0_size_of.finra_snapshot_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Finra Snapshot Message
siac_cqs_snapshot_cta_v1_0_display.finra_snapshot_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Snapshot Message
siac_cqs_snapshot_cta_v1_0_dissect.finra_snapshot_message_fields = function(buffer, offset, packet, parent, size_of_finra_snapshot_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_snapshot_cta_v1_0_dissect.participant_id(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cqs_snapshot_cta_v1_0_dissect.security_symbol(buffer, index, packet, parent)

  -- Finra Best Bid Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, finra_best_bid_quote_condition = siac_cqs_snapshot_cta_v1_0_dissect.finra_best_bid_quote_condition(buffer, index, packet, parent)

  -- Finra Best Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, finra_best_bid_price = siac_cqs_snapshot_cta_v1_0_dissect.finra_best_bid_price(buffer, index, packet, parent)

  -- Finra Best Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, finra_best_bid_size = siac_cqs_snapshot_cta_v1_0_dissect.finra_best_bid_size(buffer, index, packet, parent)

  -- Finra Best Bid Market Maker Id: 4 Byte Ascii String
  index, finra_best_bid_market_maker_id = siac_cqs_snapshot_cta_v1_0_dissect.finra_best_bid_market_maker_id(buffer, index, packet, parent)

  -- Finra Best Offer Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, finra_best_offer_quote_condition = siac_cqs_snapshot_cta_v1_0_dissect.finra_best_offer_quote_condition(buffer, index, packet, parent)

  -- Finra Best Offer Price: 8 Byte Unsigned Fixed Width Integer
  index, finra_best_offer_price = siac_cqs_snapshot_cta_v1_0_dissect.finra_best_offer_price(buffer, index, packet, parent)

  -- Finra Best Offer Size: 4 Byte Unsigned Fixed Width Integer
  index, finra_best_offer_size = siac_cqs_snapshot_cta_v1_0_dissect.finra_best_offer_size(buffer, index, packet, parent)

  -- Finra Best Offer Market Maker Id: 4 Byte Ascii String
  index, finra_best_offer_market_maker_id = siac_cqs_snapshot_cta_v1_0_dissect.finra_best_offer_market_maker_id(buffer, index, packet, parent)

  -- Finra Bbo Luld Indicator: 1 Byte Ascii String Enum with 5 values
  index, finra_bbo_luld_indicator = siac_cqs_snapshot_cta_v1_0_dissect.finra_bbo_luld_indicator(buffer, index, packet, parent)

  -- High Indication Price: 8 Byte Unsigned Fixed Width Integer
  index, high_indication_price = siac_cqs_snapshot_cta_v1_0_dissect.high_indication_price(buffer, index, packet, parent)

  -- Low Indication Price: 8 Byte Unsigned Fixed Width Integer
  index, low_indication_price = siac_cqs_snapshot_cta_v1_0_dissect.low_indication_price(buffer, index, packet, parent)

  -- Halt Reason: 1 Byte Ascii String Enum with 17 values
  index, halt_reason = siac_cqs_snapshot_cta_v1_0_dissect.halt_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Snapshot Message
siac_cqs_snapshot_cta_v1_0_dissect.finra_snapshot_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_finra_snapshot_message = siac_cqs_snapshot_cta_v1_0_size_of.finra_snapshot_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.finra_snapshot_message then
    local range = buffer(offset, size_of_finra_snapshot_message)
    local display = siac_cqs_snapshot_cta_v1_0_display.finra_snapshot_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_snapshot_cta_v1_0.fields.finra_snapshot_message, range, display)
  end

  siac_cqs_snapshot_cta_v1_0_dissect.finra_snapshot_message_fields(buffer, offset, packet, parent, size_of_finra_snapshot_message)

  return offset + size_of_finra_snapshot_message
end

-- Size: Luld Indicator
siac_cqs_snapshot_cta_v1_0_size_of.luld_indicator = 1

-- Display: Luld Indicator
siac_cqs_snapshot_cta_v1_0_display.luld_indicator = function(value)
  if value == " " then
    return "Luld Indicator: Limit Up Limit Down Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Luld Indicator: Bid Is Non Executable (A)"
  end
  if value == "B" then
    return "Luld Indicator: Offer Is Non Executable (B)"
  end

  return "Luld Indicator: Unknown("..value..")"
end

-- Dissect: Luld Indicator
siac_cqs_snapshot_cta_v1_0_dissect.luld_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.luld_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.luld_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.luld_indicator, range, value, display)

  return offset + length, value
end

-- Size: Market Condition
siac_cqs_snapshot_cta_v1_0_size_of.market_condition = 1

-- Display: Market Condition
siac_cqs_snapshot_cta_v1_0_display.market_condition = function(value)
  if value == " " then
    return "Market Condition: Normal Auction Market (<whitespace>)"
  end
  if value == "A" then
    return "Market Condition: Crossed Market (A)"
  end
  if value == "B" then
    return "Market Condition: Locked Market (B)"
  end

  return "Market Condition: Unknown("..value..")"
end

-- Dissect: Market Condition
siac_cqs_snapshot_cta_v1_0_dissect.market_condition = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.market_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.market_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.market_condition, range, value, display)

  return offset + length, value
end

-- Size: Settlement Condition
siac_cqs_snapshot_cta_v1_0_size_of.settlement_condition = 1

-- Display: Settlement Condition
siac_cqs_snapshot_cta_v1_0_display.settlement_condition = function(value)
  if value == " " then
    return "Settlement Condition: Regular Way Settlement (<whitespace>)"
  end
  if value == "A" then
    return "Settlement Condition: Cash Only Settlement (A)"
  end
  if value == "B" then
    return "Settlement Condition: Next Day Only Settlement (B)"
  end

  return "Settlement Condition: Unknown("..value..")"
end

-- Dissect: Settlement Condition
siac_cqs_snapshot_cta_v1_0_dissect.settlement_condition = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.settlement_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.settlement_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.settlement_condition, range, value, display)

  return offset + length, value
end

-- Size: Retail Interest Indicator
siac_cqs_snapshot_cta_v1_0_size_of.retail_interest_indicator = 1

-- Display: Retail Interest Indicator
siac_cqs_snapshot_cta_v1_0_display.retail_interest_indicator = function(value)
  if value == " " then
    return "Retail Interest Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Retail Interest Indicator: Retail Interest On Bid Quote (A)"
  end
  if value == "B" then
    return "Retail Interest Indicator: Retail Interest On Offer Quote (B)"
  end
  if value == "C" then
    return "Retail Interest Indicator: Retail Interest On Both The Bid And Offer Quotes (C)"
  end

  return "Retail Interest Indicator: Unknown("..value..")"
end

-- Dissect: Retail Interest Indicator
siac_cqs_snapshot_cta_v1_0_dissect.retail_interest_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.retail_interest_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.retail_interest_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.retail_interest_indicator, range, value, display)

  return offset + length, value
end

-- Size: Offer Price
siac_cqs_snapshot_cta_v1_0_size_of.offer_price = 8

-- Display: Offer Price
siac_cqs_snapshot_cta_v1_0_display.offer_price = function(value)
  return "Offer Price: "..value
end

-- Translate: Offer Price
translate.offer_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Offer Price
siac_cqs_snapshot_cta_v1_0_dissect.offer_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.offer_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.offer_price(raw)
  local display = siac_cqs_snapshot_cta_v1_0_display.offer_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
siac_cqs_snapshot_cta_v1_0_size_of.bid_size = 4

-- Display: Bid Size
siac_cqs_snapshot_cta_v1_0_display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
siac_cqs_snapshot_cta_v1_0_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
siac_cqs_snapshot_cta_v1_0_size_of.bid_price = 8

-- Display: Bid Price
siac_cqs_snapshot_cta_v1_0_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
translate.bid_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
siac_cqs_snapshot_cta_v1_0_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.bid_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.bid_price(raw)
  local display = siac_cqs_snapshot_cta_v1_0_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Quote Condition
siac_cqs_snapshot_cta_v1_0_size_of.quote_condition = 1

-- Display: Quote Condition
siac_cqs_snapshot_cta_v1_0_display.quote_condition = function(value)
  if value == " " then
    return "Quote Condition: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Quote Condition: Slow Quote On Offer Side (A)"
  end
  if value == "B" then
    return "Quote Condition: Slow Quote On Bid Side (B)"
  end
  if value == "C" then
    return "Quote Condition: Closing (C)"
  end
  if value == "E" then
    return "Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Bid Side (E)"
  end
  if value == "F" then
    return "Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Offer Side (F)"
  end
  if value == "H" then
    return "Quote Condition: Slow Quote On The Bid And Offer Sides (H)"
  end
  if value == "L" then
    return "Quote Condition: Closed Market Maker (L)"
  end
  if value == "N" then
    return "Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Quote Condition: Regular Finra Open (R)"
  end
  if value == "U" then
    return "Quote Condition: Slow Quote Due To Liquidity Replenishment Point Or Gap Quote On Both The Bid And Offer Sides (U)"
  end
  if value == "W" then
    return "Quote Condition: Slow Quote Due To Set Slow List On Both The Bid And Offer Sides (W)"
  end
  if value == "4" then
    return "Quote Condition: On Demand Intra Day Auction (4)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
siac_cqs_snapshot_cta_v1_0_dissect.quote_condition = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Participant Snapshot Message
siac_cqs_snapshot_cta_v1_0_size_of.participant_snapshot_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Participant Snapshot Message
siac_cqs_snapshot_cta_v1_0_display.participant_snapshot_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant Snapshot Message
siac_cqs_snapshot_cta_v1_0_dissect.participant_snapshot_message_fields = function(buffer, offset, packet, parent, size_of_participant_snapshot_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_snapshot_cta_v1_0_dissect.participant_id(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cqs_snapshot_cta_v1_0_dissect.security_symbol(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, quote_condition = siac_cqs_snapshot_cta_v1_0_dissect.quote_condition(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, bid_price = siac_cqs_snapshot_cta_v1_0_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = siac_cqs_snapshot_cta_v1_0_dissect.bid_size(buffer, index, packet, parent)

  -- Offer Price: 8 Byte Unsigned Fixed Width Integer
  index, offer_price = siac_cqs_snapshot_cta_v1_0_dissect.offer_price(buffer, index, packet, parent)

  -- Offer Size
  index, offer_size = siac_cqs_snapshot_cta_v1_0_dissect.offer_size(buffer, index, packet, parent)

  -- Retail Interest Indicator: 1 Byte Ascii String Enum with 4 values
  index, retail_interest_indicator = siac_cqs_snapshot_cta_v1_0_dissect.retail_interest_indicator(buffer, index, packet, parent)

  -- Settlement Condition: 1 Byte Ascii String Enum with 3 values
  index, settlement_condition = siac_cqs_snapshot_cta_v1_0_dissect.settlement_condition(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Ascii String Enum with 3 values
  index, market_condition = siac_cqs_snapshot_cta_v1_0_dissect.market_condition(buffer, index, packet, parent)

  -- Luld Indicator: 1 Byte Ascii String Enum with 3 values
  index, luld_indicator = siac_cqs_snapshot_cta_v1_0_dissect.luld_indicator(buffer, index, packet, parent)

  -- High Indication Price: 8 Byte Unsigned Fixed Width Integer
  index, high_indication_price = siac_cqs_snapshot_cta_v1_0_dissect.high_indication_price(buffer, index, packet, parent)

  -- Low Indication Price: 8 Byte Unsigned Fixed Width Integer
  index, low_indication_price = siac_cqs_snapshot_cta_v1_0_dissect.low_indication_price(buffer, index, packet, parent)

  -- Halt Reason: 1 Byte Ascii String Enum with 17 values
  index, halt_reason = siac_cqs_snapshot_cta_v1_0_dissect.halt_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Snapshot Message
siac_cqs_snapshot_cta_v1_0_dissect.participant_snapshot_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_participant_snapshot_message = siac_cqs_snapshot_cta_v1_0_size_of.participant_snapshot_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.participant_snapshot_message then
    local range = buffer(offset, size_of_participant_snapshot_message)
    local display = siac_cqs_snapshot_cta_v1_0_display.participant_snapshot_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_snapshot_cta_v1_0.fields.participant_snapshot_message, range, display)
  end

  siac_cqs_snapshot_cta_v1_0_dissect.participant_snapshot_message_fields(buffer, offset, packet, parent, size_of_participant_snapshot_message)

  return offset + size_of_participant_snapshot_message
end

-- Size: Future
siac_cqs_snapshot_cta_v1_0_size_of.future = 1

-- Display: Future
siac_cqs_snapshot_cta_v1_0_display.future = function(value)
  return "Future: "..value
end

-- Dissect: Future
siac_cqs_snapshot_cta_v1_0_dissect.future = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.future
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.future(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.future, range, value, display)

  return offset + length, value
end

-- Size: Short Sale Restriction Indicator
siac_cqs_snapshot_cta_v1_0_size_of.short_sale_restriction_indicator = 1

-- Display: Short Sale Restriction Indicator
siac_cqs_snapshot_cta_v1_0_display.short_sale_restriction_indicator = function(value)
  if value == " " then
    return "Short Sale Restriction Indicator: Not In Effect (<whitespace>)"
  end
  if value == "A" then
    return "Short Sale Restriction Indicator: Short Sale Restriction Activated (A)"
  end
  if value == "C" then
    return "Short Sale Restriction Indicator: Short Sale Restriction Continued (C)"
  end
  if value == "D" then
    return "Short Sale Restriction Indicator: Short Sale Restriction Deactivated (D)"
  end
  if value == "E" then
    return "Short Sale Restriction Indicator: Short Sale Restriction In Effect (E)"
  end

  return "Short Sale Restriction Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction Indicator
siac_cqs_snapshot_cta_v1_0_dissect.short_sale_restriction_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.short_sale_restriction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.short_sale_restriction_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.short_sale_restriction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Financial Status Indicator
siac_cqs_snapshot_cta_v1_0_size_of.financial_status_indicator = 1

-- Display: Financial Status Indicator
siac_cqs_snapshot_cta_v1_0_display.financial_status_indicator = function(value)
  if value == "0" then
    return "Financial Status Indicator: Financial Status Not Applicable (0)"
  end
  if value == "1" then
    return "Financial Status Indicator: Bankrupt (1)"
  end
  if value == "2" then
    return "Financial Status Indicator: Below Continuing Listing Standards (2)"
  end
  if value == "3" then
    return "Financial Status Indicator: Bankrupt And Below Continuing Listing Standards (3)"
  end
  if value == "4" then
    return "Financial Status Indicator: Late Filing (4)"
  end
  if value == "5" then
    return "Financial Status Indicator: Bankrupt And Late Filing (5)"
  end
  if value == "6" then
    return "Financial Status Indicator: Below Continuing Listing Standards And Late Filing (6)"
  end
  if value == "7" then
    return "Financial Status Indicator: Bankrupt Below Continuing Listing Standards And Late Filing (7)"
  end
  if value == "8" then
    return "Financial Status Indicator: Creations Suspended (8)"
  end
  if value == "9" then
    return "Financial Status Indicator: Redemptions Suspended (9)"
  end
  if value == "A" then
    return "Financial Status Indicator: Liquidation (A)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
siac_cqs_snapshot_cta_v1_0_dissect.financial_status_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.financial_status_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.financial_status_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Size: Primary Listing Market Participant Id
siac_cqs_snapshot_cta_v1_0_size_of.primary_listing_market_participant_id = 1

-- Display: Primary Listing Market Participant Id
siac_cqs_snapshot_cta_v1_0_display.primary_listing_market_participant_id = function(value)
  if value == " " then
    return "Primary Listing Market Participant Id: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Primary Listing Market Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "Primary Listing Market Participant Id: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "Primary Listing Market Participant Id: Nyse National (C)"
  end
  if value == "D" then
    return "Primary Listing Market Participant Id: Adf (D)"
  end
  if value == "H" then
    return "Primary Listing Market Participant Id: Miax (H)"
  end
  if value == "I" then
    return "Primary Listing Market Participant Id: Ise (I)"
  end
  if value == "J" then
    return "Primary Listing Market Participant Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "Primary Listing Market Participant Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "Primary Listing Market Participant Id: Ltse (L)"
  end
  if value == "M" then
    return "Primary Listing Market Participant Id: Nyse Chicago (M)"
  end
  if value == "N" then
    return "Primary Listing Market Participant Id: Nyse (N)"
  end
  if value == "P" then
    return "Primary Listing Market Participant Id: Nyse Arca (P)"
  end
  if value == "T" then
    return "Primary Listing Market Participant Id: Nasdaq (T)"
  end
  if value == "U" then
    return "Primary Listing Market Participant Id: Memx (U)"
  end
  if value == "V" then
    return "Primary Listing Market Participant Id: Iex (V)"
  end
  if value == "W" then
    return "Primary Listing Market Participant Id: Cbsx (W)"
  end
  if value == "X" then
    return "Primary Listing Market Participant Id: Nasdaq Psx (X)"
  end
  if value == "Y" then
    return "Primary Listing Market Participant Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "Primary Listing Market Participant Id: Cboe Bzx (Z)"
  end

  return "Primary Listing Market Participant Id: Unknown("..value..")"
end

-- Dissect: Primary Listing Market Participant Id
siac_cqs_snapshot_cta_v1_0_dissect.primary_listing_market_participant_id = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.primary_listing_market_participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.primary_listing_market_participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.primary_listing_market_participant_id, range, value, display)

  return offset + length, value
end

-- Size: National Bbo Luld Indicator
siac_cqs_snapshot_cta_v1_0_size_of.national_bbo_luld_indicator = 1

-- Display: National Bbo Luld Indicator
siac_cqs_snapshot_cta_v1_0_display.national_bbo_luld_indicator = function(value)
  if value == " " then
    return "National Bbo Luld Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "National Bbo Luld Indicator: National Best Bid And Or National Best Offer Are Executable (A)"
  end
  if value == "B" then
    return "National Bbo Luld Indicator: National Best Bid Below Lower Limit Price Band And Is Non Executable (B)"
  end
  if value == "C" then
    return "National Bbo Luld Indicator: National Best Offer Above Upper Limit Price Band And Is Non Executable (C)"
  end
  if value == "D" then
    return "National Bbo Luld Indicator: National Best Bid Below Lower Limit Price Band And National Best Offer Above Upper Limit Price Band Both Are Non Executable (D)"
  end
  if value == "E" then
    return "National Bbo Luld Indicator: National Best Bid Equals Upper Limit Price Band And Is In Limit State (E)"
  end
  if value == "F" then
    return "National Bbo Luld Indicator: National Best Offer Equals Lower Limit Price Band And Is In Limit State (F)"
  end
  if value == "G" then
    return "National Bbo Luld Indicator: National Best Bid Equals Upper Limit Price Band And Is In Limit State And National Best Offer Above Upper Limit Price Band And Is Non Executable (G)"
  end
  if value == "H" then
    return "National Bbo Luld Indicator: National Best Bid Below Lower Limit Price Band And Is Non Executable And National Best Offer Equals Lower Limit Price Band And Is In Limit State (H)"
  end
  if value == "I" then
    return "National Bbo Luld Indicator: National Best Bid Equals Upper Limit Price Band And National Best Offer Equals Lower Limit Price Band (I)"
  end

  return "National Bbo Luld Indicator: Unknown("..value..")"
end

-- Dissect: National Bbo Luld Indicator
siac_cqs_snapshot_cta_v1_0_dissect.national_bbo_luld_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.national_bbo_luld_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.national_bbo_luld_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.national_bbo_luld_indicator, range, value, display)

  return offset + length, value
end

-- Size: National Best Offer Size
siac_cqs_snapshot_cta_v1_0_size_of.national_best_offer_size = 4

-- Display: National Best Offer Size
siac_cqs_snapshot_cta_v1_0_display.national_best_offer_size = function(value)
  return "National Best Offer Size: "..value
end

-- Dissect: National Best Offer Size
siac_cqs_snapshot_cta_v1_0_dissect.national_best_offer_size = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.national_best_offer_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.national_best_offer_size(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_size, range, value, display)

  return offset + length, value
end

-- Size: National Best Offer Price
siac_cqs_snapshot_cta_v1_0_size_of.national_best_offer_price = 8

-- Display: National Best Offer Price
siac_cqs_snapshot_cta_v1_0_display.national_best_offer_price = function(value)
  return "National Best Offer Price: "..value
end

-- Translate: National Best Offer Price
translate.national_best_offer_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Offer Price
siac_cqs_snapshot_cta_v1_0_dissect.national_best_offer_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.national_best_offer_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.national_best_offer_price(raw)
  local display = siac_cqs_snapshot_cta_v1_0_display.national_best_offer_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_price, range, value, display)

  return offset + length, value
end

-- Size: National Best Offer Quote Condition
siac_cqs_snapshot_cta_v1_0_size_of.national_best_offer_quote_condition = 1

-- Display: National Best Offer Quote Condition
siac_cqs_snapshot_cta_v1_0_display.national_best_offer_quote_condition = function(value)
  if value == " " then
    return "National Best Offer Quote Condition: Quote Condition Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "National Best Offer Quote Condition: Slow Quote On Offer Side (A)"
  end
  if value == "B" then
    return "National Best Offer Quote Condition: Slow Quote On Bid Side (B)"
  end
  if value == "C" then
    return "National Best Offer Quote Condition: Closing (C)"
  end
  if value == "E" then
    return "National Best Offer Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Bid Side (E)"
  end
  if value == "F" then
    return "National Best Offer Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Offer Side (F)"
  end
  if value == "H" then
    return "National Best Offer Quote Condition: Slow Quote On The Bid And Offer Sides (H)"
  end
  if value == "L" then
    return "National Best Offer Quote Condition: Closed Market Maker (L)"
  end
  if value == "N" then
    return "National Best Offer Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "National Best Offer Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "National Best Offer Quote Condition: Regular Finra Open (R)"
  end
  if value == "U" then
    return "National Best Offer Quote Condition: Slow Quote Due To Liquidity Replenishment Point Or Gap Quote On Both The Bid And Offer Sides (U)"
  end
  if value == "W" then
    return "National Best Offer Quote Condition: Slow Quote Due To Set Slow List On Both The Bid And Offer Sides (W)"
  end
  if value == "4" then
    return "National Best Offer Quote Condition: On Demand Intra Day Auction (4)"
  end

  return "National Best Offer Quote Condition: Unknown("..value..")"
end

-- Dissect: National Best Offer Quote Condition
siac_cqs_snapshot_cta_v1_0_dissect.national_best_offer_quote_condition = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.national_best_offer_quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.national_best_offer_quote_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_quote_condition, range, value, display)

  return offset + length, value
end

-- Size: National Best Offer Participant Id
siac_cqs_snapshot_cta_v1_0_size_of.national_best_offer_participant_id = 1

-- Display: National Best Offer Participant Id
siac_cqs_snapshot_cta_v1_0_display.national_best_offer_participant_id = function(value)
  if value == "A" then
    return "National Best Offer Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "National Best Offer Participant Id: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "National Best Offer Participant Id: Nyse National (C)"
  end
  if value == "D" then
    return "National Best Offer Participant Id: Adf (D)"
  end
  if value == "H" then
    return "National Best Offer Participant Id: Miax (H)"
  end
  if value == "I" then
    return "National Best Offer Participant Id: Ise (I)"
  end
  if value == "J" then
    return "National Best Offer Participant Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "National Best Offer Participant Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "National Best Offer Participant Id: Ltse (L)"
  end
  if value == "M" then
    return "National Best Offer Participant Id: Nyse Chicago (M)"
  end
  if value == "N" then
    return "National Best Offer Participant Id: Nyse (N)"
  end
  if value == "P" then
    return "National Best Offer Participant Id: Nyse Arca (P)"
  end
  if value == "S" then
    return "National Best Offer Participant Id: Cqs (S)"
  end
  if value == "T" then
    return "National Best Offer Participant Id: Nasdaq (T)"
  end
  if value == "U" then
    return "National Best Offer Participant Id: Memx (U)"
  end
  if value == "V" then
    return "National Best Offer Participant Id: Iex (V)"
  end
  if value == "W" then
    return "National Best Offer Participant Id: Cbsx (W)"
  end
  if value == "X" then
    return "National Best Offer Participant Id: Nasdaq Psx (X)"
  end
  if value == "Y" then
    return "National Best Offer Participant Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "National Best Offer Participant Id: Cboe Bzx (Z)"
  end

  return "National Best Offer Participant Id: Unknown("..value..")"
end

-- Dissect: National Best Offer Participant Id
siac_cqs_snapshot_cta_v1_0_dissect.national_best_offer_participant_id = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.national_best_offer_participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.national_best_offer_participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_participant_id, range, value, display)

  return offset + length, value
end

-- Size: National Best Bid Size
siac_cqs_snapshot_cta_v1_0_size_of.national_best_bid_size = 4

-- Display: National Best Bid Size
siac_cqs_snapshot_cta_v1_0_display.national_best_bid_size = function(value)
  return "National Best Bid Size: "..value
end

-- Dissect: National Best Bid Size
siac_cqs_snapshot_cta_v1_0_dissect.national_best_bid_size = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.national_best_bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.national_best_bid_size(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_size, range, value, display)

  return offset + length, value
end

-- Size: National Best Bid Price
siac_cqs_snapshot_cta_v1_0_size_of.national_best_bid_price = 8

-- Display: National Best Bid Price
siac_cqs_snapshot_cta_v1_0_display.national_best_bid_price = function(value)
  return "National Best Bid Price: "..value
end

-- Translate: National Best Bid Price
translate.national_best_bid_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Bid Price
siac_cqs_snapshot_cta_v1_0_dissect.national_best_bid_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.national_best_bid_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.national_best_bid_price(raw)
  local display = siac_cqs_snapshot_cta_v1_0_display.national_best_bid_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_price, range, value, display)

  return offset + length, value
end

-- Size: National Best Bid Quote Condition
siac_cqs_snapshot_cta_v1_0_size_of.national_best_bid_quote_condition = 1

-- Display: National Best Bid Quote Condition
siac_cqs_snapshot_cta_v1_0_display.national_best_bid_quote_condition = function(value)
  if value == " " then
    return "National Best Bid Quote Condition: Quote Condition Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "National Best Bid Quote Condition: Slow Quote On Offer Side (A)"
  end
  if value == "B" then
    return "National Best Bid Quote Condition: Slow Quote On Bid Side (B)"
  end
  if value == "C" then
    return "National Best Bid Quote Condition: Closing (C)"
  end
  if value == "E" then
    return "National Best Bid Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Bid Side (E)"
  end
  if value == "F" then
    return "National Best Bid Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Offer Side (F)"
  end
  if value == "H" then
    return "National Best Bid Quote Condition: Slow Quote On The Bid And Offer Sides (H)"
  end
  if value == "L" then
    return "National Best Bid Quote Condition: Closed Market Maker (L)"
  end
  if value == "N" then
    return "National Best Bid Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "National Best Bid Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "National Best Bid Quote Condition: Regular Finra Open (R)"
  end
  if value == "U" then
    return "National Best Bid Quote Condition: Slow Quote Due To Liquidity Replenishment Point Or Gap Quote On Both The Bid And Offer Sides (U)"
  end
  if value == "W" then
    return "National Best Bid Quote Condition: Slow Quote Due To Set Slow List On Both The Bid And Offer Sides (W)"
  end
  if value == "4" then
    return "National Best Bid Quote Condition: On Demand Intra Day Auction (4)"
  end

  return "National Best Bid Quote Condition: Unknown("..value..")"
end

-- Dissect: National Best Bid Quote Condition
siac_cqs_snapshot_cta_v1_0_dissect.national_best_bid_quote_condition = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.national_best_bid_quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.national_best_bid_quote_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_quote_condition, range, value, display)

  return offset + length, value
end

-- Size: National Best Bid Participant Id
siac_cqs_snapshot_cta_v1_0_size_of.national_best_bid_participant_id = 1

-- Display: National Best Bid Participant Id
siac_cqs_snapshot_cta_v1_0_display.national_best_bid_participant_id = function(value)
  if value == "A" then
    return "National Best Bid Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "National Best Bid Participant Id: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "National Best Bid Participant Id: Nyse National (C)"
  end
  if value == "D" then
    return "National Best Bid Participant Id: Adf (D)"
  end
  if value == "H" then
    return "National Best Bid Participant Id: Miax (H)"
  end
  if value == "I" then
    return "National Best Bid Participant Id: Ise (I)"
  end
  if value == "J" then
    return "National Best Bid Participant Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "National Best Bid Participant Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "National Best Bid Participant Id: Ltse (L)"
  end
  if value == "M" then
    return "National Best Bid Participant Id: Nyse Chicago (M)"
  end
  if value == "N" then
    return "National Best Bid Participant Id: Nyse (N)"
  end
  if value == "P" then
    return "National Best Bid Participant Id: Nyse Arca (P)"
  end
  if value == "S" then
    return "National Best Bid Participant Id: Cqs (S)"
  end
  if value == "T" then
    return "National Best Bid Participant Id: Nasdaq (T)"
  end
  if value == "U" then
    return "National Best Bid Participant Id: Memx (U)"
  end
  if value == "V" then
    return "National Best Bid Participant Id: Iex (V)"
  end
  if value == "W" then
    return "National Best Bid Participant Id: Cbsx (W)"
  end
  if value == "X" then
    return "National Best Bid Participant Id: Nasdaq Psx (X)"
  end
  if value == "Y" then
    return "National Best Bid Participant Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "National Best Bid Participant Id: Cboe Bzx (Z)"
  end

  return "National Best Bid Participant Id: Unknown("..value..")"
end

-- Dissect: National Best Bid Participant Id
siac_cqs_snapshot_cta_v1_0_dissect.national_best_bid_participant_id = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.national_best_bid_participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.national_best_bid_participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_participant_id, range, value, display)

  return offset + length, value
end

-- Size: Number Of Extensions
siac_cqs_snapshot_cta_v1_0_size_of.number_of_extensions = 1

-- Display: Number Of Extensions
siac_cqs_snapshot_cta_v1_0_display.number_of_extensions = function(value)
  return "Number Of Extensions: "..value
end

-- Dissect: Number Of Extensions
siac_cqs_snapshot_cta_v1_0_dissect.number_of_extensions = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.number_of_extensions
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.number_of_extensions(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.number_of_extensions, range, value, display)

  return offset + length, value
end

-- Size: Auction Collar Lower Threshold Price
siac_cqs_snapshot_cta_v1_0_size_of.auction_collar_lower_threshold_price = 8

-- Display: Auction Collar Lower Threshold Price
siac_cqs_snapshot_cta_v1_0_display.auction_collar_lower_threshold_price = function(value)
  return "Auction Collar Lower Threshold Price: "..value
end

-- Translate: Auction Collar Lower Threshold Price
translate.auction_collar_lower_threshold_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Lower Threshold Price
siac_cqs_snapshot_cta_v1_0_dissect.auction_collar_lower_threshold_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.auction_collar_lower_threshold_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.auction_collar_lower_threshold_price(raw)
  local display = siac_cqs_snapshot_cta_v1_0_display.auction_collar_lower_threshold_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.auction_collar_lower_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Auction Collar Upper Threshold Price
siac_cqs_snapshot_cta_v1_0_size_of.auction_collar_upper_threshold_price = 8

-- Display: Auction Collar Upper Threshold Price
siac_cqs_snapshot_cta_v1_0_display.auction_collar_upper_threshold_price = function(value)
  return "Auction Collar Upper Threshold Price: "..value
end

-- Translate: Auction Collar Upper Threshold Price
translate.auction_collar_upper_threshold_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Upper Threshold Price
siac_cqs_snapshot_cta_v1_0_dissect.auction_collar_upper_threshold_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.auction_collar_upper_threshold_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.auction_collar_upper_threshold_price(raw)
  local display = siac_cqs_snapshot_cta_v1_0_display.auction_collar_upper_threshold_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.auction_collar_upper_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Auction Collar Reference Price
siac_cqs_snapshot_cta_v1_0_size_of.auction_collar_reference_price = 8

-- Display: Auction Collar Reference Price
siac_cqs_snapshot_cta_v1_0_display.auction_collar_reference_price = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
translate.auction_collar_reference_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Reference Price
siac_cqs_snapshot_cta_v1_0_dissect.auction_collar_reference_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.auction_collar_reference_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.auction_collar_reference_price(raw)
  local display = siac_cqs_snapshot_cta_v1_0_display.auction_collar_reference_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Size: Upper Limit Price Band
siac_cqs_snapshot_cta_v1_0_size_of.upper_limit_price_band = 8

-- Display: Upper Limit Price Band
siac_cqs_snapshot_cta_v1_0_display.upper_limit_price_band = function(value)
  return "Upper Limit Price Band: "..value
end

-- Translate: Upper Limit Price Band
translate.upper_limit_price_band = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Upper Limit Price Band
siac_cqs_snapshot_cta_v1_0_dissect.upper_limit_price_band = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.upper_limit_price_band
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.upper_limit_price_band(raw)
  local display = siac_cqs_snapshot_cta_v1_0_display.upper_limit_price_band(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.upper_limit_price_band, range, value, display)

  return offset + length, value
end

-- Size: Lower Limit Price Band
siac_cqs_snapshot_cta_v1_0_size_of.lower_limit_price_band = 8

-- Display: Lower Limit Price Band
siac_cqs_snapshot_cta_v1_0_display.lower_limit_price_band = function(value)
  return "Lower Limit Price Band: "..value
end

-- Translate: Lower Limit Price Band
translate.lower_limit_price_band = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Lower Limit Price Band
siac_cqs_snapshot_cta_v1_0_dissect.lower_limit_price_band = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.lower_limit_price_band
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.lower_limit_price_band(raw)
  local display = siac_cqs_snapshot_cta_v1_0_display.lower_limit_price_band(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.lower_limit_price_band, range, value, display)

  return offset + length, value
end

-- Size: Instrument Type
siac_cqs_snapshot_cta_v1_0_size_of.instrument_type = 1

-- Display: Instrument Type
siac_cqs_snapshot_cta_v1_0_display.instrument_type = function(value)
  if value == "0" then
    return "Instrument Type: Cta Eligible Equity (0)"
  end
  if value == "1" then
    return "Instrument Type: Local Issue (1)"
  end
  if value == "2" then
    return "Instrument Type: Corporate Bond (2)"
  end
  if value == "3" then
    return "Instrument Type: Government Bond (3)"
  end

  return "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
siac_cqs_snapshot_cta_v1_0_dissect.instrument_type = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.instrument_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.instrument_type(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Consolidated Snapshot Message
siac_cqs_snapshot_cta_v1_0_size_of.consolidated_snapshot_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Consolidated Snapshot Message
siac_cqs_snapshot_cta_v1_0_display.consolidated_snapshot_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Snapshot Message
siac_cqs_snapshot_cta_v1_0_dissect.consolidated_snapshot_message_fields = function(buffer, offset, packet, parent, size_of_consolidated_snapshot_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_snapshot_cta_v1_0_dissect.participant_id(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cqs_snapshot_cta_v1_0_dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cqs_snapshot_cta_v1_0_dissect.instrument_type(buffer, index, packet, parent)

  -- Lower Limit Price Band: 8 Byte Unsigned Fixed Width Integer
  index, lower_limit_price_band = siac_cqs_snapshot_cta_v1_0_dissect.lower_limit_price_band(buffer, index, packet, parent)

  -- Upper Limit Price Band: 8 Byte Unsigned Fixed Width Integer
  index, upper_limit_price_band = siac_cqs_snapshot_cta_v1_0_dissect.upper_limit_price_band(buffer, index, packet, parent)

  -- Auction Collar Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_collar_reference_price = siac_cqs_snapshot_cta_v1_0_dissect.auction_collar_reference_price(buffer, index, packet, parent)

  -- Auction Collar Upper Threshold Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_collar_upper_threshold_price = siac_cqs_snapshot_cta_v1_0_dissect.auction_collar_upper_threshold_price(buffer, index, packet, parent)

  -- Auction Collar Lower Threshold Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_collar_lower_threshold_price = siac_cqs_snapshot_cta_v1_0_dissect.auction_collar_lower_threshold_price(buffer, index, packet, parent)

  -- Number Of Extensions: 1 Byte Unsigned Fixed Width Integer
  index, number_of_extensions = siac_cqs_snapshot_cta_v1_0_dissect.number_of_extensions(buffer, index, packet, parent)

  -- National Best Bid Participant Id: 1 Byte Ascii String Enum with 20 values
  index, national_best_bid_participant_id = siac_cqs_snapshot_cta_v1_0_dissect.national_best_bid_participant_id(buffer, index, packet, parent)

  -- National Best Bid Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, national_best_bid_quote_condition = siac_cqs_snapshot_cta_v1_0_dissect.national_best_bid_quote_condition(buffer, index, packet, parent)

  -- National Best Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, national_best_bid_price = siac_cqs_snapshot_cta_v1_0_dissect.national_best_bid_price(buffer, index, packet, parent)

  -- National Best Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, national_best_bid_size = siac_cqs_snapshot_cta_v1_0_dissect.national_best_bid_size(buffer, index, packet, parent)

  -- Finra Best Bid Market Maker Id: 4 Byte Ascii String
  index, finra_best_bid_market_maker_id = siac_cqs_snapshot_cta_v1_0_dissect.finra_best_bid_market_maker_id(buffer, index, packet, parent)

  -- National Best Offer Participant Id: 1 Byte Ascii String Enum with 20 values
  index, national_best_offer_participant_id = siac_cqs_snapshot_cta_v1_0_dissect.national_best_offer_participant_id(buffer, index, packet, parent)

  -- National Best Offer Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, national_best_offer_quote_condition = siac_cqs_snapshot_cta_v1_0_dissect.national_best_offer_quote_condition(buffer, index, packet, parent)

  -- National Best Offer Price: 8 Byte Unsigned Fixed Width Integer
  index, national_best_offer_price = siac_cqs_snapshot_cta_v1_0_dissect.national_best_offer_price(buffer, index, packet, parent)

  -- National Best Offer Size: 4 Byte Unsigned Fixed Width Integer
  index, national_best_offer_size = siac_cqs_snapshot_cta_v1_0_dissect.national_best_offer_size(buffer, index, packet, parent)

  -- Finra Best Offer Market Maker Id: 4 Byte Ascii String
  index, finra_best_offer_market_maker_id = siac_cqs_snapshot_cta_v1_0_dissect.finra_best_offer_market_maker_id(buffer, index, packet, parent)

  -- National Bbo Luld Indicator: 1 Byte Ascii String Enum with 10 values
  index, national_bbo_luld_indicator = siac_cqs_snapshot_cta_v1_0_dissect.national_bbo_luld_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 20 values
  index, primary_listing_market_participant_id = siac_cqs_snapshot_cta_v1_0_dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = siac_cqs_snapshot_cta_v1_0_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = siac_cqs_snapshot_cta_v1_0_dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Halt Reason: 1 Byte Ascii String Enum with 17 values
  index, halt_reason = siac_cqs_snapshot_cta_v1_0_dissect.halt_reason(buffer, index, packet, parent)

  -- Future: 1 Byte Ascii String
  index, future = siac_cqs_snapshot_cta_v1_0_dissect.future(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Snapshot Message
siac_cqs_snapshot_cta_v1_0_dissect.consolidated_snapshot_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_consolidated_snapshot_message = siac_cqs_snapshot_cta_v1_0_size_of.consolidated_snapshot_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.consolidated_snapshot_message then
    local range = buffer(offset, size_of_consolidated_snapshot_message)
    local display = siac_cqs_snapshot_cta_v1_0_display.consolidated_snapshot_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_snapshot_cta_v1_0.fields.consolidated_snapshot_message, range, display)
  end

  siac_cqs_snapshot_cta_v1_0_dissect.consolidated_snapshot_message_fields(buffer, offset, packet, parent, size_of_consolidated_snapshot_message)

  return offset + size_of_consolidated_snapshot_message
end

-- Size: Reserved
siac_cqs_snapshot_cta_v1_0_size_of.reserved = 1

-- Display: Reserved
siac_cqs_snapshot_cta_v1_0_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
siac_cqs_snapshot_cta_v1_0_dissect.reserved = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.reserved
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.reserved(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Mwcb Level 3
siac_cqs_snapshot_cta_v1_0_size_of.mwcb_level_3 = 8

-- Display: Mwcb Level 3
siac_cqs_snapshot_cta_v1_0_display.mwcb_level_3 = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
siac_cqs_snapshot_cta_v1_0_dissect.mwcb_level_3 = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.mwcb_level_3
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_snapshot_cta_v1_0_display.mwcb_level_3(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- Size: Mwcb Level 2
siac_cqs_snapshot_cta_v1_0_size_of.mwcb_level_2 = 8

-- Display: Mwcb Level 2
siac_cqs_snapshot_cta_v1_0_display.mwcb_level_2 = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
siac_cqs_snapshot_cta_v1_0_dissect.mwcb_level_2 = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.mwcb_level_2
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_snapshot_cta_v1_0_display.mwcb_level_2(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Market Wide Circuit Breaker Decline Level Status Snapshot Message
siac_cqs_snapshot_cta_v1_0_size_of.market_wide_circuit_breaker_decline_level_status_snapshot_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Market Wide Circuit Breaker Decline Level Status Snapshot Message
siac_cqs_snapshot_cta_v1_0_display.market_wide_circuit_breaker_decline_level_status_snapshot_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Status Snapshot Message
siac_cqs_snapshot_cta_v1_0_dissect.market_wide_circuit_breaker_decline_level_status_snapshot_message_fields = function(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_status_snapshot_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_snapshot_cta_v1_0_dissect.participant_id(buffer, index, packet, parent)

  -- Mwcb Level 1
  index, mwcb_level_1 = siac_cqs_snapshot_cta_v1_0_dissect.mwcb_level_1(buffer, index, packet, parent)

  -- Mwcb Level 2: 8 Byte Signed Fixed Width Integer
  index, mwcb_level_2 = siac_cqs_snapshot_cta_v1_0_dissect.mwcb_level_2(buffer, index, packet, parent)

  -- Mwcb Level 3: 8 Byte Signed Fixed Width Integer
  index, mwcb_level_3 = siac_cqs_snapshot_cta_v1_0_dissect.mwcb_level_3(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = siac_cqs_snapshot_cta_v1_0_dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Status Snapshot Message
siac_cqs_snapshot_cta_v1_0_dissect.market_wide_circuit_breaker_decline_level_status_snapshot_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_wide_circuit_breaker_decline_level_status_snapshot_message = siac_cqs_snapshot_cta_v1_0_size_of.market_wide_circuit_breaker_decline_level_status_snapshot_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_wide_circuit_breaker_decline_level_status_snapshot_message then
    local range = buffer(offset, size_of_market_wide_circuit_breaker_decline_level_status_snapshot_message)
    local display = siac_cqs_snapshot_cta_v1_0_display.market_wide_circuit_breaker_decline_level_status_snapshot_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_snapshot_cta_v1_0.fields.market_wide_circuit_breaker_decline_level_status_snapshot_message, range, display)
  end

  siac_cqs_snapshot_cta_v1_0_dissect.market_wide_circuit_breaker_decline_level_status_snapshot_message_fields(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_status_snapshot_message)

  return offset + size_of_market_wide_circuit_breaker_decline_level_status_snapshot_message
end

-- Read runtime size of: Line Integrity Message
siac_cqs_snapshot_cta_v1_0_size_of.line_integrity_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Line Integrity Message
siac_cqs_snapshot_cta_v1_0_display.line_integrity_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Line Integrity Message
siac_cqs_snapshot_cta_v1_0_dissect.line_integrity_message_fields = function(buffer, offset, packet, parent, size_of_line_integrity_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_snapshot_cta_v1_0_dissect.participant_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Line Integrity Message
siac_cqs_snapshot_cta_v1_0_dissect.line_integrity_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_line_integrity_message = siac_cqs_snapshot_cta_v1_0_size_of.line_integrity_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.line_integrity_message then
    local range = buffer(offset, size_of_line_integrity_message)
    local display = siac_cqs_snapshot_cta_v1_0_display.line_integrity_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_snapshot_cta_v1_0.fields.line_integrity_message, range, display)
  end

  siac_cqs_snapshot_cta_v1_0_dissect.line_integrity_message_fields(buffer, offset, packet, parent, size_of_line_integrity_message)

  return offset + size_of_line_integrity_message
end

-- Calculate runtime size of: Snapshot Payload
siac_cqs_snapshot_cta_v1_0_size_of.snapshot_payload = function(buffer, offset, snapshot_message_type)
  -- Size of Line Integrity Message
  if snapshot_message_type == "T" then
    return siac_cqs_snapshot_cta_v1_0_size_of.line_integrity_message(buffer, offset)
  end
  -- Size of Market Wide Circuit Breaker Decline Level Status Snapshot Message
  if snapshot_message_type == "K" then
    return siac_cqs_snapshot_cta_v1_0_size_of.market_wide_circuit_breaker_decline_level_status_snapshot_message(buffer, offset)
  end
  -- Size of Consolidated Snapshot Message
  if snapshot_message_type == "C" then
    return siac_cqs_snapshot_cta_v1_0_size_of.consolidated_snapshot_message(buffer, offset)
  end
  -- Size of Participant Snapshot Message
  if snapshot_message_type == "P" then
    return siac_cqs_snapshot_cta_v1_0_size_of.participant_snapshot_message(buffer, offset)
  end
  -- Size of Finra Snapshot Message
  if snapshot_message_type == "F" then
    return siac_cqs_snapshot_cta_v1_0_size_of.finra_snapshot_message(buffer, offset)
  end

  return 0
end

-- Display: Snapshot Payload
siac_cqs_snapshot_cta_v1_0_display.snapshot_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Snapshot Payload
siac_cqs_snapshot_cta_v1_0_dissect.snapshot_payload_branches = function(buffer, offset, packet, parent, snapshot_message_type)
  -- Dissect Line Integrity Message
  if snapshot_message_type == "T" then
    return siac_cqs_snapshot_cta_v1_0_dissect.line_integrity_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Decline Level Status Snapshot Message
  if snapshot_message_type == "K" then
    return siac_cqs_snapshot_cta_v1_0_dissect.market_wide_circuit_breaker_decline_level_status_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Snapshot Message
  if snapshot_message_type == "C" then
    return siac_cqs_snapshot_cta_v1_0_dissect.consolidated_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect Participant Snapshot Message
  if snapshot_message_type == "P" then
    return siac_cqs_snapshot_cta_v1_0_dissect.participant_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect Finra Snapshot Message
  if snapshot_message_type == "F" then
    return siac_cqs_snapshot_cta_v1_0_dissect.finra_snapshot_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Snapshot Payload
siac_cqs_snapshot_cta_v1_0_dissect.snapshot_payload = function(buffer, offset, packet, parent, snapshot_message_type)
  if not show.snapshot_payload then
    return siac_cqs_snapshot_cta_v1_0_dissect.snapshot_payload_branches(buffer, offset, packet, parent, snapshot_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cqs_snapshot_cta_v1_0_size_of.snapshot_payload(buffer, offset, snapshot_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cqs_snapshot_cta_v1_0_display.snapshot_payload(buffer, packet, parent)
  local element = parent:add(siac_cqs_snapshot_cta_v1_0.fields.snapshot_payload, range, display)

  return siac_cqs_snapshot_cta_v1_0_dissect.snapshot_payload_branches(buffer, offset, packet, parent, snapshot_message_type)
end

-- Size: Snapshot Message Type
siac_cqs_snapshot_cta_v1_0_size_of.snapshot_message_type = 1

-- Display: Snapshot Message Type
siac_cqs_snapshot_cta_v1_0_display.snapshot_message_type = function(value)
  if value == "T" then
    return "Snapshot Message Type: Line Integrity Message (T)"
  end
  if value == "K" then
    return "Snapshot Message Type: Market Wide Circuit Breaker Decline Level Status Snapshot Message (K)"
  end
  if value == "C" then
    return "Snapshot Message Type: Consolidated Snapshot Message (C)"
  end
  if value == "P" then
    return "Snapshot Message Type: Participant Snapshot Message (P)"
  end
  if value == "F" then
    return "Snapshot Message Type: Finra Snapshot Message (F)"
  end

  return "Snapshot Message Type: Unknown("..value..")"
end

-- Dissect: Snapshot Message Type
siac_cqs_snapshot_cta_v1_0_dissect.snapshot_message_type = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.snapshot_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.snapshot_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.snapshot_message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Snapshot
siac_cqs_snapshot_cta_v1_0_size_of.snapshot = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  return message_length - 3
end

-- Display: Snapshot
siac_cqs_snapshot_cta_v1_0_display.snapshot = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot
siac_cqs_snapshot_cta_v1_0_dissect.snapshot_fields = function(buffer, offset, packet, parent, size_of_snapshot)
  local index = offset

  -- Snapshot Message Type: 1 Byte Ascii String Enum with 5 values
  index, snapshot_message_type = siac_cqs_snapshot_cta_v1_0_dissect.snapshot_message_type(buffer, index, packet, parent)

  -- Snapshot Payload: Runtime Type with 5 branches
  index = siac_cqs_snapshot_cta_v1_0_dissect.snapshot_payload(buffer, index, packet, parent, snapshot_message_type)

  return index
end

-- Dissect: Snapshot
siac_cqs_snapshot_cta_v1_0_dissect.snapshot = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_snapshot = siac_cqs_snapshot_cta_v1_0_size_of.snapshot(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.snapshot then
    local range = buffer(offset, size_of_snapshot)
    local display = siac_cqs_snapshot_cta_v1_0_display.snapshot(buffer, packet, parent)
    parent = parent:add(siac_cqs_snapshot_cta_v1_0.fields.snapshot, range, display)
  end

  siac_cqs_snapshot_cta_v1_0_dissect.snapshot_fields(buffer, offset, packet, parent, size_of_snapshot)

  return offset + size_of_snapshot
end

-- Calculate runtime size of: Payload
siac_cqs_snapshot_cta_v1_0_size_of.payload = function(buffer, offset, message_category)
  -- Size of Snapshot
  if message_category == "K" then
    return siac_cqs_snapshot_cta_v1_0_size_of.snapshot(buffer, offset)
  end

  return 0
end

-- Display: Payload
siac_cqs_snapshot_cta_v1_0_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
siac_cqs_snapshot_cta_v1_0_dissect.payload_branches = function(buffer, offset, packet, parent, message_category)
  -- Dissect Snapshot
  if message_category == "K" then
    return siac_cqs_snapshot_cta_v1_0_dissect.snapshot(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
siac_cqs_snapshot_cta_v1_0_dissect.payload = function(buffer, offset, packet, parent, message_category)
  if not show.payload then
    return siac_cqs_snapshot_cta_v1_0_dissect.payload_branches(buffer, offset, packet, parent, message_category)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cqs_snapshot_cta_v1_0_size_of.payload(buffer, offset, message_category)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cqs_snapshot_cta_v1_0_display.payload(buffer, packet, parent)
  local element = parent:add(siac_cqs_snapshot_cta_v1_0.fields.payload, range, display)

  return siac_cqs_snapshot_cta_v1_0_dissect.payload_branches(buffer, offset, packet, parent, message_category)
end

-- Size: Message Category
siac_cqs_snapshot_cta_v1_0_size_of.message_category = 1

-- Display: Message Category
siac_cqs_snapshot_cta_v1_0_display.message_category = function(value)
  if value == "K" then
    return "Message Category: Snapshot (K)"
  end

  return "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
siac_cqs_snapshot_cta_v1_0_dissect.message_category = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.message_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.message_category(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.message_category, range, value, display)

  return offset + length, value
end

-- Size: Message Length
siac_cqs_snapshot_cta_v1_0_size_of.message_length = 2

-- Display: Message Length
siac_cqs_snapshot_cta_v1_0_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
siac_cqs_snapshot_cta_v1_0_dissect.message_length = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.message_length(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
siac_cqs_snapshot_cta_v1_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_snapshot_cta_v1_0_size_of.message_length

  index = index + siac_cqs_snapshot_cta_v1_0_size_of.message_category

  return index
end

-- Display: Message Header
siac_cqs_snapshot_cta_v1_0_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
siac_cqs_snapshot_cta_v1_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = siac_cqs_snapshot_cta_v1_0_dissect.message_length(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String Enum with 1 values
  index, message_category = siac_cqs_snapshot_cta_v1_0_dissect.message_category(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
siac_cqs_snapshot_cta_v1_0_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(siac_cqs_snapshot_cta_v1_0.fields.message_header, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v1_0_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v1_0_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v1_0_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
siac_cqs_snapshot_cta_v1_0_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
siac_cqs_snapshot_cta_v1_0_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = siac_cqs_snapshot_cta_v1_0_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 1 branches
  index = siac_cqs_snapshot_cta_v1_0_dissect.payload(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
siac_cqs_snapshot_cta_v1_0_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = siac_cqs_snapshot_cta_v1_0_display.message(buffer, packet, parent)
    parent = parent:add(siac_cqs_snapshot_cta_v1_0.fields.message, range, display)
  end

  siac_cqs_snapshot_cta_v1_0_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Block Checksum
siac_cqs_snapshot_cta_v1_0_size_of.block_checksum = 2

-- Display: Block Checksum
siac_cqs_snapshot_cta_v1_0_display.block_checksum = function(value)
  return "Block Checksum: "..value
end

-- Dissect: Block Checksum
siac_cqs_snapshot_cta_v1_0_dissect.block_checksum = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.block_checksum
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.block_checksum(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.block_checksum, range, value, display)

  return offset + length, value
end

-- Size: Nanoseconds
siac_cqs_snapshot_cta_v1_0_size_of.nanoseconds = 4

-- Display: Nanoseconds
siac_cqs_snapshot_cta_v1_0_display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
siac_cqs_snapshot_cta_v1_0_dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Size: Seconds
siac_cqs_snapshot_cta_v1_0_size_of.seconds = 4

-- Display: Seconds
siac_cqs_snapshot_cta_v1_0_display.seconds = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
siac_cqs_snapshot_cta_v1_0_dissect.seconds = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.seconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.seconds(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.seconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sip Block Timestamp
siac_cqs_snapshot_cta_v1_0_size_of.sip_block_timestamp = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_snapshot_cta_v1_0_size_of.seconds

  index = index + siac_cqs_snapshot_cta_v1_0_size_of.nanoseconds

  return index
end

-- Display: Sip Block Timestamp
siac_cqs_snapshot_cta_v1_0_display.sip_block_timestamp = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sip Block Timestamp
siac_cqs_snapshot_cta_v1_0_dissect.sip_block_timestamp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = siac_cqs_snapshot_cta_v1_0_dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = siac_cqs_snapshot_cta_v1_0_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Sip Block Timestamp
siac_cqs_snapshot_cta_v1_0_dissect.sip_block_timestamp = function(buffer, offset, packet, parent)
  if show.sip_block_timestamp then
    -- Optionally add element to protocol tree
    parent = parent:add(siac_cqs_snapshot_cta_v1_0.fields.sip_block_timestamp, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v1_0_dissect.sip_block_timestamp_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v1_0_display.sip_block_timestamp(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v1_0_dissect.sip_block_timestamp_fields(buffer, offset, packet, parent)
  end
end

-- Size: Tot Pub Seq Rollover
siac_cqs_snapshot_cta_v1_0_size_of.tot_pub_seq_rollover = 1

-- Display: Tot Pub Seq Rollover
siac_cqs_snapshot_cta_v1_0_display.tot_pub_seq_rollover = function(value)
  return "Tot Pub Seq Rollover: "..value
end

-- Dissect: Tot Pub Seq Rollover
siac_cqs_snapshot_cta_v1_0_dissect.tot_pub_seq_rollover = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.tot_pub_seq_rollover
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.tot_pub_seq_rollover(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.tot_pub_seq_rollover, range, value, display)

  return offset + length, value
end

-- Size: Last Seq Num
siac_cqs_snapshot_cta_v1_0_size_of.last_seq_num = 1

-- Display: Last Seq Num
siac_cqs_snapshot_cta_v1_0_display.last_seq_num = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
siac_cqs_snapshot_cta_v1_0_dissect.last_seq_num = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.last_seq_num
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0_display.last_seq_num(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Delivery Flag
siac_cqs_snapshot_cta_v1_0_size_of.delivery_flag = 1

-- Display: Delivery Flag
siac_cqs_snapshot_cta_v1_0_display.delivery_flag = function(value)
  if value == 1 then
    return "Delivery Flag: First Block Of Snapshot Sequence (1)"
  end
  if value == 2 then
    return "Delivery Flag: Intermediate Block Of Snapshot Sequence (2)"
  end
  if value == 3 then
    return "Delivery Flag: Last Block Of Snapshot Sequence (3)"
  end
  if value == 4 then
    return "Delivery Flag: Only One Block In Snapshot Sequence (4)"
  end

  return "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
siac_cqs_snapshot_cta_v1_0_dissect.delivery_flag = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.delivery_flag
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.delivery_flag(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Size: Messages In Block
siac_cqs_snapshot_cta_v1_0_size_of.messages_in_block = 1

-- Display: Messages In Block
siac_cqs_snapshot_cta_v1_0_display.messages_in_block = function(value)
  return "Messages In Block: "..value
end

-- Dissect: Messages In Block
siac_cqs_snapshot_cta_v1_0_dissect.messages_in_block = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.messages_in_block
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.messages_in_block(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.messages_in_block, range, value, display)

  return offset + length, value
end

-- Size: Block Sequence Number
siac_cqs_snapshot_cta_v1_0_size_of.block_sequence_number = 4

-- Display: Block Sequence Number
siac_cqs_snapshot_cta_v1_0_display.block_sequence_number = function(value)
  return "Block Sequence Number: "..value
end

-- Dissect: Block Sequence Number
siac_cqs_snapshot_cta_v1_0_dissect.block_sequence_number = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.block_sequence_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.block_sequence_number(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.block_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Block Size
siac_cqs_snapshot_cta_v1_0_size_of.block_size = 2

-- Display: Block Size
siac_cqs_snapshot_cta_v1_0_display.block_size = function(value)
  return "Block Size: "..value
end

-- Dissect: Block Size
siac_cqs_snapshot_cta_v1_0_dissect.block_size = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.block_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.block_size(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.block_size, range, value, display)

  return offset + length, value
end

-- Size: Version
siac_cqs_snapshot_cta_v1_0_size_of.version = 1

-- Display: Version
siac_cqs_snapshot_cta_v1_0_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
siac_cqs_snapshot_cta_v1_0_dissect.version = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0_size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0_display.version(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_snapshot_cta_v1_0.fields.version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Block Header
siac_cqs_snapshot_cta_v1_0_size_of.block_header = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_snapshot_cta_v1_0_size_of.version

  index = index + siac_cqs_snapshot_cta_v1_0_size_of.block_size

  index = index + siac_cqs_snapshot_cta_v1_0_size_of.block_sequence_number

  index = index + siac_cqs_snapshot_cta_v1_0_size_of.messages_in_block

  index = index + siac_cqs_snapshot_cta_v1_0_size_of.delivery_flag

  index = index + siac_cqs_snapshot_cta_v1_0_size_of.last_seq_num

  index = index + siac_cqs_snapshot_cta_v1_0_size_of.tot_pub_seq_rollover

  index = index + siac_cqs_snapshot_cta_v1_0_size_of.sip_block_timestamp(buffer, offset + index)

  index = index + siac_cqs_snapshot_cta_v1_0_size_of.block_checksum

  return index
end

-- Display: Block Header
siac_cqs_snapshot_cta_v1_0_display.block_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Header
siac_cqs_snapshot_cta_v1_0_dissect.block_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = siac_cqs_snapshot_cta_v1_0_dissect.version(buffer, index, packet, parent)

  -- Block Size: 2 Byte Unsigned Fixed Width Integer
  index, block_size = siac_cqs_snapshot_cta_v1_0_dissect.block_size(buffer, index, packet, parent)

  -- Block Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, block_sequence_number = siac_cqs_snapshot_cta_v1_0_dissect.block_sequence_number(buffer, index, packet, parent)

  -- Messages In Block: 1 Byte Unsigned Fixed Width Integer
  index, messages_in_block = siac_cqs_snapshot_cta_v1_0_dissect.messages_in_block(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, delivery_flag = siac_cqs_snapshot_cta_v1_0_dissect.delivery_flag(buffer, index, packet, parent)

  -- Last Seq Num: 1 Byte Ascii String
  index, last_seq_num = siac_cqs_snapshot_cta_v1_0_dissect.last_seq_num(buffer, index, packet, parent)

  -- Tot Pub Seq Rollover: 1 Byte Unsigned Fixed Width Integer
  index, tot_pub_seq_rollover = siac_cqs_snapshot_cta_v1_0_dissect.tot_pub_seq_rollover(buffer, index, packet, parent)

  -- Sip Block Timestamp: Struct of 2 fields
  index, sip_block_timestamp = siac_cqs_snapshot_cta_v1_0_dissect.sip_block_timestamp(buffer, index, packet, parent)

  -- Block Checksum: 2 Byte Unsigned Fixed Width Integer
  index, block_checksum = siac_cqs_snapshot_cta_v1_0_dissect.block_checksum(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Header
siac_cqs_snapshot_cta_v1_0_dissect.block_header = function(buffer, offset, packet, parent)
  if show.block_header then
    -- Optionally add element to protocol tree
    parent = parent:add(siac_cqs_snapshot_cta_v1_0.fields.block_header, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v1_0_dissect.block_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v1_0_display.block_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v1_0_dissect.block_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
siac_cqs_snapshot_cta_v1_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Block Header: Struct of 9 fields
  index, block_header = siac_cqs_snapshot_cta_v1_0_dissect.block_header(buffer, index, packet, parent)

  -- Dependency element: Messages In Block
  local messages_in_block = buffer(index - 14, 1):uint()

  -- Message: Struct of 2 fields
  for i = 1, messages_in_block do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Message: Struct of 2 fields
    index = siac_cqs_snapshot_cta_v1_0_dissect.message(buffer, index, packet, parent, message_length)
  end

  -- Runtime optional field exists: Block Pad Byte
  local block_pad_byte_exists = uneven( index )

  -- Runtime optional field: Block Pad Byte
  if block_pad_byte_exists then
    index = siac_cqs_snapshot_cta_v1_0_dissect.block_pad_byte(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function siac_cqs_snapshot_cta_v1_0.init()
end

-- Dissector for Siac Cqs Snapshot Cta 1.0
function siac_cqs_snapshot_cta_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = siac_cqs_snapshot_cta_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(siac_cqs_snapshot_cta_v1_0, buffer(), siac_cqs_snapshot_cta_v1_0.description, "("..buffer:len().." Bytes)")
  return siac_cqs_snapshot_cta_v1_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, siac_cqs_snapshot_cta_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.siac_cqs_snapshot_cta_v1_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Siac Cqs Snapshot Cta 1.0
local function siac_cqs_snapshot_cta_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.siac_cqs_snapshot_cta_v1_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = siac_cqs_snapshot_cta_v1_0
  siac_cqs_snapshot_cta_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Siac Cqs Snapshot Cta 1.0
siac_cqs_snapshot_cta_v1_0:register_heuristic("udp", siac_cqs_snapshot_cta_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Securities Industry Automation Corporation
--   Version: 1.0
--   Date: Monday, January 24, 2022
--   Specification: CQS_Pillar_Snapshot_Specification.pdf
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
