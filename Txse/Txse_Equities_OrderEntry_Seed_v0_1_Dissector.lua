-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Txse Equities OrderEntry Seed 0.1 Protocol
local omi_txse_equities_orderentry_seed_v0_1 = Proto("Txse.Equities.OrderEntry.Seed.v0.1.Lua", "Txse Equities OrderEntry Seed 0.1")

-- Protocol table
local txse_equities_orderentry_seed_v0_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Txse Equities OrderEntry Seed 0.1 Fields
omi_txse_equities_orderentry_seed_v0_1.fields.cancel_at_entry_if_crossed = ProtoField.new("Cancel At Entry If Crossed", "txse.equities.orderentry.seed.v0.1.cancelatentryifcrossed", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00004000)
omi_txse_equities_orderentry_seed_v0_1.fields.cancel_reason = ProtoField.new("Cancel Reason", "txse.equities.orderentry.seed.v0.1.cancelreason", ftypes.INT8)
omi_txse_equities_orderentry_seed_v0_1.fields.canceled_count = ProtoField.new("Canceled Count", "txse.equities.orderentry.seed.v0.1.canceledcount", ftypes.INT32)
omi_txse_equities_orderentry_seed_v0_1.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "txse.equities.orderentry.seed.v0.1.clordid", ftypes.INT64)
omi_txse_equities_orderentry_seed_v0_1.fields.debug_message = ProtoField.new("Debug Message", "txse.equities.orderentry.seed.v0.1.debugmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.define_symbol_bitfields = ProtoField.new("Define Symbol Bitfields", "txse.equities.orderentry.seed.v0.1.definesymbolbitfields", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.display_price = ProtoField.new("Display Price", "txse.equities.orderentry.seed.v0.1.displayprice", ftypes.INT64)
omi_txse_equities_orderentry_seed_v0_1.fields.exec_id = ProtoField.new("Exec Id", "txse.equities.orderentry.seed.v0.1.execid", ftypes.INT64)
omi_txse_equities_orderentry_seed_v0_1.fields.exec_qty = ProtoField.new("Exec Qty", "txse.equities.orderentry.seed.v0.1.execqty", ftypes.INT32)
omi_txse_equities_orderentry_seed_v0_1.fields.expire_time = ProtoField.new("Expire Time", "txse.equities.orderentry.seed.v0.1.expiretime", ftypes.INT64)
omi_txse_equities_orderentry_seed_v0_1.fields.highest_known_sequence_number = ProtoField.new("Highest Known Sequence Number", "txse.equities.orderentry.seed.v0.1.highestknownsequencenumber", ftypes.UINT64)
omi_txse_equities_orderentry_seed_v0_1.fields.is_hidden = ProtoField.new("Is Hidden", "txse.equities.orderentry.seed.v0.1.ishidden", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00001000)
omi_txse_equities_orderentry_seed_v0_1.fields.is_iso = ProtoField.new("Is Iso", "txse.equities.orderentry.seed.v0.1.isiso", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000800)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_display_price = ProtoField.new("Is Limit Order Accepted Display Price", "txse.equities.orderentry.seed.v0.1.islimitorderaccepteddisplayprice", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00004000)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_expire_time = ProtoField.new("Is Limit Order Accepted Expire Time", "txse.equities.orderentry.seed.v0.1.islimitorderacceptedexpiretime", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000100)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_locate_broker = ProtoField.new("Is Limit Order Accepted Locate Broker", "txse.equities.orderentry.seed.v0.1.islimitorderacceptedlocatebroker", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00001000)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_max_floor_qty = ProtoField.new("Is Limit Order Accepted Max Floor Qty", "txse.equities.orderentry.seed.v0.1.islimitorderacceptedmaxfloorqty", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000010)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_max_replenish_qty_range = ProtoField.new("Is Limit Order Accepted Max Replenish Qty Range", "txse.equities.orderentry.seed.v0.1.islimitorderacceptedmaxreplenishqtyrange", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000020)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_max_replenish_time_range = ProtoField.new("Is Limit Order Accepted Max Replenish Time Range", "txse.equities.orderentry.seed.v0.1.islimitorderacceptedmaxreplenishtimerange", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000040)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_member_group = ProtoField.new("Is Limit Order Accepted Member Group", "txse.equities.orderentry.seed.v0.1.islimitorderacceptedmembergroup", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000800)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_min_qty = ProtoField.new("Is Limit Order Accepted Min Qty", "txse.equities.orderentry.seed.v0.1.islimitorderacceptedminqty", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000008)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_mpid = ProtoField.new("Is Limit Order Accepted Mpid", "txse.equities.orderentry.seed.v0.1.islimitorderacceptedmpid", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000400)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_price_slide_instruction = ProtoField.new("Is Limit Order Accepted Price Slide Instruction", "txse.equities.orderentry.seed.v0.1.islimitorderacceptedpriceslideinstruction", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000004)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_rank_price = ProtoField.new("Is Limit Order Accepted Rank Price", "txse.equities.orderentry.seed.v0.1.islimitorderacceptedrankprice", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00002000)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_reference_price_target = ProtoField.new("Is Limit Order Accepted Reference Price Target", "txse.equities.orderentry.seed.v0.1.islimitorderacceptedreferencepricetarget", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000080)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_self_match_instruction = ProtoField.new("Is Limit Order Accepted Self Match Instruction", "txse.equities.orderentry.seed.v0.1.islimitorderacceptedselfmatchinstruction", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000002)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_self_match_scope = ProtoField.new("Is Limit Order Accepted Self Match Scope", "txse.equities.orderentry.seed.v0.1.islimitorderacceptedselfmatchscope", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000001)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_user_data = ProtoField.new("Is Limit Order Accepted User Data", "txse.equities.orderentry.seed.v0.1.islimitorderaccepteduserdata", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000200)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_expire_time = ProtoField.new("Is Limit Order Expire Time", "txse.equities.orderentry.seed.v0.1.islimitorderexpiretime", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000100)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_locate_broker = ProtoField.new("Is Limit Order Locate Broker", "txse.equities.orderentry.seed.v0.1.islimitorderlocatebroker", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00001000)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_max_floor_qty = ProtoField.new("Is Limit Order Max Floor Qty", "txse.equities.orderentry.seed.v0.1.islimitordermaxfloorqty", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000010)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_max_replenish_qty_range = ProtoField.new("Is Limit Order Max Replenish Qty Range", "txse.equities.orderentry.seed.v0.1.islimitordermaxreplenishqtyrange", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000020)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_max_replenish_time_range = ProtoField.new("Is Limit Order Max Replenish Time Range", "txse.equities.orderentry.seed.v0.1.islimitordermaxreplenishtimerange", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000040)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_member_group = ProtoField.new("Is Limit Order Member Group", "txse.equities.orderentry.seed.v0.1.islimitordermembergroup", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000800)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_min_qty = ProtoField.new("Is Limit Order Min Qty", "txse.equities.orderentry.seed.v0.1.islimitorderminqty", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000008)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_mpid = ProtoField.new("Is Limit Order Mpid", "txse.equities.orderentry.seed.v0.1.islimitordermpid", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000400)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_price_slide_instruction = ProtoField.new("Is Limit Order Price Slide Instruction", "txse.equities.orderentry.seed.v0.1.islimitorderpriceslideinstruction", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000004)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_reference_price_target = ProtoField.new("Is Limit Order Reference Price Target", "txse.equities.orderentry.seed.v0.1.islimitorderreferencepricetarget", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000080)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_display_price = ProtoField.new("Is Limit Order Rejected Display Price", "txse.equities.orderentry.seed.v0.1.islimitorderrejecteddisplayprice", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00004000)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_expire_time = ProtoField.new("Is Limit Order Rejected Expire Time", "txse.equities.orderentry.seed.v0.1.islimitorderrejectedexpiretime", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000100)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_locate_broker = ProtoField.new("Is Limit Order Rejected Locate Broker", "txse.equities.orderentry.seed.v0.1.islimitorderrejectedlocatebroker", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00001000)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_max_floor_qty = ProtoField.new("Is Limit Order Rejected Max Floor Qty", "txse.equities.orderentry.seed.v0.1.islimitorderrejectedmaxfloorqty", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000010)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_max_replenish_qty_range = ProtoField.new("Is Limit Order Rejected Max Replenish Qty Range", "txse.equities.orderentry.seed.v0.1.islimitorderrejectedmaxreplenishqtyrange", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000020)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_max_replenish_time_range = ProtoField.new("Is Limit Order Rejected Max Replenish Time Range", "txse.equities.orderentry.seed.v0.1.islimitorderrejectedmaxreplenishtimerange", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000040)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_member_group = ProtoField.new("Is Limit Order Rejected Member Group", "txse.equities.orderentry.seed.v0.1.islimitorderrejectedmembergroup", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000800)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_min_qty = ProtoField.new("Is Limit Order Rejected Min Qty", "txse.equities.orderentry.seed.v0.1.islimitorderrejectedminqty", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000008)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_mpid = ProtoField.new("Is Limit Order Rejected Mpid", "txse.equities.orderentry.seed.v0.1.islimitorderrejectedmpid", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000400)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_price_slide_instruction = ProtoField.new("Is Limit Order Rejected Price Slide Instruction", "txse.equities.orderentry.seed.v0.1.islimitorderrejectedpriceslideinstruction", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000004)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_rank_price = ProtoField.new("Is Limit Order Rejected Rank Price", "txse.equities.orderentry.seed.v0.1.islimitorderrejectedrankprice", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00002000)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_reference_price_target = ProtoField.new("Is Limit Order Rejected Reference Price Target", "txse.equities.orderentry.seed.v0.1.islimitorderrejectedreferencepricetarget", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000080)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_self_match_instruction = ProtoField.new("Is Limit Order Rejected Self Match Instruction", "txse.equities.orderentry.seed.v0.1.islimitorderrejectedselfmatchinstruction", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000002)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_self_match_scope = ProtoField.new("Is Limit Order Rejected Self Match Scope", "txse.equities.orderentry.seed.v0.1.islimitorderrejectedselfmatchscope", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000001)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_user_data = ProtoField.new("Is Limit Order Rejected User Data", "txse.equities.orderentry.seed.v0.1.islimitorderrejecteduserdata", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000200)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_self_match_instruction = ProtoField.new("Is Limit Order Self Match Instruction", "txse.equities.orderentry.seed.v0.1.islimitorderselfmatchinstruction", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000002)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_self_match_scope = ProtoField.new("Is Limit Order Self Match Scope", "txse.equities.orderentry.seed.v0.1.islimitorderselfmatchscope", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000001)
omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_user_data = ProtoField.new("Is Limit Order User Data", "txse.equities.orderentry.seed.v0.1.islimitorderuserdata", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000200)
omi_txse_equities_orderentry_seed_v0_1.fields.is_locate_required = ProtoField.new("Is Locate Required", "txse.equities.orderentry.seed.v0.1.islocaterequired", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000008)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_accepted_locate_broker = ProtoField.new("Is Market Order Accepted Locate Broker", "txse.equities.orderentry.seed.v0.1.ismarketorderacceptedlocatebroker", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000020)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_accepted_member_group = ProtoField.new("Is Market Order Accepted Member Group", "txse.equities.orderentry.seed.v0.1.ismarketorderacceptedmembergroup", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000010)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_accepted_mpid = ProtoField.new("Is Market Order Accepted Mpid", "txse.equities.orderentry.seed.v0.1.ismarketorderacceptedmpid", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000008)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_accepted_self_match_instruction = ProtoField.new("Is Market Order Accepted Self Match Instruction", "txse.equities.orderentry.seed.v0.1.ismarketorderacceptedselfmatchinstruction", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000002)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_accepted_self_match_scope = ProtoField.new("Is Market Order Accepted Self Match Scope", "txse.equities.orderentry.seed.v0.1.ismarketorderacceptedselfmatchscope", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000001)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_accepted_user_data = ProtoField.new("Is Market Order Accepted User Data", "txse.equities.orderentry.seed.v0.1.ismarketorderaccepteduserdata", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000004)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_locate_broker = ProtoField.new("Is Market Order Locate Broker", "txse.equities.orderentry.seed.v0.1.ismarketorderlocatebroker", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_member_group = ProtoField.new("Is Market Order Member Group", "txse.equities.orderentry.seed.v0.1.ismarketordermembergroup", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_mpid = ProtoField.new("Is Market Order Mpid", "txse.equities.orderentry.seed.v0.1.ismarketordermpid", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_rejected_locate_broker = ProtoField.new("Is Market Order Rejected Locate Broker", "txse.equities.orderentry.seed.v0.1.ismarketorderrejectedlocatebroker", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000020)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_rejected_member_group = ProtoField.new("Is Market Order Rejected Member Group", "txse.equities.orderentry.seed.v0.1.ismarketorderrejectedmembergroup", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000010)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_rejected_mpid = ProtoField.new("Is Market Order Rejected Mpid", "txse.equities.orderentry.seed.v0.1.ismarketorderrejectedmpid", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000008)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_rejected_self_match_instruction = ProtoField.new("Is Market Order Rejected Self Match Instruction", "txse.equities.orderentry.seed.v0.1.ismarketorderrejectedselfmatchinstruction", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000002)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_rejected_self_match_scope = ProtoField.new("Is Market Order Rejected Self Match Scope", "txse.equities.orderentry.seed.v0.1.ismarketorderrejectedselfmatchscope", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000001)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_rejected_user_data = ProtoField.new("Is Market Order Rejected User Data", "txse.equities.orderentry.seed.v0.1.ismarketorderrejecteduserdata", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000004)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_self_match_instruction = ProtoField.new("Is Market Order Self Match Instruction", "txse.equities.orderentry.seed.v0.1.ismarketorderselfmatchinstruction", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_self_match_scope = ProtoField.new("Is Market Order Self Match Scope", "txse.equities.orderentry.seed.v0.1.ismarketorderselfmatchscope", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_user_data = ProtoField.new("Is Market Order User Data", "txse.equities.orderentry.seed.v0.1.ismarketorderuserdata", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_accepted_cl_ord_id = ProtoField.new("Is Mass Cancel Accepted Cl Ord Id", "txse.equities.orderentry.seed.v0.1.ismasscancelacceptedclordid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_accepted_member_group = ProtoField.new("Is Mass Cancel Accepted Member Group", "txse.equities.orderentry.seed.v0.1.ismasscancelacceptedmembergroup", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_accepted_mpid = ProtoField.new("Is Mass Cancel Accepted Mpid", "txse.equities.orderentry.seed.v0.1.ismasscancelacceptedmpid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_accepted_sender_comp = ProtoField.new("Is Mass Cancel Accepted Sender Comp", "txse.equities.orderentry.seed.v0.1.ismasscancelacceptedsendercomp", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_cl_ord_id = ProtoField.new("Is Mass Cancel Cl Ord Id", "txse.equities.orderentry.seed.v0.1.ismasscancelclordid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_member_group = ProtoField.new("Is Mass Cancel Member Group", "txse.equities.orderentry.seed.v0.1.ismasscancelmembergroup", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_mpid = ProtoField.new("Is Mass Cancel Mpid", "txse.equities.orderentry.seed.v0.1.ismasscancelmpid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_rejected_cl_ord_id = ProtoField.new("Is Mass Cancel Rejected Cl Ord Id", "txse.equities.orderentry.seed.v0.1.ismasscancelrejectedclordid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_rejected_member_group = ProtoField.new("Is Mass Cancel Rejected Member Group", "txse.equities.orderentry.seed.v0.1.ismasscancelrejectedmembergroup", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_rejected_mpid = ProtoField.new("Is Mass Cancel Rejected Mpid", "txse.equities.orderentry.seed.v0.1.ismasscancelrejectedmpid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_rejected_sender_comp = ProtoField.new("Is Mass Cancel Rejected Sender Comp", "txse.equities.orderentry.seed.v0.1.ismasscancelrejectedsendercomp", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_result_cl_ord_id = ProtoField.new("Is Mass Cancel Result Cl Ord Id", "txse.equities.orderentry.seed.v0.1.ismasscancelresultclordid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_result_member_group = ProtoField.new("Is Mass Cancel Result Member Group", "txse.equities.orderentry.seed.v0.1.ismasscancelresultmembergroup", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_result_mpid = ProtoField.new("Is Mass Cancel Result Mpid", "txse.equities.orderentry.seed.v0.1.ismasscancelresultmpid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_result_sender_comp = ProtoField.new("Is Mass Cancel Result Sender Comp", "txse.equities.orderentry.seed.v0.1.ismasscancelresultsendercomp", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_sender_comp = ProtoField.new("Is Mass Cancel Sender Comp", "txse.equities.orderentry.seed.v0.1.ismasscancelsendercomp", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_txse_equities_orderentry_seed_v0_1.fields.is_modify_rejected_locate_broker = ProtoField.new("Is Modify Rejected Locate Broker", "txse.equities.orderentry.seed.v0.1.ismodifyrejectedlocatebroker", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_txse_equities_orderentry_seed_v0_1.fields.is_modify_rejected_modify_bitfields = ProtoField.new("Is Modify Rejected Modify Bitfields", "txse.equities.orderentry.seed.v0.1.ismodifyrejectedmodifybitfields", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_txse_equities_orderentry_seed_v0_1.fields.is_modify_rejected_order_qty = ProtoField.new("Is Modify Rejected Order Qty", "txse.equities.orderentry.seed.v0.1.ismodifyrejectedorderqty", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_txse_equities_orderentry_seed_v0_1.fields.is_order_modified_locate_broker = ProtoField.new("Is Order Modified Locate Broker", "txse.equities.orderentry.seed.v0.1.isordermodifiedlocatebroker", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_txse_equities_orderentry_seed_v0_1.fields.is_order_modified_modify_bitfields = ProtoField.new("Is Order Modified Modify Bitfields", "txse.equities.orderentry.seed.v0.1.isordermodifiedmodifybitfields", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_txse_equities_orderentry_seed_v0_1.fields.is_order_modified_order_qty = ProtoField.new("Is Order Modified Order Qty", "txse.equities.orderentry.seed.v0.1.isordermodifiedorderqty", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_txse_equities_orderentry_seed_v0_1.fields.is_order_replaced_display_price = ProtoField.new("Is Order Replaced Display Price", "txse.equities.orderentry.seed.v0.1.isorderreplaceddisplayprice", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
omi_txse_equities_orderentry_seed_v0_1.fields.is_order_replaced_locate_broker = ProtoField.new("Is Order Replaced Locate Broker", "txse.equities.orderentry.seed.v0.1.isorderreplacedlocatebroker", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
omi_txse_equities_orderentry_seed_v0_1.fields.is_order_replaced_max_floor_qty = ProtoField.new("Is Order Replaced Max Floor Qty", "txse.equities.orderentry.seed.v0.1.isorderreplacedmaxfloorqty", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_txse_equities_orderentry_seed_v0_1.fields.is_order_replaced_order_qty = ProtoField.new("Is Order Replaced Order Qty", "txse.equities.orderentry.seed.v0.1.isorderreplacedorderqty", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_txse_equities_orderentry_seed_v0_1.fields.is_order_replaced_price = ProtoField.new("Is Order Replaced Price", "txse.equities.orderentry.seed.v0.1.isorderreplacedprice", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_txse_equities_orderentry_seed_v0_1.fields.is_order_replaced_rank_price = ProtoField.new("Is Order Replaced Rank Price", "txse.equities.orderentry.seed.v0.1.isorderreplacedrankprice", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
omi_txse_equities_orderentry_seed_v0_1.fields.is_order_restated_display_price = ProtoField.new("Is Order Restated Display Price", "txse.equities.orderentry.seed.v0.1.isorderrestateddisplayprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_txse_equities_orderentry_seed_v0_1.fields.is_order_restated_order_qty = ProtoField.new("Is Order Restated Order Qty", "txse.equities.orderentry.seed.v0.1.isorderrestatedorderqty", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_txse_equities_orderentry_seed_v0_1.fields.is_order_restated_rank_price = ProtoField.new("Is Order Restated Rank Price", "txse.equities.orderentry.seed.v0.1.isorderrestatedrankprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_txse_equities_orderentry_seed_v0_1.fields.is_post_only = ProtoField.new("Is Post Only", "txse.equities.orderentry.seed.v0.1.ispostonly", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00002000)
omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_order_locate_broker = ProtoField.new("Is Replace Order Locate Broker", "txse.equities.orderentry.seed.v0.1.isreplaceorderlocatebroker", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_order_max_floor_qty = ProtoField.new("Is Replace Order Max Floor Qty", "txse.equities.orderentry.seed.v0.1.isreplaceordermaxfloorqty", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_order_order_qty = ProtoField.new("Is Replace Order Order Qty", "txse.equities.orderentry.seed.v0.1.isreplaceorderorderqty", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_order_price = ProtoField.new("Is Replace Order Price", "txse.equities.orderentry.seed.v0.1.isreplaceorderprice", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_rejected_locate_broker = ProtoField.new("Is Replace Rejected Locate Broker", "txse.equities.orderentry.seed.v0.1.isreplacerejectedlocatebroker", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_rejected_max_floor_qty = ProtoField.new("Is Replace Rejected Max Floor Qty", "txse.equities.orderentry.seed.v0.1.isreplacerejectedmaxfloorqty", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_rejected_order_qty = ProtoField.new("Is Replace Rejected Order Qty", "txse.equities.orderentry.seed.v0.1.isreplacerejectedorderqty", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_rejected_price = ProtoField.new("Is Replace Rejected Price", "txse.equities.orderentry.seed.v0.1.isreplacerejectedprice", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_txse_equities_orderentry_seed_v0_1.fields.is_symbol_status_operational_halt_reason = ProtoField.new("Is Symbol Status Operational Halt Reason", "txse.equities.orderentry.seed.v0.1.issymbolstatusoperationalhaltreason", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_txse_equities_orderentry_seed_v0_1.fields.is_symbol_status_regulatory_halt_reason = ProtoField.new("Is Symbol Status Regulatory Halt Reason", "txse.equities.orderentry.seed.v0.1.issymbolstatusregulatoryhaltreason", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_txse_equities_orderentry_seed_v0_1.fields.is_test = ProtoField.new("Is Test", "txse.equities.orderentry.seed.v0.1.istest", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_txse_equities_orderentry_seed_v0_1.fields.is_trading_session_status_operational_halt_reason = ProtoField.new("Is Trading Session Status Operational Halt Reason", "txse.equities.orderentry.seed.v0.1.istradingsessionstatusoperationalhaltreason", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_txse_equities_orderentry_seed_v0_1.fields.is_trading_session_status_regulatory_halt_reason = ProtoField.new("Is Trading Session Status Regulatory Halt Reason", "txse.equities.orderentry.seed.v0.1.istradingsessionstatusregulatoryhaltreason", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_txse_equities_orderentry_seed_v0_1.fields.leaves_qty = ProtoField.new("Leaves Qty", "txse.equities.orderentry.seed.v0.1.leavesqty", ftypes.INT32)
omi_txse_equities_orderentry_seed_v0_1.fields.limit_order_bit_fields = ProtoField.new("Limit Order Bit Fields", "txse.equities.orderentry.seed.v0.1.limitorderbitfields", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.locate_broker = ProtoField.new("Locate Broker", "txse.equities.orderentry.seed.v0.1.locatebroker", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.logon_request_packet = ProtoField.new("Logon Request Packet", "txse.equities.orderentry.seed.v0.1.logonrequestpacket", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.logon_response_code = ProtoField.new("Logon Response Code", "txse.equities.orderentry.seed.v0.1.logonresponsecode", ftypes.UINT8)
omi_txse_equities_orderentry_seed_v0_1.fields.logon_response_message = ProtoField.new("Logon Response Message", "txse.equities.orderentry.seed.v0.1.logonresponsemessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.lot_size = ProtoField.new("Lot Size", "txse.equities.orderentry.seed.v0.1.lotsize", ftypes.INT32)
omi_txse_equities_orderentry_seed_v0_1.fields.market_hours_state = ProtoField.new("Market Hours State", "txse.equities.orderentry.seed.v0.1.markethoursstate", ftypes.INT8)
omi_txse_equities_orderentry_seed_v0_1.fields.market_order_bit_fields = ProtoField.new("Market Order Bit Fields", "txse.equities.orderentry.seed.v0.1.marketorderbitfields", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_id = ProtoField.new("Mass Cancel Id", "txse.equities.orderentry.seed.v0.1.masscancelid", ftypes.INT64)
omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_request_id = ProtoField.new("Mass Cancel Request Id", "txse.equities.orderentry.seed.v0.1.masscancelrequestid", ftypes.INT64)
omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_scope = ProtoField.new("Mass Cancel Scope", "txse.equities.orderentry.seed.v0.1.masscancelscope", ftypes.INT8)
omi_txse_equities_orderentry_seed_v0_1.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "txse.equities.orderentry.seed.v0.1.matchingengineid", ftypes.INT8)
omi_txse_equities_orderentry_seed_v0_1.fields.max_floor_qty = ProtoField.new("Max Floor Qty", "txse.equities.orderentry.seed.v0.1.maxfloorqty", ftypes.INT32)
omi_txse_equities_orderentry_seed_v0_1.fields.max_replenish_qty_range = ProtoField.new("Max Replenish Qty Range", "txse.equities.orderentry.seed.v0.1.maxreplenishqtyrange", ftypes.INT32)
omi_txse_equities_orderentry_seed_v0_1.fields.max_replenish_time_range = ProtoField.new("Max Replenish Time Range", "txse.equities.orderentry.seed.v0.1.maxreplenishtimerange", ftypes.INT64)
omi_txse_equities_orderentry_seed_v0_1.fields.member_group = ProtoField.new("Member Group", "txse.equities.orderentry.seed.v0.1.membergroup", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.member_token = ProtoField.new("Member Token", "txse.equities.orderentry.seed.v0.1.membertoken", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.message_length = ProtoField.new("Message Length", "txse.equities.orderentry.seed.v0.1.messagelength", ftypes.UINT16)
omi_txse_equities_orderentry_seed_v0_1.fields.min_qty = ProtoField.new("Min Qty", "txse.equities.orderentry.seed.v0.1.minqty", ftypes.INT32)
omi_txse_equities_orderentry_seed_v0_1.fields.modify_bitfields = ProtoField.new("Modify Bitfields", "txse.equities.orderentry.seed.v0.1.modifybitfields", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.mpid = ProtoField.new("Mpid", "txse.equities.orderentry.seed.v0.1.mpid", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "txse.equities.orderentry.seed.v0.1.nextsequencenumber", ftypes.UINT64)
omi_txse_equities_orderentry_seed_v0_1.fields.number_stream_ids = ProtoField.new("Number Stream Ids", "txse.equities.orderentry.seed.v0.1.numberstreamids", ftypes.UINT8)
omi_txse_equities_orderentry_seed_v0_1.fields.operational_halt_reason = ProtoField.new("Operational Halt Reason", "txse.equities.orderentry.seed.v0.1.operationalhaltreason", ftypes.INT8)
omi_txse_equities_orderentry_seed_v0_1.fields.order_capacity = ProtoField.new("Order Capacity", "txse.equities.orderentry.seed.v0.1.ordercapacity", ftypes.UINT32, nil, base.DEC, 0x00000700)
omi_txse_equities_orderentry_seed_v0_1.fields.order_id = ProtoField.new("Order Id", "txse.equities.orderentry.seed.v0.1.orderid", ftypes.INT64)
omi_txse_equities_orderentry_seed_v0_1.fields.order_qty = ProtoField.new("Order Qty", "txse.equities.orderentry.seed.v0.1.orderqty", ftypes.INT32)
omi_txse_equities_orderentry_seed_v0_1.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "txse.equities.orderentry.seed.v0.1.origclordid", ftypes.INT64)
omi_txse_equities_orderentry_seed_v0_1.fields.packet = ProtoField.new("Packet", "txse.equities.orderentry.seed.v0.1.packet", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.packet_type = ProtoField.new("Packet Type", "txse.equities.orderentry.seed.v0.1.packettype", ftypes.UINT8)
omi_txse_equities_orderentry_seed_v0_1.fields.payload = ProtoField.new("Payload", "txse.equities.orderentry.seed.v0.1.payload", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.price = ProtoField.new("Price", "txse.equities.orderentry.seed.v0.1.price", ftypes.INT64)
omi_txse_equities_orderentry_seed_v0_1.fields.price_slide_instruction = ProtoField.new("Price Slide Instruction", "txse.equities.orderentry.seed.v0.1.priceslideinstruction", ftypes.INT8)
omi_txse_equities_orderentry_seed_v0_1.fields.rake_instance = ProtoField.new("Rake Instance", "txse.equities.orderentry.seed.v0.1.rakeinstance", ftypes.UINT32)
omi_txse_equities_orderentry_seed_v0_1.fields.rake_message_header = ProtoField.new("Rake Message Header", "txse.equities.orderentry.seed.v0.1.rakemessageheader", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.rake_tcp_message = ProtoField.new("Rake Tcp Message", "txse.equities.orderentry.seed.v0.1.raketcpmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.rank_price = ProtoField.new("Rank Price", "txse.equities.orderentry.seed.v0.1.rankprice", ftypes.INT64)
omi_txse_equities_orderentry_seed_v0_1.fields.reference_price_target = ProtoField.new("Reference Price Target", "txse.equities.orderentry.seed.v0.1.referencepricetarget", ftypes.INT16)
omi_txse_equities_orderentry_seed_v0_1.fields.regulatory_halt_reason = ProtoField.new("Regulatory Halt Reason", "txse.equities.orderentry.seed.v0.1.regulatoryhaltreason", ftypes.INT8)
omi_txse_equities_orderentry_seed_v0_1.fields.reject_reason = ProtoField.new("Reject Reason", "txse.equities.orderentry.seed.v0.1.rejectreason", ftypes.INT8)
omi_txse_equities_orderentry_seed_v0_1.fields.replace_bitfields = ProtoField.new("Replace Bitfields", "txse.equities.orderentry.seed.v0.1.replacebitfields", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "txse.equities.orderentry.seed.v0.1.requestedsequencenumber", ftypes.UINT64)
omi_txse_equities_orderentry_seed_v0_1.fields.reserved_10 = ProtoField.new("Reserved 10", "txse.equities.orderentry.seed.v0.1.reserved10", ftypes.UINT16, nil, base.DEC, 0xFFC0)
omi_txse_equities_orderentry_seed_v0_1.fields.reserved_12 = ProtoField.new("Reserved 12", "txse.equities.orderentry.seed.v0.1.reserved12", ftypes.UINT16, nil, base.DEC, 0xFFF0)
omi_txse_equities_orderentry_seed_v0_1.fields.reserved_17 = ProtoField.new("Reserved 17", "txse.equities.orderentry.seed.v0.1.reserved17", ftypes.UINT32, nil, base.DEC, 0xFFFF8000)
omi_txse_equities_orderentry_seed_v0_1.fields.reserved_19 = ProtoField.new("Reserved 19", "txse.equities.orderentry.seed.v0.1.reserved19", ftypes.UINT32, nil, base.DEC, 0xFFFFE000)
omi_txse_equities_orderentry_seed_v0_1.fields.reserved_2 = ProtoField.new("Reserved 2", "txse.equities.orderentry.seed.v0.1.reserved2", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_txse_equities_orderentry_seed_v0_1.fields.reserved_26 = ProtoField.new("Reserved 26", "txse.equities.orderentry.seed.v0.1.reserved26", ftypes.UINT32, nil, base.DEC, 0xFFFFFFC0)
omi_txse_equities_orderentry_seed_v0_1.fields.reserved_4 = ProtoField.new("Reserved 4", "txse.equities.orderentry.seed.v0.1.reserved4", ftypes.UINT8, nil, base.DEC, 0xF0)
omi_txse_equities_orderentry_seed_v0_1.fields.reserved_5 = ProtoField.new("Reserved 5", "txse.equities.orderentry.seed.v0.1.reserved5", ftypes.UINT16, nil, base.DEC, 0xF800)
omi_txse_equities_orderentry_seed_v0_1.fields.reserved_6 = ProtoField.new("Reserved 6", "txse.equities.orderentry.seed.v0.1.reserved6", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_txse_equities_orderentry_seed_v0_1.fields.reserved_7 = ProtoField.new("Reserved 7", "txse.equities.orderentry.seed.v0.1.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_txse_equities_orderentry_seed_v0_1.fields.restatement_reason = ProtoField.new("Restatement Reason", "txse.equities.orderentry.seed.v0.1.restatementreason", ftypes.INT8)
omi_txse_equities_orderentry_seed_v0_1.fields.self_match_instruction = ProtoField.new("Self Match Instruction", "txse.equities.orderentry.seed.v0.1.selfmatchinstruction", ftypes.INT8)
omi_txse_equities_orderentry_seed_v0_1.fields.self_match_scope = ProtoField.new("Self Match Scope", "txse.equities.orderentry.seed.v0.1.selfmatchscope", ftypes.INT8)
omi_txse_equities_orderentry_seed_v0_1.fields.sender_comp = ProtoField.new("Sender Comp", "txse.equities.orderentry.seed.v0.1.sendercomp", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.sequenced_message = ProtoField.new("Sequenced Message", "txse.equities.orderentry.seed.v0.1.sequencedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "txse.equities.orderentry.seed.v0.1.sequencedmessagetype", ftypes.UINT8)
omi_txse_equities_orderentry_seed_v0_1.fields.session = ProtoField.new("Session", "txse.equities.orderentry.seed.v0.1.session", ftypes.UINT64)
omi_txse_equities_orderentry_seed_v0_1.fields.short_sale_restriction_state = ProtoField.new("Short Sale Restriction State", "txse.equities.orderentry.seed.v0.1.shortsalerestrictionstate", ftypes.INT8)
omi_txse_equities_orderentry_seed_v0_1.fields.side = ProtoField.new("Side", "txse.equities.orderentry.seed.v0.1.side", ftypes.UINT32, nil, base.DEC, 0x00000007)
omi_txse_equities_orderentry_seed_v0_1.fields.stream_id = ProtoField.new("Stream Id", "txse.equities.orderentry.seed.v0.1.streamid", ftypes.UINT8)
omi_txse_equities_orderentry_seed_v0_1.fields.suffix = ProtoField.new("Suffix", "txse.equities.orderentry.seed.v0.1.suffix", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.symbol = ProtoField.new("Symbol", "txse.equities.orderentry.seed.v0.1.symbol", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.symbol_id = ProtoField.new("Symbol Id", "txse.equities.orderentry.seed.v0.1.symbolid", ftypes.INT16)
omi_txse_equities_orderentry_seed_v0_1.fields.tcp_sequenced_message = ProtoField.new("Tcp Sequenced Message", "txse.equities.orderentry.seed.v0.1.tcpsequencedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.tcp_unsequenced_message = ProtoField.new("Tcp Unsequenced Message", "txse.equities.orderentry.seed.v0.1.tcpunsequencedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.text = ProtoField.new("Text", "txse.equities.orderentry.seed.v0.1.text", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.time_in_force = ProtoField.new("Time In Force", "txse.equities.orderentry.seed.v0.1.timeinforce", ftypes.UINT32, nil, base.DEC, 0x000000F0)
omi_txse_equities_orderentry_seed_v0_1.fields.trading_state = ProtoField.new("Trading State", "txse.equities.orderentry.seed.v0.1.tradingstate", ftypes.INT8)
omi_txse_equities_orderentry_seed_v0_1.fields.transact_time = ProtoField.new("Transact Time", "txse.equities.orderentry.seed.v0.1.transacttime", ftypes.INT64)
omi_txse_equities_orderentry_seed_v0_1.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "txse.equities.orderentry.seed.v0.1.unsequencedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "txse.equities.orderentry.seed.v0.1.unsequencedmessagetype", ftypes.UINT8)
omi_txse_equities_orderentry_seed_v0_1.fields.user_data = ProtoField.new("User Data", "txse.equities.orderentry.seed.v0.1.userdata", ftypes.INT64)

-- Txse Equities OrderEntry Seed 0.1 messages
omi_txse_equities_orderentry_seed_v0_1.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "txse.equities.orderentry.seed.v0.1.cancelordermessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.cancel_rejected_message = ProtoField.new("Cancel Rejected Message", "txse.equities.orderentry.seed.v0.1.cancelrejectedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.define_symbol_message = ProtoField.new("Define Symbol Message", "txse.equities.orderentry.seed.v0.1.definesymbolmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.limit_order_accepted_message = ProtoField.new("Limit Order Accepted Message", "txse.equities.orderentry.seed.v0.1.limitorderacceptedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.limit_order_accepted_presence_bits = ProtoField.new("Limit Order Accepted Presence Bits", "txse.equities.orderentry.seed.v0.1.limitorderacceptedpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.limit_order_message = ProtoField.new("Limit Order Message", "txse.equities.orderentry.seed.v0.1.limitordermessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.limit_order_presence_bits = ProtoField.new("Limit Order Presence Bits", "txse.equities.orderentry.seed.v0.1.limitorderpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.limit_order_rejected_message = ProtoField.new("Limit Order Rejected Message", "txse.equities.orderentry.seed.v0.1.limitorderrejectedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.limit_order_rejected_presence_bits = ProtoField.new("Limit Order Rejected Presence Bits", "txse.equities.orderentry.seed.v0.1.limitorderrejectedpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.market_order_accepted_message = ProtoField.new("Market Order Accepted Message", "txse.equities.orderentry.seed.v0.1.marketorderacceptedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.market_order_accepted_presence_bits = ProtoField.new("Market Order Accepted Presence Bits", "txse.equities.orderentry.seed.v0.1.marketorderacceptedpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.market_order_message = ProtoField.new("Market Order Message", "txse.equities.orderentry.seed.v0.1.marketordermessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.market_order_presence_bits = ProtoField.new("Market Order Presence Bits", "txse.equities.orderentry.seed.v0.1.marketorderpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.market_order_rejected_message = ProtoField.new("Market Order Rejected Message", "txse.equities.orderentry.seed.v0.1.marketorderrejectedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.market_order_rejected_presence_bits = ProtoField.new("Market Order Rejected Presence Bits", "txse.equities.orderentry.seed.v0.1.marketorderrejectedpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_accepted_message = ProtoField.new("Mass Cancel Accepted Message", "txse.equities.orderentry.seed.v0.1.masscancelacceptedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_accepted_presence_bits = ProtoField.new("Mass Cancel Accepted Presence Bits", "txse.equities.orderentry.seed.v0.1.masscancelacceptedpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_message = ProtoField.new("Mass Cancel Message", "txse.equities.orderentry.seed.v0.1.masscancelmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_presence_bits = ProtoField.new("Mass Cancel Presence Bits", "txse.equities.orderentry.seed.v0.1.masscancelpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_rejected_message = ProtoField.new("Mass Cancel Rejected Message", "txse.equities.orderentry.seed.v0.1.masscancelrejectedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_rejected_presence_bits = ProtoField.new("Mass Cancel Rejected Presence Bits", "txse.equities.orderentry.seed.v0.1.masscancelrejectedpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_result_message = ProtoField.new("Mass Cancel Result Message", "txse.equities.orderentry.seed.v0.1.masscancelresultmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_result_presence_bits = ProtoField.new("Mass Cancel Result Presence Bits", "txse.equities.orderentry.seed.v0.1.masscancelresultpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.modify_rejected_message = ProtoField.new("Modify Rejected Message", "txse.equities.orderentry.seed.v0.1.modifyrejectedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.modify_rejected_presence_bits = ProtoField.new("Modify Rejected Presence Bits", "txse.equities.orderentry.seed.v0.1.modifyrejectedpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.order_canceled_message = ProtoField.new("Order Canceled Message", "txse.equities.orderentry.seed.v0.1.ordercanceledmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.order_executed_message = ProtoField.new("Order Executed Message", "txse.equities.orderentry.seed.v0.1.orderexecutedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.order_modified_message = ProtoField.new("Order Modified Message", "txse.equities.orderentry.seed.v0.1.ordermodifiedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.order_modified_presence_bits = ProtoField.new("Order Modified Presence Bits", "txse.equities.orderentry.seed.v0.1.ordermodifiedpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "txse.equities.orderentry.seed.v0.1.orderreplacedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.order_replaced_presence_bits = ProtoField.new("Order Replaced Presence Bits", "txse.equities.orderentry.seed.v0.1.orderreplacedpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.order_restated_message = ProtoField.new("Order Restated Message", "txse.equities.orderentry.seed.v0.1.orderrestatedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.order_restated_presence_bits = ProtoField.new("Order Restated Presence Bits", "txse.equities.orderentry.seed.v0.1.orderrestatedpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.replace_order_message = ProtoField.new("Replace Order Message", "txse.equities.orderentry.seed.v0.1.replaceordermessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.replace_order_presence_bits = ProtoField.new("Replace Order Presence Bits", "txse.equities.orderentry.seed.v0.1.replaceorderpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.replace_rejected_message = ProtoField.new("Replace Rejected Message", "txse.equities.orderentry.seed.v0.1.replacerejectedmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.replace_rejected_presence_bits = ProtoField.new("Replace Rejected Presence Bits", "txse.equities.orderentry.seed.v0.1.replacerejectedpresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "txse.equities.orderentry.seed.v0.1.symbolstatusmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.symbol_status_presence_bits = ProtoField.new("Symbol Status Presence Bits", "txse.equities.orderentry.seed.v0.1.symbolstatuspresencebits", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "txse.equities.orderentry.seed.v0.1.tradingsessionstatusmessage", ftypes.STRING)
omi_txse_equities_orderentry_seed_v0_1.fields.trading_session_status_presence_bits = ProtoField.new("Trading Session Status Presence Bits", "txse.equities.orderentry.seed.v0.1.tradingsessionstatuspresencebits", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Txse Equities OrderEntry Seed 0.1 Element Dissection Options
show.cancel_order_message = true
show.cancel_rejected_message = true
show.debug_message = true
show.define_symbol_bitfields = true
show.define_symbol_message = true
show.limit_order_accepted_message = true
show.limit_order_accepted_presence_bits = true
show.limit_order_bit_fields = true
show.limit_order_message = true
show.limit_order_presence_bits = true
show.limit_order_rejected_message = true
show.limit_order_rejected_presence_bits = true
show.logon_request_packet = true
show.logon_response_message = true
show.market_order_accepted_message = true
show.market_order_accepted_presence_bits = true
show.market_order_bit_fields = true
show.market_order_message = true
show.market_order_presence_bits = true
show.market_order_rejected_message = true
show.market_order_rejected_presence_bits = true
show.mass_cancel_accepted_message = true
show.mass_cancel_accepted_presence_bits = true
show.mass_cancel_message = true
show.mass_cancel_presence_bits = true
show.mass_cancel_rejected_message = true
show.mass_cancel_rejected_presence_bits = true
show.mass_cancel_result_message = true
show.mass_cancel_result_presence_bits = true
show.modify_bitfields = true
show.modify_rejected_message = true
show.modify_rejected_presence_bits = true
show.order_canceled_message = true
show.order_executed_message = true
show.order_modified_message = true
show.order_modified_presence_bits = true
show.order_replaced_message = true
show.order_replaced_presence_bits = true
show.order_restated_message = true
show.order_restated_presence_bits = true
show.packet = true
show.rake_message_header = true
show.rake_tcp_message = true
show.replace_bitfields = true
show.replace_order_message = true
show.replace_order_presence_bits = true
show.replace_rejected_message = true
show.replace_rejected_presence_bits = true
show.symbol_status_message = true
show.symbol_status_presence_bits = true
show.tcp_sequenced_message = true
show.tcp_unsequenced_message = true
show.trading_session_status_message = true
show.trading_session_status_presence_bits = true
show.payload = false
show.sequenced_message = false
show.unsequenced_message = false

-- Register Txse Equities OrderEntry Seed 0.1 Show Options
omi_txse_equities_orderentry_seed_v0_1.prefs.show_cancel_order_message = Pref.bool("Show Cancel Order Message", show.cancel_order_message, "Parse and add Cancel Order Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_cancel_rejected_message = Pref.bool("Show Cancel Rejected Message", show.cancel_rejected_message, "Parse and add Cancel Rejected Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_debug_message = Pref.bool("Show Debug Message", show.debug_message, "Parse and add Debug Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_define_symbol_bitfields = Pref.bool("Show Define Symbol Bitfields", show.define_symbol_bitfields, "Parse and add Define Symbol Bitfields to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_define_symbol_message = Pref.bool("Show Define Symbol Message", show.define_symbol_message, "Parse and add Define Symbol Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_accepted_message = Pref.bool("Show Limit Order Accepted Message", show.limit_order_accepted_message, "Parse and add Limit Order Accepted Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_accepted_presence_bits = Pref.bool("Show Limit Order Accepted Presence Bits", show.limit_order_accepted_presence_bits, "Parse and add Limit Order Accepted Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_bit_fields = Pref.bool("Show Limit Order Bit Fields", show.limit_order_bit_fields, "Parse and add Limit Order Bit Fields to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_message = Pref.bool("Show Limit Order Message", show.limit_order_message, "Parse and add Limit Order Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_presence_bits = Pref.bool("Show Limit Order Presence Bits", show.limit_order_presence_bits, "Parse and add Limit Order Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_rejected_message = Pref.bool("Show Limit Order Rejected Message", show.limit_order_rejected_message, "Parse and add Limit Order Rejected Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_rejected_presence_bits = Pref.bool("Show Limit Order Rejected Presence Bits", show.limit_order_rejected_presence_bits, "Parse and add Limit Order Rejected Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_logon_request_packet = Pref.bool("Show Logon Request Packet", show.logon_request_packet, "Parse and add Logon Request Packet to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_logon_response_message = Pref.bool("Show Logon Response Message", show.logon_response_message, "Parse and add Logon Response Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_accepted_message = Pref.bool("Show Market Order Accepted Message", show.market_order_accepted_message, "Parse and add Market Order Accepted Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_accepted_presence_bits = Pref.bool("Show Market Order Accepted Presence Bits", show.market_order_accepted_presence_bits, "Parse and add Market Order Accepted Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_bit_fields = Pref.bool("Show Market Order Bit Fields", show.market_order_bit_fields, "Parse and add Market Order Bit Fields to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_message = Pref.bool("Show Market Order Message", show.market_order_message, "Parse and add Market Order Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_presence_bits = Pref.bool("Show Market Order Presence Bits", show.market_order_presence_bits, "Parse and add Market Order Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_rejected_message = Pref.bool("Show Market Order Rejected Message", show.market_order_rejected_message, "Parse and add Market Order Rejected Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_rejected_presence_bits = Pref.bool("Show Market Order Rejected Presence Bits", show.market_order_rejected_presence_bits, "Parse and add Market Order Rejected Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_accepted_message = Pref.bool("Show Mass Cancel Accepted Message", show.mass_cancel_accepted_message, "Parse and add Mass Cancel Accepted Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_accepted_presence_bits = Pref.bool("Show Mass Cancel Accepted Presence Bits", show.mass_cancel_accepted_presence_bits, "Parse and add Mass Cancel Accepted Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_message = Pref.bool("Show Mass Cancel Message", show.mass_cancel_message, "Parse and add Mass Cancel Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_presence_bits = Pref.bool("Show Mass Cancel Presence Bits", show.mass_cancel_presence_bits, "Parse and add Mass Cancel Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_rejected_message = Pref.bool("Show Mass Cancel Rejected Message", show.mass_cancel_rejected_message, "Parse and add Mass Cancel Rejected Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_rejected_presence_bits = Pref.bool("Show Mass Cancel Rejected Presence Bits", show.mass_cancel_rejected_presence_bits, "Parse and add Mass Cancel Rejected Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_result_message = Pref.bool("Show Mass Cancel Result Message", show.mass_cancel_result_message, "Parse and add Mass Cancel Result Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_result_presence_bits = Pref.bool("Show Mass Cancel Result Presence Bits", show.mass_cancel_result_presence_bits, "Parse and add Mass Cancel Result Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_modify_bitfields = Pref.bool("Show Modify Bitfields", show.modify_bitfields, "Parse and add Modify Bitfields to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_modify_rejected_message = Pref.bool("Show Modify Rejected Message", show.modify_rejected_message, "Parse and add Modify Rejected Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_modify_rejected_presence_bits = Pref.bool("Show Modify Rejected Presence Bits", show.modify_rejected_presence_bits, "Parse and add Modify Rejected Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_canceled_message = Pref.bool("Show Order Canceled Message", show.order_canceled_message, "Parse and add Order Canceled Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_modified_message = Pref.bool("Show Order Modified Message", show.order_modified_message, "Parse and add Order Modified Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_modified_presence_bits = Pref.bool("Show Order Modified Presence Bits", show.order_modified_presence_bits, "Parse and add Order Modified Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_replaced_message = Pref.bool("Show Order Replaced Message", show.order_replaced_message, "Parse and add Order Replaced Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_replaced_presence_bits = Pref.bool("Show Order Replaced Presence Bits", show.order_replaced_presence_bits, "Parse and add Order Replaced Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_restated_message = Pref.bool("Show Order Restated Message", show.order_restated_message, "Parse and add Order Restated Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_restated_presence_bits = Pref.bool("Show Order Restated Presence Bits", show.order_restated_presence_bits, "Parse and add Order Restated Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_rake_message_header = Pref.bool("Show Rake Message Header", show.rake_message_header, "Parse and add Rake Message Header to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_rake_tcp_message = Pref.bool("Show Rake Tcp Message", show.rake_tcp_message, "Parse and add Rake Tcp Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_replace_bitfields = Pref.bool("Show Replace Bitfields", show.replace_bitfields, "Parse and add Replace Bitfields to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_replace_order_message = Pref.bool("Show Replace Order Message", show.replace_order_message, "Parse and add Replace Order Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_replace_order_presence_bits = Pref.bool("Show Replace Order Presence Bits", show.replace_order_presence_bits, "Parse and add Replace Order Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_replace_rejected_message = Pref.bool("Show Replace Rejected Message", show.replace_rejected_message, "Parse and add Replace Rejected Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_replace_rejected_presence_bits = Pref.bool("Show Replace Rejected Presence Bits", show.replace_rejected_presence_bits, "Parse and add Replace Rejected Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_symbol_status_message = Pref.bool("Show Symbol Status Message", show.symbol_status_message, "Parse and add Symbol Status Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_symbol_status_presence_bits = Pref.bool("Show Symbol Status Presence Bits", show.symbol_status_presence_bits, "Parse and add Symbol Status Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_tcp_sequenced_message = Pref.bool("Show Tcp Sequenced Message", show.tcp_sequenced_message, "Parse and add Tcp Sequenced Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_tcp_unsequenced_message = Pref.bool("Show Tcp Unsequenced Message", show.tcp_unsequenced_message, "Parse and add Tcp Unsequenced Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_trading_session_status_message = Pref.bool("Show Trading Session Status Message", show.trading_session_status_message, "Parse and add Trading Session Status Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_trading_session_status_presence_bits = Pref.bool("Show Trading Session Status Presence Bits", show.trading_session_status_presence_bits, "Parse and add Trading Session Status Presence Bits to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_txse_equities_orderentry_seed_v0_1.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")

-- Handle changed preferences
function omi_txse_equities_orderentry_seed_v0_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.cancel_order_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_cancel_order_message then
    show.cancel_order_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_cancel_order_message
    changed = true
  end
  if show.cancel_rejected_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_cancel_rejected_message then
    show.cancel_rejected_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_cancel_rejected_message
    changed = true
  end
  if show.debug_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_debug_message then
    show.debug_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_debug_message
    changed = true
  end
  if show.define_symbol_bitfields ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_define_symbol_bitfields then
    show.define_symbol_bitfields = omi_txse_equities_orderentry_seed_v0_1.prefs.show_define_symbol_bitfields
    changed = true
  end
  if show.define_symbol_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_define_symbol_message then
    show.define_symbol_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_define_symbol_message
    changed = true
  end
  if show.limit_order_accepted_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_accepted_message then
    show.limit_order_accepted_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_accepted_message
    changed = true
  end
  if show.limit_order_accepted_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_accepted_presence_bits then
    show.limit_order_accepted_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_accepted_presence_bits
    changed = true
  end
  if show.limit_order_bit_fields ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_bit_fields then
    show.limit_order_bit_fields = omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_bit_fields
    changed = true
  end
  if show.limit_order_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_message then
    show.limit_order_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_message
    changed = true
  end
  if show.limit_order_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_presence_bits then
    show.limit_order_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_presence_bits
    changed = true
  end
  if show.limit_order_rejected_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_rejected_message then
    show.limit_order_rejected_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_rejected_message
    changed = true
  end
  if show.limit_order_rejected_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_rejected_presence_bits then
    show.limit_order_rejected_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_limit_order_rejected_presence_bits
    changed = true
  end
  if show.logon_request_packet ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_logon_request_packet then
    show.logon_request_packet = omi_txse_equities_orderentry_seed_v0_1.prefs.show_logon_request_packet
    changed = true
  end
  if show.logon_response_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_logon_response_message then
    show.logon_response_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_logon_response_message
    changed = true
  end
  if show.market_order_accepted_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_accepted_message then
    show.market_order_accepted_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_accepted_message
    changed = true
  end
  if show.market_order_accepted_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_accepted_presence_bits then
    show.market_order_accepted_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_accepted_presence_bits
    changed = true
  end
  if show.market_order_bit_fields ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_bit_fields then
    show.market_order_bit_fields = omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_bit_fields
    changed = true
  end
  if show.market_order_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_message then
    show.market_order_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_message
    changed = true
  end
  if show.market_order_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_presence_bits then
    show.market_order_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_presence_bits
    changed = true
  end
  if show.market_order_rejected_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_rejected_message then
    show.market_order_rejected_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_rejected_message
    changed = true
  end
  if show.market_order_rejected_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_rejected_presence_bits then
    show.market_order_rejected_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_market_order_rejected_presence_bits
    changed = true
  end
  if show.mass_cancel_accepted_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_accepted_message then
    show.mass_cancel_accepted_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_accepted_message
    changed = true
  end
  if show.mass_cancel_accepted_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_accepted_presence_bits then
    show.mass_cancel_accepted_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_accepted_presence_bits
    changed = true
  end
  if show.mass_cancel_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_message then
    show.mass_cancel_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_message
    changed = true
  end
  if show.mass_cancel_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_presence_bits then
    show.mass_cancel_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_presence_bits
    changed = true
  end
  if show.mass_cancel_rejected_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_rejected_message then
    show.mass_cancel_rejected_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_rejected_message
    changed = true
  end
  if show.mass_cancel_rejected_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_rejected_presence_bits then
    show.mass_cancel_rejected_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_rejected_presence_bits
    changed = true
  end
  if show.mass_cancel_result_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_result_message then
    show.mass_cancel_result_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_result_message
    changed = true
  end
  if show.mass_cancel_result_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_result_presence_bits then
    show.mass_cancel_result_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_mass_cancel_result_presence_bits
    changed = true
  end
  if show.modify_bitfields ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_modify_bitfields then
    show.modify_bitfields = omi_txse_equities_orderentry_seed_v0_1.prefs.show_modify_bitfields
    changed = true
  end
  if show.modify_rejected_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_modify_rejected_message then
    show.modify_rejected_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_modify_rejected_message
    changed = true
  end
  if show.modify_rejected_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_modify_rejected_presence_bits then
    show.modify_rejected_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_modify_rejected_presence_bits
    changed = true
  end
  if show.order_canceled_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_canceled_message then
    show.order_canceled_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_canceled_message
    changed = true
  end
  if show.order_executed_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_executed_message then
    show.order_executed_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_executed_message
    changed = true
  end
  if show.order_modified_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_modified_message then
    show.order_modified_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_modified_message
    changed = true
  end
  if show.order_modified_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_modified_presence_bits then
    show.order_modified_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_modified_presence_bits
    changed = true
  end
  if show.order_replaced_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_replaced_message then
    show.order_replaced_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_replaced_message
    changed = true
  end
  if show.order_replaced_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_replaced_presence_bits then
    show.order_replaced_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_replaced_presence_bits
    changed = true
  end
  if show.order_restated_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_restated_message then
    show.order_restated_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_restated_message
    changed = true
  end
  if show.order_restated_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_restated_presence_bits then
    show.order_restated_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_order_restated_presence_bits
    changed = true
  end
  if show.packet ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_packet then
    show.packet = omi_txse_equities_orderentry_seed_v0_1.prefs.show_packet
    changed = true
  end
  if show.rake_message_header ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_rake_message_header then
    show.rake_message_header = omi_txse_equities_orderentry_seed_v0_1.prefs.show_rake_message_header
    changed = true
  end
  if show.rake_tcp_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_rake_tcp_message then
    show.rake_tcp_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_rake_tcp_message
    changed = true
  end
  if show.replace_bitfields ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_replace_bitfields then
    show.replace_bitfields = omi_txse_equities_orderentry_seed_v0_1.prefs.show_replace_bitfields
    changed = true
  end
  if show.replace_order_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_replace_order_message then
    show.replace_order_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_replace_order_message
    changed = true
  end
  if show.replace_order_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_replace_order_presence_bits then
    show.replace_order_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_replace_order_presence_bits
    changed = true
  end
  if show.replace_rejected_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_replace_rejected_message then
    show.replace_rejected_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_replace_rejected_message
    changed = true
  end
  if show.replace_rejected_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_replace_rejected_presence_bits then
    show.replace_rejected_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_replace_rejected_presence_bits
    changed = true
  end
  if show.symbol_status_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_symbol_status_message then
    show.symbol_status_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_symbol_status_message
    changed = true
  end
  if show.symbol_status_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_symbol_status_presence_bits then
    show.symbol_status_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_symbol_status_presence_bits
    changed = true
  end
  if show.tcp_sequenced_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_tcp_sequenced_message then
    show.tcp_sequenced_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_tcp_sequenced_message
    changed = true
  end
  if show.tcp_unsequenced_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_tcp_unsequenced_message then
    show.tcp_unsequenced_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_tcp_unsequenced_message
    changed = true
  end
  if show.trading_session_status_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_trading_session_status_message then
    show.trading_session_status_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_trading_session_status_message
    changed = true
  end
  if show.trading_session_status_presence_bits ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_trading_session_status_presence_bits then
    show.trading_session_status_presence_bits = omi_txse_equities_orderentry_seed_v0_1.prefs.show_trading_session_status_presence_bits
    changed = true
  end
  if show.payload ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_payload then
    show.payload = omi_txse_equities_orderentry_seed_v0_1.prefs.show_payload
    changed = true
  end
  if show.sequenced_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_sequenced_message then
    show.sequenced_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_sequenced_message
    changed = true
  end
  if show.unsequenced_message ~= omi_txse_equities_orderentry_seed_v0_1.prefs.show_unsequenced_message then
    show.unsequenced_message = omi_txse_equities_orderentry_seed_v0_1.prefs.show_unsequenced_message
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
-- Dissect Txse Equities OrderEntry Seed 0.1
-----------------------------------------------------------------------

-- Cl Ord Id
txse_equities_orderentry_seed_v0_1.cl_ord_id = {}

-- Size: Cl Ord Id
txse_equities_orderentry_seed_v0_1.cl_ord_id.size = 8

-- Display: Cl Ord Id
txse_equities_orderentry_seed_v0_1.cl_ord_id.display = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_equities_orderentry_seed_v0_1.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Member Group
txse_equities_orderentry_seed_v0_1.member_group = {}

-- Size: Member Group
txse_equities_orderentry_seed_v0_1.member_group.size = 2

-- Display: Member Group
txse_equities_orderentry_seed_v0_1.member_group.display = function(value)
  return "Member Group: "..value
end

-- Dissect: Member Group
txse_equities_orderentry_seed_v0_1.member_group.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.member_group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_equities_orderentry_seed_v0_1.member_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.member_group, range, value, display)

  return offset + length, value
end

-- Sender Comp
txse_equities_orderentry_seed_v0_1.sender_comp = {}

-- Size: Sender Comp
txse_equities_orderentry_seed_v0_1.sender_comp.size = 8

-- Display: Sender Comp
txse_equities_orderentry_seed_v0_1.sender_comp.display = function(value)
  return "Sender Comp: "..value
end

-- Dissect: Sender Comp
txse_equities_orderentry_seed_v0_1.sender_comp.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.sender_comp.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_equities_orderentry_seed_v0_1.sender_comp.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.sender_comp, range, value, display)

  return offset + length, value
end

-- Mpid
txse_equities_orderentry_seed_v0_1.mpid = {}

-- Size: Mpid
txse_equities_orderentry_seed_v0_1.mpid.size = 4

-- Display: Mpid
txse_equities_orderentry_seed_v0_1.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
txse_equities_orderentry_seed_v0_1.mpid.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_equities_orderentry_seed_v0_1.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.mpid, range, value, display)

  return offset + length, value
end

-- Canceled Count
txse_equities_orderentry_seed_v0_1.canceled_count = {}

-- Size: Canceled Count
txse_equities_orderentry_seed_v0_1.canceled_count.size = 4

-- Display: Canceled Count
txse_equities_orderentry_seed_v0_1.canceled_count.display = function(value)
  return "Canceled Count: "..value
end

-- Dissect: Canceled Count
txse_equities_orderentry_seed_v0_1.canceled_count.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.canceled_count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_equities_orderentry_seed_v0_1.canceled_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.canceled_count, range, value, display)

  return offset + length, value
end

-- Mass Cancel Id
txse_equities_orderentry_seed_v0_1.mass_cancel_id = {}

-- Size: Mass Cancel Id
txse_equities_orderentry_seed_v0_1.mass_cancel_id.size = 8

-- Display: Mass Cancel Id
txse_equities_orderentry_seed_v0_1.mass_cancel_id.display = function(value)
  return "Mass Cancel Id: "..value
end

-- Dissect: Mass Cancel Id
txse_equities_orderentry_seed_v0_1.mass_cancel_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.mass_cancel_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_equities_orderentry_seed_v0_1.mass_cancel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Request Id
txse_equities_orderentry_seed_v0_1.mass_cancel_request_id = {}

-- Size: Mass Cancel Request Id
txse_equities_orderentry_seed_v0_1.mass_cancel_request_id.size = 8

-- Display: Mass Cancel Request Id
txse_equities_orderentry_seed_v0_1.mass_cancel_request_id.display = function(value)
  return "Mass Cancel Request Id: "..value
end

-- Dissect: Mass Cancel Request Id
txse_equities_orderentry_seed_v0_1.mass_cancel_request_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.mass_cancel_request_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_equities_orderentry_seed_v0_1.mass_cancel_request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_request_id, range, value, display)

  return offset + length, value
end

-- Transact Time
txse_equities_orderentry_seed_v0_1.transact_time = {}

-- Size: Transact Time
txse_equities_orderentry_seed_v0_1.transact_time.size = 8

-- Display: Transact Time
txse_equities_orderentry_seed_v0_1.transact_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
txse_equities_orderentry_seed_v0_1.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_equities_orderentry_seed_v0_1.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Mass Cancel Result Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_result_presence_bits = {}

-- Size: Mass Cancel Result Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_result_presence_bits.size = 1

-- Display: Mass Cancel Result Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_result_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Mass Cancel Result Mpid flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Is Mass Cancel Result Mpid|"
  end
  -- Is Is Mass Cancel Result Sender Comp flag set?
  if bit.band(value, 0x02) ~= 0 then
    display = display.."Is Mass Cancel Result Sender Comp|"
  end
  -- Is Is Mass Cancel Result Member Group flag set?
  if bit.band(value, 0x04) ~= 0 then
    display = display.."Is Mass Cancel Result Member Group|"
  end
  -- Is Is Mass Cancel Result Cl Ord Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    display = display.."Is Mass Cancel Result Cl Ord Id|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Mass Cancel Result Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_result_presence_bits.bits = function(range, value, packet, parent)

  -- Is Mass Cancel Result Mpid: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_result_mpid, range, value)

  -- Is Mass Cancel Result Sender Comp: Str(8)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_result_sender_comp, range, value)

  -- Is Mass Cancel Result Member Group: Str(2)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_result_member_group, range, value)

  -- Is Mass Cancel Result Cl Ord Id: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_result_cl_ord_id, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_4, range, value)
end

-- Dissect: Mass Cancel Result Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_result_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.mass_cancel_result_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.mass_cancel_result_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_result_presence_bits, range, display)

  if show.mass_cancel_result_presence_bits then
    txse_equities_orderentry_seed_v0_1.mass_cancel_result_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mass Cancel Result Message
txse_equities_orderentry_seed_v0_1.mass_cancel_result_message = {}

-- Read runtime size of: Mass Cancel Result Message
txse_equities_orderentry_seed_v0_1.mass_cancel_result_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Mass Cancel Result Message
txse_equities_orderentry_seed_v0_1.mass_cancel_result_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Result Message
txse_equities_orderentry_seed_v0_1.mass_cancel_result_message.fields = function(buffer, offset, packet, parent, size_of_mass_cancel_result_message)
  local index = offset

  -- Mass Cancel Result Presence Bits: Struct of 5 fields
  index, mass_cancel_result_presence_bits = txse_equities_orderentry_seed_v0_1.mass_cancel_result_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Id: Long
  index, mass_cancel_request_id = txse_equities_orderentry_seed_v0_1.mass_cancel_request_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Long
  index, mass_cancel_id = txse_equities_orderentry_seed_v0_1.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Canceled Count: Int
  index, canceled_count = txse_equities_orderentry_seed_v0_1.canceled_count.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Mpid
  local mpid = nil

  local mpid_exists = bit.band(mass_cancel_result_presence_bits, 0x01) ~= 0

  if mpid_exists then
    index, mpid = txse_equities_orderentry_seed_v0_1.mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Sender Comp
  local sender_comp = nil

  local sender_comp_exists = bit.band(mass_cancel_result_presence_bits, 0x02) ~= 0

  if sender_comp_exists then
    index, sender_comp = txse_equities_orderentry_seed_v0_1.sender_comp.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Member Group
  local member_group = nil

  local member_group_exists = bit.band(mass_cancel_result_presence_bits, 0x04) ~= 0

  if member_group_exists then
    index, member_group = txse_equities_orderentry_seed_v0_1.member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cl Ord Id
  local cl_ord_id = nil

  local cl_ord_id_exists = bit.band(mass_cancel_result_presence_bits, 0x08) ~= 0

  if cl_ord_id_exists then
    index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mass Cancel Result Message
txse_equities_orderentry_seed_v0_1.mass_cancel_result_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_mass_cancel_result_message = txse_equities_orderentry_seed_v0_1.mass_cancel_result_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.mass_cancel_result_message then
    local range = buffer(offset, size_of_mass_cancel_result_message)
    local display = txse_equities_orderentry_seed_v0_1.mass_cancel_result_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_result_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.mass_cancel_result_message.fields(buffer, offset, packet, parent, size_of_mass_cancel_result_message)

  return offset + size_of_mass_cancel_result_message
end

-- Reject Reason
txse_equities_orderentry_seed_v0_1.reject_reason = {}

-- Size: Reject Reason
txse_equities_orderentry_seed_v0_1.reject_reason.size = 1

-- Display: Reject Reason
txse_equities_orderentry_seed_v0_1.reject_reason.display = function(value)
  if value == 1 then
    return "Reject Reason: Invalid Client Order Id (1)"
  end
  if value == 2 then
    return "Reject Reason: Duplicate Client Order Id (2)"
  end
  if value == 3 then
    return "Reject Reason: Unknown Original Client Order Id (3)"
  end
  if value == 4 then
    return "Reject Reason: No Longer On Book (4)"
  end
  if value == 5 then
    return "Reject Reason: Invalid Symbol (5)"
  end
  if value == 6 then
    return "Reject Reason: Invalid Price (6)"
  end
  if value == 7 then
    return "Reject Reason: Invalid Order Quantity (7)"
  end
  if value == 8 then
    return "Reject Reason: Invalid Reference Price Target (8)"
  end
  if value == 9 then
    return "Reject Reason: Invalid Is Hidden Flag (9)"
  end
  if value == 10 then
    return "Reject Reason: Invalid Order Type (10)"
  end
  if value == 11 then
    return "Reject Reason: Invalid Side (11)"
  end
  if value == 12 then
    return "Reject Reason: Invalid Max Floor Quantity (12)"
  end
  if value == 13 then
    return "Reject Reason: Invalid Max Replenish Quantity Range (13)"
  end
  if value == 14 then
    return "Reject Reason: Invalid Max Replenish Time Range (14)"
  end
  if value == 15 then
    return "Reject Reason: Invalid Minimum Quantity (15)"
  end
  if value == 16 then
    return "Reject Reason: Invalid Locate Required Flag (16)"
  end
  if value == 17 then
    return "Reject Reason: Invalid Time In Force (17)"
  end
  if value == 18 then
    return "Reject Reason: Unsupported Modification (18)"
  end
  if value == 19 then
    return "Reject Reason: Invalid Mpid (19)"
  end
  if value == 20 then
    return "Reject Reason: Invalid Sender Comp (20)"
  end

  return "Reject Reason: Unknown("..value..")"
end

-- Dissect: Reject Reason
txse_equities_orderentry_seed_v0_1.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.reject_reason.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = txse_equities_orderentry_seed_v0_1.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Mass Cancel Scope
txse_equities_orderentry_seed_v0_1.mass_cancel_scope = {}

-- Size: Mass Cancel Scope
txse_equities_orderentry_seed_v0_1.mass_cancel_scope.size = 1

-- Display: Mass Cancel Scope
txse_equities_orderentry_seed_v0_1.mass_cancel_scope.display = function(value)
  if value == 0 then
    return "Mass Cancel Scope: By Member Owned Sender Comps (0)"
  end
  if value == 1 then
    return "Mass Cancel Scope: By Member Owned Mpids (1)"
  end

  return "Mass Cancel Scope: Unknown("..value..")"
end

-- Dissect: Mass Cancel Scope
txse_equities_orderentry_seed_v0_1.mass_cancel_scope.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.mass_cancel_scope.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = txse_equities_orderentry_seed_v0_1.mass_cancel_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_scope, range, value, display)

  return offset + length, value
end

-- Mass Cancel Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_presence_bits = {}

-- Size: Mass Cancel Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_presence_bits.size = 1

-- Display: Mass Cancel Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Mass Cancel Rejected Mpid flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Is Mass Cancel Rejected Mpid|"
  end
  -- Is Is Mass Cancel Rejected Sender Comp flag set?
  if bit.band(value, 0x02) ~= 0 then
    display = display.."Is Mass Cancel Rejected Sender Comp|"
  end
  -- Is Is Mass Cancel Rejected Member Group flag set?
  if bit.band(value, 0x04) ~= 0 then
    display = display.."Is Mass Cancel Rejected Member Group|"
  end
  -- Is Is Mass Cancel Rejected Cl Ord Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    display = display.."Is Mass Cancel Rejected Cl Ord Id|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Mass Cancel Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_presence_bits.bits = function(range, value, packet, parent)

  -- Is Mass Cancel Rejected Mpid: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_rejected_mpid, range, value)

  -- Is Mass Cancel Rejected Sender Comp: Str(8)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_rejected_sender_comp, range, value)

  -- Is Mass Cancel Rejected Member Group: Str(2)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_rejected_member_group, range, value)

  -- Is Mass Cancel Rejected Cl Ord Id: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_rejected_cl_ord_id, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_4, range, value)
end

-- Dissect: Mass Cancel Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_rejected_presence_bits, range, display)

  if show.mass_cancel_rejected_presence_bits then
    txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mass Cancel Rejected Message
txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_message = {}

-- Read runtime size of: Mass Cancel Rejected Message
txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Mass Cancel Rejected Message
txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Rejected Message
txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_message.fields = function(buffer, offset, packet, parent, size_of_mass_cancel_rejected_message)
  local index = offset

  -- Mass Cancel Rejected Presence Bits: Struct of 5 fields
  index, mass_cancel_rejected_presence_bits = txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Id: Long
  index, mass_cancel_request_id = txse_equities_orderentry_seed_v0_1.mass_cancel_request_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Scope: Enum
  index, mass_cancel_scope = txse_equities_orderentry_seed_v0_1.mass_cancel_scope.dissect(buffer, index, packet, parent)

  -- Reject Reason: Enum
  index, reject_reason = txse_equities_orderentry_seed_v0_1.reject_reason.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Mpid
  local mpid = nil

  local mpid_exists = bit.band(mass_cancel_rejected_presence_bits, 0x01) ~= 0

  if mpid_exists then
    index, mpid = txse_equities_orderentry_seed_v0_1.mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Sender Comp
  local sender_comp = nil

  local sender_comp_exists = bit.band(mass_cancel_rejected_presence_bits, 0x02) ~= 0

  if sender_comp_exists then
    index, sender_comp = txse_equities_orderentry_seed_v0_1.sender_comp.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Member Group
  local member_group = nil

  local member_group_exists = bit.band(mass_cancel_rejected_presence_bits, 0x04) ~= 0

  if member_group_exists then
    index, member_group = txse_equities_orderentry_seed_v0_1.member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cl Ord Id
  local cl_ord_id = nil

  local cl_ord_id_exists = bit.band(mass_cancel_rejected_presence_bits, 0x08) ~= 0

  if cl_ord_id_exists then
    index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mass Cancel Rejected Message
txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_mass_cancel_rejected_message = txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.mass_cancel_rejected_message then
    local range = buffer(offset, size_of_mass_cancel_rejected_message)
    local display = txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_rejected_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_message.fields(buffer, offset, packet, parent, size_of_mass_cancel_rejected_message)

  return offset + size_of_mass_cancel_rejected_message
end

-- Mass Cancel Accepted Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_presence_bits = {}

-- Size: Mass Cancel Accepted Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_presence_bits.size = 1

-- Display: Mass Cancel Accepted Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Mass Cancel Accepted Mpid flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Is Mass Cancel Accepted Mpid|"
  end
  -- Is Is Mass Cancel Accepted Sender Comp flag set?
  if bit.band(value, 0x02) ~= 0 then
    display = display.."Is Mass Cancel Accepted Sender Comp|"
  end
  -- Is Is Mass Cancel Accepted Member Group flag set?
  if bit.band(value, 0x04) ~= 0 then
    display = display.."Is Mass Cancel Accepted Member Group|"
  end
  -- Is Is Mass Cancel Accepted Cl Ord Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    display = display.."Is Mass Cancel Accepted Cl Ord Id|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Mass Cancel Accepted Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_presence_bits.bits = function(range, value, packet, parent)

  -- Is Mass Cancel Accepted Mpid: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_accepted_mpid, range, value)

  -- Is Mass Cancel Accepted Sender Comp: Str(8)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_accepted_sender_comp, range, value)

  -- Is Mass Cancel Accepted Member Group: Str(2)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_accepted_member_group, range, value)

  -- Is Mass Cancel Accepted Cl Ord Id: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_accepted_cl_ord_id, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_4, range, value)
end

-- Dissect: Mass Cancel Accepted Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_accepted_presence_bits, range, display)

  if show.mass_cancel_accepted_presence_bits then
    txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mass Cancel Accepted Message
txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_message = {}

-- Read runtime size of: Mass Cancel Accepted Message
txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Mass Cancel Accepted Message
txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Accepted Message
txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_message.fields = function(buffer, offset, packet, parent, size_of_mass_cancel_accepted_message)
  local index = offset

  -- Mass Cancel Accepted Presence Bits: Struct of 5 fields
  index, mass_cancel_accepted_presence_bits = txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Id: Long
  index, mass_cancel_request_id = txse_equities_orderentry_seed_v0_1.mass_cancel_request_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Scope: Enum
  index, mass_cancel_scope = txse_equities_orderentry_seed_v0_1.mass_cancel_scope.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Long
  index, mass_cancel_id = txse_equities_orderentry_seed_v0_1.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Mpid
  local mpid = nil

  local mpid_exists = bit.band(mass_cancel_accepted_presence_bits, 0x01) ~= 0

  if mpid_exists then
    index, mpid = txse_equities_orderentry_seed_v0_1.mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Sender Comp
  local sender_comp = nil

  local sender_comp_exists = bit.band(mass_cancel_accepted_presence_bits, 0x02) ~= 0

  if sender_comp_exists then
    index, sender_comp = txse_equities_orderentry_seed_v0_1.sender_comp.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Member Group
  local member_group = nil

  local member_group_exists = bit.band(mass_cancel_accepted_presence_bits, 0x04) ~= 0

  if member_group_exists then
    index, member_group = txse_equities_orderentry_seed_v0_1.member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cl Ord Id
  local cl_ord_id = nil

  local cl_ord_id_exists = bit.band(mass_cancel_accepted_presence_bits, 0x08) ~= 0

  if cl_ord_id_exists then
    index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mass Cancel Accepted Message
txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_mass_cancel_accepted_message = txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.mass_cancel_accepted_message then
    local range = buffer(offset, size_of_mass_cancel_accepted_message)
    local display = txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_accepted_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_message.fields(buffer, offset, packet, parent, size_of_mass_cancel_accepted_message)

  return offset + size_of_mass_cancel_accepted_message
end

-- Order Qty
txse_equities_orderentry_seed_v0_1.order_qty = {}

-- Size: Order Qty
txse_equities_orderentry_seed_v0_1.order_qty.size = 4

-- Display: Order Qty
txse_equities_orderentry_seed_v0_1.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
txse_equities_orderentry_seed_v0_1.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_equities_orderentry_seed_v0_1.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Display Price
txse_equities_orderentry_seed_v0_1.display_price = {}

-- Size: Display Price
txse_equities_orderentry_seed_v0_1.display_price.size = 8

-- Display: Display Price
txse_equities_orderentry_seed_v0_1.display_price.display = function(value)
  return "Display Price: "..value
end

-- Dissect: Display Price
txse_equities_orderentry_seed_v0_1.display_price.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.display_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_equities_orderentry_seed_v0_1.display_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.display_price, range, value, display)

  return offset + length, value
end

-- Rank Price
txse_equities_orderentry_seed_v0_1.rank_price = {}

-- Size: Rank Price
txse_equities_orderentry_seed_v0_1.rank_price.size = 8

-- Display: Rank Price
txse_equities_orderentry_seed_v0_1.rank_price.display = function(value)
  return "Rank Price: "..value
end

-- Dissect: Rank Price
txse_equities_orderentry_seed_v0_1.rank_price.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.rank_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_equities_orderentry_seed_v0_1.rank_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.rank_price, range, value, display)

  return offset + length, value
end

-- Restatement Reason
txse_equities_orderentry_seed_v0_1.restatement_reason = {}

-- Size: Restatement Reason
txse_equities_orderentry_seed_v0_1.restatement_reason.size = 1

-- Display: Restatement Reason
txse_equities_orderentry_seed_v0_1.restatement_reason.display = function(value)
  if value == 1 then
    return "Restatement Reason: Reserve Replenished (1)"
  end
  if value == 2 then
    return "Restatement Reason: Repriced (2)"
  end

  return "Restatement Reason: Unknown("..value..")"
end

-- Dissect: Restatement Reason
txse_equities_orderentry_seed_v0_1.restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.restatement_reason.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = txse_equities_orderentry_seed_v0_1.restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.restatement_reason, range, value, display)

  return offset + length, value
end

-- Order Id
txse_equities_orderentry_seed_v0_1.order_id = {}

-- Size: Order Id
txse_equities_orderentry_seed_v0_1.order_id.size = 8

-- Display: Order Id
txse_equities_orderentry_seed_v0_1.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
txse_equities_orderentry_seed_v0_1.order_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_equities_orderentry_seed_v0_1.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Restated Presence Bits
txse_equities_orderentry_seed_v0_1.order_restated_presence_bits = {}

-- Size: Order Restated Presence Bits
txse_equities_orderentry_seed_v0_1.order_restated_presence_bits.size = 1

-- Display: Order Restated Presence Bits
txse_equities_orderentry_seed_v0_1.order_restated_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Order Restated Rank Price flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Is Order Restated Rank Price|"
  end
  -- Is Is Order Restated Display Price flag set?
  if bit.band(value, 0x02) ~= 0 then
    display = display.."Is Order Restated Display Price|"
  end
  -- Is Is Order Restated Order Qty flag set?
  if bit.band(value, 0x04) ~= 0 then
    display = display.."Is Order Restated Order Qty|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Order Restated Presence Bits
txse_equities_orderentry_seed_v0_1.order_restated_presence_bits.bits = function(range, value, packet, parent)

  -- Is Order Restated Rank Price: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_order_restated_rank_price, range, value)

  -- Is Order Restated Display Price: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_order_restated_display_price, range, value)

  -- Is Order Restated Order Qty: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_order_restated_order_qty, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_5, range, value)
end

-- Dissect: Order Restated Presence Bits
txse_equities_orderentry_seed_v0_1.order_restated_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.order_restated_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.order_restated_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.order_restated_presence_bits, range, display)

  if show.order_restated_presence_bits then
    txse_equities_orderentry_seed_v0_1.order_restated_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Restated Message
txse_equities_orderentry_seed_v0_1.order_restated_message = {}

-- Read runtime size of: Order Restated Message
txse_equities_orderentry_seed_v0_1.order_restated_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Order Restated Message
txse_equities_orderentry_seed_v0_1.order_restated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Message
txse_equities_orderentry_seed_v0_1.order_restated_message.fields = function(buffer, offset, packet, parent, size_of_order_restated_message)
  local index = offset

  -- Order Restated Presence Bits: Struct of 4 fields
  index, order_restated_presence_bits = txse_equities_orderentry_seed_v0_1.order_restated_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = txse_equities_orderentry_seed_v0_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Restatement Reason: Enum
  index, restatement_reason = txse_equities_orderentry_seed_v0_1.restatement_reason.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Rank Price
  local rank_price = nil

  local rank_price_exists = bit.band(order_restated_presence_bits, 0x01) ~= 0

  if rank_price_exists then
    index, rank_price = txse_equities_orderentry_seed_v0_1.rank_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Price
  local display_price = nil

  local display_price_exists = bit.band(order_restated_presence_bits, 0x02) ~= 0

  if display_price_exists then
    index, display_price = txse_equities_orderentry_seed_v0_1.display_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = bit.band(order_restated_presence_bits, 0x04) ~= 0

  if order_qty_exists then
    index, order_qty = txse_equities_orderentry_seed_v0_1.order_qty.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Restated Message
txse_equities_orderentry_seed_v0_1.order_restated_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_restated_message = txse_equities_orderentry_seed_v0_1.order_restated_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_restated_message then
    local range = buffer(offset, size_of_order_restated_message)
    local display = txse_equities_orderentry_seed_v0_1.order_restated_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.order_restated_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.order_restated_message.fields(buffer, offset, packet, parent, size_of_order_restated_message)

  return offset + size_of_order_restated_message
end

-- Leaves Qty
txse_equities_orderentry_seed_v0_1.leaves_qty = {}

-- Size: Leaves Qty
txse_equities_orderentry_seed_v0_1.leaves_qty.size = 4

-- Display: Leaves Qty
txse_equities_orderentry_seed_v0_1.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
txse_equities_orderentry_seed_v0_1.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_equities_orderentry_seed_v0_1.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Exec Qty
txse_equities_orderentry_seed_v0_1.exec_qty = {}

-- Size: Exec Qty
txse_equities_orderentry_seed_v0_1.exec_qty.size = 4

-- Display: Exec Qty
txse_equities_orderentry_seed_v0_1.exec_qty.display = function(value)
  return "Exec Qty: "..value
end

-- Dissect: Exec Qty
txse_equities_orderentry_seed_v0_1.exec_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.exec_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_equities_orderentry_seed_v0_1.exec_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.exec_qty, range, value, display)

  return offset + length, value
end

-- Exec Id
txse_equities_orderentry_seed_v0_1.exec_id = {}

-- Size: Exec Id
txse_equities_orderentry_seed_v0_1.exec_id.size = 8

-- Display: Exec Id
txse_equities_orderentry_seed_v0_1.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
txse_equities_orderentry_seed_v0_1.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_equities_orderentry_seed_v0_1.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Price
txse_equities_orderentry_seed_v0_1.price = {}

-- Size: Price
txse_equities_orderentry_seed_v0_1.price.size = 8

-- Display: Price
txse_equities_orderentry_seed_v0_1.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
txse_equities_orderentry_seed_v0_1.price.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_equities_orderentry_seed_v0_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.price, range, value, display)

  return offset + length, value
end

-- Order Executed Message
txse_equities_orderentry_seed_v0_1.order_executed_message = {}

-- Read runtime size of: Order Executed Message
txse_equities_orderentry_seed_v0_1.order_executed_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Order Executed Message
txse_equities_orderentry_seed_v0_1.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
txse_equities_orderentry_seed_v0_1.order_executed_message.fields = function(buffer, offset, packet, parent, size_of_order_executed_message)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = txse_equities_orderentry_seed_v0_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Price: Long
  index, price = txse_equities_orderentry_seed_v0_1.price.dissect(buffer, index, packet, parent)

  -- Exec Id: Long
  index, exec_id = txse_equities_orderentry_seed_v0_1.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Qty: Int
  index, exec_qty = txse_equities_orderentry_seed_v0_1.exec_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Int
  index, leaves_qty = txse_equities_orderentry_seed_v0_1.leaves_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
txse_equities_orderentry_seed_v0_1.order_executed_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_executed_message = txse_equities_orderentry_seed_v0_1.order_executed_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_executed_message then
    local range = buffer(offset, size_of_order_executed_message)
    local display = txse_equities_orderentry_seed_v0_1.order_executed_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.order_executed_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.order_executed_message.fields(buffer, offset, packet, parent, size_of_order_executed_message)

  return offset + size_of_order_executed_message
end

-- Locate Broker
txse_equities_orderentry_seed_v0_1.locate_broker = {}

-- Size: Locate Broker
txse_equities_orderentry_seed_v0_1.locate_broker.size = 4

-- Display: Locate Broker
txse_equities_orderentry_seed_v0_1.locate_broker.display = function(value)
  return "Locate Broker: "..value
end

-- Dissect: Locate Broker
txse_equities_orderentry_seed_v0_1.locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.locate_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_equities_orderentry_seed_v0_1.locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.locate_broker, range, value, display)

  return offset + length, value
end

-- Max Floor Qty
txse_equities_orderentry_seed_v0_1.max_floor_qty = {}

-- Size: Max Floor Qty
txse_equities_orderentry_seed_v0_1.max_floor_qty.size = 4

-- Display: Max Floor Qty
txse_equities_orderentry_seed_v0_1.max_floor_qty.display = function(value)
  return "Max Floor Qty: "..value
end

-- Dissect: Max Floor Qty
txse_equities_orderentry_seed_v0_1.max_floor_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.max_floor_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_equities_orderentry_seed_v0_1.max_floor_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.max_floor_qty, range, value, display)

  return offset + length, value
end

-- Replace Bitfields
txse_equities_orderentry_seed_v0_1.replace_bitfields = {}

-- Size: Replace Bitfields
txse_equities_orderentry_seed_v0_1.replace_bitfields.size = 1

-- Display: Replace Bitfields
txse_equities_orderentry_seed_v0_1.replace_bitfields.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x08) ~= 0 then
    display = display.."Is Locate Required|"
  end
  -- Is Is Iso flag set?
  if bit.band(value, 0x10) ~= 0 then
    display = display.."Is Iso|"
  end
  -- Is Cancel At Entry If Crossed flag set?
  if bit.band(value, 0x20) ~= 0 then
    display = display.."Cancel At Entry If Crossed|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Replace Bitfields
txse_equities_orderentry_seed_v0_1.replace_bitfields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_locate_required, range, value)

  -- Is Iso: 1 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_iso, range, value)

  -- Cancel At Entry If Crossed: 1 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.cancel_at_entry_if_crossed, range, value)

  -- Reserved 2: 2 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_2, range, value)
end

-- Dissect: Replace Bitfields
txse_equities_orderentry_seed_v0_1.replace_bitfields.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.replace_bitfields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.replace_bitfields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.replace_bitfields, range, display)

  if show.replace_bitfields then
    txse_equities_orderentry_seed_v0_1.replace_bitfields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Orig Cl Ord Id
txse_equities_orderentry_seed_v0_1.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
txse_equities_orderentry_seed_v0_1.orig_cl_ord_id.size = 8

-- Display: Orig Cl Ord Id
txse_equities_orderentry_seed_v0_1.orig_cl_ord_id.display = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
txse_equities_orderentry_seed_v0_1.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_equities_orderentry_seed_v0_1.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Replace Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.replace_rejected_presence_bits = {}

-- Size: Replace Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.replace_rejected_presence_bits.size = 2

-- Display: Replace Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.replace_rejected_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Replace Rejected Price flag set?
  if bit.band(value, 0x0001) ~= 0 then
    display = display.."Is Replace Rejected Price|"
  end
  -- Is Is Replace Rejected Order Qty flag set?
  if bit.band(value, 0x0002) ~= 0 then
    display = display.."Is Replace Rejected Order Qty|"
  end
  -- Is Is Replace Rejected Max Floor Qty flag set?
  if bit.band(value, 0x0004) ~= 0 then
    display = display.."Is Replace Rejected Max Floor Qty|"
  end
  -- Is Is Replace Rejected Locate Broker flag set?
  if bit.band(value, 0x0008) ~= 0 then
    display = display.."Is Replace Rejected Locate Broker|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Replace Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.replace_rejected_presence_bits.bits = function(range, value, packet, parent)

  -- Is Replace Rejected Price: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_rejected_price, range, value)

  -- Is Replace Rejected Order Qty: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_rejected_order_qty, range, value)

  -- Is Replace Rejected Max Floor Qty: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_rejected_max_floor_qty, range, value)

  -- Is Replace Rejected Locate Broker: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_rejected_locate_broker, range, value)

  -- Reserved 12: 12 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_12, range, value)
end

-- Dissect: Replace Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.replace_rejected_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.replace_rejected_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.replace_rejected_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.replace_rejected_presence_bits, range, display)

  if show.replace_rejected_presence_bits then
    txse_equities_orderentry_seed_v0_1.replace_rejected_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Replace Rejected Message
txse_equities_orderentry_seed_v0_1.replace_rejected_message = {}

-- Read runtime size of: Replace Rejected Message
txse_equities_orderentry_seed_v0_1.replace_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Replace Rejected Message
txse_equities_orderentry_seed_v0_1.replace_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Rejected Message
txse_equities_orderentry_seed_v0_1.replace_rejected_message.fields = function(buffer, offset, packet, parent, size_of_replace_rejected_message)
  local index = offset

  -- Replace Rejected Presence Bits: Struct of 5 fields
  index, replace_rejected_presence_bits = txse_equities_orderentry_seed_v0_1.replace_rejected_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_equities_orderentry_seed_v0_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Replace Bitfields: Struct of 5 fields
  index, replace_bitfields = txse_equities_orderentry_seed_v0_1.replace_bitfields.dissect(buffer, index, packet, parent)

  -- Reject Reason: Enum
  index, reject_reason = txse_equities_orderentry_seed_v0_1.reject_reason.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Price
  local price = nil

  local price_exists = bit.band(replace_rejected_presence_bits, 0x0001) ~= 0

  if price_exists then
    index, price = txse_equities_orderentry_seed_v0_1.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = bit.band(replace_rejected_presence_bits, 0x0002) ~= 0

  if order_qty_exists then
    index, order_qty = txse_equities_orderentry_seed_v0_1.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor Qty
  local max_floor_qty = nil

  local max_floor_qty_exists = bit.band(replace_rejected_presence_bits, 0x0004) ~= 0

  if max_floor_qty_exists then
    index, max_floor_qty = txse_equities_orderentry_seed_v0_1.max_floor_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = bit.band(replace_rejected_presence_bits, 0x0008) ~= 0

  if locate_broker_exists then
    index, locate_broker = txse_equities_orderentry_seed_v0_1.locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Replace Rejected Message
txse_equities_orderentry_seed_v0_1.replace_rejected_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_replace_rejected_message = txse_equities_orderentry_seed_v0_1.replace_rejected_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.replace_rejected_message then
    local range = buffer(offset, size_of_replace_rejected_message)
    local display = txse_equities_orderentry_seed_v0_1.replace_rejected_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.replace_rejected_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.replace_rejected_message.fields(buffer, offset, packet, parent, size_of_replace_rejected_message)

  return offset + size_of_replace_rejected_message
end

-- Order Replaced Presence Bits
txse_equities_orderentry_seed_v0_1.order_replaced_presence_bits = {}

-- Size: Order Replaced Presence Bits
txse_equities_orderentry_seed_v0_1.order_replaced_presence_bits.size = 2

-- Display: Order Replaced Presence Bits
txse_equities_orderentry_seed_v0_1.order_replaced_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Order Replaced Price flag set?
  if bit.band(value, 0x0001) ~= 0 then
    display = display.."Is Order Replaced Price|"
  end
  -- Is Is Order Replaced Order Qty flag set?
  if bit.band(value, 0x0002) ~= 0 then
    display = display.."Is Order Replaced Order Qty|"
  end
  -- Is Is Order Replaced Max Floor Qty flag set?
  if bit.band(value, 0x0004) ~= 0 then
    display = display.."Is Order Replaced Max Floor Qty|"
  end
  -- Is Is Order Replaced Locate Broker flag set?
  if bit.band(value, 0x0008) ~= 0 then
    display = display.."Is Order Replaced Locate Broker|"
  end
  -- Is Is Order Replaced Rank Price flag set?
  if bit.band(value, 0x0010) ~= 0 then
    display = display.."Is Order Replaced Rank Price|"
  end
  -- Is Is Order Replaced Display Price flag set?
  if bit.band(value, 0x0020) ~= 0 then
    display = display.."Is Order Replaced Display Price|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Order Replaced Presence Bits
txse_equities_orderentry_seed_v0_1.order_replaced_presence_bits.bits = function(range, value, packet, parent)

  -- Is Order Replaced Price: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_order_replaced_price, range, value)

  -- Is Order Replaced Order Qty: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_order_replaced_order_qty, range, value)

  -- Is Order Replaced Max Floor Qty: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_order_replaced_max_floor_qty, range, value)

  -- Is Order Replaced Locate Broker: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_order_replaced_locate_broker, range, value)

  -- Is Order Replaced Rank Price: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_order_replaced_rank_price, range, value)

  -- Is Order Replaced Display Price: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_order_replaced_display_price, range, value)

  -- Reserved 10: 10 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_10, range, value)
end

-- Dissect: Order Replaced Presence Bits
txse_equities_orderentry_seed_v0_1.order_replaced_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.order_replaced_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.order_replaced_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.order_replaced_presence_bits, range, display)

  if show.order_replaced_presence_bits then
    txse_equities_orderentry_seed_v0_1.order_replaced_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Replaced Message
txse_equities_orderentry_seed_v0_1.order_replaced_message = {}

-- Read runtime size of: Order Replaced Message
txse_equities_orderentry_seed_v0_1.order_replaced_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Order Replaced Message
txse_equities_orderentry_seed_v0_1.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
txse_equities_orderentry_seed_v0_1.order_replaced_message.fields = function(buffer, offset, packet, parent, size_of_order_replaced_message)
  local index = offset

  -- Order Replaced Presence Bits: Struct of 7 fields
  index, order_replaced_presence_bits = txse_equities_orderentry_seed_v0_1.order_replaced_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = txse_equities_orderentry_seed_v0_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_equities_orderentry_seed_v0_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Replace Bitfields: Struct of 5 fields
  index, replace_bitfields = txse_equities_orderentry_seed_v0_1.replace_bitfields.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Int
  index, leaves_qty = txse_equities_orderentry_seed_v0_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Price
  local price = nil

  local price_exists = bit.band(order_replaced_presence_bits, 0x0001) ~= 0

  if price_exists then
    index, price = txse_equities_orderentry_seed_v0_1.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = bit.band(order_replaced_presence_bits, 0x0002) ~= 0

  if order_qty_exists then
    index, order_qty = txse_equities_orderentry_seed_v0_1.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor Qty
  local max_floor_qty = nil

  local max_floor_qty_exists = bit.band(order_replaced_presence_bits, 0x0004) ~= 0

  if max_floor_qty_exists then
    index, max_floor_qty = txse_equities_orderentry_seed_v0_1.max_floor_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = bit.band(order_replaced_presence_bits, 0x0008) ~= 0

  if locate_broker_exists then
    index, locate_broker = txse_equities_orderentry_seed_v0_1.locate_broker.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Rank Price
  local rank_price = nil

  local rank_price_exists = bit.band(order_replaced_presence_bits, 0x0010) ~= 0

  if rank_price_exists then
    index, rank_price = txse_equities_orderentry_seed_v0_1.rank_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Price
  local display_price = nil

  local display_price_exists = bit.band(order_replaced_presence_bits, 0x0020) ~= 0

  if display_price_exists then
    index, display_price = txse_equities_orderentry_seed_v0_1.display_price.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Replaced Message
txse_equities_orderentry_seed_v0_1.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_replaced_message = txse_equities_orderentry_seed_v0_1.order_replaced_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_replaced_message then
    local range = buffer(offset, size_of_order_replaced_message)
    local display = txse_equities_orderentry_seed_v0_1.order_replaced_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.order_replaced_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.order_replaced_message.fields(buffer, offset, packet, parent, size_of_order_replaced_message)

  return offset + size_of_order_replaced_message
end

-- Modify Bitfields
txse_equities_orderentry_seed_v0_1.modify_bitfields = {}

-- Size: Modify Bitfields
txse_equities_orderentry_seed_v0_1.modify_bitfields.size = 1

-- Display: Modify Bitfields
txse_equities_orderentry_seed_v0_1.modify_bitfields.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x08) ~= 0 then
    display = display.."Is Locate Required|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Modify Bitfields
txse_equities_orderentry_seed_v0_1.modify_bitfields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_locate_required, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_4, range, value)
end

-- Dissect: Modify Bitfields
txse_equities_orderentry_seed_v0_1.modify_bitfields.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.modify_bitfields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.modify_bitfields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.modify_bitfields, range, display)

  if show.modify_bitfields then
    txse_equities_orderentry_seed_v0_1.modify_bitfields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.modify_rejected_presence_bits = {}

-- Size: Modify Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.modify_rejected_presence_bits.size = 1

-- Display: Modify Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.modify_rejected_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Modify Rejected Order Qty flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Is Modify Rejected Order Qty|"
  end
  -- Is Is Modify Rejected Modify Bitfields flag set?
  if bit.band(value, 0x02) ~= 0 then
    display = display.."Is Modify Rejected Modify Bitfields|"
  end
  -- Is Is Modify Rejected Locate Broker flag set?
  if bit.band(value, 0x04) ~= 0 then
    display = display.."Is Modify Rejected Locate Broker|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Modify Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.modify_rejected_presence_bits.bits = function(range, value, packet, parent)

  -- Is Modify Rejected Order Qty: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_modify_rejected_order_qty, range, value)

  -- Is Modify Rejected Modify Bitfields: bitfield
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_modify_rejected_modify_bitfields, range, value)

  -- Is Modify Rejected Locate Broker: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_modify_rejected_locate_broker, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_5, range, value)
end

-- Dissect: Modify Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.modify_rejected_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.modify_rejected_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.modify_rejected_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.modify_rejected_presence_bits, range, display)

  if show.modify_rejected_presence_bits then
    txse_equities_orderentry_seed_v0_1.modify_rejected_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Rejected Message
txse_equities_orderentry_seed_v0_1.modify_rejected_message = {}

-- Read runtime size of: Modify Rejected Message
txse_equities_orderentry_seed_v0_1.modify_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Modify Rejected Message
txse_equities_orderentry_seed_v0_1.modify_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Rejected Message
txse_equities_orderentry_seed_v0_1.modify_rejected_message.fields = function(buffer, offset, packet, parent, size_of_modify_rejected_message)
  local index = offset

  -- Modify Rejected Presence Bits: Struct of 4 fields
  index, modify_rejected_presence_bits = txse_equities_orderentry_seed_v0_1.modify_rejected_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_equities_orderentry_seed_v0_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Reject Reason: Enum
  index, reject_reason = txse_equities_orderentry_seed_v0_1.reject_reason.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = bit.band(modify_rejected_presence_bits, 0x01) ~= 0

  if order_qty_exists then
    index, order_qty = txse_equities_orderentry_seed_v0_1.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Modify Bitfields
  local modify_bitfields = nil

  local modify_bitfields_exists = bit.band(modify_rejected_presence_bits, 0x02) ~= 0

  if modify_bitfields_exists then

    -- Modify Bitfields: Struct of 3 fields
    index, modify_bitfields = txse_equities_orderentry_seed_v0_1.modify_bitfields.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = bit.band(modify_rejected_presence_bits, 0x04) ~= 0

  if locate_broker_exists then
    index, locate_broker = txse_equities_orderentry_seed_v0_1.locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Modify Rejected Message
txse_equities_orderentry_seed_v0_1.modify_rejected_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_modify_rejected_message = txse_equities_orderentry_seed_v0_1.modify_rejected_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.modify_rejected_message then
    local range = buffer(offset, size_of_modify_rejected_message)
    local display = txse_equities_orderentry_seed_v0_1.modify_rejected_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.modify_rejected_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.modify_rejected_message.fields(buffer, offset, packet, parent, size_of_modify_rejected_message)

  return offset + size_of_modify_rejected_message
end

-- Order Modified Presence Bits
txse_equities_orderentry_seed_v0_1.order_modified_presence_bits = {}

-- Size: Order Modified Presence Bits
txse_equities_orderentry_seed_v0_1.order_modified_presence_bits.size = 1

-- Display: Order Modified Presence Bits
txse_equities_orderentry_seed_v0_1.order_modified_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Order Modified Order Qty flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Is Order Modified Order Qty|"
  end
  -- Is Is Order Modified Modify Bitfields flag set?
  if bit.band(value, 0x02) ~= 0 then
    display = display.."Is Order Modified Modify Bitfields|"
  end
  -- Is Is Order Modified Locate Broker flag set?
  if bit.band(value, 0x04) ~= 0 then
    display = display.."Is Order Modified Locate Broker|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Order Modified Presence Bits
txse_equities_orderentry_seed_v0_1.order_modified_presence_bits.bits = function(range, value, packet, parent)

  -- Is Order Modified Order Qty: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_order_modified_order_qty, range, value)

  -- Is Order Modified Modify Bitfields: bitfield
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_order_modified_modify_bitfields, range, value)

  -- Is Order Modified Locate Broker: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_order_modified_locate_broker, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_5, range, value)
end

-- Dissect: Order Modified Presence Bits
txse_equities_orderentry_seed_v0_1.order_modified_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.order_modified_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.order_modified_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.order_modified_presence_bits, range, display)

  if show.order_modified_presence_bits then
    txse_equities_orderentry_seed_v0_1.order_modified_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Modified Message
txse_equities_orderentry_seed_v0_1.order_modified_message = {}

-- Read runtime size of: Order Modified Message
txse_equities_orderentry_seed_v0_1.order_modified_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Order Modified Message
txse_equities_orderentry_seed_v0_1.order_modified_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Message
txse_equities_orderentry_seed_v0_1.order_modified_message.fields = function(buffer, offset, packet, parent, size_of_order_modified_message)
  local index = offset

  -- Order Modified Presence Bits: Struct of 4 fields
  index, order_modified_presence_bits = txse_equities_orderentry_seed_v0_1.order_modified_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = txse_equities_orderentry_seed_v0_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_equities_orderentry_seed_v0_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Int
  index, leaves_qty = txse_equities_orderentry_seed_v0_1.leaves_qty.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = bit.band(order_modified_presence_bits, 0x01) ~= 0

  if order_qty_exists then
    index, order_qty = txse_equities_orderentry_seed_v0_1.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Modify Bitfields
  local modify_bitfields = nil

  local modify_bitfields_exists = bit.band(order_modified_presence_bits, 0x02) ~= 0

  if modify_bitfields_exists then

    -- Modify Bitfields: Struct of 3 fields
    index, modify_bitfields = txse_equities_orderentry_seed_v0_1.modify_bitfields.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = bit.band(order_modified_presence_bits, 0x04) ~= 0

  if locate_broker_exists then
    index, locate_broker = txse_equities_orderentry_seed_v0_1.locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Modified Message
txse_equities_orderentry_seed_v0_1.order_modified_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_modified_message = txse_equities_orderentry_seed_v0_1.order_modified_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_modified_message then
    local range = buffer(offset, size_of_order_modified_message)
    local display = txse_equities_orderentry_seed_v0_1.order_modified_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.order_modified_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.order_modified_message.fields(buffer, offset, packet, parent, size_of_order_modified_message)

  return offset + size_of_order_modified_message
end

-- Cancel Rejected Message
txse_equities_orderentry_seed_v0_1.cancel_rejected_message = {}

-- Read runtime size of: Cancel Rejected Message
txse_equities_orderentry_seed_v0_1.cancel_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Cancel Rejected Message
txse_equities_orderentry_seed_v0_1.cancel_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Rejected Message
txse_equities_orderentry_seed_v0_1.cancel_rejected_message.fields = function(buffer, offset, packet, parent, size_of_cancel_rejected_message)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_equities_orderentry_seed_v0_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Reject Reason: Enum
  index, reject_reason = txse_equities_orderentry_seed_v0_1.reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Rejected Message
txse_equities_orderentry_seed_v0_1.cancel_rejected_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_cancel_rejected_message = txse_equities_orderentry_seed_v0_1.cancel_rejected_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.cancel_rejected_message then
    local range = buffer(offset, size_of_cancel_rejected_message)
    local display = txse_equities_orderentry_seed_v0_1.cancel_rejected_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.cancel_rejected_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.cancel_rejected_message.fields(buffer, offset, packet, parent, size_of_cancel_rejected_message)

  return offset + size_of_cancel_rejected_message
end

-- Cancel Reason
txse_equities_orderentry_seed_v0_1.cancel_reason = {}

-- Size: Cancel Reason
txse_equities_orderentry_seed_v0_1.cancel_reason.size = 1

-- Display: Cancel Reason
txse_equities_orderentry_seed_v0_1.cancel_reason.display = function(value)
  if value == 1 then
    return "Cancel Reason: Requested By User (1)"
  end
  if value == 2 then
    return "Cancel Reason: Related To Time In Force (2)"
  end
  if value == 3 then
    return "Cancel Reason: Related To Min Qty (3)"
  end
  if value == 4 then
    return "Cancel Reason: Nms Violation No Slide (4)"
  end
  if value == 5 then
    return "Cancel Reason: Marketable Reserve (5)"
  end
  if value == 6 then
    return "Cancel Reason: Self Match Prevention (6)"
  end
  if value == 7 then
    return "Cancel Reason: Replenishment Canceled Due To Reserve (7)"
  end
  if value == 8 then
    return "Cancel Reason: Related To Order Type (8)"
  end
  if value == 9 then
    return "Cancel Reason: Canceled Due To Crossed Markets (9)"
  end
  if value == 10 then
    return "Cancel Reason: Canceled Due To Mass Cancel Request (10)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
txse_equities_orderentry_seed_v0_1.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = txse_equities_orderentry_seed_v0_1.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Order Canceled Message
txse_equities_orderentry_seed_v0_1.order_canceled_message = {}

-- Read runtime size of: Order Canceled Message
txse_equities_orderentry_seed_v0_1.order_canceled_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Order Canceled Message
txse_equities_orderentry_seed_v0_1.order_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Canceled Message
txse_equities_orderentry_seed_v0_1.order_canceled_message.fields = function(buffer, offset, packet, parent, size_of_order_canceled_message)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = txse_equities_orderentry_seed_v0_1.order_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_equities_orderentry_seed_v0_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Enum
  index, cancel_reason = txse_equities_orderentry_seed_v0_1.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Canceled Message
txse_equities_orderentry_seed_v0_1.order_canceled_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_canceled_message = txse_equities_orderentry_seed_v0_1.order_canceled_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_canceled_message then
    local range = buffer(offset, size_of_order_canceled_message)
    local display = txse_equities_orderentry_seed_v0_1.order_canceled_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.order_canceled_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.order_canceled_message.fields(buffer, offset, packet, parent, size_of_order_canceled_message)

  return offset + size_of_order_canceled_message
end

-- User Data
txse_equities_orderentry_seed_v0_1.user_data = {}

-- Size: User Data
txse_equities_orderentry_seed_v0_1.user_data.size = 8

-- Display: User Data
txse_equities_orderentry_seed_v0_1.user_data.display = function(value)
  return "User Data: "..value
end

-- Dissect: User Data
txse_equities_orderentry_seed_v0_1.user_data.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.user_data.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_equities_orderentry_seed_v0_1.user_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.user_data, range, value, display)

  return offset + length, value
end

-- Self Match Instruction
txse_equities_orderentry_seed_v0_1.self_match_instruction = {}

-- Size: Self Match Instruction
txse_equities_orderentry_seed_v0_1.self_match_instruction.size = 1

-- Display: Self Match Instruction
txse_equities_orderentry_seed_v0_1.self_match_instruction.display = function(value)
  if value == 0 then
    return "Self Match Instruction: No Self Match Prevention (0)"
  end
  if value == 1 then
    return "Self Match Instruction: Cancel Newest (1)"
  end
  if value == 2 then
    return "Self Match Instruction: Cancel Oldest (2)"
  end
  if value == 3 then
    return "Self Match Instruction: Cancel Both (3)"
  end
  if value == 4 then
    return "Self Match Instruction: Cancel Smallest (4)"
  end
  if value == 5 then
    return "Self Match Instruction: Decrement And Cancel (5)"
  end

  return "Self Match Instruction: Unknown("..value..")"
end

-- Dissect: Self Match Instruction
txse_equities_orderentry_seed_v0_1.self_match_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.self_match_instruction.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = txse_equities_orderentry_seed_v0_1.self_match_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.self_match_instruction, range, value, display)

  return offset + length, value
end

-- Self Match Scope
txse_equities_orderentry_seed_v0_1.self_match_scope = {}

-- Size: Self Match Scope
txse_equities_orderentry_seed_v0_1.self_match_scope.size = 1

-- Display: Self Match Scope
txse_equities_orderentry_seed_v0_1.self_match_scope.display = function(value)
  if value == 0 then
    return "Self Match Scope: By Member (0)"
  end
  if value == 1 then
    return "Self Match Scope: By Mpid (1)"
  end
  if value == 2 then
    return "Self Match Scope: By Member Group (2)"
  end
  if value == 3 then
    return "Self Match Scope: By Mpid And Member Group (3)"
  end

  return "Self Match Scope: Unknown("..value..")"
end

-- Dissect: Self Match Scope
txse_equities_orderentry_seed_v0_1.self_match_scope.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.self_match_scope.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = txse_equities_orderentry_seed_v0_1.self_match_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.self_match_scope, range, value, display)

  return offset + length, value
end

-- Symbol Id
txse_equities_orderentry_seed_v0_1.symbol_id = {}

-- Size: Symbol Id
txse_equities_orderentry_seed_v0_1.symbol_id.size = 2

-- Display: Symbol Id
txse_equities_orderentry_seed_v0_1.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
txse_equities_orderentry_seed_v0_1.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_equities_orderentry_seed_v0_1.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Market Order Bit Fields
txse_equities_orderentry_seed_v0_1.market_order_bit_fields = {}

-- Size: Market Order Bit Fields
txse_equities_orderentry_seed_v0_1.market_order_bit_fields.size = 2

-- Display: Market Order Bit Fields
txse_equities_orderentry_seed_v0_1.market_order_bit_fields.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x0008) ~= 0 then
    display = display.."Is Locate Required|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Market Order Bit Fields
txse_equities_orderentry_seed_v0_1.market_order_bit_fields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_locate_required, range, value)

  -- Time In Force: 4 Bit Enum with 5 values
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.time_in_force, range, value)

  -- Order Capacity: 3 Bit Enum with 3 values
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.order_capacity, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_5, range, value)
end

-- Dissect: Market Order Bit Fields
txse_equities_orderentry_seed_v0_1.market_order_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.market_order_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.market_order_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.market_order_bit_fields, range, display)

  if show.market_order_bit_fields then
    txse_equities_orderentry_seed_v0_1.market_order_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Market Order Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.market_order_rejected_presence_bits = {}

-- Size: Market Order Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.market_order_rejected_presence_bits.size = 4

-- Display: Market Order Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.market_order_rejected_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Market Order Rejected Self Match Scope flag set?
  if bit.band(value, 0x00000001) ~= 0 then
    display = display.."Is Market Order Rejected Self Match Scope|"
  end
  -- Is Is Market Order Rejected Self Match Instruction flag set?
  if bit.band(value, 0x00000002) ~= 0 then
    display = display.."Is Market Order Rejected Self Match Instruction|"
  end
  -- Is Is Market Order Rejected User Data flag set?
  if bit.band(value, 0x00000004) ~= 0 then
    display = display.."Is Market Order Rejected User Data|"
  end
  -- Is Is Market Order Rejected Mpid flag set?
  if bit.band(value, 0x00000008) ~= 0 then
    display = display.."Is Market Order Rejected Mpid|"
  end
  -- Is Is Market Order Rejected Member Group flag set?
  if bit.band(value, 0x00000010) ~= 0 then
    display = display.."Is Market Order Rejected Member Group|"
  end
  -- Is Is Market Order Rejected Locate Broker flag set?
  if bit.band(value, 0x00000020) ~= 0 then
    display = display.."Is Market Order Rejected Locate Broker|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Market Order Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.market_order_rejected_presence_bits.bits = function(range, value, packet, parent)

  -- Is Market Order Rejected Self Match Scope: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_rejected_self_match_scope, range, value)

  -- Is Market Order Rejected Self Match Instruction: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_rejected_self_match_instruction, range, value)

  -- Is Market Order Rejected User Data: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_rejected_user_data, range, value)

  -- Is Market Order Rejected Mpid: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_rejected_mpid, range, value)

  -- Is Market Order Rejected Member Group: Str(2)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_rejected_member_group, range, value)

  -- Is Market Order Rejected Locate Broker: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_rejected_locate_broker, range, value)

  -- Reserved 26: 26 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_26, range, value)
end

-- Dissect: Market Order Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.market_order_rejected_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.market_order_rejected_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.market_order_rejected_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.market_order_rejected_presence_bits, range, display)

  if show.market_order_rejected_presence_bits then
    txse_equities_orderentry_seed_v0_1.market_order_rejected_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Market Order Rejected Message
txse_equities_orderentry_seed_v0_1.market_order_rejected_message = {}

-- Read runtime size of: Market Order Rejected Message
txse_equities_orderentry_seed_v0_1.market_order_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Market Order Rejected Message
txse_equities_orderentry_seed_v0_1.market_order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Order Rejected Message
txse_equities_orderentry_seed_v0_1.market_order_rejected_message.fields = function(buffer, offset, packet, parent, size_of_market_order_rejected_message)
  local index = offset

  -- Market Order Rejected Presence Bits: Struct of 7 fields
  index, market_order_rejected_presence_bits = txse_equities_orderentry_seed_v0_1.market_order_rejected_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Int
  index, order_qty = txse_equities_orderentry_seed_v0_1.order_qty.dissect(buffer, index, packet, parent)

  -- Market Order Bit Fields: Struct of 5 fields
  index, market_order_bit_fields = txse_equities_orderentry_seed_v0_1.market_order_bit_fields.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_equities_orderentry_seed_v0_1.symbol_id.dissect(buffer, index, packet, parent)

  -- Reject Reason: Enum
  index, reject_reason = txse_equities_orderentry_seed_v0_1.reject_reason.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Self Match Scope
  local self_match_scope = nil

  local self_match_scope_exists = bit.band(market_order_rejected_presence_bits, 0x00000001) ~= 0

  if self_match_scope_exists then
    index, self_match_scope = txse_equities_orderentry_seed_v0_1.self_match_scope.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Self Match Instruction
  local self_match_instruction = nil

  local self_match_instruction_exists = bit.band(market_order_rejected_presence_bits, 0x00000002) ~= 0

  if self_match_instruction_exists then
    index, self_match_instruction = txse_equities_orderentry_seed_v0_1.self_match_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: User Data
  local user_data = nil

  local user_data_exists = bit.band(market_order_rejected_presence_bits, 0x00000004) ~= 0

  if user_data_exists then
    index, user_data = txse_equities_orderentry_seed_v0_1.user_data.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mpid
  local mpid = nil

  local mpid_exists = bit.band(market_order_rejected_presence_bits, 0x00000008) ~= 0

  if mpid_exists then
    index, mpid = txse_equities_orderentry_seed_v0_1.mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Member Group
  local member_group = nil

  local member_group_exists = bit.band(market_order_rejected_presence_bits, 0x00000010) ~= 0

  if member_group_exists then
    index, member_group = txse_equities_orderentry_seed_v0_1.member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = bit.band(market_order_rejected_presence_bits, 0x00000020) ~= 0

  if locate_broker_exists then
    index, locate_broker = txse_equities_orderentry_seed_v0_1.locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Market Order Rejected Message
txse_equities_orderentry_seed_v0_1.market_order_rejected_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_order_rejected_message = txse_equities_orderentry_seed_v0_1.market_order_rejected_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_order_rejected_message then
    local range = buffer(offset, size_of_market_order_rejected_message)
    local display = txse_equities_orderentry_seed_v0_1.market_order_rejected_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.market_order_rejected_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.market_order_rejected_message.fields(buffer, offset, packet, parent, size_of_market_order_rejected_message)

  return offset + size_of_market_order_rejected_message
end

-- Market Order Accepted Presence Bits
txse_equities_orderentry_seed_v0_1.market_order_accepted_presence_bits = {}

-- Size: Market Order Accepted Presence Bits
txse_equities_orderentry_seed_v0_1.market_order_accepted_presence_bits.size = 4

-- Display: Market Order Accepted Presence Bits
txse_equities_orderentry_seed_v0_1.market_order_accepted_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Market Order Accepted Self Match Scope flag set?
  if bit.band(value, 0x00000001) ~= 0 then
    display = display.."Is Market Order Accepted Self Match Scope|"
  end
  -- Is Is Market Order Accepted Self Match Instruction flag set?
  if bit.band(value, 0x00000002) ~= 0 then
    display = display.."Is Market Order Accepted Self Match Instruction|"
  end
  -- Is Is Market Order Accepted User Data flag set?
  if bit.band(value, 0x00000004) ~= 0 then
    display = display.."Is Market Order Accepted User Data|"
  end
  -- Is Is Market Order Accepted Mpid flag set?
  if bit.band(value, 0x00000008) ~= 0 then
    display = display.."Is Market Order Accepted Mpid|"
  end
  -- Is Is Market Order Accepted Member Group flag set?
  if bit.band(value, 0x00000010) ~= 0 then
    display = display.."Is Market Order Accepted Member Group|"
  end
  -- Is Is Market Order Accepted Locate Broker flag set?
  if bit.band(value, 0x00000020) ~= 0 then
    display = display.."Is Market Order Accepted Locate Broker|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Market Order Accepted Presence Bits
txse_equities_orderentry_seed_v0_1.market_order_accepted_presence_bits.bits = function(range, value, packet, parent)

  -- Is Market Order Accepted Self Match Scope: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_accepted_self_match_scope, range, value)

  -- Is Market Order Accepted Self Match Instruction: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_accepted_self_match_instruction, range, value)

  -- Is Market Order Accepted User Data: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_accepted_user_data, range, value)

  -- Is Market Order Accepted Mpid: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_accepted_mpid, range, value)

  -- Is Market Order Accepted Member Group: Str(2)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_accepted_member_group, range, value)

  -- Is Market Order Accepted Locate Broker: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_accepted_locate_broker, range, value)

  -- Reserved 26: 26 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_26, range, value)
end

-- Dissect: Market Order Accepted Presence Bits
txse_equities_orderentry_seed_v0_1.market_order_accepted_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.market_order_accepted_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.market_order_accepted_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.market_order_accepted_presence_bits, range, display)

  if show.market_order_accepted_presence_bits then
    txse_equities_orderentry_seed_v0_1.market_order_accepted_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Market Order Accepted Message
txse_equities_orderentry_seed_v0_1.market_order_accepted_message = {}

-- Read runtime size of: Market Order Accepted Message
txse_equities_orderentry_seed_v0_1.market_order_accepted_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Market Order Accepted Message
txse_equities_orderentry_seed_v0_1.market_order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Order Accepted Message
txse_equities_orderentry_seed_v0_1.market_order_accepted_message.fields = function(buffer, offset, packet, parent, size_of_market_order_accepted_message)
  local index = offset

  -- Market Order Accepted Presence Bits: Struct of 7 fields
  index, market_order_accepted_presence_bits = txse_equities_orderentry_seed_v0_1.market_order_accepted_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = txse_equities_orderentry_seed_v0_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Int
  index, order_qty = txse_equities_orderentry_seed_v0_1.order_qty.dissect(buffer, index, packet, parent)

  -- Market Order Bit Fields: Struct of 5 fields
  index, market_order_bit_fields = txse_equities_orderentry_seed_v0_1.market_order_bit_fields.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_equities_orderentry_seed_v0_1.symbol_id.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Self Match Scope
  local self_match_scope = nil

  local self_match_scope_exists = bit.band(market_order_accepted_presence_bits, 0x00000001) ~= 0

  if self_match_scope_exists then
    index, self_match_scope = txse_equities_orderentry_seed_v0_1.self_match_scope.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Self Match Instruction
  local self_match_instruction = nil

  local self_match_instruction_exists = bit.band(market_order_accepted_presence_bits, 0x00000002) ~= 0

  if self_match_instruction_exists then
    index, self_match_instruction = txse_equities_orderentry_seed_v0_1.self_match_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: User Data
  local user_data = nil

  local user_data_exists = bit.band(market_order_accepted_presence_bits, 0x00000004) ~= 0

  if user_data_exists then
    index, user_data = txse_equities_orderentry_seed_v0_1.user_data.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mpid
  local mpid = nil

  local mpid_exists = bit.band(market_order_accepted_presence_bits, 0x00000008) ~= 0

  if mpid_exists then
    index, mpid = txse_equities_orderentry_seed_v0_1.mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Member Group
  local member_group = nil

  local member_group_exists = bit.band(market_order_accepted_presence_bits, 0x00000010) ~= 0

  if member_group_exists then
    index, member_group = txse_equities_orderentry_seed_v0_1.member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = bit.band(market_order_accepted_presence_bits, 0x00000020) ~= 0

  if locate_broker_exists then
    index, locate_broker = txse_equities_orderentry_seed_v0_1.locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Market Order Accepted Message
txse_equities_orderentry_seed_v0_1.market_order_accepted_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_order_accepted_message = txse_equities_orderentry_seed_v0_1.market_order_accepted_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_order_accepted_message then
    local range = buffer(offset, size_of_market_order_accepted_message)
    local display = txse_equities_orderentry_seed_v0_1.market_order_accepted_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.market_order_accepted_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.market_order_accepted_message.fields(buffer, offset, packet, parent, size_of_market_order_accepted_message)

  return offset + size_of_market_order_accepted_message
end

-- Expire Time
txse_equities_orderentry_seed_v0_1.expire_time = {}

-- Size: Expire Time
txse_equities_orderentry_seed_v0_1.expire_time.size = 8

-- Display: Expire Time
txse_equities_orderentry_seed_v0_1.expire_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Expire Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Expire Time
txse_equities_orderentry_seed_v0_1.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.expire_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_equities_orderentry_seed_v0_1.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Reference Price Target
txse_equities_orderentry_seed_v0_1.reference_price_target = {}

-- Size: Reference Price Target
txse_equities_orderentry_seed_v0_1.reference_price_target.size = 2

-- Display: Reference Price Target
txse_equities_orderentry_seed_v0_1.reference_price_target.display = function(value)
  return "Reference Price Target: "..value
end

-- Dissect: Reference Price Target
txse_equities_orderentry_seed_v0_1.reference_price_target.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.reference_price_target.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_equities_orderentry_seed_v0_1.reference_price_target.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reference_price_target, range, value, display)

  return offset + length, value
end

-- Max Replenish Time Range
txse_equities_orderentry_seed_v0_1.max_replenish_time_range = {}

-- Size: Max Replenish Time Range
txse_equities_orderentry_seed_v0_1.max_replenish_time_range.size = 8

-- Display: Max Replenish Time Range
txse_equities_orderentry_seed_v0_1.max_replenish_time_range.display = function(value)
  return "Max Replenish Time Range: "..value
end

-- Dissect: Max Replenish Time Range
txse_equities_orderentry_seed_v0_1.max_replenish_time_range.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.max_replenish_time_range.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_equities_orderentry_seed_v0_1.max_replenish_time_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.max_replenish_time_range, range, value, display)

  return offset + length, value
end

-- Max Replenish Qty Range
txse_equities_orderentry_seed_v0_1.max_replenish_qty_range = {}

-- Size: Max Replenish Qty Range
txse_equities_orderentry_seed_v0_1.max_replenish_qty_range.size = 4

-- Display: Max Replenish Qty Range
txse_equities_orderentry_seed_v0_1.max_replenish_qty_range.display = function(value)
  return "Max Replenish Qty Range: "..value
end

-- Dissect: Max Replenish Qty Range
txse_equities_orderentry_seed_v0_1.max_replenish_qty_range.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.max_replenish_qty_range.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_equities_orderentry_seed_v0_1.max_replenish_qty_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.max_replenish_qty_range, range, value, display)

  return offset + length, value
end

-- Min Qty
txse_equities_orderentry_seed_v0_1.min_qty = {}

-- Size: Min Qty
txse_equities_orderentry_seed_v0_1.min_qty.size = 4

-- Display: Min Qty
txse_equities_orderentry_seed_v0_1.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
txse_equities_orderentry_seed_v0_1.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_equities_orderentry_seed_v0_1.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Price Slide Instruction
txse_equities_orderentry_seed_v0_1.price_slide_instruction = {}

-- Size: Price Slide Instruction
txse_equities_orderentry_seed_v0_1.price_slide_instruction.size = 1

-- Display: Price Slide Instruction
txse_equities_orderentry_seed_v0_1.price_slide_instruction.display = function(value)
  if value == 0 then
    return "Price Slide Instruction: No Price Slide (0)"
  end
  if value == 1 then
    return "Price Slide Instruction: Single Price Slide On Lock And Cross (1)"
  end
  if value == 2 then
    return "Price Slide Instruction: Multiple Price Slides On Lock And Cross (2)"
  end
  if value == 3 then
    return "Price Slide Instruction: Single Price Slide Lock Only (3)"
  end

  return "Price Slide Instruction: Unknown("..value..")"
end

-- Dissect: Price Slide Instruction
txse_equities_orderentry_seed_v0_1.price_slide_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.price_slide_instruction.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = txse_equities_orderentry_seed_v0_1.price_slide_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.price_slide_instruction, range, value, display)

  return offset + length, value
end

-- Limit Order Bit Fields
txse_equities_orderentry_seed_v0_1.limit_order_bit_fields = {}

-- Size: Limit Order Bit Fields
txse_equities_orderentry_seed_v0_1.limit_order_bit_fields.size = 4

-- Display: Limit Order Bit Fields
txse_equities_orderentry_seed_v0_1.limit_order_bit_fields.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x00000008) ~= 0 then
    display = display.."Is Locate Required|"
  end
  -- Is Is Iso flag set?
  if bit.band(value, 0x00000800) ~= 0 then
    display = display.."Is Iso|"
  end
  -- Is Is Hidden flag set?
  if bit.band(value, 0x00001000) ~= 0 then
    display = display.."Is Hidden|"
  end
  -- Is Is Post Only flag set?
  if bit.band(value, 0x00002000) ~= 0 then
    display = display.."Is Post Only|"
  end
  -- Is Cancel At Entry If Crossed flag set?
  if bit.band(value, 0x00004000) ~= 0 then
    display = display.."Cancel At Entry If Crossed|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Limit Order Bit Fields
txse_equities_orderentry_seed_v0_1.limit_order_bit_fields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_locate_required, range, value)

  -- Time In Force: 4 Bit Enum with 5 values
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.time_in_force, range, value)

  -- Order Capacity: 3 Bit Enum with 3 values
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.order_capacity, range, value)

  -- Is Iso: 1 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_iso, range, value)

  -- Is Hidden: 1 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_hidden, range, value)

  -- Is Post Only: 1 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_post_only, range, value)

  -- Cancel At Entry If Crossed: 1 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.cancel_at_entry_if_crossed, range, value)

  -- Reserved 17: 17 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_17, range, value)
end

-- Dissect: Limit Order Bit Fields
txse_equities_orderentry_seed_v0_1.limit_order_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.limit_order_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.limit_order_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.limit_order_bit_fields, range, display)

  if show.limit_order_bit_fields then
    txse_equities_orderentry_seed_v0_1.limit_order_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Limit Order Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.limit_order_rejected_presence_bits = {}

-- Size: Limit Order Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.limit_order_rejected_presence_bits.size = 4

-- Display: Limit Order Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.limit_order_rejected_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Limit Order Rejected Self Match Scope flag set?
  if bit.band(value, 0x00000001) ~= 0 then
    display = display.."Is Limit Order Rejected Self Match Scope|"
  end
  -- Is Is Limit Order Rejected Self Match Instruction flag set?
  if bit.band(value, 0x00000002) ~= 0 then
    display = display.."Is Limit Order Rejected Self Match Instruction|"
  end
  -- Is Is Limit Order Rejected Price Slide Instruction flag set?
  if bit.band(value, 0x00000004) ~= 0 then
    display = display.."Is Limit Order Rejected Price Slide Instruction|"
  end
  -- Is Is Limit Order Rejected Min Qty flag set?
  if bit.band(value, 0x00000008) ~= 0 then
    display = display.."Is Limit Order Rejected Min Qty|"
  end
  -- Is Is Limit Order Rejected Max Floor Qty flag set?
  if bit.band(value, 0x00000010) ~= 0 then
    display = display.."Is Limit Order Rejected Max Floor Qty|"
  end
  -- Is Is Limit Order Rejected Max Replenish Qty Range flag set?
  if bit.band(value, 0x00000020) ~= 0 then
    display = display.."Is Limit Order Rejected Max Replenish Qty Range|"
  end
  -- Is Is Limit Order Rejected Max Replenish Time Range flag set?
  if bit.band(value, 0x00000040) ~= 0 then
    display = display.."Is Limit Order Rejected Max Replenish Time Range|"
  end
  -- Is Is Limit Order Rejected Reference Price Target flag set?
  if bit.band(value, 0x00000080) ~= 0 then
    display = display.."Is Limit Order Rejected Reference Price Target|"
  end
  -- Is Is Limit Order Rejected Expire Time flag set?
  if bit.band(value, 0x00000100) ~= 0 then
    display = display.."Is Limit Order Rejected Expire Time|"
  end
  -- Is Is Limit Order Rejected User Data flag set?
  if bit.band(value, 0x00000200) ~= 0 then
    display = display.."Is Limit Order Rejected User Data|"
  end
  -- Is Is Limit Order Rejected Mpid flag set?
  if bit.band(value, 0x00000400) ~= 0 then
    display = display.."Is Limit Order Rejected Mpid|"
  end
  -- Is Is Limit Order Rejected Member Group flag set?
  if bit.band(value, 0x00000800) ~= 0 then
    display = display.."Is Limit Order Rejected Member Group|"
  end
  -- Is Is Limit Order Rejected Locate Broker flag set?
  if bit.band(value, 0x00001000) ~= 0 then
    display = display.."Is Limit Order Rejected Locate Broker|"
  end
  -- Is Is Limit Order Rejected Rank Price flag set?
  if bit.band(value, 0x00002000) ~= 0 then
    display = display.."Is Limit Order Rejected Rank Price|"
  end
  -- Is Is Limit Order Rejected Display Price flag set?
  if bit.band(value, 0x00004000) ~= 0 then
    display = display.."Is Limit Order Rejected Display Price|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Limit Order Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.limit_order_rejected_presence_bits.bits = function(range, value, packet, parent)

  -- Is Limit Order Rejected Self Match Scope: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_self_match_scope, range, value)

  -- Is Limit Order Rejected Self Match Instruction: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_self_match_instruction, range, value)

  -- Is Limit Order Rejected Price Slide Instruction: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_price_slide_instruction, range, value)

  -- Is Limit Order Rejected Min Qty: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_min_qty, range, value)

  -- Is Limit Order Rejected Max Floor Qty: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_max_floor_qty, range, value)

  -- Is Limit Order Rejected Max Replenish Qty Range: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_max_replenish_qty_range, range, value)

  -- Is Limit Order Rejected Max Replenish Time Range: Duration
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_max_replenish_time_range, range, value)

  -- Is Limit Order Rejected Reference Price Target: Short
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_reference_price_target, range, value)

  -- Is Limit Order Rejected Expire Time: TimeStamp
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_expire_time, range, value)

  -- Is Limit Order Rejected User Data: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_user_data, range, value)

  -- Is Limit Order Rejected Mpid: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_mpid, range, value)

  -- Is Limit Order Rejected Member Group: Str(2)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_member_group, range, value)

  -- Is Limit Order Rejected Locate Broker: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_locate_broker, range, value)

  -- Is Limit Order Rejected Rank Price: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_rank_price, range, value)

  -- Is Limit Order Rejected Display Price: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_rejected_display_price, range, value)

  -- Reserved 17: 17 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_17, range, value)
end

-- Dissect: Limit Order Rejected Presence Bits
txse_equities_orderentry_seed_v0_1.limit_order_rejected_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.limit_order_rejected_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.limit_order_rejected_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.limit_order_rejected_presence_bits, range, display)

  if show.limit_order_rejected_presence_bits then
    txse_equities_orderentry_seed_v0_1.limit_order_rejected_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Limit Order Rejected Message
txse_equities_orderentry_seed_v0_1.limit_order_rejected_message = {}

-- Read runtime size of: Limit Order Rejected Message
txse_equities_orderentry_seed_v0_1.limit_order_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Limit Order Rejected Message
txse_equities_orderentry_seed_v0_1.limit_order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Order Rejected Message
txse_equities_orderentry_seed_v0_1.limit_order_rejected_message.fields = function(buffer, offset, packet, parent, size_of_limit_order_rejected_message)
  local index = offset

  -- Limit Order Rejected Presence Bits: Struct of 16 fields
  index, limit_order_rejected_presence_bits = txse_equities_orderentry_seed_v0_1.limit_order_rejected_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Int
  index, order_qty = txse_equities_orderentry_seed_v0_1.order_qty.dissect(buffer, index, packet, parent)

  -- Limit Order Bit Fields: Struct of 9 fields
  index, limit_order_bit_fields = txse_equities_orderentry_seed_v0_1.limit_order_bit_fields.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_equities_orderentry_seed_v0_1.symbol_id.dissect(buffer, index, packet, parent)

  -- Price: Long
  index, price = txse_equities_orderentry_seed_v0_1.price.dissect(buffer, index, packet, parent)

  -- Reject Reason: Enum
  index, reject_reason = txse_equities_orderentry_seed_v0_1.reject_reason.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Self Match Scope
  local self_match_scope = nil

  local self_match_scope_exists = bit.band(limit_order_rejected_presence_bits, 0x00000001) ~= 0

  if self_match_scope_exists then
    index, self_match_scope = txse_equities_orderentry_seed_v0_1.self_match_scope.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Self Match Instruction
  local self_match_instruction = nil

  local self_match_instruction_exists = bit.band(limit_order_rejected_presence_bits, 0x00000002) ~= 0

  if self_match_instruction_exists then
    index, self_match_instruction = txse_equities_orderentry_seed_v0_1.self_match_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price Slide Instruction
  local price_slide_instruction = nil

  local price_slide_instruction_exists = bit.band(limit_order_rejected_presence_bits, 0x00000004) ~= 0

  if price_slide_instruction_exists then
    index, price_slide_instruction = txse_equities_orderentry_seed_v0_1.price_slide_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = bit.band(limit_order_rejected_presence_bits, 0x00000008) ~= 0

  if min_qty_exists then
    index, min_qty = txse_equities_orderentry_seed_v0_1.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor Qty
  local max_floor_qty = nil

  local max_floor_qty_exists = bit.band(limit_order_rejected_presence_bits, 0x00000010) ~= 0

  if max_floor_qty_exists then
    index, max_floor_qty = txse_equities_orderentry_seed_v0_1.max_floor_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Replenish Qty Range
  local max_replenish_qty_range = nil

  local max_replenish_qty_range_exists = bit.band(limit_order_rejected_presence_bits, 0x00000020) ~= 0

  if max_replenish_qty_range_exists then
    index, max_replenish_qty_range = txse_equities_orderentry_seed_v0_1.max_replenish_qty_range.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Replenish Time Range
  local max_replenish_time_range = nil

  local max_replenish_time_range_exists = bit.band(limit_order_rejected_presence_bits, 0x00000040) ~= 0

  if max_replenish_time_range_exists then
    index, max_replenish_time_range = txse_equities_orderentry_seed_v0_1.max_replenish_time_range.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Reference Price Target
  local reference_price_target = nil

  local reference_price_target_exists = bit.band(limit_order_rejected_presence_bits, 0x00000080) ~= 0

  if reference_price_target_exists then
    index, reference_price_target = txse_equities_orderentry_seed_v0_1.reference_price_target.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = bit.band(limit_order_rejected_presence_bits, 0x00000100) ~= 0

  if expire_time_exists then
    index, expire_time = txse_equities_orderentry_seed_v0_1.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: User Data
  local user_data = nil

  local user_data_exists = bit.band(limit_order_rejected_presence_bits, 0x00000200) ~= 0

  if user_data_exists then
    index, user_data = txse_equities_orderentry_seed_v0_1.user_data.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mpid
  local mpid = nil

  local mpid_exists = bit.band(limit_order_rejected_presence_bits, 0x00000400) ~= 0

  if mpid_exists then
    index, mpid = txse_equities_orderentry_seed_v0_1.mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Member Group
  local member_group = nil

  local member_group_exists = bit.band(limit_order_rejected_presence_bits, 0x00000800) ~= 0

  if member_group_exists then
    index, member_group = txse_equities_orderentry_seed_v0_1.member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = bit.band(limit_order_rejected_presence_bits, 0x00001000) ~= 0

  if locate_broker_exists then
    index, locate_broker = txse_equities_orderentry_seed_v0_1.locate_broker.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Rank Price
  local rank_price = nil

  local rank_price_exists = bit.band(limit_order_rejected_presence_bits, 0x00002000) ~= 0

  if rank_price_exists then
    index, rank_price = txse_equities_orderentry_seed_v0_1.rank_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Price
  local display_price = nil

  local display_price_exists = bit.band(limit_order_rejected_presence_bits, 0x00004000) ~= 0

  if display_price_exists then
    index, display_price = txse_equities_orderentry_seed_v0_1.display_price.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Limit Order Rejected Message
txse_equities_orderentry_seed_v0_1.limit_order_rejected_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_limit_order_rejected_message = txse_equities_orderentry_seed_v0_1.limit_order_rejected_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.limit_order_rejected_message then
    local range = buffer(offset, size_of_limit_order_rejected_message)
    local display = txse_equities_orderentry_seed_v0_1.limit_order_rejected_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.limit_order_rejected_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.limit_order_rejected_message.fields(buffer, offset, packet, parent, size_of_limit_order_rejected_message)

  return offset + size_of_limit_order_rejected_message
end

-- Limit Order Accepted Presence Bits
txse_equities_orderentry_seed_v0_1.limit_order_accepted_presence_bits = {}

-- Size: Limit Order Accepted Presence Bits
txse_equities_orderentry_seed_v0_1.limit_order_accepted_presence_bits.size = 4

-- Display: Limit Order Accepted Presence Bits
txse_equities_orderentry_seed_v0_1.limit_order_accepted_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Limit Order Accepted Self Match Scope flag set?
  if bit.band(value, 0x00000001) ~= 0 then
    display = display.."Is Limit Order Accepted Self Match Scope|"
  end
  -- Is Is Limit Order Accepted Self Match Instruction flag set?
  if bit.band(value, 0x00000002) ~= 0 then
    display = display.."Is Limit Order Accepted Self Match Instruction|"
  end
  -- Is Is Limit Order Accepted Price Slide Instruction flag set?
  if bit.band(value, 0x00000004) ~= 0 then
    display = display.."Is Limit Order Accepted Price Slide Instruction|"
  end
  -- Is Is Limit Order Accepted Min Qty flag set?
  if bit.band(value, 0x00000008) ~= 0 then
    display = display.."Is Limit Order Accepted Min Qty|"
  end
  -- Is Is Limit Order Accepted Max Floor Qty flag set?
  if bit.band(value, 0x00000010) ~= 0 then
    display = display.."Is Limit Order Accepted Max Floor Qty|"
  end
  -- Is Is Limit Order Accepted Max Replenish Qty Range flag set?
  if bit.band(value, 0x00000020) ~= 0 then
    display = display.."Is Limit Order Accepted Max Replenish Qty Range|"
  end
  -- Is Is Limit Order Accepted Max Replenish Time Range flag set?
  if bit.band(value, 0x00000040) ~= 0 then
    display = display.."Is Limit Order Accepted Max Replenish Time Range|"
  end
  -- Is Is Limit Order Accepted Reference Price Target flag set?
  if bit.band(value, 0x00000080) ~= 0 then
    display = display.."Is Limit Order Accepted Reference Price Target|"
  end
  -- Is Is Limit Order Accepted Expire Time flag set?
  if bit.band(value, 0x00000100) ~= 0 then
    display = display.."Is Limit Order Accepted Expire Time|"
  end
  -- Is Is Limit Order Accepted User Data flag set?
  if bit.band(value, 0x00000200) ~= 0 then
    display = display.."Is Limit Order Accepted User Data|"
  end
  -- Is Is Limit Order Accepted Mpid flag set?
  if bit.band(value, 0x00000400) ~= 0 then
    display = display.."Is Limit Order Accepted Mpid|"
  end
  -- Is Is Limit Order Accepted Member Group flag set?
  if bit.band(value, 0x00000800) ~= 0 then
    display = display.."Is Limit Order Accepted Member Group|"
  end
  -- Is Is Limit Order Accepted Locate Broker flag set?
  if bit.band(value, 0x00001000) ~= 0 then
    display = display.."Is Limit Order Accepted Locate Broker|"
  end
  -- Is Is Limit Order Accepted Rank Price flag set?
  if bit.band(value, 0x00002000) ~= 0 then
    display = display.."Is Limit Order Accepted Rank Price|"
  end
  -- Is Is Limit Order Accepted Display Price flag set?
  if bit.band(value, 0x00004000) ~= 0 then
    display = display.."Is Limit Order Accepted Display Price|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Limit Order Accepted Presence Bits
txse_equities_orderentry_seed_v0_1.limit_order_accepted_presence_bits.bits = function(range, value, packet, parent)

  -- Is Limit Order Accepted Self Match Scope: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_self_match_scope, range, value)

  -- Is Limit Order Accepted Self Match Instruction: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_self_match_instruction, range, value)

  -- Is Limit Order Accepted Price Slide Instruction: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_price_slide_instruction, range, value)

  -- Is Limit Order Accepted Min Qty: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_min_qty, range, value)

  -- Is Limit Order Accepted Max Floor Qty: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_max_floor_qty, range, value)

  -- Is Limit Order Accepted Max Replenish Qty Range: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_max_replenish_qty_range, range, value)

  -- Is Limit Order Accepted Max Replenish Time Range: Duration
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_max_replenish_time_range, range, value)

  -- Is Limit Order Accepted Reference Price Target: Short
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_reference_price_target, range, value)

  -- Is Limit Order Accepted Expire Time: TimeStamp
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_expire_time, range, value)

  -- Is Limit Order Accepted User Data: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_user_data, range, value)

  -- Is Limit Order Accepted Mpid: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_mpid, range, value)

  -- Is Limit Order Accepted Member Group: Str(2)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_member_group, range, value)

  -- Is Limit Order Accepted Locate Broker: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_locate_broker, range, value)

  -- Is Limit Order Accepted Rank Price: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_rank_price, range, value)

  -- Is Limit Order Accepted Display Price: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_accepted_display_price, range, value)

  -- Reserved 17: 17 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_17, range, value)
end

-- Dissect: Limit Order Accepted Presence Bits
txse_equities_orderentry_seed_v0_1.limit_order_accepted_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.limit_order_accepted_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.limit_order_accepted_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.limit_order_accepted_presence_bits, range, display)

  if show.limit_order_accepted_presence_bits then
    txse_equities_orderentry_seed_v0_1.limit_order_accepted_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Limit Order Accepted Message
txse_equities_orderentry_seed_v0_1.limit_order_accepted_message = {}

-- Read runtime size of: Limit Order Accepted Message
txse_equities_orderentry_seed_v0_1.limit_order_accepted_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Limit Order Accepted Message
txse_equities_orderentry_seed_v0_1.limit_order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Order Accepted Message
txse_equities_orderentry_seed_v0_1.limit_order_accepted_message.fields = function(buffer, offset, packet, parent, size_of_limit_order_accepted_message)
  local index = offset

  -- Limit Order Accepted Presence Bits: Struct of 16 fields
  index, limit_order_accepted_presence_bits = txse_equities_orderentry_seed_v0_1.limit_order_accepted_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = txse_equities_orderentry_seed_v0_1.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Int
  index, order_qty = txse_equities_orderentry_seed_v0_1.order_qty.dissect(buffer, index, packet, parent)

  -- Limit Order Bit Fields: Struct of 9 fields
  index, limit_order_bit_fields = txse_equities_orderentry_seed_v0_1.limit_order_bit_fields.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_equities_orderentry_seed_v0_1.symbol_id.dissect(buffer, index, packet, parent)

  -- Price: Long
  index, price = txse_equities_orderentry_seed_v0_1.price.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Self Match Scope
  local self_match_scope = nil

  local self_match_scope_exists = bit.band(limit_order_accepted_presence_bits, 0x00000001) ~= 0

  if self_match_scope_exists then
    index, self_match_scope = txse_equities_orderentry_seed_v0_1.self_match_scope.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Self Match Instruction
  local self_match_instruction = nil

  local self_match_instruction_exists = bit.band(limit_order_accepted_presence_bits, 0x00000002) ~= 0

  if self_match_instruction_exists then
    index, self_match_instruction = txse_equities_orderentry_seed_v0_1.self_match_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price Slide Instruction
  local price_slide_instruction = nil

  local price_slide_instruction_exists = bit.band(limit_order_accepted_presence_bits, 0x00000004) ~= 0

  if price_slide_instruction_exists then
    index, price_slide_instruction = txse_equities_orderentry_seed_v0_1.price_slide_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = bit.band(limit_order_accepted_presence_bits, 0x00000008) ~= 0

  if min_qty_exists then
    index, min_qty = txse_equities_orderentry_seed_v0_1.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor Qty
  local max_floor_qty = nil

  local max_floor_qty_exists = bit.band(limit_order_accepted_presence_bits, 0x00000010) ~= 0

  if max_floor_qty_exists then
    index, max_floor_qty = txse_equities_orderentry_seed_v0_1.max_floor_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Replenish Qty Range
  local max_replenish_qty_range = nil

  local max_replenish_qty_range_exists = bit.band(limit_order_accepted_presence_bits, 0x00000020) ~= 0

  if max_replenish_qty_range_exists then
    index, max_replenish_qty_range = txse_equities_orderentry_seed_v0_1.max_replenish_qty_range.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Replenish Time Range
  local max_replenish_time_range = nil

  local max_replenish_time_range_exists = bit.band(limit_order_accepted_presence_bits, 0x00000040) ~= 0

  if max_replenish_time_range_exists then
    index, max_replenish_time_range = txse_equities_orderentry_seed_v0_1.max_replenish_time_range.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Reference Price Target
  local reference_price_target = nil

  local reference_price_target_exists = bit.band(limit_order_accepted_presence_bits, 0x00000080) ~= 0

  if reference_price_target_exists then
    index, reference_price_target = txse_equities_orderentry_seed_v0_1.reference_price_target.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = bit.band(limit_order_accepted_presence_bits, 0x00000100) ~= 0

  if expire_time_exists then
    index, expire_time = txse_equities_orderentry_seed_v0_1.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: User Data
  local user_data = nil

  local user_data_exists = bit.band(limit_order_accepted_presence_bits, 0x00000200) ~= 0

  if user_data_exists then
    index, user_data = txse_equities_orderentry_seed_v0_1.user_data.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mpid
  local mpid = nil

  local mpid_exists = bit.band(limit_order_accepted_presence_bits, 0x00000400) ~= 0

  if mpid_exists then
    index, mpid = txse_equities_orderentry_seed_v0_1.mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Member Group
  local member_group = nil

  local member_group_exists = bit.band(limit_order_accepted_presence_bits, 0x00000800) ~= 0

  if member_group_exists then
    index, member_group = txse_equities_orderentry_seed_v0_1.member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = bit.band(limit_order_accepted_presence_bits, 0x00001000) ~= 0

  if locate_broker_exists then
    index, locate_broker = txse_equities_orderentry_seed_v0_1.locate_broker.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Rank Price
  local rank_price = nil

  local rank_price_exists = bit.band(limit_order_accepted_presence_bits, 0x00002000) ~= 0

  if rank_price_exists then
    index, rank_price = txse_equities_orderentry_seed_v0_1.rank_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Price
  local display_price = nil

  local display_price_exists = bit.band(limit_order_accepted_presence_bits, 0x00004000) ~= 0

  if display_price_exists then
    index, display_price = txse_equities_orderentry_seed_v0_1.display_price.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Limit Order Accepted Message
txse_equities_orderentry_seed_v0_1.limit_order_accepted_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_limit_order_accepted_message = txse_equities_orderentry_seed_v0_1.limit_order_accepted_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.limit_order_accepted_message then
    local range = buffer(offset, size_of_limit_order_accepted_message)
    local display = txse_equities_orderentry_seed_v0_1.limit_order_accepted_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.limit_order_accepted_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.limit_order_accepted_message.fields(buffer, offset, packet, parent, size_of_limit_order_accepted_message)

  return offset + size_of_limit_order_accepted_message
end

-- Regulatory Halt Reason
txse_equities_orderentry_seed_v0_1.regulatory_halt_reason = {}

-- Size: Regulatory Halt Reason
txse_equities_orderentry_seed_v0_1.regulatory_halt_reason.size = 1

-- Display: Regulatory Halt Reason
txse_equities_orderentry_seed_v0_1.regulatory_halt_reason.display = function(value)
  if value == 0 then
    return "Regulatory Halt Reason: Reason Not Available (0)"
  end
  if value == 1 then
    return "Regulatory Halt Reason: News Pending (1)"
  end
  if value == 2 then
    return "Regulatory Halt Reason: News Dissemination (2)"
  end
  if value == 3 then
    return "Regulatory Halt Reason: Info Requested (3)"
  end
  if value == 4 then
    return "Regulatory Halt Reason: Order Imbalance (4)"
  end
  if value == 5 then
    return "Regulatory Halt Reason: Extraordinary Market Activity (5)"
  end
  if value == 6 then
    return "Regulatory Halt Reason: Luld Pause (6)"
  end
  if value == 7 then
    return "Regulatory Halt Reason: Non Compliance (7)"
  end
  if value == 8 then
    return "Regulatory Halt Reason: Filings Not Current (8)"
  end
  if value == 9 then
    return "Regulatory Halt Reason: Sec Suspension (9)"
  end
  if value == 10 then
    return "Regulatory Halt Reason: Regulatory Concern (10)"
  end
  if value == 11 then
    return "Regulatory Halt Reason: Sub Penny Trading (11)"
  end
  if value == 12 then
    return "Regulatory Halt Reason: Etf (12)"
  end
  if value == 13 then
    return "Regulatory Halt Reason: Ipo Not Trading (13)"
  end
  if value == 14 then
    return "Regulatory Halt Reason: Corporate Action (14)"
  end
  if value == 15 then
    return "Regulatory Halt Reason: Circuit Breaker L 1 (15)"
  end
  if value == 16 then
    return "Regulatory Halt Reason: Circuit Breaker L 2 (16)"
  end
  if value == 17 then
    return "Regulatory Halt Reason: Circuit Breaker L 3 (17)"
  end

  return "Regulatory Halt Reason: Unknown("..value..")"
end

-- Dissect: Regulatory Halt Reason
txse_equities_orderentry_seed_v0_1.regulatory_halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.regulatory_halt_reason.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = txse_equities_orderentry_seed_v0_1.regulatory_halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.regulatory_halt_reason, range, value, display)

  return offset + length, value
end

-- Operational Halt Reason
txse_equities_orderentry_seed_v0_1.operational_halt_reason = {}

-- Size: Operational Halt Reason
txse_equities_orderentry_seed_v0_1.operational_halt_reason.size = 1

-- Display: Operational Halt Reason
txse_equities_orderentry_seed_v0_1.operational_halt_reason.display = function(value)
  if value == 0 then
    return "Operational Halt Reason: Administrative (0)"
  end

  return "Operational Halt Reason: Unknown("..value..")"
end

-- Dissect: Operational Halt Reason
txse_equities_orderentry_seed_v0_1.operational_halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.operational_halt_reason.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = txse_equities_orderentry_seed_v0_1.operational_halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.operational_halt_reason, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction State
txse_equities_orderentry_seed_v0_1.short_sale_restriction_state = {}

-- Size: Short Sale Restriction State
txse_equities_orderentry_seed_v0_1.short_sale_restriction_state.size = 1

-- Display: Short Sale Restriction State
txse_equities_orderentry_seed_v0_1.short_sale_restriction_state.display = function(value)
  if value == 0 then
    return "Short Sale Restriction State: None (0)"
  end
  if value == 1 then
    return "Short Sale Restriction State: Activated (1)"
  end
  if value == 2 then
    return "Short Sale Restriction State: Continued (2)"
  end

  return "Short Sale Restriction State: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction State
txse_equities_orderentry_seed_v0_1.short_sale_restriction_state.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.short_sale_restriction_state.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = txse_equities_orderentry_seed_v0_1.short_sale_restriction_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.short_sale_restriction_state, range, value, display)

  return offset + length, value
end

-- Trading State
txse_equities_orderentry_seed_v0_1.trading_state = {}

-- Size: Trading State
txse_equities_orderentry_seed_v0_1.trading_state.size = 1

-- Display: Trading State
txse_equities_orderentry_seed_v0_1.trading_state.display = function(value)
  return "Trading State: "..value
end

-- Dissect: Trading State
txse_equities_orderentry_seed_v0_1.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.trading_state.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = txse_equities_orderentry_seed_v0_1.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Symbol Status Presence Bits
txse_equities_orderentry_seed_v0_1.symbol_status_presence_bits = {}

-- Size: Symbol Status Presence Bits
txse_equities_orderentry_seed_v0_1.symbol_status_presence_bits.size = 1

-- Display: Symbol Status Presence Bits
txse_equities_orderentry_seed_v0_1.symbol_status_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Symbol Status Operational Halt Reason flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Is Symbol Status Operational Halt Reason|"
  end
  -- Is Is Symbol Status Regulatory Halt Reason flag set?
  if bit.band(value, 0x02) ~= 0 then
    display = display.."Is Symbol Status Regulatory Halt Reason|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Symbol Status Presence Bits
txse_equities_orderentry_seed_v0_1.symbol_status_presence_bits.bits = function(range, value, packet, parent)

  -- Is Symbol Status Operational Halt Reason: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_symbol_status_operational_halt_reason, range, value)

  -- Is Symbol Status Regulatory Halt Reason: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_symbol_status_regulatory_halt_reason, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_6, range, value)
end

-- Dissect: Symbol Status Presence Bits
txse_equities_orderentry_seed_v0_1.symbol_status_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.symbol_status_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.symbol_status_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.symbol_status_presence_bits, range, display)

  if show.symbol_status_presence_bits then
    txse_equities_orderentry_seed_v0_1.symbol_status_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Symbol Status Message
txse_equities_orderentry_seed_v0_1.symbol_status_message = {}

-- Read runtime size of: Symbol Status Message
txse_equities_orderentry_seed_v0_1.symbol_status_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Symbol Status Message
txse_equities_orderentry_seed_v0_1.symbol_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Status Message
txse_equities_orderentry_seed_v0_1.symbol_status_message.fields = function(buffer, offset, packet, parent, size_of_symbol_status_message)
  local index = offset

  -- Symbol Status Presence Bits: Struct of 3 fields
  index, symbol_status_presence_bits = txse_equities_orderentry_seed_v0_1.symbol_status_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_equities_orderentry_seed_v0_1.symbol_id.dissect(buffer, index, packet, parent)

  -- Trading State: Enum
  index, trading_state = txse_equities_orderentry_seed_v0_1.trading_state.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction State: Enum
  index, short_sale_restriction_state = txse_equities_orderentry_seed_v0_1.short_sale_restriction_state.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Operational Halt Reason
  local operational_halt_reason = nil

  local operational_halt_reason_exists = bit.band(symbol_status_presence_bits, 0x01) ~= 0

  if operational_halt_reason_exists then
    index, operational_halt_reason = txse_equities_orderentry_seed_v0_1.operational_halt_reason.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Regulatory Halt Reason
  local regulatory_halt_reason = nil

  local regulatory_halt_reason_exists = bit.band(symbol_status_presence_bits, 0x02) ~= 0

  if regulatory_halt_reason_exists then
    index, regulatory_halt_reason = txse_equities_orderentry_seed_v0_1.regulatory_halt_reason.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Symbol Status Message
txse_equities_orderentry_seed_v0_1.symbol_status_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_symbol_status_message = txse_equities_orderentry_seed_v0_1.symbol_status_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.symbol_status_message then
    local range = buffer(offset, size_of_symbol_status_message)
    local display = txse_equities_orderentry_seed_v0_1.symbol_status_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.symbol_status_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.symbol_status_message.fields(buffer, offset, packet, parent, size_of_symbol_status_message)

  return offset + size_of_symbol_status_message
end

-- Lot Size
txse_equities_orderentry_seed_v0_1.lot_size = {}

-- Size: Lot Size
txse_equities_orderentry_seed_v0_1.lot_size.size = 4

-- Display: Lot Size
txse_equities_orderentry_seed_v0_1.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
txse_equities_orderentry_seed_v0_1.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_equities_orderentry_seed_v0_1.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Define Symbol Bitfields
txse_equities_orderentry_seed_v0_1.define_symbol_bitfields = {}

-- Size: Define Symbol Bitfields
txse_equities_orderentry_seed_v0_1.define_symbol_bitfields.size = 1

-- Display: Define Symbol Bitfields
txse_equities_orderentry_seed_v0_1.define_symbol_bitfields.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Test flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Is Test|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Define Symbol Bitfields
txse_equities_orderentry_seed_v0_1.define_symbol_bitfields.bits = function(range, value, packet, parent)

  -- Is Test: 1 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_test, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_7, range, value)
end

-- Dissect: Define Symbol Bitfields
txse_equities_orderentry_seed_v0_1.define_symbol_bitfields.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.define_symbol_bitfields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.define_symbol_bitfields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.define_symbol_bitfields, range, display)

  if show.define_symbol_bitfields then
    txse_equities_orderentry_seed_v0_1.define_symbol_bitfields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Matching Engine Id
txse_equities_orderentry_seed_v0_1.matching_engine_id = {}

-- Size: Matching Engine Id
txse_equities_orderentry_seed_v0_1.matching_engine_id.size = 1

-- Display: Matching Engine Id
txse_equities_orderentry_seed_v0_1.matching_engine_id.display = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
txse_equities_orderentry_seed_v0_1.matching_engine_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.matching_engine_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = txse_equities_orderentry_seed_v0_1.matching_engine_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Suffix
txse_equities_orderentry_seed_v0_1.suffix = {}

-- Size: Suffix
txse_equities_orderentry_seed_v0_1.suffix.size = 8

-- Display: Suffix
txse_equities_orderentry_seed_v0_1.suffix.display = function(value)
  return "Suffix: "..value
end

-- Dissect: Suffix
txse_equities_orderentry_seed_v0_1.suffix.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.suffix.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_equities_orderentry_seed_v0_1.suffix.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.suffix, range, value, display)

  return offset + length, value
end

-- Symbol
txse_equities_orderentry_seed_v0_1.symbol = {}

-- Size: Symbol
txse_equities_orderentry_seed_v0_1.symbol.size = 8

-- Display: Symbol
txse_equities_orderentry_seed_v0_1.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
txse_equities_orderentry_seed_v0_1.symbol.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_equities_orderentry_seed_v0_1.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Define Symbol Message
txse_equities_orderentry_seed_v0_1.define_symbol_message = {}

-- Read runtime size of: Define Symbol Message
txse_equities_orderentry_seed_v0_1.define_symbol_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Define Symbol Message
txse_equities_orderentry_seed_v0_1.define_symbol_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Define Symbol Message
txse_equities_orderentry_seed_v0_1.define_symbol_message.fields = function(buffer, offset, packet, parent, size_of_define_symbol_message)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_equities_orderentry_seed_v0_1.symbol_id.dissect(buffer, index, packet, parent)

  -- Symbol: Str(8)
  index, symbol = txse_equities_orderentry_seed_v0_1.symbol.dissect(buffer, index, packet, parent)

  -- Suffix: Str(8)
  index, suffix = txse_equities_orderentry_seed_v0_1.suffix.dissect(buffer, index, packet, parent)

  -- Matching Engine Id: Byte
  index, matching_engine_id = txse_equities_orderentry_seed_v0_1.matching_engine_id.dissect(buffer, index, packet, parent)

  -- Define Symbol Bitfields: Struct of 2 fields
  index, define_symbol_bitfields = txse_equities_orderentry_seed_v0_1.define_symbol_bitfields.dissect(buffer, index, packet, parent)

  -- Lot Size: Int
  index, lot_size = txse_equities_orderentry_seed_v0_1.lot_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Define Symbol Message
txse_equities_orderentry_seed_v0_1.define_symbol_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_define_symbol_message = txse_equities_orderentry_seed_v0_1.define_symbol_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.define_symbol_message then
    local range = buffer(offset, size_of_define_symbol_message)
    local display = txse_equities_orderentry_seed_v0_1.define_symbol_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.define_symbol_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.define_symbol_message.fields(buffer, offset, packet, parent, size_of_define_symbol_message)

  return offset + size_of_define_symbol_message
end

-- Market Hours State
txse_equities_orderentry_seed_v0_1.market_hours_state = {}

-- Size: Market Hours State
txse_equities_orderentry_seed_v0_1.market_hours_state.size = 1

-- Display: Market Hours State
txse_equities_orderentry_seed_v0_1.market_hours_state.display = function(value)
  if value == 0 then
    return "Market Hours State: Closed Before Hours (0)"
  end
  if value == 1 then
    return "Market Hours State: Early Session (1)"
  end
  if value == 2 then
    return "Market Hours State: Regular Session (2)"
  end
  if value == 3 then
    return "Market Hours State: After Hours Session (3)"
  end
  if value == 4 then
    return "Market Hours State: Closed After Hours (4)"
  end

  return "Market Hours State: Unknown("..value..")"
end

-- Dissect: Market Hours State
txse_equities_orderentry_seed_v0_1.market_hours_state.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.market_hours_state.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = txse_equities_orderentry_seed_v0_1.market_hours_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.market_hours_state, range, value, display)

  return offset + length, value
end

-- Trading Session Status Presence Bits
txse_equities_orderentry_seed_v0_1.trading_session_status_presence_bits = {}

-- Size: Trading Session Status Presence Bits
txse_equities_orderentry_seed_v0_1.trading_session_status_presence_bits.size = 1

-- Display: Trading Session Status Presence Bits
txse_equities_orderentry_seed_v0_1.trading_session_status_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Trading Session Status Operational Halt Reason flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Is Trading Session Status Operational Halt Reason|"
  end
  -- Is Is Trading Session Status Regulatory Halt Reason flag set?
  if bit.band(value, 0x02) ~= 0 then
    display = display.."Is Trading Session Status Regulatory Halt Reason|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Trading Session Status Presence Bits
txse_equities_orderentry_seed_v0_1.trading_session_status_presence_bits.bits = function(range, value, packet, parent)

  -- Is Trading Session Status Operational Halt Reason: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_trading_session_status_operational_halt_reason, range, value)

  -- Is Trading Session Status Regulatory Halt Reason: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_trading_session_status_regulatory_halt_reason, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_6, range, value)
end

-- Dissect: Trading Session Status Presence Bits
txse_equities_orderentry_seed_v0_1.trading_session_status_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.trading_session_status_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.trading_session_status_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.trading_session_status_presence_bits, range, display)

  if show.trading_session_status_presence_bits then
    txse_equities_orderentry_seed_v0_1.trading_session_status_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trading Session Status Message
txse_equities_orderentry_seed_v0_1.trading_session_status_message = {}

-- Read runtime size of: Trading Session Status Message
txse_equities_orderentry_seed_v0_1.trading_session_status_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 5, 2):le_uint()

  return message_length - 3
end

-- Display: Trading Session Status Message
txse_equities_orderentry_seed_v0_1.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
txse_equities_orderentry_seed_v0_1.trading_session_status_message.fields = function(buffer, offset, packet, parent, size_of_trading_session_status_message)
  local index = offset

  -- Trading Session Status Presence Bits: Struct of 3 fields
  index, trading_session_status_presence_bits = txse_equities_orderentry_seed_v0_1.trading_session_status_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_equities_orderentry_seed_v0_1.transact_time.dissect(buffer, index, packet, parent)

  -- Market Hours State: Enum
  index, market_hours_state = txse_equities_orderentry_seed_v0_1.market_hours_state.dissect(buffer, index, packet, parent)

  -- Trading State: Enum
  index, trading_state = txse_equities_orderentry_seed_v0_1.trading_state.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Operational Halt Reason
  local operational_halt_reason = nil

  local operational_halt_reason_exists = bit.band(trading_session_status_presence_bits, 0x01) ~= 0

  if operational_halt_reason_exists then
    index, operational_halt_reason = txse_equities_orderentry_seed_v0_1.operational_halt_reason.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Regulatory Halt Reason
  local regulatory_halt_reason = nil

  local regulatory_halt_reason_exists = bit.band(trading_session_status_presence_bits, 0x02) ~= 0

  if regulatory_halt_reason_exists then
    index, regulatory_halt_reason = txse_equities_orderentry_seed_v0_1.regulatory_halt_reason.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trading Session Status Message
txse_equities_orderentry_seed_v0_1.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_trading_session_status_message = txse_equities_orderentry_seed_v0_1.trading_session_status_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.trading_session_status_message then
    local range = buffer(offset, size_of_trading_session_status_message)
    local display = txse_equities_orderentry_seed_v0_1.trading_session_status_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.trading_session_status_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.trading_session_status_message.fields(buffer, offset, packet, parent, size_of_trading_session_status_message)

  return offset + size_of_trading_session_status_message
end

-- Sequenced Message
txse_equities_orderentry_seed_v0_1.sequenced_message = {}

-- Size: Sequenced Message
txse_equities_orderentry_seed_v0_1.sequenced_message.size = function(buffer, offset, sequenced_message_type)
  -- Size of Trading Session Status Message
  if sequenced_message_type == 105 then
    return txse_equities_orderentry_seed_v0_1.trading_session_status_message.size(buffer, offset)
  end
  -- Size of Define Symbol Message
  if sequenced_message_type == 115 then
    return txse_equities_orderentry_seed_v0_1.define_symbol_message.size(buffer, offset)
  end
  -- Size of Symbol Status Message
  if sequenced_message_type == 121 then
    return txse_equities_orderentry_seed_v0_1.symbol_status_message.size(buffer, offset)
  end
  -- Size of Limit Order Accepted Message
  if sequenced_message_type == 73 then
    return txse_equities_orderentry_seed_v0_1.limit_order_accepted_message.size(buffer, offset)
  end
  -- Size of Limit Order Rejected Message
  if sequenced_message_type == 85 then
    return txse_equities_orderentry_seed_v0_1.limit_order_rejected_message.size(buffer, offset)
  end
  -- Size of Market Order Accepted Message
  if sequenced_message_type == 68 then
    return txse_equities_orderentry_seed_v0_1.market_order_accepted_message.size(buffer, offset)
  end
  -- Size of Market Order Rejected Message
  if sequenced_message_type == 84 then
    return txse_equities_orderentry_seed_v0_1.market_order_rejected_message.size(buffer, offset)
  end
  -- Size of Order Canceled Message
  if sequenced_message_type == 88 then
    return txse_equities_orderentry_seed_v0_1.order_canceled_message.size(buffer, offset)
  end
  -- Size of Cancel Rejected Message
  if sequenced_message_type == 87 then
    return txse_equities_orderentry_seed_v0_1.cancel_rejected_message.size(buffer, offset)
  end
  -- Size of Order Modified Message
  if sequenced_message_type == 89 then
    return txse_equities_orderentry_seed_v0_1.order_modified_message.size(buffer, offset)
  end
  -- Size of Modify Rejected Message
  if sequenced_message_type == 78 then
    return txse_equities_orderentry_seed_v0_1.modify_rejected_message.size(buffer, offset)
  end
  -- Size of Order Replaced Message
  if sequenced_message_type == 74 then
    return txse_equities_orderentry_seed_v0_1.order_replaced_message.size(buffer, offset)
  end
  -- Size of Replace Rejected Message
  if sequenced_message_type == 75 then
    return txse_equities_orderentry_seed_v0_1.replace_rejected_message.size(buffer, offset)
  end
  -- Size of Order Executed Message
  if sequenced_message_type == 69 then
    return txse_equities_orderentry_seed_v0_1.order_executed_message.size(buffer, offset)
  end
  -- Size of Order Restated Message
  if sequenced_message_type == 70 then
    return txse_equities_orderentry_seed_v0_1.order_restated_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Accepted Message
  if sequenced_message_type == 79 then
    return txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Rejected Message
  if sequenced_message_type == 80 then
    return txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Result Message
  if sequenced_message_type == 81 then
    return txse_equities_orderentry_seed_v0_1.mass_cancel_result_message.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Message
txse_equities_orderentry_seed_v0_1.sequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
txse_equities_orderentry_seed_v0_1.sequenced_message.branches = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Trading Session Status Message
  if sequenced_message_type == 105 then
    return txse_equities_orderentry_seed_v0_1.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Define Symbol Message
  if sequenced_message_type == 115 then
    return txse_equities_orderentry_seed_v0_1.define_symbol_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Status Message
  if sequenced_message_type == 121 then
    return txse_equities_orderentry_seed_v0_1.symbol_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Limit Order Accepted Message
  if sequenced_message_type == 73 then
    return txse_equities_orderentry_seed_v0_1.limit_order_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Limit Order Rejected Message
  if sequenced_message_type == 85 then
    return txse_equities_orderentry_seed_v0_1.limit_order_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Order Accepted Message
  if sequenced_message_type == 68 then
    return txse_equities_orderentry_seed_v0_1.market_order_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Order Rejected Message
  if sequenced_message_type == 84 then
    return txse_equities_orderentry_seed_v0_1.market_order_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Canceled Message
  if sequenced_message_type == 88 then
    return txse_equities_orderentry_seed_v0_1.order_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Rejected Message
  if sequenced_message_type == 87 then
    return txse_equities_orderentry_seed_v0_1.cancel_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if sequenced_message_type == 89 then
    return txse_equities_orderentry_seed_v0_1.order_modified_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Rejected Message
  if sequenced_message_type == 78 then
    return txse_equities_orderentry_seed_v0_1.modify_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if sequenced_message_type == 74 then
    return txse_equities_orderentry_seed_v0_1.order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Rejected Message
  if sequenced_message_type == 75 then
    return txse_equities_orderentry_seed_v0_1.replace_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if sequenced_message_type == 69 then
    return txse_equities_orderentry_seed_v0_1.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Restated Message
  if sequenced_message_type == 70 then
    return txse_equities_orderentry_seed_v0_1.order_restated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Accepted Message
  if sequenced_message_type == 79 then
    return txse_equities_orderentry_seed_v0_1.mass_cancel_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Rejected Message
  if sequenced_message_type == 80 then
    return txse_equities_orderentry_seed_v0_1.mass_cancel_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Result Message
  if sequenced_message_type == 81 then
    return txse_equities_orderentry_seed_v0_1.mass_cancel_result_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
txse_equities_orderentry_seed_v0_1.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  if not show.sequenced_message then
    return txse_equities_orderentry_seed_v0_1.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = txse_equities_orderentry_seed_v0_1.sequenced_message.size(buffer, offset, sequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = txse_equities_orderentry_seed_v0_1.sequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.sequenced_message, range, display)

  return txse_equities_orderentry_seed_v0_1.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
end

-- Sequenced Message Type
txse_equities_orderentry_seed_v0_1.sequenced_message_type = {}

-- Size: Sequenced Message Type
txse_equities_orderentry_seed_v0_1.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
txse_equities_orderentry_seed_v0_1.sequenced_message_type.display = function(value)
  if value == 105 then
    return "Sequenced Message Type: Trading Session Status Message (105)"
  end
  if value == 115 then
    return "Sequenced Message Type: Define Symbol Message (115)"
  end
  if value == 121 then
    return "Sequenced Message Type: Symbol Status Message (121)"
  end
  if value == 73 then
    return "Sequenced Message Type: Limit Order Accepted Message (73)"
  end
  if value == 85 then
    return "Sequenced Message Type: Limit Order Rejected Message (85)"
  end
  if value == 68 then
    return "Sequenced Message Type: Market Order Accepted Message (68)"
  end
  if value == 84 then
    return "Sequenced Message Type: Market Order Rejected Message (84)"
  end
  if value == 88 then
    return "Sequenced Message Type: Order Canceled Message (88)"
  end
  if value == 87 then
    return "Sequenced Message Type: Cancel Rejected Message (87)"
  end
  if value == 89 then
    return "Sequenced Message Type: Order Modified Message (89)"
  end
  if value == 78 then
    return "Sequenced Message Type: Modify Rejected Message (78)"
  end
  if value == 74 then
    return "Sequenced Message Type: Order Replaced Message (74)"
  end
  if value == 75 then
    return "Sequenced Message Type: Replace Rejected Message (75)"
  end
  if value == 69 then
    return "Sequenced Message Type: Order Executed Message (69)"
  end
  if value == 70 then
    return "Sequenced Message Type: Order Restated Message (70)"
  end
  if value == 79 then
    return "Sequenced Message Type: Mass Cancel Accepted Message (79)"
  end
  if value == 80 then
    return "Sequenced Message Type: Mass Cancel Rejected Message (80)"
  end
  if value == 81 then
    return "Sequenced Message Type: Mass Cancel Result Message (81)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
txse_equities_orderentry_seed_v0_1.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_equities_orderentry_seed_v0_1.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Stream Id
txse_equities_orderentry_seed_v0_1.stream_id = {}

-- Size: Stream Id
txse_equities_orderentry_seed_v0_1.stream_id.size = 1

-- Display: Stream Id
txse_equities_orderentry_seed_v0_1.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
txse_equities_orderentry_seed_v0_1.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.stream_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_equities_orderentry_seed_v0_1.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Tcp Sequenced Message
txse_equities_orderentry_seed_v0_1.tcp_sequenced_message = {}

-- Read runtime size of: Tcp Sequenced Message
txse_equities_orderentry_seed_v0_1.tcp_sequenced_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  return message_length - 1
end

-- Display: Tcp Sequenced Message
txse_equities_orderentry_seed_v0_1.tcp_sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Sequenced Message
txse_equities_orderentry_seed_v0_1.tcp_sequenced_message.fields = function(buffer, offset, packet, parent, size_of_tcp_sequenced_message)
  local index = offset

  -- Stream Id: 1 Byte Unsigned Fixed Width Integer
  index, stream_id = txse_equities_orderentry_seed_v0_1.stream_id.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, sequenced_message_type = txse_equities_orderentry_seed_v0_1.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 18 branches
  index = txse_equities_orderentry_seed_v0_1.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Tcp Sequenced Message
txse_equities_orderentry_seed_v0_1.tcp_sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_tcp_sequenced_message = txse_equities_orderentry_seed_v0_1.tcp_sequenced_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.tcp_sequenced_message then
    local range = buffer(offset, size_of_tcp_sequenced_message)
    local display = txse_equities_orderentry_seed_v0_1.tcp_sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.tcp_sequenced_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.tcp_sequenced_message.fields(buffer, offset, packet, parent, size_of_tcp_sequenced_message)

  return offset + size_of_tcp_sequenced_message
end

-- Rake Instance
txse_equities_orderentry_seed_v0_1.rake_instance = {}

-- Size: Rake Instance
txse_equities_orderentry_seed_v0_1.rake_instance.size = 4

-- Display: Rake Instance
txse_equities_orderentry_seed_v0_1.rake_instance.display = function(value)
  return "Rake Instance: "..value
end

-- Dissect: Rake Instance
txse_equities_orderentry_seed_v0_1.rake_instance.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.rake_instance.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_equities_orderentry_seed_v0_1.rake_instance.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.rake_instance, range, value, display)

  return offset + length, value
end

-- Number Stream Ids
txse_equities_orderentry_seed_v0_1.number_stream_ids = {}

-- Size: Number Stream Ids
txse_equities_orderentry_seed_v0_1.number_stream_ids.size = 1

-- Display: Number Stream Ids
txse_equities_orderentry_seed_v0_1.number_stream_ids.display = function(value)
  return "Number Stream Ids: "..value
end

-- Dissect: Number Stream Ids
txse_equities_orderentry_seed_v0_1.number_stream_ids.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.number_stream_ids.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_equities_orderentry_seed_v0_1.number_stream_ids.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.number_stream_ids, range, value, display)

  return offset + length, value
end

-- Logon Response Code
txse_equities_orderentry_seed_v0_1.logon_response_code = {}

-- Size: Logon Response Code
txse_equities_orderentry_seed_v0_1.logon_response_code.size = 1

-- Display: Logon Response Code
txse_equities_orderentry_seed_v0_1.logon_response_code.display = function(value)
  if value == 0 then
    return "Logon Response Code: Success (0)"
  end
  if value == 1 then
    return "Logon Response Code: Incorrect Sender Comp (1)"
  end
  if value == 2 then
    return "Logon Response Code: Incorrect Session (2)"
  end
  if value == 3 then
    return "Logon Response Code: Invalid Next Sequence (3)"
  end
  if value == 4 then
    return "Logon Response Code: Invalid Configuration (4)"
  end
  if value == 5 then
    return "Logon Response Code: Incorrect Token (5)"
  end

  return "Logon Response Code: Unknown("..value..")"
end

-- Dissect: Logon Response Code
txse_equities_orderentry_seed_v0_1.logon_response_code.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.logon_response_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_equities_orderentry_seed_v0_1.logon_response_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.logon_response_code, range, value, display)

  return offset + length, value
end

-- Highest Known Sequence Number
txse_equities_orderentry_seed_v0_1.highest_known_sequence_number = {}

-- Size: Highest Known Sequence Number
txse_equities_orderentry_seed_v0_1.highest_known_sequence_number.size = 8

-- Display: Highest Known Sequence Number
txse_equities_orderentry_seed_v0_1.highest_known_sequence_number.display = function(value)
  return "Highest Known Sequence Number: "..value
end

-- Dissect: Highest Known Sequence Number
txse_equities_orderentry_seed_v0_1.highest_known_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.highest_known_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_equities_orderentry_seed_v0_1.highest_known_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.highest_known_sequence_number, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
txse_equities_orderentry_seed_v0_1.next_sequence_number = {}

-- Size: Next Sequence Number
txse_equities_orderentry_seed_v0_1.next_sequence_number.size = 8

-- Display: Next Sequence Number
txse_equities_orderentry_seed_v0_1.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
txse_equities_orderentry_seed_v0_1.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_equities_orderentry_seed_v0_1.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Session
txse_equities_orderentry_seed_v0_1.session = {}

-- Size: Session
txse_equities_orderentry_seed_v0_1.session.size = 8

-- Display: Session
txse_equities_orderentry_seed_v0_1.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
txse_equities_orderentry_seed_v0_1.session.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.session.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_equities_orderentry_seed_v0_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.session, range, value, display)

  return offset + length, value
end

-- Logon Response Message
txse_equities_orderentry_seed_v0_1.logon_response_message = {}

-- Size: Logon Response Message
txse_equities_orderentry_seed_v0_1.logon_response_message.size =
  txse_equities_orderentry_seed_v0_1.session.size + 
  txse_equities_orderentry_seed_v0_1.next_sequence_number.size + 
  txse_equities_orderentry_seed_v0_1.highest_known_sequence_number.size + 
  txse_equities_orderentry_seed_v0_1.logon_response_code.size + 
  txse_equities_orderentry_seed_v0_1.number_stream_ids.size + 
  txse_equities_orderentry_seed_v0_1.rake_instance.size

-- Display: Logon Response Message
txse_equities_orderentry_seed_v0_1.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
txse_equities_orderentry_seed_v0_1.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 8 Byte Unsigned Fixed Width Integer
  index, session = txse_equities_orderentry_seed_v0_1.session.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = txse_equities_orderentry_seed_v0_1.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Highest Known Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_known_sequence_number = txse_equities_orderentry_seed_v0_1.highest_known_sequence_number.dissect(buffer, index, packet, parent)

  -- Logon Response Code: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, logon_response_code = txse_equities_orderentry_seed_v0_1.logon_response_code.dissect(buffer, index, packet, parent)

  -- Number Stream Ids: 1 Byte Unsigned Fixed Width Integer
  index, number_stream_ids = txse_equities_orderentry_seed_v0_1.number_stream_ids.dissect(buffer, index, packet, parent)

  -- Rake Instance: 4 Byte Unsigned Fixed Width Integer
  index, rake_instance = txse_equities_orderentry_seed_v0_1.rake_instance.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
txse_equities_orderentry_seed_v0_1.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.logon_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.logon_response_message, buffer(offset, 0))
    local index = txse_equities_orderentry_seed_v0_1.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_equities_orderentry_seed_v0_1.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_equities_orderentry_seed_v0_1.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Text
txse_equities_orderentry_seed_v0_1.text = {}

-- Display: Text
txse_equities_orderentry_seed_v0_1.text.display = function(value)
  return "Text: "..value
end

-- Dissect runtime sized field: Text
txse_equities_orderentry_seed_v0_1.text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = txse_equities_orderentry_seed_v0_1.text.display(value, packet, parent, size)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.text, range, value, display)

  return offset + size, value
end

-- Debug Message
txse_equities_orderentry_seed_v0_1.debug_message = {}

-- Calculate size of: Debug Message
txse_equities_orderentry_seed_v0_1.debug_message.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Debug Message
txse_equities_orderentry_seed_v0_1.debug_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Message
txse_equities_orderentry_seed_v0_1.debug_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Text
  local size_of_text = message_length - 1

  -- Text: 1 Byte Ascii String
  index, text = txse_equities_orderentry_seed_v0_1.text.dissect(buffer, index, packet, parent, size_of_text)

  return index
end

-- Dissect: Debug Message
txse_equities_orderentry_seed_v0_1.debug_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.debug_message then
    local length = txse_equities_orderentry_seed_v0_1.debug_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = txse_equities_orderentry_seed_v0_1.debug_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.debug_message, range, display)
  end

  return txse_equities_orderentry_seed_v0_1.debug_message.fields(buffer, offset, packet, parent)
end

-- Mass Cancel Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_presence_bits = {}

-- Size: Mass Cancel Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_presence_bits.size = 1

-- Display: Mass Cancel Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Mass Cancel Mpid flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Is Mass Cancel Mpid|"
  end
  -- Is Is Mass Cancel Sender Comp flag set?
  if bit.band(value, 0x02) ~= 0 then
    display = display.."Is Mass Cancel Sender Comp|"
  end
  -- Is Is Mass Cancel Member Group flag set?
  if bit.band(value, 0x04) ~= 0 then
    display = display.."Is Mass Cancel Member Group|"
  end
  -- Is Is Mass Cancel Cl Ord Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    display = display.."Is Mass Cancel Cl Ord Id|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Mass Cancel Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_presence_bits.bits = function(range, value, packet, parent)

  -- Is Mass Cancel Mpid: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_mpid, range, value)

  -- Is Mass Cancel Sender Comp: Str(8)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_sender_comp, range, value)

  -- Is Mass Cancel Member Group: Str(2)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_member_group, range, value)

  -- Is Mass Cancel Cl Ord Id: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_mass_cancel_cl_ord_id, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_4, range, value)
end

-- Dissect: Mass Cancel Presence Bits
txse_equities_orderentry_seed_v0_1.mass_cancel_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.mass_cancel_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.mass_cancel_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_presence_bits, range, display)

  if show.mass_cancel_presence_bits then
    txse_equities_orderentry_seed_v0_1.mass_cancel_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mass Cancel Message
txse_equities_orderentry_seed_v0_1.mass_cancel_message = {}

-- Read runtime size of: Mass Cancel Message
txse_equities_orderentry_seed_v0_1.mass_cancel_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):le_uint()

  return message_length - 2
end

-- Display: Mass Cancel Message
txse_equities_orderentry_seed_v0_1.mass_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Message
txse_equities_orderentry_seed_v0_1.mass_cancel_message.fields = function(buffer, offset, packet, parent, size_of_mass_cancel_message)
  local index = offset

  -- Mass Cancel Presence Bits: Struct of 5 fields
  index, mass_cancel_presence_bits = txse_equities_orderentry_seed_v0_1.mass_cancel_presence_bits.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Id: Long
  index, mass_cancel_request_id = txse_equities_orderentry_seed_v0_1.mass_cancel_request_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Scope: Enum
  index, mass_cancel_scope = txse_equities_orderentry_seed_v0_1.mass_cancel_scope.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Mpid
  local mpid = nil

  local mpid_exists = bit.band(mass_cancel_presence_bits, 0x01) ~= 0

  if mpid_exists then
    index, mpid = txse_equities_orderentry_seed_v0_1.mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Sender Comp
  local sender_comp = nil

  local sender_comp_exists = bit.band(mass_cancel_presence_bits, 0x02) ~= 0

  if sender_comp_exists then
    index, sender_comp = txse_equities_orderentry_seed_v0_1.sender_comp.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Member Group
  local member_group = nil

  local member_group_exists = bit.band(mass_cancel_presence_bits, 0x04) ~= 0

  if member_group_exists then
    index, member_group = txse_equities_orderentry_seed_v0_1.member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cl Ord Id
  local cl_ord_id = nil

  local cl_ord_id_exists = bit.band(mass_cancel_presence_bits, 0x08) ~= 0

  if cl_ord_id_exists then
    index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mass Cancel Message
txse_equities_orderentry_seed_v0_1.mass_cancel_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_mass_cancel_message = txse_equities_orderentry_seed_v0_1.mass_cancel_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.mass_cancel_message then
    local range = buffer(offset, size_of_mass_cancel_message)
    local display = txse_equities_orderentry_seed_v0_1.mass_cancel_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.mass_cancel_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.mass_cancel_message.fields(buffer, offset, packet, parent, size_of_mass_cancel_message)

  return offset + size_of_mass_cancel_message
end

-- Replace Order Presence Bits
txse_equities_orderentry_seed_v0_1.replace_order_presence_bits = {}

-- Size: Replace Order Presence Bits
txse_equities_orderentry_seed_v0_1.replace_order_presence_bits.size = 2

-- Display: Replace Order Presence Bits
txse_equities_orderentry_seed_v0_1.replace_order_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Replace Order Price flag set?
  if bit.band(value, 0x0001) ~= 0 then
    display = display.."Is Replace Order Price|"
  end
  -- Is Is Replace Order Order Qty flag set?
  if bit.band(value, 0x0002) ~= 0 then
    display = display.."Is Replace Order Order Qty|"
  end
  -- Is Is Replace Order Max Floor Qty flag set?
  if bit.band(value, 0x0004) ~= 0 then
    display = display.."Is Replace Order Max Floor Qty|"
  end
  -- Is Is Replace Order Locate Broker flag set?
  if bit.band(value, 0x0008) ~= 0 then
    display = display.."Is Replace Order Locate Broker|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Replace Order Presence Bits
txse_equities_orderentry_seed_v0_1.replace_order_presence_bits.bits = function(range, value, packet, parent)

  -- Is Replace Order Price: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_order_price, range, value)

  -- Is Replace Order Order Qty: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_order_order_qty, range, value)

  -- Is Replace Order Max Floor Qty: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_order_max_floor_qty, range, value)

  -- Is Replace Order Locate Broker: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_replace_order_locate_broker, range, value)

  -- Reserved 12: 12 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_12, range, value)
end

-- Dissect: Replace Order Presence Bits
txse_equities_orderentry_seed_v0_1.replace_order_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.replace_order_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.replace_order_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.replace_order_presence_bits, range, display)

  if show.replace_order_presence_bits then
    txse_equities_orderentry_seed_v0_1.replace_order_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Replace Order Message
txse_equities_orderentry_seed_v0_1.replace_order_message = {}

-- Read runtime size of: Replace Order Message
txse_equities_orderentry_seed_v0_1.replace_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):le_uint()

  return message_length - 2
end

-- Display: Replace Order Message
txse_equities_orderentry_seed_v0_1.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
txse_equities_orderentry_seed_v0_1.replace_order_message.fields = function(buffer, offset, packet, parent, size_of_replace_order_message)
  local index = offset

  -- Replace Order Presence Bits: Struct of 5 fields
  index, replace_order_presence_bits = txse_equities_orderentry_seed_v0_1.replace_order_presence_bits.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_equities_orderentry_seed_v0_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Replace Bitfields: Struct of 5 fields
  index, replace_bitfields = txse_equities_orderentry_seed_v0_1.replace_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Price
  local price = nil

  local price_exists = bit.band(replace_order_presence_bits, 0x0001) ~= 0

  if price_exists then
    index, price = txse_equities_orderentry_seed_v0_1.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = bit.band(replace_order_presence_bits, 0x0002) ~= 0

  if order_qty_exists then
    index, order_qty = txse_equities_orderentry_seed_v0_1.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor Qty
  local max_floor_qty = nil

  local max_floor_qty_exists = bit.band(replace_order_presence_bits, 0x0004) ~= 0

  if max_floor_qty_exists then
    index, max_floor_qty = txse_equities_orderentry_seed_v0_1.max_floor_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = bit.band(replace_order_presence_bits, 0x0008) ~= 0

  if locate_broker_exists then
    index, locate_broker = txse_equities_orderentry_seed_v0_1.locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Replace Order Message
txse_equities_orderentry_seed_v0_1.replace_order_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_replace_order_message = txse_equities_orderentry_seed_v0_1.replace_order_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.replace_order_message then
    local range = buffer(offset, size_of_replace_order_message)
    local display = txse_equities_orderentry_seed_v0_1.replace_order_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.replace_order_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.replace_order_message.fields(buffer, offset, packet, parent, size_of_replace_order_message)

  return offset + size_of_replace_order_message
end

-- Cancel Order Message
txse_equities_orderentry_seed_v0_1.cancel_order_message = {}

-- Read runtime size of: Cancel Order Message
txse_equities_orderentry_seed_v0_1.cancel_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):le_uint()

  return message_length - 2
end

-- Display: Cancel Order Message
txse_equities_orderentry_seed_v0_1.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
txse_equities_orderentry_seed_v0_1.cancel_order_message.fields = function(buffer, offset, packet, parent, size_of_cancel_order_message)
  local index = offset

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_equities_orderentry_seed_v0_1.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
txse_equities_orderentry_seed_v0_1.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_cancel_order_message = txse_equities_orderentry_seed_v0_1.cancel_order_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.cancel_order_message then
    local range = buffer(offset, size_of_cancel_order_message)
    local display = txse_equities_orderentry_seed_v0_1.cancel_order_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.cancel_order_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.cancel_order_message.fields(buffer, offset, packet, parent, size_of_cancel_order_message)

  return offset + size_of_cancel_order_message
end

-- Market Order Presence Bits
txse_equities_orderentry_seed_v0_1.market_order_presence_bits = {}

-- Size: Market Order Presence Bits
txse_equities_orderentry_seed_v0_1.market_order_presence_bits.size = 2

-- Display: Market Order Presence Bits
txse_equities_orderentry_seed_v0_1.market_order_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Market Order Self Match Scope flag set?
  if bit.band(value, 0x0001) ~= 0 then
    display = display.."Is Market Order Self Match Scope|"
  end
  -- Is Is Market Order Self Match Instruction flag set?
  if bit.band(value, 0x0002) ~= 0 then
    display = display.."Is Market Order Self Match Instruction|"
  end
  -- Is Is Market Order User Data flag set?
  if bit.band(value, 0x0004) ~= 0 then
    display = display.."Is Market Order User Data|"
  end
  -- Is Is Market Order Mpid flag set?
  if bit.band(value, 0x0008) ~= 0 then
    display = display.."Is Market Order Mpid|"
  end
  -- Is Is Market Order Member Group flag set?
  if bit.band(value, 0x0010) ~= 0 then
    display = display.."Is Market Order Member Group|"
  end
  -- Is Is Market Order Locate Broker flag set?
  if bit.band(value, 0x0020) ~= 0 then
    display = display.."Is Market Order Locate Broker|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Market Order Presence Bits
txse_equities_orderentry_seed_v0_1.market_order_presence_bits.bits = function(range, value, packet, parent)

  -- Is Market Order Self Match Scope: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_self_match_scope, range, value)

  -- Is Market Order Self Match Instruction: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_self_match_instruction, range, value)

  -- Is Market Order User Data: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_user_data, range, value)

  -- Is Market Order Mpid: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_mpid, range, value)

  -- Is Market Order Member Group: Str(2)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_member_group, range, value)

  -- Is Market Order Locate Broker: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_market_order_locate_broker, range, value)

  -- Reserved 10: 10 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_10, range, value)
end

-- Dissect: Market Order Presence Bits
txse_equities_orderentry_seed_v0_1.market_order_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.market_order_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.market_order_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.market_order_presence_bits, range, display)

  if show.market_order_presence_bits then
    txse_equities_orderentry_seed_v0_1.market_order_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Market Order Message
txse_equities_orderentry_seed_v0_1.market_order_message = {}

-- Read runtime size of: Market Order Message
txse_equities_orderentry_seed_v0_1.market_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):le_uint()

  return message_length - 2
end

-- Display: Market Order Message
txse_equities_orderentry_seed_v0_1.market_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Order Message
txse_equities_orderentry_seed_v0_1.market_order_message.fields = function(buffer, offset, packet, parent, size_of_market_order_message)
  local index = offset

  -- Market Order Presence Bits: Struct of 7 fields
  index, market_order_presence_bits = txse_equities_orderentry_seed_v0_1.market_order_presence_bits.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Int
  index, order_qty = txse_equities_orderentry_seed_v0_1.order_qty.dissect(buffer, index, packet, parent)

  -- Market Order Bit Fields: Struct of 5 fields
  index, market_order_bit_fields = txse_equities_orderentry_seed_v0_1.market_order_bit_fields.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_equities_orderentry_seed_v0_1.symbol_id.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Self Match Scope
  local self_match_scope = nil

  local self_match_scope_exists = bit.band(market_order_presence_bits, 0x0001) ~= 0

  if self_match_scope_exists then
    index, self_match_scope = txse_equities_orderentry_seed_v0_1.self_match_scope.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Self Match Instruction
  local self_match_instruction = nil

  local self_match_instruction_exists = bit.band(market_order_presence_bits, 0x0002) ~= 0

  if self_match_instruction_exists then
    index, self_match_instruction = txse_equities_orderentry_seed_v0_1.self_match_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: User Data
  local user_data = nil

  local user_data_exists = bit.band(market_order_presence_bits, 0x0004) ~= 0

  if user_data_exists then
    index, user_data = txse_equities_orderentry_seed_v0_1.user_data.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mpid
  local mpid = nil

  local mpid_exists = bit.band(market_order_presence_bits, 0x0008) ~= 0

  if mpid_exists then
    index, mpid = txse_equities_orderentry_seed_v0_1.mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Member Group
  local member_group = nil

  local member_group_exists = bit.band(market_order_presence_bits, 0x0010) ~= 0

  if member_group_exists then
    index, member_group = txse_equities_orderentry_seed_v0_1.member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = bit.band(market_order_presence_bits, 0x0020) ~= 0

  if locate_broker_exists then
    index, locate_broker = txse_equities_orderentry_seed_v0_1.locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Market Order Message
txse_equities_orderentry_seed_v0_1.market_order_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_order_message = txse_equities_orderentry_seed_v0_1.market_order_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_order_message then
    local range = buffer(offset, size_of_market_order_message)
    local display = txse_equities_orderentry_seed_v0_1.market_order_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.market_order_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.market_order_message.fields(buffer, offset, packet, parent, size_of_market_order_message)

  return offset + size_of_market_order_message
end

-- Limit Order Presence Bits
txse_equities_orderentry_seed_v0_1.limit_order_presence_bits = {}

-- Size: Limit Order Presence Bits
txse_equities_orderentry_seed_v0_1.limit_order_presence_bits.size = 4

-- Display: Limit Order Presence Bits
txse_equities_orderentry_seed_v0_1.limit_order_presence_bits.display = function(range, value, packet, parent)
  local display = ""

  -- Is Is Limit Order Self Match Scope flag set?
  if bit.band(value, 0x00000001) ~= 0 then
    display = display.."Is Limit Order Self Match Scope|"
  end
  -- Is Is Limit Order Self Match Instruction flag set?
  if bit.band(value, 0x00000002) ~= 0 then
    display = display.."Is Limit Order Self Match Instruction|"
  end
  -- Is Is Limit Order Price Slide Instruction flag set?
  if bit.band(value, 0x00000004) ~= 0 then
    display = display.."Is Limit Order Price Slide Instruction|"
  end
  -- Is Is Limit Order Min Qty flag set?
  if bit.band(value, 0x00000008) ~= 0 then
    display = display.."Is Limit Order Min Qty|"
  end
  -- Is Is Limit Order Max Floor Qty flag set?
  if bit.band(value, 0x00000010) ~= 0 then
    display = display.."Is Limit Order Max Floor Qty|"
  end
  -- Is Is Limit Order Max Replenish Qty Range flag set?
  if bit.band(value, 0x00000020) ~= 0 then
    display = display.."Is Limit Order Max Replenish Qty Range|"
  end
  -- Is Is Limit Order Max Replenish Time Range flag set?
  if bit.band(value, 0x00000040) ~= 0 then
    display = display.."Is Limit Order Max Replenish Time Range|"
  end
  -- Is Is Limit Order Reference Price Target flag set?
  if bit.band(value, 0x00000080) ~= 0 then
    display = display.."Is Limit Order Reference Price Target|"
  end
  -- Is Is Limit Order Expire Time flag set?
  if bit.band(value, 0x00000100) ~= 0 then
    display = display.."Is Limit Order Expire Time|"
  end
  -- Is Is Limit Order User Data flag set?
  if bit.band(value, 0x00000200) ~= 0 then
    display = display.."Is Limit Order User Data|"
  end
  -- Is Is Limit Order Mpid flag set?
  if bit.band(value, 0x00000400) ~= 0 then
    display = display.."Is Limit Order Mpid|"
  end
  -- Is Is Limit Order Member Group flag set?
  if bit.band(value, 0x00000800) ~= 0 then
    display = display.."Is Limit Order Member Group|"
  end
  -- Is Is Limit Order Locate Broker flag set?
  if bit.band(value, 0x00001000) ~= 0 then
    display = display.."Is Limit Order Locate Broker|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Limit Order Presence Bits
txse_equities_orderentry_seed_v0_1.limit_order_presence_bits.bits = function(range, value, packet, parent)

  -- Is Limit Order Self Match Scope: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_self_match_scope, range, value)

  -- Is Limit Order Self Match Instruction: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_self_match_instruction, range, value)

  -- Is Limit Order Price Slide Instruction: Enum
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_price_slide_instruction, range, value)

  -- Is Limit Order Min Qty: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_min_qty, range, value)

  -- Is Limit Order Max Floor Qty: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_max_floor_qty, range, value)

  -- Is Limit Order Max Replenish Qty Range: Int
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_max_replenish_qty_range, range, value)

  -- Is Limit Order Max Replenish Time Range: Duration
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_max_replenish_time_range, range, value)

  -- Is Limit Order Reference Price Target: Short
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_reference_price_target, range, value)

  -- Is Limit Order Expire Time: TimeStamp
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_expire_time, range, value)

  -- Is Limit Order User Data: Long
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_user_data, range, value)

  -- Is Limit Order Mpid: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_mpid, range, value)

  -- Is Limit Order Member Group: Str(2)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_member_group, range, value)

  -- Is Limit Order Locate Broker: Str(4)
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.is_limit_order_locate_broker, range, value)

  -- Reserved 19: 19 Bit
  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.reserved_19, range, value)
end

-- Dissect: Limit Order Presence Bits
txse_equities_orderentry_seed_v0_1.limit_order_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_equities_orderentry_seed_v0_1.limit_order_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.limit_order_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.limit_order_presence_bits, range, display)

  if show.limit_order_presence_bits then
    txse_equities_orderentry_seed_v0_1.limit_order_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Limit Order Message
txse_equities_orderentry_seed_v0_1.limit_order_message = {}

-- Read runtime size of: Limit Order Message
txse_equities_orderentry_seed_v0_1.limit_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):le_uint()

  return message_length - 2
end

-- Display: Limit Order Message
txse_equities_orderentry_seed_v0_1.limit_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Order Message
txse_equities_orderentry_seed_v0_1.limit_order_message.fields = function(buffer, offset, packet, parent, size_of_limit_order_message)
  local index = offset

  -- Limit Order Presence Bits: Struct of 14 fields
  index, limit_order_presence_bits = txse_equities_orderentry_seed_v0_1.limit_order_presence_bits.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_equities_orderentry_seed_v0_1.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Int
  index, order_qty = txse_equities_orderentry_seed_v0_1.order_qty.dissect(buffer, index, packet, parent)

  -- Limit Order Bit Fields: Struct of 9 fields
  index, limit_order_bit_fields = txse_equities_orderentry_seed_v0_1.limit_order_bit_fields.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_equities_orderentry_seed_v0_1.symbol_id.dissect(buffer, index, packet, parent)

  -- Price: Long
  index, price = txse_equities_orderentry_seed_v0_1.price.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Self Match Scope
  local self_match_scope = nil

  local self_match_scope_exists = bit.band(limit_order_presence_bits, 0x00000001) ~= 0

  if self_match_scope_exists then
    index, self_match_scope = txse_equities_orderentry_seed_v0_1.self_match_scope.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Self Match Instruction
  local self_match_instruction = nil

  local self_match_instruction_exists = bit.band(limit_order_presence_bits, 0x00000002) ~= 0

  if self_match_instruction_exists then
    index, self_match_instruction = txse_equities_orderentry_seed_v0_1.self_match_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price Slide Instruction
  local price_slide_instruction = nil

  local price_slide_instruction_exists = bit.band(limit_order_presence_bits, 0x00000004) ~= 0

  if price_slide_instruction_exists then
    index, price_slide_instruction = txse_equities_orderentry_seed_v0_1.price_slide_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = bit.band(limit_order_presence_bits, 0x00000008) ~= 0

  if min_qty_exists then
    index, min_qty = txse_equities_orderentry_seed_v0_1.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor Qty
  local max_floor_qty = nil

  local max_floor_qty_exists = bit.band(limit_order_presence_bits, 0x00000010) ~= 0

  if max_floor_qty_exists then
    index, max_floor_qty = txse_equities_orderentry_seed_v0_1.max_floor_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Replenish Qty Range
  local max_replenish_qty_range = nil

  local max_replenish_qty_range_exists = bit.band(limit_order_presence_bits, 0x00000020) ~= 0

  if max_replenish_qty_range_exists then
    index, max_replenish_qty_range = txse_equities_orderentry_seed_v0_1.max_replenish_qty_range.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Replenish Time Range
  local max_replenish_time_range = nil

  local max_replenish_time_range_exists = bit.band(limit_order_presence_bits, 0x00000040) ~= 0

  if max_replenish_time_range_exists then
    index, max_replenish_time_range = txse_equities_orderentry_seed_v0_1.max_replenish_time_range.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Reference Price Target
  local reference_price_target = nil

  local reference_price_target_exists = bit.band(limit_order_presence_bits, 0x00000080) ~= 0

  if reference_price_target_exists then
    index, reference_price_target = txse_equities_orderentry_seed_v0_1.reference_price_target.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = bit.band(limit_order_presence_bits, 0x00000100) ~= 0

  if expire_time_exists then
    index, expire_time = txse_equities_orderentry_seed_v0_1.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: User Data
  local user_data = nil

  local user_data_exists = bit.band(limit_order_presence_bits, 0x00000200) ~= 0

  if user_data_exists then
    index, user_data = txse_equities_orderentry_seed_v0_1.user_data.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mpid
  local mpid = nil

  local mpid_exists = bit.band(limit_order_presence_bits, 0x00000400) ~= 0

  if mpid_exists then
    index, mpid = txse_equities_orderentry_seed_v0_1.mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Member Group
  local member_group = nil

  local member_group_exists = bit.band(limit_order_presence_bits, 0x00000800) ~= 0

  if member_group_exists then
    index, member_group = txse_equities_orderentry_seed_v0_1.member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Broker
  local locate_broker = nil

  local locate_broker_exists = bit.band(limit_order_presence_bits, 0x00001000) ~= 0

  if locate_broker_exists then
    index, locate_broker = txse_equities_orderentry_seed_v0_1.locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Limit Order Message
txse_equities_orderentry_seed_v0_1.limit_order_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_limit_order_message = txse_equities_orderentry_seed_v0_1.limit_order_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.limit_order_message then
    local range = buffer(offset, size_of_limit_order_message)
    local display = txse_equities_orderentry_seed_v0_1.limit_order_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.limit_order_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.limit_order_message.fields(buffer, offset, packet, parent, size_of_limit_order_message)

  return offset + size_of_limit_order_message
end

-- Unsequenced Message
txse_equities_orderentry_seed_v0_1.unsequenced_message = {}

-- Size: Unsequenced Message
txse_equities_orderentry_seed_v0_1.unsequenced_message.size = function(buffer, offset, unsequenced_message_type)
  -- Size of Limit Order Message
  if unsequenced_message_type == 76 then
    return txse_equities_orderentry_seed_v0_1.limit_order_message.size(buffer, offset)
  end
  -- Size of Market Order Message
  if unsequenced_message_type == 65 then
    return txse_equities_orderentry_seed_v0_1.market_order_message.size(buffer, offset)
  end
  -- Size of Cancel Order Message
  if unsequenced_message_type == 67 then
    return txse_equities_orderentry_seed_v0_1.cancel_order_message.size(buffer, offset)
  end
  -- Size of Replace Order Message
  if unsequenced_message_type == 82 then
    return txse_equities_orderentry_seed_v0_1.replace_order_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Message
  if unsequenced_message_type == 86 then
    return txse_equities_orderentry_seed_v0_1.mass_cancel_message.size(buffer, offset)
  end

  return 0
end

-- Display: Unsequenced Message
txse_equities_orderentry_seed_v0_1.unsequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Unsequenced Message
txse_equities_orderentry_seed_v0_1.unsequenced_message.branches = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Limit Order Message
  if unsequenced_message_type == 76 then
    return txse_equities_orderentry_seed_v0_1.limit_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Order Message
  if unsequenced_message_type == 65 then
    return txse_equities_orderentry_seed_v0_1.market_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if unsequenced_message_type == 67 then
    return txse_equities_orderentry_seed_v0_1.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if unsequenced_message_type == 82 then
    return txse_equities_orderentry_seed_v0_1.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Message
  if unsequenced_message_type == 86 then
    return txse_equities_orderentry_seed_v0_1.mass_cancel_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Unsequenced Message
txse_equities_orderentry_seed_v0_1.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  if not show.unsequenced_message then
    return txse_equities_orderentry_seed_v0_1.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = txse_equities_orderentry_seed_v0_1.unsequenced_message.size(buffer, offset, unsequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = txse_equities_orderentry_seed_v0_1.unsequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.unsequenced_message, range, display)

  return txse_equities_orderentry_seed_v0_1.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
end

-- Unsequenced Message Type
txse_equities_orderentry_seed_v0_1.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
txse_equities_orderentry_seed_v0_1.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
txse_equities_orderentry_seed_v0_1.unsequenced_message_type.display = function(value)
  if value == 76 then
    return "Unsequenced Message Type: Limit Order Message (76)"
  end
  if value == 65 then
    return "Unsequenced Message Type: Market Order Message (65)"
  end
  if value == 67 then
    return "Unsequenced Message Type: Cancel Order Message (67)"
  end
  if value == 77 then
    return "Unsequenced Message Type: Modify Order Message (77)"
  end
  if value == 82 then
    return "Unsequenced Message Type: Replace Order Message (82)"
  end
  if value == 86 then
    return "Unsequenced Message Type: Mass Cancel Message (86)"
  end

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
txse_equities_orderentry_seed_v0_1.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_equities_orderentry_seed_v0_1.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Tcp Unsequenced Message
txse_equities_orderentry_seed_v0_1.tcp_unsequenced_message = {}

-- Read runtime size of: Tcp Unsequenced Message
txse_equities_orderentry_seed_v0_1.tcp_unsequenced_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  return message_length - 1
end

-- Display: Tcp Unsequenced Message
txse_equities_orderentry_seed_v0_1.tcp_unsequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Unsequenced Message
txse_equities_orderentry_seed_v0_1.tcp_unsequenced_message.fields = function(buffer, offset, packet, parent, size_of_tcp_unsequenced_message)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, unsequenced_message_type = txse_equities_orderentry_seed_v0_1.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 5 branches
  index = txse_equities_orderentry_seed_v0_1.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Tcp Unsequenced Message
txse_equities_orderentry_seed_v0_1.tcp_unsequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_tcp_unsequenced_message = txse_equities_orderentry_seed_v0_1.tcp_unsequenced_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.tcp_unsequenced_message then
    local range = buffer(offset, size_of_tcp_unsequenced_message)
    local display = txse_equities_orderentry_seed_v0_1.tcp_unsequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.tcp_unsequenced_message, range, display)
  end

  txse_equities_orderentry_seed_v0_1.tcp_unsequenced_message.fields(buffer, offset, packet, parent, size_of_tcp_unsequenced_message)

  return offset + size_of_tcp_unsequenced_message
end

-- Requested Sequence Number
txse_equities_orderentry_seed_v0_1.requested_sequence_number = {}

-- Size: Requested Sequence Number
txse_equities_orderentry_seed_v0_1.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
txse_equities_orderentry_seed_v0_1.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
txse_equities_orderentry_seed_v0_1.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_equities_orderentry_seed_v0_1.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Member Token
txse_equities_orderentry_seed_v0_1.member_token = {}

-- Size: Member Token
txse_equities_orderentry_seed_v0_1.member_token.size = 8

-- Display: Member Token
txse_equities_orderentry_seed_v0_1.member_token.display = function(value)
  return "Member Token: "..value
end

-- Dissect: Member Token
txse_equities_orderentry_seed_v0_1.member_token.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.member_token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = txse_equities_orderentry_seed_v0_1.member_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.member_token, range, value, display)

  return offset + length, value
end

-- Logon Request Packet
txse_equities_orderentry_seed_v0_1.logon_request_packet = {}

-- Size: Logon Request Packet
txse_equities_orderentry_seed_v0_1.logon_request_packet.size =
  txse_equities_orderentry_seed_v0_1.session.size + 
  txse_equities_orderentry_seed_v0_1.sender_comp.size + 
  txse_equities_orderentry_seed_v0_1.member_token.size + 
  txse_equities_orderentry_seed_v0_1.requested_sequence_number.size

-- Display: Logon Request Packet
txse_equities_orderentry_seed_v0_1.logon_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Request Packet
txse_equities_orderentry_seed_v0_1.logon_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 8 Byte Unsigned Fixed Width Integer
  index, session = txse_equities_orderentry_seed_v0_1.session.dissect(buffer, index, packet, parent)

  -- Sender Comp: Str(8)
  index, sender_comp = txse_equities_orderentry_seed_v0_1.sender_comp.dissect(buffer, index, packet, parent)

  -- Member Token: 8 Byte Ascii String
  index, member_token = txse_equities_orderentry_seed_v0_1.member_token.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = txse_equities_orderentry_seed_v0_1.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Request Packet
txse_equities_orderentry_seed_v0_1.logon_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.logon_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.logon_request_packet, buffer(offset, 0))
    local index = txse_equities_orderentry_seed_v0_1.logon_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_equities_orderentry_seed_v0_1.logon_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_equities_orderentry_seed_v0_1.logon_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
txse_equities_orderentry_seed_v0_1.payload = {}

-- Size: Payload
txse_equities_orderentry_seed_v0_1.payload.size = function(buffer, offset, packet_type)
  -- Size of Logon Request Packet
  if packet_type == 53 then
    return txse_equities_orderentry_seed_v0_1.logon_request_packet.size
  end
  -- Size of Tcp Unsequenced Message
  if packet_type == 54 then
    return txse_equities_orderentry_seed_v0_1.tcp_unsequenced_message.size(buffer, offset)
  end
  -- Size of Debug Message
  if packet_type == 48 then
    return txse_equities_orderentry_seed_v0_1.debug_message.size(buffer, offset)
  end
  -- Size of End Of Session Message
  if packet_type == 52 then
    return 0
  end
  -- Size of Logon Response Message
  if packet_type == 49 then
    return txse_equities_orderentry_seed_v0_1.logon_response_message.size
  end
  -- Size of Tcp Sequenced Message
  if packet_type == 50 then
    return txse_equities_orderentry_seed_v0_1.tcp_sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
txse_equities_orderentry_seed_v0_1.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
txse_equities_orderentry_seed_v0_1.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Logon Request Packet
  if packet_type == 53 then
    return txse_equities_orderentry_seed_v0_1.logon_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tcp Unsequenced Message
  if packet_type == 54 then
    return txse_equities_orderentry_seed_v0_1.tcp_unsequenced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Debug Message
  if packet_type == 48 then
    return txse_equities_orderentry_seed_v0_1.debug_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if packet_type == 52 then
  end
  -- Dissect Logon Response Message
  if packet_type == 49 then
    return txse_equities_orderentry_seed_v0_1.logon_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tcp Sequenced Message
  if packet_type == 50 then
    return txse_equities_orderentry_seed_v0_1.tcp_sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
txse_equities_orderentry_seed_v0_1.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return txse_equities_orderentry_seed_v0_1.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = txse_equities_orderentry_seed_v0_1.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = txse_equities_orderentry_seed_v0_1.payload.display(buffer, packet, parent)
  local element = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.payload, range, display)

  return txse_equities_orderentry_seed_v0_1.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Packet Type
txse_equities_orderentry_seed_v0_1.packet_type = {}

-- Size: Packet Type
txse_equities_orderentry_seed_v0_1.packet_type.size = 1

-- Display: Packet Type
txse_equities_orderentry_seed_v0_1.packet_type.display = function(value)
  if value == 53 then
    return "Packet Type: Logon Request Packet (53)"
  end
  if value == 55 then
    return "Packet Type: Member Heartbeat Packet (55)"
  end
  if value == 54 then
    return "Packet Type: Tcp Unsequenced Message (54)"
  end
  if value == 48 then
    return "Packet Type: Debug Message (48)"
  end
  if value == 52 then
    return "Packet Type: End Of Session Message (52)"
  end
  if value == 49 then
    return "Packet Type: Logon Response Message (49)"
  end
  if value == 51 then
    return "Packet Type: Server Heartbeat Message (51)"
  end
  if value == 50 then
    return "Packet Type: Tcp Sequenced Message (50)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
txse_equities_orderentry_seed_v0_1.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Message Length
txse_equities_orderentry_seed_v0_1.message_length = {}

-- Size: Message Length
txse_equities_orderentry_seed_v0_1.message_length.size = 2

-- Display: Message Length
txse_equities_orderentry_seed_v0_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
txse_equities_orderentry_seed_v0_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = txse_equities_orderentry_seed_v0_1.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = txse_equities_orderentry_seed_v0_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Rake Message Header
txse_equities_orderentry_seed_v0_1.rake_message_header = {}

-- Size: Rake Message Header
txse_equities_orderentry_seed_v0_1.rake_message_header.size =
  txse_equities_orderentry_seed_v0_1.message_length.size + 
  txse_equities_orderentry_seed_v0_1.packet_type.size

-- Display: Rake Message Header
txse_equities_orderentry_seed_v0_1.rake_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rake Message Header
txse_equities_orderentry_seed_v0_1.rake_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = txse_equities_orderentry_seed_v0_1.message_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, packet_type = txse_equities_orderentry_seed_v0_1.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rake Message Header
txse_equities_orderentry_seed_v0_1.rake_message_header.dissect = function(buffer, offset, packet, parent)
  if show.rake_message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.rake_message_header, buffer(offset, 0))
    local index = txse_equities_orderentry_seed_v0_1.rake_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_equities_orderentry_seed_v0_1.rake_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_equities_orderentry_seed_v0_1.rake_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Rake Tcp Message
txse_equities_orderentry_seed_v0_1.rake_tcp_message = {}

-- Display: Rake Tcp Message
txse_equities_orderentry_seed_v0_1.rake_tcp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rake Tcp Message
txse_equities_orderentry_seed_v0_1.rake_tcp_message.fields = function(buffer, offset, packet, parent, size_of_rake_tcp_message)
  local index = offset

  -- Rake Message Header: Struct of 2 fields
  index, rake_message_header = txse_equities_orderentry_seed_v0_1.rake_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 6 branches
  index = txse_equities_orderentry_seed_v0_1.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Rake Tcp Message
txse_equities_orderentry_seed_v0_1.rake_tcp_message.dissect = function(buffer, offset, packet, parent, size_of_rake_tcp_message)
  local index = offset + size_of_rake_tcp_message

  -- Optionally add group/struct element to protocol tree
  if show.rake_tcp_message then
    parent = parent:add(omi_txse_equities_orderentry_seed_v0_1.fields.rake_tcp_message, buffer(offset, 0))
    local current = txse_equities_orderentry_seed_v0_1.rake_tcp_message.fields(buffer, offset, packet, parent, size_of_rake_tcp_message)
    parent:set_len(size_of_rake_tcp_message)
    local display = txse_equities_orderentry_seed_v0_1.rake_tcp_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    txse_equities_orderentry_seed_v0_1.rake_tcp_message.fields(buffer, offset, packet, parent, size_of_rake_tcp_message)

    return index
  end
end

-- Remaining Bytes For: Rake Tcp Message
local rake_tcp_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < txse_equities_orderentry_seed_v0_1.rake_message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
txse_equities_orderentry_seed_v0_1.packet = {}

-- Dissect Packet
txse_equities_orderentry_seed_v0_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Rake Tcp Message
  local end_of_payload = buffer:len()

  -- Rake Tcp Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_rake_tcp_message = rake_tcp_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = txse_equities_orderentry_seed_v0_1.rake_tcp_message.dissect(buffer, index, packet, parent, size_of_rake_tcp_message)
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
function omi_txse_equities_orderentry_seed_v0_1.init()
end

-- Dissector for Txse Equities OrderEntry Seed 0.1
function omi_txse_equities_orderentry_seed_v0_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_txse_equities_orderentry_seed_v0_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_txse_equities_orderentry_seed_v0_1, buffer(), omi_txse_equities_orderentry_seed_v0_1.description, "("..buffer:len().." Bytes)")
  return txse_equities_orderentry_seed_v0_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_txse_equities_orderentry_seed_v0_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
txse_equities_orderentry_seed_v0_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Txse Equities OrderEntry Seed 0.1
local function omi_txse_equities_orderentry_seed_v0_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not txse_equities_orderentry_seed_v0_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_txse_equities_orderentry_seed_v0_1
  omi_txse_equities_orderentry_seed_v0_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Txse Equities OrderEntry Seed 0.1
omi_txse_equities_orderentry_seed_v0_1:register_heuristic("tcp", omi_txse_equities_orderentry_seed_v0_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Texas Stock Exchange
--   Version: 0.1
--   Date: Tuesday, October 14, 2025
--   Specification: 68c88735737d1ddcf556684d_fe65854075ee967706ae601601f06fb6_SEED.pdf
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
