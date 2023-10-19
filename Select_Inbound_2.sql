SELECT left(cpudt,10), po, POITEM, tpmov, NM, GM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, PS_PSP_PNR, kostlekkn, kostlmseg, aufnr, nplnr, occode, ocdescr, assettypecode, origem_dados
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where left(cpudt,10) between '2022-11-01' and '2022-11-30' and PS_PSP_PNR = 0 and kostlekkn is null and kostlmseg is null and aufnr is null and nplnr is null 
and (assettypecode like '%300' or assettypecode like '%400' or assettypecode like '%500' or assettypecode like '%600')
group by left(cpudt,10), po, POITEM, tpmov, NM, GM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, PS_PSP_PNR, kostlekkn, kostlmseg, aufnr, nplnr, occode, ocdescr, assettypecode, origem_dados
order by left(cpudt,10), po, POITEM, tpmov, NM, GM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, PS_PSP_PNR, kostlekkn, kostlmseg, aufnr, nplnr, occode, ocdescr, assettypecode, origem_dados


