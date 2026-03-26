-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Titanium Equities DepthOfBook PitchUdp 2.41.64 Protocol
local omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64 = Proto("Cboe.Titanium.Equities.DepthOfBook.PitchUdp.v2.41.64.Lua", "Cboe Titanium Equities DepthOfBook PitchUdp 2.41.64")

-- Protocol table
local cboe_titanium_equities_depthofbook_pitchudp_v2_41_64 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Titanium Equities DepthOfBook PitchUdp 2.41.64 Fields
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.add_flags = ProtoField.new("Add Flags", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.addflags", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.auctiononlyprice", ftypes.UINT64)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.auction_type = ProtoField.new("Auction Type", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.auctiontype", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.buy_shares = ProtoField.new("Buy Shares", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.buyshares", ftypes.UINT32)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.canceled_quantity_binary_2 = ProtoField.new("Canceled Quantity Binary 2", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.canceledquantitybinary2", ftypes.UINT16)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.canceled_quantity_binary_4 = ProtoField.new("Canceled Quantity Binary 4", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.canceledquantitybinary4", ftypes.UINT32)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.count = ProtoField.new("Count", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.count", ftypes.UINT8)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.customerindicator", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.display = ProtoField.new("Display", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.display", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.executedquantity", ftypes.UINT32)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.execution_id = ProtoField.new("Execution Id", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.executionid", ftypes.UINT64)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.indicativeprice", ftypes.UINT64)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.length = ProtoField.new("Length", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.length", ftypes.UINT16)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.message = ProtoField.new("Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.message", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.message_header = ProtoField.new("Message Header", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.messageheader", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.message_length = ProtoField.new("Message Length", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.messagelength", ftypes.UINT8)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.message_type = ProtoField.new("Message Type", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.messagetype", ftypes.UINT8)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.modify_flags = ProtoField.new("Modify Flags", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.modifyflags", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.order_id = ProtoField.new("Order Id", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.orderid", ftypes.UINT64)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.packet = ProtoField.new("Packet", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.packet", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.packet_header = ProtoField.new("Packet Header", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.packetheader", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.participant_id = ProtoField.new("Participant Id", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.participantid", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.price_binary_long_price_8 = ProtoField.new("Price Binary Long Price 8", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.pricebinarylongprice8", ftypes.DOUBLE)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.price_binary_short_price_2 = ProtoField.new("Price Binary Short Price 2", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.pricebinaryshortprice2", ftypes.DOUBLE)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.priority = ProtoField.new("Priority", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.priority", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.quantity_binary_2 = ProtoField.new("Quantity Binary 2", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.quantitybinary2", ftypes.UINT16)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.quantity_binary_4 = ProtoField.new("Quantity Binary 4", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.quantitybinary4", ftypes.UINT32)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.reference_price = ProtoField.new("Reference Price", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.referenceprice", ftypes.UINT64)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.regshoaction", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.remainingquantity", ftypes.UINT32)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.reserved1", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.reserved2", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.reserved_flags_6 = ProtoField.new("Reserved Flags 6", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.reservedflags6", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.reserved_flags_7 = ProtoField.new("Reserved Flags 7", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.reservedflags7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.retail_price_improvement = ProtoField.new("Retail Price Improvement", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.retailpriceimprovement", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.sell_shares = ProtoField.new("Sell Shares", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.sellshares", ftypes.UINT32)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.sequence = ProtoField.new("Sequence", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.sequence", ftypes.UINT32)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.shares_contracts = ProtoField.new("Shares Contracts", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.sharescontracts", ftypes.UINT32)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.sideindicator", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.stock_symbol = ProtoField.new("Stock Symbol", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.stocksymbol", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.symbol_printable_ascii_6 = ProtoField.new("Symbol Printable Ascii 6", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.symbolprintableascii6", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.symbol_printable_ascii_8 = ProtoField.new("Symbol Printable Ascii 8", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.symbolprintableascii8", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.time = ProtoField.new("Time", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.time", ftypes.UINT32)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.time_offset = ProtoField.new("Time Offset", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.timeoffset", ftypes.UINT32)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.timestamp = ProtoField.new("Timestamp", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.timestamp", ftypes.UINT32)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.trading_status = ProtoField.new("Trading Status", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.tradingstatus", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.unit = ProtoField.new("Unit", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.unit", ftypes.UINT8)

-- Cboe Titanium Equities PitchUdp DepthOfBook 2.41.64 Application Messages
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_add_order_expanded_message = ProtoField.new("Eq Add Order Expanded Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqaddorderexpandedmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_add_order_long_message = ProtoField.new("Eq Add Order Long Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqaddorderlongmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_add_order_short_message = ProtoField.new("Eq Add Order Short Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqaddordershortmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_auction_summary_message = ProtoField.new("Eq Auction Summary Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqauctionsummarymessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_auction_update_message = ProtoField.new("Eq Auction Update Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqauctionupdatemessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_delete_order_message = ProtoField.new("Eq Delete Order Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqdeleteordermessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_end_of_session = ProtoField.new("Eq End Of Session", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqendofsession", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_modify_order_long_message = ProtoField.new("Eq Modify Order Long Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqmodifyorderlongmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_modify_order_short_message = ProtoField.new("Eq Modify Order Short Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqmodifyordershortmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_order_executed_at_price_size_message = ProtoField.new("Eq Order Executed At Price Size Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqorderexecutedatpricesizemessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_order_executed_message = ProtoField.new("Eq Order Executed Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqorderexecutedmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_reduce_size_long_message = ProtoField.new("Eq Reduce Size Long Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqreducesizelongmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_reduce_size_short_message = ProtoField.new("Eq Reduce Size Short Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqreducesizeshortmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_retail_price_improvement_message = ProtoField.new("Eq Retail Price Improvement Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqretailpriceimprovementmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_time_message = ProtoField.new("Eq Time Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqtimemessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_trade_break_message = ProtoField.new("Eq Trade Break Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqtradebreakmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_trade_expanded_message = ProtoField.new("Eq Trade Expanded Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqtradeexpandedmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_trade_long_message = ProtoField.new("Eq Trade Long Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqtradelongmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_trade_short_message = ProtoField.new("Eq Trade Short Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqtradeshortmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_trading_status_message = ProtoField.new("Eq Trading Status Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.eqtradingstatusmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_unit_clear_message = ProtoField.new("Eq Unit Clear Message", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.equnitclearmessage", ftypes.STRING)

-- Cboe Titanium Equities DepthOfBook PitchUdp 2.41.64 generated fields
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.message_index = ProtoField.new("Message Index", "cboe.titanium.equities.depthofbook.pitchudp.v2.41.64.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe Titanium Equities DepthOfBook PitchUdp 2.41.64 Element Dissection Options
show.add_flags = true
show.application_messages = true
show.message = true
show.message_header = true
show.modify_flags = true
show.packet = true
show.packet_header = true

-- Register Cboe Titanium Equities DepthOfBook PitchUdp 2.41.64 Show Options
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_add_flags = Pref.bool("Show Add Flags", show.add_flags, "Parse and add Add Flags to protocol tree")
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_modify_flags = Pref.bool("Show Modify Flags", show.modify_flags, "Parse and add Modify Flags to protocol tree")
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")

-- Handle changed preferences
function omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_flags ~= omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_add_flags then
    show.add_flags = omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_add_flags
    changed = true
  end
  if show.application_messages ~= omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_application_messages then
    show.application_messages = omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_application_messages
    changed = true
  end
  if show.message ~= omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_message then
    show.message = omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_message_header then
    show.message_header = omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_message_header
    changed = true
  end
  if show.modify_flags ~= omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_modify_flags then
    show.modify_flags = omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_modify_flags
    changed = true
  end
  if show.packet ~= omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_packet then
    show.packet = omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_packet_header then
    show.packet_header = omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.prefs.show_packet_header
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
-- Cboe Titanium Equities DepthOfBook PitchUdp 2.41.64 Fields
-----------------------------------------------------------------------

-- Auction Only Price
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_only_price = {}

-- Size: Auction Only Price
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Dissect: Auction Only Price
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_only_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_type = {}

-- Size: Auction Type
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_type.size = 1

-- Display: Auction Type
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "H" then
    return "Auction Type: Halt Auction (H)"
  end
  if value == "I" then
    return "Auction Type: Ipo Auction (I)"
  end
  if value == "M" then
    return "Auction Type: Cboe Market Close (M)"
  end
  if value == "V" then
    return "Auction Type: Volatility Auction (V)"
  end
  if value == "P" then
    return "Auction Type: Periodic Auction (P)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Shares
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.buy_shares = {}

-- Size: Buy Shares
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.buy_shares.size = 4

-- Display: Buy Shares
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.buy_shares.display = function(value)
  return "Buy Shares: "..value
end

-- Dissect: Buy Shares
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.buy_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.buy_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.buy_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.buy_shares, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Binary 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_2 = {}

-- Size: Canceled Quantity Binary 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_2.size = 2

-- Display: Canceled Quantity Binary 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_2.display = function(value)
  return "Canceled Quantity Binary 2: "..value
end

-- Dissect: Canceled Quantity Binary 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.canceled_quantity_binary_2, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Binary 4
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_4 = {}

-- Size: Canceled Quantity Binary 4
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_4.size = 4

-- Display: Canceled Quantity Binary 4
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_4.display = function(value)
  return "Canceled Quantity Binary 4: "..value
end

-- Dissect: Canceled Quantity Binary 4
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.canceled_quantity_binary_4, range, value, display)

  return offset + length, value
end

-- Count
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.count = {}

-- Size: Count
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.count.size = 1

-- Display: Count
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.count, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.customer_indicator = {}

-- Size: Customer Indicator
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end
  if value == "R" then
    return "Customer Indicator: Retail Priority Order (R)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.executed_quantity = {}

-- Size: Executed Quantity
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id = {}

-- Size: Execution Id
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.size = 8

-- Display: Execution Id
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.indicative_price = {}

-- Size: Indicative Price
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.indicative_price.size = 8

-- Display: Indicative Price
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Dissect: Indicative Price
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.indicative_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Length
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.length = {}

-- Size: Length
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.length.size = 2

-- Display: Length
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.length, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_length = {}

-- Size: Message Length
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_length.size = 1

-- Display: Message Length
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_type = {}

-- Size: Message Type
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_type.size = 1

-- Display: Message Type
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_type.display = function(value)
  if value == 0x20 then
    return "Message Type: Eq Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Eq Unit Clear Message (0x97)"
  end
  if value == 0x21 then
    return "Message Type: Eq Add Order Long Message (0x21)"
  end
  if value == 0x22 then
    return "Message Type: Eq Add Order Short Message (0x22)"
  end
  if value == 0x2F then
    return "Message Type: Eq Add Order Expanded Message (0x2F)"
  end
  if value == 0x23 then
    return "Message Type: Eq Order Executed Message (0x23)"
  end
  if value == 0x24 then
    return "Message Type: Eq Order Executed At Price Size Message (0x24)"
  end
  if value == 0x25 then
    return "Message Type: Eq Reduce Size Long Message (0x25)"
  end
  if value == 0x26 then
    return "Message Type: Eq Reduce Size Short Message (0x26)"
  end
  if value == 0x27 then
    return "Message Type: Eq Modify Order Long Message (0x27)"
  end
  if value == 0x28 then
    return "Message Type: Eq Modify Order Short Message (0x28)"
  end
  if value == 0x29 then
    return "Message Type: Eq Delete Order Message (0x29)"
  end
  if value == 0x2A then
    return "Message Type: Eq Trade Long Message (0x2A)"
  end
  if value == 0x2B then
    return "Message Type: Eq Trade Short Message (0x2B)"
  end
  if value == 0x30 then
    return "Message Type: Eq Trade Expanded Message (0x30)"
  end
  if value == 0x2C then
    return "Message Type: Eq Trade Break Message (0x2C)"
  end
  if value == 0x2D then
    return "Message Type: Eq End Of Session (0x2D)"
  end
  if value == 0x31 then
    return "Message Type: Eq Trading Status Message (0x31)"
  end
  if value == 0x95 then
    return "Message Type: Eq Auction Update Message (0x95)"
  end
  if value == 0x96 then
    return "Message Type: Eq Auction Summary Message (0x96)"
  end
  if value == 0x98 then
    return "Message Type: Eq Retail Price Improvement Message (0x98)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id = {}

-- Size: Order Id
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.size = 8

-- Display: Order Id
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.order_id, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.participant_id = {}

-- Size: Participant Id
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.participant_id.size = 4

-- Display: Participant Id
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price Binary Long Price 8
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8 = {}

-- Size: Price Binary Long Price 8
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.size = 8

-- Display: Price Binary Long Price 8
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.display = function(value)
  return "Price Binary Long Price 8: "..value
end

-- Translate: Price Binary Long Price 8
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Binary Long Price 8
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.translate(raw)
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.price_binary_long_price_8, range, value, display)

  return offset + length, value
end

-- Price Binary Short Price 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_short_price_2 = {}

-- Size: Price Binary Short Price 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_short_price_2.size = 2

-- Display: Price Binary Short Price 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_short_price_2.display = function(value)
  return "Price Binary Short Price 2: "..value
end

-- Translate: Price Binary Short Price 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_short_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Price Binary Short Price 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_short_price_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_short_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_short_price_2.translate(raw)
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_short_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.price_binary_short_price_2, range, value, display)

  return offset + length, value
end

-- Quantity Binary 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_2 = {}

-- Size: Quantity Binary 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_2.size = 2

-- Display: Quantity Binary 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_2.display = function(value)
  return "Quantity Binary 2: "..value
end

-- Dissect: Quantity Binary 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.quantity_binary_2, range, value, display)

  return offset + length, value
end

-- Quantity Binary 4
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4 = {}

-- Size: Quantity Binary 4
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4.size = 4

-- Display: Quantity Binary 4
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4.display = function(value)
  return "Quantity Binary 4: "..value
end

-- Dissect: Quantity Binary 4
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.quantity_binary_4, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reference_price = {}

-- Size: Reference Price
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reference_price.size = 8

-- Display: Reference Price
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reference_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reg_sho_action = {}

-- Size: Reg Sho Action
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reg_sho_action.size = 1

-- Display: Reg Sho Action
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.remaining_quantity = {}

-- Size: Remaining Quantity
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_1 = {}

-- Size: Reserved 1
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_1.size = 1

-- Display: Reserved 1
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_2 = {}

-- Size: Reserved 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_2.size = 1

-- Display: Reserved 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Retail Price Improvement
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.retail_price_improvement = {}

-- Size: Retail Price Improvement
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.retail_price_improvement.size = 1

-- Display: Retail Price Improvement
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.retail_price_improvement.display = function(value)
  if value == "B" then
    return "Retail Price Improvement: Buy Side Rpi (B)"
  end
  if value == "S" then
    return "Retail Price Improvement: Sell Side Rpi (S)"
  end
  if value == "A" then
    return "Retail Price Improvement: Buy And Sell Rpi (A)"
  end
  if value == "N" then
    return "Retail Price Improvement: No Rpi (N)"
  end

  return "Retail Price Improvement: Unknown("..value..")"
end

-- Dissect: Retail Price Improvement
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.retail_price_improvement.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.retail_price_improvement.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.retail_price_improvement.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.retail_price_improvement, range, value, display)

  return offset + length, value
end

-- Sell Shares
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sell_shares = {}

-- Size: Sell Shares
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sell_shares.size = 4

-- Display: Sell Shares
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sell_shares.display = function(value)
  return "Sell Shares: "..value
end

-- Dissect: Sell Shares
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sell_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sell_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sell_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.sell_shares, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sequence = {}

-- Size: Sequence
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sequence.size = 4

-- Display: Sequence
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.sequence, range, value, display)

  return offset + length, value
end

-- Shares Contracts
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.shares_contracts = {}

-- Size: Shares Contracts
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.shares_contracts.size = 4

-- Display: Shares Contracts
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.shares_contracts.display = function(value)
  return "Shares Contracts: "..value
end

-- Dissect: Shares Contracts
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.shares_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.shares_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.shares_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.shares_contracts, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator = {}

-- Size: Side Indicator
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.size = 1

-- Display: Side Indicator
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Stock Symbol
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.stock_symbol = {}

-- Size: Stock Symbol
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.stock_symbol.size = 8

-- Display: Stock Symbol
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Symbol Printable Ascii 6
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_6 = {}

-- Size: Symbol Printable Ascii 6
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_6.size = 6

-- Display: Symbol Printable Ascii 6
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_6.display = function(value)
  return "Symbol Printable Ascii 6: "..value
end

-- Dissect: Symbol Printable Ascii 6
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_6.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_6.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.symbol_printable_ascii_6, range, value, display)

  return offset + length, value
end

-- Symbol Printable Ascii 8
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_8 = {}

-- Size: Symbol Printable Ascii 8
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_8.size = 8

-- Display: Symbol Printable Ascii 8
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_8.display = function(value)
  return "Symbol Printable Ascii 8: "..value
end

-- Dissect: Symbol Printable Ascii 8
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.symbol_printable_ascii_8, range, value, display)

  return offset + length, value
end

-- Time
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time = {}

-- Size: Time
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time.size = 4

-- Display: Time
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset = {}

-- Size: Time Offset
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size = 4

-- Display: Time Offset
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.timestamp = {}

-- Size: Timestamp
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.timestamp.size = 4

-- Display: Timestamp
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.trading_status = {}

-- Size: Trading Status
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.trading_status.size = 1

-- Display: Trading Status
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.trading_status.display = function(value)
  if value == "A" then
    return "Trading Status: Accepting Orders For Queuing (A)"
  end
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "Q" then
    return "Trading Status: Quote Only (Q)"
  end
  if value == "S" then
    return "Trading Status: Exchange Specific Suspension (S)"
  end
  if value == "T" then
    return "Trading Status: Trading (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.unit = {}

-- Size: Unit
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.unit.size = 1

-- Display: Unit
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.unit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe Titanium Equities DepthOfBook PitchUdp 2.41.64
-----------------------------------------------------------------------

-- Eq Retail Price Improvement Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_retail_price_improvement_message = {}

-- Size: Eq Retail Price Improvement Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_retail_price_improvement_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_8.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.retail_price_improvement.size

-- Display: Eq Retail Price Improvement Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_retail_price_improvement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Retail Price Improvement Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_retail_price_improvement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Printable Ascii 8: Printable ASCII
  index, symbol_printable_ascii_8 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Retail Price Improvement: Alpha
  index, retail_price_improvement = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.retail_price_improvement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Retail Price Improvement Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_retail_price_improvement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_retail_price_improvement_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_retail_price_improvement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_retail_price_improvement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_retail_price_improvement_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Auction Summary Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_summary_message = {}

-- Size: Eq Auction Summary Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_summary_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.stock_symbol.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_type.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.shares_contracts.size

-- Display: Eq Auction Summary Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Auction Summary Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Printable ASCII
  index, stock_symbol = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_type.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Shares Contracts: Binary
  index, shares_contracts = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.shares_contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Auction Summary Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_auction_summary_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Auction Update Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_update_message = {}

-- Size: Eq Auction Update Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_update_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.stock_symbol.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_type.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reference_price.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.buy_shares.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sell_shares.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.indicative_price.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_only_price.size

-- Display: Eq Auction Update Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Auction Update Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Printable ASCII
  index, stock_symbol = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary
  index, reference_price = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Shares: Binary
  index, buy_shares = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.buy_shares.dissect(buffer, index, packet, parent)

  -- Sell Shares: Binary
  index, sell_shares = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sell_shares.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary
  index, indicative_price = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary
  index, auction_only_price = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.auction_only_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Auction Update Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_auction_update_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Trading Status Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trading_status_message = {}

-- Size: Eq Trading Status Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trading_status_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_8.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.trading_status.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reg_sho_action.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_1.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_2.size

-- Display: Eq Trading Status Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Trading Status Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Printable Ascii 8: Printable ASCII
  index, symbol_printable_ascii_8 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.trading_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Trading Status Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_trading_status_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq End Of Session
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_end_of_session = {}

-- Size: Eq End Of Session
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_end_of_session.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.timestamp.size

-- Display: Eq End Of Session
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_end_of_session.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq End Of Session
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_end_of_session.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq End Of Session
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_end_of_session.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_end_of_session, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_end_of_session.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_end_of_session.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_end_of_session.fields(buffer, offset, packet, parent)
  end
end

-- Eq Trade Break Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_break_message = {}

-- Size: Eq Trade Break Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_break_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.size

-- Display: Eq Trade Break Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Trade Break Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Trade Break Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_trade_break_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Trade Expanded Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_expanded_message = {}

-- Size: Eq Trade Expanded Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_expanded_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_8.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.size

-- Display: Eq Trade Expanded Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Trade Expanded Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Binary 4: Binary
  index, quantity_binary_4 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4.dissect(buffer, index, packet, parent)

  -- Symbol Printable Ascii 8: Printable ASCII
  index, symbol_printable_ascii_8 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Trade Expanded Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_trade_expanded_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Trade Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_short_message = {}

-- Size: Eq Trade Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_short_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_2.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_6.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_short_price_2.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.size

-- Display: Eq Trade Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Trade Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Binary 2: Binary
  index, quantity_binary_2 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_2.dissect(buffer, index, packet, parent)

  -- Symbol Printable Ascii 6: Printable ASCII
  index, symbol_printable_ascii_6 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_6.dissect(buffer, index, packet, parent)

  -- Price Binary Short Price 2: Binary Short Price
  index, price_binary_short_price_2 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_short_price_2.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Trade Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_trade_short_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Trade Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_long_message = {}

-- Size: Eq Trade Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_long_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_6.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.size

-- Display: Eq Trade Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Trade Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Binary 4: Binary
  index, quantity_binary_4 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4.dissect(buffer, index, packet, parent)

  -- Symbol Printable Ascii 6: Printable ASCII
  index, symbol_printable_ascii_6 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_6.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Trade Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_trade_long_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Delete Order Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_delete_order_message = {}

-- Size: Eq Delete Order Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_delete_order_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.size

-- Display: Eq Delete Order Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Delete Order Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Delete Order Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_delete_order_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Flags
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.modify_flags = {}

-- Size: Modify Flags
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.modify_flags.size = 1

-- Display: Modify Flags
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.modify_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Display flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Display"
  end
  -- Is Priority flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Priority"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Flags
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.modify_flags.bits = function(range, value, packet, parent)

  -- Display: 1 Bit
  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.display, range, value)

  -- Priority: 1 Bit
  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.priority, range, value)

  -- Reserved Flags 6: 6 Bit
  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.reserved_flags_6, range, value)
end

-- Dissect: Modify Flags
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.modify_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.modify_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.modify_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.modify_flags, range, display)

  if show.modify_flags then
    cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.modify_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Eq Modify Order Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_short_message = {}

-- Size: Eq Modify Order Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_short_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_2.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_short_price_2.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.modify_flags.size

-- Display: Eq Modify Order Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Modify Order Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Binary 2: Binary
  index, quantity_binary_2 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_2.dissect(buffer, index, packet, parent)

  -- Price Binary Short Price 2: Binary Short Price
  index, price_binary_short_price_2 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_short_price_2.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Modify Order Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_modify_order_short_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Modify Order Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_long_message = {}

-- Size: Eq Modify Order Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_long_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.modify_flags.size

-- Display: Eq Modify Order Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Modify Order Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Binary 4: Binary
  index, quantity_binary_4 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Modify Order Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_modify_order_long_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Reduce Size Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_short_message = {}

-- Size: Eq Reduce Size Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_short_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_2.size

-- Display: Eq Reduce Size Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Reduce Size Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Binary 2: Binary
  index, canceled_quantity_binary_2 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Reduce Size Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_reduce_size_short_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Reduce Size Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_long_message = {}

-- Size: Eq Reduce Size Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_long_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_4.size

-- Display: Eq Reduce Size Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Reduce Size Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Binary 4: Binary
  index, canceled_quantity_binary_4 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.canceled_quantity_binary_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Reduce Size Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_reduce_size_long_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Order Executed At Price Size Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_at_price_size_message = {}

-- Size: Eq Order Executed At Price Size Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_at_price_size_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.executed_quantity.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.remaining_quantity.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.size

-- Display: Eq Order Executed At Price Size Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Order Executed At Price Size Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary
  index, remaining_quantity = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Order Executed At Price Size Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Order Executed Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_message = {}

-- Size: Eq Order Executed Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.executed_quantity.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.size

-- Display: Eq Order Executed Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Order Executed Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Order Executed Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_order_executed_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Flags
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.add_flags = {}

-- Size: Add Flags
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.add_flags.size = 1

-- Display: Add Flags
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.add_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Display flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Display"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Flags
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.add_flags.bits = function(range, value, packet, parent)

  -- Display: 1 Bit
  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.display, range, value)

  -- Reserved Flags 7: 7 Bit
  parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.reserved_flags_7, range, value)
end

-- Dissect: Add Flags
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.add_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.add_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.add_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.add_flags, range, display)

  if show.add_flags then
    cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.add_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Eq Add Order Expanded Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_expanded_message = {}

-- Size: Eq Add Order Expanded Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_expanded_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_8.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.add_flags.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.participant_id.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.customer_indicator.size

-- Display: Eq Add Order Expanded Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Add Order Expanded Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Binary 4: Binary
  index, quantity_binary_4 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4.dissect(buffer, index, packet, parent)

  -- Symbol Printable Ascii 8: Printable ASCII
  index, symbol_printable_ascii_8 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 2 fields
  index, add_flags = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.add_flags.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.customer_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Add Order Expanded Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_add_order_expanded_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Add Order Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_short_message = {}

-- Size: Eq Add Order Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_short_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_2.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_6.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_short_price_2.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.add_flags.size

-- Display: Eq Add Order Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Add Order Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Binary 2: Binary
  index, quantity_binary_2 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_2.dissect(buffer, index, packet, parent)

  -- Symbol Printable Ascii 6: Printable ASCII
  index, symbol_printable_ascii_6 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_6.dissect(buffer, index, packet, parent)

  -- Price Binary Short Price 2: Binary Short Price
  index, price_binary_short_price_2 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_short_price_2.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 2 fields
  index, add_flags = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Add Order Short Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_add_order_short_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Add Order Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_long_message = {}

-- Size: Eq Add Order Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_long_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_6.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.add_flags.size

-- Display: Eq Add Order Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Add Order Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Binary 4: Binary
  index, quantity_binary_4 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.quantity_binary_4.dissect(buffer, index, packet, parent)

  -- Symbol Printable Ascii 6: Printable ASCII
  index, symbol_printable_ascii_6 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.symbol_printable_ascii_6.dissect(buffer, index, packet, parent)

  -- Price Binary Long Price 8: Binary Long Price
  index, price_binary_long_price_8 = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.price_binary_long_price_8.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 2 fields
  index, add_flags = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Add Order Long Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_add_order_long_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Unit Clear Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_unit_clear_message = {}

-- Size: Eq Unit Clear Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_unit_clear_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.size

-- Display: Eq Unit Clear Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Unit Clear Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Unit Clear Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_unit_clear_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Eq Time Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_time_message = {}

-- Size: Eq Time Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_time_message.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time.size

-- Display: Eq Time Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eq Time Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eq Time Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.eq_time_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.payload = {}

-- Dissect: Payload
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Eq Time Message
  if message_type == 0x20 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Unit Clear Message
  if message_type == 0x97 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Add Order Long Message
  if message_type == 0x21 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Add Order Short Message
  if message_type == 0x22 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_add_order_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Order Executed Message
  if message_type == 0x23 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Modify Order Long Message
  if message_type == 0x27 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Modify Order Short Message
  if message_type == 0x28 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Delete Order Message
  if message_type == 0x29 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Trade Long Message
  if message_type == 0x2A then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Trade Short Message
  if message_type == 0x2B then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Trade Expanded Message
  if message_type == 0x30 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Trade Break Message
  if message_type == 0x2C then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq End Of Session
  if message_type == 0x2D then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_end_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Trading Status Message
  if message_type == 0x31 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Auction Update Message
  if message_type == 0x95 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Auction Summary Message
  if message_type == 0x96 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Eq Retail Price Improvement Message
  if message_type == 0x98 then
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.eq_retail_price_improvement_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_header = {}

-- Size: Message Header
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_header.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_length.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_type.size

-- Display: Message Header
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, message_type = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.message_header, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message = {}

-- Display: Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 21 branches
  index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.message, buffer(offset, 0))
    local current = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.packet_header = {}

-- Size: Packet Header
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.packet_header.size =
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.length.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.count.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.unit.size + 
  cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sequence.size

-- Display: Packet Header
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.fields.packet_header, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.packet = {}

-- Dissect Packet
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.message.dissect(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.init()
end

-- Dissector for Cboe Titanium Equities DepthOfBook PitchUdp 2.41.64
function omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64, buffer(), omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.description, "("..buffer:len().." Bytes)")
  return cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Titanium Equities DepthOfBook PitchUdp 2.41.64
local function omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64
  omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Titanium Equities DepthOfBook PitchUdp 2.41.64
omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64:register_heuristic("udp", omi_cboe_titanium_equities_depthofbook_pitchudp_v2_41_64_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.41.64
--   Date: Monday, January 12, 2026
--   Specification: US_EQUITIES_OPTIONS_MULTICAST_PITCH_SPECIFICATION.pdf
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
