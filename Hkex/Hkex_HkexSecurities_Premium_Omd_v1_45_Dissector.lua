-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Hkex HkexSecurities Premium Omd 1.45 Protocol
local omi_hkex_hkexsecurities_premium_omd_v1_45 = Proto("Omi.Hkex.HkexSecurities.Premium.Omd.v1.45", "Hkex HkexSecurities Premium Omd 1.45")

-- Protocol table
local hkex_hkexsecurities_premium_omd_v1_45 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Hkex HkexSecurities Premium Omd 1.45 Fields
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.accrued_interest = ProtoField.new("Accrued Interest", "hkex.hkexsecurities.premium.omd.v1.45.accruedinterest", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.aggregate_quantity = ProtoField.new("Aggregate Quantity", "hkex.hkexsecurities.premium.omd.v1.45.aggregatequantity", ftypes.UINT64)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.book_entry = ProtoField.new("Book Entry", "hkex.hkexsecurities.premium.omd.v1.45.bookentry", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.call_price = ProtoField.new("Call Price", "hkex.hkexsecurities.premium.omd.v1.45.callprice", ftypes.INT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.call_price_composite = ProtoField.new("Call Price Composite", "hkex.hkexsecurities.premium.omd.v1.45.callpricecomposite", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.call_put_flag = ProtoField.new("Call Put Flag", "hkex.hkexsecurities.premium.omd.v1.45.callputflag", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.cancel_flag = ProtoField.new("Cancel Flag", "hkex.hkexsecurities.premium.omd.v1.45.cancelflag", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.cas_flag = ProtoField.new("Cas Flag", "hkex.hkexsecurities.premium.omd.v1.45.casflag", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.ccass_flag = ProtoField.new("Ccass Flag", "hkex.hkexsecurities.premium.omd.v1.45.ccassflag", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.closing_price = ProtoField.new("Closing Price", "hkex.hkexsecurities.premium.omd.v1.45.closingprice", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.conversion_ratio = ProtoField.new("Conversion Ratio", "hkex.hkexsecurities.premium.omd.v1.45.conversionratio", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.cooling_off_end_time = ProtoField.new("Cooling Off End Time", "hkex.hkexsecurities.premium.omd.v1.45.coolingoffendtime", ftypes.UINT64)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.cooling_off_start_time = ProtoField.new("Cooling Off Start Time", "hkex.hkexsecurities.premium.omd.v1.45.coolingoffstarttime", ftypes.UINT64)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.coupon_rate = ProtoField.new("Coupon Rate", "hkex.hkexsecurities.premium.omd.v1.45.couponrate", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.currency_code = ProtoField.new("Currency Code", "hkex.hkexsecurities.premium.omd.v1.45.currencycode", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.currency_factor = ProtoField.new("Currency Factor", "hkex.hkexsecurities.premium.omd.v1.45.currencyfactor", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.currency_rate = ProtoField.new("Currency Rate", "hkex.hkexsecurities.premium.omd.v1.45.currencyrate", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.decimals_in_call_price = ProtoField.new("Decimals In Call Price", "hkex.hkexsecurities.premium.omd.v1.45.decimalsincallprice", ftypes.UINT8)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.decimals_in_entitlement = ProtoField.new("Decimals In Entitlement", "hkex.hkexsecurities.premium.omd.v1.45.decimalsinentitlement", ftypes.UINT8)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.decimals_in_face_value = ProtoField.new("Decimals In Face Value", "hkex.hkexsecurities.premium.omd.v1.45.decimalsinfacevalue", ftypes.UINT8)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.delisting_date = ProtoField.new("Delisting Date", "hkex.hkexsecurities.premium.omd.v1.45.delistingdate", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.domain_stmt_security_code = ProtoField.new("Domain Stmt Security Code", "hkex.hkexsecurities.premium.omd.v1.45.domainstmtsecuritycode", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.dr_status = ProtoField.new("Dr Status", "hkex.hkexsecurities.premium.omd.v1.45.drstatus", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.dummy_security_flag = ProtoField.new("Dummy Security Flag", "hkex.hkexsecurities.premium.omd.v1.45.dummysecurityflag", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.efn_flag = ProtoField.new("Efn Flag", "hkex.hkexsecurities.premium.omd.v1.45.efnflag", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.end_date_time = ProtoField.new("End Date Time", "hkex.hkexsecurities.premium.omd.v1.45.enddatetime", ftypes.UINT64)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.entitlement = ProtoField.new("Entitlement", "hkex.hkexsecurities.premium.omd.v1.45.entitlement", ftypes.INT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.entitlement_composite = ProtoField.new("Entitlement Composite", "hkex.hkexsecurities.premium.omd.v1.45.entitlementcomposite", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.face_value = ProtoField.new("Face Value", "hkex.hkexsecurities.premium.omd.v1.45.facevalue", ftypes.UINT64)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.face_value_composite = ProtoField.new("Face Value Composite", "hkex.hkexsecurities.premium.omd.v1.45.facevaluecomposite", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.face_value_currency = ProtoField.new("Face Value Currency", "hkex.hkexsecurities.premium.omd.v1.45.facevaluecurrency", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler = ProtoField.new("Filler", "hkex.hkexsecurities.premium.omd.v1.45.filler", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_1 = ProtoField.new("Filler 1", "hkex.hkexsecurities.premium.omd.v1.45.filler1", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_2 = ProtoField.new("Filler 2", "hkex.hkexsecurities.premium.omd.v1.45.filler2", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_3 = ProtoField.new("Filler 3", "hkex.hkexsecurities.premium.omd.v1.45.filler3", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_37 = ProtoField.new("Filler 37", "hkex.hkexsecurities.premium.omd.v1.45.filler37", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_4 = ProtoField.new("Filler 4", "hkex.hkexsecurities.premium.omd.v1.45.filler4", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_44 = ProtoField.new("Filler 44", "hkex.hkexsecurities.premium.omd.v1.45.filler44", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_62 = ProtoField.new("Filler 62", "hkex.hkexsecurities.premium.omd.v1.45.filler62", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_63 = ProtoField.new("Filler 63", "hkex.hkexsecurities.premium.omd.v1.45.filler63", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.free_text = ProtoField.new("Free Text", "hkex.hkexsecurities.premium.omd.v1.45.freetext", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.headline = ProtoField.new("Headline", "hkex.hkexsecurities.premium.omd.v1.45.headline", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.high_price = ProtoField.new("High Price", "hkex.hkexsecurities.premium.omd.v1.45.highprice", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.instrument_type = ProtoField.new("Instrument Type", "hkex.hkexsecurities.premium.omd.v1.45.instrumenttype", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.investor_type = ProtoField.new("Investor Type", "hkex.hkexsecurities.premium.omd.v1.45.investortype", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.isin_code = ProtoField.new("Isin Code", "hkex.hkexsecurities.premium.omd.v1.45.isincode", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.last_fragment = ProtoField.new("Last Fragment", "hkex.hkexsecurities.premium.omd.v1.45.lastfragment", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.last_price = ProtoField.new("Last Price", "hkex.hkexsecurities.premium.omd.v1.45.lastprice", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.liquidity_provider = ProtoField.new("Liquidity Provider", "hkex.hkexsecurities.premium.omd.v1.45.liquidityprovider", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.listing_date = ProtoField.new("Listing Date", "hkex.hkexsecurities.premium.omd.v1.45.listingdate", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.lot_size = ProtoField.new("Lot Size", "hkex.hkexsecurities.premium.omd.v1.45.lotsize", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.low_price = ProtoField.new("Low Price", "hkex.hkexsecurities.premium.omd.v1.45.lowprice", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.lower_price = ProtoField.new("Lower Price", "hkex.hkexsecurities.premium.omd.v1.45.lowerprice", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.lp_broker_number = ProtoField.new("Lp Broker Number", "hkex.hkexsecurities.premium.omd.v1.45.lpbrokernumber", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.market_code = ProtoField.new("Market Code", "hkex.hkexsecurities.premium.omd.v1.45.marketcode", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.market_name = ProtoField.new("Market Name", "hkex.hkexsecurities.premium.omd.v1.45.marketname", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.maturity_date = ProtoField.new("Maturity Date", "hkex.hkexsecurities.premium.omd.v1.45.maturitydate", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.message = ProtoField.new("Message", "hkex.hkexsecurities.premium.omd.v1.45.message", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.msg_count = ProtoField.new("Msg Count", "hkex.hkexsecurities.premium.omd.v1.45.msgcount", ftypes.UINT8)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.msg_header = ProtoField.new("Msg Header", "hkex.hkexsecurities.premium.omd.v1.45.msgheader", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.msg_size = ProtoField.new("Msg Size", "hkex.hkexsecurities.premium.omd.v1.45.msgsize", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.msg_type = ProtoField.new("Msg Type", "hkex.hkexsecurities.premium.omd.v1.45.msgtype", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.new_seq_no = ProtoField.new("New Seq No", "hkex.hkexsecurities.premium.omd.v1.45.newseqno", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_id = ProtoField.new("News Id", "hkex.hkexsecurities.premium.omd.v1.45.newsid", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_line = ProtoField.new("News Line", "hkex.hkexsecurities.premium.omd.v1.45.newsline", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_line_item = ProtoField.new("News Line Item", "hkex.hkexsecurities.premium.omd.v1.45.newslineitem", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_market = ProtoField.new("News Market", "hkex.hkexsecurities.premium.omd.v1.45.newsmarket", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_security = ProtoField.new("News Security", "hkex.hkexsecurities.premium.omd.v1.45.newssecurity", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_type = ProtoField.new("News Type", "hkex.hkexsecurities.premium.omd.v1.45.newstype", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.no_entries = ProtoField.new("No Entries", "hkex.hkexsecurities.premium.omd.v1.45.noentries", ftypes.UINT8)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.no_liquidity_providers = ProtoField.new("No Liquidity Providers", "hkex.hkexsecurities.premium.omd.v1.45.noliquidityproviders", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.no_market_codes = ProtoField.new("No Market Codes", "hkex.hkexsecurities.premium.omd.v1.45.nomarketcodes", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.no_news_lines = ProtoField.new("No News Lines", "hkex.hkexsecurities.premium.omd.v1.45.nonewslines", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.no_security_codes = ProtoField.new("No Security Codes", "hkex.hkexsecurities.premium.omd.v1.45.nosecuritycodes", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.no_underlying_securities = ProtoField.new("No Underlying Securities", "hkex.hkexsecurities.premium.omd.v1.45.nounderlyingsecurities", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.no_warrants_per_entitlement = ProtoField.new("No Warrants Per Entitlement", "hkex.hkexsecurities.premium.omd.v1.45.nowarrantsperentitlement", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.nominal_price = ProtoField.new("Nominal Price", "hkex.hkexsecurities.premium.omd.v1.45.nominalprice", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.number_of_orders = ProtoField.new("Number Of Orders", "hkex.hkexsecurities.premium.omd.v1.45.numberoforders", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.number_of_securities = ProtoField.new("Number Of Securities", "hkex.hkexsecurities.premium.omd.v1.45.numberofsecurities", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.number_of_trades = ProtoField.new("Number Of Trades", "hkex.hkexsecurities.premium.omd.v1.45.numberoftrades", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.order_imbalance_direction = ProtoField.new("Order Imbalance Direction", "hkex.hkexsecurities.premium.omd.v1.45.orderimbalancedirection", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.order_imbalance_quantity = ProtoField.new("Order Imbalance Quantity", "hkex.hkexsecurities.premium.omd.v1.45.orderimbalancequantity", ftypes.UINT64)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.packet = ProtoField.new("Packet", "hkex.hkexsecurities.premium.omd.v1.45.packet", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.packet_header = ProtoField.new("Packet Header", "hkex.hkexsecurities.premium.omd.v1.45.packetheader", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.pkt_size = ProtoField.new("Pkt Size", "hkex.hkexsecurities.premium.omd.v1.45.pktsize", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.pos_flag = ProtoField.new("Pos Flag", "hkex.hkexsecurities.premium.omd.v1.45.posflag", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.pos_lower_limit = ProtoField.new("Pos Lower Limit", "hkex.hkexsecurities.premium.omd.v1.45.poslowerlimit", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.pos_upper_limit = ProtoField.new("Pos Upper Limit", "hkex.hkexsecurities.premium.omd.v1.45.posupperlimit", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.previous_closing_price = ProtoField.new("Previous Closing Price", "hkex.hkexsecurities.premium.omd.v1.45.previousclosingprice", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.price = ProtoField.new("Price", "hkex.hkexsecurities.premium.omd.v1.45.price", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.price_level = ProtoField.new("Price Level", "hkex.hkexsecurities.premium.omd.v1.45.pricelevel", ftypes.UINT8)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.product_type = ProtoField.new("Product Type", "hkex.hkexsecurities.premium.omd.v1.45.producttype", ftypes.UINT8)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.quantity = ProtoField.new("Quantity", "hkex.hkexsecurities.premium.omd.v1.45.quantity", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.reference_price = ProtoField.new("Reference Price", "hkex.hkexsecurities.premium.omd.v1.45.referenceprice", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.release_time = ProtoField.new("Release Time", "hkex.hkexsecurities.premium.omd.v1.45.releasetime", ftypes.UINT64)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.security_code = ProtoField.new("Security Code", "hkex.hkexsecurities.premium.omd.v1.45.securitycode", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.security_name_gb = ProtoField.new("Security Name Gb", "hkex.hkexsecurities.premium.omd.v1.45.securitynamegb", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.security_name_gccs = ProtoField.new("Security Name Gccs", "hkex.hkexsecurities.premium.omd.v1.45.securitynamegccs", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.security_short_name = ProtoField.new("Security Short Name", "hkex.hkexsecurities.premium.omd.v1.45.securityshortname", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.send_time = ProtoField.new("Send Time", "hkex.hkexsecurities.premium.omd.v1.45.sendtime", ftypes.UINT64)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.seq_num = ProtoField.new("Seq Num", "hkex.hkexsecurities.premium.omd.v1.45.seqnum", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.shares_traded = ProtoField.new("Shares Traded", "hkex.hkexsecurities.premium.omd.v1.45.sharestraded", ftypes.UINT64)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.short_sell_flag = ProtoField.new("Short Sell Flag", "hkex.hkexsecurities.premium.omd.v1.45.shortsellflag", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.short_sell_shares_traded = ProtoField.new("Short Sell Shares Traded", "hkex.hkexsecurities.premium.omd.v1.45.shortsellsharestraded", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.short_sell_turnover = ProtoField.new("Short Sell Turnover", "hkex.hkexsecurities.premium.omd.v1.45.shortsellturnover", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.side = ProtoField.new("Side", "hkex.hkexsecurities.premium.omd.v1.45.side", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.spread_table_code = ProtoField.new("Spread Table Code", "hkex.hkexsecurities.premium.omd.v1.45.spreadtablecode", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.stamp_duty_flag = ProtoField.new("Stamp Duty Flag", "hkex.hkexsecurities.premium.omd.v1.45.stampdutyflag", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.start_date_time = ProtoField.new("Start Date Time", "hkex.hkexsecurities.premium.omd.v1.45.startdatetime", ftypes.UINT64)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.strike_price_1 = ProtoField.new("Strike Price 1", "hkex.hkexsecurities.premium.omd.v1.45.strikeprice1", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.strike_price_2 = ProtoField.new("Strike Price 2", "hkex.hkexsecurities.premium.omd.v1.45.strikeprice2", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.style = ProtoField.new("Style", "hkex.hkexsecurities.premium.omd.v1.45.style", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.suspension_indicator = ProtoField.new("Suspension Indicator", "hkex.hkexsecurities.premium.omd.v1.45.suspensionindicator", ftypes.UINT8)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trade_id = ProtoField.new("Trade Id", "hkex.hkexsecurities.premium.omd.v1.45.tradeid", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trade_time = ProtoField.new("Trade Time", "hkex.hkexsecurities.premium.omd.v1.45.tradetime", ftypes.UINT64)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trading_ses_control_flag = ProtoField.new("Trading Ses Control Flag", "hkex.hkexsecurities.premium.omd.v1.45.tradingsescontrolflag", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trading_ses_status = ProtoField.new("Trading Ses Status", "hkex.hkexsecurities.premium.omd.v1.45.tradingsesstatus", ftypes.UINT8)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "hkex.hkexsecurities.premium.omd.v1.45.tradingsessionsubid", ftypes.UINT8)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trd_type = ProtoField.new("Trd Type", "hkex.hkexsecurities.premium.omd.v1.45.trdtype", ftypes.INT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.turnover = ProtoField.new("Turnover", "hkex.hkexsecurities.premium.omd.v1.45.turnover", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.underlying_security = ProtoField.new("Underlying Security", "hkex.hkexsecurities.premium.omd.v1.45.underlyingsecurity", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.underlying_security_code = ProtoField.new("Underlying Security Code", "hkex.hkexsecurities.premium.omd.v1.45.underlyingsecuritycode", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.update_action = ProtoField.new("Update Action", "hkex.hkexsecurities.premium.omd.v1.45.updateaction", ftypes.UINT8)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.upper_price = ProtoField.new("Upper Price", "hkex.hkexsecurities.premium.omd.v1.45.upperprice", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.vcm_flag = ProtoField.new("Vcm Flag", "hkex.hkexsecurities.premium.omd.v1.45.vcmflag", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.vcm_lower_price = ProtoField.new("Vcm Lower Price", "hkex.hkexsecurities.premium.omd.v1.45.vcmlowerprice", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.vcm_reference_price = ProtoField.new("Vcm Reference Price", "hkex.hkexsecurities.premium.omd.v1.45.vcmreferenceprice", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.vcm_upper_price = ProtoField.new("Vcm Upper Price", "hkex.hkexsecurities.premium.omd.v1.45.vcmupperprice", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.vwap = ProtoField.new("Vwap", "hkex.hkexsecurities.premium.omd.v1.45.vwap", ftypes.DOUBLE)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.warrant_maturity_date = ProtoField.new("Warrant Maturity Date", "hkex.hkexsecurities.premium.omd.v1.45.warrantmaturitydate", ftypes.UINT32)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.warrant_type = ProtoField.new("Warrant Type", "hkex.hkexsecurities.premium.omd.v1.45.warranttype", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.yield = ProtoField.new("Yield", "hkex.hkexsecurities.premium.omd.v1.45.yield", ftypes.DOUBLE)

-- Hkex HkexSecurities Omd Premium 1.45 Application Messages
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.aggregate_order_book_update_message = ProtoField.new("Aggregate Order Book Update Message", "hkex.hkexsecurities.premium.omd.v1.45.aggregateorderbookupdatemessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.closing_price_message = ProtoField.new("Closing Price Message", "hkex.hkexsecurities.premium.omd.v1.45.closingpricemessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.currency_rate_message = ProtoField.new("Currency Rate Message", "hkex.hkexsecurities.premium.omd.v1.45.currencyratemessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.disaster_recovery_signal_message = ProtoField.new("Disaster Recovery Signal Message", "hkex.hkexsecurities.premium.omd.v1.45.disasterrecoverysignalmessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.indicative_equilibrium_price_message = ProtoField.new("Indicative Equilibrium Price Message", "hkex.hkexsecurities.premium.omd.v1.45.indicativeequilibriumpricemessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.liquidity_provider_message = ProtoField.new("Liquidity Provider Message", "hkex.hkexsecurities.premium.omd.v1.45.liquidityprovidermessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.market_definition_message = ProtoField.new("Market Definition Message", "hkex.hkexsecurities.premium.omd.v1.45.marketdefinitionmessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.market_turnover_message = ProtoField.new("Market Turnover Message", "hkex.hkexsecurities.premium.omd.v1.45.marketturnovermessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_message = ProtoField.new("News Message", "hkex.hkexsecurities.premium.omd.v1.45.newsmessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.nominal_price_message = ProtoField.new("Nominal Price Message", "hkex.hkexsecurities.premium.omd.v1.45.nominalpricemessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.order_imbalance_message = ProtoField.new("Order Imbalance Message", "hkex.hkexsecurities.premium.omd.v1.45.orderimbalancemessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.reference_price_message = ProtoField.new("Reference Price Message", "hkex.hkexsecurities.premium.omd.v1.45.referencepricemessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.security_definition_message = ProtoField.new("Security Definition Message", "hkex.hkexsecurities.premium.omd.v1.45.securitydefinitionmessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.security_status_message = ProtoField.new("Security Status Message", "hkex.hkexsecurities.premium.omd.v1.45.securitystatusmessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "hkex.hkexsecurities.premium.omd.v1.45.sequenceresetmessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.statistics_message = ProtoField.new("Statistics Message", "hkex.hkexsecurities.premium.omd.v1.45.statisticsmessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "hkex.hkexsecurities.premium.omd.v1.45.tradecancelmessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trade_message = ProtoField.new("Trade Message", "hkex.hkexsecurities.premium.omd.v1.45.trademessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "hkex.hkexsecurities.premium.omd.v1.45.tradingsessionstatusmessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.vcm_trigger_message = ProtoField.new("Vcm Trigger Message", "hkex.hkexsecurities.premium.omd.v1.45.vcmtriggermessage", ftypes.STRING)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.yield_message = ProtoField.new("Yield Message", "hkex.hkexsecurities.premium.omd.v1.45.yieldmessage", ftypes.STRING)

-- Hkex HkexSecurities Premium Omd 1.45 generated fields
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.book_entry_index = ProtoField.new("Book Entry Index", "hkex.hkexsecurities.premium.omd.v1.45.bookentryindex", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.liquidity_provider_index = ProtoField.new("Liquidity Provider Index", "hkex.hkexsecurities.premium.omd.v1.45.liquidityproviderindex", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.message_index = ProtoField.new("Message Index", "hkex.hkexsecurities.premium.omd.v1.45.messageindex", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_line_item_index = ProtoField.new("News Line Item Index", "hkex.hkexsecurities.premium.omd.v1.45.newslineitemindex", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_market_index = ProtoField.new("News Market Index", "hkex.hkexsecurities.premium.omd.v1.45.newsmarketindex", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_security_index = ProtoField.new("News Security Index", "hkex.hkexsecurities.premium.omd.v1.45.newssecurityindex", ftypes.UINT16)
omi_hkex_hkexsecurities_premium_omd_v1_45.fields.underlying_security_index = ProtoField.new("Underlying Security Index", "hkex.hkexsecurities.premium.omd.v1.45.underlyingsecurityindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Hkex HkexSecurities Premium Omd 1.45 Element Dissection Options
show.application_messages = true
show.repeating_groups = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Hkex HkexSecurities Premium Omd 1.45 Show Options
omi_hkex_hkexsecurities_premium_omd_v1_45.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_hkex_hkexsecurities_premium_omd_v1_45.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_hkex_hkexsecurities_premium_omd_v1_45.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_hkex_hkexsecurities_premium_omd_v1_45.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_hkex_hkexsecurities_premium_omd_v1_45.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")


-- Handle changed preferences
function omi_hkex_hkexsecurities_premium_omd_v1_45.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_hkex_hkexsecurities_premium_omd_v1_45.prefs.show_application_messages then
    show.application_messages = omi_hkex_hkexsecurities_premium_omd_v1_45.prefs.show_application_messages
  end
  if show.headers ~= omi_hkex_hkexsecurities_premium_omd_v1_45.prefs.show_headers then
    show.headers = omi_hkex_hkexsecurities_premium_omd_v1_45.prefs.show_headers
  end
  if show.repeating_groups ~= omi_hkex_hkexsecurities_premium_omd_v1_45.prefs.show_repeating_groups then
    show.repeating_groups = omi_hkex_hkexsecurities_premium_omd_v1_45.prefs.show_repeating_groups
  end
  if show.structs ~= omi_hkex_hkexsecurities_premium_omd_v1_45.prefs.show_structs then
    show.structs = omi_hkex_hkexsecurities_premium_omd_v1_45.prefs.show_structs
  end
  if show.indexes ~= omi_hkex_hkexsecurities_premium_omd_v1_45.prefs.show_indexes then
    show.indexes = omi_hkex_hkexsecurities_premium_omd_v1_45.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Hkex HkexSecurities Premium Omd 1.45 Fields
-----------------------------------------------------------------------

-- Accrued Interest
hkex_hkexsecurities_premium_omd_v1_45.accrued_interest = {}

-- Size: Accrued Interest
hkex_hkexsecurities_premium_omd_v1_45.accrued_interest.size = 4

-- Display: Accrued Interest
hkex_hkexsecurities_premium_omd_v1_45.accrued_interest.display = function(value)
  return "Accrued Interest: "..value
end

-- Translate: Accrued Interest
hkex_hkexsecurities_premium_omd_v1_45.accrued_interest.translate = function(raw)
  return raw/1000
end

-- Dissect: Accrued Interest
hkex_hkexsecurities_premium_omd_v1_45.accrued_interest.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.accrued_interest.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = hkex_hkexsecurities_premium_omd_v1_45.accrued_interest.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.accrued_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.accrued_interest, range, value, display)

  return offset + length, value
end

-- Aggregate Quantity
hkex_hkexsecurities_premium_omd_v1_45.aggregate_quantity = {}

-- Size: Aggregate Quantity
hkex_hkexsecurities_premium_omd_v1_45.aggregate_quantity.size = 8

-- Display: Aggregate Quantity
hkex_hkexsecurities_premium_omd_v1_45.aggregate_quantity.display = function(value)
  return "Aggregate Quantity: "..value
end

-- Dissect: Aggregate Quantity
hkex_hkexsecurities_premium_omd_v1_45.aggregate_quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.aggregate_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_premium_omd_v1_45.aggregate_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.aggregate_quantity, range, value, display)

  return offset + length, value
end

-- Call Price
hkex_hkexsecurities_premium_omd_v1_45.call_price = {}

-- Size: Call Price
hkex_hkexsecurities_premium_omd_v1_45.call_price.size = 4

-- Display: Call Price
hkex_hkexsecurities_premium_omd_v1_45.call_price.display = function(value)
  return "Call Price: "..value
end

-- Dissect: Call Price
hkex_hkexsecurities_premium_omd_v1_45.call_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.call_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_hkexsecurities_premium_omd_v1_45.call_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.call_price, range, value, display)

  return offset + length, value
end

-- Call Put Flag
hkex_hkexsecurities_premium_omd_v1_45.call_put_flag = {}

-- Size: Call Put Flag
hkex_hkexsecurities_premium_omd_v1_45.call_put_flag.size = 1

-- Display: Call Put Flag
hkex_hkexsecurities_premium_omd_v1_45.call_put_flag.display = function(value)
  if value == "C" then
    return "Call Put Flag: Call Or Bull (C)"
  end
  if value == "P" then
    return "Call Put Flag: Put Or Bear Range (P)"
  end
  if value == "O" then
    return "Call Put Flag: Others (O)"
  end

  return "Call Put Flag: Unknown("..value..")"
end

-- Dissect: Call Put Flag
hkex_hkexsecurities_premium_omd_v1_45.call_put_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.call_put_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.call_put_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.call_put_flag, range, value, display)

  return offset + length, value
end

-- Cancel Flag
hkex_hkexsecurities_premium_omd_v1_45.cancel_flag = {}

-- Size: Cancel Flag
hkex_hkexsecurities_premium_omd_v1_45.cancel_flag.size = 1

-- Display: Cancel Flag
hkex_hkexsecurities_premium_omd_v1_45.cancel_flag.display = function(value)
  if value == "Y" then
    return "Cancel Flag: Cancelled (Y)"
  end
  if value == "N" then
    return "Cancel Flag: Not Cancelled (N)"
  end

  return "Cancel Flag: Unknown("..value..")"
end

-- Dissect: Cancel Flag
hkex_hkexsecurities_premium_omd_v1_45.cancel_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.cancel_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.cancel_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.cancel_flag, range, value, display)

  return offset + length, value
end

-- Cas Flag
hkex_hkexsecurities_premium_omd_v1_45.cas_flag = {}

-- Size: Cas Flag
hkex_hkexsecurities_premium_omd_v1_45.cas_flag.size = 1

-- Display: Cas Flag
hkex_hkexsecurities_premium_omd_v1_45.cas_flag.display = function(value)
  if value == "Y" then
    return "Cas Flag: Cas Applicable (Y)"
  end
  if value == "N" then
    return "Cas Flag: Cas Not Applicable (N)"
  end

  return "Cas Flag: Unknown("..value..")"
end

-- Dissect: Cas Flag
hkex_hkexsecurities_premium_omd_v1_45.cas_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.cas_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.cas_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.cas_flag, range, value, display)

  return offset + length, value
end

-- Ccass Flag
hkex_hkexsecurities_premium_omd_v1_45.ccass_flag = {}

-- Size: Ccass Flag
hkex_hkexsecurities_premium_omd_v1_45.ccass_flag.size = 1

-- Display: Ccass Flag
hkex_hkexsecurities_premium_omd_v1_45.ccass_flag.display = function(value)
  if value == "Y" then
    return "Ccass Flag: Ccass Security (Y)"
  end
  if value == "N" then
    return "Ccass Flag: Non Ccass Security (N)"
  end

  return "Ccass Flag: Unknown("..value..")"
end

-- Dissect: Ccass Flag
hkex_hkexsecurities_premium_omd_v1_45.ccass_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.ccass_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.ccass_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.ccass_flag, range, value, display)

  return offset + length, value
end

-- Closing Price
hkex_hkexsecurities_premium_omd_v1_45.closing_price = {}

-- Size: Closing Price
hkex_hkexsecurities_premium_omd_v1_45.closing_price.size = 4

-- Display: Closing Price
hkex_hkexsecurities_premium_omd_v1_45.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Translate: Closing Price
hkex_hkexsecurities_premium_omd_v1_45.closing_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Closing Price
hkex_hkexsecurities_premium_omd_v1_45.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.closing_price.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Conversion Ratio
hkex_hkexsecurities_premium_omd_v1_45.conversion_ratio = {}

-- Size: Conversion Ratio
hkex_hkexsecurities_premium_omd_v1_45.conversion_ratio.size = 4

-- Display: Conversion Ratio
hkex_hkexsecurities_premium_omd_v1_45.conversion_ratio.display = function(value)
  return "Conversion Ratio: "..value
end

-- Translate: Conversion Ratio
hkex_hkexsecurities_premium_omd_v1_45.conversion_ratio.translate = function(raw)
  return raw/1000
end

-- Dissect: Conversion Ratio
hkex_hkexsecurities_premium_omd_v1_45.conversion_ratio.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.conversion_ratio.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = hkex_hkexsecurities_premium_omd_v1_45.conversion_ratio.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.conversion_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.conversion_ratio, range, value, display)

  return offset + length, value
end

-- Cooling Off End Time
hkex_hkexsecurities_premium_omd_v1_45.cooling_off_end_time = {}

-- Size: Cooling Off End Time
hkex_hkexsecurities_premium_omd_v1_45.cooling_off_end_time.size = 8

-- Display: Cooling Off End Time
hkex_hkexsecurities_premium_omd_v1_45.cooling_off_end_time.display = function(value)
  return "Cooling Off End Time: "..value
end

-- Dissect: Cooling Off End Time
hkex_hkexsecurities_premium_omd_v1_45.cooling_off_end_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.cooling_off_end_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_premium_omd_v1_45.cooling_off_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.cooling_off_end_time, range, value, display)

  return offset + length, value
end

-- Cooling Off Start Time
hkex_hkexsecurities_premium_omd_v1_45.cooling_off_start_time = {}

-- Size: Cooling Off Start Time
hkex_hkexsecurities_premium_omd_v1_45.cooling_off_start_time.size = 8

-- Display: Cooling Off Start Time
hkex_hkexsecurities_premium_omd_v1_45.cooling_off_start_time.display = function(value)
  return "Cooling Off Start Time: "..value
end

-- Dissect: Cooling Off Start Time
hkex_hkexsecurities_premium_omd_v1_45.cooling_off_start_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.cooling_off_start_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_premium_omd_v1_45.cooling_off_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.cooling_off_start_time, range, value, display)

  return offset + length, value
end

-- Coupon Rate
hkex_hkexsecurities_premium_omd_v1_45.coupon_rate = {}

-- Size: Coupon Rate
hkex_hkexsecurities_premium_omd_v1_45.coupon_rate.size = 4

-- Display: Coupon Rate
hkex_hkexsecurities_premium_omd_v1_45.coupon_rate.display = function(value)
  return "Coupon Rate: "..value
end

-- Translate: Coupon Rate
hkex_hkexsecurities_premium_omd_v1_45.coupon_rate.translate = function(raw)
  return raw/1000
end

-- Dissect: Coupon Rate
hkex_hkexsecurities_premium_omd_v1_45.coupon_rate.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.coupon_rate.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = hkex_hkexsecurities_premium_omd_v1_45.coupon_rate.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.coupon_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Currency Code
hkex_hkexsecurities_premium_omd_v1_45.currency_code = {}

-- Size: Currency Code
hkex_hkexsecurities_premium_omd_v1_45.currency_code.size = 3

-- Display: Currency Code
hkex_hkexsecurities_premium_omd_v1_45.currency_code.display = function(value)
  return "Currency Code: "..value
end

-- Dissect: Currency Code
hkex_hkexsecurities_premium_omd_v1_45.currency_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.currency_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.currency_code, range, value, display)

  return offset + length, value
end

-- Currency Factor
hkex_hkexsecurities_premium_omd_v1_45.currency_factor = {}

-- Size: Currency Factor
hkex_hkexsecurities_premium_omd_v1_45.currency_factor.size = 2

-- Display: Currency Factor
hkex_hkexsecurities_premium_omd_v1_45.currency_factor.display = function(value)
  return "Currency Factor: "..value
end

-- Dissect: Currency Factor
hkex_hkexsecurities_premium_omd_v1_45.currency_factor.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.currency_factor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.currency_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.currency_factor, range, value, display)

  return offset + length, value
end

-- Currency Rate
hkex_hkexsecurities_premium_omd_v1_45.currency_rate = {}

-- Size: Currency Rate
hkex_hkexsecurities_premium_omd_v1_45.currency_rate.size = 4

-- Display: Currency Rate
hkex_hkexsecurities_premium_omd_v1_45.currency_rate.display = function(value)
  return "Currency Rate: "..value
end

-- Dissect: Currency Rate
hkex_hkexsecurities_premium_omd_v1_45.currency_rate.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.currency_rate.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.currency_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.currency_rate, range, value, display)

  return offset + length, value
end

-- Decimals In Call Price
hkex_hkexsecurities_premium_omd_v1_45.decimals_in_call_price = {}

-- Size: Decimals In Call Price
hkex_hkexsecurities_premium_omd_v1_45.decimals_in_call_price.size = 1

-- Display: Decimals In Call Price
hkex_hkexsecurities_premium_omd_v1_45.decimals_in_call_price.display = function(value)
  return "Decimals In Call Price: "..value
end

-- Dissect: Decimals In Call Price
hkex_hkexsecurities_premium_omd_v1_45.decimals_in_call_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.decimals_in_call_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.decimals_in_call_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.decimals_in_call_price, range, value, display)

  return offset + length, value
end

-- Decimals In Entitlement
hkex_hkexsecurities_premium_omd_v1_45.decimals_in_entitlement = {}

-- Size: Decimals In Entitlement
hkex_hkexsecurities_premium_omd_v1_45.decimals_in_entitlement.size = 1

-- Display: Decimals In Entitlement
hkex_hkexsecurities_premium_omd_v1_45.decimals_in_entitlement.display = function(value)
  return "Decimals In Entitlement: "..value
end

-- Dissect: Decimals In Entitlement
hkex_hkexsecurities_premium_omd_v1_45.decimals_in_entitlement.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.decimals_in_entitlement.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.decimals_in_entitlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.decimals_in_entitlement, range, value, display)

  return offset + length, value
end

-- Decimals In Face Value
hkex_hkexsecurities_premium_omd_v1_45.decimals_in_face_value = {}

-- Size: Decimals In Face Value
hkex_hkexsecurities_premium_omd_v1_45.decimals_in_face_value.size = 1

-- Display: Decimals In Face Value
hkex_hkexsecurities_premium_omd_v1_45.decimals_in_face_value.display = function(value)
  return "Decimals In Face Value: "..value
end

-- Dissect: Decimals In Face Value
hkex_hkexsecurities_premium_omd_v1_45.decimals_in_face_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.decimals_in_face_value.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.decimals_in_face_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.decimals_in_face_value, range, value, display)

  return offset + length, value
end

-- Delisting Date
hkex_hkexsecurities_premium_omd_v1_45.delisting_date = {}

-- Size: Delisting Date
hkex_hkexsecurities_premium_omd_v1_45.delisting_date.size = 4

-- Display: Delisting Date
hkex_hkexsecurities_premium_omd_v1_45.delisting_date.display = function(value)
  return "Delisting Date: "..value
end

-- Dissect: Delisting Date
hkex_hkexsecurities_premium_omd_v1_45.delisting_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.delisting_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.delisting_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.delisting_date, range, value, display)

  return offset + length, value
end

-- Domain Stmt Security Code
hkex_hkexsecurities_premium_omd_v1_45.domain_stmt_security_code = {}

-- Size: Domain Stmt Security Code
hkex_hkexsecurities_premium_omd_v1_45.domain_stmt_security_code.size = 4

-- Display: Domain Stmt Security Code
hkex_hkexsecurities_premium_omd_v1_45.domain_stmt_security_code.display = function(value)
  return "Domain Stmt Security Code: "..value
end

-- Dissect: Domain Stmt Security Code
hkex_hkexsecurities_premium_omd_v1_45.domain_stmt_security_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.domain_stmt_security_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.domain_stmt_security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.domain_stmt_security_code, range, value, display)

  return offset + length, value
end

-- Dr Status
hkex_hkexsecurities_premium_omd_v1_45.dr_status = {}

-- Size: Dr Status
hkex_hkexsecurities_premium_omd_v1_45.dr_status.size = 4

-- Display: Dr Status
hkex_hkexsecurities_premium_omd_v1_45.dr_status.display = function(value)
  if value == 1 then
    return "Dr Status: Dr In Progress (1)"
  end
  if value == 2 then
    return "Dr Status: Dr Completed (2)"
  end

  return "Dr Status: Unknown("..value..")"
end

-- Dissect: Dr Status
hkex_hkexsecurities_premium_omd_v1_45.dr_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.dr_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.dr_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.dr_status, range, value, display)

  return offset + length, value
end

-- Dummy Security Flag
hkex_hkexsecurities_premium_omd_v1_45.dummy_security_flag = {}

-- Size: Dummy Security Flag
hkex_hkexsecurities_premium_omd_v1_45.dummy_security_flag.size = 1

-- Display: Dummy Security Flag
hkex_hkexsecurities_premium_omd_v1_45.dummy_security_flag.display = function(value)
  if value == "Y" then
    return "Dummy Security Flag: Dummy Security (Y)"
  end
  if value == "N" then
    return "Dummy Security Flag: Normal Security (N)"
  end

  return "Dummy Security Flag: Unknown("..value..")"
end

-- Dissect: Dummy Security Flag
hkex_hkexsecurities_premium_omd_v1_45.dummy_security_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.dummy_security_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.dummy_security_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.dummy_security_flag, range, value, display)

  return offset + length, value
end

-- Efn Flag
hkex_hkexsecurities_premium_omd_v1_45.efn_flag = {}

-- Size: Efn Flag
hkex_hkexsecurities_premium_omd_v1_45.efn_flag.size = 1

-- Display: Efn Flag
hkex_hkexsecurities_premium_omd_v1_45.efn_flag.display = function(value)
  if value == "Y" then
    return "Efn Flag: Efn (Y)"
  end
  if value == "N" then
    return "Efn Flag: Non Efn (N)"
  end

  return "Efn Flag: Unknown("..value..")"
end

-- Dissect: Efn Flag
hkex_hkexsecurities_premium_omd_v1_45.efn_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.efn_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.efn_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.efn_flag, range, value, display)

  return offset + length, value
end

-- End Date Time
hkex_hkexsecurities_premium_omd_v1_45.end_date_time = {}

-- Size: End Date Time
hkex_hkexsecurities_premium_omd_v1_45.end_date_time.size = 8

-- Display: End Date Time
hkex_hkexsecurities_premium_omd_v1_45.end_date_time.display = function(value)
  return "End Date Time: "..value
end

-- Dissect: End Date Time
hkex_hkexsecurities_premium_omd_v1_45.end_date_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.end_date_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_premium_omd_v1_45.end_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.end_date_time, range, value, display)

  return offset + length, value
end

-- Entitlement
hkex_hkexsecurities_premium_omd_v1_45.entitlement = {}

-- Size: Entitlement
hkex_hkexsecurities_premium_omd_v1_45.entitlement.size = 4

-- Display: Entitlement
hkex_hkexsecurities_premium_omd_v1_45.entitlement.display = function(value)
  return "Entitlement: "..value
end

-- Dissect: Entitlement
hkex_hkexsecurities_premium_omd_v1_45.entitlement.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.entitlement.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_hkexsecurities_premium_omd_v1_45.entitlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.entitlement, range, value, display)

  return offset + length, value
end

-- Face Value
hkex_hkexsecurities_premium_omd_v1_45.face_value = {}

-- Size: Face Value
hkex_hkexsecurities_premium_omd_v1_45.face_value.size = 8

-- Display: Face Value
hkex_hkexsecurities_premium_omd_v1_45.face_value.display = function(value)
  return "Face Value: "..value
end

-- Dissect: Face Value
hkex_hkexsecurities_premium_omd_v1_45.face_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.face_value.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_premium_omd_v1_45.face_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.face_value, range, value, display)

  return offset + length, value
end

-- Face Value Currency
hkex_hkexsecurities_premium_omd_v1_45.face_value_currency = {}

-- Size: Face Value Currency
hkex_hkexsecurities_premium_omd_v1_45.face_value_currency.size = 3

-- Display: Face Value Currency
hkex_hkexsecurities_premium_omd_v1_45.face_value_currency.display = function(value)
  return "Face Value Currency: "..value
end

-- Dissect: Face Value Currency
hkex_hkexsecurities_premium_omd_v1_45.face_value_currency.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.face_value_currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.face_value_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.face_value_currency, range, value, display)

  return offset + length, value
end

-- Filler
hkex_hkexsecurities_premium_omd_v1_45.filler = {}

-- Size: Filler
hkex_hkexsecurities_premium_omd_v1_45.filler.size = 1

-- Display: Filler
hkex_hkexsecurities_premium_omd_v1_45.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
hkex_hkexsecurities_premium_omd_v1_45.filler.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler, range, value, display)

  return offset + length, value
end

-- Filler 1
hkex_hkexsecurities_premium_omd_v1_45.filler_1 = {}

-- Size: Filler 1
hkex_hkexsecurities_premium_omd_v1_45.filler_1.size = 1

-- Display: Filler 1
hkex_hkexsecurities_premium_omd_v1_45.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
hkex_hkexsecurities_premium_omd_v1_45.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.filler_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 2
hkex_hkexsecurities_premium_omd_v1_45.filler_2 = {}

-- Size: Filler 2
hkex_hkexsecurities_premium_omd_v1_45.filler_2.size = 2

-- Display: Filler 2
hkex_hkexsecurities_premium_omd_v1_45.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
hkex_hkexsecurities_premium_omd_v1_45.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.filler_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Filler 3
hkex_hkexsecurities_premium_omd_v1_45.filler_3 = {}

-- Size: Filler 3
hkex_hkexsecurities_premium_omd_v1_45.filler_3.size = 3

-- Display: Filler 3
hkex_hkexsecurities_premium_omd_v1_45.filler_3.display = function(value)
  return "Filler 3: "..value
end

-- Dissect: Filler 3
hkex_hkexsecurities_premium_omd_v1_45.filler_3.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.filler_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.filler_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_3, range, value, display)

  return offset + length, value
end

-- Filler 37
hkex_hkexsecurities_premium_omd_v1_45.filler_37 = {}

-- Size: Filler 37
hkex_hkexsecurities_premium_omd_v1_45.filler_37.size = 37

-- Display: Filler 37
hkex_hkexsecurities_premium_omd_v1_45.filler_37.display = function(value)
  return "Filler 37: "..value
end

-- Dissect: Filler 37
hkex_hkexsecurities_premium_omd_v1_45.filler_37.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.filler_37.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.filler_37.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_37, range, value, display)

  return offset + length, value
end

-- Filler 4
hkex_hkexsecurities_premium_omd_v1_45.filler_4 = {}

-- Size: Filler 4
hkex_hkexsecurities_premium_omd_v1_45.filler_4.size = 4

-- Display: Filler 4
hkex_hkexsecurities_premium_omd_v1_45.filler_4.display = function(value)
  return "Filler 4: "..value
end

-- Dissect: Filler 4
hkex_hkexsecurities_premium_omd_v1_45.filler_4.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.filler_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.filler_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_4, range, value, display)

  return offset + length, value
end

-- Filler 44
hkex_hkexsecurities_premium_omd_v1_45.filler_44 = {}

-- Size: Filler 44
hkex_hkexsecurities_premium_omd_v1_45.filler_44.size = 44

-- Display: Filler 44
hkex_hkexsecurities_premium_omd_v1_45.filler_44.display = function(value)
  return "Filler 44: "..value
end

-- Dissect: Filler 44
hkex_hkexsecurities_premium_omd_v1_45.filler_44.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.filler_44.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.filler_44.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_44, range, value, display)

  return offset + length, value
end

-- Filler 62
hkex_hkexsecurities_premium_omd_v1_45.filler_62 = {}

-- Size: Filler 62
hkex_hkexsecurities_premium_omd_v1_45.filler_62.size = 62

-- Display: Filler 62
hkex_hkexsecurities_premium_omd_v1_45.filler_62.display = function(value)
  return "Filler 62: "..value
end

-- Dissect: Filler 62
hkex_hkexsecurities_premium_omd_v1_45.filler_62.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.filler_62.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.filler_62.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_62, range, value, display)

  return offset + length, value
end

-- Filler 63
hkex_hkexsecurities_premium_omd_v1_45.filler_63 = {}

-- Size: Filler 63
hkex_hkexsecurities_premium_omd_v1_45.filler_63.size = 63

-- Display: Filler 63
hkex_hkexsecurities_premium_omd_v1_45.filler_63.display = function(value)
  return "Filler 63: "..value
end

-- Dissect: Filler 63
hkex_hkexsecurities_premium_omd_v1_45.filler_63.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.filler_63.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.filler_63.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.filler_63, range, value, display)

  return offset + length, value
end

-- Free Text
hkex_hkexsecurities_premium_omd_v1_45.free_text = {}

-- Size: Free Text
hkex_hkexsecurities_premium_omd_v1_45.free_text.size = 38

-- Display: Free Text
hkex_hkexsecurities_premium_omd_v1_45.free_text.display = function(value)
  return "Free Text: "..value
end

-- Dissect: Free Text
hkex_hkexsecurities_premium_omd_v1_45.free_text.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.free_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.free_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.free_text, range, value, display)

  return offset + length, value
end

-- Headline
hkex_hkexsecurities_premium_omd_v1_45.headline = {}

-- Size: Headline
hkex_hkexsecurities_premium_omd_v1_45.headline.size = 320

-- Display: Headline
hkex_hkexsecurities_premium_omd_v1_45.headline.display = function(value)
  return "Headline: "..value
end

-- Dissect: Headline
hkex_hkexsecurities_premium_omd_v1_45.headline.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.headline.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.headline.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.headline, range, value, display)

  return offset + length, value
end

-- High Price
hkex_hkexsecurities_premium_omd_v1_45.high_price = {}

-- Size: High Price
hkex_hkexsecurities_premium_omd_v1_45.high_price.size = 4

-- Display: High Price
hkex_hkexsecurities_premium_omd_v1_45.high_price.display = function(value)
  return "High Price: "..value
end

-- Translate: High Price
hkex_hkexsecurities_premium_omd_v1_45.high_price.translate = function(raw)
  return raw/1000
end

-- Dissect: High Price
hkex_hkexsecurities_premium_omd_v1_45.high_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.high_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.high_price.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.high_price, range, value, display)

  return offset + length, value
end

-- Instrument Type
hkex_hkexsecurities_premium_omd_v1_45.instrument_type = {}

-- Size: Instrument Type
hkex_hkexsecurities_premium_omd_v1_45.instrument_type.size = 4

-- Display: Instrument Type
hkex_hkexsecurities_premium_omd_v1_45.instrument_type.display = function(value)
  if value == "BOND" then
    return "Instrument Type: Bonds (BOND)"
  end
  if value == "EQTY" then
    return "Instrument Type: Equities (EQTY)"
  end
  if value == "TRST" then
    return "Instrument Type: Trusts (TRST)"
  end
  if value == "WRNT" then
    return "Instrument Type: Warrants And Structured Products (WRNT)"
  end

  return "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
hkex_hkexsecurities_premium_omd_v1_45.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Investor Type
hkex_hkexsecurities_premium_omd_v1_45.investor_type = {}

-- Size: Investor Type
hkex_hkexsecurities_premium_omd_v1_45.investor_type.size = 1

-- Display: Investor Type
hkex_hkexsecurities_premium_omd_v1_45.investor_type.display = function(value)
  if value == "R" then
    return "Investor Type: Retail Investor (R)"
  end
  if value == "P" then
    return "Investor Type: Professional Investor (P)"
  end

  return "Investor Type: Unknown("..value..")"
end

-- Dissect: Investor Type
hkex_hkexsecurities_premium_omd_v1_45.investor_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.investor_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.investor_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.investor_type, range, value, display)

  return offset + length, value
end

-- Isin Code
hkex_hkexsecurities_premium_omd_v1_45.isin_code = {}

-- Size: Isin Code
hkex_hkexsecurities_premium_omd_v1_45.isin_code.size = 12

-- Display: Isin Code
hkex_hkexsecurities_premium_omd_v1_45.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
hkex_hkexsecurities_premium_omd_v1_45.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.isin_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Last Fragment
hkex_hkexsecurities_premium_omd_v1_45.last_fragment = {}

-- Size: Last Fragment
hkex_hkexsecurities_premium_omd_v1_45.last_fragment.size = 1

-- Display: Last Fragment
hkex_hkexsecurities_premium_omd_v1_45.last_fragment.display = function(value)
  if value == "Y" then
    return "Last Fragment: Complete (Y)"
  end
  if value == "N" then
    return "Last Fragment: Not Complete (N)"
  end

  return "Last Fragment: Unknown("..value..")"
end

-- Dissect: Last Fragment
hkex_hkexsecurities_premium_omd_v1_45.last_fragment.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.last_fragment.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.last_fragment.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Last Price
hkex_hkexsecurities_premium_omd_v1_45.last_price = {}

-- Size: Last Price
hkex_hkexsecurities_premium_omd_v1_45.last_price.size = 4

-- Display: Last Price
hkex_hkexsecurities_premium_omd_v1_45.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
hkex_hkexsecurities_premium_omd_v1_45.last_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Last Price
hkex_hkexsecurities_premium_omd_v1_45.last_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.last_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.last_price.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.last_price, range, value, display)

  return offset + length, value
end

-- Listing Date
hkex_hkexsecurities_premium_omd_v1_45.listing_date = {}

-- Size: Listing Date
hkex_hkexsecurities_premium_omd_v1_45.listing_date.size = 4

-- Display: Listing Date
hkex_hkexsecurities_premium_omd_v1_45.listing_date.display = function(value)
  return "Listing Date: "..value
end

-- Dissect: Listing Date
hkex_hkexsecurities_premium_omd_v1_45.listing_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.listing_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.listing_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.listing_date, range, value, display)

  return offset + length, value
end

-- Lot Size
hkex_hkexsecurities_premium_omd_v1_45.lot_size = {}

-- Size: Lot Size
hkex_hkexsecurities_premium_omd_v1_45.lot_size.size = 4

-- Display: Lot Size
hkex_hkexsecurities_premium_omd_v1_45.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
hkex_hkexsecurities_premium_omd_v1_45.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Low Price
hkex_hkexsecurities_premium_omd_v1_45.low_price = {}

-- Size: Low Price
hkex_hkexsecurities_premium_omd_v1_45.low_price.size = 4

-- Display: Low Price
hkex_hkexsecurities_premium_omd_v1_45.low_price.display = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
hkex_hkexsecurities_premium_omd_v1_45.low_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Low Price
hkex_hkexsecurities_premium_omd_v1_45.low_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.low_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.low_price.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.low_price, range, value, display)

  return offset + length, value
end

-- Lower Price
hkex_hkexsecurities_premium_omd_v1_45.lower_price = {}

-- Size: Lower Price
hkex_hkexsecurities_premium_omd_v1_45.lower_price.size = 4

-- Display: Lower Price
hkex_hkexsecurities_premium_omd_v1_45.lower_price.display = function(value)
  return "Lower Price: "..value
end

-- Translate: Lower Price
hkex_hkexsecurities_premium_omd_v1_45.lower_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Lower Price
hkex_hkexsecurities_premium_omd_v1_45.lower_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.lower_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.lower_price.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.lower_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.lower_price, range, value, display)

  return offset + length, value
end

-- Lp Broker Number
hkex_hkexsecurities_premium_omd_v1_45.lp_broker_number = {}

-- Size: Lp Broker Number
hkex_hkexsecurities_premium_omd_v1_45.lp_broker_number.size = 2

-- Display: Lp Broker Number
hkex_hkexsecurities_premium_omd_v1_45.lp_broker_number.display = function(value)
  return "Lp Broker Number: "..value
end

-- Dissect: Lp Broker Number
hkex_hkexsecurities_premium_omd_v1_45.lp_broker_number.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.lp_broker_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.lp_broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.lp_broker_number, range, value, display)

  return offset + length, value
end

-- Market Code
hkex_hkexsecurities_premium_omd_v1_45.market_code = {}

-- Size: Market Code
hkex_hkexsecurities_premium_omd_v1_45.market_code.size = 4

-- Display: Market Code
hkex_hkexsecurities_premium_omd_v1_45.market_code.display = function(value)
  if value == "MAIN" then
    return "Market Code: Main Board (MAIN)"
  end
  if value == "GEM" then
    return "Market Code: Growth Enterprise Market (GEM)"
  end
  if value == "NASD" then
    return "Market Code: Nasdaq Amex Pilot Program (NASD)"
  end
  if value == "ETS" then
    return "Market Code: Electronic Trading System (ETS)"
  end

  return "Market Code: Unknown("..value..")"
end

-- Dissect: Market Code
hkex_hkexsecurities_premium_omd_v1_45.market_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.market_code, range, value, display)

  return offset + length, value
end

-- Market Name
hkex_hkexsecurities_premium_omd_v1_45.market_name = {}

-- Size: Market Name
hkex_hkexsecurities_premium_omd_v1_45.market_name.size = 25

-- Display: Market Name
hkex_hkexsecurities_premium_omd_v1_45.market_name.display = function(value)
  return "Market Name: "..value
end

-- Dissect: Market Name
hkex_hkexsecurities_premium_omd_v1_45.market_name.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.market_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.market_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.market_name, range, value, display)

  return offset + length, value
end

-- Maturity Date
hkex_hkexsecurities_premium_omd_v1_45.maturity_date = {}

-- Size: Maturity Date
hkex_hkexsecurities_premium_omd_v1_45.maturity_date.size = 4

-- Display: Maturity Date
hkex_hkexsecurities_premium_omd_v1_45.maturity_date.display = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
hkex_hkexsecurities_premium_omd_v1_45.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Msg Count
hkex_hkexsecurities_premium_omd_v1_45.msg_count = {}

-- Size: Msg Count
hkex_hkexsecurities_premium_omd_v1_45.msg_count.size = 1

-- Display: Msg Count
hkex_hkexsecurities_premium_omd_v1_45.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
hkex_hkexsecurities_premium_omd_v1_45.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
hkex_hkexsecurities_premium_omd_v1_45.msg_size = {}

-- Size: Msg Size
hkex_hkexsecurities_premium_omd_v1_45.msg_size.size = 2

-- Display: Msg Size
hkex_hkexsecurities_premium_omd_v1_45.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
hkex_hkexsecurities_premium_omd_v1_45.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
hkex_hkexsecurities_premium_omd_v1_45.msg_type = {}

-- Size: Msg Type
hkex_hkexsecurities_premium_omd_v1_45.msg_type.size = 2

-- Display: Msg Type
hkex_hkexsecurities_premium_omd_v1_45.msg_type.display = function(value)
  if value == 53 then
    return "Msg Type: Aggregate Order Book Update Message (53)"
  end
  if value == 62 then
    return "Msg Type: Closing Price Message (62)"
  end
  if value == 100 then
    return "Msg Type: Sequence Reset Message (100)"
  end
  if value == 105 then
    return "Msg Type: Disaster Recovery Signal Message (105)"
  end
  if value == 41 then
    return "Msg Type: Indicative Equilibrium Price Message (41)"
  end
  if value == 22 then
    return "Msg Type: News Message (22)"
  end
  if value == 40 then
    return "Msg Type: Nominal Price Message (40)"
  end
  if value == 56 then
    return "Msg Type: Order Imbalance Message (56)"
  end
  if value == 10 then
    return "Msg Type: Market Definition Message (10)"
  end
  if value == 11 then
    return "Msg Type: Security Definition Message (11)"
  end
  if value == 13 then
    return "Msg Type: Liquidity Provider Message (13)"
  end
  if value == 14 then
    return "Msg Type: Currency Rate Message (14)"
  end
  if value == 43 then
    return "Msg Type: Reference Price Message (43)"
  end
  if value == 60 then
    return "Msg Type: Statistics Message (60)"
  end
  if value == 61 then
    return "Msg Type: Market Turnover Message (61)"
  end
  if value == 44 then
    return "Msg Type: Yield Message (44)"
  end
  if value == 20 then
    return "Msg Type: Trading Session Status Message (20)"
  end
  if value == 21 then
    return "Msg Type: Security Status Message (21)"
  end
  if value == 50 then
    return "Msg Type: Trade Message (50)"
  end
  if value == 51 then
    return "Msg Type: Trade Cancel Message (51)"
  end
  if value == 23 then
    return "Msg Type: Vcm Trigger Message (23)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
hkex_hkexsecurities_premium_omd_v1_45.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.msg_type, range, value, display)

  return offset + length, value
end

-- New Seq No
hkex_hkexsecurities_premium_omd_v1_45.new_seq_no = {}

-- Size: New Seq No
hkex_hkexsecurities_premium_omd_v1_45.new_seq_no.size = 4

-- Display: New Seq No
hkex_hkexsecurities_premium_omd_v1_45.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
hkex_hkexsecurities_premium_omd_v1_45.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- News Id
hkex_hkexsecurities_premium_omd_v1_45.news_id = {}

-- Size: News Id
hkex_hkexsecurities_premium_omd_v1_45.news_id.size = 3

-- Display: News Id
hkex_hkexsecurities_premium_omd_v1_45.news_id.display = function(value)
  return "News Id: "..value
end

-- Dissect: News Id
hkex_hkexsecurities_premium_omd_v1_45.news_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.news_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.news_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_id, range, value, display)

  return offset + length, value
end

-- News Line
hkex_hkexsecurities_premium_omd_v1_45.news_line = {}

-- Size: News Line
hkex_hkexsecurities_premium_omd_v1_45.news_line.size = 160

-- Display: News Line
hkex_hkexsecurities_premium_omd_v1_45.news_line.display = function(value)
  return "News Line: "..value
end

-- Dissect: News Line
hkex_hkexsecurities_premium_omd_v1_45.news_line.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.news_line.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.news_line.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_line, range, value, display)

  return offset + length, value
end

-- News Type
hkex_hkexsecurities_premium_omd_v1_45.news_type = {}

-- Size: News Type
hkex_hkexsecurities_premium_omd_v1_45.news_type.size = 3

-- Display: News Type
hkex_hkexsecurities_premium_omd_v1_45.news_type.display = function(value)
  if value == "EXN" then
    return "News Type: Exchange News (EXN)"
  end
  if value == "EXC" then
    return "News Type: Chinese Exchange News (EXC)"
  end

  return "News Type: Unknown("..value..")"
end

-- Dissect: News Type
hkex_hkexsecurities_premium_omd_v1_45.news_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.news_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.news_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_type, range, value, display)

  return offset + length, value
end

-- No Entries
hkex_hkexsecurities_premium_omd_v1_45.no_entries = {}

-- Size: No Entries
hkex_hkexsecurities_premium_omd_v1_45.no_entries.size = 1

-- Display: No Entries
hkex_hkexsecurities_premium_omd_v1_45.no_entries.display = function(value)
  return "No Entries: "..value
end

-- Dissect: No Entries
hkex_hkexsecurities_premium_omd_v1_45.no_entries.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.no_entries.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.no_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.no_entries, range, value, display)

  return offset + length, value
end

-- No Liquidity Providers
hkex_hkexsecurities_premium_omd_v1_45.no_liquidity_providers = {}

-- Size: No Liquidity Providers
hkex_hkexsecurities_premium_omd_v1_45.no_liquidity_providers.size = 2

-- Display: No Liquidity Providers
hkex_hkexsecurities_premium_omd_v1_45.no_liquidity_providers.display = function(value)
  return "No Liquidity Providers: "..value
end

-- Dissect: No Liquidity Providers
hkex_hkexsecurities_premium_omd_v1_45.no_liquidity_providers.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.no_liquidity_providers.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.no_liquidity_providers.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.no_liquidity_providers, range, value, display)

  return offset + length, value
end

-- No Market Codes
hkex_hkexsecurities_premium_omd_v1_45.no_market_codes = {}

-- Size: No Market Codes
hkex_hkexsecurities_premium_omd_v1_45.no_market_codes.size = 2

-- Display: No Market Codes
hkex_hkexsecurities_premium_omd_v1_45.no_market_codes.display = function(value)
  return "No Market Codes: "..value
end

-- Dissect: No Market Codes
hkex_hkexsecurities_premium_omd_v1_45.no_market_codes.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.no_market_codes.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.no_market_codes.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.no_market_codes, range, value, display)

  return offset + length, value
end

-- No News Lines
hkex_hkexsecurities_premium_omd_v1_45.no_news_lines = {}

-- Size: No News Lines
hkex_hkexsecurities_premium_omd_v1_45.no_news_lines.size = 2

-- Display: No News Lines
hkex_hkexsecurities_premium_omd_v1_45.no_news_lines.display = function(value)
  return "No News Lines: "..value
end

-- Dissect: No News Lines
hkex_hkexsecurities_premium_omd_v1_45.no_news_lines.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.no_news_lines.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.no_news_lines.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.no_news_lines, range, value, display)

  return offset + length, value
end

-- No Security Codes
hkex_hkexsecurities_premium_omd_v1_45.no_security_codes = {}

-- Size: No Security Codes
hkex_hkexsecurities_premium_omd_v1_45.no_security_codes.size = 2

-- Display: No Security Codes
hkex_hkexsecurities_premium_omd_v1_45.no_security_codes.display = function(value)
  return "No Security Codes: "..value
end

-- Dissect: No Security Codes
hkex_hkexsecurities_premium_omd_v1_45.no_security_codes.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.no_security_codes.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.no_security_codes.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.no_security_codes, range, value, display)

  return offset + length, value
end

-- No Underlying Securities
hkex_hkexsecurities_premium_omd_v1_45.no_underlying_securities = {}

-- Size: No Underlying Securities
hkex_hkexsecurities_premium_omd_v1_45.no_underlying_securities.size = 2

-- Display: No Underlying Securities
hkex_hkexsecurities_premium_omd_v1_45.no_underlying_securities.display = function(value)
  return "No Underlying Securities: "..value
end

-- Dissect: No Underlying Securities
hkex_hkexsecurities_premium_omd_v1_45.no_underlying_securities.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.no_underlying_securities.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.no_underlying_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.no_underlying_securities, range, value, display)

  return offset + length, value
end

-- No Warrants Per Entitlement
hkex_hkexsecurities_premium_omd_v1_45.no_warrants_per_entitlement = {}

-- Size: No Warrants Per Entitlement
hkex_hkexsecurities_premium_omd_v1_45.no_warrants_per_entitlement.size = 4

-- Display: No Warrants Per Entitlement
hkex_hkexsecurities_premium_omd_v1_45.no_warrants_per_entitlement.display = function(value)
  return "No Warrants Per Entitlement: "..value
end

-- Dissect: No Warrants Per Entitlement
hkex_hkexsecurities_premium_omd_v1_45.no_warrants_per_entitlement.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.no_warrants_per_entitlement.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.no_warrants_per_entitlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.no_warrants_per_entitlement, range, value, display)

  return offset + length, value
end

-- Nominal Price
hkex_hkexsecurities_premium_omd_v1_45.nominal_price = {}

-- Size: Nominal Price
hkex_hkexsecurities_premium_omd_v1_45.nominal_price.size = 4

-- Display: Nominal Price
hkex_hkexsecurities_premium_omd_v1_45.nominal_price.display = function(value)
  return "Nominal Price: "..value
end

-- Translate: Nominal Price
hkex_hkexsecurities_premium_omd_v1_45.nominal_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Nominal Price
hkex_hkexsecurities_premium_omd_v1_45.nominal_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.nominal_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.nominal_price.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.nominal_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.nominal_price, range, value, display)

  return offset + length, value
end

-- Number Of Orders
hkex_hkexsecurities_premium_omd_v1_45.number_of_orders = {}

-- Size: Number Of Orders
hkex_hkexsecurities_premium_omd_v1_45.number_of_orders.size = 4

-- Display: Number Of Orders
hkex_hkexsecurities_premium_omd_v1_45.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
hkex_hkexsecurities_premium_omd_v1_45.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Number Of Securities
hkex_hkexsecurities_premium_omd_v1_45.number_of_securities = {}

-- Size: Number Of Securities
hkex_hkexsecurities_premium_omd_v1_45.number_of_securities.size = 4

-- Display: Number Of Securities
hkex_hkexsecurities_premium_omd_v1_45.number_of_securities.display = function(value)
  return "Number Of Securities: "..value
end

-- Dissect: Number Of Securities
hkex_hkexsecurities_premium_omd_v1_45.number_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.number_of_securities.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.number_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.number_of_securities, range, value, display)

  return offset + length, value
end

-- Number Of Trades
hkex_hkexsecurities_premium_omd_v1_45.number_of_trades = {}

-- Size: Number Of Trades
hkex_hkexsecurities_premium_omd_v1_45.number_of_trades.size = 4

-- Display: Number Of Trades
hkex_hkexsecurities_premium_omd_v1_45.number_of_trades.display = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
hkex_hkexsecurities_premium_omd_v1_45.number_of_trades.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.number_of_trades.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.number_of_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.number_of_trades, range, value, display)

  return offset + length, value
end

-- Order Imbalance Direction
hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_direction = {}

-- Size: Order Imbalance Direction
hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_direction.size = 1

-- Display: Order Imbalance Direction
hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_direction.display = function(value)
  if value == "N" then
    return "Order Imbalance Direction: Buy Equals Sell (N)"
  end
  if value == "B" then
    return "Order Imbalance Direction: Buy Surplus (B)"
  end
  if value == "S" then
    return "Order Imbalance Direction: Sell Surplus (S)"
  end
  if value == " " then
    return "Order Imbalance Direction: Not Applicable Iep Not Available (<whitespace>)"
  end

  return "Order Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Order Imbalance Direction
hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.order_imbalance_direction, range, value, display)

  return offset + length, value
end

-- Order Imbalance Quantity
hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_quantity = {}

-- Size: Order Imbalance Quantity
hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_quantity.size = 8

-- Display: Order Imbalance Quantity
hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_quantity.display = function(value)
  return "Order Imbalance Quantity: "..value
end

-- Dissect: Order Imbalance Quantity
hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.order_imbalance_quantity, range, value, display)

  return offset + length, value
end

-- Pkt Size
hkex_hkexsecurities_premium_omd_v1_45.pkt_size = {}

-- Size: Pkt Size
hkex_hkexsecurities_premium_omd_v1_45.pkt_size.size = 2

-- Display: Pkt Size
hkex_hkexsecurities_premium_omd_v1_45.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
hkex_hkexsecurities_premium_omd_v1_45.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Pos Flag
hkex_hkexsecurities_premium_omd_v1_45.pos_flag = {}

-- Size: Pos Flag
hkex_hkexsecurities_premium_omd_v1_45.pos_flag.size = 1

-- Display: Pos Flag
hkex_hkexsecurities_premium_omd_v1_45.pos_flag.display = function(value)
  if value == "Y" then
    return "Pos Flag: Pos Applicable (Y)"
  end
  if value == "N" then
    return "Pos Flag: Pos Not Applicable (N)"
  end

  return "Pos Flag: Unknown("..value..")"
end

-- Dissect: Pos Flag
hkex_hkexsecurities_premium_omd_v1_45.pos_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.pos_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.pos_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.pos_flag, range, value, display)

  return offset + length, value
end

-- Pos Lower Limit
hkex_hkexsecurities_premium_omd_v1_45.pos_lower_limit = {}

-- Size: Pos Lower Limit
hkex_hkexsecurities_premium_omd_v1_45.pos_lower_limit.size = 4

-- Display: Pos Lower Limit
hkex_hkexsecurities_premium_omd_v1_45.pos_lower_limit.display = function(value)
  return "Pos Lower Limit: "..value
end

-- Translate: Pos Lower Limit
hkex_hkexsecurities_premium_omd_v1_45.pos_lower_limit.translate = function(raw)
  return raw/1000
end

-- Dissect: Pos Lower Limit
hkex_hkexsecurities_premium_omd_v1_45.pos_lower_limit.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.pos_lower_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.pos_lower_limit.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.pos_lower_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.pos_lower_limit, range, value, display)

  return offset + length, value
end

-- Pos Upper Limit
hkex_hkexsecurities_premium_omd_v1_45.pos_upper_limit = {}

-- Size: Pos Upper Limit
hkex_hkexsecurities_premium_omd_v1_45.pos_upper_limit.size = 4

-- Display: Pos Upper Limit
hkex_hkexsecurities_premium_omd_v1_45.pos_upper_limit.display = function(value)
  return "Pos Upper Limit: "..value
end

-- Translate: Pos Upper Limit
hkex_hkexsecurities_premium_omd_v1_45.pos_upper_limit.translate = function(raw)
  return raw/1000
end

-- Dissect: Pos Upper Limit
hkex_hkexsecurities_premium_omd_v1_45.pos_upper_limit.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.pos_upper_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.pos_upper_limit.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.pos_upper_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.pos_upper_limit, range, value, display)

  return offset + length, value
end

-- Previous Closing Price
hkex_hkexsecurities_premium_omd_v1_45.previous_closing_price = {}

-- Size: Previous Closing Price
hkex_hkexsecurities_premium_omd_v1_45.previous_closing_price.size = 4

-- Display: Previous Closing Price
hkex_hkexsecurities_premium_omd_v1_45.previous_closing_price.display = function(value)
  return "Previous Closing Price: "..value
end

-- Translate: Previous Closing Price
hkex_hkexsecurities_premium_omd_v1_45.previous_closing_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Previous Closing Price
hkex_hkexsecurities_premium_omd_v1_45.previous_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.previous_closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.previous_closing_price.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.previous_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.previous_closing_price, range, value, display)

  return offset + length, value
end

-- Price
hkex_hkexsecurities_premium_omd_v1_45.price = {}

-- Size: Price
hkex_hkexsecurities_premium_omd_v1_45.price.size = 4

-- Display: Price
hkex_hkexsecurities_premium_omd_v1_45.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
hkex_hkexsecurities_premium_omd_v1_45.price.translate = function(raw)
  return raw/1000
end

-- Dissect: Price
hkex_hkexsecurities_premium_omd_v1_45.price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.price.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.price, range, value, display)

  return offset + length, value
end

-- Price Level
hkex_hkexsecurities_premium_omd_v1_45.price_level = {}

-- Size: Price Level
hkex_hkexsecurities_premium_omd_v1_45.price_level.size = 1

-- Display: Price Level
hkex_hkexsecurities_premium_omd_v1_45.price_level.display = function(value)
  return "Price Level: "..value
end

-- Dissect: Price Level
hkex_hkexsecurities_premium_omd_v1_45.price_level.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.price_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.price_level, range, value, display)

  return offset + length, value
end

-- Product Type
hkex_hkexsecurities_premium_omd_v1_45.product_type = {}

-- Size: Product Type
hkex_hkexsecurities_premium_omd_v1_45.product_type.size = 1

-- Display: Product Type
hkex_hkexsecurities_premium_omd_v1_45.product_type.display = function(value)
  if value == 1 then
    return "Product Type: Equity Ordinary Shares (1)"
  end
  if value == 2 then
    return "Product Type: Equity Preference Shares (2)"
  end
  if value == 6 then
    return "Product Type: Equity Rights (6)"
  end
  if value == 7 then
    return "Product Type: Equity Depository Receipt Hdr Ordinary Shares (7)"
  end
  if value == 12 then
    return "Product Type: Equity Depository Receipt Hdr Preference Shares (12)"
  end
  if value == 24 then
    return "Product Type: Equity Spac Shares (24)"
  end
  if value == 3 then
    return "Product Type: Warrant Derivative Warrant Dw (3)"
  end
  if value == 11 then
    return "Product Type: Warrant Callable Bull Bear Contract Cbbc (11)"
  end
  if value == 13 then
    return "Product Type: Warrant Equity Warrant (13)"
  end
  if value == 15 then
    return "Product Type: Warrant Inline Warrant (15)"
  end
  if value == 21 then
    return "Product Type: Warrant Spac Warrants (21)"
  end
  if value == 4 then
    return "Product Type: Bond Debt Security (4)"
  end
  if value == 8 then
    return "Product Type: Trust Real Estate Investment Trust Reit (8)"
  end
  if value == 9 then
    return "Product Type: Trust Other Unit Trusts (9)"
  end
  if value == 10 then
    return "Product Type: Trust Leveraged And Inverse Product Lip (10)"
  end
  if value == 16 then
    return "Product Type: Trust Equity Etf (16)"
  end
  if value == 17 then
    return "Product Type: Trust Fixed Income And Money Market Etf (17)"
  end
  if value == 18 then
    return "Product Type: Trust Commodities Etf (18)"
  end
  if value == 99 then
    return "Product Type: Others None Of The Above (99)"
  end

  return "Product Type: Unknown("..value..")"
end

-- Dissect: Product Type
hkex_hkexsecurities_premium_omd_v1_45.product_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.product_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.product_type, range, value, display)

  return offset + length, value
end

-- Quantity
hkex_hkexsecurities_premium_omd_v1_45.quantity = {}

-- Size: Quantity
hkex_hkexsecurities_premium_omd_v1_45.quantity.size = 4

-- Display: Quantity
hkex_hkexsecurities_premium_omd_v1_45.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
hkex_hkexsecurities_premium_omd_v1_45.quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reference Price
hkex_hkexsecurities_premium_omd_v1_45.reference_price = {}

-- Size: Reference Price
hkex_hkexsecurities_premium_omd_v1_45.reference_price.size = 4

-- Display: Reference Price
hkex_hkexsecurities_premium_omd_v1_45.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
hkex_hkexsecurities_premium_omd_v1_45.reference_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Reference Price
hkex_hkexsecurities_premium_omd_v1_45.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.reference_price.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Release Time
hkex_hkexsecurities_premium_omd_v1_45.release_time = {}

-- Size: Release Time
hkex_hkexsecurities_premium_omd_v1_45.release_time.size = 8

-- Display: Release Time
hkex_hkexsecurities_premium_omd_v1_45.release_time.display = function(value)
  return "Release Time: "..value
end

-- Dissect: Release Time
hkex_hkexsecurities_premium_omd_v1_45.release_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.release_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_premium_omd_v1_45.release_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.release_time, range, value, display)

  return offset + length, value
end

-- Security Code
hkex_hkexsecurities_premium_omd_v1_45.security_code = {}

-- Size: Security Code
hkex_hkexsecurities_premium_omd_v1_45.security_code.size = 4

-- Display: Security Code
hkex_hkexsecurities_premium_omd_v1_45.security_code.display = function(value)
  return "Security Code: "..value
end

-- Dissect: Security Code
hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.security_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.security_code, range, value, display)

  return offset + length, value
end

-- Security Name Gb
hkex_hkexsecurities_premium_omd_v1_45.security_name_gb = {}

-- Size: Security Name Gb
hkex_hkexsecurities_premium_omd_v1_45.security_name_gb.size = 60

-- Display: Security Name Gb
hkex_hkexsecurities_premium_omd_v1_45.security_name_gb.display = function(value)
  return "Security Name Gb: "..value
end

-- Dissect: Security Name Gb
hkex_hkexsecurities_premium_omd_v1_45.security_name_gb.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.security_name_gb.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.security_name_gb.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.security_name_gb, range, value, display)

  return offset + length, value
end

-- Security Name Gccs
hkex_hkexsecurities_premium_omd_v1_45.security_name_gccs = {}

-- Size: Security Name Gccs
hkex_hkexsecurities_premium_omd_v1_45.security_name_gccs.size = 60

-- Display: Security Name Gccs
hkex_hkexsecurities_premium_omd_v1_45.security_name_gccs.display = function(value)
  return "Security Name Gccs: "..value
end

-- Dissect: Security Name Gccs
hkex_hkexsecurities_premium_omd_v1_45.security_name_gccs.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.security_name_gccs.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.security_name_gccs.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.security_name_gccs, range, value, display)

  return offset + length, value
end

-- Security Short Name
hkex_hkexsecurities_premium_omd_v1_45.security_short_name = {}

-- Size: Security Short Name
hkex_hkexsecurities_premium_omd_v1_45.security_short_name.size = 40

-- Display: Security Short Name
hkex_hkexsecurities_premium_omd_v1_45.security_short_name.display = function(value)
  return "Security Short Name: "..value
end

-- Dissect: Security Short Name
hkex_hkexsecurities_premium_omd_v1_45.security_short_name.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.security_short_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.security_short_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.security_short_name, range, value, display)

  return offset + length, value
end

-- Send Time
hkex_hkexsecurities_premium_omd_v1_45.send_time = {}

-- Size: Send Time
hkex_hkexsecurities_premium_omd_v1_45.send_time.size = 8

-- Display: Send Time
hkex_hkexsecurities_premium_omd_v1_45.send_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
hkex_hkexsecurities_premium_omd_v1_45.send_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_premium_omd_v1_45.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.send_time, range, value, display)

  return offset + length, value
end

-- Seq Num
hkex_hkexsecurities_premium_omd_v1_45.seq_num = {}

-- Size: Seq Num
hkex_hkexsecurities_premium_omd_v1_45.seq_num.size = 4

-- Display: Seq Num
hkex_hkexsecurities_premium_omd_v1_45.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
hkex_hkexsecurities_premium_omd_v1_45.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Shares Traded
hkex_hkexsecurities_premium_omd_v1_45.shares_traded = {}

-- Size: Shares Traded
hkex_hkexsecurities_premium_omd_v1_45.shares_traded.size = 8

-- Display: Shares Traded
hkex_hkexsecurities_premium_omd_v1_45.shares_traded.display = function(value)
  return "Shares Traded: "..value
end

-- Dissect: Shares Traded
hkex_hkexsecurities_premium_omd_v1_45.shares_traded.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.shares_traded.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_premium_omd_v1_45.shares_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.shares_traded, range, value, display)

  return offset + length, value
end

-- Short Sell Flag
hkex_hkexsecurities_premium_omd_v1_45.short_sell_flag = {}

-- Size: Short Sell Flag
hkex_hkexsecurities_premium_omd_v1_45.short_sell_flag.size = 1

-- Display: Short Sell Flag
hkex_hkexsecurities_premium_omd_v1_45.short_sell_flag.display = function(value)
  if value == "Y" then
    return "Short Sell Flag: Shortsell Allowed (Y)"
  end
  if value == "N" then
    return "Short Sell Flag: Shortsell Not Allowed (N)"
  end

  return "Short Sell Flag: Unknown("..value..")"
end

-- Dissect: Short Sell Flag
hkex_hkexsecurities_premium_omd_v1_45.short_sell_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.short_sell_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.short_sell_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.short_sell_flag, range, value, display)

  return offset + length, value
end

-- Short Sell Shares Traded
hkex_hkexsecurities_premium_omd_v1_45.short_sell_shares_traded = {}

-- Size: Short Sell Shares Traded
hkex_hkexsecurities_premium_omd_v1_45.short_sell_shares_traded.size = 4

-- Display: Short Sell Shares Traded
hkex_hkexsecurities_premium_omd_v1_45.short_sell_shares_traded.display = function(value)
  return "Short Sell Shares Traded: "..value
end

-- Dissect: Short Sell Shares Traded
hkex_hkexsecurities_premium_omd_v1_45.short_sell_shares_traded.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.short_sell_shares_traded.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.short_sell_shares_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.short_sell_shares_traded, range, value, display)

  return offset + length, value
end

-- Short Sell Turnover
hkex_hkexsecurities_premium_omd_v1_45.short_sell_turnover = {}

-- Size: Short Sell Turnover
hkex_hkexsecurities_premium_omd_v1_45.short_sell_turnover.size = 8

-- Display: Short Sell Turnover
hkex_hkexsecurities_premium_omd_v1_45.short_sell_turnover.display = function(value)
  return "Short Sell Turnover: "..value
end

-- Translate: Short Sell Turnover
hkex_hkexsecurities_premium_omd_v1_45.short_sell_turnover.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Short Sell Turnover
hkex_hkexsecurities_premium_omd_v1_45.short_sell_turnover.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.short_sell_turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_premium_omd_v1_45.short_sell_turnover.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.short_sell_turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.short_sell_turnover, range, value, display)

  return offset + length, value
end

-- Side
hkex_hkexsecurities_premium_omd_v1_45.side = {}

-- Size: Side
hkex_hkexsecurities_premium_omd_v1_45.side.size = 2

-- Display: Side
hkex_hkexsecurities_premium_omd_v1_45.side.display = function(value)
  if value == 0 then
    return "Side: Bid (0)"
  end
  if value == 1 then
    return "Side: Offer (1)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
hkex_hkexsecurities_premium_omd_v1_45.side.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.side, range, value, display)

  return offset + length, value
end

-- Spread Table Code
hkex_hkexsecurities_premium_omd_v1_45.spread_table_code = {}

-- Size: Spread Table Code
hkex_hkexsecurities_premium_omd_v1_45.spread_table_code.size = 2

-- Display: Spread Table Code
hkex_hkexsecurities_premium_omd_v1_45.spread_table_code.display = function(value)
  if value == "01" then
    return "Spread Table Code: Part A (01)"
  end
  if value == "03" then
    return "Spread Table Code: Part B (03)"
  end
  if value == "04" then
    return "Spread Table Code: For Inline Warrant Same As Part E Up To And Include Hk 100 As Per Sehk (04)"
  end
  if value == "05" then
    return "Spread Table Code: Part D (05)"
  end
  if value == "06" then
    return "Spread Table Code: Part E (06)"
  end

  return "Spread Table Code: Unknown("..value..")"
end

-- Dissect: Spread Table Code
hkex_hkexsecurities_premium_omd_v1_45.spread_table_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.spread_table_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.spread_table_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.spread_table_code, range, value, display)

  return offset + length, value
end

-- Stamp Duty Flag
hkex_hkexsecurities_premium_omd_v1_45.stamp_duty_flag = {}

-- Size: Stamp Duty Flag
hkex_hkexsecurities_premium_omd_v1_45.stamp_duty_flag.size = 1

-- Display: Stamp Duty Flag
hkex_hkexsecurities_premium_omd_v1_45.stamp_duty_flag.display = function(value)
  if value == "Y" then
    return "Stamp Duty Flag: Stamp Duty Required (Y)"
  end
  if value == "N" then
    return "Stamp Duty Flag: Stamp Duty Not Required (N)"
  end

  return "Stamp Duty Flag: Unknown("..value..")"
end

-- Dissect: Stamp Duty Flag
hkex_hkexsecurities_premium_omd_v1_45.stamp_duty_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.stamp_duty_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.stamp_duty_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.stamp_duty_flag, range, value, display)

  return offset + length, value
end

-- Start Date Time
hkex_hkexsecurities_premium_omd_v1_45.start_date_time = {}

-- Size: Start Date Time
hkex_hkexsecurities_premium_omd_v1_45.start_date_time.size = 8

-- Display: Start Date Time
hkex_hkexsecurities_premium_omd_v1_45.start_date_time.display = function(value)
  return "Start Date Time: "..value
end

-- Dissect: Start Date Time
hkex_hkexsecurities_premium_omd_v1_45.start_date_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.start_date_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_premium_omd_v1_45.start_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.start_date_time, range, value, display)

  return offset + length, value
end

-- Strike Price 1
hkex_hkexsecurities_premium_omd_v1_45.strike_price_1 = {}

-- Size: Strike Price 1
hkex_hkexsecurities_premium_omd_v1_45.strike_price_1.size = 4

-- Display: Strike Price 1
hkex_hkexsecurities_premium_omd_v1_45.strike_price_1.display = function(value)
  return "Strike Price 1: "..value
end

-- Translate: Strike Price 1
hkex_hkexsecurities_premium_omd_v1_45.strike_price_1.translate = function(raw)
  return raw/1000
end

-- Dissect: Strike Price 1
hkex_hkexsecurities_premium_omd_v1_45.strike_price_1.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.strike_price_1.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.strike_price_1.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.strike_price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.strike_price_1, range, value, display)

  return offset + length, value
end

-- Strike Price 2
hkex_hkexsecurities_premium_omd_v1_45.strike_price_2 = {}

-- Size: Strike Price 2
hkex_hkexsecurities_premium_omd_v1_45.strike_price_2.size = 4

-- Display: Strike Price 2
hkex_hkexsecurities_premium_omd_v1_45.strike_price_2.display = function(value)
  return "Strike Price 2: "..value
end

-- Translate: Strike Price 2
hkex_hkexsecurities_premium_omd_v1_45.strike_price_2.translate = function(raw)
  return raw/1000
end

-- Dissect: Strike Price 2
hkex_hkexsecurities_premium_omd_v1_45.strike_price_2.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.strike_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.strike_price_2.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.strike_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.strike_price_2, range, value, display)

  return offset + length, value
end

-- Style
hkex_hkexsecurities_premium_omd_v1_45.style = {}

-- Size: Style
hkex_hkexsecurities_premium_omd_v1_45.style.size = 1

-- Display: Style
hkex_hkexsecurities_premium_omd_v1_45.style.display = function(value)
  if value == "A" then
    return "Style: American Style (A)"
  end
  if value == "E" then
    return "Style: European Style (E)"
  end
  if value == " " then
    return "Style: Other (<whitespace>)"
  end

  return "Style: Unknown("..value..")"
end

-- Dissect: Style
hkex_hkexsecurities_premium_omd_v1_45.style.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.style.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.style.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.style, range, value, display)

  return offset + length, value
end

-- Suspension Indicator
hkex_hkexsecurities_premium_omd_v1_45.suspension_indicator = {}

-- Size: Suspension Indicator
hkex_hkexsecurities_premium_omd_v1_45.suspension_indicator.size = 1

-- Display: Suspension Indicator
hkex_hkexsecurities_premium_omd_v1_45.suspension_indicator.display = function(value)
  if value == 2 then
    return "Suspension Indicator: Trading Halt Or Suspend (2)"
  end
  if value == 3 then
    return "Suspension Indicator: Resume (3)"
  end

  return "Suspension Indicator: Unknown("..value..")"
end

-- Dissect: Suspension Indicator
hkex_hkexsecurities_premium_omd_v1_45.suspension_indicator.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.suspension_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.suspension_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.suspension_indicator, range, value, display)

  return offset + length, value
end

-- Trade Id
hkex_hkexsecurities_premium_omd_v1_45.trade_id = {}

-- Size: Trade Id
hkex_hkexsecurities_premium_omd_v1_45.trade_id.size = 4

-- Display: Trade Id
hkex_hkexsecurities_premium_omd_v1_45.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
hkex_hkexsecurities_premium_omd_v1_45.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Time
hkex_hkexsecurities_premium_omd_v1_45.trade_time = {}

-- Size: Trade Time
hkex_hkexsecurities_premium_omd_v1_45.trade_time.size = 8

-- Display: Trade Time
hkex_hkexsecurities_premium_omd_v1_45.trade_time.display = function(value)
  return "Trade Time: "..value
end

-- Dissect: Trade Time
hkex_hkexsecurities_premium_omd_v1_45.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_premium_omd_v1_45.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Trading Ses Control Flag
hkex_hkexsecurities_premium_omd_v1_45.trading_ses_control_flag = {}

-- Size: Trading Ses Control Flag
hkex_hkexsecurities_premium_omd_v1_45.trading_ses_control_flag.size = 1

-- Display: Trading Ses Control Flag
hkex_hkexsecurities_premium_omd_v1_45.trading_ses_control_flag.display = function(value)
  if value == "0" then
    return "Trading Ses Control Flag: Automatic Default (0)"
  end
  if value == "1" then
    return "Trading Ses Control Flag: Manual Invalidates The Normal Schedule For The Day (1)"
  end

  return "Trading Ses Control Flag: Unknown("..value..")"
end

-- Dissect: Trading Ses Control Flag
hkex_hkexsecurities_premium_omd_v1_45.trading_ses_control_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.trading_ses_control_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.trading_ses_control_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trading_ses_control_flag, range, value, display)

  return offset + length, value
end

-- Trading Ses Status
hkex_hkexsecurities_premium_omd_v1_45.trading_ses_status = {}

-- Size: Trading Ses Status
hkex_hkexsecurities_premium_omd_v1_45.trading_ses_status.size = 1

-- Display: Trading Ses Status
hkex_hkexsecurities_premium_omd_v1_45.trading_ses_status.display = function(value)
  if value == 0 then
    return "Trading Ses Status: Unknown For No (0)"
  end
  if value == 10 then
    return "Trading Ses Status: Halted For Ei (10)"
  end
  if value == 20 then
    return "Trading Ses Status: Pre Open For Pos Oi Nw Rm Ma Bl (20)"
  end
  if value == 30 then
    return "Trading Ses Status: Open For Ct And Oc (30)"
  end
  if value == 40 then
    return "Trading Ses Status: Pre Close For Cas Rp Oi Nw Rc Ma (40)"
  end
  if value == 50 then
    return "Trading Ses Status: Closed For Cl (50)"
  end
  if value == 100 then
    return "Trading Ses Status: Day Closed For Dc (100)"
  end

  return "Trading Ses Status: Unknown("..value..")"
end

-- Dissect: Trading Ses Status
hkex_hkexsecurities_premium_omd_v1_45.trading_ses_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.trading_ses_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.trading_ses_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trading_ses_status, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
hkex_hkexsecurities_premium_omd_v1_45.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
hkex_hkexsecurities_premium_omd_v1_45.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
hkex_hkexsecurities_premium_omd_v1_45.trading_session_sub_id.display = function(value)
  if value == 100 then
    return "Trading Session Sub Id: Not Yet Open No (100)"
  end
  if value == 1 then
    return "Trading Session Sub Id: Pos Order Input Oi (1)"
  end
  if value == 101 then
    return "Trading Session Sub Id: Pos No Cancellation Nw (101)"
  end
  if value == 108 then
    return "Trading Session Sub Id: Pos Random Matching Rm (108)"
  end
  if value == 2 then
    return "Trading Session Sub Id: Pos Order Matching Ma (2)"
  end
  if value == 7 then
    return "Trading Session Sub Id: Blocking Bl (7)"
  end
  if value == 3 then
    return "Trading Session Sub Id: Continuous Trading Ct (3)"
  end
  if value == 105 then
    return "Trading Session Sub Id: Cas Reference Price Fixing Rp (105)"
  end
  if value == 5 then
    return "Trading Session Sub Id: Cas Order Input Oi (5)"
  end
  if value == 106 then
    return "Trading Session Sub Id: Cas No Cancellation Nw (106)"
  end
  if value == 107 then
    return "Trading Session Sub Id: Cas Random Close Rc (107)"
  end
  if value == 4 then
    return "Trading Session Sub Id: Cas Order Matching Ma (4)"
  end
  if value == 102 then
    return "Trading Session Sub Id: Exchange Intervention Ei (102)"
  end
  if value == 103 then
    return "Trading Session Sub Id: Close Cl (103)"
  end
  if value == 104 then
    return "Trading Session Sub Id: Order Cancel Oc (104)"
  end
  if value == 0 then
    return "Trading Session Sub Id: Day Close Dc (0)"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
hkex_hkexsecurities_premium_omd_v1_45.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Trd Type
hkex_hkexsecurities_premium_omd_v1_45.trd_type = {}

-- Size: Trd Type
hkex_hkexsecurities_premium_omd_v1_45.trd_type.size = 2

-- Display: Trd Type
hkex_hkexsecurities_premium_omd_v1_45.trd_type.display = function(value)
  if value == 0 then
    return "Trd Type: Automatch Normal Public Trade Type Space (0)"
  end
  if value == 4 then
    return "Trd Type: Late Trade Offexchange Previous Day Public Trade Type P (4)"
  end
  if value == 22 then
    return "Trd Type: Nondirect Off Exchange Trade Public Trade Type M (22)"
  end
  if value == 100 then
    return "Trd Type: Automatch Internalized Public Trade Type Y (100)"
  end
  if value == 101 then
    return "Trd Type: Direct Offexchange Trade Public Trade Type X (101)"
  end
  if value == 102 then
    return "Trd Type: Odd Lot Trade Public Trade Type D (102)"
  end
  if value == 103 then
    return "Trd Type: Auction Trade Public Trade Type U (103)"
  end
  if value == 104 then
    return "Trd Type: Overseas Trade (104)"
  end

  return "Trd Type: Unknown("..value..")"
end

-- Dissect: Trd Type
hkex_hkexsecurities_premium_omd_v1_45.trd_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.trd_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = hkex_hkexsecurities_premium_omd_v1_45.trd_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trd_type, range, value, display)

  return offset + length, value
end

-- Turnover
hkex_hkexsecurities_premium_omd_v1_45.turnover = {}

-- Size: Turnover
hkex_hkexsecurities_premium_omd_v1_45.turnover.size = 8

-- Display: Turnover
hkex_hkexsecurities_premium_omd_v1_45.turnover.display = function(value)
  return "Turnover: "..value
end

-- Translate: Turnover
hkex_hkexsecurities_premium_omd_v1_45.turnover.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Turnover
hkex_hkexsecurities_premium_omd_v1_45.turnover.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_premium_omd_v1_45.turnover.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.turnover, range, value, display)

  return offset + length, value
end

-- Underlying Security Code
hkex_hkexsecurities_premium_omd_v1_45.underlying_security_code = {}

-- Size: Underlying Security Code
hkex_hkexsecurities_premium_omd_v1_45.underlying_security_code.size = 4

-- Display: Underlying Security Code
hkex_hkexsecurities_premium_omd_v1_45.underlying_security_code.display = function(value)
  return "Underlying Security Code: "..value
end

-- Dissect: Underlying Security Code
hkex_hkexsecurities_premium_omd_v1_45.underlying_security_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.underlying_security_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.underlying_security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.underlying_security_code, range, value, display)

  return offset + length, value
end

-- Update Action
hkex_hkexsecurities_premium_omd_v1_45.update_action = {}

-- Size: Update Action
hkex_hkexsecurities_premium_omd_v1_45.update_action.size = 1

-- Display: Update Action
hkex_hkexsecurities_premium_omd_v1_45.update_action.display = function(value)
  if value == 0 then
    return "Update Action: New (0)"
  end
  if value == 1 then
    return "Update Action: Change (1)"
  end
  if value == 2 then
    return "Update Action: Delete (2)"
  end
  if value == 74 then
    return "Update Action: Orderbook Clear (74)"
  end

  return "Update Action: Unknown("..value..")"
end

-- Dissect: Update Action
hkex_hkexsecurities_premium_omd_v1_45.update_action.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.update_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.update_action, range, value, display)

  return offset + length, value
end

-- Upper Price
hkex_hkexsecurities_premium_omd_v1_45.upper_price = {}

-- Size: Upper Price
hkex_hkexsecurities_premium_omd_v1_45.upper_price.size = 4

-- Display: Upper Price
hkex_hkexsecurities_premium_omd_v1_45.upper_price.display = function(value)
  return "Upper Price: "..value
end

-- Translate: Upper Price
hkex_hkexsecurities_premium_omd_v1_45.upper_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Upper Price
hkex_hkexsecurities_premium_omd_v1_45.upper_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.upper_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.upper_price.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.upper_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.upper_price, range, value, display)

  return offset + length, value
end

-- Vcm Flag
hkex_hkexsecurities_premium_omd_v1_45.vcm_flag = {}

-- Size: Vcm Flag
hkex_hkexsecurities_premium_omd_v1_45.vcm_flag.size = 1

-- Display: Vcm Flag
hkex_hkexsecurities_premium_omd_v1_45.vcm_flag.display = function(value)
  if value == "Y" then
    return "Vcm Flag: Vcm Applicable (Y)"
  end
  if value == "N" then
    return "Vcm Flag: Vcm Not Applicable (N)"
  end

  return "Vcm Flag: Unknown("..value..")"
end

-- Dissect: Vcm Flag
hkex_hkexsecurities_premium_omd_v1_45.vcm_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.vcm_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.vcm_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.vcm_flag, range, value, display)

  return offset + length, value
end

-- Vcm Lower Price
hkex_hkexsecurities_premium_omd_v1_45.vcm_lower_price = {}

-- Size: Vcm Lower Price
hkex_hkexsecurities_premium_omd_v1_45.vcm_lower_price.size = 4

-- Display: Vcm Lower Price
hkex_hkexsecurities_premium_omd_v1_45.vcm_lower_price.display = function(value)
  return "Vcm Lower Price: "..value
end

-- Translate: Vcm Lower Price
hkex_hkexsecurities_premium_omd_v1_45.vcm_lower_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Vcm Lower Price
hkex_hkexsecurities_premium_omd_v1_45.vcm_lower_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.vcm_lower_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.vcm_lower_price.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.vcm_lower_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.vcm_lower_price, range, value, display)

  return offset + length, value
end

-- Vcm Reference Price
hkex_hkexsecurities_premium_omd_v1_45.vcm_reference_price = {}

-- Size: Vcm Reference Price
hkex_hkexsecurities_premium_omd_v1_45.vcm_reference_price.size = 4

-- Display: Vcm Reference Price
hkex_hkexsecurities_premium_omd_v1_45.vcm_reference_price.display = function(value)
  return "Vcm Reference Price: "..value
end

-- Translate: Vcm Reference Price
hkex_hkexsecurities_premium_omd_v1_45.vcm_reference_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Vcm Reference Price
hkex_hkexsecurities_premium_omd_v1_45.vcm_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.vcm_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.vcm_reference_price.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.vcm_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.vcm_reference_price, range, value, display)

  return offset + length, value
end

-- Vcm Upper Price
hkex_hkexsecurities_premium_omd_v1_45.vcm_upper_price = {}

-- Size: Vcm Upper Price
hkex_hkexsecurities_premium_omd_v1_45.vcm_upper_price.size = 4

-- Display: Vcm Upper Price
hkex_hkexsecurities_premium_omd_v1_45.vcm_upper_price.display = function(value)
  return "Vcm Upper Price: "..value
end

-- Translate: Vcm Upper Price
hkex_hkexsecurities_premium_omd_v1_45.vcm_upper_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Vcm Upper Price
hkex_hkexsecurities_premium_omd_v1_45.vcm_upper_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.vcm_upper_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.vcm_upper_price.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.vcm_upper_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.vcm_upper_price, range, value, display)

  return offset + length, value
end

-- Vwap
hkex_hkexsecurities_premium_omd_v1_45.vwap = {}

-- Size: Vwap
hkex_hkexsecurities_premium_omd_v1_45.vwap.size = 4

-- Display: Vwap
hkex_hkexsecurities_premium_omd_v1_45.vwap.display = function(value)
  return "Vwap: "..value
end

-- Translate: Vwap
hkex_hkexsecurities_premium_omd_v1_45.vwap.translate = function(raw)
  return raw/1000
end

-- Dissect: Vwap
hkex_hkexsecurities_premium_omd_v1_45.vwap.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.vwap.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.vwap.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.vwap, range, value, display)

  return offset + length, value
end

-- Warrant Maturity Date
hkex_hkexsecurities_premium_omd_v1_45.warrant_maturity_date = {}

-- Size: Warrant Maturity Date
hkex_hkexsecurities_premium_omd_v1_45.warrant_maturity_date.size = 4

-- Display: Warrant Maturity Date
hkex_hkexsecurities_premium_omd_v1_45.warrant_maturity_date.display = function(value)
  return "Warrant Maturity Date: "..value
end

-- Dissect: Warrant Maturity Date
hkex_hkexsecurities_premium_omd_v1_45.warrant_maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.warrant_maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_premium_omd_v1_45.warrant_maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.warrant_maturity_date, range, value, display)

  return offset + length, value
end

-- Warrant Type
hkex_hkexsecurities_premium_omd_v1_45.warrant_type = {}

-- Size: Warrant Type
hkex_hkexsecurities_premium_omd_v1_45.warrant_type.size = 1

-- Display: Warrant Type
hkex_hkexsecurities_premium_omd_v1_45.warrant_type.display = function(value)
  if value == "N" then
    return "Warrant Type: Normal Instrument (N)"
  end
  if value == "X" then
    return "Warrant Type: Exotic Instrument (X)"
  end
  if value == "0" then
    return "Warrant Type: Not Available (0)"
  end

  return "Warrant Type: Unknown("..value..")"
end

-- Dissect: Warrant Type
hkex_hkexsecurities_premium_omd_v1_45.warrant_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.warrant_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_premium_omd_v1_45.warrant_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.warrant_type, range, value, display)

  return offset + length, value
end

-- Yield
hkex_hkexsecurities_premium_omd_v1_45.yield = {}

-- Size: Yield
hkex_hkexsecurities_premium_omd_v1_45.yield.size = 4

-- Display: Yield
hkex_hkexsecurities_premium_omd_v1_45.yield.display = function(value)
  return "Yield: "..value
end

-- Translate: Yield
hkex_hkexsecurities_premium_omd_v1_45.yield.translate = function(raw)
  return raw/1000
end

-- Dissect: Yield
hkex_hkexsecurities_premium_omd_v1_45.yield.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_premium_omd_v1_45.yield.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_premium_omd_v1_45.yield.translate(raw)
  local display = hkex_hkexsecurities_premium_omd_v1_45.yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.yield, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Hkex HkexSecurities Premium Omd 1.45
-----------------------------------------------------------------------

-- Vcm Trigger Message
hkex_hkexsecurities_premium_omd_v1_45.vcm_trigger_message = {}

-- Size: Vcm Trigger Message
hkex_hkexsecurities_premium_omd_v1_45.vcm_trigger_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.cooling_off_start_time.size + 
  hkex_hkexsecurities_premium_omd_v1_45.cooling_off_end_time.size + 
  hkex_hkexsecurities_premium_omd_v1_45.vcm_reference_price.size + 
  hkex_hkexsecurities_premium_omd_v1_45.vcm_lower_price.size + 
  hkex_hkexsecurities_premium_omd_v1_45.vcm_upper_price.size

-- Display: Vcm Trigger Message
hkex_hkexsecurities_premium_omd_v1_45.vcm_trigger_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Vcm Trigger Message
hkex_hkexsecurities_premium_omd_v1_45.vcm_trigger_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Cooling Off Start Time: Uint64
  index, cooling_off_start_time = hkex_hkexsecurities_premium_omd_v1_45.cooling_off_start_time.dissect(buffer, index, packet, parent)

  -- Cooling Off End Time: Uint64
  index, cooling_off_end_time = hkex_hkexsecurities_premium_omd_v1_45.cooling_off_end_time.dissect(buffer, index, packet, parent)

  -- Vcm Reference Price: Int32
  index, vcm_reference_price = hkex_hkexsecurities_premium_omd_v1_45.vcm_reference_price.dissect(buffer, index, packet, parent)

  -- Vcm Lower Price: Int32
  index, vcm_lower_price = hkex_hkexsecurities_premium_omd_v1_45.vcm_lower_price.dissect(buffer, index, packet, parent)

  -- Vcm Upper Price: Int32
  index, vcm_upper_price = hkex_hkexsecurities_premium_omd_v1_45.vcm_upper_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Vcm Trigger Message
hkex_hkexsecurities_premium_omd_v1_45.vcm_trigger_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.vcm_trigger_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.vcm_trigger_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.vcm_trigger_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.vcm_trigger_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
hkex_hkexsecurities_premium_omd_v1_45.trade_cancel_message = {}

-- Size: Trade Cancel Message
hkex_hkexsecurities_premium_omd_v1_45.trade_cancel_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.trade_id.size

-- Display: Trade Cancel Message
hkex_hkexsecurities_premium_omd_v1_45.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
hkex_hkexsecurities_premium_omd_v1_45.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Trade Id: Uint32
  index, trade_id = hkex_hkexsecurities_premium_omd_v1_45.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
hkex_hkexsecurities_premium_omd_v1_45.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trade_cancel_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
hkex_hkexsecurities_premium_omd_v1_45.trade_message = {}

-- Size: Trade Message
hkex_hkexsecurities_premium_omd_v1_45.trade_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.trade_id.size + 
  hkex_hkexsecurities_premium_omd_v1_45.price.size + 
  hkex_hkexsecurities_premium_omd_v1_45.quantity.size + 
  hkex_hkexsecurities_premium_omd_v1_45.trd_type.size + 
  hkex_hkexsecurities_premium_omd_v1_45.filler_2.size + 
  hkex_hkexsecurities_premium_omd_v1_45.trade_time.size

-- Display: Trade Message
hkex_hkexsecurities_premium_omd_v1_45.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
hkex_hkexsecurities_premium_omd_v1_45.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Trade Id: Uint32
  index, trade_id = hkex_hkexsecurities_premium_omd_v1_45.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_hkexsecurities_premium_omd_v1_45.price.dissect(buffer, index, packet, parent)

  -- Quantity: Uint32
  index, quantity = hkex_hkexsecurities_premium_omd_v1_45.quantity.dissect(buffer, index, packet, parent)

  -- Trd Type: Int16
  index, trd_type = hkex_hkexsecurities_premium_omd_v1_45.trd_type.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_premium_omd_v1_45.filler_2.dissect(buffer, index, packet, parent)

  -- Trade Time: Uint64
  index, trade_time = hkex_hkexsecurities_premium_omd_v1_45.trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
hkex_hkexsecurities_premium_omd_v1_45.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trade_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
hkex_hkexsecurities_premium_omd_v1_45.security_status_message = {}

-- Size: Security Status Message
hkex_hkexsecurities_premium_omd_v1_45.security_status_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.suspension_indicator.size + 
  hkex_hkexsecurities_premium_omd_v1_45.filler_3.size

-- Display: Security Status Message
hkex_hkexsecurities_premium_omd_v1_45.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
hkex_hkexsecurities_premium_omd_v1_45.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Suspension Indicator: Uint8
  index, suspension_indicator = hkex_hkexsecurities_premium_omd_v1_45.suspension_indicator.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_hkexsecurities_premium_omd_v1_45.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
hkex_hkexsecurities_premium_omd_v1_45.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.security_status_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Message
hkex_hkexsecurities_premium_omd_v1_45.trading_session_status_message = {}

-- Size: Trading Session Status Message
hkex_hkexsecurities_premium_omd_v1_45.trading_session_status_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.market_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.filler_1.size + 
  hkex_hkexsecurities_premium_omd_v1_45.trading_session_sub_id.size + 
  hkex_hkexsecurities_premium_omd_v1_45.trading_ses_status.size + 
  hkex_hkexsecurities_premium_omd_v1_45.trading_ses_control_flag.size + 
  hkex_hkexsecurities_premium_omd_v1_45.filler_4.size + 
  hkex_hkexsecurities_premium_omd_v1_45.start_date_time.size + 
  hkex_hkexsecurities_premium_omd_v1_45.end_date_time.size

-- Display: Trading Session Status Message
hkex_hkexsecurities_premium_omd_v1_45.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
hkex_hkexsecurities_premium_omd_v1_45.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Code: String
  index, market_code = hkex_hkexsecurities_premium_omd_v1_45.market_code.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_premium_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: Uint8
  index, trading_session_sub_id = hkex_hkexsecurities_premium_omd_v1_45.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trading Ses Status: Uint8
  index, trading_ses_status = hkex_hkexsecurities_premium_omd_v1_45.trading_ses_status.dissect(buffer, index, packet, parent)

  -- Trading Ses Control Flag: String
  index, trading_ses_control_flag = hkex_hkexsecurities_premium_omd_v1_45.trading_ses_control_flag.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = hkex_hkexsecurities_premium_omd_v1_45.filler_4.dissect(buffer, index, packet, parent)

  -- Start Date Time: Uint64
  index, start_date_time = hkex_hkexsecurities_premium_omd_v1_45.start_date_time.dissect(buffer, index, packet, parent)

  -- End Date Time: Uint64
  index, end_date_time = hkex_hkexsecurities_premium_omd_v1_45.end_date_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
hkex_hkexsecurities_premium_omd_v1_45.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.trading_session_status_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Yield Message
hkex_hkexsecurities_premium_omd_v1_45.yield_message = {}

-- Size: Yield Message
hkex_hkexsecurities_premium_omd_v1_45.yield_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.yield.size

-- Display: Yield Message
hkex_hkexsecurities_premium_omd_v1_45.yield_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Yield Message
hkex_hkexsecurities_premium_omd_v1_45.yield_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Yield: Int32
  index, yield = hkex_hkexsecurities_premium_omd_v1_45.yield.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Yield Message
hkex_hkexsecurities_premium_omd_v1_45.yield_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.yield_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.yield_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.yield_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.yield_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Turnover Message
hkex_hkexsecurities_premium_omd_v1_45.market_turnover_message = {}

-- Size: Market Turnover Message
hkex_hkexsecurities_premium_omd_v1_45.market_turnover_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.market_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.currency_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.filler_1.size + 
  hkex_hkexsecurities_premium_omd_v1_45.turnover.size

-- Display: Market Turnover Message
hkex_hkexsecurities_premium_omd_v1_45.market_turnover_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Turnover Message
hkex_hkexsecurities_premium_omd_v1_45.market_turnover_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Code: String
  index, market_code = hkex_hkexsecurities_premium_omd_v1_45.market_code.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = hkex_hkexsecurities_premium_omd_v1_45.currency_code.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_premium_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  -- Turnover: Int64
  index, turnover = hkex_hkexsecurities_premium_omd_v1_45.turnover.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Turnover Message
hkex_hkexsecurities_premium_omd_v1_45.market_turnover_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.market_turnover_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.market_turnover_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.market_turnover_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.market_turnover_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Message
hkex_hkexsecurities_premium_omd_v1_45.statistics_message = {}

-- Size: Statistics Message
hkex_hkexsecurities_premium_omd_v1_45.statistics_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.shares_traded.size + 
  hkex_hkexsecurities_premium_omd_v1_45.turnover.size + 
  hkex_hkexsecurities_premium_omd_v1_45.high_price.size + 
  hkex_hkexsecurities_premium_omd_v1_45.low_price.size + 
  hkex_hkexsecurities_premium_omd_v1_45.last_price.size + 
  hkex_hkexsecurities_premium_omd_v1_45.vwap.size + 
  hkex_hkexsecurities_premium_omd_v1_45.short_sell_shares_traded.size + 
  hkex_hkexsecurities_premium_omd_v1_45.short_sell_turnover.size

-- Display: Statistics Message
hkex_hkexsecurities_premium_omd_v1_45.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
hkex_hkexsecurities_premium_omd_v1_45.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Shares Traded: Uint64
  index, shares_traded = hkex_hkexsecurities_premium_omd_v1_45.shares_traded.dissect(buffer, index, packet, parent)

  -- Turnover: Int64
  index, turnover = hkex_hkexsecurities_premium_omd_v1_45.turnover.dissect(buffer, index, packet, parent)

  -- High Price: Int32
  index, high_price = hkex_hkexsecurities_premium_omd_v1_45.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Int32
  index, low_price = hkex_hkexsecurities_premium_omd_v1_45.low_price.dissect(buffer, index, packet, parent)

  -- Last Price: Int32
  index, last_price = hkex_hkexsecurities_premium_omd_v1_45.last_price.dissect(buffer, index, packet, parent)

  -- Vwap: Int32
  index, vwap = hkex_hkexsecurities_premium_omd_v1_45.vwap.dissect(buffer, index, packet, parent)

  -- Short Sell Shares Traded: Uint32
  index, short_sell_shares_traded = hkex_hkexsecurities_premium_omd_v1_45.short_sell_shares_traded.dissect(buffer, index, packet, parent)

  -- Short Sell Turnover: Int64
  index, short_sell_turnover = hkex_hkexsecurities_premium_omd_v1_45.short_sell_turnover.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
hkex_hkexsecurities_premium_omd_v1_45.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.statistics_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Message
hkex_hkexsecurities_premium_omd_v1_45.reference_price_message = {}

-- Size: Reference Price Message
hkex_hkexsecurities_premium_omd_v1_45.reference_price_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.reference_price.size + 
  hkex_hkexsecurities_premium_omd_v1_45.lower_price.size + 
  hkex_hkexsecurities_premium_omd_v1_45.upper_price.size

-- Display: Reference Price Message
hkex_hkexsecurities_premium_omd_v1_45.reference_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Message
hkex_hkexsecurities_premium_omd_v1_45.reference_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Reference Price: Int32
  index, reference_price = hkex_hkexsecurities_premium_omd_v1_45.reference_price.dissect(buffer, index, packet, parent)

  -- Lower Price: Int32
  index, lower_price = hkex_hkexsecurities_premium_omd_v1_45.lower_price.dissect(buffer, index, packet, parent)

  -- Upper Price: Int32
  index, upper_price = hkex_hkexsecurities_premium_omd_v1_45.upper_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reference Price Message
hkex_hkexsecurities_premium_omd_v1_45.reference_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.reference_price_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.reference_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.reference_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.reference_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Currency Rate Message
hkex_hkexsecurities_premium_omd_v1_45.currency_rate_message = {}

-- Size: Currency Rate Message
hkex_hkexsecurities_premium_omd_v1_45.currency_rate_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.currency_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.filler_1.size + 
  hkex_hkexsecurities_premium_omd_v1_45.currency_factor.size + 
  hkex_hkexsecurities_premium_omd_v1_45.filler_2.size + 
  hkex_hkexsecurities_premium_omd_v1_45.currency_rate.size

-- Display: Currency Rate Message
hkex_hkexsecurities_premium_omd_v1_45.currency_rate_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Currency Rate Message
hkex_hkexsecurities_premium_omd_v1_45.currency_rate_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Currency Code: String
  index, currency_code = hkex_hkexsecurities_premium_omd_v1_45.currency_code.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_premium_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  -- Currency Factor: Uint16
  index, currency_factor = hkex_hkexsecurities_premium_omd_v1_45.currency_factor.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_premium_omd_v1_45.filler_2.dissect(buffer, index, packet, parent)

  -- Currency Rate: Uint32
  index, currency_rate = hkex_hkexsecurities_premium_omd_v1_45.currency_rate.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Currency Rate Message
hkex_hkexsecurities_premium_omd_v1_45.currency_rate_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.currency_rate_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.currency_rate_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.currency_rate_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.currency_rate_message.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Provider
hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider = {}

-- Size: Liquidity Provider
hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider.size =
  hkex_hkexsecurities_premium_omd_v1_45.lp_broker_number.size

-- Display: Liquidity Provider
hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Provider
hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider.fields = function(buffer, offset, packet, parent, liquidity_provider_index)
  local index = offset

  -- Implicit Liquidity Provider Index
  if liquidity_provider_index ~= nil and show.indexes then
    local iteration = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.liquidity_provider_index, liquidity_provider_index)
    iteration:set_generated()
  end

  -- Lp Broker Number: Uint16
  index, lp_broker_number = hkex_hkexsecurities_premium_omd_v1_45.lp_broker_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Provider
hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider.dissect = function(buffer, offset, packet, parent, liquidity_provider_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.liquidity_provider, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider.fields(buffer, offset, packet, parent, liquidity_provider_index)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider.fields(buffer, offset, packet, parent, liquidity_provider_index)
  end
end

-- Liquidity Provider Message
hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider_message = {}

-- Calculate size of: Liquidity Provider Message
hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider_message.size = function(buffer, offset)
  local index = 0

  index = index + hkex_hkexsecurities_premium_omd_v1_45.security_code.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.no_liquidity_providers.size

  -- Calculate field size from count
  local liquidity_provider_count = buffer(offset + index - 2, 2):le_uint()
  index = index + liquidity_provider_count * 2

  return index
end

-- Display: Liquidity Provider Message
hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Provider Message
hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- No Liquidity Providers: Uint16
  index, no_liquidity_providers = hkex_hkexsecurities_premium_omd_v1_45.no_liquidity_providers.dissect(buffer, index, packet, parent)

  -- Repeating: Liquidity Provider
  for liquidity_provider_index = 1, no_liquidity_providers do
    index, liquidity_provider = hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider.dissect(buffer, index, packet, parent, liquidity_provider_index)
  end

  return index
end

-- Dissect: Liquidity Provider Message
hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.liquidity_provider_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Security
hkex_hkexsecurities_premium_omd_v1_45.underlying_security = {}

-- Size: Underlying Security
hkex_hkexsecurities_premium_omd_v1_45.underlying_security.size =
  hkex_hkexsecurities_premium_omd_v1_45.underlying_security_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.filler_4.size

-- Display: Underlying Security
hkex_hkexsecurities_premium_omd_v1_45.underlying_security.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Security
hkex_hkexsecurities_premium_omd_v1_45.underlying_security.fields = function(buffer, offset, packet, parent, underlying_security_index)
  local index = offset

  -- Implicit Underlying Security Index
  if underlying_security_index ~= nil and show.indexes then
    local iteration = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.underlying_security_index, underlying_security_index)
    iteration:set_generated()
  end

  -- Underlying Security Code: Uint32
  index, underlying_security_code = hkex_hkexsecurities_premium_omd_v1_45.underlying_security_code.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = hkex_hkexsecurities_premium_omd_v1_45.filler_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Security
hkex_hkexsecurities_premium_omd_v1_45.underlying_security.dissect = function(buffer, offset, packet, parent, underlying_security_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.underlying_security, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.underlying_security.fields(buffer, offset, packet, parent, underlying_security_index)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.underlying_security.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.underlying_security.fields(buffer, offset, packet, parent, underlying_security_index)
  end
end

-- Entitlement Composite
hkex_hkexsecurities_premium_omd_v1_45.entitlement_composite = {}

-- Size: Entitlement Composite
hkex_hkexsecurities_premium_omd_v1_45.entitlement_composite.size =
  hkex_hkexsecurities_premium_omd_v1_45.entitlement.size + 
  hkex_hkexsecurities_premium_omd_v1_45.decimals_in_entitlement.size

-- Display: Entitlement Composite
hkex_hkexsecurities_premium_omd_v1_45.entitlement_composite.display = function(packet, parent, value, length)
  if value == nil then
    return ": No Value"
  end

  return ": " .. tostring(value)
end

-- Dissect Fields: Entitlement Composite
hkex_hkexsecurities_premium_omd_v1_45.entitlement_composite.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Entitlement: Int32
  index, entitlement = hkex_hkexsecurities_premium_omd_v1_45.entitlement.dissect(buffer, index, packet, parent)

  -- Decimals In Entitlement: Uint8
  index, decimals_in_entitlement = hkex_hkexsecurities_premium_omd_v1_45.decimals_in_entitlement.dissect(buffer, index, packet, parent)

  -- Composite value
  local entitlement_composite = entitlement / 10 ^ decimals_in_entitlement

  return index, entitlement_composite
end

-- Dissect: Entitlement Composite
hkex_hkexsecurities_premium_omd_v1_45.entitlement_composite.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.entitlement_composite, buffer(offset, 0))
    local index, value = hkex_hkexsecurities_premium_omd_v1_45.entitlement_composite.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.entitlement_composite.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.entitlement_composite.fields(buffer, offset, packet, parent)
  end
end

-- Call Price Composite
hkex_hkexsecurities_premium_omd_v1_45.call_price_composite = {}

-- Size: Call Price Composite
hkex_hkexsecurities_premium_omd_v1_45.call_price_composite.size =
  hkex_hkexsecurities_premium_omd_v1_45.call_price.size + 
  hkex_hkexsecurities_premium_omd_v1_45.decimals_in_call_price.size

-- Display: Call Price Composite
hkex_hkexsecurities_premium_omd_v1_45.call_price_composite.display = function(packet, parent, value, length)
  if value == nil then
    return ": No Value"
  end

  return ": " .. tostring(value)
end

-- Dissect Fields: Call Price Composite
hkex_hkexsecurities_premium_omd_v1_45.call_price_composite.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Call Price: Int32
  index, call_price = hkex_hkexsecurities_premium_omd_v1_45.call_price.dissect(buffer, index, packet, parent)

  -- Decimals In Call Price: Uint8
  index, decimals_in_call_price = hkex_hkexsecurities_premium_omd_v1_45.decimals_in_call_price.dissect(buffer, index, packet, parent)

  -- Composite value
  local call_price_composite = call_price / 10 ^ decimals_in_call_price

  return index, call_price_composite
end

-- Dissect: Call Price Composite
hkex_hkexsecurities_premium_omd_v1_45.call_price_composite.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.call_price_composite, buffer(offset, 0))
    local index, value = hkex_hkexsecurities_premium_omd_v1_45.call_price_composite.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.call_price_composite.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.call_price_composite.fields(buffer, offset, packet, parent)
  end
end

-- Face Value Composite
hkex_hkexsecurities_premium_omd_v1_45.face_value_composite = {}

-- Size: Face Value Composite
hkex_hkexsecurities_premium_omd_v1_45.face_value_composite.size =
  hkex_hkexsecurities_premium_omd_v1_45.face_value.size + 
  hkex_hkexsecurities_premium_omd_v1_45.decimals_in_face_value.size

-- Display: Face Value Composite
hkex_hkexsecurities_premium_omd_v1_45.face_value_composite.display = function(packet, parent, value, length)
  if value == nil then
    return ": No Value"
  end

  return ": " .. tostring(value)
end

-- Dissect Fields: Face Value Composite
hkex_hkexsecurities_premium_omd_v1_45.face_value_composite.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Face Value: Uint64
  index, face_value = hkex_hkexsecurities_premium_omd_v1_45.face_value.dissect(buffer, index, packet, parent)

  -- Decimals In Face Value: Uint8
  index, decimals_in_face_value = hkex_hkexsecurities_premium_omd_v1_45.decimals_in_face_value.dissect(buffer, index, packet, parent)

  -- Composite value
  local face_value_composite = face_value / 10 ^ decimals_in_face_value

  return index, face_value_composite
end

-- Dissect: Face Value Composite
hkex_hkexsecurities_premium_omd_v1_45.face_value_composite.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.face_value_composite, buffer(offset, 0))
    local index, value = hkex_hkexsecurities_premium_omd_v1_45.face_value_composite.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.face_value_composite.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.face_value_composite.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Message
hkex_hkexsecurities_premium_omd_v1_45.security_definition_message = {}

-- Calculate size of: Security Definition Message
hkex_hkexsecurities_premium_omd_v1_45.security_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + hkex_hkexsecurities_premium_omd_v1_45.security_code.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.market_code.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.isin_code.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.instrument_type.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.product_type.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.filler_1.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.spread_table_code.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.security_short_name.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.currency_code.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.security_name_gccs.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.security_name_gb.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.lot_size.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.filler_4.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.previous_closing_price.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.vcm_flag.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.short_sell_flag.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.cas_flag.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.ccass_flag.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.dummy_security_flag.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.filler_1.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.stamp_duty_flag.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.filler_1.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.listing_date.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.delisting_date.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.free_text.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.filler_62.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.pos_flag.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.pos_upper_limit.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.pos_lower_limit.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.domain_stmt_security_code.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.filler_37.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.efn_flag.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.accrued_interest.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.coupon_rate.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.filler_1.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.face_value_composite.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.face_value_currency.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.maturity_date.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.investor_type.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.filler_44.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.conversion_ratio.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.strike_price_1.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.strike_price_2.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.warrant_maturity_date.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.call_put_flag.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.style.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.filler_2.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.warrant_type.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.call_price_composite.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.entitlement_composite.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.no_warrants_per_entitlement.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.filler_63.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.no_underlying_securities.size

  -- Calculate field size from count
  local underlying_security_count = buffer(offset + index - 2, 2):le_uint()
  index = index + underlying_security_count * 8

  return index
end

-- Display: Security Definition Message
hkex_hkexsecurities_premium_omd_v1_45.security_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message
hkex_hkexsecurities_premium_omd_v1_45.security_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Market Code: String
  index, market_code = hkex_hkexsecurities_premium_omd_v1_45.market_code.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = hkex_hkexsecurities_premium_omd_v1_45.isin_code.dissect(buffer, index, packet, parent)

  -- Instrument Type: String
  index, instrument_type = hkex_hkexsecurities_premium_omd_v1_45.instrument_type.dissect(buffer, index, packet, parent)

  -- Product Type: Uint8
  index, product_type = hkex_hkexsecurities_premium_omd_v1_45.product_type.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_premium_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  -- Spread Table Code: String
  index, spread_table_code = hkex_hkexsecurities_premium_omd_v1_45.spread_table_code.dissect(buffer, index, packet, parent)

  -- Security Short Name: String
  index, security_short_name = hkex_hkexsecurities_premium_omd_v1_45.security_short_name.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = hkex_hkexsecurities_premium_omd_v1_45.currency_code.dissect(buffer, index, packet, parent)

  -- Security Name Gccs: Binary
  index, security_name_gccs = hkex_hkexsecurities_premium_omd_v1_45.security_name_gccs.dissect(buffer, index, packet, parent)

  -- Security Name Gb: Binary
  index, security_name_gb = hkex_hkexsecurities_premium_omd_v1_45.security_name_gb.dissect(buffer, index, packet, parent)

  -- Lot Size: Uint32
  index, lot_size = hkex_hkexsecurities_premium_omd_v1_45.lot_size.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = hkex_hkexsecurities_premium_omd_v1_45.filler_4.dissect(buffer, index, packet, parent)

  -- Previous Closing Price: Int32
  index, previous_closing_price = hkex_hkexsecurities_premium_omd_v1_45.previous_closing_price.dissect(buffer, index, packet, parent)

  -- Vcm Flag: String
  index, vcm_flag = hkex_hkexsecurities_premium_omd_v1_45.vcm_flag.dissect(buffer, index, packet, parent)

  -- Short Sell Flag: String
  index, short_sell_flag = hkex_hkexsecurities_premium_omd_v1_45.short_sell_flag.dissect(buffer, index, packet, parent)

  -- Cas Flag: String
  index, cas_flag = hkex_hkexsecurities_premium_omd_v1_45.cas_flag.dissect(buffer, index, packet, parent)

  -- Ccass Flag: String
  index, ccass_flag = hkex_hkexsecurities_premium_omd_v1_45.ccass_flag.dissect(buffer, index, packet, parent)

  -- Dummy Security Flag: String
  index, dummy_security_flag = hkex_hkexsecurities_premium_omd_v1_45.dummy_security_flag.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_premium_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  -- Stamp Duty Flag: String
  index, stamp_duty_flag = hkex_hkexsecurities_premium_omd_v1_45.stamp_duty_flag.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_premium_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  -- Listing Date: Uint32
  index, listing_date = hkex_hkexsecurities_premium_omd_v1_45.listing_date.dissect(buffer, index, packet, parent)

  -- Delisting Date: Uint32
  index, delisting_date = hkex_hkexsecurities_premium_omd_v1_45.delisting_date.dissect(buffer, index, packet, parent)

  -- Free Text: String
  index, free_text = hkex_hkexsecurities_premium_omd_v1_45.free_text.dissect(buffer, index, packet, parent)

  -- Filler 62: String
  index, filler_62 = hkex_hkexsecurities_premium_omd_v1_45.filler_62.dissect(buffer, index, packet, parent)

  -- Pos Flag: String
  index, pos_flag = hkex_hkexsecurities_premium_omd_v1_45.pos_flag.dissect(buffer, index, packet, parent)

  -- Pos Upper Limit: Int32
  index, pos_upper_limit = hkex_hkexsecurities_premium_omd_v1_45.pos_upper_limit.dissect(buffer, index, packet, parent)

  -- Pos Lower Limit: Int32
  index, pos_lower_limit = hkex_hkexsecurities_premium_omd_v1_45.pos_lower_limit.dissect(buffer, index, packet, parent)

  -- Domain Stmt Security Code: Uint32
  index, domain_stmt_security_code = hkex_hkexsecurities_premium_omd_v1_45.domain_stmt_security_code.dissect(buffer, index, packet, parent)

  -- Filler 37: String
  index, filler_37 = hkex_hkexsecurities_premium_omd_v1_45.filler_37.dissect(buffer, index, packet, parent)

  -- Efn Flag: String
  index, efn_flag = hkex_hkexsecurities_premium_omd_v1_45.efn_flag.dissect(buffer, index, packet, parent)

  -- Accrued Interest: Uint32
  index, accrued_interest = hkex_hkexsecurities_premium_omd_v1_45.accrued_interest.dissect(buffer, index, packet, parent)

  -- Coupon Rate: Uint32
  index, coupon_rate = hkex_hkexsecurities_premium_omd_v1_45.coupon_rate.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_premium_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  -- Face Value Composite: Struct of 2 fields
  index, face_value_composite = hkex_hkexsecurities_premium_omd_v1_45.face_value_composite.dissect(buffer, index, packet, parent)

  -- Face Value Currency: String
  index, face_value_currency = hkex_hkexsecurities_premium_omd_v1_45.face_value_currency.dissect(buffer, index, packet, parent)

  -- Maturity Date: Uint32
  index, maturity_date = hkex_hkexsecurities_premium_omd_v1_45.maturity_date.dissect(buffer, index, packet, parent)

  -- Investor Type: String
  index, investor_type = hkex_hkexsecurities_premium_omd_v1_45.investor_type.dissect(buffer, index, packet, parent)

  -- Filler 44: String
  index, filler_44 = hkex_hkexsecurities_premium_omd_v1_45.filler_44.dissect(buffer, index, packet, parent)

  -- Conversion Ratio: Uint32
  index, conversion_ratio = hkex_hkexsecurities_premium_omd_v1_45.conversion_ratio.dissect(buffer, index, packet, parent)

  -- Strike Price 1: Int32
  index, strike_price_1 = hkex_hkexsecurities_premium_omd_v1_45.strike_price_1.dissect(buffer, index, packet, parent)

  -- Strike Price 2: Int32
  index, strike_price_2 = hkex_hkexsecurities_premium_omd_v1_45.strike_price_2.dissect(buffer, index, packet, parent)

  -- Warrant Maturity Date: Uint32
  index, warrant_maturity_date = hkex_hkexsecurities_premium_omd_v1_45.warrant_maturity_date.dissect(buffer, index, packet, parent)

  -- Call Put Flag: String
  index, call_put_flag = hkex_hkexsecurities_premium_omd_v1_45.call_put_flag.dissect(buffer, index, packet, parent)

  -- Style: String
  index, style = hkex_hkexsecurities_premium_omd_v1_45.style.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_premium_omd_v1_45.filler_2.dissect(buffer, index, packet, parent)

  -- Warrant Type: String
  index, warrant_type = hkex_hkexsecurities_premium_omd_v1_45.warrant_type.dissect(buffer, index, packet, parent)

  -- Call Price Composite: Struct of 2 fields
  index, call_price_composite = hkex_hkexsecurities_premium_omd_v1_45.call_price_composite.dissect(buffer, index, packet, parent)

  -- Entitlement Composite: Struct of 2 fields
  index, entitlement_composite = hkex_hkexsecurities_premium_omd_v1_45.entitlement_composite.dissect(buffer, index, packet, parent)

  -- No Warrants Per Entitlement: Uint32
  index, no_warrants_per_entitlement = hkex_hkexsecurities_premium_omd_v1_45.no_warrants_per_entitlement.dissect(buffer, index, packet, parent)

  -- Filler 63: String
  index, filler_63 = hkex_hkexsecurities_premium_omd_v1_45.filler_63.dissect(buffer, index, packet, parent)

  -- No Underlying Securities: Uint16
  index, no_underlying_securities = hkex_hkexsecurities_premium_omd_v1_45.no_underlying_securities.dissect(buffer, index, packet, parent)

  -- Repeating: Underlying Security
  for underlying_security_index = 1, no_underlying_securities do
    index, underlying_security = hkex_hkexsecurities_premium_omd_v1_45.underlying_security.dissect(buffer, index, packet, parent, underlying_security_index)
  end

  return index
end

-- Dissect: Security Definition Message
hkex_hkexsecurities_premium_omd_v1_45.security_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.security_definition_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.security_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.security_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.security_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Definition Message
hkex_hkexsecurities_premium_omd_v1_45.market_definition_message = {}

-- Size: Market Definition Message
hkex_hkexsecurities_premium_omd_v1_45.market_definition_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.market_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.market_name.size + 
  hkex_hkexsecurities_premium_omd_v1_45.currency_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.number_of_securities.size

-- Display: Market Definition Message
hkex_hkexsecurities_premium_omd_v1_45.market_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Definition Message
hkex_hkexsecurities_premium_omd_v1_45.market_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Code: String
  index, market_code = hkex_hkexsecurities_premium_omd_v1_45.market_code.dissect(buffer, index, packet, parent)

  -- Market Name: String
  index, market_name = hkex_hkexsecurities_premium_omd_v1_45.market_name.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = hkex_hkexsecurities_premium_omd_v1_45.currency_code.dissect(buffer, index, packet, parent)

  -- Number Of Securities: Uint32
  index, number_of_securities = hkex_hkexsecurities_premium_omd_v1_45.number_of_securities.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Definition Message
hkex_hkexsecurities_premium_omd_v1_45.market_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.market_definition_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.market_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.market_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.market_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Imbalance Message
hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_message = {}

-- Size: Order Imbalance Message
hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_direction.size + 
  hkex_hkexsecurities_premium_omd_v1_45.filler_1.size + 
  hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_quantity.size + 
  hkex_hkexsecurities_premium_omd_v1_45.filler_2.size

-- Display: Order Imbalance Message
hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Imbalance Message
hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Order Imbalance Direction: String
  index, order_imbalance_direction = hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_direction.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_premium_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  -- Order Imbalance Quantity: Uint64
  index, order_imbalance_quantity = hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_quantity.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_premium_omd_v1_45.filler_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Imbalance Message
hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.order_imbalance_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Nominal Price Message
hkex_hkexsecurities_premium_omd_v1_45.nominal_price_message = {}

-- Size: Nominal Price Message
hkex_hkexsecurities_premium_omd_v1_45.nominal_price_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.nominal_price.size

-- Display: Nominal Price Message
hkex_hkexsecurities_premium_omd_v1_45.nominal_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Nominal Price Message
hkex_hkexsecurities_premium_omd_v1_45.nominal_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Nominal Price: Int32
  index, nominal_price = hkex_hkexsecurities_premium_omd_v1_45.nominal_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Nominal Price Message
hkex_hkexsecurities_premium_omd_v1_45.nominal_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.nominal_price_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.nominal_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.nominal_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.nominal_price_message.fields(buffer, offset, packet, parent)
  end
end

-- News Line Item
hkex_hkexsecurities_premium_omd_v1_45.news_line_item = {}

-- Size: News Line Item
hkex_hkexsecurities_premium_omd_v1_45.news_line_item.size =
  hkex_hkexsecurities_premium_omd_v1_45.news_line.size

-- Display: News Line Item
hkex_hkexsecurities_premium_omd_v1_45.news_line_item.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Line Item
hkex_hkexsecurities_premium_omd_v1_45.news_line_item.fields = function(buffer, offset, packet, parent, news_line_item_index)
  local index = offset

  -- Implicit News Line Item Index
  if news_line_item_index ~= nil and show.indexes then
    local iteration = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_line_item_index, news_line_item_index)
    iteration:set_generated()
  end

  -- News Line: Binary
  index, news_line = hkex_hkexsecurities_premium_omd_v1_45.news_line.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Line Item
hkex_hkexsecurities_premium_omd_v1_45.news_line_item.dissect = function(buffer, offset, packet, parent, news_line_item_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_line_item, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.news_line_item.fields(buffer, offset, packet, parent, news_line_item_index)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.news_line_item.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.news_line_item.fields(buffer, offset, packet, parent, news_line_item_index)
  end
end

-- News Security
hkex_hkexsecurities_premium_omd_v1_45.news_security = {}

-- Size: News Security
hkex_hkexsecurities_premium_omd_v1_45.news_security.size =
  hkex_hkexsecurities_premium_omd_v1_45.security_code.size

-- Display: News Security
hkex_hkexsecurities_premium_omd_v1_45.news_security.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Security
hkex_hkexsecurities_premium_omd_v1_45.news_security.fields = function(buffer, offset, packet, parent, news_security_index)
  local index = offset

  -- Implicit News Security Index
  if news_security_index ~= nil and show.indexes then
    local iteration = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_security_index, news_security_index)
    iteration:set_generated()
  end

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Security
hkex_hkexsecurities_premium_omd_v1_45.news_security.dissect = function(buffer, offset, packet, parent, news_security_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_security, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.news_security.fields(buffer, offset, packet, parent, news_security_index)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.news_security.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.news_security.fields(buffer, offset, packet, parent, news_security_index)
  end
end

-- News Market
hkex_hkexsecurities_premium_omd_v1_45.news_market = {}

-- Size: News Market
hkex_hkexsecurities_premium_omd_v1_45.news_market.size =
  hkex_hkexsecurities_premium_omd_v1_45.market_code.size

-- Display: News Market
hkex_hkexsecurities_premium_omd_v1_45.news_market.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Market
hkex_hkexsecurities_premium_omd_v1_45.news_market.fields = function(buffer, offset, packet, parent, news_market_index)
  local index = offset

  -- Implicit News Market Index
  if news_market_index ~= nil and show.indexes then
    local iteration = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_market_index, news_market_index)
    iteration:set_generated()
  end

  -- Market Code: String
  index, market_code = hkex_hkexsecurities_premium_omd_v1_45.market_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Market
hkex_hkexsecurities_premium_omd_v1_45.news_market.dissect = function(buffer, offset, packet, parent, news_market_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_market, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.news_market.fields(buffer, offset, packet, parent, news_market_index)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.news_market.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.news_market.fields(buffer, offset, packet, parent, news_market_index)
  end
end

-- News Message
hkex_hkexsecurities_premium_omd_v1_45.news_message = {}

-- Calculate size of: News Message
hkex_hkexsecurities_premium_omd_v1_45.news_message.size = function(buffer, offset)
  local index = 0

  index = index + hkex_hkexsecurities_premium_omd_v1_45.news_type.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.news_id.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.headline.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.cancel_flag.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.last_fragment.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.filler_4.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.release_time.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.filler_2.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.no_market_codes.size

  -- Calculate field size from count
  local news_market_count = buffer(offset + index - 2, 2):le_uint()
  index = index + news_market_count * 4

  index = index + hkex_hkexsecurities_premium_omd_v1_45.filler_2.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.no_security_codes.size

  -- Calculate field size from count
  local news_security_count = buffer(offset + index - 2, 2):le_uint()
  index = index + news_security_count * 4

  index = index + hkex_hkexsecurities_premium_omd_v1_45.filler_2.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.no_news_lines.size

  -- Calculate field size from count
  local news_line_item_count = buffer(offset + index - 2, 2):le_uint()
  index = index + news_line_item_count * 160

  return index
end

-- Display: News Message
hkex_hkexsecurities_premium_omd_v1_45.news_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Message
hkex_hkexsecurities_premium_omd_v1_45.news_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- News Type: String
  index, news_type = hkex_hkexsecurities_premium_omd_v1_45.news_type.dissect(buffer, index, packet, parent)

  -- News Id: String
  index, news_id = hkex_hkexsecurities_premium_omd_v1_45.news_id.dissect(buffer, index, packet, parent)

  -- Headline: Binary
  index, headline = hkex_hkexsecurities_premium_omd_v1_45.headline.dissect(buffer, index, packet, parent)

  -- Cancel Flag: String
  index, cancel_flag = hkex_hkexsecurities_premium_omd_v1_45.cancel_flag.dissect(buffer, index, packet, parent)

  -- Last Fragment: String
  index, last_fragment = hkex_hkexsecurities_premium_omd_v1_45.last_fragment.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = hkex_hkexsecurities_premium_omd_v1_45.filler_4.dissect(buffer, index, packet, parent)

  -- Release Time: Uint64
  index, release_time = hkex_hkexsecurities_premium_omd_v1_45.release_time.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_premium_omd_v1_45.filler_2.dissect(buffer, index, packet, parent)

  -- No Market Codes: Uint16
  index, no_market_codes = hkex_hkexsecurities_premium_omd_v1_45.no_market_codes.dissect(buffer, index, packet, parent)

  -- Repeating: News Market
  for news_market_index = 1, no_market_codes do
    index, news_market = hkex_hkexsecurities_premium_omd_v1_45.news_market.dissect(buffer, index, packet, parent, news_market_index)
  end

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_premium_omd_v1_45.filler_2.dissect(buffer, index, packet, parent)

  -- No Security Codes: Uint16
  index, no_security_codes = hkex_hkexsecurities_premium_omd_v1_45.no_security_codes.dissect(buffer, index, packet, parent)

  -- Repeating: News Security
  for news_security_index = 1, no_security_codes do
    index, news_security = hkex_hkexsecurities_premium_omd_v1_45.news_security.dissect(buffer, index, packet, parent, news_security_index)
  end

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_premium_omd_v1_45.filler_2.dissect(buffer, index, packet, parent)

  -- No News Lines: Uint16
  index, no_news_lines = hkex_hkexsecurities_premium_omd_v1_45.no_news_lines.dissect(buffer, index, packet, parent)

  -- Repeating: News Line Item
  for news_line_item_index = 1, no_news_lines do
    index, news_line_item = hkex_hkexsecurities_premium_omd_v1_45.news_line_item.dissect(buffer, index, packet, parent, news_line_item_index)
  end

  return index
end

-- Dissect: News Message
hkex_hkexsecurities_premium_omd_v1_45.news_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.news_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.news_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.news_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.news_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Equilibrium Price Message
hkex_hkexsecurities_premium_omd_v1_45.indicative_equilibrium_price_message = {}

-- Size: Indicative Equilibrium Price Message
hkex_hkexsecurities_premium_omd_v1_45.indicative_equilibrium_price_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.price.size + 
  hkex_hkexsecurities_premium_omd_v1_45.aggregate_quantity.size

-- Display: Indicative Equilibrium Price Message
hkex_hkexsecurities_premium_omd_v1_45.indicative_equilibrium_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Equilibrium Price Message
hkex_hkexsecurities_premium_omd_v1_45.indicative_equilibrium_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_hkexsecurities_premium_omd_v1_45.price.dissect(buffer, index, packet, parent)

  -- Aggregate Quantity: Uint64
  index, aggregate_quantity = hkex_hkexsecurities_premium_omd_v1_45.aggregate_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Equilibrium Price Message
hkex_hkexsecurities_premium_omd_v1_45.indicative_equilibrium_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.indicative_equilibrium_price_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.indicative_equilibrium_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.indicative_equilibrium_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.indicative_equilibrium_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Disaster Recovery Signal Message
hkex_hkexsecurities_premium_omd_v1_45.disaster_recovery_signal_message = {}

-- Size: Disaster Recovery Signal Message
hkex_hkexsecurities_premium_omd_v1_45.disaster_recovery_signal_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.dr_status.size

-- Display: Disaster Recovery Signal Message
hkex_hkexsecurities_premium_omd_v1_45.disaster_recovery_signal_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disaster Recovery Signal Message
hkex_hkexsecurities_premium_omd_v1_45.disaster_recovery_signal_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dr Status: Uint32
  index, dr_status = hkex_hkexsecurities_premium_omd_v1_45.dr_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disaster Recovery Signal Message
hkex_hkexsecurities_premium_omd_v1_45.disaster_recovery_signal_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.disaster_recovery_signal_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.disaster_recovery_signal_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
hkex_hkexsecurities_premium_omd_v1_45.sequence_reset_message = {}

-- Size: Sequence Reset Message
hkex_hkexsecurities_premium_omd_v1_45.sequence_reset_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.new_seq_no.size

-- Display: Sequence Reset Message
hkex_hkexsecurities_premium_omd_v1_45.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
hkex_hkexsecurities_premium_omd_v1_45.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = hkex_hkexsecurities_premium_omd_v1_45.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
hkex_hkexsecurities_premium_omd_v1_45.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.sequence_reset_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Closing Price Message
hkex_hkexsecurities_premium_omd_v1_45.closing_price_message = {}

-- Size: Closing Price Message
hkex_hkexsecurities_premium_omd_v1_45.closing_price_message.size =
  hkex_hkexsecurities_premium_omd_v1_45.security_code.size + 
  hkex_hkexsecurities_premium_omd_v1_45.closing_price.size + 
  hkex_hkexsecurities_premium_omd_v1_45.number_of_trades.size

-- Display: Closing Price Message
hkex_hkexsecurities_premium_omd_v1_45.closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Price Message
hkex_hkexsecurities_premium_omd_v1_45.closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Closing Price: Int32
  index, closing_price = hkex_hkexsecurities_premium_omd_v1_45.closing_price.dissect(buffer, index, packet, parent)

  -- Number Of Trades: Uint32
  index, number_of_trades = hkex_hkexsecurities_premium_omd_v1_45.number_of_trades.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Closing Price Message
hkex_hkexsecurities_premium_omd_v1_45.closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.closing_price_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Book Entry
hkex_hkexsecurities_premium_omd_v1_45.book_entry = {}

-- Size: Book Entry
hkex_hkexsecurities_premium_omd_v1_45.book_entry.size =
  hkex_hkexsecurities_premium_omd_v1_45.aggregate_quantity.size + 
  hkex_hkexsecurities_premium_omd_v1_45.price.size + 
  hkex_hkexsecurities_premium_omd_v1_45.number_of_orders.size + 
  hkex_hkexsecurities_premium_omd_v1_45.side.size + 
  hkex_hkexsecurities_premium_omd_v1_45.price_level.size + 
  hkex_hkexsecurities_premium_omd_v1_45.update_action.size + 
  hkex_hkexsecurities_premium_omd_v1_45.filler_4.size

-- Display: Book Entry
hkex_hkexsecurities_premium_omd_v1_45.book_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Book Entry
hkex_hkexsecurities_premium_omd_v1_45.book_entry.fields = function(buffer, offset, packet, parent, book_entry_index)
  local index = offset

  -- Implicit Book Entry Index
  if book_entry_index ~= nil and show.indexes then
    local iteration = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.book_entry_index, book_entry_index)
    iteration:set_generated()
  end

  -- Aggregate Quantity: Uint64
  index, aggregate_quantity = hkex_hkexsecurities_premium_omd_v1_45.aggregate_quantity.dissect(buffer, index, packet, parent)

  -- Price: Int32
  index, price = hkex_hkexsecurities_premium_omd_v1_45.price.dissect(buffer, index, packet, parent)

  -- Number Of Orders: Uint32
  index, number_of_orders = hkex_hkexsecurities_premium_omd_v1_45.number_of_orders.dissect(buffer, index, packet, parent)

  -- Side: Uint16
  index, side = hkex_hkexsecurities_premium_omd_v1_45.side.dissect(buffer, index, packet, parent)

  -- Price Level: Uint8
  index, price_level = hkex_hkexsecurities_premium_omd_v1_45.price_level.dissect(buffer, index, packet, parent)

  -- Update Action: Uint8
  index, update_action = hkex_hkexsecurities_premium_omd_v1_45.update_action.dissect(buffer, index, packet, parent)

  -- Filler 4: String
  index, filler_4 = hkex_hkexsecurities_premium_omd_v1_45.filler_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Book Entry
hkex_hkexsecurities_premium_omd_v1_45.book_entry.dissect = function(buffer, offset, packet, parent, book_entry_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.book_entry, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.book_entry.fields(buffer, offset, packet, parent, book_entry_index)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.book_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.book_entry.fields(buffer, offset, packet, parent, book_entry_index)
  end
end

-- Aggregate Order Book Update Message
hkex_hkexsecurities_premium_omd_v1_45.aggregate_order_book_update_message = {}

-- Calculate size of: Aggregate Order Book Update Message
hkex_hkexsecurities_premium_omd_v1_45.aggregate_order_book_update_message.size = function(buffer, offset)
  local index = 0

  index = index + hkex_hkexsecurities_premium_omd_v1_45.security_code.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.filler_3.size

  index = index + hkex_hkexsecurities_premium_omd_v1_45.no_entries.size

  -- Calculate field size from count
  local book_entry_count = buffer(offset + index - 1, 1):le_uint()
  index = index + book_entry_count * 24

  return index
end

-- Display: Aggregate Order Book Update Message
hkex_hkexsecurities_premium_omd_v1_45.aggregate_order_book_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aggregate Order Book Update Message
hkex_hkexsecurities_premium_omd_v1_45.aggregate_order_book_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_hkexsecurities_premium_omd_v1_45.security_code.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_hkexsecurities_premium_omd_v1_45.filler_3.dissect(buffer, index, packet, parent)

  -- No Entries: Uint8
  index, no_entries = hkex_hkexsecurities_premium_omd_v1_45.no_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Book Entry
  for book_entry_index = 1, no_entries do
    index, book_entry = hkex_hkexsecurities_premium_omd_v1_45.book_entry.dissect(buffer, index, packet, parent, book_entry_index)
  end

  return index
end

-- Dissect: Aggregate Order Book Update Message
hkex_hkexsecurities_premium_omd_v1_45.aggregate_order_book_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.aggregate_order_book_update_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.aggregate_order_book_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.aggregate_order_book_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.aggregate_order_book_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
hkex_hkexsecurities_premium_omd_v1_45.payload = {}

-- Dissect: Payload
hkex_hkexsecurities_premium_omd_v1_45.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Aggregate Order Book Update Message
  if msg_type == 53 then
    return hkex_hkexsecurities_premium_omd_v1_45.aggregate_order_book_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Closing Price Message
  if msg_type == 62 then
    return hkex_hkexsecurities_premium_omd_v1_45.closing_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Reset Message
  if msg_type == 100 then
    return hkex_hkexsecurities_premium_omd_v1_45.sequence_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disaster Recovery Signal Message
  if msg_type == 105 then
    return hkex_hkexsecurities_premium_omd_v1_45.disaster_recovery_signal_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indicative Equilibrium Price Message
  if msg_type == 41 then
    return hkex_hkexsecurities_premium_omd_v1_45.indicative_equilibrium_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News Message
  if msg_type == 22 then
    return hkex_hkexsecurities_premium_omd_v1_45.news_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Nominal Price Message
  if msg_type == 40 then
    return hkex_hkexsecurities_premium_omd_v1_45.nominal_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Imbalance Message
  if msg_type == 56 then
    return hkex_hkexsecurities_premium_omd_v1_45.order_imbalance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Definition Message
  if msg_type == 10 then
    return hkex_hkexsecurities_premium_omd_v1_45.market_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Message
  if msg_type == 11 then
    return hkex_hkexsecurities_premium_omd_v1_45.security_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Liquidity Provider Message
  if msg_type == 13 then
    return hkex_hkexsecurities_premium_omd_v1_45.liquidity_provider_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Currency Rate Message
  if msg_type == 14 then
    return hkex_hkexsecurities_premium_omd_v1_45.currency_rate_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reference Price Message
  if msg_type == 43 then
    return hkex_hkexsecurities_premium_omd_v1_45.reference_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if msg_type == 60 then
    return hkex_hkexsecurities_premium_omd_v1_45.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Turnover Message
  if msg_type == 61 then
    return hkex_hkexsecurities_premium_omd_v1_45.market_turnover_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Yield Message
  if msg_type == 44 then
    return hkex_hkexsecurities_premium_omd_v1_45.yield_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if msg_type == 20 then
    return hkex_hkexsecurities_premium_omd_v1_45.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if msg_type == 21 then
    return hkex_hkexsecurities_premium_omd_v1_45.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if msg_type == 50 then
    return hkex_hkexsecurities_premium_omd_v1_45.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if msg_type == 51 then
    return hkex_hkexsecurities_premium_omd_v1_45.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Vcm Trigger Message
  if msg_type == 23 then
    return hkex_hkexsecurities_premium_omd_v1_45.vcm_trigger_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Msg Header
hkex_hkexsecurities_premium_omd_v1_45.msg_header = {}

-- Size: Msg Header
hkex_hkexsecurities_premium_omd_v1_45.msg_header.size =
  hkex_hkexsecurities_premium_omd_v1_45.msg_size.size + 
  hkex_hkexsecurities_premium_omd_v1_45.msg_type.size

-- Display: Msg Header
hkex_hkexsecurities_premium_omd_v1_45.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
hkex_hkexsecurities_premium_omd_v1_45.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: 2 Byte Unsigned Fixed Width Integer
  index, msg_size = hkex_hkexsecurities_premium_omd_v1_45.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, msg_type = hkex_hkexsecurities_premium_omd_v1_45.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
hkex_hkexsecurities_premium_omd_v1_45.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.msg_header, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
hkex_hkexsecurities_premium_omd_v1_45.message = {}

-- Display: Message
hkex_hkexsecurities_premium_omd_v1_45.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
hkex_hkexsecurities_premium_omd_v1_45.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Msg Header: Struct of 2 fields
  index, msg_header = hkex_hkexsecurities_premium_omd_v1_45.msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 21 branches
  index = hkex_hkexsecurities_premium_omd_v1_45.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
hkex_hkexsecurities_premium_omd_v1_45.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.message, buffer(offset, 0))
    local current = hkex_hkexsecurities_premium_omd_v1_45.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = hkex_hkexsecurities_premium_omd_v1_45.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    hkex_hkexsecurities_premium_omd_v1_45.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
hkex_hkexsecurities_premium_omd_v1_45.packet_header = {}

-- Size: Packet Header
hkex_hkexsecurities_premium_omd_v1_45.packet_header.size =
  hkex_hkexsecurities_premium_omd_v1_45.pkt_size.size + 
  hkex_hkexsecurities_premium_omd_v1_45.msg_count.size + 
  hkex_hkexsecurities_premium_omd_v1_45.filler.size + 
  hkex_hkexsecurities_premium_omd_v1_45.seq_num.size + 
  hkex_hkexsecurities_premium_omd_v1_45.send_time.size

-- Display: Packet Header
hkex_hkexsecurities_premium_omd_v1_45.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
hkex_hkexsecurities_premium_omd_v1_45.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = hkex_hkexsecurities_premium_omd_v1_45.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: 1 Byte Unsigned Fixed Width Integer
  index, msg_count = hkex_hkexsecurities_premium_omd_v1_45.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: 1 Byte Ascii String
  index, filler = hkex_hkexsecurities_premium_omd_v1_45.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = hkex_hkexsecurities_premium_omd_v1_45.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = hkex_hkexsecurities_premium_omd_v1_45.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
hkex_hkexsecurities_premium_omd_v1_45.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45.fields.packet_header, buffer(offset, 0))
    local index = hkex_hkexsecurities_premium_omd_v1_45.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_premium_omd_v1_45.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_premium_omd_v1_45.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
hkex_hkexsecurities_premium_omd_v1_45.packet = {}

-- Verify required size of Udp packet
hkex_hkexsecurities_premium_omd_v1_45.packet.requiredsize = function(buffer)
  return buffer:len() >= hkex_hkexsecurities_premium_omd_v1_45.packet_header.size
end

-- Dissect Packet
hkex_hkexsecurities_premium_omd_v1_45.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = hkex_hkexsecurities_premium_omd_v1_45.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do

    -- Dependency element: Msg Size
    local msg_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = hkex_hkexsecurities_premium_omd_v1_45.message.dissect(buffer, index, packet, parent, msg_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_hkex_hkexsecurities_premium_omd_v1_45.init()
end

-- Dissector for Hkex HkexSecurities Premium Omd 1.45
function omi_hkex_hkexsecurities_premium_omd_v1_45.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_hkex_hkexsecurities_premium_omd_v1_45.name

  -- Dissect protocol
  local protocol = parent:add(omi_hkex_hkexsecurities_premium_omd_v1_45, buffer(), omi_hkex_hkexsecurities_premium_omd_v1_45.description, "("..buffer:len().." Bytes)")
  return hkex_hkexsecurities_premium_omd_v1_45.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Hkex HkexSecurities Premium Omd 1.45 (Udp)
local function omi_hkex_hkexsecurities_premium_omd_v1_45_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not hkex_hkexsecurities_premium_omd_v1_45.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_hkex_hkexsecurities_premium_omd_v1_45
  omi_hkex_hkexsecurities_premium_omd_v1_45.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Hkex HkexSecurities Premium Omd 1.45
omi_hkex_hkexsecurities_premium_omd_v1_45:register_heuristic("udp", omi_hkex_hkexsecurities_premium_omd_v1_45_udp_heuristic)

-- Register Hkex HkexSecurities Premium Omd 1.45 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_hkex_hkexsecurities_premium_omd_v1_45)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Hong Kong Exchanges and Clearing
--   Version: 1.45
--   Date: Friday, January 9, 2026
--   Specification: HKEX_OMDC_Binary_Interface_Specifications_v1_45.pdf
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
