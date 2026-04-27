-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions SpreadDepth Itch 2.1 Protocol
local omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1 = Proto("Nasdaq.PhlxOptions.SpreadDepth.Itch.v2.1.Lua", "Nasdaq PhlxOptions SpreadDepth Itch 2.1")

-- Protocol table
local nasdaq_phlxoptions_spreaddepth_itch_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PhlxOptions SpreadDepth Itch 2.1 Fields
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.currenttradingstate", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.eventcode", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.expirationday", ftypes.UINT8)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.expirationmonth", ftypes.UINT8)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.expirationyear", ftypes.UINT8)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.explicitstrikeprice", ftypes.UINT32)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.leg_information = ProtoField.new("Leg Information", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.leginformation", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.legratio", ftypes.UINT32)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.numberoflegs", ftypes.UINT8)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.option_id = ProtoField.new("Option Id", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.optionid", ftypes.UINT32)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.option_type = ProtoField.new("Option Type", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.optiontype", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.order_capacity = ProtoField.new("Order Capacity", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.ordercapacity", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.packet = ProtoField.new("Packet", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.packet", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.packetheader", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.packetlength", ftypes.UINT16)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.packet_type = ProtoField.new("Packet Type", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.packettype", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.password = ProtoField.new("Password", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.password", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.price_long = ProtoField.new("Price Long", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.pricelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.price_short = ProtoField.new("Price Short", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.priceshort", ftypes.UINT16)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.rejectreasoncode", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.requestedsession", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.reserved_16 = ProtoField.new("Reserved 16", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.reserved16", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.reserved_3 = ProtoField.new("Reserved 3", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.reserved3", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.scope = ProtoField.new("Scope", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.scope", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.securitysymbol", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.sequencenumber", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.session = ProtoField.new("Session", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.session", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.side = ProtoField.new("Side", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.side", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.snapshot_sequence_number = ProtoField.new("Snapshot Sequence Number", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.snapshotsequencenumber", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.soupbintcppacket", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.strategyid", ftypes.UINT32)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.strategy_type = ProtoField.new("Strategy Type", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.strategytype", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.text = ProtoField.new("Text", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.text", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.timestamp", ftypes.UINT64)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.trackingnumber", ftypes.UINT16)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.underlyingsymbol", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.username = ProtoField.new("Username", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.username", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.volume_long = ProtoField.new("Volume Long", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.volumelong", ftypes.UINT32)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.volume_short = ProtoField.new("Volume Short", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.volumeshort", ftypes.UINT16)

-- Nasdaq PhlxOptions Itch SpreadDepth 2.1 Application Messages
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.add_order_long_form_message = ProtoField.new("Add Order Long Form Message", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.addorderlongformmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.add_order_short_form_message = ProtoField.new("Add Order Short Form Message", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.addordershortformmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.complex_strategy_directory_message = ProtoField.new("Complex Strategy Directory Message", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.complexstrategydirectorymessage", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.snapshot_message = ProtoField.new("Snapshot Message", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.snapshotmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.strategy_trading_action_message = ProtoField.new("Strategy Trading Action Message", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.strategytradingactionmessage", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.systemeventmessage", ftypes.STRING)

-- Nasdaq PhlxOptions Itch SpreadDepth 2.1 Session Messages
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.debugpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.loginrequestpacket", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq PhlxOptions SpreadDepth Itch 2.1 generated fields
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.leg_information_index = ProtoField.new("Leg Information Index", "nasdaq.phlxoptions.spreaddepth.itch.v2.1.leginformationindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PhlxOptions SpreadDepth Itch 2.1 Element Dissection Options
show.application_messages = true
show.session_messages = true
show.leg_information = true
show.packet = true
show.packet_header = true
show.soup_bin_tcp_packet = true
show.leg_information_index = true

-- Register Nasdaq PhlxOptions SpreadDepth Itch 2.1 Show Options
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_leg_information = Pref.bool("Show Leg Information", show.leg_information, "Parse and add Leg Information to protocol tree")
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_soup_bin_tcp_packet = Pref.bool("Show Soup Bin Tcp Packet", show.soup_bin_tcp_packet, "Parse and add Soup Bin Tcp Packet to protocol tree")
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_leg_information_index = Pref.bool("Show Leg Information Index", show.leg_information_index, "Show generated leg information index in protocol tree")

-- Handle changed preferences
function omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_application_messages
  end
  if show.leg_information ~= omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_leg_information then
    show.leg_information = omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_leg_information
  end
  if show.packet ~= omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_packet then
    show.packet = omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_packet
  end
  if show.packet_header ~= omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_packet_header
  end
  if show.session_messages ~= omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_session_messages
  end
  if show.soup_bin_tcp_packet ~= omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_soup_bin_tcp_packet then
    show.soup_bin_tcp_packet = omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_soup_bin_tcp_packet
  end
  if show.leg_information_index ~= omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_leg_information_index then
    show.leg_information_index = omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.prefs.show_leg_information_index
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
-- Nasdaq PhlxOptions SpreadDepth Itch 2.1 Fields
-----------------------------------------------------------------------

-- Current Trading State
nasdaq_phlxoptions_spreaddepth_itch_v2_1.current_trading_state = {}

-- Size: Current Trading State
nasdaq_phlxoptions_spreaddepth_itch_v2_1.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_phlxoptions_spreaddepth_itch_v2_1.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Continuous Trading (T)"
  end
  if value == "I" then
    return "Current Trading State: Pre Open (I)"
  end
  if value == "O" then
    return "Current Trading State: Opening Auction (O)"
  end
  if value == "R" then
    return "Current Trading State: Re Opening (R)"
  end
  if value == "X" then
    return "Current Trading State: Closed (X)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_phlxoptions_spreaddepth_itch_v2_1.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_phlxoptions_spreaddepth_itch_v2_1.event_code = {}

-- Size: Event Code
nasdaq_phlxoptions_spreaddepth_itch_v2_1.event_code.size = 1

-- Display: Event Code
nasdaq_phlxoptions_spreaddepth_itch_v2_1.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Opening Process (Q)"
  end
  if value == "N" then
    return "Event Code: Start Of Normal Hours Closing Process (N)"
  end
  if value == "L" then
    return "Event Code: Start Of Late Hours Closing Process (L)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end
  if value == "W" then
    return "Event Code: End Of Wco Early Closing (W)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_phlxoptions_spreaddepth_itch_v2_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_day = {}

-- Size: Expiration Day
nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_month = {}

-- Size: Expiration Month
nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_year = {}

-- Size: Expiration Year
nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_phlxoptions_spreaddepth_itch_v2_1.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_phlxoptions_spreaddepth_itch_v2_1.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_phlxoptions_spreaddepth_itch_v2_1.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Dissect: Explicit Strike Price
nasdaq_phlxoptions_spreaddepth_itch_v2_1.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.explicit_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Leg Ratio
nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_ratio = {}

-- Size: Leg Ratio
nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_ratio.size = 4

-- Display: Leg Ratio
nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Number Of Legs
nasdaq_phlxoptions_spreaddepth_itch_v2_1.number_of_legs = {}

-- Size: Number Of Legs
nasdaq_phlxoptions_spreaddepth_itch_v2_1.number_of_legs.size = 1

-- Display: Number Of Legs
nasdaq_phlxoptions_spreaddepth_itch_v2_1.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_phlxoptions_spreaddepth_itch_v2_1.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Option Id
nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_id = {}

-- Size: Option Id
nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_id.size = 4

-- Display: Option Id
nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_id.display = function(value)
  return "Option Id: "..value
end

-- Dissect: Option Id
nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.option_id, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_type = {}

-- Size: Option Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_type.size = 1

-- Display: Option Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Capacity
nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_capacity = {}

-- Size: Order Capacity
nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_capacity.size = 1

-- Display: Order Capacity
nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_capacity.display = function(value)
  if value == "C" then
    return "Order Capacity: Customer Order (C)"
  end
  if value == "F" then
    return "Order Capacity: Firm Order (F)"
  end
  if value == "M" then
    return "Order Capacity: Nasdaq Registered Market Maker (M)"
  end
  if value == "B" then
    return "Order Capacity: Broker Dealer Order (B)"
  end
  if value == "P" then
    return "Order Capacity: Professional Order (P)"
  end
  if value == "O" then
    return "Order Capacity: Other Exchange Registered Market Maker (O)"
  end
  if value == "J" then
    return "Order Capacity: Joint Back Office (J)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_length = {}

-- Size: Packet Length
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_length.size = 2

-- Display: Packet Length
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_type = {}

-- Size: Packet Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_type.size = 1

-- Display: Packet Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "A" then
    return "Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "Z" then
    return "Packet Type: End Of Session Packet (Z)"
  end
  if value == "L" then
    return "Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Packet Type: Logout Request Packet (O)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_phlxoptions_spreaddepth_itch_v2_1.password = {}

-- Size: Password
nasdaq_phlxoptions_spreaddepth_itch_v2_1.password.size = 10

-- Display: Password
nasdaq_phlxoptions_spreaddepth_itch_v2_1.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_phlxoptions_spreaddepth_itch_v2_1.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.password, range, value, display)

  return offset + length, value
end

-- Price Long
nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_long = {}

-- Size: Price Long
nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_long.size = 4

-- Display: Price Long
nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_long.display = function(value)
  return "Price Long: "..value
end

-- Dissect: Price Long
nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_short = {}

-- Size: Price Short
nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_short.size = 2

-- Display: Price Short
nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_short.display = function(value)
  return "Price Short: "..value
end

-- Dissect: Price Short
nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.price_short, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_phlxoptions_spreaddepth_itch_v2_1.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_phlxoptions_spreaddepth_itch_v2_1.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_phlxoptions_spreaddepth_itch_v2_1.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_phlxoptions_spreaddepth_itch_v2_1.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_session = {}

-- Size: Requested Session
nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_session.size = 10

-- Display: Requested Session
nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 16
nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_16 = {}

-- Size: Reserved 16
nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_16.size = 16

-- Display: Reserved 16
nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_16.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 3
nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_3 = {}

-- Size: Reserved 3
nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_3.size = 3

-- Display: Reserved 3
nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Scope
nasdaq_phlxoptions_spreaddepth_itch_v2_1.scope = {}

-- Size: Scope
nasdaq_phlxoptions_spreaddepth_itch_v2_1.scope.size = 1

-- Display: Scope
nasdaq_phlxoptions_spreaddepth_itch_v2_1.scope.display = function(value)
  if value == "L" then
    return "Scope: Local (L)"
  end
  if value == "N" then
    return "Scope: National (N)"
  end

  return "Scope: Unknown("..value..")"
end

-- Dissect: Scope
nasdaq_phlxoptions_spreaddepth_itch_v2_1.scope.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.scope, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_phlxoptions_spreaddepth_itch_v2_1.security_symbol = {}

-- Size: Security Symbol
nasdaq_phlxoptions_spreaddepth_itch_v2_1.security_symbol.size = 8

-- Display: Security Symbol
nasdaq_phlxoptions_spreaddepth_itch_v2_1.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_phlxoptions_spreaddepth_itch_v2_1.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequence_number = {}

-- Size: Sequence Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequence_number.size = 20

-- Display: Sequence Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_message_type.display = function(value)
  if value == "S" then
    return "Sequenced Message Type: System Event Message (S)"
  end
  if value == "s" then
    return "Sequenced Message Type: Complex Strategy Directory Message (s)"
  end
  if value == "H" then
    return "Sequenced Message Type: Strategy Trading Action Message (H)"
  end
  if value == "r" then
    return "Sequenced Message Type: Add Order Short Form Message (r)"
  end
  if value == "o" then
    return "Sequenced Message Type: Add Order Long Form Message (o)"
  end
  if value == "M" then
    return "Sequenced Message Type: Snapshot Message (M)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_phlxoptions_spreaddepth_itch_v2_1.session = {}

-- Size: Session
nasdaq_phlxoptions_spreaddepth_itch_v2_1.session.size = 10

-- Display: Session
nasdaq_phlxoptions_spreaddepth_itch_v2_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_phlxoptions_spreaddepth_itch_v2_1.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.session, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_phlxoptions_spreaddepth_itch_v2_1.side = {}

-- Size: Side
nasdaq_phlxoptions_spreaddepth_itch_v2_1.side.size = 1

-- Display: Side
nasdaq_phlxoptions_spreaddepth_itch_v2_1.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "O" then
    return "Side: Buy Market (O)"
  end
  if value == "P" then
    return "Side: Sell Market (P)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_phlxoptions_spreaddepth_itch_v2_1.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.side, range, value, display)

  return offset + length, value
end

-- Snapshot Sequence Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_sequence_number = {}

-- Size: Snapshot Sequence Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_sequence_number.size = 20

-- Display: Snapshot Sequence Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_sequence_number.display = function(value)
  return "Snapshot Sequence Number: "..value
end

-- Dissect: Snapshot Sequence Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_sequence_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.snapshot_sequence_number, range, value, display)

  return offset + length, value
end

-- Strategy Id
nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_id = {}

-- Size: Strategy Id
nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_id.size = 4

-- Display: Strategy Id
nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Strategy Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_type = {}

-- Size: Strategy Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_type.size = 1

-- Display: Strategy Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_type.display = function(value)
  if value == "V" then
    return "Strategy Type: Vertical Spread (V)"
  end
  if value == "T" then
    return "Strategy Type: Time Spread (T)"
  end
  if value == "D" then
    return "Strategy Type: Diagonal Spread (D)"
  end
  if value == "S" then
    return "Strategy Type: Straddle (S)"
  end
  if value == "G" then
    return "Strategy Type: Strangle (G)"
  end
  if value == "C" then
    return "Strategy Type: Combo (C)"
  end
  if value == "R" then
    return "Strategy Type: Risk Reversal (R)"
  end
  if value == "A" then
    return "Strategy Type: Ratio Spread (A)"
  end
  if value == "B" then
    return "Strategy Type: Box Spread (B)"
  end
  if value == "F" then
    return "Strategy Type: Butterfly Spread (F)"
  end
  if value == "U" then
    return "Strategy Type: Custom (U)"
  end

  return "Strategy Type: Unknown("..value..")"
end

-- Dissect: Strategy Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.strategy_type, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_phlxoptions_spreaddepth_itch_v2_1.text = {}

-- Size: Text
nasdaq_phlxoptions_spreaddepth_itch_v2_1.text.size = 1

-- Display: Text
nasdaq_phlxoptions_spreaddepth_itch_v2_1.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_phlxoptions_spreaddepth_itch_v2_1.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp = {}

-- Size: Timestamp
nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp.size = 8

-- Display: Timestamp
nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number = {}

-- Size: Tracking Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_phlxoptions_spreaddepth_itch_v2_1.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_phlxoptions_spreaddepth_itch_v2_1.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_phlxoptions_spreaddepth_itch_v2_1.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_phlxoptions_spreaddepth_itch_v2_1.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_phlxoptions_spreaddepth_itch_v2_1.username = {}

-- Size: Username
nasdaq_phlxoptions_spreaddepth_itch_v2_1.username.size = 6

-- Display: Username
nasdaq_phlxoptions_spreaddepth_itch_v2_1.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_phlxoptions_spreaddepth_itch_v2_1.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.username, range, value, display)

  return offset + length, value
end

-- Volume Long
nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_long = {}

-- Size: Volume Long
nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_long.size = 4

-- Display: Volume Long
nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_long.display = function(value)
  return "Volume Long: "..value
end

-- Dissect: Volume Long
nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.volume_long, range, value, display)

  return offset + length, value
end

-- Volume Short
nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_short = {}

-- Size: Volume Short
nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_short.size = 2

-- Display: Volume Short
nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_short.display = function(value)
  return "Volume Short: "..value
end

-- Dissect: Volume Short
nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.volume_short, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PhlxOptions SpreadDepth Itch 2.1
-----------------------------------------------------------------------

-- Unsequenced Data Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message
  index, unsequenced_message = nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_request_packet.size =
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.username.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.password.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_session.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_phlxoptions_spreaddepth_itch_v2_1.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_phlxoptions_spreaddepth_itch_v2_1.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_phlxoptions_spreaddepth_itch_v2_1.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_message = {}

-- Size: Snapshot Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_message.size =
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_sequence_number.size

-- Display: Snapshot Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Sequence Number: Alphanumeric
  index, snapshot_sequence_number = nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.snapshot_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Form Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_long_form_message = {}

-- Size: Add Order Long Form Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_long_form_message.size =
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_id.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_reference_number.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.side.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_capacity.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_long.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_long.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.scope.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_3.size

-- Display: Add Order Long Form Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Form Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_spreaddepth_itch_v2_1.side.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_capacity.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Scope: Alpha
  index, scope = nasdaq_phlxoptions_spreaddepth_itch_v2_1.scope.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Form Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.add_order_long_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Form Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_short_form_message = {}

-- Size: Add Order Short Form Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_short_form_message.size =
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_id.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_reference_number.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.side.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_capacity.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_short.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_short.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.scope.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_3.size

-- Display: Add Order Short Form Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Form Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_spreaddepth_itch_v2_1.side.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_phlxoptions_spreaddepth_itch_v2_1.order_capacity.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_phlxoptions_spreaddepth_itch_v2_1.price_short.dissect(buffer, index, packet, parent)

  -- Volume Short: Integer
  index, volume_short = nasdaq_phlxoptions_spreaddepth_itch_v2_1.volume_short.dissect(buffer, index, packet, parent)

  -- Scope: Alpha
  index, scope = nasdaq_phlxoptions_spreaddepth_itch_v2_1.scope.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Form Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.add_order_short_form_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Trading Action Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_trading_action_message = {}

-- Size: Strategy Trading Action Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_trading_action_message.size =
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_id.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.current_trading_state.size

-- Display: Strategy Trading Action Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trading Action Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_phlxoptions_spreaddepth_itch_v2_1.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trading Action Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.strategy_trading_action_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Information
nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_information = {}

-- Size: Leg Information
nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_information.size =
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_id.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.security_symbol.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_year.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_month.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_day.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.explicit_strike_price.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_type.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.side.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_ratio.size

-- Display: Leg Information
nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_information.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Information
nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_information.fields = function(buffer, offset, packet, parent, leg_information_index)
  local index = offset

  -- Implicit Leg Information Index
  if leg_information_index ~= nil and show.leg_information_index then
    local iteration = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.leg_information_index, leg_information_index)
    iteration:set_generated()
  end

  -- Option Id: Integer
  index, option_id = nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_phlxoptions_spreaddepth_itch_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: Integer
  index, expiration_day = nasdaq_phlxoptions_spreaddepth_itch_v2_1.expiration_day.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_phlxoptions_spreaddepth_itch_v2_1.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_phlxoptions_spreaddepth_itch_v2_1.option_type.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_phlxoptions_spreaddepth_itch_v2_1.side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Integer
  index, leg_ratio = nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Information
nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_information.dissect = function(buffer, offset, packet, parent, leg_information_index)
  if show.leg_information then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.leg_information, buffer(offset, 0))
    local index = nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_information.fields(buffer, offset, packet, parent, leg_information_index)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_information.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_information.fields(buffer, offset, packet, parent, leg_information_index)
  end
end

-- Complex Strategy Directory Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.complex_strategy_directory_message = {}

-- Calculate size of: Complex Strategy Directory Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.complex_strategy_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number.size

  index = index + nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp.size

  index = index + nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_id.size

  index = index + nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_type.size

  index = index + nasdaq_phlxoptions_spreaddepth_itch_v2_1.underlying_symbol.size

  index = index + nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_16.size

  index = index + nasdaq_phlxoptions_spreaddepth_itch_v2_1.number_of_legs.size

  -- Calculate field size from count
  local leg_information_count = buffer(offset + index - 1, 1):uint()
  index = index + leg_information_count * 25

  return index
end

-- Display: Complex Strategy Directory Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.complex_strategy_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Directory Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.complex_strategy_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Strategy Type: Alphanumeric
  index, strategy_type = nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_type.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = nasdaq_phlxoptions_spreaddepth_itch_v2_1.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_phlxoptions_spreaddepth_itch_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Integer
  index, number_of_legs = nasdaq_phlxoptions_spreaddepth_itch_v2_1.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Information
  for leg_information_index = 1, number_of_legs do
    index, leg_information = nasdaq_phlxoptions_spreaddepth_itch_v2_1.leg_information.dissect(buffer, index, packet, parent, leg_information_index)
  end

  return index
end

-- Dissect: Complex Strategy Directory Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.complex_strategy_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.complex_strategy_directory_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_spreaddepth_itch_v2_1.complex_strategy_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.complex_strategy_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.complex_strategy_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.system_event_message = {}

-- Size: System Event Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.system_event_message.size =
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.event_code.size

-- Display: System Event Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_phlxoptions_spreaddepth_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_phlxoptions_spreaddepth_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_phlxoptions_spreaddepth_itch_v2_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_phlxoptions_spreaddepth_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_message = {}

-- Dissect: Sequenced Message
nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect System Event Message
  if sequenced_message_type == "S" then
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Directory Message
  if sequenced_message_type == "s" then
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.complex_strategy_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trading Action Message
  if sequenced_message_type == "H" then
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.strategy_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Form Message
  if sequenced_message_type == "r" then
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Form Message
  if sequenced_message_type == "o" then
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.add_order_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Message
  if sequenced_message_type == "M" then
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 6 values
  index, sequenced_message_type = nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 6 branches
  index = nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_rejected_packet.size =
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_phlxoptions_spreaddepth_itch_v2_1.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_accepted_packet.size =
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.session.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequence_number.size

-- Display: Login Accepted Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_phlxoptions_spreaddepth_itch_v2_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.debug_packet = {}

-- Size: Debug Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.debug_packet.size =
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.text.size

-- Display: Debug Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_phlxoptions_spreaddepth_itch_v2_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_phlxoptions_spreaddepth_itch_v2_1.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_phlxoptions_spreaddepth_itch_v2_1.payload = {}

-- Dissect: Payload
nasdaq_phlxoptions_spreaddepth_itch_v2_1.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet Header
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_header = {}

-- Size: Packet Header
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_header.size =
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_length.size + 
  nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_type.size

-- Display: Packet Header
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Soup Bin Tcp Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.soup_bin_tcp_packet = {}

-- Display: Soup Bin Tcp Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = nasdaq_phlxoptions_spreaddepth_itch_v2_1.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset + size_of_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.soup_bin_tcp_packet then
    parent = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.fields.soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_phlxoptions_spreaddepth_itch_v2_1.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
    parent:set_len(size_of_soup_bin_tcp_packet)
    local display = nasdaq_phlxoptions_spreaddepth_itch_v2_1.soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_phlxoptions_spreaddepth_itch_v2_1.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet = {}

-- Verify size of Tcp packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissect Packet
nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_phlxoptions_spreaddepth_itch_v2_1.soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.init()
end

-- Dissector for Nasdaq PhlxOptions SpreadDepth Itch 2.1
function omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1, buffer(), omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq PhlxOptions SpreadDepth Itch 2.1 (Tcp)
local function omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_phlxoptions_spreaddepth_itch_v2_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1
  omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PhlxOptions SpreadDepth Itch 2.1
omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1:register_heuristic("tcp", omi_nasdaq_phlxoptions_spreaddepth_itch_v2_1_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.1
--   Date: Thursday, October 2, 2025
--   Specification: Options_Depth_of_Market_Spread_Glimpse_Feed.pdf
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
