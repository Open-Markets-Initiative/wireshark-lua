-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Nois Itch 2.2.2022 Protocol
local omi_nasdaq_nsmequities_nois_itch_v2_2_2022 = Proto("Nasdaq.NsmEquities.Nois.Itch.v2.2.2022.Lua", "Nasdaq NsmEquities Nois Itch 2.2.2022")

-- Protocol table
local nasdaq_nsmequities_nois_itch_v2_2_2022 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Nois Itch 2.2.2022 Fields
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nsmequities.nois.itch.v2.2.2022.crosstype", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.nsmequities.nois.itch.v2.2.2022.currentreferenceprice", ftypes.BYTES)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.nois.itch.v2.2.2022.eventcode", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nsmequities.nois.itch.v2.2.2022.imbalancedirection", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.nsmequities.nois.itch.v2.2.2022.imbalanceshares", ftypes.BYTES)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.nsmequities.nois.itch.v2.2.2022.issueclassification", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.nsmequities.nois.itch.v2.2.2022.issuesubtype", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.market_category = ProtoField.new("Market Category", "nasdaq.nsmequities.nois.itch.v2.2.2022.marketcategory", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.nois.itch.v2.2.2022.message", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.message_count = ProtoField.new("Message Count", "nasdaq.nsmequities.nois.itch.v2.2.2022.messagecount", ftypes.UINT16)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.nois.itch.v2.2.2022.messageheader", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.message_length = ProtoField.new("Message Length", "nasdaq.nsmequities.nois.itch.v2.2.2022.messagelength", ftypes.UINT16)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.nois.itch.v2.2.2022.messagetype", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.near_price = ProtoField.new("Near Price", "nasdaq.nsmequities.nois.itch.v2.2.2022.nearprice", ftypes.BYTES)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.nois.itch.v2.2.2022.packet", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.nois.itch.v2.2.2022.packetheader", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.reason = ProtoField.new("Reason", "nasdaq.nsmequities.nois.itch.v2.2.2022.reason", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.rfu = ProtoField.new("Rfu", "nasdaq.nsmequities.nois.itch.v2.2.2022.rfu", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nsmequities.nois.itch.v2.2.2022.roundlotsize", ftypes.UINT64)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.nsmequities.nois.itch.v2.2.2022.roundlotsonly", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nsmequities.nois.itch.v2.2.2022.sequencenumber", ftypes.UINT32)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.nois.itch.v2.2.2022.session", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.symbol = ProtoField.new("Symbol", "nasdaq.nsmequities.nois.itch.v2.2.2022.symbol", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.nois.itch.v2.2.2022.timestamp", ftypes.UINT64)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.trading_state = ProtoField.new("Trading State", "nasdaq.nsmequities.nois.itch.v2.2.2022.tradingstate", ftypes.STRING)

-- Nasdaq NsmEquities Itch Nois 2.2.2022 Application Messages
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.nois_message = ProtoField.new("Nois Message", "nasdaq.nsmequities.nois.itch.v2.2.2022.noismessage", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.stock_directory = ProtoField.new("Stock Directory", "nasdaq.nsmequities.nois.itch.v2.2.2022.stockdirectory", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.stock_trading_action = ProtoField.new("Stock Trading Action", "nasdaq.nsmequities.nois.itch.v2.2.2022.stocktradingaction", ftypes.STRING)
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.nois.itch.v2.2.2022.systemeventmessage", ftypes.STRING)

-- Nasdaq NsmEquities Nois Itch 2.2.2022 generated fields
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.message_index = ProtoField.new("Message Index", "nasdaq.nsmequities.nois.itch.v2.2.2022.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NsmEquities Nois Itch 2.2.2022 Element Dissection Options
show.message = true
show.message_header = true
show.application_messages = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Nasdaq NsmEquities Nois Itch 2.2.2022 Show Options
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_application_messages
  end
  if show.message ~= omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_message then
    show.message = omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_message
  end
  if show.message_header ~= omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_message_header then
    show.message_header = omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_message_header
  end
  if show.packet ~= omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_packet then
    show.packet = omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_packet
  end
  if show.packet_header ~= omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_packet_header
  end
  if show.message_index ~= omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_message_index then
    show.message_index = omi_nasdaq_nsmequities_nois_itch_v2_2_2022.prefs.show_message_index
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
-- Nasdaq NsmEquities Nois Itch 2.2.2022 Fields
-----------------------------------------------------------------------

-- Cross Type
nasdaq_nsmequities_nois_itch_v2_2_2022.cross_type = {}

-- Size: Cross Type
nasdaq_nsmequities_nois_itch_v2_2_2022.cross_type.size = 1

-- Display: Cross Type
nasdaq_nsmequities_nois_itch_v2_2_2022.cross_type.display = function(value)
  if value == "O" then
    return "Cross Type: Open Cross (O)"
  end
  if value == "C" then
    return "Cross Type: Close Cross (C)"
  end
  if value == "H" then
    return "Cross Type: Ipo Halt Cross (H)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_nsmequities_nois_itch_v2_2_2022.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Reference Price
nasdaq_nsmequities_nois_itch_v2_2_2022.current_reference_price = {}

-- Size: Current Reference Price
nasdaq_nsmequities_nois_itch_v2_2_2022.current_reference_price.size = 10

-- Display: Current Reference Price
nasdaq_nsmequities_nois_itch_v2_2_2022.current_reference_price.display = function(value)
  return "Current Reference Price: "..value
end

-- Dissect: Current Reference Price
nasdaq_nsmequities_nois_itch_v2_2_2022.current_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.current_reference_price.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.current_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nsmequities_nois_itch_v2_2_2022.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_nois_itch_v2_2_2022.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_nois_itch_v2_2_2022.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours (Q)"
  end
  if value == "M" then
    return "Event Code: End Of Market Hours (M)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nsmequities_nois_itch_v2_2_2022.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.event_code, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_direction.display = function(value)
  if value == "B" then
    return "Imbalance Direction: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell (S)"
  end
  if value == "N" then
    return "Imbalance Direction: No Imbalance (N)"
  end
  if value == "O" then
    return "Imbalance Direction: Insufficient (O)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Shares
nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_shares = {}

-- Size: Imbalance Shares
nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_shares.size = 9

-- Display: Imbalance Shares
nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_shares.display = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_shares.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_nsmequities_nois_itch_v2_2_2022.issue_classification = {}

-- Size: Issue Classification
nasdaq_nsmequities_nois_itch_v2_2_2022.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_nsmequities_nois_itch_v2_2_2022.issue_classification.display = function(value)
  if value == "A" then
    return "Issue Classification: American Depositary Share (A)"
  end
  if value == "B" then
    return "Issue Classification: Bond (B)"
  end
  if value == "C" then
    return "Issue Classification: Common Stock (C)"
  end
  if value == "F" then
    return "Issue Classification: Depository Receipt (F)"
  end
  if value == "I" then
    return "Issue Classification: 144 A (I)"
  end
  if value == "L" then
    return "Issue Classification: Limited Partnership (L)"
  end
  if value == "N" then
    return "Issue Classification: Notes (N)"
  end
  if value == "O" then
    return "Issue Classification: Ordinary Share (O)"
  end
  if value == "P" then
    return "Issue Classification: Preferred Stock (P)"
  end
  if value == "Q" then
    return "Issue Classification: Other Securities (Q)"
  end
  if value == "R" then
    return "Issue Classification: Right (R)"
  end
  if value == "S" then
    return "Issue Classification: Shares Of Beneficial Interest (S)"
  end
  if value == "T" then
    return "Issue Classification: Convertible Debenture (T)"
  end
  if value == "U" then
    return "Issue Classification: Unit (U)"
  end
  if value == "V" then
    return "Issue Classification: Units Benif Int (V)"
  end
  if value == "W" then
    return "Issue Classification: Warrant (W)"
  end

  return "Issue Classification: Unknown("..value..")"
end

-- Dissect: Issue Classification
nasdaq_nsmequities_nois_itch_v2_2_2022.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_nsmequities_nois_itch_v2_2_2022.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_nsmequities_nois_itch_v2_2_2022.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_nsmequities_nois_itch_v2_2_2022.issue_sub_type.display = function(value)
  if value == "A" then
    return "Issue Sub Type: Preferred Trust Securities (A)"
  end
  if value == "AI" then
    return "Issue Sub Type: Alpha Index Et Ns (AI)"
  end
  if value == "B" then
    return "Issue Sub Type: Index Based Derivative (B)"
  end
  if value == "C" then
    return "Issue Sub Type: Common Shares (C)"
  end
  if value == "CB" then
    return "Issue Sub Type: Commodity Based Trust Shares (CB)"
  end
  if value == "CF" then
    return "Issue Sub Type: Commodity Futures Trust Shares (CF)"
  end
  if value == "CL" then
    return "Issue Sub Type: Commodity Linked Securities (CL)"
  end
  if value == "CM" then
    return "Issue Sub Type: Commodity Index Trust Shares (CM)"
  end
  if value == "CO" then
    return "Issue Sub Type: Collateralized Mortgage Obligation (CO)"
  end
  if value == "CT" then
    return "Issue Sub Type: Currency Trust Shares (CT)"
  end
  if value == "CU" then
    return "Issue Sub Type: Commodity Currency Linked Securities (CU)"
  end
  if value == "CW" then
    return "Issue Sub Type: Currency Warrants (CW)"
  end
  if value == "D" then
    return "Issue Sub Type: Global Depositary Shares (D)"
  end
  if value == "E" then
    return "Issue Sub Type: Etf Portfolio Depositary Receipt (E)"
  end
  if value == "EG" then
    return "Issue Sub Type: Equity Gold Shares (EG)"
  end
  if value == "EI" then
    return "Issue Sub Type: Etn Equity Index Linked Securities (EI)"
  end
  if value == "EM" then
    return "Issue Sub Type: Next Shares Exchange Traded Managed Fund (EM)"
  end
  if value == "EN" then
    return "Issue Sub Type: Exchange Traded Notes (EN)"
  end
  if value == "EU" then
    return "Issue Sub Type: Equity Units (EU)"
  end
  if value == "F" then
    return "Issue Sub Type: Holdrs (F)"
  end
  if value == "FI" then
    return "Issue Sub Type: Etn Fixed Income Linked Securities (FI)"
  end
  if value == "FL" then
    return "Issue Sub Type: Etn Futures Linked Securities (FL)"
  end
  if value == "G" then
    return "Issue Sub Type: Global Shares (G)"
  end
  if value == "I" then
    return "Issue Sub Type: Etf Index Fund Shares (I)"
  end
  if value == "IR" then
    return "Issue Sub Type: Interest Rate (IR)"
  end
  if value == "IW" then
    return "Issue Sub Type: Index Warrant (IW)"
  end
  if value == "IX" then
    return "Issue Sub Type: Index Linked Exchangeable Notes (IX)"
  end
  if value == "J" then
    return "Issue Sub Type: Corporate Backed Trust Security (J)"
  end
  if value == "L" then
    return "Issue Sub Type: Contingent Litigation Right (L)"
  end
  if value == "LL" then
    return "Issue Sub Type: Limited Liability Company (LL)"
  end
  if value == "M" then
    return "Issue Sub Type: Equity Based Derivative (M)"
  end
  if value == "MF" then
    return "Issue Sub Type: Managed Fund Shares (MF)"
  end
  if value == "ML" then
    return "Issue Sub Type: Etn Multi Factor Index Linked Securities (ML)"
  end
  if value == "MT" then
    return "Issue Sub Type: Managed Trust Securities (MT)"
  end
  if value == "N" then
    return "Issue Sub Type: Ny Registry Shares (N)"
  end
  if value == "O" then
    return "Issue Sub Type: Open Ended Mutual Fund (O)"
  end
  if value == "P" then
    return "Issue Sub Type: Privately Held Security (P)"
  end
  if value == "PP" then
    return "Issue Sub Type: Poison Pill (PP)"
  end
  if value == "PU" then
    return "Issue Sub Type: Partnership Units (PU)"
  end
  if value == "Q" then
    return "Issue Sub Type: Closed End Funds (Q)"
  end
  if value == "R" then
    return "Issue Sub Type: Reg S (R)"
  end
  if value == "RC" then
    return "Issue Sub Type: Commodity Redeemable Commodity Linked Securities (RC)"
  end
  if value == "RF" then
    return "Issue Sub Type: Etn Redeemable Futures Linked Securities (RF)"
  end
  if value == "RT" then
    return "Issue Sub Type: Reit (RT)"
  end
  if value == "RU" then
    return "Issue Sub Type: Commodity Redeemable Currency Linked Securities (RU)"
  end
  if value == "S" then
    return "Issue Sub Type: Seed (S)"
  end
  if value == "SC" then
    return "Issue Sub Type: Spot Rate Closing (SC)"
  end
  if value == "SI" then
    return "Issue Sub Type: Spot Rate Intraday (SI)"
  end
  if value == "T" then
    return "Issue Sub Type: Tracking Stock (T)"
  end
  if value == "TC" then
    return "Issue Sub Type: Trust Certificates (TC)"
  end
  if value == "TU" then
    return "Issue Sub Type: Trust Units (TU)"
  end
  if value == "U" then
    return "Issue Sub Type: Portal (U)"
  end
  if value == "V" then
    return "Issue Sub Type: Contingent Value Right (V)"
  end
  if value == "W" then
    return "Issue Sub Type: Trust Issued Receipts (W)"
  end
  if value == "WC" then
    return "Issue Sub Type: World Currency Option (WC)"
  end
  if value == "X" then
    return "Issue Sub Type: Trust (X)"
  end
  if value == "Y" then
    return "Issue Sub Type: Other (Y)"
  end
  if value == "Z" then
    return "Issue Sub Type: Not Applicable (Z)"
  end

  return "Issue Sub Type: Unknown("..value..")"
end

-- Dissect: Issue Sub Type
nasdaq_nsmequities_nois_itch_v2_2_2022.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_nsmequities_nois_itch_v2_2_2022.market_category = {}

-- Size: Market Category
nasdaq_nsmequities_nois_itch_v2_2_2022.market_category.size = 1

-- Display: Market Category
nasdaq_nsmequities_nois_itch_v2_2_2022.market_category.display = function(value)
  if value == "Q" then
    return "Market Category: Nasdaq Global Select Market (Q)"
  end
  if value == "G" then
    return "Market Category: Nasdaq Global Market (G)"
  end
  if value == "S" then
    return "Market Category: Nasdaq Capital Market (S)"
  end
  if value == "N" then
    return "Market Category: New York Stock Exchange (N)"
  end
  if value == "A" then
    return "Market Category: Nyse Amex (A)"
  end
  if value == "P" then
    return "Market Category: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Market Category: Bats Z Exchange (Z)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_nsmequities_nois_itch_v2_2_2022.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.market_category, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nsmequities_nois_itch_v2_2_2022.message_count = {}

-- Size: Message Count
nasdaq_nsmequities_nois_itch_v2_2_2022.message_count.size = 2

-- Display: Message Count
nasdaq_nsmequities_nois_itch_v2_2_2022.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nsmequities_nois_itch_v2_2_2022.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nsmequities_nois_itch_v2_2_2022.message_length = {}

-- Size: Message Length
nasdaq_nsmequities_nois_itch_v2_2_2022.message_length.size = 2

-- Display: Message Length
nasdaq_nsmequities_nois_itch_v2_2_2022.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nsmequities_nois_itch_v2_2_2022.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nsmequities_nois_itch_v2_2_2022.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_nois_itch_v2_2_2022.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_nois_itch_v2_2_2022.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "R" then
    return "Message Type: Stock Directory (R)"
  end
  if value == "H" then
    return "Message Type: Stock Trading Action (H)"
  end
  if value == "I" then
    return "Message Type: Nois Message (I)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_nois_itch_v2_2_2022.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.message_type, range, value, display)

  return offset + length, value
end

-- Near Price
nasdaq_nsmequities_nois_itch_v2_2_2022.near_price = {}

-- Size: Near Price
nasdaq_nsmequities_nois_itch_v2_2_2022.near_price.size = 10

-- Display: Near Price
nasdaq_nsmequities_nois_itch_v2_2_2022.near_price.display = function(value)
  return "Near Price: "..value
end

-- Dissect: Near Price
nasdaq_nsmequities_nois_itch_v2_2_2022.near_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.near_price.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.near_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.near_price, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_nsmequities_nois_itch_v2_2_2022.reason = {}

-- Size: Reason
nasdaq_nsmequities_nois_itch_v2_2_2022.reason.size = 1

-- Display: Reason
nasdaq_nsmequities_nois_itch_v2_2_2022.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_nsmequities_nois_itch_v2_2_2022.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.reason, range, value, display)

  return offset + length, value
end

-- Rfu
nasdaq_nsmequities_nois_itch_v2_2_2022.rfu = {}

-- Size: Rfu
nasdaq_nsmequities_nois_itch_v2_2_2022.rfu.size = 1

-- Display: Rfu
nasdaq_nsmequities_nois_itch_v2_2_2022.rfu.display = function(value)
  return "Rfu: "..value
end

-- Dissect: Rfu
nasdaq_nsmequities_nois_itch_v2_2_2022.rfu.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.rfu.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.rfu.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.rfu, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nsmequities_nois_itch_v2_2_2022.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nsmequities_nois_itch_v2_2_2022.round_lot_size.size = 6

-- Display: Round Lot Size
nasdaq_nsmequities_nois_itch_v2_2_2022.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nsmequities_nois_itch_v2_2_2022.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_nsmequities_nois_itch_v2_2_2022.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_nsmequities_nois_itch_v2_2_2022.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_nsmequities_nois_itch_v2_2_2022.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No Restrictions (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_nsmequities_nois_itch_v2_2_2022.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nsmequities_nois_itch_v2_2_2022.sequence_number = {}

-- Size: Sequence Number
nasdaq_nsmequities_nois_itch_v2_2_2022.sequence_number.size = 4

-- Display: Sequence Number
nasdaq_nsmequities_nois_itch_v2_2_2022.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nsmequities_nois_itch_v2_2_2022.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_nois_itch_v2_2_2022.session = {}

-- Size: Session
nasdaq_nsmequities_nois_itch_v2_2_2022.session.size = 10

-- Display: Session
nasdaq_nsmequities_nois_itch_v2_2_2022.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_nois_itch_v2_2_2022.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.session.size
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

  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.session, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_nsmequities_nois_itch_v2_2_2022.symbol = {}

-- Size: Symbol
nasdaq_nsmequities_nois_itch_v2_2_2022.symbol.size = 8

-- Display: Symbol
nasdaq_nsmequities_nois_itch_v2_2_2022.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_nsmequities_nois_itch_v2_2_2022.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nsmequities_nois_itch_v2_2_2022.timestamp = {}

-- Size: Timestamp
nasdaq_nsmequities_nois_itch_v2_2_2022.timestamp.size = 8

-- Display: Timestamp
nasdaq_nsmequities_nois_itch_v2_2_2022.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_nsmequities_nois_itch_v2_2_2022.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_nsmequities_nois_itch_v2_2_2022.trading_state = {}

-- Size: Trading State
nasdaq_nsmequities_nois_itch_v2_2_2022.trading_state.size = 1

-- Display: Trading State
nasdaq_nsmequities_nois_itch_v2_2_2022.trading_state.display = function(value)
  if value == "H" then
    return "Trading State: Halted (H)"
  end
  if value == "P" then
    return "Trading State: Paused (P)"
  end
  if value == "Q" then
    return "Trading State: Quotation Only (Q)"
  end
  if value == "T" then
    return "Trading State: Trading (T)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_nsmequities_nois_itch_v2_2_2022.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_nois_itch_v2_2_2022.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_nois_itch_v2_2_2022.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.trading_state, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities Nois Itch 2.2.2022
-----------------------------------------------------------------------

-- Nois Message
nasdaq_nsmequities_nois_itch_v2_2_2022.nois_message = {}

-- Size: Nois Message
nasdaq_nsmequities_nois_itch_v2_2_2022.nois_message.size =
  nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_shares.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_direction.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.symbol.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.near_price.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.current_reference_price.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.cross_type.size

-- Display: Nois Message
nasdaq_nsmequities_nois_itch_v2_2_2022.nois_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nois Message
nasdaq_nsmequities_nois_itch_v2_2_2022.nois_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Imbalance Shares: Integer
  index, imbalance_shares = nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Alpha
  index, imbalance_direction = nasdaq_nsmequities_nois_itch_v2_2_2022.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nasdaq_nsmequities_nois_itch_v2_2_2022.symbol.dissect(buffer, index, packet, parent)

  -- Near Price: Price
  index, near_price = nasdaq_nsmequities_nois_itch_v2_2_2022.near_price.dissect(buffer, index, packet, parent)

  -- Current Reference Price: Price
  index, current_reference_price = nasdaq_nsmequities_nois_itch_v2_2_2022.current_reference_price.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nsmequities_nois_itch_v2_2_2022.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Nois Message
nasdaq_nsmequities_nois_itch_v2_2_2022.nois_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.nois_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_nois_itch_v2_2_2022.nois_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_nois_itch_v2_2_2022.nois_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_nois_itch_v2_2_2022.nois_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action
nasdaq_nsmequities_nois_itch_v2_2_2022.stock_trading_action = {}

-- Size: Stock Trading Action
nasdaq_nsmequities_nois_itch_v2_2_2022.stock_trading_action.size =
  nasdaq_nsmequities_nois_itch_v2_2_2022.symbol.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.trading_state.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.reason.size

-- Display: Stock Trading Action
nasdaq_nsmequities_nois_itch_v2_2_2022.stock_trading_action.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action
nasdaq_nsmequities_nois_itch_v2_2_2022.stock_trading_action.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha
  index, symbol = nasdaq_nsmequities_nois_itch_v2_2_2022.symbol.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = nasdaq_nsmequities_nois_itch_v2_2_2022.trading_state.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = nasdaq_nsmequities_nois_itch_v2_2_2022.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action
nasdaq_nsmequities_nois_itch_v2_2_2022.stock_trading_action.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.stock_trading_action, buffer(offset, 0))
    local index = nasdaq_nsmequities_nois_itch_v2_2_2022.stock_trading_action.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_nois_itch_v2_2_2022.stock_trading_action.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_nois_itch_v2_2_2022.stock_trading_action.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory
nasdaq_nsmequities_nois_itch_v2_2_2022.stock_directory = {}

-- Size: Stock Directory
nasdaq_nsmequities_nois_itch_v2_2_2022.stock_directory.size =
  nasdaq_nsmequities_nois_itch_v2_2_2022.symbol.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.market_category.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.rfu.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.round_lot_size.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.round_lots_only.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.issue_classification.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.issue_sub_type.size

-- Display: Stock Directory
nasdaq_nsmequities_nois_itch_v2_2_2022.stock_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory
nasdaq_nsmequities_nois_itch_v2_2_2022.stock_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha
  index, symbol = nasdaq_nsmequities_nois_itch_v2_2_2022.symbol.dissect(buffer, index, packet, parent)

  -- Market Category: Alpha
  index, market_category = nasdaq_nsmequities_nois_itch_v2_2_2022.market_category.dissect(buffer, index, packet, parent)

  -- Rfu: Alpha
  index, rfu = nasdaq_nsmequities_nois_itch_v2_2_2022.rfu.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_nsmequities_nois_itch_v2_2_2022.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alpha
  index, round_lots_only = nasdaq_nsmequities_nois_itch_v2_2_2022.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: Alpha
  index, issue_classification = nasdaq_nsmequities_nois_itch_v2_2_2022.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: Alpha
  index, issue_sub_type = nasdaq_nsmequities_nois_itch_v2_2_2022.issue_sub_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory
nasdaq_nsmequities_nois_itch_v2_2_2022.stock_directory.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.stock_directory, buffer(offset, 0))
    local index = nasdaq_nsmequities_nois_itch_v2_2_2022.stock_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_nois_itch_v2_2_2022.stock_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_nois_itch_v2_2_2022.stock_directory.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nsmequities_nois_itch_v2_2_2022.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_nois_itch_v2_2_2022.system_event_message.size =
  nasdaq_nsmequities_nois_itch_v2_2_2022.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_nois_itch_v2_2_2022.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_nois_itch_v2_2_2022.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Code: Alpha
  index, event_code = nasdaq_nsmequities_nois_itch_v2_2_2022.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_nois_itch_v2_2_2022.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_nois_itch_v2_2_2022.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_nois_itch_v2_2_2022.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_nois_itch_v2_2_2022.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nsmequities_nois_itch_v2_2_2022.payload = {}

-- Dissect: Payload
nasdaq_nsmequities_nois_itch_v2_2_2022.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_nois_itch_v2_2_2022.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory
  if message_type == "R" then
    return nasdaq_nsmequities_nois_itch_v2_2_2022.stock_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action
  if message_type == "H" then
    return nasdaq_nsmequities_nois_itch_v2_2_2022.stock_trading_action.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Nois Message
  if message_type == "I" then
    return nasdaq_nsmequities_nois_itch_v2_2_2022.nois_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nsmequities_nois_itch_v2_2_2022.message_header = {}

-- Size: Message Header
nasdaq_nsmequities_nois_itch_v2_2_2022.message_header.size =
  nasdaq_nsmequities_nois_itch_v2_2_2022.message_length.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.timestamp.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.message_type.size

-- Display: Message Header
nasdaq_nsmequities_nois_itch_v2_2_2022.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_nois_itch_v2_2_2022.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nsmequities_nois_itch_v2_2_2022.message_length.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_nois_itch_v2_2_2022.timestamp.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 4 values
  index, message_type = nasdaq_nsmequities_nois_itch_v2_2_2022.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_nois_itch_v2_2_2022.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_nois_itch_v2_2_2022.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_nois_itch_v2_2_2022.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_nois_itch_v2_2_2022.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nsmequities_nois_itch_v2_2_2022.message = {}

-- Read runtime size of: Message
nasdaq_nsmequities_nois_itch_v2_2_2022.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nsmequities_nois_itch_v2_2_2022.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_nois_itch_v2_2_2022.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = nasdaq_nsmequities_nois_itch_v2_2_2022.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 4 branches
  index = nasdaq_nsmequities_nois_itch_v2_2_2022.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_nois_itch_v2_2_2022.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nsmequities_nois_itch_v2_2_2022.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.message, buffer(offset, 0))
    local current = nasdaq_nsmequities_nois_itch_v2_2_2022.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nsmequities_nois_itch_v2_2_2022.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_nois_itch_v2_2_2022.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
nasdaq_nsmequities_nois_itch_v2_2_2022.messages = {}

-- Dissect: Messages
nasdaq_nsmequities_nois_itch_v2_2_2022.messages.dissect = function(buffer, offset, packet, parent, message_count)
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

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nsmequities_nois_itch_v2_2_2022.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
nasdaq_nsmequities_nois_itch_v2_2_2022.packet_header = {}

-- Size: Packet Header
nasdaq_nsmequities_nois_itch_v2_2_2022.packet_header.size =
  nasdaq_nsmequities_nois_itch_v2_2_2022.session.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.sequence_number.size + 
  nasdaq_nsmequities_nois_itch_v2_2_2022.message_count.size

-- Display: Packet Header
nasdaq_nsmequities_nois_itch_v2_2_2022.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_nois_itch_v2_2_2022.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_nois_itch_v2_2_2022.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nsmequities_nois_itch_v2_2_2022.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nsmequities_nois_itch_v2_2_2022.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_nois_itch_v2_2_2022.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_nois_itch_v2_2_2022.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_nois_itch_v2_2_2022.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_nois_itch_v2_2_2022.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nsmequities_nois_itch_v2_2_2022.packet = {}

-- Verify required size of Udp packet
nasdaq_nsmequities_nois_itch_v2_2_2022.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_nois_itch_v2_2_2022.packet_header.size
end

-- Dissect Packet
nasdaq_nsmequities_nois_itch_v2_2_2022.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_nois_itch_v2_2_2022.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nsmequities_nois_itch_v2_2_2022.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nsmequities_nois_itch_v2_2_2022.init()
end

-- Dissector for Nasdaq NsmEquities Nois Itch 2.2.2022
function omi_nasdaq_nsmequities_nois_itch_v2_2_2022.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_nois_itch_v2_2_2022.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_nois_itch_v2_2_2022, buffer(), omi_nasdaq_nsmequities_nois_itch_v2_2_2022.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_nois_itch_v2_2_2022.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NsmEquities Nois Itch 2.2.2022 (Udp)
local function omi_nasdaq_nsmequities_nois_itch_v2_2_2022_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_nois_itch_v2_2_2022.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_nois_itch_v2_2_2022
  omi_nasdaq_nsmequities_nois_itch_v2_2_2022.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities Nois Itch 2.2.2022
omi_nasdaq_nsmequities_nois_itch_v2_2_2022:register_heuristic("udp", omi_nasdaq_nsmequities_nois_itch_v2_2_2022_udp_heuristic)

-- Register Nasdaq NsmEquities Nois Itch 2.2.2022 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_nsmequities_nois_itch_v2_2_2022)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.2.2022
--   Date: Monday, June 23, 2025
--   Specification: NOIS_v2.2.pdf
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
