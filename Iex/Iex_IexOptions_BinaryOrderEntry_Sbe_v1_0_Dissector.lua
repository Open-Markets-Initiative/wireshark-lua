-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Iex IexOptions BinaryOrderEntry Sbe 1.0 Protocol
local omi_iex_iexoptions_binaryorderentry_sbe_v1_0 = Proto("Omi.Iex.IexOptions.BinaryOrderEntry.Sbe.v1.0", "Iex IexOptions BinaryOrderEntry Sbe 1.0")

-- Protocol table
local iex_iexoptions_binaryorderentry_sbe_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Iex IexOptions BinaryOrderEntry Sbe 1.0 Fields
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.account_account = ProtoField.new("Account Account", "iex.iexoptions.binaryorderentry.sbe.v1.0.accountaccount", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.account_string_16 = ProtoField.new("Account string 16", "iex.iexoptions.binaryorderentry.sbe.v1.0.accountstring16", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.ack_style_mass_cancel_ack_style = ProtoField.new("Ack Style Mass Cancel Ack Style", "iex.iexoptions.binaryorderentry.sbe.v1.0.ackstylemasscancelackstyle", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.ack_style_purge_request_ack_style = ProtoField.new("Ack Style Purge Request Ack Style", "iex.iexoptions.binaryorderentry.sbe.v1.0.ackstylepurgerequestackstyle", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.ack_type = ProtoField.new("Ack Type", "iex.iexoptions.binaryorderentry.sbe.v1.0.acktype", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.aiq = ProtoField.new("Aiq", "iex.iexoptions.binaryorderentry.sbe.v1.0.aiq", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.aiq_default = ProtoField.new("Aiq Default", "iex.iexoptions.binaryorderentry.sbe.v1.0.aiqdefault", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.allow_iso_day = ProtoField.new("Allow Iso Day", "iex.iexoptions.binaryorderentry.sbe.v1.0.allowisoday", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.allow_isoioc = ProtoField.new("Allow Isoioc", "iex.iexoptions.binaryorderentry.sbe.v1.0.allowisoioc", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.allow_market_orders = ProtoField.new("Allow Market Orders", "iex.iexoptions.binaryorderentry.sbe.v1.0.allowmarketorders", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.appointment_status = ProtoField.new("Appointment Status", "iex.iexoptions.binaryorderentry.sbe.v1.0.appointmentstatus", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.appointment_type = ProtoField.new("Appointment Type", "iex.iexoptions.binaryorderentry.sbe.v1.0.appointmenttype", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.attributed_quote = ProtoField.new("Attributed Quote", "iex.iexoptions.binaryorderentry.sbe.v1.0.attributedquote", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.auction_id = ProtoField.new("Auction Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.auctionid", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.block_length = ProtoField.new("Block Length", "iex.iexoptions.binaryorderentry.sbe.v1.0.blocklength", ftypes.UINT16)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.block_length_uint_8 = ProtoField.new("Block Length uint 8", "iex.iexoptions.binaryorderentry.sbe.v1.0.blocklengthuint8", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.blocked_by_breach_indicator = ProtoField.new("Blocked By Breach Indicator", "iex.iexoptions.binaryorderentry.sbe.v1.0.blockedbybreachindicator", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.bulk_action = ProtoField.new("Bulk Action", "iex.iexoptions.binaryorderentry.sbe.v1.0.bulkaction", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.bulk_quote_ack_message_quote_acks_group = ProtoField.new("Bulk Quote Ack Message quote Acks Group", "iex.iexoptions.binaryorderentry.sbe.v1.0.bulkquoteackmessagequoteacksgroup", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.bulk_quote_ack_message_quote_acks_groups = ProtoField.new("Bulk Quote Ack Message quote Acks Groups", "iex.iexoptions.binaryorderentry.sbe.v1.0.bulkquoteackmessagequoteacksgroups", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.bust_or_correction = ProtoField.new("Bust Or Correction", "iex.iexoptions.binaryorderentry.sbe.v1.0.bustorcorrection", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cancel_count = ProtoField.new("Cancel Count", "iex.iexoptions.binaryorderentry.sbe.v1.0.cancelcount", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cancel_instead_of_slide_cancel_instead_of_slide = ProtoField.new("Cancel Instead Of Slide Cancel Instead Of Slide", "iex.iexoptions.binaryorderentry.sbe.v1.0.cancelinsteadofslidecancelinsteadofslide", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cancel_instead_of_slide_cancel_instead_of_slide_optional = ProtoField.new("Cancel Instead Of Slide Cancel Instead Of Slide optional", "iex.iexoptions.binaryorderentry.sbe.v1.0.cancelinsteadofslidecancelinsteadofslideoptional", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cancel_on_disconnect = ProtoField.new("Cancel On Disconnect", "iex.iexoptions.binaryorderentry.sbe.v1.0.cancelondisconnect", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.clordid", ftypes.UINT64)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.clearing_account = ProtoField.new("Clearing Account", "iex.iexoptions.binaryorderentry.sbe.v1.0.clearingaccount", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.clearing_firm = ProtoField.new("Clearing Firm", "iex.iexoptions.binaryorderentry.sbe.v1.0.clearingfirm", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.closing_only = ProtoField.new("Closing Only", "iex.iexoptions.binaryorderentry.sbe.v1.0.closingonly", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.contra_clearing_account = ProtoField.new("Contra Clearing Account", "iex.iexoptions.binaryorderentry.sbe.v1.0.contraclearingaccount", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.contra_clearing_firm = ProtoField.new("Contra Clearing Firm", "iex.iexoptions.binaryorderentry.sbe.v1.0.contraclearingfirm", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.contra_customer_or_firm = ProtoField.new("Contra Customer Or Firm", "iex.iexoptions.binaryorderentry.sbe.v1.0.contracustomerorfirm", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.contra_mpid = ProtoField.new("Contra Mpid", "iex.iexoptions.binaryorderentry.sbe.v1.0.contrampid", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.contra_occ_id = ProtoField.new("Contra Occ Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.contraoccid", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.contra_open_close = ProtoField.new("Contra Open Close", "iex.iexoptions.binaryorderentry.sbe.v1.0.contraopenclose", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.count_limit = ProtoField.new("Count Limit", "iex.iexoptions.binaryorderentry.sbe.v1.0.countlimit", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cum_qty = ProtoField.new("Cum Qty", "iex.iexoptions.binaryorderentry.sbe.v1.0.cumqty", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cust_capacity_weight_uint_8 = ProtoField.new("Cust Capacity Weight uint 8", "iex.iexoptions.binaryorderentry.sbe.v1.0.custcapacityweightuint8", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cust_capacity_weight_uint_8_optional = ProtoField.new("Cust Capacity Weight uint 8 optional", "iex.iexoptions.binaryorderentry.sbe.v1.0.custcapacityweightuint8optional", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.custom_group_id_uint_16 = ProtoField.new("Custom Group Id uint 16", "iex.iexoptions.binaryorderentry.sbe.v1.0.customgroupiduint16", ftypes.UINT16)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.custom_group_id_uint_16_optional = ProtoField.new("Custom Group Id uint 16 optional", "iex.iexoptions.binaryorderentry.sbe.v1.0.customgroupiduint16optional", ftypes.UINT16)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.custom_group_ids_group_encoding = ProtoField.new("Custom Group Ids Group Encoding", "iex.iexoptions.binaryorderentry.sbe.v1.0.customgroupidsgroupencoding", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.customer_or_firm = ProtoField.new("Customer Or Firm", "iex.iexoptions.binaryorderentry.sbe.v1.0.customerorfirm", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.default_account = ProtoField.new("Default Account", "iex.iexoptions.binaryorderentry.sbe.v1.0.defaultaccount", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.default_attributed_quote = ProtoField.new("Default Attributed Quote", "iex.iexoptions.binaryorderentry.sbe.v1.0.defaultattributedquote", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.default_cancel_instead_of_slide = ProtoField.new("Default Cancel Instead Of Slide", "iex.iexoptions.binaryorderentry.sbe.v1.0.defaultcancelinsteadofslide", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.default_clearing_account = ProtoField.new("Default Clearing Account", "iex.iexoptions.binaryorderentry.sbe.v1.0.defaultclearingaccount", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.default_mpid = ProtoField.new("Default Mpid", "iex.iexoptions.binaryorderentry.sbe.v1.0.defaultmpid", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.default_optional_data = ProtoField.new("Default Optional Data", "iex.iexoptions.binaryorderentry.sbe.v1.0.defaultoptionaldata", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.delta = ProtoField.new("Delta", "iex.iexoptions.binaryorderentry.sbe.v1.0.delta", ftypes.FLOAT)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.display_inst = ProtoField.new("Display Inst", "iex.iexoptions.binaryorderentry.sbe.v1.0.displayinst", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.display_price = ProtoField.new("Display Price", "iex.iexoptions.binaryorderentry.sbe.v1.0.displayprice", ftypes.DOUBLE)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.effective_limit_price = ProtoField.new("Effective Limit Price", "iex.iexoptions.binaryorderentry.sbe.v1.0.effectivelimitprice", ftypes.DOUBLE)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.end_sequence = ProtoField.new("End Sequence", "iex.iexoptions.binaryorderentry.sbe.v1.0.endsequence", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.exec_id = ProtoField.new("Exec Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.execid", ftypes.UINT64)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.exec_inst = ProtoField.new("Exec Inst", "iex.iexoptions.binaryorderentry.sbe.v1.0.execinst", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.fee_code = ProtoField.new("Fee Code", "iex.iexoptions.binaryorderentry.sbe.v1.0.feecode", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.gateway_heartbeat_message_sub_sessions_group = ProtoField.new("Gateway Heartbeat Message Sub Sessions Group", "iex.iexoptions.binaryorderentry.sbe.v1.0.gatewayheartbeatmessagesubsessionsgroup", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.gateway_heartbeat_message_sub_sessions_groups = ProtoField.new("Gateway Heartbeat Message Sub Sessions Groups", "iex.iexoptions.binaryorderentry.sbe.v1.0.gatewayheartbeatmessagesubsessionsgroups", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.instrument_id_instrument_id = ProtoField.new("Instrument Id Instrument Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.instrumentidinstrumentid", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.instrument_id_uint_32 = ProtoField.new("Instrument Id uint 32", "iex.iexoptions.binaryorderentry.sbe.v1.0.instrumentiduint32", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.ioc_attribution = ProtoField.new("Ioc Attribution", "iex.iexoptions.binaryorderentry.sbe.v1.0.iocattribution", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.joined = ProtoField.new("Joined", "iex.iexoptions.binaryorderentry.sbe.v1.0.joined", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.keep_alive = ProtoField.new("Keep Alive", "iex.iexoptions.binaryorderentry.sbe.v1.0.keepalive", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.last_px = ProtoField.new("Last Px", "iex.iexoptions.binaryorderentry.sbe.v1.0.lastpx", ftypes.DOUBLE)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.last_qty = ProtoField.new("Last Qty", "iex.iexoptions.binaryorderentry.sbe.v1.0.lastqty", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.leaves_qty = ProtoField.new("Leaves Qty", "iex.iexoptions.binaryorderentry.sbe.v1.0.leavesqty", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.logon_id = ProtoField.new("Logon Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.logonid", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.market_participant_id = ProtoField.new("Market Participant Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.marketparticipantid", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.matching_unit = ProtoField.new("Matching Unit", "iex.iexoptions.binaryorderentry.sbe.v1.0.matchingunit", ftypes.INT16)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.maturity_date = ProtoField.new("Maturity Date", "iex.iexoptions.binaryorderentry.sbe.v1.0.maturitydate", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.max_allowable_width = ProtoField.new("Max Allowable Width", "iex.iexoptions.binaryorderentry.sbe.v1.0.maxallowablewidth", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.max_duplicative = ProtoField.new("Max Duplicative", "iex.iexoptions.binaryorderentry.sbe.v1.0.maxduplicative", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.max_notional = ProtoField.new("Max Notional", "iex.iexoptions.binaryorderentry.sbe.v1.0.maxnotional", ftypes.DOUBLE)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.max_qty = ProtoField.new("Max Qty", "iex.iexoptions.binaryorderentry.sbe.v1.0.maxqty", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.member = ProtoField.new("Member", "iex.iexoptions.binaryorderentry.sbe.v1.0.member", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.message_header = ProtoField.new("Message Header", "iex.iexoptions.binaryorderentry.sbe.v1.0.messageheader", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.mic = ProtoField.new("Mic", "iex.iexoptions.binaryorderentry.sbe.v1.0.mic", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.mpid_filter = ProtoField.new("Mpid Filter", "iex.iexoptions.binaryorderentry.sbe.v1.0.mpidfilter", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.mpid_status = ProtoField.new("Mpid Status", "iex.iexoptions.binaryorderentry.sbe.v1.0.mpidstatus", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.mpv_group = ProtoField.new("Mpv Group", "iex.iexoptions.binaryorderentry.sbe.v1.0.mpvgroup", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.new_bulk_quote_message_quote_updates_group = ProtoField.new("New Bulk Quote Message quote Updates Group", "iex.iexoptions.binaryorderentry.sbe.v1.0.newbulkquotemessagequoteupdatesgroup", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.new_bulk_quote_message_quote_updates_groups = ProtoField.new("New Bulk Quote Message quote Updates Groups", "iex.iexoptions.binaryorderentry.sbe.v1.0.newbulkquotemessagequoteupdatesgroups", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.next_seq_no = ProtoField.new("Next Seq No", "iex.iexoptions.binaryorderentry.sbe.v1.0.nextseqno", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.notification_reason = ProtoField.new("Notification Reason", "iex.iexoptions.binaryorderentry.sbe.v1.0.notificationreason", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.num_in_group = ProtoField.new("Num In Group", "iex.iexoptions.binaryorderentry.sbe.v1.0.numingroup", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.occ_id = ProtoField.new("Occ Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.occid", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.open_close = ProtoField.new("Open Close", "iex.iexoptions.binaryorderentry.sbe.v1.0.openclose", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.option_type = ProtoField.new("Option Type", "iex.iexoptions.binaryorderentry.sbe.v1.0.optiontype", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.optional_data = ProtoField.new("Optional Data", "iex.iexoptions.binaryorderentry.sbe.v1.0.optionaldata", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.ord_type = ProtoField.new("Ord Type", "iex.iexoptions.binaryorderentry.sbe.v1.0.ordtype", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_id = ProtoField.new("Order Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.orderid", ftypes.UINT64)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_qty_quantity_non_zero = ProtoField.new("Order Qty Quantity Non Zero", "iex.iexoptions.binaryorderentry.sbe.v1.0.orderqtyquantitynonzero", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_qty_quantity_zero_optional = ProtoField.new("Order Qty Quantity Zero optional", "iex.iexoptions.binaryorderentry.sbe.v1.0.orderqtyquantityzerooptional", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_unsolicited_ack_subscription = ProtoField.new("Order Unsolicited Ack Subscription", "iex.iexoptions.binaryorderentry.sbe.v1.0.orderunsolicitedacksubscription", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.origclordid", ftypes.UINT64)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.orp_enabled = ProtoField.new("Orp Enabled", "iex.iexoptions.binaryorderentry.sbe.v1.0.orpenabled", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.osi_symbol = ProtoField.new("Osi Symbol", "iex.iexoptions.binaryorderentry.sbe.v1.0.osisymbol", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.packet = ProtoField.new("Packet", "iex.iexoptions.binaryorderentry.sbe.v1.0.packet", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.packet_length = ProtoField.new("Packet Length", "iex.iexoptions.binaryorderentry.sbe.v1.0.packetlength", ftypes.UINT16)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.percentage_limit = ProtoField.new("Percentage Limit", "iex.iexoptions.binaryorderentry.sbe.v1.0.percentagelimit", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.price_price_4 = ProtoField.new("Price Price 4", "iex.iexoptions.binaryorderentry.sbe.v1.0.priceprice4", ftypes.DOUBLE)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.price_price_4_optional = ProtoField.new("Price Price 4 optional", "iex.iexoptions.binaryorderentry.sbe.v1.0.priceprice4optional", ftypes.DOUBLE)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.price_price_8 = ProtoField.new("Price Price 8", "iex.iexoptions.binaryorderentry.sbe.v1.0.priceprice8", ftypes.DOUBLE)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_ack_message_custom_group_ids_group = ProtoField.new("Purge Ack Message custom Group Ids Group", "iex.iexoptions.binaryorderentry.sbe.v1.0.purgeackmessagecustomgroupidsgroup", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_ack_message_custom_group_ids_groups = ProtoField.new("Purge Ack Message custom Group Ids Groups", "iex.iexoptions.binaryorderentry.sbe.v1.0.purgeackmessagecustomgroupidsgroups", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_request_message_custom_group_ids_group = ProtoField.new("Purge Request Message custom Group Ids Group", "iex.iexoptions.binaryorderentry.sbe.v1.0.purgerequestmessagecustomgroupidsgroup", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_request_message_custom_group_ids_groups = ProtoField.new("Purge Request Message custom Group Ids Groups", "iex.iexoptions.binaryorderentry.sbe.v1.0.purgerequestmessagecustomgroupidsgroups", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.quote_acks_group_encoding = ProtoField.new("Quote Acks Group Encoding", "iex.iexoptions.binaryorderentry.sbe.v1.0.quoteacksgroupencoding", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.quote_relief_mult = ProtoField.new("Quote Relief Mult", "iex.iexoptions.binaryorderentry.sbe.v1.0.quotereliefmult", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.quote_type = ProtoField.new("Quote Type", "iex.iexoptions.binaryorderentry.sbe.v1.0.quotetype", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.quote_unsolicited_ack_subscription = ProtoField.new("Quote Unsolicited Ack Subscription", "iex.iexoptions.binaryorderentry.sbe.v1.0.quoteunsolicitedacksubscription", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.quote_updates_group_encoding = ProtoField.new("Quote Updates Group Encoding", "iex.iexoptions.binaryorderentry.sbe.v1.0.quoteupdatesgroupencoding", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.reason = ProtoField.new("Reason", "iex.iexoptions.binaryorderentry.sbe.v1.0.reason", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.reason_code = ProtoField.new("Reason Code", "iex.iexoptions.binaryorderentry.sbe.v1.0.reasoncode", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.reject_type = ProtoField.new("Reject Type", "iex.iexoptions.binaryorderentry.sbe.v1.0.rejecttype", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.reserved = ProtoField.new("Reserved", "iex.iexoptions.binaryorderentry.sbe.v1.0.reserved", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.restatement_reason = ProtoField.new("Restatement Reason", "iex.iexoptions.binaryorderentry.sbe.v1.0.restatementreason", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_ack_type = ProtoField.new("Risk Ack Type", "iex.iexoptions.binaryorderentry.sbe.v1.0.riskacktype", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_action = ProtoField.new("Risk Action", "iex.iexoptions.binaryorderentry.sbe.v1.0.riskaction", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_control_risk_control = ProtoField.new("Risk Control Risk Control", "iex.iexoptions.binaryorderentry.sbe.v1.0.riskcontrolriskcontrol", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_control_risk_control_optional = ProtoField.new("Risk Control Risk Control optional", "iex.iexoptions.binaryorderentry.sbe.v1.0.riskcontrolriskcontroloptional", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_control_status_risk_control_status = ProtoField.new("Risk Control Status Risk Control Status", "iex.iexoptions.binaryorderentry.sbe.v1.0.riskcontrolstatusriskcontrolstatus", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_control_status_risk_control_status_optional = ProtoField.new("Risk Control Status Risk Control Status optional", "iex.iexoptions.binaryorderentry.sbe.v1.0.riskcontrolstatusriskcontrolstatusoptional", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.routing_firm_id = ProtoField.new("Routing Firm Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.routingfirmid", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.sbe_message = ProtoField.new("Sbe Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.sbemessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.schema_id = ProtoField.new("Schema Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.schemaid", ftypes.UINT16)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.send_time = ProtoField.new("Send Time", "iex.iexoptions.binaryorderentry.sbe.v1.0.sendtime", ftypes.UINT64)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.sequence = ProtoField.new("Sequence", "iex.iexoptions.binaryorderentry.sbe.v1.0.sequence", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.session_info_group_encoding = ProtoField.new("Session Info Group Encoding", "iex.iexoptions.binaryorderentry.sbe.v1.0.sessioninfogroupencoding", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.side = ProtoField.new("Side", "iex.iexoptions.binaryorderentry.sbe.v1.0.side", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.start_sequence = ProtoField.new("Start Sequence", "iex.iexoptions.binaryorderentry.sbe.v1.0.startsequence", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.status = ProtoField.new("Status", "iex.iexoptions.binaryorderentry.sbe.v1.0.status", ftypes.UINT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.strike_price = ProtoField.new("Strike Price", "iex.iexoptions.binaryorderentry.sbe.v1.0.strikeprice", ftypes.DOUBLE)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.subsession_id = ProtoField.new("Subsession Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.subsessionid", ftypes.UINT64)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.subsession_type = ProtoField.new("Subsession Type", "iex.iexoptions.binaryorderentry.sbe.v1.0.subsessiontype", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.target_party_id = ProtoField.new("Target Party Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.targetpartyid", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.template_id = ProtoField.new("Template Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.templateid", ftypes.UINT16)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.throttle_indicator = ProtoField.new("Throttle Indicator", "iex.iexoptions.binaryorderentry.sbe.v1.0.throttleindicator", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.time_in_force = ProtoField.new("Time In Force", "iex.iexoptions.binaryorderentry.sbe.v1.0.timeinforce", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.time_limit = ProtoField.new("Time Limit", "iex.iexoptions.binaryorderentry.sbe.v1.0.timelimit", ftypes.UINT64)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.timestamp = ProtoField.new("Timestamp", "iex.iexoptions.binaryorderentry.sbe.v1.0.timestamp", ftypes.UINT64)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.token = ProtoField.new("Token", "iex.iexoptions.binaryorderentry.sbe.v1.0.token", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.trade_id = ProtoField.new("Trade Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.tradeid", ftypes.UINT64)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.trade_liquidity_indicator = ProtoField.new("Trade Liquidity Indicator", "iex.iexoptions.binaryorderentry.sbe.v1.0.tradeliquidityindicator", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.trade_ref_id = ProtoField.new("Trade Ref Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.traderefid", ftypes.UINT64)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.trading_ring = ProtoField.new("Trading Ring", "iex.iexoptions.binaryorderentry.sbe.v1.0.tradingring", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.transact_time = ProtoField.new("Transact Time", "iex.iexoptions.binaryorderentry.sbe.v1.0.transacttime", ftypes.UINT64)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.underlying_id_instrument_id = ProtoField.new("Underlying Id Instrument Id", "iex.iexoptions.binaryorderentry.sbe.v1.0.underlyingidinstrumentid", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.underlying_id_instrument_id_optional = ProtoField.new("Underlying Id Instrument Id optional", "iex.iexoptions.binaryorderentry.sbe.v1.0.underlyingidinstrumentidoptional", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.underlying_id_uint_32 = ProtoField.new("Underlying Id uint 32", "iex.iexoptions.binaryorderentry.sbe.v1.0.underlyingiduint32", ftypes.UINT32)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "iex.iexoptions.binaryorderentry.sbe.v1.0.underlyingsymbol", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.user_session_status = ProtoField.new("User Session Status", "iex.iexoptions.binaryorderentry.sbe.v1.0.usersessionstatus", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.user_session_type = ProtoField.new("User Session Type", "iex.iexoptions.binaryorderentry.sbe.v1.0.usersessiontype", ftypes.INT8)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.version = ProtoField.new("Version", "iex.iexoptions.binaryorderentry.sbe.v1.0.version", ftypes.UINT16)

-- Iex IexOptions Sbe BinaryOrderEntry 1.0 Application Messages
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.application_layer_reject_message = ProtoField.new("Application Layer Reject Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.applicationlayerrejectmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.bulk_quote_ack_message = ProtoField.new("Bulk Quote Ack Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.bulkquoteackmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.client_heartbeat_message = ProtoField.new("Client Heartbeat Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.clientheartbeatmessage", ftypes.BYTES)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.execution_report_message = ProtoField.new("Execution Report Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.executionreportmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.gateway_heartbeat_message = ProtoField.new("Gateway Heartbeat Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.gatewayheartbeatmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.instrument_ref_data_message = ProtoField.new("Instrument Ref Data Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.instrumentrefdatamessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.login_request_message = ProtoField.new("Login Request Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.loginrequestmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.login_response_message = ProtoField.new("Login Response Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.loginresponsemessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.logout_request_message = ProtoField.new("Logout Request Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.logoutrequestmessage", ftypes.BYTES)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.market_maker_symbol_appointment_message = ProtoField.new("Market Maker Symbol Appointment Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.marketmakersymbolappointmentmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.mass_cancel_ack_message = ProtoField.new("Mass Cancel Ack Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.masscancelackmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.mass_cancel_request_message = ProtoField.new("Mass Cancel Request Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.masscancelrequestmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.mpid_configuration_acknowledgement_message = ProtoField.new("Mpid Configuration Acknowledgement Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.mpidconfigurationacknowledgementmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.new_bulk_quote_message = ProtoField.new("New Bulk Quote Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.newbulkquotemessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.new_ioc_quote_ack_message = ProtoField.new("New Ioc Quote Ack Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.newiocquoteackmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.new_order_single_message = ProtoField.new("New Order Single Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.newordersinglemessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_ack_message = ProtoField.new("Order Ack Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.orderackmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_cancel_ack_message = ProtoField.new("Order Cancel Ack Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.ordercancelackmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_cancel_replace_request_message = ProtoField.new("Order Cancel Replace Request Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.ordercancelreplacerequestmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_cancel_request_message = ProtoField.new("Order Cancel Request Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.ordercancelrequestmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_ack_message = ProtoField.new("Purge Ack Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.purgeackmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_request_message = ProtoField.new("Purge Request Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.purgerequestmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.quote_canceled_message = ProtoField.new("Quote Canceled Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.quotecanceledmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.quote_restated_message = ProtoField.new("Quote Restated Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.quoterestatedmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_action_request_message = ProtoField.new("Risk Action Request Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.riskactionrequestmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_control_acknowledgment_message = ProtoField.new("Risk Control Acknowledgment Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.riskcontrolacknowledgmentmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_control_alert_message = ProtoField.new("Risk Control Alert Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.riskcontrolalertmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_limit_update_request_message = ProtoField.new("Risk Limit Update Request Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.risklimitupdaterequestmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.sequenced_message_header_message = ProtoField.new("Sequenced Message Header Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.sequencedmessageheadermessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.session_configuration_acknowledgement_message = ProtoField.new("Session Configuration Acknowledgement Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.sessionconfigurationacknowledgementmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.subsession_join_message = ProtoField.new("Subsession Join Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.subsessionjoinmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.subsession_join_response_message = ProtoField.new("Subsession Join Response Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.subsessionjoinresponsemessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.subsession_leave_message = ProtoField.new("Subsession Leave Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.subsessionleavemessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.subsession_leave_response_message = ProtoField.new("Subsession Leave Response Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.subsessionleaveresponsemessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.terminate_message = ProtoField.new("Terminate Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.terminatemessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.trade_bust_correct_message = ProtoField.new("Trade Bust Correct Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.tradebustcorrectmessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.underlying_ref_data_message = ProtoField.new("Underlying Ref Data Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.underlyingrefdatamessage", ftypes.STRING)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.unsolicited_modify_ack_message = ProtoField.new("Unsolicited Modify Ack Message", "iex.iexoptions.binaryorderentry.sbe.v1.0.unsolicitedmodifyackmessage", ftypes.STRING)

-- Iex IexOptions BinaryOrderEntry Sbe 1.0 generated fields
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.bulk_quote_ack_message_quote_acks_group_index = ProtoField.new("Bulk Quote Ack Message quote Acks Group Index", "iex.iexoptions.binaryorderentry.sbe.v1.0.bulkquoteackmessagequoteacksgroupindex", ftypes.UINT16)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.gateway_heartbeat_message_sub_sessions_group_index = ProtoField.new("Gateway Heartbeat Message Sub Sessions Group Index", "iex.iexoptions.binaryorderentry.sbe.v1.0.gatewayheartbeatmessagesubsessionsgroupindex", ftypes.UINT16)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.new_bulk_quote_message_quote_updates_group_index = ProtoField.new("New Bulk Quote Message quote Updates Group Index", "iex.iexoptions.binaryorderentry.sbe.v1.0.newbulkquotemessagequoteupdatesgroupindex", ftypes.UINT16)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_ack_message_custom_group_ids_group_index = ProtoField.new("Purge Ack Message custom Group Ids Group Index", "iex.iexoptions.binaryorderentry.sbe.v1.0.purgeackmessagecustomgroupidsgroupindex", ftypes.UINT16)
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_request_message_custom_group_ids_group_index = ProtoField.new("Purge Request Message custom Group Ids Group Index", "iex.iexoptions.binaryorderentry.sbe.v1.0.purgerequestmessagecustomgroupidsgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Iex IexOptions BinaryOrderEntry Sbe 1.0 Element Dissection Options
show.application_messages = true
show.bulk_quote_ack_message_quote_acks_group = true
show.bulk_quote_ack_message_quote_acks_groups = true
show.custom_group_ids_group_encoding = true
show.gateway_heartbeat_message_sub_sessions_group = true
show.gateway_heartbeat_message_sub_sessions_groups = true
show.message_header = true
show.new_bulk_quote_message_quote_updates_group = true
show.new_bulk_quote_message_quote_updates_groups = true
show.packet = true
show.purge_ack_message_custom_group_ids_group = true
show.purge_ack_message_custom_group_ids_groups = true
show.purge_request_message_custom_group_ids_group = true
show.purge_request_message_custom_group_ids_groups = true
show.quote_acks_group_encoding = true
show.quote_updates_group_encoding = true
show.sbe_message = true
show.session_info_group_encoding = true
show.new_bulk_quote_message_quote_updates_group_index = true
show.purge_request_message_custom_group_ids_group_index = true
show.bulk_quote_ack_message_quote_acks_group_index = true
show.purge_ack_message_custom_group_ids_group_index = true
show.gateway_heartbeat_message_sub_sessions_group_index = true

-- Register Iex IexOptions BinaryOrderEntry Sbe 1.0 Show Options
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_bulk_quote_ack_message_quote_acks_group = Pref.bool("Show Bulk Quote Ack Message quote Acks Group", show.bulk_quote_ack_message_quote_acks_group, "Parse and add Bulk Quote Ack Message quote Acks Group to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_bulk_quote_ack_message_quote_acks_groups = Pref.bool("Show Bulk Quote Ack Message quote Acks Groups", show.bulk_quote_ack_message_quote_acks_groups, "Parse and add Bulk Quote Ack Message quote Acks Groups to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_custom_group_ids_group_encoding = Pref.bool("Show Custom Group Ids Group Encoding", show.custom_group_ids_group_encoding, "Parse and add Custom Group Ids Group Encoding to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_gateway_heartbeat_message_sub_sessions_group = Pref.bool("Show Gateway Heartbeat Message Sub Sessions Group", show.gateway_heartbeat_message_sub_sessions_group, "Parse and add Gateway Heartbeat Message Sub Sessions Group to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_gateway_heartbeat_message_sub_sessions_groups = Pref.bool("Show Gateway Heartbeat Message Sub Sessions Groups", show.gateway_heartbeat_message_sub_sessions_groups, "Parse and add Gateway Heartbeat Message Sub Sessions Groups to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_new_bulk_quote_message_quote_updates_group = Pref.bool("Show New Bulk Quote Message quote Updates Group", show.new_bulk_quote_message_quote_updates_group, "Parse and add New Bulk Quote Message quote Updates Group to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_new_bulk_quote_message_quote_updates_groups = Pref.bool("Show New Bulk Quote Message quote Updates Groups", show.new_bulk_quote_message_quote_updates_groups, "Parse and add New Bulk Quote Message quote Updates Groups to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_ack_message_custom_group_ids_group = Pref.bool("Show Purge Ack Message custom Group Ids Group", show.purge_ack_message_custom_group_ids_group, "Parse and add Purge Ack Message custom Group Ids Group to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_ack_message_custom_group_ids_groups = Pref.bool("Show Purge Ack Message custom Group Ids Groups", show.purge_ack_message_custom_group_ids_groups, "Parse and add Purge Ack Message custom Group Ids Groups to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_request_message_custom_group_ids_group = Pref.bool("Show Purge Request Message custom Group Ids Group", show.purge_request_message_custom_group_ids_group, "Parse and add Purge Request Message custom Group Ids Group to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_request_message_custom_group_ids_groups = Pref.bool("Show Purge Request Message custom Group Ids Groups", show.purge_request_message_custom_group_ids_groups, "Parse and add Purge Request Message custom Group Ids Groups to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_quote_acks_group_encoding = Pref.bool("Show Quote Acks Group Encoding", show.quote_acks_group_encoding, "Parse and add Quote Acks Group Encoding to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_quote_updates_group_encoding = Pref.bool("Show Quote Updates Group Encoding", show.quote_updates_group_encoding, "Parse and add Quote Updates Group Encoding to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_session_info_group_encoding = Pref.bool("Show Session Info Group Encoding", show.session_info_group_encoding, "Parse and add Session Info Group Encoding to protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_new_bulk_quote_message_quote_updates_group_index = Pref.bool("Show New Bulk Quote Message quote Updates Group Index", show.new_bulk_quote_message_quote_updates_group_index, "Show generated new bulk quote message quote updates group index in protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_request_message_custom_group_ids_group_index = Pref.bool("Show Purge Request Message custom Group Ids Group Index", show.purge_request_message_custom_group_ids_group_index, "Show generated purge request message custom group ids group index in protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_bulk_quote_ack_message_quote_acks_group_index = Pref.bool("Show Bulk Quote Ack Message quote Acks Group Index", show.bulk_quote_ack_message_quote_acks_group_index, "Show generated bulk quote ack message quote acks group index in protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_ack_message_custom_group_ids_group_index = Pref.bool("Show Purge Ack Message custom Group Ids Group Index", show.purge_ack_message_custom_group_ids_group_index, "Show generated purge ack message custom group ids group index in protocol tree")
omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_gateway_heartbeat_message_sub_sessions_group_index = Pref.bool("Show Gateway Heartbeat Message Sub Sessions Group Index", show.gateway_heartbeat_message_sub_sessions_group_index, "Show generated gateway heartbeat message sub sessions group index in protocol tree")


-- Handle changed preferences
function omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_application_messages then
    show.application_messages = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_application_messages
  end
  if show.bulk_quote_ack_message_quote_acks_group ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_bulk_quote_ack_message_quote_acks_group then
    show.bulk_quote_ack_message_quote_acks_group = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_bulk_quote_ack_message_quote_acks_group
  end
  if show.bulk_quote_ack_message_quote_acks_groups ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_bulk_quote_ack_message_quote_acks_groups then
    show.bulk_quote_ack_message_quote_acks_groups = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_bulk_quote_ack_message_quote_acks_groups
  end
  if show.custom_group_ids_group_encoding ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_custom_group_ids_group_encoding then
    show.custom_group_ids_group_encoding = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_custom_group_ids_group_encoding
  end
  if show.gateway_heartbeat_message_sub_sessions_group ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_gateway_heartbeat_message_sub_sessions_group then
    show.gateway_heartbeat_message_sub_sessions_group = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_gateway_heartbeat_message_sub_sessions_group
  end
  if show.gateway_heartbeat_message_sub_sessions_groups ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_gateway_heartbeat_message_sub_sessions_groups then
    show.gateway_heartbeat_message_sub_sessions_groups = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_gateway_heartbeat_message_sub_sessions_groups
  end
  if show.message_header ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_message_header then
    show.message_header = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_message_header
  end
  if show.new_bulk_quote_message_quote_updates_group ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_new_bulk_quote_message_quote_updates_group then
    show.new_bulk_quote_message_quote_updates_group = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_new_bulk_quote_message_quote_updates_group
  end
  if show.new_bulk_quote_message_quote_updates_groups ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_new_bulk_quote_message_quote_updates_groups then
    show.new_bulk_quote_message_quote_updates_groups = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_new_bulk_quote_message_quote_updates_groups
  end
  if show.packet ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_packet then
    show.packet = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_packet
  end
  if show.purge_ack_message_custom_group_ids_group ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_ack_message_custom_group_ids_group then
    show.purge_ack_message_custom_group_ids_group = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_ack_message_custom_group_ids_group
  end
  if show.purge_ack_message_custom_group_ids_groups ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_ack_message_custom_group_ids_groups then
    show.purge_ack_message_custom_group_ids_groups = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_ack_message_custom_group_ids_groups
  end
  if show.purge_request_message_custom_group_ids_group ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_request_message_custom_group_ids_group then
    show.purge_request_message_custom_group_ids_group = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_request_message_custom_group_ids_group
  end
  if show.purge_request_message_custom_group_ids_groups ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_request_message_custom_group_ids_groups then
    show.purge_request_message_custom_group_ids_groups = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_request_message_custom_group_ids_groups
  end
  if show.quote_acks_group_encoding ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_quote_acks_group_encoding then
    show.quote_acks_group_encoding = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_quote_acks_group_encoding
  end
  if show.quote_updates_group_encoding ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_quote_updates_group_encoding then
    show.quote_updates_group_encoding = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_quote_updates_group_encoding
  end
  if show.sbe_message ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_sbe_message then
    show.sbe_message = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_sbe_message
  end
  if show.session_info_group_encoding ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_session_info_group_encoding then
    show.session_info_group_encoding = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_session_info_group_encoding
  end
  if show.new_bulk_quote_message_quote_updates_group_index ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_new_bulk_quote_message_quote_updates_group_index then
    show.new_bulk_quote_message_quote_updates_group_index = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_new_bulk_quote_message_quote_updates_group_index
  end
  if show.purge_request_message_custom_group_ids_group_index ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_request_message_custom_group_ids_group_index then
    show.purge_request_message_custom_group_ids_group_index = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_request_message_custom_group_ids_group_index
  end
  if show.bulk_quote_ack_message_quote_acks_group_index ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_bulk_quote_ack_message_quote_acks_group_index then
    show.bulk_quote_ack_message_quote_acks_group_index = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_bulk_quote_ack_message_quote_acks_group_index
  end
  if show.purge_ack_message_custom_group_ids_group_index ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_ack_message_custom_group_ids_group_index then
    show.purge_ack_message_custom_group_ids_group_index = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_purge_ack_message_custom_group_ids_group_index
  end
  if show.gateway_heartbeat_message_sub_sessions_group_index ~= omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_gateway_heartbeat_message_sub_sessions_group_index then
    show.gateway_heartbeat_message_sub_sessions_group_index = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.prefs.show_gateway_heartbeat_message_sub_sessions_group_index
  end
end


-----------------------------------------------------------------------
-- Iex IexOptions BinaryOrderEntry Sbe 1.0 Fields
-----------------------------------------------------------------------

-- Account Account
iex_iexoptions_binaryorderentry_sbe_v1_0.account_account = {}

-- Size: Account Account
iex_iexoptions_binaryorderentry_sbe_v1_0.account_account.size = 16

-- Display: Account Account
iex_iexoptions_binaryorderentry_sbe_v1_0.account_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account Account: No Value"
  end

  return "Account Account: "..value
end

-- Dissect: Account Account
iex_iexoptions_binaryorderentry_sbe_v1_0.account_account.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.account_account.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.account_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.account_account, range, value, display)

  return offset + length, value
end

-- Account string 16
iex_iexoptions_binaryorderentry_sbe_v1_0.account_string_16 = {}

-- Size: Account string 16
iex_iexoptions_binaryorderentry_sbe_v1_0.account_string_16.size = 16

-- Display: Account string 16
iex_iexoptions_binaryorderentry_sbe_v1_0.account_string_16.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account string 16: No Value"
  end

  return "Account string 16: "..value
end

-- Dissect: Account string 16
iex_iexoptions_binaryorderentry_sbe_v1_0.account_string_16.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.account_string_16.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.account_string_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.account_string_16, range, value, display)

  return offset + length, value
end

-- Ack Style Mass Cancel Ack Style
iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_mass_cancel_ack_style = {}

-- Size: Ack Style Mass Cancel Ack Style
iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_mass_cancel_ack_style.size = 1

-- Display: Ack Style Mass Cancel Ack Style
iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_mass_cancel_ack_style.display = function(value)
  if value == 0 then
    return "Ack Style Mass Cancel Ack Style: Single Ack (0)"
  end
  if value == 1 then
    return "Ack Style Mass Cancel Ack Style: Per Order Ack And Single Ack (1)"
  end

  return "Ack Style Mass Cancel Ack Style: Unknown("..value..")"
end

-- Dissect: Ack Style Mass Cancel Ack Style
iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_mass_cancel_ack_style.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_mass_cancel_ack_style.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_mass_cancel_ack_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.ack_style_mass_cancel_ack_style, range, value, display)

  return offset + length, value
end

-- Ack Style Purge Request Ack Style
iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_purge_request_ack_style = {}

-- Size: Ack Style Purge Request Ack Style
iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_purge_request_ack_style.size = 1

-- Display: Ack Style Purge Request Ack Style
iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_purge_request_ack_style.display = function(value)
  if value == 0 then
    return "Ack Style Purge Request Ack Style: Single Ack (0)"
  end
  if value == 1 then
    return "Ack Style Purge Request Ack Style: Single Ack With Mmqs (1)"
  end

  return "Ack Style Purge Request Ack Style: Unknown("..value..")"
end

-- Dissect: Ack Style Purge Request Ack Style
iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_purge_request_ack_style.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_purge_request_ack_style.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_purge_request_ack_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.ack_style_purge_request_ack_style, range, value, display)

  return offset + length, value
end

-- Ack Type
iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type = {}

-- Size: Ack Type
iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.size = 1

-- Display: Ack Type
iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.display = function(value)
  if value == 1 then
    return "Ack Type: New Interest (1)"
  end
  if value == 2 then
    return "Ack Type: Pending Cancel (2)"
  end
  if value == 3 then
    return "Ack Type: Canceled (3)"
  end
  if value == 4 then
    return "Ack Type: Pending Replace (4)"
  end
  if value == 5 then
    return "Ack Type: Replaced (5)"
  end
  if value == 6 then
    return "Ack Type: Individual Market Maker Quote Reject (6)"
  end
  if value == 7 then
    return "Ack Type: Unsolicited Reprice Price Adjust (7)"
  end
  if value == 8 then
    return "Ack Type: Unsolicited Reprice Orp (8)"
  end
  if value == 9 then
    return "Ack Type: Unsolicited Cancel Orp (9)"
  end
  if value == 10 then
    return "Ack Type: Market Maker Quote Not Modified (10)"
  end

  return "Ack Type: Unknown("..value..")"
end

-- Dissect: Ack Type
iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.ack_type, range, value, display)

  return offset + length, value
end

-- Aiq
iex_iexoptions_binaryorderentry_sbe_v1_0.aiq = {}

-- Size: Aiq
iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.size = 3

-- Display: Aiq
iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Aiq: No Value"
  end

  return "Aiq: "..value
end

-- Dissect: Aiq
iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.aiq, range, value, display)

  return offset + length, value
end

-- Aiq Default
iex_iexoptions_binaryorderentry_sbe_v1_0.aiq_default = {}

-- Size: Aiq Default
iex_iexoptions_binaryorderentry_sbe_v1_0.aiq_default.size = 3

-- Display: Aiq Default
iex_iexoptions_binaryorderentry_sbe_v1_0.aiq_default.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Aiq Default: No Value"
  end

  return "Aiq Default: "..value
end

-- Dissect: Aiq Default
iex_iexoptions_binaryorderentry_sbe_v1_0.aiq_default.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.aiq_default.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.aiq_default.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.aiq_default, range, value, display)

  return offset + length, value
end

-- Allow Iso Day
iex_iexoptions_binaryorderentry_sbe_v1_0.allow_iso_day = {}

-- Size: Allow Iso Day
iex_iexoptions_binaryorderentry_sbe_v1_0.allow_iso_day.size = 1

-- Display: Allow Iso Day
iex_iexoptions_binaryorderentry_sbe_v1_0.allow_iso_day.display = function(value)
  if value == 0 then
    return "Allow Iso Day: False (0)"
  end
  if value == 1 then
    return "Allow Iso Day: True (1)"
  end
  if value == 255 then
    return "Allow Iso Day: No Value"
  end

  return "Allow Iso Day: Unknown("..value..")"
end

-- Dissect: Allow Iso Day
iex_iexoptions_binaryorderentry_sbe_v1_0.allow_iso_day.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.allow_iso_day.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.allow_iso_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.allow_iso_day, range, value, display)

  return offset + length, value
end

-- Allow Isoioc
iex_iexoptions_binaryorderentry_sbe_v1_0.allow_isoioc = {}

-- Size: Allow Isoioc
iex_iexoptions_binaryorderentry_sbe_v1_0.allow_isoioc.size = 1

-- Display: Allow Isoioc
iex_iexoptions_binaryorderentry_sbe_v1_0.allow_isoioc.display = function(value)
  if value == 0 then
    return "Allow Isoioc: False (0)"
  end
  if value == 1 then
    return "Allow Isoioc: True (1)"
  end
  if value == 255 then
    return "Allow Isoioc: No Value"
  end

  return "Allow Isoioc: Unknown("..value..")"
end

-- Dissect: Allow Isoioc
iex_iexoptions_binaryorderentry_sbe_v1_0.allow_isoioc.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.allow_isoioc.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.allow_isoioc.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.allow_isoioc, range, value, display)

  return offset + length, value
end

-- Allow Market Orders
iex_iexoptions_binaryorderentry_sbe_v1_0.allow_market_orders = {}

-- Size: Allow Market Orders
iex_iexoptions_binaryorderentry_sbe_v1_0.allow_market_orders.size = 1

-- Display: Allow Market Orders
iex_iexoptions_binaryorderentry_sbe_v1_0.allow_market_orders.display = function(value)
  if value == 0 then
    return "Allow Market Orders: False (0)"
  end
  if value == 1 then
    return "Allow Market Orders: True (1)"
  end
  if value == 255 then
    return "Allow Market Orders: No Value"
  end

  return "Allow Market Orders: Unknown("..value..")"
end

-- Dissect: Allow Market Orders
iex_iexoptions_binaryorderentry_sbe_v1_0.allow_market_orders.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.allow_market_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.allow_market_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.allow_market_orders, range, value, display)

  return offset + length, value
end

-- Appointment Status
iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_status = {}

-- Size: Appointment Status
iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_status.size = 1

-- Display: Appointment Status
iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_status.display = function(value)
  if value == 0 then
    return "Appointment Status: Not Appointed (0)"
  end
  if value == 1 then
    return "Appointment Status: Appointed (1)"
  end

  return "Appointment Status: Unknown("..value..")"
end

-- Dissect: Appointment Status
iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_status.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.appointment_status, range, value, display)

  return offset + length, value
end

-- Appointment Type
iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_type = {}

-- Size: Appointment Type
iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_type.size = 1

-- Display: Appointment Type
iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_type.display = function(value)
  if value == 1 then
    return "Appointment Type: Registered Market Maker (1)"
  end
  if value == 2 then
    return "Appointment Type: Directed Market Maker (2)"
  end
  if value == 3 then
    return "Appointment Type: Specialist (3)"
  end

  return "Appointment Type: Unknown("..value..")"
end

-- Dissect: Appointment Type
iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.appointment_type, range, value, display)

  return offset + length, value
end

-- Attributed Quote
iex_iexoptions_binaryorderentry_sbe_v1_0.attributed_quote = {}

-- Size: Attributed Quote
iex_iexoptions_binaryorderentry_sbe_v1_0.attributed_quote.size = 1

-- Display: Attributed Quote
iex_iexoptions_binaryorderentry_sbe_v1_0.attributed_quote.display = function(value)
  if value == 1 then
    return "Attributed Quote: Sum (1)"
  end
  if value == 2 then
    return "Attributed Quote: Order Info Capacity (2)"
  end
  if value == 3 then
    return "Attributed Quote: Order Info Mpid (3)"
  end
  if value == 4 then
    return "Attributed Quote: Order Info Capacity Mpid (4)"
  end
  if value == 5 then
    return "Attributed Quote: Do Not Use Sum (5)"
  end

  return "Attributed Quote: Unknown("..value..")"
end

-- Dissect: Attributed Quote
iex_iexoptions_binaryorderentry_sbe_v1_0.attributed_quote.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.attributed_quote.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.attributed_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.attributed_quote, range, value, display)

  return offset + length, value
end

-- Auction Id
iex_iexoptions_binaryorderentry_sbe_v1_0.auction_id = {}

-- Size: Auction Id
iex_iexoptions_binaryorderentry_sbe_v1_0.auction_id.size = 4

-- Display: Auction Id
iex_iexoptions_binaryorderentry_sbe_v1_0.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
iex_iexoptions_binaryorderentry_sbe_v1_0.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Block Length
iex_iexoptions_binaryorderentry_sbe_v1_0.block_length = {}

-- Size: Block Length
iex_iexoptions_binaryorderentry_sbe_v1_0.block_length.size = 2

-- Display: Block Length
iex_iexoptions_binaryorderentry_sbe_v1_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
iex_iexoptions_binaryorderentry_sbe_v1_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Block Length uint 8
iex_iexoptions_binaryorderentry_sbe_v1_0.block_length_uint_8 = {}

-- Size: Block Length uint 8
iex_iexoptions_binaryorderentry_sbe_v1_0.block_length_uint_8.size = 1

-- Display: Block Length uint 8
iex_iexoptions_binaryorderentry_sbe_v1_0.block_length_uint_8.display = function(value)
  return "Block Length uint 8: "..value
end

-- Dissect: Block Length uint 8
iex_iexoptions_binaryorderentry_sbe_v1_0.block_length_uint_8.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.block_length_uint_8.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.block_length_uint_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.block_length_uint_8, range, value, display)

  return offset + length, value
end

-- Blocked By Breach Indicator
iex_iexoptions_binaryorderentry_sbe_v1_0.blocked_by_breach_indicator = {}

-- Size: Blocked By Breach Indicator
iex_iexoptions_binaryorderentry_sbe_v1_0.blocked_by_breach_indicator.size = 1

-- Display: Blocked By Breach Indicator
iex_iexoptions_binaryorderentry_sbe_v1_0.blocked_by_breach_indicator.display = function(value)
  if value == 0 then
    return "Blocked By Breach Indicator: Not Blocked (0)"
  end
  if value == 1 then
    return "Blocked By Breach Indicator: Blocked (1)"
  end
  if value == 128 then
    return "Blocked By Breach Indicator: No Value"
  end

  return "Blocked By Breach Indicator: Unknown("..value..")"
end

-- Dissect: Blocked By Breach Indicator
iex_iexoptions_binaryorderentry_sbe_v1_0.blocked_by_breach_indicator.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.blocked_by_breach_indicator.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.blocked_by_breach_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.blocked_by_breach_indicator, range, value, display)

  return offset + length, value
end

-- Bulk Action
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_action = {}

-- Size: Bulk Action
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_action.size = 1

-- Display: Bulk Action
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_action.display = function(value)
  if value == 0 then
    return "Bulk Action: Cancel (0)"
  end
  if value == 1 then
    return "Bulk Action: Cancel And Block (1)"
  end
  if value == 2 then
    return "Bulk Action: Unblock (2)"
  end

  return "Bulk Action: Unknown("..value..")"
end

-- Dissect: Bulk Action
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_action.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.bulk_action, range, value, display)

  return offset + length, value
end

-- Bust Or Correction
iex_iexoptions_binaryorderentry_sbe_v1_0.bust_or_correction = {}

-- Size: Bust Or Correction
iex_iexoptions_binaryorderentry_sbe_v1_0.bust_or_correction.size = 1

-- Display: Bust Or Correction
iex_iexoptions_binaryorderentry_sbe_v1_0.bust_or_correction.display = function(value)
  if value == 0 then
    return "Bust Or Correction: Trade Bust (0)"
  end
  if value == 1 then
    return "Bust Or Correction: Trade Correction (1)"
  end

  return "Bust Or Correction: Unknown("..value..")"
end

-- Dissect: Bust Or Correction
iex_iexoptions_binaryorderentry_sbe_v1_0.bust_or_correction.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.bust_or_correction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.bust_or_correction.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.bust_or_correction, range, value, display)

  return offset + length, value
end

-- Cancel Count
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_count = {}

-- Size: Cancel Count
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_count.size = 4

-- Display: Cancel Count
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_count.display = function(value)
  return "Cancel Count: "..value
end

-- Dissect: Cancel Count
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_count.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cancel_count, range, value, display)

  return offset + length, value
end

-- Cancel Instead Of Slide Cancel Instead Of Slide
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide = {}

-- Size: Cancel Instead Of Slide Cancel Instead Of Slide
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide.size = 1

-- Display: Cancel Instead Of Slide Cancel Instead Of Slide
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide.display = function(value)
  if value == 0 then
    return "Cancel Instead Of Slide Cancel Instead Of Slide: Slide (0)"
  end
  if value == 1 then
    return "Cancel Instead Of Slide Cancel Instead Of Slide: Cancel (1)"
  end

  return "Cancel Instead Of Slide Cancel Instead Of Slide: Unknown("..value..")"
end

-- Dissect: Cancel Instead Of Slide Cancel Instead Of Slide
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cancel_instead_of_slide_cancel_instead_of_slide, range, value, display)

  return offset + length, value
end

-- Cancel Instead Of Slide Cancel Instead Of Slide optional
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide_optional = {}

-- Size: Cancel Instead Of Slide Cancel Instead Of Slide optional
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide_optional.size = 1

-- Display: Cancel Instead Of Slide Cancel Instead Of Slide optional
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide_optional.display = function(value)
  if value == 0 then
    return "Cancel Instead Of Slide Cancel Instead Of Slide optional: Slide (0)"
  end
  if value == 1 then
    return "Cancel Instead Of Slide Cancel Instead Of Slide optional: Cancel (1)"
  end
  if value == 128 then
    return "Cancel Instead Of Slide Cancel Instead Of Slide optional: No Value"
  end

  return "Cancel Instead Of Slide Cancel Instead Of Slide optional: Unknown("..value..")"
end

-- Dissect: Cancel Instead Of Slide Cancel Instead Of Slide optional
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide_optional.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cancel_instead_of_slide_cancel_instead_of_slide_optional, range, value, display)

  return offset + length, value
end

-- Cancel On Disconnect
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_on_disconnect = {}

-- Size: Cancel On Disconnect
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_on_disconnect.size = 1

-- Display: Cancel On Disconnect
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_on_disconnect.display = function(value)
  if value == 0 then
    return "Cancel On Disconnect: Off (0)"
  end
  if value == 1 then
    return "Cancel On Disconnect: On (1)"
  end
  if value == 128 then
    return "Cancel On Disconnect: No Value"
  end

  return "Cancel On Disconnect: Unknown("..value..")"
end

-- Dissect: Cancel On Disconnect
iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_on_disconnect.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_on_disconnect.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_on_disconnect.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cancel_on_disconnect, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id = {}

-- Size: Cl Ord Id
iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size = 8

-- Display: Cl Ord Id
iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.display = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Clearing Account
iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account = {}

-- Size: Clearing Account
iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.size = 4

-- Display: Clearing Account
iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Clearing Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_firm = {}

-- Size: Clearing Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_firm.size = 4

-- Display: Clearing Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_firm.display = function(value)
  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_firm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Closing Only
iex_iexoptions_binaryorderentry_sbe_v1_0.closing_only = {}

-- Size: Closing Only
iex_iexoptions_binaryorderentry_sbe_v1_0.closing_only.size = 1

-- Display: Closing Only
iex_iexoptions_binaryorderentry_sbe_v1_0.closing_only.display = function(value)
  if value == 0 then
    return "Closing Only: False (0)"
  end
  if value == 1 then
    return "Closing Only: True (1)"
  end

  return "Closing Only: Unknown("..value..")"
end

-- Dissect: Closing Only
iex_iexoptions_binaryorderentry_sbe_v1_0.closing_only.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.closing_only.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.closing_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.closing_only, range, value, display)

  return offset + length, value
end

-- Contra Clearing Account
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_account = {}

-- Size: Contra Clearing Account
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_account.size = 4

-- Display: Contra Clearing Account
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Clearing Account: No Value"
  end

  return "Contra Clearing Account: "..value
end

-- Dissect: Contra Clearing Account
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_account.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.contra_clearing_account, range, value, display)

  return offset + length, value
end

-- Contra Clearing Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_firm = {}

-- Size: Contra Clearing Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_firm.size = 4

-- Display: Contra Clearing Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_firm.display = function(value)
  return "Contra Clearing Firm: "..value
end

-- Dissect: Contra Clearing Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_firm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.contra_clearing_firm, range, value, display)

  return offset + length, value
end

-- Contra Customer Or Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_customer_or_firm = {}

-- Size: Contra Customer Or Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_customer_or_firm.size = 1

-- Display: Contra Customer Or Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_customer_or_firm.display = function(value)
  if value == 0 then
    return "Contra Customer Or Firm: Customer (0)"
  end
  if value == 1 then
    return "Contra Customer Or Firm: Firm (1)"
  end
  if value == 2 then
    return "Contra Customer Or Firm: Broker Dealer (2)"
  end
  if value == 3 then
    return "Contra Customer Or Firm: Market Maker (3)"
  end
  if value == 4 then
    return "Contra Customer Or Firm: Away Market Maker (4)"
  end
  if value == 5 then
    return "Contra Customer Or Firm: Prof Customer (5)"
  end

  return "Contra Customer Or Firm: Unknown("..value..")"
end

-- Dissect: Contra Customer Or Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_customer_or_firm.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_customer_or_firm.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_customer_or_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.contra_customer_or_firm, range, value, display)

  return offset + length, value
end

-- Contra Mpid
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_mpid = {}

-- Size: Contra Mpid
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_mpid.size = 4

-- Display: Contra Mpid
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_mpid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Mpid: No Value"
  end

  return "Contra Mpid: "..value
end

-- Dissect: Contra Mpid
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_mpid.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_mpid.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.contra_mpid, range, value, display)

  return offset + length, value
end

-- Contra Occ Id
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_occ_id = {}

-- Size: Contra Occ Id
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_occ_id.size = 5

-- Display: Contra Occ Id
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_occ_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contra Occ Id: No Value"
  end

  return "Contra Occ Id: "..value
end

-- Dissect: Contra Occ Id
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_occ_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_occ_id.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_occ_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.contra_occ_id, range, value, display)

  return offset + length, value
end

-- Contra Open Close
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_open_close = {}

-- Size: Contra Open Close
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_open_close.size = 1

-- Display: Contra Open Close
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_open_close.display = function(value)
  if value == 0 then
    return "Contra Open Close: Open (0)"
  end
  if value == 1 then
    return "Contra Open Close: Close (1)"
  end
  if value == 2 then
    return "Contra Open Close: Not Applicable (2)"
  end

  return "Contra Open Close: Unknown("..value..")"
end

-- Dissect: Contra Open Close
iex_iexoptions_binaryorderentry_sbe_v1_0.contra_open_close.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_open_close.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.contra_open_close, range, value, display)

  return offset + length, value
end

-- Count Limit
iex_iexoptions_binaryorderentry_sbe_v1_0.count_limit = {}

-- Size: Count Limit
iex_iexoptions_binaryorderentry_sbe_v1_0.count_limit.size = 4

-- Display: Count Limit
iex_iexoptions_binaryorderentry_sbe_v1_0.count_limit.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Count Limit: No Value"
  end

  return "Count Limit: "..value
end

-- Dissect: Count Limit
iex_iexoptions_binaryorderentry_sbe_v1_0.count_limit.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.count_limit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.count_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.count_limit, range, value, display)

  return offset + length, value
end

-- Cum Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.cum_qty = {}

-- Size: Cum Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.cum_qty.size = 4

-- Display: Cum Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Cust Capacity Weight uint 8
iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8 = {}

-- Size: Cust Capacity Weight uint 8
iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8.size = 1

-- Display: Cust Capacity Weight uint 8
iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8.display = function(value)
  return "Cust Capacity Weight uint 8: "..value
end

-- Dissect: Cust Capacity Weight uint 8
iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cust_capacity_weight_uint_8, range, value, display)

  return offset + length, value
end

-- Cust Capacity Weight uint 8 optional
iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8_optional = {}

-- Size: Cust Capacity Weight uint 8 optional
iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8_optional.size = 1

-- Display: Cust Capacity Weight uint 8 optional
iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Cust Capacity Weight uint 8 optional: No Value"
  end

  return "Cust Capacity Weight uint 8 optional: "..value
end

-- Dissect: Cust Capacity Weight uint 8 optional
iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8_optional.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.cust_capacity_weight_uint_8_optional, range, value, display)

  return offset + length, value
end

-- Custom Group Id uint 16
iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16 = {}

-- Size: Custom Group Id uint 16
iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16.size = 2

-- Display: Custom Group Id uint 16
iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16.display = function(value)
  return "Custom Group Id uint 16: "..value
end

-- Dissect: Custom Group Id uint 16
iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.custom_group_id_uint_16, range, value, display)

  return offset + length, value
end

-- Custom Group Id uint 16 optional
iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16_optional = {}

-- Size: Custom Group Id uint 16 optional
iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16_optional.size = 2

-- Display: Custom Group Id uint 16 optional
iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16_optional.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Custom Group Id uint 16 optional: No Value"
  end

  return "Custom Group Id uint 16 optional: "..value
end

-- Dissect: Custom Group Id uint 16 optional
iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16_optional.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.custom_group_id_uint_16_optional, range, value, display)

  return offset + length, value
end

-- Customer Or Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.customer_or_firm = {}

-- Size: Customer Or Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.customer_or_firm.size = 1

-- Display: Customer Or Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.customer_or_firm.display = function(value)
  if value == 0 then
    return "Customer Or Firm: Customer (0)"
  end
  if value == 1 then
    return "Customer Or Firm: Firm (1)"
  end
  if value == 2 then
    return "Customer Or Firm: Broker Dealer (2)"
  end
  if value == 3 then
    return "Customer Or Firm: Market Maker (3)"
  end
  if value == 4 then
    return "Customer Or Firm: Away Market Maker (4)"
  end
  if value == 5 then
    return "Customer Or Firm: Prof Customer (5)"
  end

  return "Customer Or Firm: Unknown("..value..")"
end

-- Dissect: Customer Or Firm
iex_iexoptions_binaryorderentry_sbe_v1_0.customer_or_firm.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.customer_or_firm.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.customer_or_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.customer_or_firm, range, value, display)

  return offset + length, value
end

-- Default Account
iex_iexoptions_binaryorderentry_sbe_v1_0.default_account = {}

-- Size: Default Account
iex_iexoptions_binaryorderentry_sbe_v1_0.default_account.size = 16

-- Display: Default Account
iex_iexoptions_binaryorderentry_sbe_v1_0.default_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Default Account: No Value"
  end

  return "Default Account: "..value
end

-- Dissect: Default Account
iex_iexoptions_binaryorderentry_sbe_v1_0.default_account.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.default_account.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.default_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.default_account, range, value, display)

  return offset + length, value
end

-- Default Attributed Quote
iex_iexoptions_binaryorderentry_sbe_v1_0.default_attributed_quote = {}

-- Size: Default Attributed Quote
iex_iexoptions_binaryorderentry_sbe_v1_0.default_attributed_quote.size = 1

-- Display: Default Attributed Quote
iex_iexoptions_binaryorderentry_sbe_v1_0.default_attributed_quote.display = function(value)
  if value == 1 then
    return "Default Attributed Quote: Sum (1)"
  end
  if value == 2 then
    return "Default Attributed Quote: Order Info Capacity (2)"
  end
  if value == 3 then
    return "Default Attributed Quote: Order Info Mpid (3)"
  end
  if value == 4 then
    return "Default Attributed Quote: Order Info Capacity Mpid (4)"
  end
  if value == 5 then
    return "Default Attributed Quote: Do Not Use Sum (5)"
  end
  if value == 128 then
    return "Default Attributed Quote: No Value"
  end

  return "Default Attributed Quote: Unknown("..value..")"
end

-- Dissect: Default Attributed Quote
iex_iexoptions_binaryorderentry_sbe_v1_0.default_attributed_quote.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.default_attributed_quote.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.default_attributed_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.default_attributed_quote, range, value, display)

  return offset + length, value
end

-- Default Cancel Instead Of Slide
iex_iexoptions_binaryorderentry_sbe_v1_0.default_cancel_instead_of_slide = {}

-- Size: Default Cancel Instead Of Slide
iex_iexoptions_binaryorderentry_sbe_v1_0.default_cancel_instead_of_slide.size = 1

-- Display: Default Cancel Instead Of Slide
iex_iexoptions_binaryorderentry_sbe_v1_0.default_cancel_instead_of_slide.display = function(value)
  if value == 0 then
    return "Default Cancel Instead Of Slide: False (0)"
  end
  if value == 1 then
    return "Default Cancel Instead Of Slide: True (1)"
  end
  if value == 255 then
    return "Default Cancel Instead Of Slide: No Value"
  end

  return "Default Cancel Instead Of Slide: Unknown("..value..")"
end

-- Dissect: Default Cancel Instead Of Slide
iex_iexoptions_binaryorderentry_sbe_v1_0.default_cancel_instead_of_slide.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.default_cancel_instead_of_slide.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.default_cancel_instead_of_slide.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.default_cancel_instead_of_slide, range, value, display)

  return offset + length, value
end

-- Default Clearing Account
iex_iexoptions_binaryorderentry_sbe_v1_0.default_clearing_account = {}

-- Size: Default Clearing Account
iex_iexoptions_binaryorderentry_sbe_v1_0.default_clearing_account.size = 4

-- Display: Default Clearing Account
iex_iexoptions_binaryorderentry_sbe_v1_0.default_clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Default Clearing Account: No Value"
  end

  return "Default Clearing Account: "..value
end

-- Dissect: Default Clearing Account
iex_iexoptions_binaryorderentry_sbe_v1_0.default_clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.default_clearing_account.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.default_clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.default_clearing_account, range, value, display)

  return offset + length, value
end

-- Default Mpid
iex_iexoptions_binaryorderentry_sbe_v1_0.default_mpid = {}

-- Size: Default Mpid
iex_iexoptions_binaryorderentry_sbe_v1_0.default_mpid.size = 4

-- Display: Default Mpid
iex_iexoptions_binaryorderentry_sbe_v1_0.default_mpid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Default Mpid: No Value"
  end

  return "Default Mpid: "..value
end

-- Dissect: Default Mpid
iex_iexoptions_binaryorderentry_sbe_v1_0.default_mpid.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.default_mpid.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.default_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.default_mpid, range, value, display)

  return offset + length, value
end

-- Default Optional Data
iex_iexoptions_binaryorderentry_sbe_v1_0.default_optional_data = {}

-- Size: Default Optional Data
iex_iexoptions_binaryorderentry_sbe_v1_0.default_optional_data.size = 16

-- Display: Default Optional Data
iex_iexoptions_binaryorderentry_sbe_v1_0.default_optional_data.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Default Optional Data: No Value"
  end

  return "Default Optional Data: "..value
end

-- Dissect: Default Optional Data
iex_iexoptions_binaryorderentry_sbe_v1_0.default_optional_data.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.default_optional_data.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.default_optional_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.default_optional_data, range, value, display)

  return offset + length, value
end

-- Delta
iex_iexoptions_binaryorderentry_sbe_v1_0.delta = {}

-- Size: Delta
iex_iexoptions_binaryorderentry_sbe_v1_0.delta.size = 4

-- Display: Delta
iex_iexoptions_binaryorderentry_sbe_v1_0.delta.display = function(value)
  return "Delta: "..value
end

-- Dissect: Delta
iex_iexoptions_binaryorderentry_sbe_v1_0.delta.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.delta.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.delta, range, value, display)

  return offset + length, value
end

-- Display Inst
iex_iexoptions_binaryorderentry_sbe_v1_0.display_inst = {}

-- Size: Display Inst
iex_iexoptions_binaryorderentry_sbe_v1_0.display_inst.size = 1

-- Display: Display Inst
iex_iexoptions_binaryorderentry_sbe_v1_0.display_inst.display = function(value)
  if value == 1 then
    return "Display Inst: Post Only (1)"
  end

  return "Display Inst: Unknown("..value..")"
end

-- Dissect: Display Inst
iex_iexoptions_binaryorderentry_sbe_v1_0.display_inst.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.display_inst.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.display_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.display_inst, range, value, display)

  return offset + length, value
end

-- Display Price
iex_iexoptions_binaryorderentry_sbe_v1_0.display_price = {}

-- Size: Display Price
iex_iexoptions_binaryorderentry_sbe_v1_0.display_price.size = 8

-- Display: Display Price
iex_iexoptions_binaryorderentry_sbe_v1_0.display_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Display Price: No Value"
  end

  return "Display Price: "..value
end

-- Translate: Display Price
iex_iexoptions_binaryorderentry_sbe_v1_0.display_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Display Price
iex_iexoptions_binaryorderentry_sbe_v1_0.display_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.display_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexoptions_binaryorderentry_sbe_v1_0.display_price.translate(raw)
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.display_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.display_price, range, value, display)

  return offset + length, value
end

-- Effective Limit Price
iex_iexoptions_binaryorderentry_sbe_v1_0.effective_limit_price = {}

-- Size: Effective Limit Price
iex_iexoptions_binaryorderentry_sbe_v1_0.effective_limit_price.size = 8

-- Display: Effective Limit Price
iex_iexoptions_binaryorderentry_sbe_v1_0.effective_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Effective Limit Price: No Value"
  end

  return "Effective Limit Price: "..value
end

-- Translate: Effective Limit Price
iex_iexoptions_binaryorderentry_sbe_v1_0.effective_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Effective Limit Price
iex_iexoptions_binaryorderentry_sbe_v1_0.effective_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.effective_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexoptions_binaryorderentry_sbe_v1_0.effective_limit_price.translate(raw)
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.effective_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.effective_limit_price, range, value, display)

  return offset + length, value
end

-- End Sequence
iex_iexoptions_binaryorderentry_sbe_v1_0.end_sequence = {}

-- Size: End Sequence
iex_iexoptions_binaryorderentry_sbe_v1_0.end_sequence.size = 4

-- Display: End Sequence
iex_iexoptions_binaryorderentry_sbe_v1_0.end_sequence.display = function(value)
  return "End Sequence: "..value
end

-- Dissect: End Sequence
iex_iexoptions_binaryorderentry_sbe_v1_0.end_sequence.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.end_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.end_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.end_sequence, range, value, display)

  return offset + length, value
end

-- Exec Id
iex_iexoptions_binaryorderentry_sbe_v1_0.exec_id = {}

-- Size: Exec Id
iex_iexoptions_binaryorderentry_sbe_v1_0.exec_id.size = 8

-- Display: Exec Id
iex_iexoptions_binaryorderentry_sbe_v1_0.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
iex_iexoptions_binaryorderentry_sbe_v1_0.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exec Inst
iex_iexoptions_binaryorderentry_sbe_v1_0.exec_inst = {}

-- Size: Exec Inst
iex_iexoptions_binaryorderentry_sbe_v1_0.exec_inst.size = 1

-- Display: Exec Inst
iex_iexoptions_binaryorderentry_sbe_v1_0.exec_inst.display = function(value)
  if value == 1 then
    return "Exec Inst: Iso (1)"
  end
  if value == 2 then
    return "Exec Inst: Do Not Route (2)"
  end

  return "Exec Inst: Unknown("..value..")"
end

-- Dissect: Exec Inst
iex_iexoptions_binaryorderentry_sbe_v1_0.exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.exec_inst.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Fee Code
iex_iexoptions_binaryorderentry_sbe_v1_0.fee_code = {}

-- Size: Fee Code
iex_iexoptions_binaryorderentry_sbe_v1_0.fee_code.size = 2

-- Display: Fee Code
iex_iexoptions_binaryorderentry_sbe_v1_0.fee_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fee Code: No Value"
  end

  return "Fee Code: "..value
end

-- Dissect: Fee Code
iex_iexoptions_binaryorderentry_sbe_v1_0.fee_code.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.fee_code.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.fee_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.fee_code, range, value, display)

  return offset + length, value
end

-- Instrument Id Instrument Id
iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id = {}

-- Size: Instrument Id Instrument Id
iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size = 4

-- Display: Instrument Id Instrument Id
iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.display = function(value)
  return "Instrument Id Instrument Id: "..value
end

-- Dissect: Instrument Id Instrument Id
iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.instrument_id_instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Id uint 32
iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_uint_32 = {}

-- Size: Instrument Id uint 32
iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_uint_32.size = 4

-- Display: Instrument Id uint 32
iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_uint_32.display = function(value)
  return "Instrument Id uint 32: "..value
end

-- Dissect: Instrument Id uint 32
iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_uint_32.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_uint_32.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_uint_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.instrument_id_uint_32, range, value, display)

  return offset + length, value
end

-- Ioc Attribution
iex_iexoptions_binaryorderentry_sbe_v1_0.ioc_attribution = {}

-- Size: Ioc Attribution
iex_iexoptions_binaryorderentry_sbe_v1_0.ioc_attribution.size = 1

-- Display: Ioc Attribution
iex_iexoptions_binaryorderentry_sbe_v1_0.ioc_attribution.display = function(value)
  if value == 1 then
    return "Ioc Attribution: Include Ioc (1)"
  end
  if value == 2 then
    return "Ioc Attribution: Exclude Ioc (2)"
  end
  if value == 128 then
    return "Ioc Attribution: No Value"
  end

  return "Ioc Attribution: Unknown("..value..")"
end

-- Dissect: Ioc Attribution
iex_iexoptions_binaryorderentry_sbe_v1_0.ioc_attribution.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.ioc_attribution.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.ioc_attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.ioc_attribution, range, value, display)

  return offset + length, value
end

-- Joined
iex_iexoptions_binaryorderentry_sbe_v1_0.joined = {}

-- Size: Joined
iex_iexoptions_binaryorderentry_sbe_v1_0.joined.size = 1

-- Display: Joined
iex_iexoptions_binaryorderentry_sbe_v1_0.joined.display = function(value)
  if value == 0 then
    return "Joined: False (0)"
  end
  if value == 1 then
    return "Joined: True (1)"
  end

  return "Joined: Unknown("..value..")"
end

-- Dissect: Joined
iex_iexoptions_binaryorderentry_sbe_v1_0.joined.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.joined.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.joined.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.joined, range, value, display)

  return offset + length, value
end

-- Keep Alive
iex_iexoptions_binaryorderentry_sbe_v1_0.keep_alive = {}

-- Size: Keep Alive
iex_iexoptions_binaryorderentry_sbe_v1_0.keep_alive.size = 1

-- Display: Keep Alive
iex_iexoptions_binaryorderentry_sbe_v1_0.keep_alive.display = function(value)
  if value == 0 then
    return "Keep Alive: False (0)"
  end
  if value == 1 then
    return "Keep Alive: True (1)"
  end

  return "Keep Alive: Unknown("..value..")"
end

-- Dissect: Keep Alive
iex_iexoptions_binaryorderentry_sbe_v1_0.keep_alive.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.keep_alive.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.keep_alive.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.keep_alive, range, value, display)

  return offset + length, value
end

-- Last Px
iex_iexoptions_binaryorderentry_sbe_v1_0.last_px = {}

-- Size: Last Px
iex_iexoptions_binaryorderentry_sbe_v1_0.last_px.size = 8

-- Display: Last Px
iex_iexoptions_binaryorderentry_sbe_v1_0.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
iex_iexoptions_binaryorderentry_sbe_v1_0.last_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Px
iex_iexoptions_binaryorderentry_sbe_v1_0.last_px.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexoptions_binaryorderentry_sbe_v1_0.last_px.translate(raw)
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.last_qty = {}

-- Size: Last Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.last_qty.size = 4

-- Display: Last Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Leaves Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.leaves_qty = {}

-- Size: Leaves Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.leaves_qty.size = 4

-- Display: Leaves Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Logon Id
iex_iexoptions_binaryorderentry_sbe_v1_0.logon_id = {}

-- Size: Logon Id
iex_iexoptions_binaryorderentry_sbe_v1_0.logon_id.size = 16

-- Display: Logon Id
iex_iexoptions_binaryorderentry_sbe_v1_0.logon_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Logon Id: No Value"
  end

  return "Logon Id: "..value
end

-- Dissect: Logon Id
iex_iexoptions_binaryorderentry_sbe_v1_0.logon_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.logon_id.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.logon_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.logon_id, range, value, display)

  return offset + length, value
end

-- Market Participant Id
iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id = {}

-- Size: Market Participant Id
iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size = 4

-- Display: Market Participant Id
iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Participant Id: No Value"
  end

  return "Market Participant Id: "..value
end

-- Dissect: Market Participant Id
iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.market_participant_id, range, value, display)

  return offset + length, value
end

-- Matching Unit
iex_iexoptions_binaryorderentry_sbe_v1_0.matching_unit = {}

-- Size: Matching Unit
iex_iexoptions_binaryorderentry_sbe_v1_0.matching_unit.size = 2

-- Display: Matching Unit
iex_iexoptions_binaryorderentry_sbe_v1_0.matching_unit.display = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
iex_iexoptions_binaryorderentry_sbe_v1_0.matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Maturity Date
iex_iexoptions_binaryorderentry_sbe_v1_0.maturity_date = {}

-- Size: Maturity Date
iex_iexoptions_binaryorderentry_sbe_v1_0.maturity_date.size = 8

-- Display: Maturity Date
iex_iexoptions_binaryorderentry_sbe_v1_0.maturity_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
iex_iexoptions_binaryorderentry_sbe_v1_0.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.maturity_date.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Max Allowable Width
iex_iexoptions_binaryorderentry_sbe_v1_0.max_allowable_width = {}

-- Size: Max Allowable Width
iex_iexoptions_binaryorderentry_sbe_v1_0.max_allowable_width.size = 4

-- Display: Max Allowable Width
iex_iexoptions_binaryorderentry_sbe_v1_0.max_allowable_width.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Max Allowable Width: No Value"
  end

  return "Max Allowable Width: "..value
end

-- Dissect: Max Allowable Width
iex_iexoptions_binaryorderentry_sbe_v1_0.max_allowable_width.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.max_allowable_width.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.max_allowable_width.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.max_allowable_width, range, value, display)

  return offset + length, value
end

-- Max Duplicative
iex_iexoptions_binaryorderentry_sbe_v1_0.max_duplicative = {}

-- Size: Max Duplicative
iex_iexoptions_binaryorderentry_sbe_v1_0.max_duplicative.size = 4

-- Display: Max Duplicative
iex_iexoptions_binaryorderentry_sbe_v1_0.max_duplicative.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Max Duplicative: No Value"
  end

  return "Max Duplicative: "..value
end

-- Dissect: Max Duplicative
iex_iexoptions_binaryorderentry_sbe_v1_0.max_duplicative.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.max_duplicative.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.max_duplicative.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.max_duplicative, range, value, display)

  return offset + length, value
end

-- Max Notional
iex_iexoptions_binaryorderentry_sbe_v1_0.max_notional = {}

-- Size: Max Notional
iex_iexoptions_binaryorderentry_sbe_v1_0.max_notional.size = 8

-- Display: Max Notional
iex_iexoptions_binaryorderentry_sbe_v1_0.max_notional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Max Notional: No Value"
  end

  return "Max Notional: "..value
end

-- Translate: Max Notional
iex_iexoptions_binaryorderentry_sbe_v1_0.max_notional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Max Notional
iex_iexoptions_binaryorderentry_sbe_v1_0.max_notional.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.max_notional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexoptions_binaryorderentry_sbe_v1_0.max_notional.translate(raw)
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.max_notional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.max_notional, range, value, display)

  return offset + length, value
end

-- Max Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.max_qty = {}

-- Size: Max Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.max_qty.size = 4

-- Display: Max Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.max_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Max Qty: No Value"
  end

  return "Max Qty: "..value
end

-- Dissect: Max Qty
iex_iexoptions_binaryorderentry_sbe_v1_0.max_qty.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.max_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.max_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.max_qty, range, value, display)

  return offset + length, value
end

-- Member
iex_iexoptions_binaryorderentry_sbe_v1_0.member = {}

-- Size: Member
iex_iexoptions_binaryorderentry_sbe_v1_0.member.size = 8

-- Display: Member
iex_iexoptions_binaryorderentry_sbe_v1_0.member.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Member: No Value"
  end

  return "Member: "..value
end

-- Dissect: Member
iex_iexoptions_binaryorderentry_sbe_v1_0.member.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.member.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.member.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.member, range, value, display)

  return offset + length, value
end

-- Mic
iex_iexoptions_binaryorderentry_sbe_v1_0.mic = {}

-- Size: Mic
iex_iexoptions_binaryorderentry_sbe_v1_0.mic.size = 4

-- Display: Mic
iex_iexoptions_binaryorderentry_sbe_v1_0.mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic: No Value"
  end

  return "Mic: "..value
end

-- Dissect: Mic
iex_iexoptions_binaryorderentry_sbe_v1_0.mic.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.mic.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.mic, range, value, display)

  return offset + length, value
end

-- Mpid Filter
iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_filter = {}

-- Size: Mpid Filter
iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_filter.size = 1

-- Display: Mpid Filter
iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_filter.display = function(value)
  if value == 0 then
    return "Mpid Filter: Explicit Mpid (0)"
  end
  if value == 1 then
    return "Mpid Filter: Across Mpi Ds (1)"
  end

  return "Mpid Filter: Unknown("..value..")"
end

-- Dissect: Mpid Filter
iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_filter.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_filter.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_filter.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.mpid_filter, range, value, display)

  return offset + length, value
end

-- Mpid Status
iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_status = {}

-- Size: Mpid Status
iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_status.size = 1

-- Display: Mpid Status
iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_status.display = function(value)
  if value == 1 then
    return "Mpid Status: Active (1)"
  end
  if value == 2 then
    return "Mpid Status: Inactive (2)"
  end

  return "Mpid Status: Unknown("..value..")"
end

-- Dissect: Mpid Status
iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_status.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.mpid_status, range, value, display)

  return offset + length, value
end

-- Mpv Group
iex_iexoptions_binaryorderentry_sbe_v1_0.mpv_group = {}

-- Size: Mpv Group
iex_iexoptions_binaryorderentry_sbe_v1_0.mpv_group.size = 1

-- Display: Mpv Group
iex_iexoptions_binaryorderentry_sbe_v1_0.mpv_group.display = function(value)
  if value == 0 then
    return "Mpv Group: All Penny (0)"
  end
  if value == 1 then
    return "Mpv Group: Penny Nickel (1)"
  end
  if value == 2 then
    return "Mpv Group: Nickel Dime (2)"
  end

  return "Mpv Group: Unknown("..value..")"
end

-- Dissect: Mpv Group
iex_iexoptions_binaryorderentry_sbe_v1_0.mpv_group.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.mpv_group.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.mpv_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.mpv_group, range, value, display)

  return offset + length, value
end

-- Next Seq No
iex_iexoptions_binaryorderentry_sbe_v1_0.next_seq_no = {}

-- Size: Next Seq No
iex_iexoptions_binaryorderentry_sbe_v1_0.next_seq_no.size = 4

-- Display: Next Seq No
iex_iexoptions_binaryorderentry_sbe_v1_0.next_seq_no.display = function(value)
  return "Next Seq No: "..value
end

-- Dissect: Next Seq No
iex_iexoptions_binaryorderentry_sbe_v1_0.next_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.next_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.next_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.next_seq_no, range, value, display)

  return offset + length, value
end

-- Notification Reason
iex_iexoptions_binaryorderentry_sbe_v1_0.notification_reason = {}

-- Size: Notification Reason
iex_iexoptions_binaryorderentry_sbe_v1_0.notification_reason.size = 1

-- Display: Notification Reason
iex_iexoptions_binaryorderentry_sbe_v1_0.notification_reason.display = function(value)
  if value == 0 then
    return "Notification Reason: Threshold Exceeded (0)"
  end
  if value == 1 then
    return "Notification Reason: Check Failure (1)"
  end

  return "Notification Reason: Unknown("..value..")"
end

-- Dissect: Notification Reason
iex_iexoptions_binaryorderentry_sbe_v1_0.notification_reason.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.notification_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.notification_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.notification_reason, range, value, display)

  return offset + length, value
end

-- Num In Group
iex_iexoptions_binaryorderentry_sbe_v1_0.num_in_group = {}

-- Size: Num In Group
iex_iexoptions_binaryorderentry_sbe_v1_0.num_in_group.size = 1

-- Display: Num In Group
iex_iexoptions_binaryorderentry_sbe_v1_0.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
iex_iexoptions_binaryorderentry_sbe_v1_0.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Occ Id
iex_iexoptions_binaryorderentry_sbe_v1_0.occ_id = {}

-- Size: Occ Id
iex_iexoptions_binaryorderentry_sbe_v1_0.occ_id.size = 5

-- Display: Occ Id
iex_iexoptions_binaryorderentry_sbe_v1_0.occ_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Occ Id: No Value"
  end

  return "Occ Id: "..value
end

-- Dissect: Occ Id
iex_iexoptions_binaryorderentry_sbe_v1_0.occ_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.occ_id.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.occ_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.occ_id, range, value, display)

  return offset + length, value
end

-- Open Close
iex_iexoptions_binaryorderentry_sbe_v1_0.open_close = {}

-- Size: Open Close
iex_iexoptions_binaryorderentry_sbe_v1_0.open_close.size = 1

-- Display: Open Close
iex_iexoptions_binaryorderentry_sbe_v1_0.open_close.display = function(value)
  if value == 0 then
    return "Open Close: Open (0)"
  end
  if value == 1 then
    return "Open Close: Close (1)"
  end
  if value == 2 then
    return "Open Close: Not Applicable (2)"
  end

  return "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
iex_iexoptions_binaryorderentry_sbe_v1_0.open_close.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.open_close.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.open_close, range, value, display)

  return offset + length, value
end

-- Option Type
iex_iexoptions_binaryorderentry_sbe_v1_0.option_type = {}

-- Size: Option Type
iex_iexoptions_binaryorderentry_sbe_v1_0.option_type.size = 1

-- Display: Option Type
iex_iexoptions_binaryorderentry_sbe_v1_0.option_type.display = function(value)
  if value == 0 then
    return "Option Type: Put (0)"
  end
  if value == 1 then
    return "Option Type: Call (1)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
iex_iexoptions_binaryorderentry_sbe_v1_0.option_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.option_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.option_type, range, value, display)

  return offset + length, value
end

-- Optional Data
iex_iexoptions_binaryorderentry_sbe_v1_0.optional_data = {}

-- Size: Optional Data
iex_iexoptions_binaryorderentry_sbe_v1_0.optional_data.size = 16

-- Display: Optional Data
iex_iexoptions_binaryorderentry_sbe_v1_0.optional_data.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Optional Data: No Value"
  end

  return "Optional Data: "..value
end

-- Dissect: Optional Data
iex_iexoptions_binaryorderentry_sbe_v1_0.optional_data.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.optional_data.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.optional_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.optional_data, range, value, display)

  return offset + length, value
end

-- Ord Type
iex_iexoptions_binaryorderentry_sbe_v1_0.ord_type = {}

-- Size: Ord Type
iex_iexoptions_binaryorderentry_sbe_v1_0.ord_type.size = 1

-- Display: Ord Type
iex_iexoptions_binaryorderentry_sbe_v1_0.ord_type.display = function(value)
  if value == 1 then
    return "Ord Type: Market (1)"
  end
  if value == 2 then
    return "Ord Type: Limit (2)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
iex_iexoptions_binaryorderentry_sbe_v1_0.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.ord_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Id
iex_iexoptions_binaryorderentry_sbe_v1_0.order_id = {}

-- Size: Order Id
iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.size = 8

-- Display: Order Id
iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Qty Quantity Non Zero
iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero = {}

-- Size: Order Qty Quantity Non Zero
iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero.size = 4

-- Display: Order Qty Quantity Non Zero
iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero.display = function(value)
  return "Order Qty Quantity Non Zero: "..value
end

-- Dissect: Order Qty Quantity Non Zero
iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_qty_quantity_non_zero, range, value, display)

  return offset + length, value
end

-- Order Qty Quantity Zero optional
iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_zero_optional = {}

-- Size: Order Qty Quantity Zero optional
iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_zero_optional.size = 4

-- Display: Order Qty Quantity Zero optional
iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_zero_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Order Qty Quantity Zero optional: No Value"
  end

  return "Order Qty Quantity Zero optional: "..value
end

-- Dissect: Order Qty Quantity Zero optional
iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_zero_optional.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_zero_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_zero_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_qty_quantity_zero_optional, range, value, display)

  return offset + length, value
end

-- Order Unsolicited Ack Subscription
iex_iexoptions_binaryorderentry_sbe_v1_0.order_unsolicited_ack_subscription = {}

-- Size: Order Unsolicited Ack Subscription
iex_iexoptions_binaryorderentry_sbe_v1_0.order_unsolicited_ack_subscription.size = 1

-- Display: Order Unsolicited Ack Subscription
iex_iexoptions_binaryorderentry_sbe_v1_0.order_unsolicited_ack_subscription.display = function(value)
  if value == 0 then
    return "Order Unsolicited Ack Subscription: False (0)"
  end
  if value == 1 then
    return "Order Unsolicited Ack Subscription: True (1)"
  end

  return "Order Unsolicited Ack Subscription: Unknown("..value..")"
end

-- Dissect: Order Unsolicited Ack Subscription
iex_iexoptions_binaryorderentry_sbe_v1_0.order_unsolicited_ack_subscription.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.order_unsolicited_ack_subscription.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.order_unsolicited_ack_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_unsolicited_ack_subscription, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id.size = 8

-- Display: Orig Cl Ord Id
iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id.display = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Orp Enabled
iex_iexoptions_binaryorderentry_sbe_v1_0.orp_enabled = {}

-- Size: Orp Enabled
iex_iexoptions_binaryorderentry_sbe_v1_0.orp_enabled.size = 1

-- Display: Orp Enabled
iex_iexoptions_binaryorderentry_sbe_v1_0.orp_enabled.display = function(value)
  if value == 0 then
    return "Orp Enabled: False (0)"
  end
  if value == 1 then
    return "Orp Enabled: True (1)"
  end

  return "Orp Enabled: Unknown("..value..")"
end

-- Dissect: Orp Enabled
iex_iexoptions_binaryorderentry_sbe_v1_0.orp_enabled.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.orp_enabled.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.orp_enabled.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.orp_enabled, range, value, display)

  return offset + length, value
end

-- Osi Symbol
iex_iexoptions_binaryorderentry_sbe_v1_0.osi_symbol = {}

-- Size: Osi Symbol
iex_iexoptions_binaryorderentry_sbe_v1_0.osi_symbol.size = 21

-- Display: Osi Symbol
iex_iexoptions_binaryorderentry_sbe_v1_0.osi_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Osi Symbol: No Value"
  end

  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
iex_iexoptions_binaryorderentry_sbe_v1_0.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.osi_symbol.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Packet Length
iex_iexoptions_binaryorderentry_sbe_v1_0.packet_length = {}

-- Size: Packet Length
iex_iexoptions_binaryorderentry_sbe_v1_0.packet_length.size = 2

-- Display: Packet Length
iex_iexoptions_binaryorderentry_sbe_v1_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
iex_iexoptions_binaryorderentry_sbe_v1_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Percentage Limit
iex_iexoptions_binaryorderentry_sbe_v1_0.percentage_limit = {}

-- Size: Percentage Limit
iex_iexoptions_binaryorderentry_sbe_v1_0.percentage_limit.size = 4

-- Display: Percentage Limit
iex_iexoptions_binaryorderentry_sbe_v1_0.percentage_limit.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Percentage Limit: No Value"
  end

  return "Percentage Limit: "..value
end

-- Dissect: Percentage Limit
iex_iexoptions_binaryorderentry_sbe_v1_0.percentage_limit.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.percentage_limit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.percentage_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.percentage_limit, range, value, display)

  return offset + length, value
end

-- Price Price 4
iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4 = {}

-- Size: Price Price 4
iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4.size = 4

-- Display: Price Price 4
iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4.display = function(value)
  return "Price Price 4: "..value
end

-- Translate: Price Price 4
iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4.translate = function(raw)
  return raw/10000
end

-- Dissect: Price Price 4
iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4.translate(raw)
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.price_price_4, range, value, display)

  return offset + length, value
end

-- Price Price 4 optional
iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4_optional = {}

-- Size: Price Price 4 optional
iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4_optional.size = 4

-- Display: Price Price 4 optional
iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == -2147483648 then
    return "Price Price 4 optional: No Value"
  end

  return "Price Price 4 optional: "..value
end

-- Translate: Price Price 4 optional
iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == -2147483648 then
    return 0/0
  end

  return raw/10000
end

-- Dissect: Price Price 4 optional
iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4_optional.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4_optional.translate(raw)
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.price_price_4_optional, range, value, display)

  return offset + length, value
end

-- Price Price 8
iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8 = {}

-- Size: Price Price 8
iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.size = 8

-- Display: Price Price 8
iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.display = function(value)
  return "Price Price 8: "..value
end

-- Translate: Price Price 8
iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price Price 8
iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.translate(raw)
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.price_price_8, range, value, display)

  return offset + length, value
end

-- Quote Relief Mult
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_relief_mult = {}

-- Size: Quote Relief Mult
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_relief_mult.size = 4

-- Display: Quote Relief Mult
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_relief_mult.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Quote Relief Mult: No Value"
  end

  return "Quote Relief Mult: "..value
end

-- Dissect: Quote Relief Mult
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_relief_mult.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_relief_mult.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_relief_mult.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.quote_relief_mult, range, value, display)

  return offset + length, value
end

-- Quote Type
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_type = {}

-- Size: Quote Type
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_type.size = 1

-- Display: Quote Type
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_type.display = function(value)
  if value == 0 then
    return "Quote Type: Standard (0)"
  end
  if value == 1 then
    return "Quote Type: Reprice (1)"
  end
  if value == 2 then
    return "Quote Type: Cancel (2)"
  end

  return "Quote Type: Unknown("..value..")"
end

-- Dissect: Quote Type
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.quote_type, range, value, display)

  return offset + length, value
end

-- Quote Unsolicited Ack Subscription
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_unsolicited_ack_subscription = {}

-- Size: Quote Unsolicited Ack Subscription
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_unsolicited_ack_subscription.size = 1

-- Display: Quote Unsolicited Ack Subscription
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_unsolicited_ack_subscription.display = function(value)
  if value == 0 then
    return "Quote Unsolicited Ack Subscription: False (0)"
  end
  if value == 1 then
    return "Quote Unsolicited Ack Subscription: True (1)"
  end

  return "Quote Unsolicited Ack Subscription: Unknown("..value..")"
end

-- Dissect: Quote Unsolicited Ack Subscription
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_unsolicited_ack_subscription.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_unsolicited_ack_subscription.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_unsolicited_ack_subscription.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.quote_unsolicited_ack_subscription, range, value, display)

  return offset + length, value
end

-- Reason
iex_iexoptions_binaryorderentry_sbe_v1_0.reason = {}

-- Size: Reason
iex_iexoptions_binaryorderentry_sbe_v1_0.reason.size = 1

-- Display: Reason
iex_iexoptions_binaryorderentry_sbe_v1_0.reason.display = function(value)
  if value == 0 then
    return "Reason: Success (0)"
  end
  if value == 1 then
    return "Reason: Session Level Reject (1)"
  end
  if value == 2 then
    return "Reason: Logout Requested (2)"
  end
  if value == 3 then
    return "Reason: Unknown (3)"
  end
  if value == 4 then
    return "Reason: Invalid Logon Id (4)"
  end
  if value == 5 then
    return "Reason: Invalid Token (5)"
  end
  if value == 6 then
    return "Reason: Already Logged In (6)"
  end
  if value == 7 then
    return "Reason: Login Timeout (7)"
  end
  if value == 8 then
    return "Reason: Invalid Packet Length (8)"
  end
  if value == 9 then
    return "Reason: Invalid Message (9)"
  end
  if value == 10 then
    return "Reason: Join Revoked (10)"
  end
  if value == 11 then
    return "Reason: Heartbeat Timeout (11)"
  end
  if value == 12 then
    return "Reason: Message Out Of Sequence (12)"
  end
  if value == 13 then
    return "Reason: Invalid Subsession Id (13)"
  end
  if value == 14 then
    return "Reason: Subsession Not Joined (14)"
  end
  if value == 15 then
    return "Reason: Denial Of Service (15)"
  end
  if value == 16 then
    return "Reason: Invalid Argument (16)"
  end
  if value == 17 then
    return "Reason: Already Joined (17)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
iex_iexoptions_binaryorderentry_sbe_v1_0.reason.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Reason Code
iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code = {}

-- Size: Reason Code
iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.size = 1

-- Display: Reason Code
iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.display = function(value)
  if value == 1 then
    return "Reason Code: Unknown Instrument Identifier (1)"
  end
  if value == 2 then
    return "Reason Code: Invalid Ord Type (2)"
  end
  if value == 3 then
    return "Reason Code: Invalid Side (3)"
  end
  if value == 4 then
    return "Reason Code: Invalid Time In Force (4)"
  end
  if value == 5 then
    return "Reason Code: Invalid Open Close (5)"
  end
  if value == 6 then
    return "Reason Code: Invalid Customer Or Firm (6)"
  end
  if value == 7 then
    return "Reason Code: Invalid Display Inst (7)"
  end
  if value == 8 then
    return "Reason Code: Invalid Attributed Quote (8)"
  end
  if value == 9 then
    return "Reason Code: Invalid Exec Inst (9)"
  end
  if value == 10 then
    return "Reason Code: Invalid Cancel Instead Of Slide (10)"
  end
  if value == 11 then
    return "Reason Code: Invalid Order Qty (11)"
  end
  if value == 12 then
    return "Reason Code: Closing Only (12)"
  end
  if value == 13 then
    return "Reason Code: Not Appointed (13)"
  end
  if value == 14 then
    return "Reason Code: Invalid Price (14)"
  end
  if value == 15 then
    return "Reason Code: Invalid Tag Combination For Market Order (15)"
  end
  if value == 16 then
    return "Reason Code: Invalid Tag Combination For Ioc (16)"
  end
  if value == 17 then
    return "Reason Code: Invalid Aiq (17)"
  end
  if value == 18 then
    return "Reason Code: Aiq Cancel Newest (18)"
  end
  if value == 19 then
    return "Reason Code: Aiq Cancel Oldest (19)"
  end
  if value == 20 then
    return "Reason Code: Aiq Cancel Smallest (20)"
  end
  if value == 21 then
    return "Reason Code: Aiq Cancel Both (21)"
  end
  if value == 22 then
    return "Reason Code: No Order Found (22)"
  end
  if value == 23 then
    return "Reason Code: Order In Pending State (23)"
  end
  if value == 24 then
    return "Reason Code: Order Terminal (24)"
  end
  if value == 25 then
    return "Reason Code: No Bid (25)"
  end
  if value == 26 then
    return "Reason Code: No Offer (26)"
  end
  if value == 27 then
    return "Reason Code: Order Not Marketable (27)"
  end
  if value == 28 then
    return "Reason Code: Order Would Lock Cross (28)"
  end
  if value == 29 then
    return "Reason Code: Invalid Quote Count (29)"
  end
  if value == 30 then
    return "Reason Code: Inconsistent Underlying (30)"
  end
  if value == 31 then
    return "Reason Code: Duplicate Quote (31)"
  end
  if value == 32 then
    return "Reason Code: Invalid Quote Type (32)"
  end
  if value == 33 then
    return "Reason Code: Invalid Bulk Action (33)"
  end
  if value == 34 then
    return "Reason Code: Invalid Bulk Action Parameters (34)"
  end
  if value == 35 then
    return "Reason Code: Invalid Custom Group Id (35)"
  end
  if value == 36 then
    return "Reason Code: Blocked Underlying Id (36)"
  end
  if value == 37 then
    return "Reason Code: Order Will Be Canceled (37)"
  end
  if value == 38 then
    return "Reason Code: Invalid Ack Style (38)"
  end
  if value == 39 then
    return "Reason Code: Invalid Mpid Filter (39)"
  end
  if value == 40 then
    return "Reason Code: Invalid Block (40)"
  end
  if value == 41 then
    return "Reason Code: Invalid Risk Control (41)"
  end
  if value == 42 then
    return "Reason Code: Invalid Risk Action Type (42)"
  end
  if value == 43 then
    return "Reason Code: Invalid Unblock Parameters (43)"
  end
  if value == 44 then
    return "Reason Code: Invalid Cl Ord Id (44)"
  end
  if value == 45 then
    return "Reason Code: Invalid Market Participant Id (45)"
  end
  if value == 46 then
    return "Reason Code: Invalid Nbbo Width (46)"
  end
  if value == 47 then
    return "Reason Code: Missing Clearing Account (47)"
  end
  if value == 48 then
    return "Reason Code: Invalid Clearing Account (48)"
  end
  if value == 49 then
    return "Reason Code: Invalid Account (49)"
  end
  if value == 50 then
    return "Reason Code: Price Slide Cancel (50)"
  end
  if value == 51 then
    return "Reason Code: Constrained By Drill Through Protection (51)"
  end
  if value == 52 then
    return "Reason Code: Invalid Optional Data (52)"
  end
  if value == 53 then
    return "Reason Code: Drill Through Protection Cancel (53)"
  end
  if value == 54 then
    return "Reason Code: Risk Breach (54)"
  end
  if value == 55 then
    return "Reason Code: Internal Error (55)"
  end
  if value == 56 then
    return "Reason Code: Blocked Custom Group Id (56)"
  end
  if value == 57 then
    return "Reason Code: Orp Reject (57)"
  end
  if value == 58 then
    return "Reason Code: Quote Not Found (58)"
  end
  if value == 59 then
    return "Reason Code: Too Late To Cancel (59)"
  end
  if value == 60 then
    return "Reason Code: Invalid Orp Reprice Check (60)"
  end
  if value == 61 then
    return "Reason Code: Contra Mm Interest (61)"
  end
  if value == 62 then
    return "Reason Code: Market Closed (62)"
  end
  if value == 63 then
    return "Reason Code: Market Suspended (63)"
  end
  if value == 64 then
    return "Reason Code: Invalid Ioc For Non Continuous (64)"
  end
  if value == 65 then
    return "Reason Code: Limit Up Limit Down (65)"
  end
  if value == 66 then
    return "Reason Code: Invalid Risk Control Status (66)"
  end
  if value == 67 then
    return "Reason Code: Invalid Time Limit (67)"
  end
  if value == 68 then
    return "Reason Code: Invalid Percentage Limit (68)"
  end
  if value == 69 then
    return "Reason Code: Invalid Count Limit (69)"
  end
  if value == 70 then
    return "Reason Code: Invalid Ioc Attribution (70)"
  end
  if value == 71 then
    return "Reason Code: Cancel Remaining Ioc (71)"
  end
  if value == 72 then
    return "Reason Code: No Market For Market Order (72)"
  end
  if value == 73 then
    return "Reason Code: Grmp Block (73)"
  end
  if value == 74 then
    return "Reason Code: Fully Filled (74)"
  end
  if value == 75 then
    return "Reason Code: Invalid Auction Id (75)"
  end
  if value == 76 then
    return "Reason Code: Invalid Response Order Qty (76)"
  end
  if value == 77 then
    return "Reason Code: Sum Complete (77)"
  end
  if value == 78 then
    return "Reason Code: Limit Order Price Protection Breach (78)"
  end
  if value == 79 then
    return "Reason Code: Intrinsic Value Breach (79)"
  end
  if value == 80 then
    return "Reason Code: Invalid Underlying Id (80)"
  end
  if value == 81 then
    return "Reason Code: Market Halt (81)"
  end
  if value == 82 then
    return "Reason Code: Market Order Max Notional Breach (82)"
  end
  if value == 83 then
    return "Reason Code: Invalid Target Party Id (83)"
  end
  if value == 84 then
    return "Reason Code: Invalid Routing Firm Id (84)"
  end
  if value == 85 then
    return "Reason Code: Opening Process Cancel (85)"
  end
  if value == 86 then
    return "Reason Code: Quote Would Lock Cross (86)"
  end
  if value == 87 then
    return "Reason Code: Invalid Clearing Firm (87)"
  end
  if value == 88 then
    return "Reason Code: Duplicate Cl Ord Id (88)"
  end
  if value == 89 then
    return "Reason Code: Invalid Orig Cl Ord Id (89)"
  end
  if value == 90 then
    return "Reason Code: Unknown Orig Cl Ord Id (90)"
  end
  if value == 91 then
    return "Reason Code: Invalid On Behalf Of Comp Id (91)"
  end
  if value == 92 then
    return "Reason Code: Disallowed Market Orders (92)"
  end
  if value == 93 then
    return "Reason Code: Disallowed Iso Ioc Orders (93)"
  end
  if value == 94 then
    return "Reason Code: Disallowed Iso Day Orders (94)"
  end
  if value == 95 then
    return "Reason Code: Restricted Symbol (95)"
  end
  if value == 96 then
    return "Reason Code: Cancel On Disconnect (96)"
  end
  if value == 97 then
    return "Reason Code: Invalid Send Time (97)"
  end
  if value == 98 then
    return "Reason Code: Invalid Cust Capacity Weight (98)"
  end
  if value == 99 then
    return "Reason Code: Max Duplicative (99)"
  end
  if value == 100 then
    return "Reason Code: Mpid Blocked (100)"
  end
  if value == 101 then
    return "Reason Code: Quote Canceled (101)"
  end
  if value == 102 then
    return "Reason Code: Invalid Custom Group Id Count (102)"
  end
  if value == 103 then
    return "Reason Code: Grmp Trip (103)"
  end
  if value == 104 then
    return "Reason Code: Max Qty Exceeded (104)"
  end
  if value == 105 then
    return "Reason Code: Max Notional Exceeded (105)"
  end
  if value == 106 then
    return "Reason Code: Occ Identifier Not Configured (106)"
  end
  if value == 107 then
    return "Reason Code: Arbitrage Breach (107)"
  end
  if value == 108 then
    return "Reason Code: Abrc Breach (108)"
  end
  if value == 109 then
    return "Reason Code: Admin Cancel (109)"
  end

  return "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Reject Type
iex_iexoptions_binaryorderentry_sbe_v1_0.reject_type = {}

-- Size: Reject Type
iex_iexoptions_binaryorderentry_sbe_v1_0.reject_type.size = 1

-- Display: Reject Type
iex_iexoptions_binaryorderentry_sbe_v1_0.reject_type.display = function(value)
  if value == 0 then
    return "Reject Type: New Order Reject (0)"
  end
  if value == 1 then
    return "Reject Type: Cancel Replace Request Reject (1)"
  end
  if value == 2 then
    return "Reject Type: Cancel Request Reject (2)"
  end
  if value == 3 then
    return "Reject Type: Mass Cancel Request Reject (3)"
  end
  if value == 4 then
    return "Reject Type: New Bulk Quote Reject (4)"
  end
  if value == 5 then
    return "Reject Type: Risk Limit Update Request Reject (5)"
  end
  if value == 6 then
    return "Reject Type: Risk Action Request Reject (6)"
  end
  if value == 7 then
    return "Reject Type: Purge Request Reject (7)"
  end
  if value == 8 then
    return "Reject Type: New Ioc Quote Reject (8)"
  end

  return "Reject Type: Unknown("..value..")"
end

-- Dissect: Reject Type
iex_iexoptions_binaryorderentry_sbe_v1_0.reject_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.reject_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.reject_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.reject_type, range, value, display)

  return offset + length, value
end

-- Reserved
iex_iexoptions_binaryorderentry_sbe_v1_0.reserved = {}

-- Size: Reserved
iex_iexoptions_binaryorderentry_sbe_v1_0.reserved.size = 1

-- Display: Reserved
iex_iexoptions_binaryorderentry_sbe_v1_0.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
iex_iexoptions_binaryorderentry_sbe_v1_0.reserved.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.reserved.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.reserved, range, value, display)

  return offset + length, value
end

-- Restatement Reason
iex_iexoptions_binaryorderentry_sbe_v1_0.restatement_reason = {}

-- Size: Restatement Reason
iex_iexoptions_binaryorderentry_sbe_v1_0.restatement_reason.size = 1

-- Display: Restatement Reason
iex_iexoptions_binaryorderentry_sbe_v1_0.restatement_reason.display = function(value)
  if value == 1 then
    return "Restatement Reason: Price Adjust Repricing (1)"
  end
  if value == 2 then
    return "Restatement Reason: Drill Through Protection Repricing (2)"
  end
  if value == 3 then
    return "Restatement Reason: Trading Halt (3)"
  end
  if value == 4 then
    return "Restatement Reason: Sum Conclusion (4)"
  end
  if value == 5 then
    return "Restatement Reason: Book Resubmission (5)"
  end

  return "Restatement Reason: Unknown("..value..")"
end

-- Dissect: Restatement Reason
iex_iexoptions_binaryorderentry_sbe_v1_0.restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.restatement_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.restatement_reason, range, value, display)

  return offset + length, value
end

-- Risk Ack Type
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_ack_type = {}

-- Size: Risk Ack Type
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_ack_type.size = 1

-- Display: Risk Ack Type
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_ack_type.display = function(value)
  if value == 0 then
    return "Risk Ack Type: Solicited (0)"
  end
  if value == 1 then
    return "Risk Ack Type: Unsolicited (1)"
  end

  return "Risk Ack Type: Unknown("..value..")"
end

-- Dissect: Risk Ack Type
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_ack_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_ack_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_ack_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_ack_type, range, value, display)

  return offset + length, value
end

-- Risk Action
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action = {}

-- Size: Risk Action
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action.size = 1

-- Display: Risk Action
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action.display = function(value)
  if value == 1 then
    return "Risk Action: Query Risk Control (1)"
  end
  if value == 2 then
    return "Risk Action: Unblock (2)"
  end

  return "Risk Action: Unknown("..value..")"
end

-- Dissect: Risk Action
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_action, range, value, display)

  return offset + length, value
end

-- Risk Control Risk Control
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control = {}

-- Size: Risk Control Risk Control
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control.size = 1

-- Display: Risk Control Risk Control
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control.display = function(value)
  if value == 1 then
    return "Risk Control Risk Control: Transaction Based (1)"
  end
  if value == 2 then
    return "Risk Control Risk Control: Volume Based (2)"
  end
  if value == 3 then
    return "Risk Control Risk Control: Percentage Based (3)"
  end
  if value == 4 then
    return "Risk Control Risk Control: Grmp (4)"
  end
  if value == 5 then
    return "Risk Control Risk Control: Purge Lockout Reset (5)"
  end
  if value == 6 then
    return "Risk Control Risk Control: Intrinsic Value And Arbitrage (6)"
  end

  return "Risk Control Risk Control: Unknown("..value..")"
end

-- Dissect: Risk Control Risk Control
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_control_risk_control, range, value, display)

  return offset + length, value
end

-- Risk Control Risk Control optional
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control_optional = {}

-- Size: Risk Control Risk Control optional
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control_optional.size = 1

-- Display: Risk Control Risk Control optional
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control_optional.display = function(value)
  if value == 1 then
    return "Risk Control Risk Control optional: Transaction Based (1)"
  end
  if value == 2 then
    return "Risk Control Risk Control optional: Volume Based (2)"
  end
  if value == 3 then
    return "Risk Control Risk Control optional: Percentage Based (3)"
  end
  if value == 4 then
    return "Risk Control Risk Control optional: Grmp (4)"
  end
  if value == 5 then
    return "Risk Control Risk Control optional: Purge Lockout Reset (5)"
  end
  if value == 6 then
    return "Risk Control Risk Control optional: Intrinsic Value And Arbitrage (6)"
  end
  if value == 128 then
    return "Risk Control Risk Control optional: No Value"
  end

  return "Risk Control Risk Control optional: Unknown("..value..")"
end

-- Dissect: Risk Control Risk Control optional
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control_optional.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_control_risk_control_optional, range, value, display)

  return offset + length, value
end

-- Risk Control Status Risk Control Status
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status = {}

-- Size: Risk Control Status Risk Control Status
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status.size = 1

-- Display: Risk Control Status Risk Control Status
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status.display = function(value)
  if value == 0 then
    return "Risk Control Status Risk Control Status: Disabled (0)"
  end
  if value == 1 then
    return "Risk Control Status Risk Control Status: Enabled (1)"
  end

  return "Risk Control Status Risk Control Status: Unknown("..value..")"
end

-- Dissect: Risk Control Status Risk Control Status
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_control_status_risk_control_status, range, value, display)

  return offset + length, value
end

-- Risk Control Status Risk Control Status optional
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status_optional = {}

-- Size: Risk Control Status Risk Control Status optional
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status_optional.size = 1

-- Display: Risk Control Status Risk Control Status optional
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status_optional.display = function(value)
  if value == 0 then
    return "Risk Control Status Risk Control Status optional: Disabled (0)"
  end
  if value == 1 then
    return "Risk Control Status Risk Control Status optional: Enabled (1)"
  end
  if value == 128 then
    return "Risk Control Status Risk Control Status optional: No Value"
  end

  return "Risk Control Status Risk Control Status optional: Unknown("..value..")"
end

-- Dissect: Risk Control Status Risk Control Status optional
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status_optional.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_control_status_risk_control_status_optional, range, value, display)

  return offset + length, value
end

-- Routing Firm Id
iex_iexoptions_binaryorderentry_sbe_v1_0.routing_firm_id = {}

-- Size: Routing Firm Id
iex_iexoptions_binaryorderentry_sbe_v1_0.routing_firm_id.size = 4

-- Display: Routing Firm Id
iex_iexoptions_binaryorderentry_sbe_v1_0.routing_firm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Routing Firm Id: No Value"
  end

  return "Routing Firm Id: "..value
end

-- Dissect: Routing Firm Id
iex_iexoptions_binaryorderentry_sbe_v1_0.routing_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.routing_firm_id.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.routing_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.routing_firm_id, range, value, display)

  return offset + length, value
end

-- Schema Id
iex_iexoptions_binaryorderentry_sbe_v1_0.schema_id = {}

-- Size: Schema Id
iex_iexoptions_binaryorderentry_sbe_v1_0.schema_id.size = 2

-- Display: Schema Id
iex_iexoptions_binaryorderentry_sbe_v1_0.schema_id.display = function(value)
  if value == 20001 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
iex_iexoptions_binaryorderentry_sbe_v1_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Send Time
iex_iexoptions_binaryorderentry_sbe_v1_0.send_time = {}

-- Size: Send Time
iex_iexoptions_binaryorderentry_sbe_v1_0.send_time.size = 8

-- Display: Send Time
iex_iexoptions_binaryorderentry_sbe_v1_0.send_time.display = function(value)
  return "Send Time: "..value
end

-- Dissect: Send Time
iex_iexoptions_binaryorderentry_sbe_v1_0.send_time.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.send_time, range, value, display)

  return offset + length, value
end

-- Sequence
iex_iexoptions_binaryorderentry_sbe_v1_0.sequence = {}

-- Size: Sequence
iex_iexoptions_binaryorderentry_sbe_v1_0.sequence.size = 4

-- Display: Sequence
iex_iexoptions_binaryorderentry_sbe_v1_0.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
iex_iexoptions_binaryorderentry_sbe_v1_0.sequence.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Side
iex_iexoptions_binaryorderentry_sbe_v1_0.side = {}

-- Size: Side
iex_iexoptions_binaryorderentry_sbe_v1_0.side.size = 1

-- Display: Side
iex_iexoptions_binaryorderentry_sbe_v1_0.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
iex_iexoptions_binaryorderentry_sbe_v1_0.side.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.side.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.side, range, value, display)

  return offset + length, value
end

-- Start Sequence
iex_iexoptions_binaryorderentry_sbe_v1_0.start_sequence = {}

-- Size: Start Sequence
iex_iexoptions_binaryorderentry_sbe_v1_0.start_sequence.size = 4

-- Display: Start Sequence
iex_iexoptions_binaryorderentry_sbe_v1_0.start_sequence.display = function(value)
  return "Start Sequence: "..value
end

-- Dissect: Start Sequence
iex_iexoptions_binaryorderentry_sbe_v1_0.start_sequence.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.start_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.start_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.start_sequence, range, value, display)

  return offset + length, value
end

-- Status
iex_iexoptions_binaryorderentry_sbe_v1_0.status = {}

-- Size: Status
iex_iexoptions_binaryorderentry_sbe_v1_0.status.size = 1

-- Display: Status
iex_iexoptions_binaryorderentry_sbe_v1_0.status.display = function(value)
  if value == 0 then
    return "Status: Success (0)"
  end
  if value == 1 then
    return "Status: Session Level Reject (1)"
  end
  if value == 2 then
    return "Status: Logout Requested (2)"
  end
  if value == 3 then
    return "Status: Unknown (3)"
  end
  if value == 4 then
    return "Status: Invalid Logon Id (4)"
  end
  if value == 5 then
    return "Status: Invalid Token (5)"
  end
  if value == 6 then
    return "Status: Already Logged In (6)"
  end
  if value == 7 then
    return "Status: Login Timeout (7)"
  end
  if value == 8 then
    return "Status: Invalid Packet Length (8)"
  end
  if value == 9 then
    return "Status: Invalid Message (9)"
  end
  if value == 10 then
    return "Status: Join Revoked (10)"
  end
  if value == 11 then
    return "Status: Heartbeat Timeout (11)"
  end
  if value == 12 then
    return "Status: Message Out Of Sequence (12)"
  end
  if value == 13 then
    return "Status: Invalid Subsession Id (13)"
  end
  if value == 14 then
    return "Status: Subsession Not Joined (14)"
  end
  if value == 15 then
    return "Status: Denial Of Service (15)"
  end
  if value == 16 then
    return "Status: Invalid Argument (16)"
  end
  if value == 17 then
    return "Status: Already Joined (17)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
iex_iexoptions_binaryorderentry_sbe_v1_0.status.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.status, range, value, display)

  return offset + length, value
end

-- Strike Price
iex_iexoptions_binaryorderentry_sbe_v1_0.strike_price = {}

-- Size: Strike Price
iex_iexoptions_binaryorderentry_sbe_v1_0.strike_price.size = 8

-- Display: Strike Price
iex_iexoptions_binaryorderentry_sbe_v1_0.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
iex_iexoptions_binaryorderentry_sbe_v1_0.strike_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Strike Price
iex_iexoptions_binaryorderentry_sbe_v1_0.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexoptions_binaryorderentry_sbe_v1_0.strike_price.translate(raw)
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Subsession Id
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id = {}

-- Size: Subsession Id
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.size = 8

-- Display: Subsession Id
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.display = function(value)
  return "Subsession Id: "..value
end

-- Dissect: Subsession Id
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.subsession_id, range, value, display)

  return offset + length, value
end

-- Subsession Type
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_type = {}

-- Size: Subsession Type
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_type.size = 1

-- Display: Subsession Type
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_type.display = function(value)
  if value == 0 then
    return "Subsession Type: Client To Gateway (0)"
  end
  if value == 1 then
    return "Subsession Type: Gateway To Client (1)"
  end
  if value == 2 then
    return "Subsession Type: Reference Data (2)"
  end

  return "Subsession Type: Unknown("..value..")"
end

-- Dissect: Subsession Type
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.subsession_type, range, value, display)

  return offset + length, value
end

-- Target Party Id
iex_iexoptions_binaryorderentry_sbe_v1_0.target_party_id = {}

-- Size: Target Party Id
iex_iexoptions_binaryorderentry_sbe_v1_0.target_party_id.size = 4

-- Display: Target Party Id
iex_iexoptions_binaryorderentry_sbe_v1_0.target_party_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Target Party Id: No Value"
  end

  return "Target Party Id: "..value
end

-- Dissect: Target Party Id
iex_iexoptions_binaryorderentry_sbe_v1_0.target_party_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.target_party_id.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.target_party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.target_party_id, range, value, display)

  return offset + length, value
end

-- Template Id
iex_iexoptions_binaryorderentry_sbe_v1_0.template_id = {}

-- Size: Template Id
iex_iexoptions_binaryorderentry_sbe_v1_0.template_id.size = 2

-- Display: Template Id
iex_iexoptions_binaryorderentry_sbe_v1_0.template_id.display = function(value)
  if value == 1 then
    return "Template Id: New Order Single Message (1)"
  end
  if value == 2 then
    return "Template Id: Order Cancel Replace Request Message (2)"
  end
  if value == 3 then
    return "Template Id: Order Cancel Request Message (3)"
  end
  if value == 4 then
    return "Template Id: New Bulk Quote Message (4)"
  end
  if value == 5 then
    return "Template Id: Mass Cancel Request Message (5)"
  end
  if value == 6 then
    return "Template Id: Purge Request Message (6)"
  end
  if value == 101 then
    return "Template Id: Order Ack Message (101)"
  end
  if value == 102 then
    return "Template Id: Unsolicited Modify Ack Message (102)"
  end
  if value == 103 then
    return "Template Id: Order Cancel Ack Message (103)"
  end
  if value == 104 then
    return "Template Id: Mass Cancel Ack Message (104)"
  end
  if value == 105 then
    return "Template Id: Bulk Quote Ack Message (105)"
  end
  if value == 106 then
    return "Template Id: New Ioc Quote Ack Message (106)"
  end
  if value == 107 then
    return "Template Id: Quote Restated Message (107)"
  end
  if value == 108 then
    return "Template Id: Quote Canceled Message (108)"
  end
  if value == 109 then
    return "Template Id: Purge Ack Message (109)"
  end
  if value == 110 then
    return "Template Id: Execution Report Message (110)"
  end
  if value == 111 then
    return "Template Id: Trade Bust Correct Message (111)"
  end
  if value == 112 then
    return "Template Id: Application Layer Reject Message (112)"
  end
  if value == 51 then
    return "Template Id: Risk Limit Update Request Message (51)"
  end
  if value == 52 then
    return "Template Id: Risk Action Request Message (52)"
  end
  if value == 151 then
    return "Template Id: Underlying Ref Data Message (151)"
  end
  if value == 152 then
    return "Template Id: Instrument Ref Data Message (152)"
  end
  if value == 153 then
    return "Template Id: Mpid Configuration Acknowledgement Message (153)"
  end
  if value == 154 then
    return "Template Id: Market Maker Symbol Appointment Message (154)"
  end
  if value == 155 then
    return "Template Id: Session Configuration Acknowledgement Message (155)"
  end
  if value == 156 then
    return "Template Id: Risk Control Acknowledgment Message (156)"
  end
  if value == 157 then
    return "Template Id: Risk Control Alert Message (157)"
  end
  if value == 1 then
    return "Template Id: Login Request Message (1)"
  end
  if value == 2 then
    return "Template Id: Login Response Message (2)"
  end
  if value == 3 then
    return "Template Id: Gateway Heartbeat Message (3)"
  end
  if value == 4 then
    return "Template Id: Client Heartbeat Message (4)"
  end
  if value == 5 then
    return "Template Id: Logout Request Message (5)"
  end
  if value == 6 then
    return "Template Id: Terminate Message (6)"
  end
  if value == 7 then
    return "Template Id: Sequenced Message Header Message (7)"
  end
  if value == 8 then
    return "Template Id: Subsession Join Message (8)"
  end
  if value == 9 then
    return "Template Id: Subsession Join Response Message (9)"
  end
  if value == 10 then
    return "Template Id: Subsession Leave Message (10)"
  end
  if value == 11 then
    return "Template Id: Subsession Leave Response Message (11)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
iex_iexoptions_binaryorderentry_sbe_v1_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Throttle Indicator
iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator = {}

-- Size: Throttle Indicator
iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.size = 1

-- Display: Throttle Indicator
iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.display = function(value)
  if value == 0 then
    return "Throttle Indicator: Not Throttled (0)"
  end
  if value == 1 then
    return "Throttle Indicator: Throttled (1)"
  end

  return "Throttle Indicator: Unknown("..value..")"
end

-- Dissect: Throttle Indicator
iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.throttle_indicator, range, value, display)

  return offset + length, value
end

-- Time In Force
iex_iexoptions_binaryorderentry_sbe_v1_0.time_in_force = {}

-- Size: Time In Force
iex_iexoptions_binaryorderentry_sbe_v1_0.time_in_force.size = 1

-- Display: Time In Force
iex_iexoptions_binaryorderentry_sbe_v1_0.time_in_force.display = function(value)
  if value == 0 then
    return "Time In Force: Day (0)"
  end
  if value == 1 then
    return "Time In Force: Ioc (1)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
iex_iexoptions_binaryorderentry_sbe_v1_0.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Time Limit
iex_iexoptions_binaryorderentry_sbe_v1_0.time_limit = {}

-- Size: Time Limit
iex_iexoptions_binaryorderentry_sbe_v1_0.time_limit.size = 8

-- Display: Time Limit
iex_iexoptions_binaryorderentry_sbe_v1_0.time_limit.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Time Limit: No Value"
  end

  return "Time Limit: "..value
end

-- Dissect: Time Limit
iex_iexoptions_binaryorderentry_sbe_v1_0.time_limit.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.time_limit.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.time_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.time_limit, range, value, display)

  return offset + length, value
end

-- Timestamp
iex_iexoptions_binaryorderentry_sbe_v1_0.timestamp = {}

-- Size: Timestamp
iex_iexoptions_binaryorderentry_sbe_v1_0.timestamp.size = 8

-- Display: Timestamp
iex_iexoptions_binaryorderentry_sbe_v1_0.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
iex_iexoptions_binaryorderentry_sbe_v1_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Token
iex_iexoptions_binaryorderentry_sbe_v1_0.token = {}

-- Size: Token
iex_iexoptions_binaryorderentry_sbe_v1_0.token.size = 32

-- Display: Token
iex_iexoptions_binaryorderentry_sbe_v1_0.token.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Token: No Value"
  end

  return "Token: "..value
end

-- Dissect: Token
iex_iexoptions_binaryorderentry_sbe_v1_0.token.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.token.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.token, range, value, display)

  return offset + length, value
end

-- Trade Id
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_id = {}

-- Size: Trade Id
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_id.size = 8

-- Display: Trade Id
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Liquidity Indicator
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_liquidity_indicator = {}

-- Size: Trade Liquidity Indicator
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_liquidity_indicator.size = 1

-- Display: Trade Liquidity Indicator
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_liquidity_indicator.display = function(value)
  if value == 1 then
    return "Trade Liquidity Indicator: Added Liquidity (1)"
  end
  if value == 2 then
    return "Trade Liquidity Indicator: Removed Liquidity (2)"
  end
  if value == 3 then
    return "Trade Liquidity Indicator: Routed (3)"
  end
  if value == 4 then
    return "Trade Liquidity Indicator: Opening Process (4)"
  end
  if value == 5 then
    return "Trade Liquidity Indicator: Re Opening Process (5)"
  end
  if value == 6 then
    return "Trade Liquidity Indicator: Sum Initiating (6)"
  end
  if value == 7 then
    return "Trade Liquidity Indicator: Sum Response (7)"
  end
  if value == 8 then
    return "Trade Liquidity Indicator: Sum Unrelated (8)"
  end

  return "Trade Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Trade Liquidity Indicator
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.trade_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.trade_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.trade_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Trade Ref Id
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_ref_id = {}

-- Size: Trade Ref Id
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_ref_id.size = 8

-- Display: Trade Ref Id
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_ref_id.display = function(value)
  return "Trade Ref Id: "..value
end

-- Dissect: Trade Ref Id
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.trade_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.trade_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.trade_ref_id, range, value, display)

  return offset + length, value
end

-- Trading Ring
iex_iexoptions_binaryorderentry_sbe_v1_0.trading_ring = {}

-- Size: Trading Ring
iex_iexoptions_binaryorderentry_sbe_v1_0.trading_ring.size = 1

-- Display: Trading Ring
iex_iexoptions_binaryorderentry_sbe_v1_0.trading_ring.display = function(value)
  return "Trading Ring: "..value
end

-- Dissect: Trading Ring
iex_iexoptions_binaryorderentry_sbe_v1_0.trading_ring.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.trading_ring.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.trading_ring.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.trading_ring, range, value, display)

  return offset + length, value
end

-- Transact Time
iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time = {}

-- Size: Transact Time
iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size = 8

-- Display: Transact Time
iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Underlying Id Instrument Id
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id = {}

-- Size: Underlying Id Instrument Id
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id.size = 4

-- Display: Underlying Id Instrument Id
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id.display = function(value)
  return "Underlying Id Instrument Id: "..value
end

-- Dissect: Underlying Id Instrument Id
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.underlying_id_instrument_id, range, value, display)

  return offset + length, value
end

-- Underlying Id Instrument Id optional
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional = {}

-- Size: Underlying Id Instrument Id optional
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.size = 4

-- Display: Underlying Id Instrument Id optional
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Underlying Id Instrument Id optional: No Value"
  end

  return "Underlying Id Instrument Id optional: "..value
end

-- Dissect: Underlying Id Instrument Id optional
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.underlying_id_instrument_id_optional, range, value, display)

  return offset + length, value
end

-- Underlying Id uint 32
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_uint_32 = {}

-- Size: Underlying Id uint 32
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_uint_32.size = 4

-- Display: Underlying Id uint 32
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_uint_32.display = function(value)
  return "Underlying Id uint 32: "..value
end

-- Dissect: Underlying Id uint 32
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_uint_32.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_uint_32.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_uint_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.underlying_id_uint_32, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_symbol = {}

-- Size: Underlying Symbol
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_symbol.size = 8

-- Display: Underlying Symbol
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_symbol.size
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

  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- User Session Status
iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_status = {}

-- Size: User Session Status
iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_status.size = 1

-- Display: User Session Status
iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_status.display = function(value)
  if value == 1 then
    return "User Session Status: Active (1)"
  end
  if value == 2 then
    return "User Session Status: Inactive (2)"
  end

  return "User Session Status: Unknown("..value..")"
end

-- Dissect: User Session Status
iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_status.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_status.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.user_session_status, range, value, display)

  return offset + length, value
end

-- User Session Type
iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_type = {}

-- Size: User Session Type
iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_type.size = 1

-- Display: User Session Type
iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_type.display = function(value)
  if value == 1 then
    return "User Session Type: Binary Order Entry (1)"
  end
  if value == 2 then
    return "User Session Type: Mm Quoting (2)"
  end
  if value == 3 then
    return "User Session Type: Purge (3)"
  end

  return "User Session Type: Unknown("..value..")"
end

-- Dissect: User Session Type
iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.user_session_type, range, value, display)

  return offset + length, value
end

-- Version
iex_iexoptions_binaryorderentry_sbe_v1_0.version = {}

-- Size: Version
iex_iexoptions_binaryorderentry_sbe_v1_0.version.size = 2

-- Display: Version
iex_iexoptions_binaryorderentry_sbe_v1_0.version.display = function(value)
  if value == 0 then
    return "Version: Version 1.0"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
iex_iexoptions_binaryorderentry_sbe_v1_0.version.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_binaryorderentry_sbe_v1_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_binaryorderentry_sbe_v1_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Iex IexOptions BinaryOrderEntry Sbe 1.0
-----------------------------------------------------------------------

-- Subsession Leave Response Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_response_message = {}

-- Size: Subsession Leave Response Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_response_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.reason.size

-- Display: Subsession Leave Response Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subsession Leave Response Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Subsession Id: SubsessionId
  index, subsession_id = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.dissect(buffer, index, packet, parent)

  -- Reason: Status
  index, reason = iex_iexoptions_binaryorderentry_sbe_v1_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subsession Leave Response Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.subsession_leave_response_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Subsession Leave Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_message = {}

-- Size: Subsession Leave Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.size

-- Display: Subsession Leave Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subsession Leave Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Subsession Id: SubsessionId
  index, subsession_id = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subsession Leave Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.subsession_leave_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_message.fields(buffer, offset, packet, parent)
  end
end

-- Subsession Join Response Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_response_message = {}

-- Size: Subsession Join Response Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_response_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.status.size

-- Display: Subsession Join Response Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subsession Join Response Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Subsession Id: SubsessionId
  index, subsession_id = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.dissect(buffer, index, packet, parent)

  -- Status: Status
  index, status = iex_iexoptions_binaryorderentry_sbe_v1_0.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subsession Join Response Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.subsession_join_response_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Subsession Join Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_message = {}

-- Size: Subsession Join Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.start_sequence.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.end_sequence.size

-- Display: Subsession Join Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subsession Join Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Subsession Id: SubsessionId
  index, subsession_id = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.dissect(buffer, index, packet, parent)

  -- Start Sequence: SequenceNumber
  index, start_sequence = iex_iexoptions_binaryorderentry_sbe_v1_0.start_sequence.dissect(buffer, index, packet, parent)

  -- End Sequence: SequenceNumber
  index, end_sequence = iex_iexoptions_binaryorderentry_sbe_v1_0.end_sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subsession Join Message
iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.subsession_join_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message Header Message
iex_iexoptions_binaryorderentry_sbe_v1_0.sequenced_message_header_message = {}

-- Size: Sequenced Message Header Message
iex_iexoptions_binaryorderentry_sbe_v1_0.sequenced_message_header_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.sequence.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.timestamp.size

-- Display: Sequenced Message Header Message
iex_iexoptions_binaryorderentry_sbe_v1_0.sequenced_message_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header Message
iex_iexoptions_binaryorderentry_sbe_v1_0.sequenced_message_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Subsession Id: SubsessionId
  index, subsession_id = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.dissect(buffer, index, packet, parent)

  -- Sequence: SequenceNumber
  index, sequence = iex_iexoptions_binaryorderentry_sbe_v1_0.sequence.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexoptions_binaryorderentry_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header Message
iex_iexoptions_binaryorderentry_sbe_v1_0.sequenced_message_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.sequenced_message_header_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.sequenced_message_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.sequenced_message_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.sequenced_message_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Terminate Message
iex_iexoptions_binaryorderentry_sbe_v1_0.terminate_message = {}

-- Size: Terminate Message
iex_iexoptions_binaryorderentry_sbe_v1_0.terminate_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.reason.size

-- Display: Terminate Message
iex_iexoptions_binaryorderentry_sbe_v1_0.terminate_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Terminate Message
iex_iexoptions_binaryorderentry_sbe_v1_0.terminate_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: Status
  index, reason = iex_iexoptions_binaryorderentry_sbe_v1_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Terminate Message
iex_iexoptions_binaryorderentry_sbe_v1_0.terminate_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.terminate_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.terminate_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.terminate_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.terminate_message.fields(buffer, offset, packet, parent)
  end
end

-- Gateway Heartbeat Message Sub Sessions Group
iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group = {}

-- Size: Gateway Heartbeat Message Sub Sessions Group
iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.joined.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.next_seq_no.size

-- Display: Gateway Heartbeat Message Sub Sessions Group
iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Heartbeat Message Sub Sessions Group
iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.fields = function(buffer, offset, packet, parent, gateway_heartbeat_message_sub_sessions_group_index)
  local index = offset

  -- Implicit Gateway Heartbeat Message Sub Sessions Group Index
  if gateway_heartbeat_message_sub_sessions_group_index ~= nil and show.gateway_heartbeat_message_sub_sessions_group_index then
    local iteration = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.gateway_heartbeat_message_sub_sessions_group_index, gateway_heartbeat_message_sub_sessions_group_index)
    iteration:set_generated()
  end

  -- Subsession Type: Subsession
  index, subsession_type = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_type.dissect(buffer, index, packet, parent)

  -- Subsession Id: SubsessionId
  index, subsession_id = iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_id.dissect(buffer, index, packet, parent)

  -- Joined: Boolean
  index, joined = iex_iexoptions_binaryorderentry_sbe_v1_0.joined.dissect(buffer, index, packet, parent)

  -- Next Seq No: SequenceNumber
  index, next_seq_no = iex_iexoptions_binaryorderentry_sbe_v1_0.next_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Heartbeat Message Sub Sessions Group
iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.dissect = function(buffer, offset, packet, parent, gateway_heartbeat_message_sub_sessions_group_index)
  if show.gateway_heartbeat_message_sub_sessions_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.gateway_heartbeat_message_sub_sessions_group, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.fields(buffer, offset, packet, parent, gateway_heartbeat_message_sub_sessions_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.fields(buffer, offset, packet, parent, gateway_heartbeat_message_sub_sessions_group_index)
  end
end

-- Session Info Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.session_info_group_encoding = {}

-- Size: Session Info Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.session_info_group_encoding.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.block_length_uint_8.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.num_in_group.size

-- Display: Session Info Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.session_info_group_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Info Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.session_info_group_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length uint 8: uint8
  index, block_length_uint_8 = iex_iexoptions_binaryorderentry_sbe_v1_0.block_length_uint_8.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = iex_iexoptions_binaryorderentry_sbe_v1_0.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Info Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.session_info_group_encoding.dissect = function(buffer, offset, packet, parent)
  if show.session_info_group_encoding then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.session_info_group_encoding, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.session_info_group_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.session_info_group_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.session_info_group_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Gateway Heartbeat Message Sub Sessions Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups = {}

-- Calculate size of: Gateway Heartbeat Message Sub Sessions Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.session_info_group_encoding.size

  -- Calculate field size from count
  local gateway_heartbeat_message_sub_sessions_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + gateway_heartbeat_message_sub_sessions_group_count * 14

  return index
end

-- Display: Gateway Heartbeat Message Sub Sessions Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Heartbeat Message Sub Sessions Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Info Group Encoding: Struct of 2 fields
  index, session_info_group_encoding = iex_iexoptions_binaryorderentry_sbe_v1_0.session_info_group_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Gateway Heartbeat Message Sub Sessions Group
  for gateway_heartbeat_message_sub_sessions_group_index = 1, num_in_group do
    index, gateway_heartbeat_message_sub_sessions_group = iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.dissect(buffer, index, packet, parent, gateway_heartbeat_message_sub_sessions_group_index)
  end

  return index
end

-- Dissect: Gateway Heartbeat Message Sub Sessions Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.dissect = function(buffer, offset, packet, parent)
  if show.gateway_heartbeat_message_sub_sessions_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.gateway_heartbeat_message_sub_sessions_groups, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.fields(buffer, offset, packet, parent)
  end
end

-- Gateway Heartbeat Message
iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message = {}

-- Calculate size of: Gateway Heartbeat Message
iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.keep_alive.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.size(buffer, offset + index)

  return index
end

-- Display: Gateway Heartbeat Message
iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Heartbeat Message
iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Keep Alive: Boolean
  index, keep_alive = iex_iexoptions_binaryorderentry_sbe_v1_0.keep_alive.dissect(buffer, index, packet, parent)

  -- Gateway Heartbeat Message Sub Sessions Groups: Struct of 2 fields
  index, gateway_heartbeat_message_sub_sessions_groups = iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Heartbeat Message
iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.gateway_heartbeat_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
iex_iexoptions_binaryorderentry_sbe_v1_0.login_response_message = {}

-- Size: Login Response Message
iex_iexoptions_binaryorderentry_sbe_v1_0.login_response_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.logon_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.status.size

-- Display: Login Response Message
iex_iexoptions_binaryorderentry_sbe_v1_0.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
iex_iexoptions_binaryorderentry_sbe_v1_0.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logon Id: LogonId
  index, logon_id = iex_iexoptions_binaryorderentry_sbe_v1_0.logon_id.dissect(buffer, index, packet, parent)

  -- Status: Status
  index, status = iex_iexoptions_binaryorderentry_sbe_v1_0.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
iex_iexoptions_binaryorderentry_sbe_v1_0.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.login_response_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.login_request_message = {}

-- Size: Login Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.login_request_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.logon_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.token.size

-- Display: Login Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logon Id: LogonId
  index, logon_id = iex_iexoptions_binaryorderentry_sbe_v1_0.logon_id.dissect(buffer, index, packet, parent)

  -- Token: Token
  index, token = iex_iexoptions_binaryorderentry_sbe_v1_0.token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.login_request_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Risk Control Alert Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_alert_message = {}

-- Size: Risk Control Alert Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_alert_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.time_limit.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.percentage_limit.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.count_limit.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.notification_reason.size

-- Display: Risk Control Alert Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_alert_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Control Alert Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_alert_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Underlying Id Instrument Id optional: InstrumentId
  index, underlying_id_instrument_id_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Risk Control Risk Control: RiskControl
  index, risk_control_risk_control = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control.dissect(buffer, index, packet, parent)

  -- Time Limit: uint64
  index, time_limit = iex_iexoptions_binaryorderentry_sbe_v1_0.time_limit.dissect(buffer, index, packet, parent)

  -- Percentage Limit: Percentage
  index, percentage_limit = iex_iexoptions_binaryorderentry_sbe_v1_0.percentage_limit.dissect(buffer, index, packet, parent)

  -- Count Limit: uint32
  index, count_limit = iex_iexoptions_binaryorderentry_sbe_v1_0.count_limit.dissect(buffer, index, packet, parent)

  -- Notification Reason: NotificationReason
  index, notification_reason = iex_iexoptions_binaryorderentry_sbe_v1_0.notification_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Control Alert Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_alert_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_control_alert_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_alert_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_alert_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_alert_message.fields(buffer, offset, packet, parent)
  end
end

-- Risk Control Acknowledgment Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_acknowledgment_message = {}

-- Size: Risk Control Acknowledgment Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_acknowledgment_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16_optional.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.risk_ack_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.time_limit.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.percentage_limit.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.count_limit.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.ioc_attribution.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.blocked_by_breach_indicator.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.size

-- Display: Risk Control Acknowledgment Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Control Acknowledgment Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_acknowledgment_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Underlying Id Instrument Id optional: InstrumentId
  index, underlying_id_instrument_id_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Custom Group Id uint 16 optional: uint16
  index, custom_group_id_uint_16_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16_optional.dissect(buffer, index, packet, parent)

  -- Risk Ack Type: RiskAckType
  index, risk_ack_type = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_ack_type.dissect(buffer, index, packet, parent)

  -- Risk Control Status Risk Control Status: RiskControlStatus
  index, risk_control_status_risk_control_status = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status.dissect(buffer, index, packet, parent)

  -- Risk Control Risk Control: RiskControl
  index, risk_control_risk_control = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control.dissect(buffer, index, packet, parent)

  -- Risk Action: RiskActionType
  index, risk_action = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action.dissect(buffer, index, packet, parent)

  -- Time Limit: uint64
  index, time_limit = iex_iexoptions_binaryorderentry_sbe_v1_0.time_limit.dissect(buffer, index, packet, parent)

  -- Percentage Limit: Percentage
  index, percentage_limit = iex_iexoptions_binaryorderentry_sbe_v1_0.percentage_limit.dissect(buffer, index, packet, parent)

  -- Count Limit: uint32
  index, count_limit = iex_iexoptions_binaryorderentry_sbe_v1_0.count_limit.dissect(buffer, index, packet, parent)

  -- Ioc Attribution: IOCAttribution
  index, ioc_attribution = iex_iexoptions_binaryorderentry_sbe_v1_0.ioc_attribution.dissect(buffer, index, packet, parent)

  -- Blocked By Breach Indicator: BlockedByBreachIndicator
  index, blocked_by_breach_indicator = iex_iexoptions_binaryorderentry_sbe_v1_0.blocked_by_breach_indicator.dissect(buffer, index, packet, parent)

  -- Cust Capacity Weight uint 8: uint8
  index, cust_capacity_weight_uint_8 = iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8.dissect(buffer, index, packet, parent)

  -- Throttle Indicator: ThrottleIndicator
  index, throttle_indicator = iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Control Acknowledgment Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_acknowledgment_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_control_acknowledgment_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_acknowledgment_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_acknowledgment_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_acknowledgment_message.fields(buffer, offset, packet, parent)
  end
end

-- Session Configuration Acknowledgement Message
iex_iexoptions_binaryorderentry_sbe_v1_0.session_configuration_acknowledgement_message = {}

-- Size: Session Configuration Acknowledgement Message
iex_iexoptions_binaryorderentry_sbe_v1_0.session_configuration_acknowledgement_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_status.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.member.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.default_mpid.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.mic.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_on_disconnect.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.aiq_default.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_unsolicited_ack_subscription.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.quote_unsolicited_ack_subscription.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.default_attributed_quote.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.default_cancel_instead_of_slide.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.trading_ring.size

-- Display: Session Configuration Acknowledgement Message
iex_iexoptions_binaryorderentry_sbe_v1_0.session_configuration_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Configuration Acknowledgement Message
iex_iexoptions_binaryorderentry_sbe_v1_0.session_configuration_acknowledgement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- User Session Type: ClientSessionType
  index, user_session_type = iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_type.dissect(buffer, index, packet, parent)

  -- User Session Status: UserSessionStatus
  index, user_session_status = iex_iexoptions_binaryorderentry_sbe_v1_0.user_session_status.dissect(buffer, index, packet, parent)

  -- Member: string8
  index, member = iex_iexoptions_binaryorderentry_sbe_v1_0.member.dissect(buffer, index, packet, parent)

  -- Default Mpid: MPID
  index, default_mpid = iex_iexoptions_binaryorderentry_sbe_v1_0.default_mpid.dissect(buffer, index, packet, parent)

  -- Mic: string4
  index, mic = iex_iexoptions_binaryorderentry_sbe_v1_0.mic.dissect(buffer, index, packet, parent)

  -- Cancel On Disconnect: CancelOnDisconnect
  index, cancel_on_disconnect = iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_on_disconnect.dissect(buffer, index, packet, parent)

  -- Aiq Default: string3
  index, aiq_default = iex_iexoptions_binaryorderentry_sbe_v1_0.aiq_default.dissect(buffer, index, packet, parent)

  -- Order Unsolicited Ack Subscription: Boolean
  index, order_unsolicited_ack_subscription = iex_iexoptions_binaryorderentry_sbe_v1_0.order_unsolicited_ack_subscription.dissect(buffer, index, packet, parent)

  -- Quote Unsolicited Ack Subscription: Boolean
  index, quote_unsolicited_ack_subscription = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_unsolicited_ack_subscription.dissect(buffer, index, packet, parent)

  -- Default Attributed Quote: AttributedQuote
  index, default_attributed_quote = iex_iexoptions_binaryorderentry_sbe_v1_0.default_attributed_quote.dissect(buffer, index, packet, parent)

  -- Default Cancel Instead Of Slide: Boolean
  index, default_cancel_instead_of_slide = iex_iexoptions_binaryorderentry_sbe_v1_0.default_cancel_instead_of_slide.dissect(buffer, index, packet, parent)

  -- Trading Ring: int8
  index, trading_ring = iex_iexoptions_binaryorderentry_sbe_v1_0.trading_ring.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Configuration Acknowledgement Message
iex_iexoptions_binaryorderentry_sbe_v1_0.session_configuration_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.session_configuration_acknowledgement_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.session_configuration_acknowledgement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.session_configuration_acknowledgement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.session_configuration_acknowledgement_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Maker Symbol Appointment Message
iex_iexoptions_binaryorderentry_sbe_v1_0.market_maker_symbol_appointment_message = {}

-- Size: Market Maker Symbol Appointment Message
iex_iexoptions_binaryorderentry_sbe_v1_0.market_maker_symbol_appointment_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_status.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.max_allowable_width.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.quote_relief_mult.size

-- Display: Market Maker Symbol Appointment Message
iex_iexoptions_binaryorderentry_sbe_v1_0.market_maker_symbol_appointment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Maker Symbol Appointment Message
iex_iexoptions_binaryorderentry_sbe_v1_0.market_maker_symbol_appointment_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Underlying Id Instrument Id: InstrumentId
  index, underlying_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Appointment Type: AppointmentType
  index, appointment_type = iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_type.dissect(buffer, index, packet, parent)

  -- Appointment Status: AppointmentStatus
  index, appointment_status = iex_iexoptions_binaryorderentry_sbe_v1_0.appointment_status.dissect(buffer, index, packet, parent)

  -- Max Allowable Width: uint32
  index, max_allowable_width = iex_iexoptions_binaryorderentry_sbe_v1_0.max_allowable_width.dissect(buffer, index, packet, parent)

  -- Quote Relief Mult: uint32
  index, quote_relief_mult = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_relief_mult.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Maker Symbol Appointment Message
iex_iexoptions_binaryorderentry_sbe_v1_0.market_maker_symbol_appointment_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.market_maker_symbol_appointment_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.market_maker_symbol_appointment_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.market_maker_symbol_appointment_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.market_maker_symbol_appointment_message.fields(buffer, offset, packet, parent)
  end
end

-- Mpid Configuration Acknowledgement Message
iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_configuration_acknowledgement_message = {}

-- Size: Mpid Configuration Acknowledgement Message
iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_configuration_acknowledgement_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_status.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.member.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.max_qty.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.max_notional.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.default_account.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.default_optional_data.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.default_clearing_account.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.allow_market_orders.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.allow_isoioc.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.allow_iso_day.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.max_duplicative.size

-- Display: Mpid Configuration Acknowledgement Message
iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_configuration_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mpid Configuration Acknowledgement Message
iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_configuration_acknowledgement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Mpid Status: MPIDStatus
  index, mpid_status = iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_status.dissect(buffer, index, packet, parent)

  -- Member: string8
  index, member = iex_iexoptions_binaryorderentry_sbe_v1_0.member.dissect(buffer, index, packet, parent)

  -- Max Qty: QuantityZero
  index, max_qty = iex_iexoptions_binaryorderentry_sbe_v1_0.max_qty.dissect(buffer, index, packet, parent)

  -- Max Notional: Price8
  index, max_notional = iex_iexoptions_binaryorderentry_sbe_v1_0.max_notional.dissect(buffer, index, packet, parent)

  -- Default Account: Account
  index, default_account = iex_iexoptions_binaryorderentry_sbe_v1_0.default_account.dissect(buffer, index, packet, parent)

  -- Default Optional Data: string16
  index, default_optional_data = iex_iexoptions_binaryorderentry_sbe_v1_0.default_optional_data.dissect(buffer, index, packet, parent)

  -- Default Clearing Account: ClearingAccount
  index, default_clearing_account = iex_iexoptions_binaryorderentry_sbe_v1_0.default_clearing_account.dissect(buffer, index, packet, parent)

  -- Allow Market Orders: Boolean
  index, allow_market_orders = iex_iexoptions_binaryorderentry_sbe_v1_0.allow_market_orders.dissect(buffer, index, packet, parent)

  -- Allow Isoioc: Boolean
  index, allow_isoioc = iex_iexoptions_binaryorderentry_sbe_v1_0.allow_isoioc.dissect(buffer, index, packet, parent)

  -- Allow Iso Day: Boolean
  index, allow_iso_day = iex_iexoptions_binaryorderentry_sbe_v1_0.allow_iso_day.dissect(buffer, index, packet, parent)

  -- Max Duplicative: uint32
  index, max_duplicative = iex_iexoptions_binaryorderentry_sbe_v1_0.max_duplicative.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mpid Configuration Acknowledgement Message
iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_configuration_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.mpid_configuration_acknowledgement_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_configuration_acknowledgement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_configuration_acknowledgement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_configuration_acknowledgement_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Ref Data Message
iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_ref_data_message = {}

-- Size: Instrument Ref Data Message
iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_ref_data_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_uint_32.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_uint_32.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.osi_symbol.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.maturity_date.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.option_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.strike_price.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.closing_only.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.orp_enabled.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.trading_ring.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.matching_unit.size

-- Display: Instrument Ref Data Message
iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_ref_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Ref Data Message
iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_ref_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Instrument Id uint 32: uint32
  index, instrument_id_uint_32 = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_uint_32.dissect(buffer, index, packet, parent)

  -- Underlying Id uint 32: uint32
  index, underlying_id_uint_32 = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_uint_32.dissect(buffer, index, packet, parent)

  -- Osi Symbol: string21
  index, osi_symbol = iex_iexoptions_binaryorderentry_sbe_v1_0.osi_symbol.dissect(buffer, index, packet, parent)

  -- Maturity Date: string8
  index, maturity_date = iex_iexoptions_binaryorderentry_sbe_v1_0.maturity_date.dissect(buffer, index, packet, parent)

  -- Option Type: OptionType
  index, option_type = iex_iexoptions_binaryorderentry_sbe_v1_0.option_type.dissect(buffer, index, packet, parent)

  -- Strike Price: Price8
  index, strike_price = iex_iexoptions_binaryorderentry_sbe_v1_0.strike_price.dissect(buffer, index, packet, parent)

  -- Closing Only: Boolean
  index, closing_only = iex_iexoptions_binaryorderentry_sbe_v1_0.closing_only.dissect(buffer, index, packet, parent)

  -- Orp Enabled: Boolean
  index, orp_enabled = iex_iexoptions_binaryorderentry_sbe_v1_0.orp_enabled.dissect(buffer, index, packet, parent)

  -- Trading Ring: int8
  index, trading_ring = iex_iexoptions_binaryorderentry_sbe_v1_0.trading_ring.dissect(buffer, index, packet, parent)

  -- Matching Unit: MatchingUnit
  index, matching_unit = iex_iexoptions_binaryorderentry_sbe_v1_0.matching_unit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Ref Data Message
iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_ref_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.instrument_ref_data_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_ref_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_ref_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_ref_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Ref Data Message
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_ref_data_message = {}

-- Size: Underlying Ref Data Message
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_ref_data_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_uint_32.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_symbol.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.mic.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.mpv_group.size

-- Display: Underlying Ref Data Message
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_ref_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Ref Data Message
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_ref_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Underlying Id uint 32: uint32
  index, underlying_id_uint_32 = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_uint_32.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: string8
  index, underlying_symbol = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Mic: string4
  index, mic = iex_iexoptions_binaryorderentry_sbe_v1_0.mic.dissect(buffer, index, packet, parent)

  -- Mpv Group: MinimumPriceVariation
  index, mpv_group = iex_iexoptions_binaryorderentry_sbe_v1_0.mpv_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Ref Data Message
iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_ref_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.underlying_ref_data_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_ref_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_ref_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_ref_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Risk Action Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action_request_message = {}

-- Size: Risk Action Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action_request_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16_optional.size

-- Display: Risk Action Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Action Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Id Instrument Id optional: InstrumentId
  index, underlying_id_instrument_id_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Risk Control Risk Control: RiskControl
  index, risk_control_risk_control = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control.dissect(buffer, index, packet, parent)

  -- Risk Action: RiskActionType
  index, risk_action = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action.dissect(buffer, index, packet, parent)

  -- Custom Group Id uint 16 optional: uint16
  index, custom_group_id_uint_16_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Action Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_action_request_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Risk Limit Update Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_limit_update_request_message = {}

-- Size: Risk Limit Update Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_limit_update_request_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control_optional.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status_optional.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.time_limit.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.percentage_limit.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.count_limit.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.ioc_attribution.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8_optional.size

-- Display: Risk Limit Update Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_limit_update_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Limit Update Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_limit_update_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Id Instrument Id optional: InstrumentId
  index, underlying_id_instrument_id_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Risk Control Risk Control optional: RiskControl
  index, risk_control_risk_control_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_risk_control_optional.dissect(buffer, index, packet, parent)

  -- Risk Control Status Risk Control Status optional: RiskControlStatus
  index, risk_control_status_risk_control_status_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_status_risk_control_status_optional.dissect(buffer, index, packet, parent)

  -- Time Limit: uint64
  index, time_limit = iex_iexoptions_binaryorderentry_sbe_v1_0.time_limit.dissect(buffer, index, packet, parent)

  -- Percentage Limit: Percentage
  index, percentage_limit = iex_iexoptions_binaryorderentry_sbe_v1_0.percentage_limit.dissect(buffer, index, packet, parent)

  -- Count Limit: uint32
  index, count_limit = iex_iexoptions_binaryorderentry_sbe_v1_0.count_limit.dissect(buffer, index, packet, parent)

  -- Ioc Attribution: IOCAttribution
  index, ioc_attribution = iex_iexoptions_binaryorderentry_sbe_v1_0.ioc_attribution.dissect(buffer, index, packet, parent)

  -- Cust Capacity Weight uint 8 optional: uint8
  index, cust_capacity_weight_uint_8_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.cust_capacity_weight_uint_8_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Limit Update Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.risk_limit_update_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.risk_limit_update_request_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_limit_update_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.risk_limit_update_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.risk_limit_update_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Application Layer Reject Message
iex_iexoptions_binaryorderentry_sbe_v1_0.application_layer_reject_message = {}

-- Size: Application Layer Reject Message
iex_iexoptions_binaryorderentry_sbe_v1_0.application_layer_reject_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.account_string_16.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.reject_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.size

-- Display: Application Layer Reject Message
iex_iexoptions_binaryorderentry_sbe_v1_0.application_layer_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Layer Reject Message
iex_iexoptions_binaryorderentry_sbe_v1_0.application_layer_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Underlying Id Instrument Id: InstrumentId
  index, underlying_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Instrument Id Instrument Id: InstrumentId
  index, instrument_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Account string 16: string16
  index, account_string_16 = iex_iexoptions_binaryorderentry_sbe_v1_0.account_string_16.dissect(buffer, index, packet, parent)

  -- Reason Code: ReasonCode
  index, reason_code = iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.dissect(buffer, index, packet, parent)

  -- Reject Type: RejectType
  index, reject_type = iex_iexoptions_binaryorderentry_sbe_v1_0.reject_type.dissect(buffer, index, packet, parent)

  -- Throttle Indicator: ThrottleIndicator
  index, throttle_indicator = iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Application Layer Reject Message
iex_iexoptions_binaryorderentry_sbe_v1_0.application_layer_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.application_layer_reject_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.application_layer_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.application_layer_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.application_layer_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Bust Correct Message
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_bust_correct_message = {}

-- Size: Trade Bust Correct Message
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_bust_correct_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.exec_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.trade_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.trade_ref_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.last_px.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.account_account.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.last_qty.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.bust_or_correction.size

-- Display: Trade Bust Correct Message
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_bust_correct_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Correct Message
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_bust_correct_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Instrument Id Instrument Id: InstrumentId
  index, instrument_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Exec Id: ExecId
  index, exec_id = iex_iexoptions_binaryorderentry_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeId
  index, trade_id = iex_iexoptions_binaryorderentry_sbe_v1_0.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Ref Id: TradeId
  index, trade_ref_id = iex_iexoptions_binaryorderentry_sbe_v1_0.trade_ref_id.dissect(buffer, index, packet, parent)

  -- Last Px: Price8
  index, last_px = iex_iexoptions_binaryorderentry_sbe_v1_0.last_px.dissect(buffer, index, packet, parent)

  -- Account Account: Account
  index, account_account = iex_iexoptions_binaryorderentry_sbe_v1_0.account_account.dissect(buffer, index, packet, parent)

  -- Last Qty: uint32
  index, last_qty = iex_iexoptions_binaryorderentry_sbe_v1_0.last_qty.dissect(buffer, index, packet, parent)

  -- Reason Code: ReasonCode
  index, reason_code = iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.dissect(buffer, index, packet, parent)

  -- Bust Or Correction: BustOrCorrection
  index, bust_or_correction = iex_iexoptions_binaryorderentry_sbe_v1_0.bust_or_correction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Correct Message
iex_iexoptions_binaryorderentry_sbe_v1_0.trade_bust_correct_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.trade_bust_correct_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.trade_bust_correct_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.trade_bust_correct_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.trade_bust_correct_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Message
iex_iexoptions_binaryorderentry_sbe_v1_0.execution_report_message = {}

-- Size: Execution Report Message
iex_iexoptions_binaryorderentry_sbe_v1_0.execution_report_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.account_account.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.customer_or_firm.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.exec_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.trade_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.last_px.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.open_close.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.side.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.target_party_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.auction_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_firm.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.optional_data.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.routing_firm_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.leaves_qty.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cum_qty.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.last_qty.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.trade_liquidity_indicator.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.fee_code.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.occ_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_account.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_firm.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.contra_mpid.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.contra_open_close.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.contra_customer_or_firm.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.contra_occ_id.size

-- Display: Execution Report Message
iex_iexoptions_binaryorderentry_sbe_v1_0.execution_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Message
iex_iexoptions_binaryorderentry_sbe_v1_0.execution_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Account Account: Account
  index, account_account = iex_iexoptions_binaryorderentry_sbe_v1_0.account_account.dissect(buffer, index, packet, parent)

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Instrument Id Instrument Id: InstrumentId
  index, instrument_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Account: ClearingAccount
  index, clearing_account = iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.dissect(buffer, index, packet, parent)

  -- Customer Or Firm: CustomerOrFirm
  index, customer_or_firm = iex_iexoptions_binaryorderentry_sbe_v1_0.customer_or_firm.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Exec Id: ExecId
  index, exec_id = iex_iexoptions_binaryorderentry_sbe_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Trade Id: TradeId
  index, trade_id = iex_iexoptions_binaryorderentry_sbe_v1_0.trade_id.dissect(buffer, index, packet, parent)

  -- Last Px: Price8
  index, last_px = iex_iexoptions_binaryorderentry_sbe_v1_0.last_px.dissect(buffer, index, packet, parent)

  -- Open Close: OpenClose
  index, open_close = iex_iexoptions_binaryorderentry_sbe_v1_0.open_close.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = iex_iexoptions_binaryorderentry_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Target Party Id: MPID
  index, target_party_id = iex_iexoptions_binaryorderentry_sbe_v1_0.target_party_id.dissect(buffer, index, packet, parent)

  -- Auction Id: AuctionId
  index, auction_id = iex_iexoptions_binaryorderentry_sbe_v1_0.auction_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: uint32
  index, clearing_firm = iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_firm.dissect(buffer, index, packet, parent)

  -- Optional Data: string16
  index, optional_data = iex_iexoptions_binaryorderentry_sbe_v1_0.optional_data.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: MPID
  index, routing_firm_id = iex_iexoptions_binaryorderentry_sbe_v1_0.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Aiq: string3
  index, aiq = iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.dissect(buffer, index, packet, parent)

  -- Leaves Qty: QuantityZero
  index, leaves_qty = iex_iexoptions_binaryorderentry_sbe_v1_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: QuantityNonZero
  index, cum_qty = iex_iexoptions_binaryorderentry_sbe_v1_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Last Qty: uint32
  index, last_qty = iex_iexoptions_binaryorderentry_sbe_v1_0.last_qty.dissect(buffer, index, packet, parent)

  -- Trade Liquidity Indicator: TradeLiquidityIndicator
  index, trade_liquidity_indicator = iex_iexoptions_binaryorderentry_sbe_v1_0.trade_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Fee Code: string2
  index, fee_code = iex_iexoptions_binaryorderentry_sbe_v1_0.fee_code.dissect(buffer, index, packet, parent)

  -- Reason Code: ReasonCode
  index, reason_code = iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.dissect(buffer, index, packet, parent)

  -- Occ Id: string5
  index, occ_id = iex_iexoptions_binaryorderentry_sbe_v1_0.occ_id.dissect(buffer, index, packet, parent)

  -- Contra Clearing Account: ClearingAccount
  index, contra_clearing_account = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_account.dissect(buffer, index, packet, parent)

  -- Contra Clearing Firm: uint32
  index, contra_clearing_firm = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_clearing_firm.dissect(buffer, index, packet, parent)

  -- Contra Mpid: MPID
  index, contra_mpid = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_mpid.dissect(buffer, index, packet, parent)

  -- Contra Open Close: OpenClose
  index, contra_open_close = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_open_close.dissect(buffer, index, packet, parent)

  -- Contra Customer Or Firm: CustomerOrFirm
  index, contra_customer_or_firm = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_customer_or_firm.dissect(buffer, index, packet, parent)

  -- Contra Occ Id: string5
  index, contra_occ_id = iex_iexoptions_binaryorderentry_sbe_v1_0.contra_occ_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Message
iex_iexoptions_binaryorderentry_sbe_v1_0.execution_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.execution_report_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.execution_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.execution_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.execution_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Purge Ack Message custom Group Ids Group
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_group = {}

-- Size: Purge Ack Message custom Group Ids Group
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_group.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16.size

-- Display: Purge Ack Message custom Group Ids Group
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Ack Message custom Group Ids Group
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_group.fields = function(buffer, offset, packet, parent, purge_ack_message_custom_group_ids_group_index)
  local index = offset

  -- Implicit Purge Ack Message custom Group Ids Group Index
  if purge_ack_message_custom_group_ids_group_index ~= nil and show.purge_ack_message_custom_group_ids_group_index then
    local iteration = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_ack_message_custom_group_ids_group_index, purge_ack_message_custom_group_ids_group_index)
    iteration:set_generated()
  end

  -- Custom Group Id uint 16: uint16
  index, custom_group_id_uint_16 = iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Ack Message custom Group Ids Group
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_group.dissect = function(buffer, offset, packet, parent, purge_ack_message_custom_group_ids_group_index)
  if show.purge_ack_message_custom_group_ids_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_ack_message_custom_group_ids_group, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_group.fields(buffer, offset, packet, parent, purge_ack_message_custom_group_ids_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_group.fields(buffer, offset, packet, parent, purge_ack_message_custom_group_ids_group_index)
  end
end

-- Custom Group Ids Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_ids_group_encoding = {}

-- Size: Custom Group Ids Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_ids_group_encoding.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.block_length_uint_8.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.num_in_group.size

-- Display: Custom Group Ids Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_ids_group_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Custom Group Ids Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_ids_group_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length uint 8: uint8
  index, block_length_uint_8 = iex_iexoptions_binaryorderentry_sbe_v1_0.block_length_uint_8.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = iex_iexoptions_binaryorderentry_sbe_v1_0.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Custom Group Ids Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_ids_group_encoding.dissect = function(buffer, offset, packet, parent)
  if show.custom_group_ids_group_encoding then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.custom_group_ids_group_encoding, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_ids_group_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_ids_group_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_ids_group_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Purge Ack Message custom Group Ids Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_groups = {}

-- Calculate size of: Purge Ack Message custom Group Ids Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_groups.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_ids_group_encoding.size

  -- Calculate field size from count
  local purge_ack_message_custom_group_ids_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + purge_ack_message_custom_group_ids_group_count * 2

  return index
end

-- Display: Purge Ack Message custom Group Ids Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Ack Message custom Group Ids Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Custom Group Ids Group Encoding: Struct of 2 fields
  index, custom_group_ids_group_encoding = iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_ids_group_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Purge Ack Message custom Group Ids Group
  for purge_ack_message_custom_group_ids_group_index = 1, num_in_group do
    index, purge_ack_message_custom_group_ids_group = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_group.dissect(buffer, index, packet, parent, purge_ack_message_custom_group_ids_group_index)
  end

  return index
end

-- Dissect: Purge Ack Message custom Group Ids Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_groups.dissect = function(buffer, offset, packet, parent)
  if show.purge_ack_message_custom_group_ids_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_ack_message_custom_group_ids_groups, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_groups.fields(buffer, offset, packet, parent)
  end
end

-- Purge Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message = {}

-- Calculate size of: Purge Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_purge_request_ack_style.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_action.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_count.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_groups.size(buffer, offset + index)

  return index
end

-- Display: Purge Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Underlying Id Instrument Id: InstrumentId
  index, underlying_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Ack Style Purge Request Ack Style: PurgeRequestAckStyle
  index, ack_style_purge_request_ack_style = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_purge_request_ack_style.dissect(buffer, index, packet, parent)

  -- Bulk Action: BulkAction
  index, bulk_action = iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_action.dissect(buffer, index, packet, parent)

  -- Cancel Count: uint32
  index, cancel_count = iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_count.dissect(buffer, index, packet, parent)

  -- Throttle Indicator: ThrottleIndicator
  index, throttle_indicator = iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.dissect(buffer, index, packet, parent)

  -- Purge Ack Message custom Group Ids Groups: Struct of 2 fields
  index, purge_ack_message_custom_group_ids_groups = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message_custom_group_ids_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_ack_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Canceled Message
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_canceled_message = {}

-- Size: Quote Canceled Message
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_canceled_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.side.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.delta.size

-- Display: Quote Canceled Message
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Canceled Message
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Instrument Id Instrument Id: InstrumentId
  index, instrument_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = iex_iexoptions_binaryorderentry_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Reason Code: ReasonCode
  index, reason_code = iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ack Type: AckType
  index, ack_type = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.dissect(buffer, index, packet, parent)

  -- Delta: Delta
  index, delta = iex_iexoptions_binaryorderentry_sbe_v1_0.delta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Canceled Message
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.quote_canceled_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.quote_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Restated Message
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_restated_message = {}

-- Size: Quote Restated Message
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_restated_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.side.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.delta.size

-- Display: Quote Restated Message
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_restated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Restated Message
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_restated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Instrument Id Instrument Id: InstrumentId
  index, instrument_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = iex_iexoptions_binaryorderentry_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price8
  index, price_price_8 = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.dissect(buffer, index, packet, parent)

  -- Reason Code: ReasonCode
  index, reason_code = iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ack Type: AckType
  index, ack_type = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.dissect(buffer, index, packet, parent)

  -- Delta: Delta
  index, delta = iex_iexoptions_binaryorderentry_sbe_v1_0.delta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Restated Message
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_restated_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.quote_restated_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_restated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_restated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.quote_restated_message.fields(buffer, offset, packet, parent)
  end
end

-- New Ioc Quote Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.new_ioc_quote_ack_message = {}

-- Size: New Ioc Quote Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.new_ioc_quote_ack_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.side.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.size

-- Display: New Ioc Quote Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.new_ioc_quote_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Ioc Quote Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.new_ioc_quote_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Account: ClearingAccount
  index, clearing_account = iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.dissect(buffer, index, packet, parent)

  -- Aiq: string3
  index, aiq = iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.dissect(buffer, index, packet, parent)

  -- Instrument Id Instrument Id: InstrumentId
  index, instrument_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = iex_iexoptions_binaryorderentry_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Ack Type: AckType
  index, ack_type = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.dissect(buffer, index, packet, parent)

  -- Price Price 4: Price4
  index, price_price_4 = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4.dissect(buffer, index, packet, parent)

  -- Order Qty Quantity Non Zero: QuantityNonZero
  index, order_qty_quantity_non_zero = iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero.dissect(buffer, index, packet, parent)

  -- Reason Code: ReasonCode
  index, reason_code = iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.dissect(buffer, index, packet, parent)

  -- Throttle Indicator: ThrottleIndicator
  index, throttle_indicator = iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Ioc Quote Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.new_ioc_quote_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.new_ioc_quote_ack_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.new_ioc_quote_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.new_ioc_quote_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.new_ioc_quote_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Ack Message quote Acks Group
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_group = {}

-- Size: Bulk Quote Ack Message quote Acks Group
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_group.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.side.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4_optional.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_zero_optional.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.size

-- Display: Bulk Quote Ack Message quote Acks Group
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Ack Message quote Acks Group
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_group.fields = function(buffer, offset, packet, parent, bulk_quote_ack_message_quote_acks_group_index)
  local index = offset

  -- Implicit Bulk Quote Ack Message quote Acks Group Index
  if bulk_quote_ack_message_quote_acks_group_index ~= nil and show.bulk_quote_ack_message_quote_acks_group_index then
    local iteration = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.bulk_quote_ack_message_quote_acks_group_index, bulk_quote_ack_message_quote_acks_group_index)
    iteration:set_generated()
  end

  -- Instrument Id Instrument Id: InstrumentId
  index, instrument_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = iex_iexoptions_binaryorderentry_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Ack Type: AckType
  index, ack_type = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.dissect(buffer, index, packet, parent)

  -- Price Price 4 optional: Price4
  index, price_price_4_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4_optional.dissect(buffer, index, packet, parent)

  -- Order Qty Quantity Zero optional: QuantityZero
  index, order_qty_quantity_zero_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_zero_optional.dissect(buffer, index, packet, parent)

  -- Reason Code: ReasonCode
  index, reason_code = iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Ack Message quote Acks Group
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_group.dissect = function(buffer, offset, packet, parent, bulk_quote_ack_message_quote_acks_group_index)
  if show.bulk_quote_ack_message_quote_acks_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.bulk_quote_ack_message_quote_acks_group, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_group.fields(buffer, offset, packet, parent, bulk_quote_ack_message_quote_acks_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_group.fields(buffer, offset, packet, parent, bulk_quote_ack_message_quote_acks_group_index)
  end
end

-- Quote Acks Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_acks_group_encoding = {}

-- Size: Quote Acks Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_acks_group_encoding.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.block_length_uint_8.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.num_in_group.size

-- Display: Quote Acks Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_acks_group_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Acks Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_acks_group_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length uint 8: uint8
  index, block_length_uint_8 = iex_iexoptions_binaryorderentry_sbe_v1_0.block_length_uint_8.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = iex_iexoptions_binaryorderentry_sbe_v1_0.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Acks Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_acks_group_encoding.dissect = function(buffer, offset, packet, parent)
  if show.quote_acks_group_encoding then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.quote_acks_group_encoding, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_acks_group_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_acks_group_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.quote_acks_group_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Ack Message quote Acks Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_groups = {}

-- Calculate size of: Bulk Quote Ack Message quote Acks Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_groups.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.quote_acks_group_encoding.size

  -- Calculate field size from count
  local bulk_quote_ack_message_quote_acks_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + bulk_quote_ack_message_quote_acks_group_count * 23

  return index
end

-- Display: Bulk Quote Ack Message quote Acks Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Ack Message quote Acks Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Acks Group Encoding: Struct of 2 fields
  index, quote_acks_group_encoding = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_acks_group_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Bulk Quote Ack Message quote Acks Group
  for bulk_quote_ack_message_quote_acks_group_index = 1, num_in_group do
    index, bulk_quote_ack_message_quote_acks_group = iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_group.dissect(buffer, index, packet, parent, bulk_quote_ack_message_quote_acks_group_index)
  end

  return index
end

-- Dissect: Bulk Quote Ack Message quote Acks Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_groups.dissect = function(buffer, offset, packet, parent)
  if show.bulk_quote_ack_message_quote_acks_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.bulk_quote_ack_message_quote_acks_groups, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_groups.fields(buffer, offset, packet, parent)
  end
end

-- Bulk Quote Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message = {}

-- Calculate size of: Bulk Quote Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_groups.size(buffer, offset + index)

  return index
end

-- Display: Bulk Quote Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulk Quote Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Custom Group Id uint 16: uint16
  index, custom_group_id_uint_16 = iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Account: ClearingAccount
  index, clearing_account = iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.dissect(buffer, index, packet, parent)

  -- Aiq: string3
  index, aiq = iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.dissect(buffer, index, packet, parent)

  -- Throttle Indicator: ThrottleIndicator
  index, throttle_indicator = iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.dissect(buffer, index, packet, parent)

  -- Bulk Quote Ack Message quote Acks Groups: Struct of 2 fields
  index, bulk_quote_ack_message_quote_acks_groups = iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message_quote_acks_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulk Quote Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.bulk_quote_ack_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_ack_message = {}

-- Size: Mass Cancel Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_ack_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_mass_cancel_ack_style.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_filter.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_action.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_count.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.size

-- Display: Mass Cancel Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Underlying Id Instrument Id optional: InstrumentId
  index, underlying_id_instrument_id_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Reason Code: ReasonCode
  index, reason_code = iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ack Style Mass Cancel Ack Style: MassCancelAckStyle
  index, ack_style_mass_cancel_ack_style = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_mass_cancel_ack_style.dissect(buffer, index, packet, parent)

  -- Mpid Filter: MPIDFilter
  index, mpid_filter = iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_filter.dissect(buffer, index, packet, parent)

  -- Bulk Action: BulkAction
  index, bulk_action = iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_action.dissect(buffer, index, packet, parent)

  -- Cancel Count: uint32
  index, cancel_count = iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_count.dissect(buffer, index, packet, parent)

  -- Throttle Indicator: ThrottleIndicator
  index, throttle_indicator = iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.mass_cancel_ack_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_ack_message = {}

-- Size: Order Cancel Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_ack_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.leaves_qty.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.size

-- Display: Order Cancel Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Instrument Id Instrument Id: InstrumentId
  index, instrument_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: ClOrdId
  index, orig_cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price8
  index, price_price_8 = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.dissect(buffer, index, packet, parent)

  -- Leaves Qty: QuantityZero
  index, leaves_qty = iex_iexoptions_binaryorderentry_sbe_v1_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Reason Code: ReasonCode
  index, reason_code = iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ack Type: AckType
  index, ack_type = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.dissect(buffer, index, packet, parent)

  -- Throttle Indicator: ThrottleIndicator
  index, throttle_indicator = iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_cancel_ack_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsolicited Modify Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.unsolicited_modify_ack_message = {}

-- Size: Unsolicited Modify Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.unsolicited_modify_ack_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.leaves_qty.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.effective_limit_price.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.display_price.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.restatement_reason.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.size

-- Display: Unsolicited Modify Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.unsolicited_modify_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsolicited Modify Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.unsolicited_modify_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Instrument Id Instrument Id: InstrumentId
  index, instrument_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: ClOrdId
  index, orig_cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price8
  index, price_price_8 = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty Quantity Non Zero: QuantityNonZero
  index, order_qty_quantity_non_zero = iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero.dissect(buffer, index, packet, parent)

  -- Leaves Qty: QuantityZero
  index, leaves_qty = iex_iexoptions_binaryorderentry_sbe_v1_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Effective Limit Price: Price8
  index, effective_limit_price = iex_iexoptions_binaryorderentry_sbe_v1_0.effective_limit_price.dissect(buffer, index, packet, parent)

  -- Display Price: Price8
  index, display_price = iex_iexoptions_binaryorderentry_sbe_v1_0.display_price.dissect(buffer, index, packet, parent)

  -- Restatement Reason: RestatementReason
  index, restatement_reason = iex_iexoptions_binaryorderentry_sbe_v1_0.restatement_reason.dissect(buffer, index, packet, parent)

  -- Reason Code: ReasonCode
  index, reason_code = iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ack Type: AckType
  index, ack_type = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsolicited Modify Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.unsolicited_modify_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.unsolicited_modify_ack_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.unsolicited_modify_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.unsolicited_modify_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.unsolicited_modify_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_ack_message = {}

-- Size: Order Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_ack_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.account_account.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.customer_or_firm.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.open_close.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.attributed_quote.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.time_in_force.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.display_inst.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.exec_inst.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.ord_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.target_party_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.auction_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_firm.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.optional_data.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.routing_firm_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.side.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.leaves_qty.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.effective_limit_price.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.display_price.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.size

-- Display: Order Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Account Account: Account
  index, account_account = iex_iexoptions_binaryorderentry_sbe_v1_0.account_account.dissect(buffer, index, packet, parent)

  -- Transact Time: EpochNanos
  index, transact_time = iex_iexoptions_binaryorderentry_sbe_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Instrument Id Instrument Id: InstrumentId
  index, instrument_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Account: ClearingAccount
  index, clearing_account = iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: ClOrdId
  index, orig_cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: OrderId
  index, order_id = iex_iexoptions_binaryorderentry_sbe_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Customer Or Firm: CustomerOrFirm
  index, customer_or_firm = iex_iexoptions_binaryorderentry_sbe_v1_0.customer_or_firm.dissect(buffer, index, packet, parent)

  -- Open Close: OpenClose
  index, open_close = iex_iexoptions_binaryorderentry_sbe_v1_0.open_close.dissect(buffer, index, packet, parent)

  -- Attributed Quote: AttributedQuote
  index, attributed_quote = iex_iexoptions_binaryorderentry_sbe_v1_0.attributed_quote.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = iex_iexoptions_binaryorderentry_sbe_v1_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Cancel Instead Of Slide Cancel Instead Of Slide: CancelInsteadOfSlide
  index, cancel_instead_of_slide_cancel_instead_of_slide = iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide.dissect(buffer, index, packet, parent)

  -- Display Inst: DisplayInst
  index, display_inst = iex_iexoptions_binaryorderentry_sbe_v1_0.display_inst.dissect(buffer, index, packet, parent)

  -- Exec Inst: ExecInst
  index, exec_inst = iex_iexoptions_binaryorderentry_sbe_v1_0.exec_inst.dissect(buffer, index, packet, parent)

  -- Ord Type: OrdType
  index, ord_type = iex_iexoptions_binaryorderentry_sbe_v1_0.ord_type.dissect(buffer, index, packet, parent)

  -- Target Party Id: MPID
  index, target_party_id = iex_iexoptions_binaryorderentry_sbe_v1_0.target_party_id.dissect(buffer, index, packet, parent)

  -- Auction Id: AuctionId
  index, auction_id = iex_iexoptions_binaryorderentry_sbe_v1_0.auction_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: uint32
  index, clearing_firm = iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_firm.dissect(buffer, index, packet, parent)

  -- Optional Data: string16
  index, optional_data = iex_iexoptions_binaryorderentry_sbe_v1_0.optional_data.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: MPID
  index, routing_firm_id = iex_iexoptions_binaryorderentry_sbe_v1_0.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Aiq: string3
  index, aiq = iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = iex_iexoptions_binaryorderentry_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price8
  index, price_price_8 = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty Quantity Non Zero: QuantityNonZero
  index, order_qty_quantity_non_zero = iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero.dissect(buffer, index, packet, parent)

  -- Leaves Qty: QuantityZero
  index, leaves_qty = iex_iexoptions_binaryorderentry_sbe_v1_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Effective Limit Price: Price8
  index, effective_limit_price = iex_iexoptions_binaryorderentry_sbe_v1_0.effective_limit_price.dissect(buffer, index, packet, parent)

  -- Display Price: Price8
  index, display_price = iex_iexoptions_binaryorderentry_sbe_v1_0.display_price.dissect(buffer, index, packet, parent)

  -- Reason Code: ReasonCode
  index, reason_code = iex_iexoptions_binaryorderentry_sbe_v1_0.reason_code.dissect(buffer, index, packet, parent)

  -- Ack Type: AckType
  index, ack_type = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_type.dissect(buffer, index, packet, parent)

  -- Throttle Indicator: ThrottleIndicator
  index, throttle_indicator = iex_iexoptions_binaryorderentry_sbe_v1_0.throttle_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Ack Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_ack_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.order_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.order_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.order_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Purge Request Message custom Group Ids Group
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_group = {}

-- Size: Purge Request Message custom Group Ids Group
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_group.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16.size

-- Display: Purge Request Message custom Group Ids Group
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Request Message custom Group Ids Group
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_group.fields = function(buffer, offset, packet, parent, purge_request_message_custom_group_ids_group_index)
  local index = offset

  -- Implicit Purge Request Message custom Group Ids Group Index
  if purge_request_message_custom_group_ids_group_index ~= nil and show.purge_request_message_custom_group_ids_group_index then
    local iteration = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_request_message_custom_group_ids_group_index, purge_request_message_custom_group_ids_group_index)
    iteration:set_generated()
  end

  -- Custom Group Id uint 16: uint16
  index, custom_group_id_uint_16 = iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Request Message custom Group Ids Group
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_group.dissect = function(buffer, offset, packet, parent, purge_request_message_custom_group_ids_group_index)
  if show.purge_request_message_custom_group_ids_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_request_message_custom_group_ids_group, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_group.fields(buffer, offset, packet, parent, purge_request_message_custom_group_ids_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_group.fields(buffer, offset, packet, parent, purge_request_message_custom_group_ids_group_index)
  end
end

-- Purge Request Message custom Group Ids Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_groups = {}

-- Calculate size of: Purge Request Message custom Group Ids Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_groups.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_ids_group_encoding.size

  -- Calculate field size from count
  local purge_request_message_custom_group_ids_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + purge_request_message_custom_group_ids_group_count * 2

  return index
end

-- Display: Purge Request Message custom Group Ids Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Request Message custom Group Ids Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Custom Group Ids Group Encoding: Struct of 2 fields
  index, custom_group_ids_group_encoding = iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_ids_group_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Purge Request Message custom Group Ids Group
  for purge_request_message_custom_group_ids_group_index = 1, num_in_group do
    index, purge_request_message_custom_group_ids_group = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_group.dissect(buffer, index, packet, parent, purge_request_message_custom_group_ids_group_index)
  end

  return index
end

-- Dissect: Purge Request Message custom Group Ids Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_groups.dissect = function(buffer, offset, packet, parent)
  if show.purge_request_message_custom_group_ids_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_request_message_custom_group_ids_groups, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_groups.fields(buffer, offset, packet, parent)
  end
end

-- Purge Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message = {}

-- Calculate size of: Purge Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.send_time.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_purge_request_ack_style.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_action.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_groups.size(buffer, offset + index)

  return index
end

-- Display: Purge Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Id Instrument Id: InstrumentId
  index, underlying_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Send Time: EpochNanos
  index, send_time = iex_iexoptions_binaryorderentry_sbe_v1_0.send_time.dissect(buffer, index, packet, parent)

  -- Ack Style Purge Request Ack Style: PurgeRequestAckStyle
  index, ack_style_purge_request_ack_style = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_purge_request_ack_style.dissect(buffer, index, packet, parent)

  -- Bulk Action: BulkAction
  index, bulk_action = iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_action.dissect(buffer, index, packet, parent)

  -- Purge Request Message custom Group Ids Groups: Struct of 2 fields
  index, purge_request_message_custom_group_ids_groups = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message_custom_group_ids_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.purge_request_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_request_message = {}

-- Size: Mass Cancel Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_request_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.send_time.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_mass_cancel_ack_style.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_filter.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_action.size

-- Display: Mass Cancel Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Id Instrument Id optional: InstrumentId
  index, underlying_id_instrument_id_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_id_instrument_id_optional.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Send Time: EpochNanos
  index, send_time = iex_iexoptions_binaryorderentry_sbe_v1_0.send_time.dissect(buffer, index, packet, parent)

  -- Ack Style Mass Cancel Ack Style: MassCancelAckStyle
  index, ack_style_mass_cancel_ack_style = iex_iexoptions_binaryorderentry_sbe_v1_0.ack_style_mass_cancel_ack_style.dissect(buffer, index, packet, parent)

  -- Mpid Filter: MPIDFilter
  index, mpid_filter = iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_filter.dissect(buffer, index, packet, parent)

  -- Bulk Action: BulkAction
  index, bulk_action = iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.mass_cancel_request_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- New Bulk Quote Message quote Updates Group
iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_group = {}

-- Size: New Bulk Quote Message quote Updates Group
iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_group.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.side.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4_optional.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_zero_optional.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.quote_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.reserved.size

-- Display: New Bulk Quote Message quote Updates Group
iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Bulk Quote Message quote Updates Group
iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_group.fields = function(buffer, offset, packet, parent, new_bulk_quote_message_quote_updates_group_index)
  local index = offset

  -- Implicit New Bulk Quote Message quote Updates Group Index
  if new_bulk_quote_message_quote_updates_group_index ~= nil and show.new_bulk_quote_message_quote_updates_group_index then
    local iteration = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.new_bulk_quote_message_quote_updates_group_index, new_bulk_quote_message_quote_updates_group_index)
    iteration:set_generated()
  end

  -- Instrument Id Instrument Id: InstrumentId
  index, instrument_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = iex_iexoptions_binaryorderentry_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Price Price 4 optional: Price4
  index, price_price_4_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_4_optional.dissect(buffer, index, packet, parent)

  -- Order Qty Quantity Zero optional: QuantityZero
  index, order_qty_quantity_zero_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_zero_optional.dissect(buffer, index, packet, parent)

  -- Quote Type: QuoteType
  index, quote_type = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_type.dissect(buffer, index, packet, parent)

  -- Reserved: int8
  index, reserved = iex_iexoptions_binaryorderentry_sbe_v1_0.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Bulk Quote Message quote Updates Group
iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_group.dissect = function(buffer, offset, packet, parent, new_bulk_quote_message_quote_updates_group_index)
  if show.new_bulk_quote_message_quote_updates_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.new_bulk_quote_message_quote_updates_group, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_group.fields(buffer, offset, packet, parent, new_bulk_quote_message_quote_updates_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_group.fields(buffer, offset, packet, parent, new_bulk_quote_message_quote_updates_group_index)
  end
end

-- Quote Updates Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_updates_group_encoding = {}

-- Size: Quote Updates Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_updates_group_encoding.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.block_length_uint_8.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.num_in_group.size

-- Display: Quote Updates Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_updates_group_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Updates Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_updates_group_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length uint 8: uint8
  index, block_length_uint_8 = iex_iexoptions_binaryorderentry_sbe_v1_0.block_length_uint_8.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = iex_iexoptions_binaryorderentry_sbe_v1_0.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Updates Group Encoding
iex_iexoptions_binaryorderentry_sbe_v1_0.quote_updates_group_encoding.dissect = function(buffer, offset, packet, parent)
  if show.quote_updates_group_encoding then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.quote_updates_group_encoding, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_updates_group_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_updates_group_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.quote_updates_group_encoding.fields(buffer, offset, packet, parent)
  end
end

-- New Bulk Quote Message quote Updates Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_groups = {}

-- Calculate size of: New Bulk Quote Message quote Updates Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_groups.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.quote_updates_group_encoding.size

  -- Calculate field size from count
  local new_bulk_quote_message_quote_updates_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + new_bulk_quote_message_quote_updates_group_count * 15

  return index
end

-- Display: New Bulk Quote Message quote Updates Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Bulk Quote Message quote Updates Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Updates Group Encoding: Struct of 2 fields
  index, quote_updates_group_encoding = iex_iexoptions_binaryorderentry_sbe_v1_0.quote_updates_group_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: New Bulk Quote Message quote Updates Group
  for new_bulk_quote_message_quote_updates_group_index = 1, num_in_group do
    index, new_bulk_quote_message_quote_updates_group = iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_group.dissect(buffer, index, packet, parent, new_bulk_quote_message_quote_updates_group_index)
  end

  return index
end

-- Dissect: New Bulk Quote Message quote Updates Groups
iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_groups.dissect = function(buffer, offset, packet, parent)
  if show.new_bulk_quote_message_quote_updates_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.new_bulk_quote_message_quote_updates_groups, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_groups.fields(buffer, offset, packet, parent)
  end
end

-- New Bulk Quote Message
iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message = {}

-- Calculate size of: New Bulk Quote Message
iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide_optional.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.send_time.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.time_in_force.size

  index = index + iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_groups.size(buffer, offset + index)

  return index
end

-- Display: New Bulk Quote Message
iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Bulk Quote Message
iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Custom Group Id uint 16: uint16
  index, custom_group_id_uint_16 = iex_iexoptions_binaryorderentry_sbe_v1_0.custom_group_id_uint_16.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Account: ClearingAccount
  index, clearing_account = iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.dissect(buffer, index, packet, parent)

  -- Cancel Instead Of Slide Cancel Instead Of Slide optional: CancelInsteadOfSlide
  index, cancel_instead_of_slide_cancel_instead_of_slide_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide_optional.dissect(buffer, index, packet, parent)

  -- Send Time: EpochNanos
  index, send_time = iex_iexoptions_binaryorderentry_sbe_v1_0.send_time.dissect(buffer, index, packet, parent)

  -- Aiq: string3
  index, aiq = iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = iex_iexoptions_binaryorderentry_sbe_v1_0.time_in_force.dissect(buffer, index, packet, parent)

  -- New Bulk Quote Message quote Updates Groups: Struct of 2 fields
  index, new_bulk_quote_message_quote_updates_groups = iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message_quote_updates_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Bulk Quote Message
iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.new_bulk_quote_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_request_message = {}

-- Size: Order Cancel Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_request_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id.size

-- Display: Order Cancel Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id Instrument Id: InstrumentId
  index, instrument_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: ClOrdId
  index, orig_cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_cancel_request_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Replace Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_replace_request_message = {}

-- Size: Order Cancel Replace Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_replace_request_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.account_account.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.customer_or_firm.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.open_close.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.attributed_quote.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.time_in_force.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide_optional.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.display_inst.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.exec_inst.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.ord_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.target_party_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.auction_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_firm.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.optional_data.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.routing_firm_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.side.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero.size

-- Display: Order Cancel Replace Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_replace_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Account Account: Account
  index, account_account = iex_iexoptions_binaryorderentry_sbe_v1_0.account_account.dissect(buffer, index, packet, parent)

  -- Instrument Id Instrument Id: InstrumentId
  index, instrument_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Account: ClearingAccount
  index, clearing_account = iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: ClOrdId
  index, orig_cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Customer Or Firm: CustomerOrFirm
  index, customer_or_firm = iex_iexoptions_binaryorderentry_sbe_v1_0.customer_or_firm.dissect(buffer, index, packet, parent)

  -- Open Close: OpenClose
  index, open_close = iex_iexoptions_binaryorderentry_sbe_v1_0.open_close.dissect(buffer, index, packet, parent)

  -- Attributed Quote: AttributedQuote
  index, attributed_quote = iex_iexoptions_binaryorderentry_sbe_v1_0.attributed_quote.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = iex_iexoptions_binaryorderentry_sbe_v1_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Cancel Instead Of Slide Cancel Instead Of Slide optional: CancelInsteadOfSlide
  index, cancel_instead_of_slide_cancel_instead_of_slide_optional = iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide_optional.dissect(buffer, index, packet, parent)

  -- Display Inst: DisplayInst
  index, display_inst = iex_iexoptions_binaryorderentry_sbe_v1_0.display_inst.dissect(buffer, index, packet, parent)

  -- Exec Inst: ExecInst
  index, exec_inst = iex_iexoptions_binaryorderentry_sbe_v1_0.exec_inst.dissect(buffer, index, packet, parent)

  -- Ord Type: OrdType
  index, ord_type = iex_iexoptions_binaryorderentry_sbe_v1_0.ord_type.dissect(buffer, index, packet, parent)

  -- Target Party Id: MPID
  index, target_party_id = iex_iexoptions_binaryorderentry_sbe_v1_0.target_party_id.dissect(buffer, index, packet, parent)

  -- Auction Id: AuctionId
  index, auction_id = iex_iexoptions_binaryorderentry_sbe_v1_0.auction_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: uint32
  index, clearing_firm = iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_firm.dissect(buffer, index, packet, parent)

  -- Optional Data: string16
  index, optional_data = iex_iexoptions_binaryorderentry_sbe_v1_0.optional_data.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: MPID
  index, routing_firm_id = iex_iexoptions_binaryorderentry_sbe_v1_0.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Aiq: string3
  index, aiq = iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = iex_iexoptions_binaryorderentry_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price8
  index, price_price_8 = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty Quantity Non Zero: QuantityNonZero
  index, order_qty_quantity_non_zero = iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request Message
iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_replace_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.order_cancel_replace_request_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_replace_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_replace_request_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Single Message
iex_iexoptions_binaryorderentry_sbe_v1_0.new_order_single_message = {}

-- Size: New Order Single Message
iex_iexoptions_binaryorderentry_sbe_v1_0.new_order_single_message.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.account_account.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.customer_or_firm.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.open_close.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.attributed_quote.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.time_in_force.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.display_inst.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.exec_inst.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.ord_type.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.target_party_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.auction_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_firm.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.optional_data.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.routing_firm_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.side.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero.size

-- Display: New Order Single Message
iex_iexoptions_binaryorderentry_sbe_v1_0.new_order_single_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single Message
iex_iexoptions_binaryorderentry_sbe_v1_0.new_order_single_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Account Account: Account
  index, account_account = iex_iexoptions_binaryorderentry_sbe_v1_0.account_account.dissect(buffer, index, packet, parent)

  -- Instrument Id Instrument Id: InstrumentId
  index, instrument_id_instrument_id = iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_id_instrument_id.dissect(buffer, index, packet, parent)

  -- Market Participant Id: MPID
  index, market_participant_id = iex_iexoptions_binaryorderentry_sbe_v1_0.market_participant_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: ClOrdId
  index, cl_ord_id = iex_iexoptions_binaryorderentry_sbe_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Account: ClearingAccount
  index, clearing_account = iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_account.dissect(buffer, index, packet, parent)

  -- Customer Or Firm: CustomerOrFirm
  index, customer_or_firm = iex_iexoptions_binaryorderentry_sbe_v1_0.customer_or_firm.dissect(buffer, index, packet, parent)

  -- Open Close: OpenClose
  index, open_close = iex_iexoptions_binaryorderentry_sbe_v1_0.open_close.dissect(buffer, index, packet, parent)

  -- Attributed Quote: AttributedQuote
  index, attributed_quote = iex_iexoptions_binaryorderentry_sbe_v1_0.attributed_quote.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce
  index, time_in_force = iex_iexoptions_binaryorderentry_sbe_v1_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Cancel Instead Of Slide Cancel Instead Of Slide: CancelInsteadOfSlide
  index, cancel_instead_of_slide_cancel_instead_of_slide = iex_iexoptions_binaryorderentry_sbe_v1_0.cancel_instead_of_slide_cancel_instead_of_slide.dissect(buffer, index, packet, parent)

  -- Display Inst: DisplayInst
  index, display_inst = iex_iexoptions_binaryorderentry_sbe_v1_0.display_inst.dissect(buffer, index, packet, parent)

  -- Exec Inst: ExecInst
  index, exec_inst = iex_iexoptions_binaryorderentry_sbe_v1_0.exec_inst.dissect(buffer, index, packet, parent)

  -- Ord Type: OrdType
  index, ord_type = iex_iexoptions_binaryorderentry_sbe_v1_0.ord_type.dissect(buffer, index, packet, parent)

  -- Target Party Id: MPID
  index, target_party_id = iex_iexoptions_binaryorderentry_sbe_v1_0.target_party_id.dissect(buffer, index, packet, parent)

  -- Auction Id: AuctionId
  index, auction_id = iex_iexoptions_binaryorderentry_sbe_v1_0.auction_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: uint32
  index, clearing_firm = iex_iexoptions_binaryorderentry_sbe_v1_0.clearing_firm.dissect(buffer, index, packet, parent)

  -- Optional Data: string16
  index, optional_data = iex_iexoptions_binaryorderentry_sbe_v1_0.optional_data.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: MPID
  index, routing_firm_id = iex_iexoptions_binaryorderentry_sbe_v1_0.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Aiq: string3
  index, aiq = iex_iexoptions_binaryorderentry_sbe_v1_0.aiq.dissect(buffer, index, packet, parent)

  -- Side: Side
  index, side = iex_iexoptions_binaryorderentry_sbe_v1_0.side.dissect(buffer, index, packet, parent)

  -- Price Price 8: Price8
  index, price_price_8 = iex_iexoptions_binaryorderentry_sbe_v1_0.price_price_8.dissect(buffer, index, packet, parent)

  -- Order Qty Quantity Non Zero: QuantityNonZero
  index, order_qty_quantity_non_zero = iex_iexoptions_binaryorderentry_sbe_v1_0.order_qty_quantity_non_zero.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Message
iex_iexoptions_binaryorderentry_sbe_v1_0.new_order_single_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.new_order_single_message, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.new_order_single_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.new_order_single_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.new_order_single_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
iex_iexoptions_binaryorderentry_sbe_v1_0.payload = {}

-- Dissect: Payload
iex_iexoptions_binaryorderentry_sbe_v1_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect New Order Single Message
  if template_id == 1 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.new_order_single_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request Message
  if template_id == 2 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_replace_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request Message
  if template_id == 3 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Bulk Quote Message
  if template_id == 4 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.new_bulk_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Request Message
  if template_id == 5 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Request Message
  if template_id == 6 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.purge_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Ack Message
  if template_id == 101 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.order_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsolicited Modify Ack Message
  if template_id == 102 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.unsolicited_modify_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Ack Message
  if template_id == 103 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.order_cancel_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Ack Message
  if template_id == 104 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.mass_cancel_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulk Quote Ack Message
  if template_id == 105 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.bulk_quote_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Ioc Quote Ack Message
  if template_id == 106 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.new_ioc_quote_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Restated Message
  if template_id == 107 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.quote_restated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Canceled Message
  if template_id == 108 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.quote_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Ack Message
  if template_id == 109 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.purge_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Message
  if template_id == 110 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.execution_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Correct Message
  if template_id == 111 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.trade_bust_correct_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Application Layer Reject Message
  if template_id == 112 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.application_layer_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Limit Update Request Message
  if template_id == 51 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.risk_limit_update_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Action Request Message
  if template_id == 52 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.risk_action_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Ref Data Message
  if template_id == 151 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.underlying_ref_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Ref Data Message
  if template_id == 152 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.instrument_ref_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mpid Configuration Acknowledgement Message
  if template_id == 153 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.mpid_configuration_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Maker Symbol Appointment Message
  if template_id == 154 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.market_maker_symbol_appointment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Configuration Acknowledgement Message
  if template_id == 155 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.session_configuration_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Control Acknowledgment Message
  if template_id == 156 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Risk Control Alert Message
  if template_id == 157 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.risk_control_alert_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Message
  if template_id == 1 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if template_id == 2 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gateway Heartbeat Message
  if template_id == 3 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.gateway_heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat Message
  if template_id == 4 then
    return offset
  end
  -- Dissect Logout Request Message
  if template_id == 5 then
    return offset
  end
  -- Dissect Terminate Message
  if template_id == 6 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.terminate_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Message Header Message
  if template_id == 7 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.sequenced_message_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subsession Join Message
  if template_id == 8 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subsession Join Response Message
  if template_id == 9 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_join_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subsession Leave Message
  if template_id == 10 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subsession Leave Response Message
  if template_id == 11 then
    return iex_iexoptions_binaryorderentry_sbe_v1_0.subsession_leave_response_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
iex_iexoptions_binaryorderentry_sbe_v1_0.message_header = {}

-- Size: Message Header
iex_iexoptions_binaryorderentry_sbe_v1_0.message_header.size =
  iex_iexoptions_binaryorderentry_sbe_v1_0.block_length.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.template_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.schema_id.size + 
  iex_iexoptions_binaryorderentry_sbe_v1_0.version.size

-- Display: Message Header
iex_iexoptions_binaryorderentry_sbe_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
iex_iexoptions_binaryorderentry_sbe_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = iex_iexoptions_binaryorderentry_sbe_v1_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = iex_iexoptions_binaryorderentry_sbe_v1_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = iex_iexoptions_binaryorderentry_sbe_v1_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = iex_iexoptions_binaryorderentry_sbe_v1_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
iex_iexoptions_binaryorderentry_sbe_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.message_header, buffer(offset, 0))
    local index = iex_iexoptions_binaryorderentry_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_binaryorderentry_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
iex_iexoptions_binaryorderentry_sbe_v1_0.sbe_message = {}

-- Display: Sbe Message
iex_iexoptions_binaryorderentry_sbe_v1_0.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
iex_iexoptions_binaryorderentry_sbe_v1_0.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Packet Length: uint16
  index, packet_length = iex_iexoptions_binaryorderentry_sbe_v1_0.packet_length.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = iex_iexoptions_binaryorderentry_sbe_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 38 branches
  index = iex_iexoptions_binaryorderentry_sbe_v1_0.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
iex_iexoptions_binaryorderentry_sbe_v1_0.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.sbe_message then
    parent = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0.fields.sbe_message, buffer(offset, 0))
    local current = iex_iexoptions_binaryorderentry_sbe_v1_0.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = iex_iexoptions_binaryorderentry_sbe_v1_0.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    iex_iexoptions_binaryorderentry_sbe_v1_0.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Remaining Bytes For: Sbe Message
local sbe_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < iex_iexoptions_binaryorderentry_sbe_v1_0.sbe_message.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
iex_iexoptions_binaryorderentry_sbe_v1_0.packet = {}

-- Verify required size of Tcp packet
iex_iexoptions_binaryorderentry_sbe_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= iex_iexoptions_binaryorderentry_sbe_v1_0.packet_length.size + iex_iexoptions_binaryorderentry_sbe_v1_0.message_header.size
end

-- Dissect Packet
iex_iexoptions_binaryorderentry_sbe_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Sbe Message
  local end_of_payload = buffer:len()

  -- Sbe Message: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sbe_message = sbe_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = iex_iexoptions_binaryorderentry_sbe_v1_0.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)
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
function omi_iex_iexoptions_binaryorderentry_sbe_v1_0.init()
end

-- Dissector for Iex IexOptions BinaryOrderEntry Sbe 1.0
function omi_iex_iexoptions_binaryorderentry_sbe_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_iex_iexoptions_binaryorderentry_sbe_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_iex_iexoptions_binaryorderentry_sbe_v1_0, buffer(), omi_iex_iexoptions_binaryorderentry_sbe_v1_0.description, "("..buffer:len().." Bytes)")
  return iex_iexoptions_binaryorderentry_sbe_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
iex_iexoptions_binaryorderentry_sbe_v1_0.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(6, 2):le_uint()

  if value == 20001 then
    return true
  end

  if value == 20000 then
    return true
  end

  return false
end

-- Verify Version Field
iex_iexoptions_binaryorderentry_sbe_v1_0.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(8, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Dissector Heuristic for Iex IexOptions BinaryOrderEntry Sbe 1.0 (Tcp)
local function omi_iex_iexoptions_binaryorderentry_sbe_v1_0_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not iex_iexoptions_binaryorderentry_sbe_v1_0.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not iex_iexoptions_binaryorderentry_sbe_v1_0.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not iex_iexoptions_binaryorderentry_sbe_v1_0.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_iex_iexoptions_binaryorderentry_sbe_v1_0
  omi_iex_iexoptions_binaryorderentry_sbe_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Iex IexOptions BinaryOrderEntry Sbe 1.0
omi_iex_iexoptions_binaryorderentry_sbe_v1_0:register_heuristic("tcp", omi_iex_iexoptions_binaryorderentry_sbe_v1_0_tcp_heuristic)

-- Register Iex IexOptions BinaryOrderEntry Sbe 1.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_iex_iexoptions_binaryorderentry_sbe_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Investors Exchange
--   Version: 1.0
--   Date: Monday, June 1, 2026
--   Specification: IEX Binary Options Protocol Specification
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
