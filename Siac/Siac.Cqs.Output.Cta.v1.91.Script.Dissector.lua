-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Siac Cqs Output Cta 1.91 Protocol
local siac_cqs_output_cta_v1_91 = Proto("Siac.Cqs.Output.Cta.v1.91.Lua", "Siac Cqs Output Cta 1.91")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Siac Cqs Output Cta 1.91 Fields
siac_cqs_output_cta_v1_91.fields.adf_timestamp = ProtoField.new("Adf Timestamp", "siac.cqs.output.cta.v1.91.adftimestamp", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.administrative = ProtoField.new("Administrative", "siac.cqs.output.cta.v1.91.administrative", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "siac.cqs.output.cta.v1.91.administrativemessagetype", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.administrative_payload = ProtoField.new("Administrative Payload", "siac.cqs.output.cta.v1.91.administrativepayload", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.best_bid_participant_id = ProtoField.new("Best Bid Participant Id", "siac.cqs.output.cta.v1.91.bestbidparticipantid", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.best_bid_price_long = ProtoField.new("Best Bid Price Long", "siac.cqs.output.cta.v1.91.bestbidpricelong", ftypes.UINT64)
siac_cqs_output_cta_v1_91.fields.best_bid_quote_condition = ProtoField.new("Best Bid Quote Condition", "siac.cqs.output.cta.v1.91.bestbidquotecondition", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.best_bid_size_long = ProtoField.new("Best Bid Size Long", "siac.cqs.output.cta.v1.91.bestbidsizelong", ftypes.UINT32)
siac_cqs_output_cta_v1_91.fields.bid_price_lower_limit_price_band = ProtoField.new("Bid Price Lower Limit Price Band", "siac.cqs.output.cta.v1.91.bidpricelowerlimitpriceband", ftypes.UINT64)
siac_cqs_output_cta_v1_91.fields.bid_size_long = ProtoField.new("Bid Size Long", "siac.cqs.output.cta.v1.91.bidsizelong", ftypes.UINT32)
siac_cqs_output_cta_v1_91.fields.block_checksum = ProtoField.new("Block Checksum", "siac.cqs.output.cta.v1.91.blockchecksum", ftypes.UINT16)
siac_cqs_output_cta_v1_91.fields.block_header = ProtoField.new("Block Header", "siac.cqs.output.cta.v1.91.blockheader", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.block_sequence_number = ProtoField.new("Block Sequence Number", "siac.cqs.output.cta.v1.91.blocksequencenumber", ftypes.UINT32)
siac_cqs_output_cta_v1_91.fields.block_size = ProtoField.new("Block Size", "siac.cqs.output.cta.v1.91.blocksize", ftypes.UINT16)
siac_cqs_output_cta_v1_91.fields.control = ProtoField.new("Control", "siac.cqs.output.cta.v1.91.control", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.control_message_type = ProtoField.new("Control Message Type", "siac.cqs.output.cta.v1.91.controlmessagetype", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.data_feed_indicator = ProtoField.new("Data Feed Indicator", "siac.cqs.output.cta.v1.91.datafeedindicator", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "siac.cqs.output.cta.v1.91.financialstatusindicator", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.finra_bbo_indicator = ProtoField.new("Finra Bbo Indicator", "siac.cqs.output.cta.v1.91.finrabboindicator", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.finra_best_bid_market_maker_id = ProtoField.new("Finra Best Bid Market Maker Id", "siac.cqs.output.cta.v1.91.finrabestbidmarketmakerid", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.finra_market_maker_id = ProtoField.new("Finra Market Maker Id", "siac.cqs.output.cta.v1.91.finramarketmakerid", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.instrument_type = ProtoField.new("Instrument Type", "siac.cqs.output.cta.v1.91.instrumenttype", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.long_quote_message = ProtoField.new("Long Quote Message", "siac.cqs.output.cta.v1.91.longquotemessage", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.luld_indicator = ProtoField.new("Luld Indicator", "siac.cqs.output.cta.v1.91.luldindicator", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.market_condition = ProtoField.new("Market Condition", "siac.cqs.output.cta.v1.91.marketcondition", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.market_status = ProtoField.new("Market Status", "siac.cqs.output.cta.v1.91.marketstatus", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.market_status_message_type = ProtoField.new("Market Status Message Type", "siac.cqs.output.cta.v1.91.marketstatusmessagetype", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.market_status_payload = ProtoField.new("Market Status Payload", "siac.cqs.output.cta.v1.91.marketstatuspayload", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.market_wide_circuit_breaker_decline_level_status_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Status Message", "siac.cqs.output.cta.v1.91.marketwidecircuitbreakerdeclinelevelstatusmessage", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.message = ProtoField.new("Message", "siac.cqs.output.cta.v1.91.message", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.message_category = ProtoField.new("Message Category", "siac.cqs.output.cta.v1.91.messagecategory", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.message_header = ProtoField.new("Message Header", "siac.cqs.output.cta.v1.91.messageheader", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.message_id = ProtoField.new("Message Id", "siac.cqs.output.cta.v1.91.messageid", ftypes.UINT8)
siac_cqs_output_cta_v1_91.fields.message_identifier = ProtoField.new("Message Identifier", "siac.cqs.output.cta.v1.91.messageidentifier", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.message_length = ProtoField.new("Message Length", "siac.cqs.output.cta.v1.91.messagelength", ftypes.UINT16)
siac_cqs_output_cta_v1_91.fields.messages_in_block = ProtoField.new("Messages In Block", "siac.cqs.output.cta.v1.91.messagesinblock", ftypes.UINT8)
siac_cqs_output_cta_v1_91.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "siac.cqs.output.cta.v1.91.mwcblevel2", ftypes.INT64)
siac_cqs_output_cta_v1_91.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "siac.cqs.output.cta.v1.91.mwcblevel3", ftypes.INT64)
siac_cqs_output_cta_v1_91.fields.nanoseconds = ProtoField.new("Nanoseconds", "siac.cqs.output.cta.v1.91.nanoseconds", ftypes.UINT32)
siac_cqs_output_cta_v1_91.fields.national_bbo_indicator = ProtoField.new("National Bbo Indicator", "siac.cqs.output.cta.v1.91.nationalbboindicator", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.national_bbo_luld_indicator = ProtoField.new("National Bbo Luld Indicator", "siac.cqs.output.cta.v1.91.nationalbboluldindicator", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.national_best_bid_long_appendage = ProtoField.new("National Best Bid Long Appendage", "siac.cqs.output.cta.v1.91.nationalbestbidlongappendage", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.offer_price_upper_limit_price_band = ProtoField.new("Offer Price Upper Limit Price Band", "siac.cqs.output.cta.v1.91.offerpriceupperlimitpriceband", ftypes.UINT64)
siac_cqs_output_cta_v1_91.fields.offer_size_long = ProtoField.new("Offer Size Long", "siac.cqs.output.cta.v1.91.offersizelong", ftypes.UINT32)
siac_cqs_output_cta_v1_91.fields.packet = ProtoField.new("Packet", "siac.cqs.output.cta.v1.91.packet", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.participant_id = ProtoField.new("Participant Id", "siac.cqs.output.cta.v1.91.participantid", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.participant_reference_number = ProtoField.new("Participant Reference Number", "siac.cqs.output.cta.v1.91.participantreferencenumber", ftypes.INT64)
siac_cqs_output_cta_v1_91.fields.participant_timestamp = ProtoField.new("Participant Timestamp", "siac.cqs.output.cta.v1.91.participanttimestamp", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.payload = ProtoField.new("Payload", "siac.cqs.output.cta.v1.91.payload", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.primary_listing_market_participant_id = ProtoField.new("Primary Listing Market Participant Id", "siac.cqs.output.cta.v1.91.primarylistingmarketparticipantid", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.quote = ProtoField.new("Quote", "siac.cqs.output.cta.v1.91.quote", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.quote_condition = ProtoField.new("Quote Condition", "siac.cqs.output.cta.v1.91.quotecondition", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.quote_message_type = ProtoField.new("Quote Message Type", "siac.cqs.output.cta.v1.91.quotemessagetype", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.quote_payload = ProtoField.new("Quote Payload", "siac.cqs.output.cta.v1.91.quotepayload", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.reserved = ProtoField.new("Reserved", "siac.cqs.output.cta.v1.91.reserved", ftypes.UINT8)
siac_cqs_output_cta_v1_91.fields.retail_interest_indicator = ProtoField.new("Retail Interest Indicator", "siac.cqs.output.cta.v1.91.retailinterestindicator", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.retransmission_indicator = ProtoField.new("Retransmission Indicator", "siac.cqs.output.cta.v1.91.retransmissionindicator", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.seconds = ProtoField.new("Seconds", "siac.cqs.output.cta.v1.91.seconds", ftypes.UINT32)
siac_cqs_output_cta_v1_91.fields.security_status_indicator = ProtoField.new("Security Status Indicator", "siac.cqs.output.cta.v1.91.securitystatusindicator", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.security_symbol_long = ProtoField.new("Security Symbol Long", "siac.cqs.output.cta.v1.91.securitysymbollong", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.settlement_condition = ProtoField.new("Settlement Condition", "siac.cqs.output.cta.v1.91.settlementcondition", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.short_sale_restriction_indicator = ProtoField.new("Short Sale Restriction Indicator", "siac.cqs.output.cta.v1.91.shortsalerestrictionindicator", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.sip_block_timestamp = ProtoField.new("Sip Block Timestamp", "siac.cqs.output.cta.v1.91.sipblocktimestamp", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.sip_generated_message_identifier = ProtoField.new("Sip Generated Message Identifier", "siac.cqs.output.cta.v1.91.sipgeneratedmessageidentifier", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "siac.cqs.output.cta.v1.91.startofdaymessage", ftypes.STRING)
siac_cqs_output_cta_v1_91.fields.transaction_id = ProtoField.new("Transaction Id", "siac.cqs.output.cta.v1.91.transactionid", ftypes.UINT32)
siac_cqs_output_cta_v1_91.fields.version = ProtoField.new("Version", "siac.cqs.output.cta.v1.91.version", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Siac Cqs Output Cta 1.91 Element Dissection Options
show.adf_timestamp = true
show.administrative = true
show.block_header = true
show.control = true
show.long_quote_message = true
show.market_status = true
show.market_wide_circuit_breaker_decline_level_status_message = true
show.message = true
show.message_header = true
show.message_identifier = true
show.national_best_bid_long_appendage = true
show.packet = true
show.participant_timestamp = true
show.quote = true
show.sip_block_timestamp = true
show.start_of_day_message = true
show.administrative_payload = false
show.market_status_payload = false
show.payload = false
show.quote_payload = false

-- Register Siac Cqs Output Cta 1.91 Show Options
siac_cqs_output_cta_v1_91.prefs.show_adf_timestamp = Pref.bool("Show Adf Timestamp", show.adf_timestamp, "Parse and add Adf Timestamp to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_administrative = Pref.bool("Show Administrative", show.administrative, "Parse and add Administrative to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_block_header = Pref.bool("Show Block Header", show.block_header, "Parse and add Block Header to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_control = Pref.bool("Show Control", show.control, "Parse and add Control to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_long_quote_message = Pref.bool("Show Long Quote Message", show.long_quote_message, "Parse and add Long Quote Message to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_market_status = Pref.bool("Show Market Status", show.market_status, "Parse and add Market Status to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_market_wide_circuit_breaker_decline_level_status_message = Pref.bool("Show Market Wide Circuit Breaker Decline Level Status Message", show.market_wide_circuit_breaker_decline_level_status_message, "Parse and add Market Wide Circuit Breaker Decline Level Status Message to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_message_identifier = Pref.bool("Show Message Identifier", show.message_identifier, "Parse and add Message Identifier to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_national_best_bid_long_appendage = Pref.bool("Show National Best Bid Long Appendage", show.national_best_bid_long_appendage, "Parse and add National Best Bid Long Appendage to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_participant_timestamp = Pref.bool("Show Participant Timestamp", show.participant_timestamp, "Parse and add Participant Timestamp to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_quote = Pref.bool("Show Quote", show.quote, "Parse and add Quote to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_sip_block_timestamp = Pref.bool("Show Sip Block Timestamp", show.sip_block_timestamp, "Parse and add Sip Block Timestamp to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_administrative_payload = Pref.bool("Show Administrative Payload", show.administrative_payload, "Parse and add Administrative Payload to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_market_status_payload = Pref.bool("Show Market Status Payload", show.market_status_payload, "Parse and add Market Status Payload to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
siac_cqs_output_cta_v1_91.prefs.show_quote_payload = Pref.bool("Show Quote Payload", show.quote_payload, "Parse and add Quote Payload to protocol tree")

-- Handle changed preferences
function siac_cqs_output_cta_v1_91.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.adf_timestamp ~= siac_cqs_output_cta_v1_91.prefs.show_adf_timestamp then
    show.adf_timestamp = siac_cqs_output_cta_v1_91.prefs.show_adf_timestamp
    changed = true
  end
  if show.administrative ~= siac_cqs_output_cta_v1_91.prefs.show_administrative then
    show.administrative = siac_cqs_output_cta_v1_91.prefs.show_administrative
    changed = true
  end
  if show.block_header ~= siac_cqs_output_cta_v1_91.prefs.show_block_header then
    show.block_header = siac_cqs_output_cta_v1_91.prefs.show_block_header
    changed = true
  end
  if show.control ~= siac_cqs_output_cta_v1_91.prefs.show_control then
    show.control = siac_cqs_output_cta_v1_91.prefs.show_control
    changed = true
  end
  if show.long_quote_message ~= siac_cqs_output_cta_v1_91.prefs.show_long_quote_message then
    show.long_quote_message = siac_cqs_output_cta_v1_91.prefs.show_long_quote_message
    changed = true
  end
  if show.market_status ~= siac_cqs_output_cta_v1_91.prefs.show_market_status then
    show.market_status = siac_cqs_output_cta_v1_91.prefs.show_market_status
    changed = true
  end
  if show.market_wide_circuit_breaker_decline_level_status_message ~= siac_cqs_output_cta_v1_91.prefs.show_market_wide_circuit_breaker_decline_level_status_message then
    show.market_wide_circuit_breaker_decline_level_status_message = siac_cqs_output_cta_v1_91.prefs.show_market_wide_circuit_breaker_decline_level_status_message
    changed = true
  end
  if show.message ~= siac_cqs_output_cta_v1_91.prefs.show_message then
    show.message = siac_cqs_output_cta_v1_91.prefs.show_message
    changed = true
  end
  if show.message_header ~= siac_cqs_output_cta_v1_91.prefs.show_message_header then
    show.message_header = siac_cqs_output_cta_v1_91.prefs.show_message_header
    changed = true
  end
  if show.message_identifier ~= siac_cqs_output_cta_v1_91.prefs.show_message_identifier then
    show.message_identifier = siac_cqs_output_cta_v1_91.prefs.show_message_identifier
    changed = true
  end
  if show.national_best_bid_long_appendage ~= siac_cqs_output_cta_v1_91.prefs.show_national_best_bid_long_appendage then
    show.national_best_bid_long_appendage = siac_cqs_output_cta_v1_91.prefs.show_national_best_bid_long_appendage
    changed = true
  end
  if show.packet ~= siac_cqs_output_cta_v1_91.prefs.show_packet then
    show.packet = siac_cqs_output_cta_v1_91.prefs.show_packet
    changed = true
  end
  if show.participant_timestamp ~= siac_cqs_output_cta_v1_91.prefs.show_participant_timestamp then
    show.participant_timestamp = siac_cqs_output_cta_v1_91.prefs.show_participant_timestamp
    changed = true
  end
  if show.quote ~= siac_cqs_output_cta_v1_91.prefs.show_quote then
    show.quote = siac_cqs_output_cta_v1_91.prefs.show_quote
    changed = true
  end
  if show.sip_block_timestamp ~= siac_cqs_output_cta_v1_91.prefs.show_sip_block_timestamp then
    show.sip_block_timestamp = siac_cqs_output_cta_v1_91.prefs.show_sip_block_timestamp
    changed = true
  end
  if show.start_of_day_message ~= siac_cqs_output_cta_v1_91.prefs.show_start_of_day_message then
    show.start_of_day_message = siac_cqs_output_cta_v1_91.prefs.show_start_of_day_message
    changed = true
  end
  if show.administrative_payload ~= siac_cqs_output_cta_v1_91.prefs.show_administrative_payload then
    show.administrative_payload = siac_cqs_output_cta_v1_91.prefs.show_administrative_payload
    changed = true
  end
  if show.market_status_payload ~= siac_cqs_output_cta_v1_91.prefs.show_market_status_payload then
    show.market_status_payload = siac_cqs_output_cta_v1_91.prefs.show_market_status_payload
    changed = true
  end
  if show.payload ~= siac_cqs_output_cta_v1_91.prefs.show_payload then
    show.payload = siac_cqs_output_cta_v1_91.prefs.show_payload
    changed = true
  end
  if show.quote_payload ~= siac_cqs_output_cta_v1_91.prefs.show_quote_payload then
    show.quote_payload = siac_cqs_output_cta_v1_91.prefs.show_quote_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Siac Cqs Output Cta 1.91
-----------------------------------------------------------------------

-- Size: Finra Best Bid Market Maker Id
size_of.finra_best_bid_market_maker_id = 4

-- Display: Finra Best Bid Market Maker Id
display.finra_best_bid_market_maker_id = function(value)
  return "Finra Best Bid Market Maker Id: "..value
end

-- Dissect: Finra Best Bid Market Maker Id
dissect.finra_best_bid_market_maker_id = function(buffer, offset, packet, parent)
  local length = size_of.finra_best_bid_market_maker_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.finra_best_bid_market_maker_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.finra_best_bid_market_maker_id, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Size Long
size_of.best_bid_size_long = 4

-- Display: Best Bid Size Long
display.best_bid_size_long = function(value)
  return "Best Bid Size Long: "..value
end

-- Dissect: Best Bid Size Long
dissect.best_bid_size_long = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_size_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.best_bid_size_long(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.best_bid_size_long, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Price Long
size_of.best_bid_price_long = 8

-- Display: Best Bid Price Long
display.best_bid_price_long = function(value)
  return "Best Bid Price Long: "..value
end

-- Dissect: Best Bid Price Long
dissect.best_bid_price_long = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_price_long
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.best_bid_price_long(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.best_bid_price_long, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Quote Condition
size_of.best_bid_quote_condition = 1

-- Display: Best Bid Quote Condition
display.best_bid_quote_condition = function(value)
  return "Best Bid Quote Condition: "..value
end

-- Dissect: Best Bid Quote Condition
dissect.best_bid_quote_condition = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.best_bid_quote_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.best_bid_quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Participant Id
size_of.best_bid_participant_id = 1

-- Display: Best Bid Participant Id
display.best_bid_participant_id = function(value)
  return "Best Bid Participant Id: "..value
end

-- Dissect: Best Bid Participant Id
dissect.best_bid_participant_id = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.best_bid_participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.best_bid_participant_id, range, value, display)

  return offset + length, value
end

-- Display: National Best Bid Long Appendage
display.national_best_bid_long_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: National Best Bid Long Appendage
dissect.national_best_bid_long_appendage_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Bid Participant Id: 1 Byte Ascii String
  index, best_bid_participant_id = dissect.best_bid_participant_id(buffer, index, packet, parent)

  -- Best Bid Quote Condition: 1 Byte Ascii String
  index, best_bid_quote_condition = dissect.best_bid_quote_condition(buffer, index, packet, parent)

  -- Best Bid Price Long: 8 Byte Unsigned Fixed Width Integer
  index, best_bid_price_long = dissect.best_bid_price_long(buffer, index, packet, parent)

  -- Best Bid Size Long: 4 Byte Unsigned Fixed Width Integer
  index, best_bid_size_long = dissect.best_bid_size_long(buffer, index, packet, parent)

  -- Finra Best Bid Market Maker Id: 4 Byte Ascii String
  index, finra_best_bid_market_maker_id = dissect.finra_best_bid_market_maker_id(buffer, index, packet, parent)

  return index
end

-- Dissect: National Best Bid Long Appendage
dissect.national_best_bid_long_appendage = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.national_best_bid_long_appendage then
    local range = buffer(offset, 18)
    local display = display.national_best_bid_long_appendage(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v1_91.fields.national_best_bid_long_appendage, range, display)
  end

  return dissect.national_best_bid_long_appendage_fields(buffer, offset, packet, parent)
end

-- Size: National Bbo Indicator
size_of.national_bbo_indicator = 1

-- Display: National Bbo Indicator
display.national_bbo_indicator = function(value)
  if value == " " then
    return "National Bbo Indicator: Not Included (<whitespace>)"
  end
  if value == "U" then
    return "National Bbo Indicator: Best Bid Long And Best Offer Long Appendages (U)"
  end

  return "National Bbo Indicator: Unknown("..value..")"
end

-- Dissect: National Bbo Indicator
dissect.national_bbo_indicator = function(buffer, offset, packet, parent)
  local length = size_of.national_bbo_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.national_bbo_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.national_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Size: National Bbo Luld Indicator
size_of.national_bbo_luld_indicator = 1

-- Display: National Bbo Luld Indicator
display.national_bbo_luld_indicator = function(value)
  return "National Bbo Luld Indicator: "..value
end

-- Dissect: National Bbo Luld Indicator
dissect.national_bbo_luld_indicator = function(buffer, offset, packet, parent)
  local length = size_of.national_bbo_luld_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.national_bbo_luld_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.national_bbo_luld_indicator, range, value, display)

  return offset + length, value
end

-- Size: Luld Indicator
size_of.luld_indicator = 1

-- Display: Luld Indicator
display.luld_indicator = function(value)
  return "Luld Indicator: "..value
end

-- Dissect: Luld Indicator
dissect.luld_indicator = function(buffer, offset, packet, parent)
  local length = size_of.luld_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.luld_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.luld_indicator, range, value, display)

  return offset + length, value
end

-- Size: Sip Generated Message Identifier
size_of.sip_generated_message_identifier = 1

-- Display: Sip Generated Message Identifier
display.sip_generated_message_identifier = function(value)
  return "Sip Generated Message Identifier: "..value
end

-- Dissect: Sip Generated Message Identifier
dissect.sip_generated_message_identifier = function(buffer, offset, packet, parent)
  local length = size_of.sip_generated_message_identifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.sip_generated_message_identifier(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.sip_generated_message_identifier, range, value, display)

  return offset + length, value
end

-- Size: Financial Status Indicator
size_of.financial_status_indicator = 1

-- Display: Financial Status Indicator
display.financial_status_indicator = function(value)
  return "Financial Status Indicator: "..value
end

-- Dissect: Financial Status Indicator
dissect.financial_status_indicator = function(buffer, offset, packet, parent)
  local length = size_of.financial_status_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.financial_status_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Size: Primary Listing Market Participant Id
size_of.primary_listing_market_participant_id = 1

-- Display: Primary Listing Market Participant Id
display.primary_listing_market_participant_id = function(value)
  return "Primary Listing Market Participant Id: "..value
end

-- Dissect: Primary Listing Market Participant Id
dissect.primary_listing_market_participant_id = function(buffer, offset, packet, parent)
  local length = size_of.primary_listing_market_participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.primary_listing_market_participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.primary_listing_market_participant_id, range, value, display)

  return offset + length, value
end

-- Size: Short Sale Restriction Indicator
size_of.short_sale_restriction_indicator = 1

-- Display: Short Sale Restriction Indicator
display.short_sale_restriction_indicator = function(value)
  return "Short Sale Restriction Indicator: "..value
end

-- Dissect: Short Sale Restriction Indicator
dissect.short_sale_restriction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.short_sale_restriction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.short_sale_restriction_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.short_sale_restriction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Nanoseconds
size_of.nanoseconds = 4

-- Display: Nanoseconds
display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Size: Seconds
size_of.seconds = 4

-- Display: Seconds
display.seconds = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
dissect.seconds = function(buffer, offset, packet, parent)
  local length = size_of.seconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.seconds(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.seconds, range, value, display)

  return offset + length, value
end

-- Display: Adf Timestamp
display.adf_timestamp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Adf Timestamp
dissect.adf_timestamp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Adf Timestamp
dissect.adf_timestamp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.adf_timestamp then
    local range = buffer(offset, 8)
    local display = display.adf_timestamp(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v1_91.fields.adf_timestamp, range, display)
  end

  return dissect.adf_timestamp_fields(buffer, offset, packet, parent)
end

-- Size: Finra Bbo Indicator
size_of.finra_bbo_indicator = 1

-- Display: Finra Bbo Indicator
display.finra_bbo_indicator = function(value)
  return "Finra Bbo Indicator: "..value
end

-- Dissect: Finra Bbo Indicator
dissect.finra_bbo_indicator = function(buffer, offset, packet, parent)
  local length = size_of.finra_bbo_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.finra_bbo_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.finra_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Size: Finra Market Maker Id
size_of.finra_market_maker_id = 4

-- Display: Finra Market Maker Id
display.finra_market_maker_id = function(value)
  return "Finra Market Maker Id: "..value
end

-- Dissect: Finra Market Maker Id
dissect.finra_market_maker_id = function(buffer, offset, packet, parent)
  local length = size_of.finra_market_maker_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.finra_market_maker_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.finra_market_maker_id, range, value, display)

  return offset + length, value
end

-- Size: Market Condition
size_of.market_condition = 1

-- Display: Market Condition
display.market_condition = function(value)
  return "Market Condition: "..value
end

-- Dissect: Market Condition
dissect.market_condition = function(buffer, offset, packet, parent)
  local length = size_of.market_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.market_condition, range, value, display)

  return offset + length, value
end

-- Size: Settlement Condition
size_of.settlement_condition = 1

-- Display: Settlement Condition
display.settlement_condition = function(value)
  return "Settlement Condition: "..value
end

-- Dissect: Settlement Condition
dissect.settlement_condition = function(buffer, offset, packet, parent)
  local length = size_of.settlement_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.settlement_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.settlement_condition, range, value, display)

  return offset + length, value
end

-- Size: Retail Interest Indicator
size_of.retail_interest_indicator = 1

-- Display: Retail Interest Indicator
display.retail_interest_indicator = function(value)
  return "Retail Interest Indicator: "..value
end

-- Dissect: Retail Interest Indicator
dissect.retail_interest_indicator = function(buffer, offset, packet, parent)
  local length = size_of.retail_interest_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.retail_interest_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.retail_interest_indicator, range, value, display)

  return offset + length, value
end

-- Size: Offer Size Long
size_of.offer_size_long = 4

-- Display: Offer Size Long
display.offer_size_long = function(value)
  return "Offer Size Long: "..value
end

-- Dissect: Offer Size Long
dissect.offer_size_long = function(buffer, offset, packet, parent)
  local length = size_of.offer_size_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.offer_size_long(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.offer_size_long, range, value, display)

  return offset + length, value
end

-- Size: Offer Price Upper Limit Price Band
size_of.offer_price_upper_limit_price_band = 8

-- Display: Offer Price Upper Limit Price Band
display.offer_price_upper_limit_price_band = function(value)
  return "Offer Price Upper Limit Price Band: "..value
end

-- Dissect: Offer Price Upper Limit Price Band
dissect.offer_price_upper_limit_price_band = function(buffer, offset, packet, parent)
  local length = size_of.offer_price_upper_limit_price_band
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.offer_price_upper_limit_price_band(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.offer_price_upper_limit_price_band, range, value, display)

  return offset + length, value
end

-- Size: Bid Size Long
size_of.bid_size_long = 4

-- Display: Bid Size Long
display.bid_size_long = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
dissect.bid_size_long = function(buffer, offset, packet, parent)
  local length = size_of.bid_size_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.bid_size_long(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Lower Limit Price Band
size_of.bid_price_lower_limit_price_band = 8

-- Display: Bid Price Lower Limit Price Band
display.bid_price_lower_limit_price_band = function(value)
  return "Bid Price Lower Limit Price Band: "..value
end

-- Dissect: Bid Price Lower Limit Price Band
dissect.bid_price_lower_limit_price_band = function(buffer, offset, packet, parent)
  local length = size_of.bid_price_lower_limit_price_band
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.bid_price_lower_limit_price_band(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.bid_price_lower_limit_price_band, range, value, display)

  return offset + length, value
end

-- Size: Security Status Indicator
size_of.security_status_indicator = 1

-- Display: Security Status Indicator
display.security_status_indicator = function(value)
  return "Security Status Indicator: "..value
end

-- Dissect: Security Status Indicator
dissect.security_status_indicator = function(buffer, offset, packet, parent)
  local length = size_of.security_status_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_status_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.security_status_indicator, range, value, display)

  return offset + length, value
end

-- Size: Quote Condition
size_of.quote_condition = 1

-- Display: Quote Condition
display.quote_condition = function(value)
  return "Quote Condition: "..value
end

-- Dissect: Quote Condition
dissect.quote_condition = function(buffer, offset, packet, parent)
  local length = size_of.quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Instrument Type
size_of.instrument_type = 1

-- Display: Instrument Type
display.instrument_type = function(value)
  return "Instrument Type: "..value
end

-- Dissect: Instrument Type
dissect.instrument_type = function(buffer, offset, packet, parent)
  local length = size_of.instrument_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instrument_type(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol Long
size_of.security_symbol_long = 11

-- Display: Security Symbol Long
display.security_symbol_long = function(value)
  return "Security Symbol Long: "..value
end

-- Dissect: Security Symbol Long
dissect.security_symbol_long = function(buffer, offset, packet, parent)
  local length = size_of.security_symbol_long
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_symbol_long(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.security_symbol_long, range, value, display)

  return offset + length, value
end

-- Size: Participant Reference Number
size_of.participant_reference_number = 8

-- Display: Participant Reference Number
display.participant_reference_number = function(value)
  return "Participant Reference Number: "..value
end

-- Dissect: Participant Reference Number
dissect.participant_reference_number = function(buffer, offset, packet, parent)
  local length = size_of.participant_reference_number
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.participant_reference_number(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.participant_reference_number, range, value, display)

  return offset + length, value
end

-- Size: Transaction Id
size_of.transaction_id = 4

-- Display: Transaction Id
display.transaction_id = function(value)
  return "Transaction Id: "..value
end

-- Dissect: Transaction Id
dissect.transaction_id = function(buffer, offset, packet, parent)
  local length = size_of.transaction_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.transaction_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.transaction_id, range, value, display)

  return offset + length, value
end

-- Size: Message Id
size_of.message_id = 1

-- Display: Message Id
display.message_id = function(value)
  return "Message Id: "..value
end

-- Dissect: Message Id
dissect.message_id = function(buffer, offset, packet, parent)
  local length = size_of.message_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.message_id, range, value, display)

  return offset + length, value
end

-- Display: Participant Timestamp
display.participant_timestamp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Participant Timestamp
dissect.participant_timestamp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Timestamp
dissect.participant_timestamp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.participant_timestamp then
    local range = buffer(offset, 8)
    local display = display.participant_timestamp(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v1_91.fields.participant_timestamp, range, display)
  end

  return dissect.participant_timestamp_fields(buffer, offset, packet, parent)
end

-- Size: Participant Id
size_of.participant_id = 1

-- Display: Participant Id
display.participant_id = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
dissect.participant_id = function(buffer, offset, packet, parent)
  local length = size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Display: Long Quote Message
display.long_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote Message
dissect.long_quote_message_fields = function(buffer, offset, packet, parent, size_of_long_quote_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol Long: 11 Byte Ascii String
  index, security_symbol_long = dissect.security_symbol_long(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String
  index, instrument_type = dissect.instrument_type(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String
  index, quote_condition = dissect.quote_condition(buffer, index, packet, parent)

  -- Security Status Indicator: 1 Byte Ascii String
  index, security_status_indicator = dissect.security_status_indicator(buffer, index, packet, parent)

  -- Bid Price Lower Limit Price Band: 8 Byte Unsigned Fixed Width Integer
  index, bid_price_lower_limit_price_band = dissect.bid_price_lower_limit_price_band(buffer, index, packet, parent)

  -- Bid Size Long: 4 Byte Unsigned Fixed Width Integer
  index, bid_size_long = dissect.bid_size_long(buffer, index, packet, parent)

  -- Offer Price Upper Limit Price Band: 8 Byte Unsigned Fixed Width Integer
  index, offer_price_upper_limit_price_band = dissect.offer_price_upper_limit_price_band(buffer, index, packet, parent)

  -- Offer Size Long: 4 Byte Unsigned Fixed Width Integer
  index, offer_size_long = dissect.offer_size_long(buffer, index, packet, parent)

  -- Retail Interest Indicator: 1 Byte Ascii String
  index, retail_interest_indicator = dissect.retail_interest_indicator(buffer, index, packet, parent)

  -- Settlement Condition: 1 Byte Ascii String
  index, settlement_condition = dissect.settlement_condition(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Ascii String
  index, market_condition = dissect.market_condition(buffer, index, packet, parent)

  -- Finra Market Maker Id: 4 Byte Ascii String
  index, finra_market_maker_id = dissect.finra_market_maker_id(buffer, index, packet, parent)

  -- Finra Bbo Indicator: 1 Byte Ascii String
  index, finra_bbo_indicator = dissect.finra_bbo_indicator(buffer, index, packet, parent)

  -- Adf Timestamp: Struct of 2 fields
  index, adf_timestamp = dissect.adf_timestamp(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String
  index, short_sale_restriction_indicator = dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String
  index, primary_listing_market_participant_id = dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String
  index, financial_status_indicator = dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Sip Generated Message Identifier: 1 Byte Ascii String
  index, sip_generated_message_identifier = dissect.sip_generated_message_identifier(buffer, index, packet, parent)

  -- Luld Indicator: 1 Byte Ascii String
  index, luld_indicator = dissect.luld_indicator(buffer, index, packet, parent)

  -- National Bbo Luld Indicator: 1 Byte Ascii String
  index, national_bbo_luld_indicator = dissect.national_bbo_luld_indicator(buffer, index, packet, parent)

  -- National Bbo Indicator: 1 Byte Ascii String Enum with 2 values
  index, national_bbo_indicator = dissect.national_bbo_indicator(buffer, index, packet, parent)

  -- Runtime optional field exists: National Best Bid Long Appendage
  local national_best_bid_long_appendage_exists = national_bbo_indicator == "U"

  -- Runtime optional field: National Best Bid Long Appendage
  if national_best_bid_long_appendage_exists then
    index = dissect.national_best_bid_long_appendage(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Long Quote Message
dissect.long_quote_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_long_quote_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.long_quote_message then
    local range = buffer(offset, size_of_long_quote_message)
    local display = display.long_quote_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v1_91.fields.long_quote_message, range, display)
  end

  dissect.long_quote_message_fields(buffer, offset, packet, parent, size_of_long_quote_message)

  return offset + size_of_long_quote_message
end

-- Calculate runtime size of: Quote Payload
size_of.quote_payload = function(buffer, offset, quote_message_type)
  -- Size of Long Quote Message
  if quote_message_type == "L" then
    return size_of.long_quote_message(buffer, offset)
  end

  return 0
end

-- Display: Quote Payload
display.quote_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Quote Payload
dissect.quote_payload_branches = function(buffer, offset, packet, parent, quote_message_type)
  -- Dissect Long Quote Message
  if quote_message_type == "L" then
    return dissect.long_quote_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Quote Payload
dissect.quote_payload = function(buffer, offset, packet, parent, quote_message_type)
  if not show.quote_payload then
    return dissect.quote_payload_branches(buffer, offset, packet, parent, quote_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.quote_payload(buffer, offset, quote_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.quote_payload(buffer, packet, parent)
  local element = parent:add(siac_cqs_output_cta_v1_91.fields.quote_payload, range, display)

  return dissect.quote_payload_branches(buffer, offset, packet, parent, quote_message_type)
end

-- Size: Quote Message Type
size_of.quote_message_type = 1

-- Display: Quote Message Type
display.quote_message_type = function(value)
  if value == "L" then
    return "Quote Message Type: Long Quote Message (L)"
  end

  return "Quote Message Type: Unknown("..value..")"
end

-- Dissect: Quote Message Type
dissect.quote_message_type = function(buffer, offset, packet, parent)
  local length = size_of.quote_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.quote_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.quote_message_type, range, value, display)

  return offset + length, value
end

-- Display: Quote
display.quote = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote
dissect.quote_fields = function(buffer, offset, packet, parent, size_of_quote)
  local index = offset

  -- Quote Message Type: 1 Byte Ascii String Enum with 1 values
  index, quote_message_type = dissect.quote_message_type(buffer, index, packet, parent)

  -- Quote Payload: Runtime Type with 1 branches
  index = dissect.quote_payload(buffer, index, packet, parent, quote_message_type)

  return index
end

-- Dissect: Quote
dissect.quote = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_quote = message_length - 3

  -- Optionally add struct element to protocol tree
  if show.quote then
    local range = buffer(offset, size_of_quote)
    local display = display.quote(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v1_91.fields.quote, range, display)
  end

  dissect.quote_fields(buffer, offset, packet, parent, size_of_quote)

  return offset + size_of_quote
end

-- Size: Reserved
size_of.reserved = 1

-- Display: Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local length = size_of.reserved
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Mwcb Level 3
size_of.mwcb_level_3 = 8

-- Display: Mwcb Level 3
display.mwcb_level_3 = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
dissect.mwcb_level_3 = function(buffer, offset, packet, parent)
  local length = size_of.mwcb_level_3
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.mwcb_level_3(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- Size: Mwcb Level 2
size_of.mwcb_level_2 = 8

-- Display: Mwcb Level 2
display.mwcb_level_2 = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
dissect.mwcb_level_2 = function(buffer, offset, packet, parent)
  local length = size_of.mwcb_level_2
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.mwcb_level_2(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Display: Message Identifier
display.message_identifier = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Identifier
dissect.message_identifier_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: 1 Byte Ascii String
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Identifier
dissect.message_identifier = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_identifier then
    local range = buffer(offset, 22)
    local display = display.message_identifier(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v1_91.fields.message_identifier, range, display)
  end

  return dissect.message_identifier_fields(buffer, offset, packet, parent)
end

-- Display: Market Wide Circuit Breaker Decline Level Status Message
display.market_wide_circuit_breaker_decline_level_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Status Message
dissect.market_wide_circuit_breaker_decline_level_status_message_fields = function(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_status_message)
  local index = offset

  -- Message Identifier: Struct of 5 fields
  index, message_identifier = dissect.message_identifier(buffer, index, packet, parent)

  -- Mwcb Level 1
  index, mwcb_level_1 = dissect.mwcb_level_1(buffer, index, packet, parent)

  -- Mwcb Level 2: 8 Byte Signed Fixed Width Integer
  index, mwcb_level_2 = dissect.mwcb_level_2(buffer, index, packet, parent)

  -- Mwcb Level 3: 8 Byte Signed Fixed Width Integer
  index, mwcb_level_3 = dissect.mwcb_level_3(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Status Message
dissect.market_wide_circuit_breaker_decline_level_status_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_market_wide_circuit_breaker_decline_level_status_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.market_wide_circuit_breaker_decline_level_status_message then
    local range = buffer(offset, size_of_market_wide_circuit_breaker_decline_level_status_message)
    local display = display.market_wide_circuit_breaker_decline_level_status_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v1_91.fields.market_wide_circuit_breaker_decline_level_status_message, range, display)
  end

  dissect.market_wide_circuit_breaker_decline_level_status_message_fields(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_status_message)

  return offset + size_of_market_wide_circuit_breaker_decline_level_status_message
end

-- Calculate runtime size of: Market Status Payload
size_of.market_status_payload = function(buffer, offset, market_status_message_type)
  -- Size of Market Wide Circuit Breaker Decline Level Status Message
  if market_status_message_type == "M" then
    return size_of.market_wide_circuit_breaker_decline_level_status_message(buffer, offset)
  end

  return 0
end

-- Display: Market Status Payload
display.market_status_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Market Status Payload
dissect.market_status_payload_branches = function(buffer, offset, packet, parent, market_status_message_type)
  -- Dissect Market Wide Circuit Breaker Decline Level Status Message
  if market_status_message_type == "M" then
    return dissect.market_wide_circuit_breaker_decline_level_status_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Market Status Payload
dissect.market_status_payload = function(buffer, offset, packet, parent, market_status_message_type)
  if not show.market_status_payload then
    return dissect.market_status_payload_branches(buffer, offset, packet, parent, market_status_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.market_status_payload(buffer, offset, market_status_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.market_status_payload(buffer, packet, parent)
  local element = parent:add(siac_cqs_output_cta_v1_91.fields.market_status_payload, range, display)

  return dissect.market_status_payload_branches(buffer, offset, packet, parent, market_status_message_type)
end

-- Size: Market Status Message Type
size_of.market_status_message_type = 1

-- Display: Market Status Message Type
display.market_status_message_type = function(value)
  if value == "M" then
    return "Market Status Message Type: Market Wide Circuit Breaker Decline Level Status Message (M)"
  end

  return "Market Status Message Type: Unknown("..value..")"
end

-- Dissect: Market Status Message Type
dissect.market_status_message_type = function(buffer, offset, packet, parent)
  local length = size_of.market_status_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_status_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.market_status_message_type, range, value, display)

  return offset + length, value
end

-- Display: Market Status
display.market_status = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Status
dissect.market_status_fields = function(buffer, offset, packet, parent, size_of_market_status)
  local index = offset

  -- Market Status Message Type: 1 Byte Ascii String Enum with 1 values
  index, market_status_message_type = dissect.market_status_message_type(buffer, index, packet, parent)

  -- Market Status Payload: Runtime Type with 1 branches
  index = dissect.market_status_payload(buffer, index, packet, parent, market_status_message_type)

  return index
end

-- Dissect: Market Status
dissect.market_status = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_market_status = message_length - 3

  -- Optionally add struct element to protocol tree
  if show.market_status then
    local range = buffer(offset, size_of_market_status)
    local display = display.market_status(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v1_91.fields.market_status, range, display)
  end

  dissect.market_status_fields(buffer, offset, packet, parent, size_of_market_status)

  return offset + size_of_market_status
end

-- Size: Control Message Type
size_of.control_message_type = 1

-- Display: Control Message Type
display.control_message_type = function(value)
  return "Control Message Type: "..value
end

-- Dissect: Control Message Type
dissect.control_message_type = function(buffer, offset, packet, parent)
  local length = size_of.control_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.control_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Display: Control
display.control = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Control
dissect.control_fields = function(buffer, offset, packet, parent, size_of_control)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String
  index, control_message_type = dissect.control_message_type(buffer, index, packet, parent)

  -- Control Payload
  index, control_payload = dissect.control_payload(buffer, index, packet, parent)

  return index
end

-- Dissect: Control
dissect.control = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_control = message_length - 3

  -- Optionally add struct element to protocol tree
  if show.control then
    local range = buffer(offset, size_of_control)
    local display = display.control(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v1_91.fields.control, range, display)
  end

  dissect.control_fields(buffer, offset, packet, parent, size_of_control)

  return offset + size_of_control
end

-- Display: Start Of Day Message
display.start_of_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Day Message
dissect.start_of_day_message_fields = function(buffer, offset, packet, parent, size_of_start_of_day_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
dissect.start_of_day_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_start_of_day_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.start_of_day_message then
    local range = buffer(offset, size_of_start_of_day_message)
    local display = display.start_of_day_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v1_91.fields.start_of_day_message, range, display)
  end

  dissect.start_of_day_message_fields(buffer, offset, packet, parent, size_of_start_of_day_message)

  return offset + size_of_start_of_day_message
end

-- Calculate runtime size of: Administrative Payload
size_of.administrative_payload = function(buffer, offset, administrative_message_type)
  -- Size of Start Of Day Message
  if administrative_message_type == "H" then
    return size_of.start_of_day_message(buffer, offset)
  end

  return 0
end

-- Display: Administrative Payload
display.administrative_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Administrative Payload
dissect.administrative_payload_branches = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect Start Of Day Message
  if administrative_message_type == "H" then
    return dissect.start_of_day_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Administrative Payload
dissect.administrative_payload = function(buffer, offset, packet, parent, administrative_message_type)
  if not show.administrative_payload then
    return dissect.administrative_payload_branches(buffer, offset, packet, parent, administrative_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.administrative_payload(buffer, offset, administrative_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.administrative_payload(buffer, packet, parent)
  local element = parent:add(siac_cqs_output_cta_v1_91.fields.administrative_payload, range, display)

  return dissect.administrative_payload_branches(buffer, offset, packet, parent, administrative_message_type)
end

-- Size: Administrative Message Type
size_of.administrative_message_type = 1

-- Display: Administrative Message Type
display.administrative_message_type = function(value)
  if value == "H" then
    return "Administrative Message Type: Start Of Day Message (H)"
  end

  return "Administrative Message Type: Unknown("..value..")"
end

-- Dissect: Administrative Message Type
dissect.administrative_message_type = function(buffer, offset, packet, parent)
  local length = size_of.administrative_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.administrative_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Display: Administrative
display.administrative = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Administrative
dissect.administrative_fields = function(buffer, offset, packet, parent, size_of_administrative)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String Enum with 1 values
  index, administrative_message_type = dissect.administrative_message_type(buffer, index, packet, parent)

  -- Administrative Payload: Runtime Type with 1 branches
  index = dissect.administrative_payload(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative
dissect.administrative = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_administrative = message_length - 3

  -- Optionally add struct element to protocol tree
  if show.administrative then
    local range = buffer(offset, size_of_administrative)
    local display = display.administrative(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v1_91.fields.administrative, range, display)
  end

  dissect.administrative_fields(buffer, offset, packet, parent, size_of_administrative)

  return offset + size_of_administrative
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, message_category)
  -- Size of Administrative
  if message_category == "A" then
    return size_of.administrative(buffer, offset)
  end
  -- Size of Control
  if message_category == "C" then
    return size_of.control(buffer, offset)
  end
  -- Size of Market Status
  if message_category == "M" then
    return size_of.market_status(buffer, offset)
  end
  -- Size of Quote
  if message_category == "Q" then
    return size_of.quote(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, message_category)
  -- Dissect Administrative
  if message_category == "A" then
    return dissect.administrative(buffer, offset, packet, parent)
  end
  -- Dissect Control
  if message_category == "C" then
    return dissect.control(buffer, offset, packet, parent)
  end
  -- Dissect Market Status
  if message_category == "M" then
    return dissect.market_status(buffer, offset, packet, parent)
  end
  -- Dissect Quote
  if message_category == "Q" then
    return dissect.quote(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, message_category)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, message_category)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, message_category)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(siac_cqs_output_cta_v1_91.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, message_category)
end

-- Size: Message Category
size_of.message_category = 1

-- Display: Message Category
display.message_category = function(value)
  if value == "A" then
    return "Message Category: Administrative (A)"
  end
  if value == "C" then
    return "Message Category: Control (C)"
  end
  if value == "M" then
    return "Message Category: Market Status (M)"
  end
  if value == "Q" then
    return "Message Category: Quote (Q)"
  end

  return "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
dissect.message_category = function(buffer, offset, packet, parent)
  local length = size_of.message_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_category(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.message_category, range, value, display)

  return offset + length, value
end

-- Size: Message Length
size_of.message_length = 2

-- Display: Message Length
display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
dissect.message_length = function(buffer, offset, packet, parent)
  local length = size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_length(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.message_length, range, value, display)

  return offset + length, value
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = dissect.message_length(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String Enum with 4 values
  index, message_category = dissect.message_category(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 3)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v1_91.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 4 branches
  index = dissect.payload(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v1_91.fields.message, range, display)
  end

  dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Block Checksum
size_of.block_checksum = 2

-- Display: Block Checksum
display.block_checksum = function(value)
  return "Block Checksum: "..value
end

-- Dissect: Block Checksum
dissect.block_checksum = function(buffer, offset, packet, parent)
  local length = size_of.block_checksum
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.block_checksum(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.block_checksum, range, value, display)

  return offset + length, value
end

-- Display: Sip Block Timestamp
display.sip_block_timestamp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sip Block Timestamp
dissect.sip_block_timestamp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Sip Block Timestamp
dissect.sip_block_timestamp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sip_block_timestamp then
    local range = buffer(offset, 8)
    local display = display.sip_block_timestamp(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v1_91.fields.sip_block_timestamp, range, display)
  end

  return dissect.sip_block_timestamp_fields(buffer, offset, packet, parent)
end

-- Size: Messages In Block
size_of.messages_in_block = 1

-- Display: Messages In Block
display.messages_in_block = function(value)
  return "Messages In Block: "..value
end

-- Dissect: Messages In Block
dissect.messages_in_block = function(buffer, offset, packet, parent)
  local length = size_of.messages_in_block
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.messages_in_block(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.messages_in_block, range, value, display)

  return offset + length, value
end

-- Size: Block Sequence Number
size_of.block_sequence_number = 4

-- Display: Block Sequence Number
display.block_sequence_number = function(value)
  return "Block Sequence Number: "..value
end

-- Dissect: Block Sequence Number
dissect.block_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.block_sequence_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.block_sequence_number(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.block_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Retransmission Indicator
size_of.retransmission_indicator = 1

-- Display: Retransmission Indicator
display.retransmission_indicator = function(value)
  if value == "O" then
    return "Retransmission Indicator: Original (O)"
  end
  if value == "V" then
    return "Retransmission Indicator: Retransmitted (V)"
  end

  return "Retransmission Indicator: Unknown("..value..")"
end

-- Dissect: Retransmission Indicator
dissect.retransmission_indicator = function(buffer, offset, packet, parent)
  local length = size_of.retransmission_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.retransmission_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.retransmission_indicator, range, value, display)

  return offset + length, value
end

-- Size: Data Feed Indicator
size_of.data_feed_indicator = 1

-- Display: Data Feed Indicator
display.data_feed_indicator = function(value)
  return "Data Feed Indicator: "..value
end

-- Dissect: Data Feed Indicator
dissect.data_feed_indicator = function(buffer, offset, packet, parent)
  local length = size_of.data_feed_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.data_feed_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.data_feed_indicator, range, value, display)

  return offset + length, value
end

-- Size: Block Size
size_of.block_size = 2

-- Display: Block Size
display.block_size = function(value)
  return "Block Size: "..value
end

-- Dissect: Block Size
dissect.block_size = function(buffer, offset, packet, parent)
  local length = size_of.block_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.block_size(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.block_size, range, value, display)

  return offset + length, value
end

-- Size: Version
size_of.version = 1

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local length = size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v1_91.fields.version, range, value, display)

  return offset + length, value
end

-- Display: Block Header
display.block_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Block Header
dissect.block_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = dissect.version(buffer, index, packet, parent)

  -- Block Size: 2 Byte Unsigned Fixed Width Integer
  index, block_size = dissect.block_size(buffer, index, packet, parent)

  -- Data Feed Indicator: 1 Byte Ascii String
  index, data_feed_indicator = dissect.data_feed_indicator(buffer, index, packet, parent)

  -- Retransmission Indicator: 1 Byte Ascii String Enum with 2 values
  index, retransmission_indicator = dissect.retransmission_indicator(buffer, index, packet, parent)

  -- Block Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, block_sequence_number = dissect.block_sequence_number(buffer, index, packet, parent)

  -- Messages In Block: 1 Byte Unsigned Fixed Width Integer
  index, messages_in_block = dissect.messages_in_block(buffer, index, packet, parent)

  -- Sip Block Timestamp: Struct of 2 fields
  index, sip_block_timestamp = dissect.sip_block_timestamp(buffer, index, packet, parent)

  -- Block Checksum: 2 Byte Unsigned Fixed Width Integer
  index, block_checksum = dissect.block_checksum(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Header
dissect.block_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.block_header then
    local range = buffer(offset, 20)
    local display = display.block_header(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v1_91.fields.block_header, range, display)
  end

  return dissect.block_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Block Header: Struct of 8 fields
  index, block_header = dissect.block_header(buffer, index, packet, parent)

  -- Dependency element: Messages In Block
  local messages_in_block = buffer(index - 11, 1):uint()

  -- Message: Struct of 2 fields
  for i = 1, messages_in_block do

    -- Dependency element: Message Length
    local message_length = buffer(index - 0, 2):uint()

    -- Message: Struct of 2 fields
    index = dissect.message(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function siac_cqs_output_cta_v1_91.init()
end

-- Dissector for Siac Cqs Output Cta 1.91
function siac_cqs_output_cta_v1_91.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = siac_cqs_output_cta_v1_91.name

  -- Dissect protocol
  local protocol = parent:add(siac_cqs_output_cta_v1_91, buffer(), siac_cqs_output_cta_v1_91.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, siac_cqs_output_cta_v1_91)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.siac_cqs_output_cta_v1_91_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Siac Cqs Output Cta 1.91
local function siac_cqs_output_cta_v1_91_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.siac_cqs_output_cta_v1_91_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = siac_cqs_output_cta_v1_91
  siac_cqs_output_cta_v1_91.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Siac Cqs Output Cta 1.91
siac_cqs_output_cta_v1_91:register_heuristic("udp", siac_cqs_output_cta_v1_91_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Securities Industry Automation Corporation
--   Version: 1.91
--   Date: Thursday, January 2, 2020
--   Specification: CQS_BINARY_OUTPUT_SPECIFICATION.pdf
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