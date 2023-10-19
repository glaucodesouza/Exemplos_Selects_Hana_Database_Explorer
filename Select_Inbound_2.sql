SELECT left(cpudt,10), po, POITEM, tpmov, NM, GM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, PS_PSP_PNR, kostlekkn, kostlmseg, aufnr, nplnr, occode, ocdescr, assettypecode, origem_dados
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where left(cpudt,10) between '2022-11-01' and '2022-11-30' and PS_PSP_PNR = 0 and kostlekkn is null and kostlmseg is null and aufnr is null and nplnr is null 
and (assettypecode like '%300' or assettypecode like '%400' or assettypecode like '%500' or assettypecode like '%600')
group by left(cpudt,10), po, POITEM, tpmov, NM, GM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, PS_PSP_PNR, kostlekkn, kostlmseg, aufnr, nplnr, occode, ocdescr, assettypecode, origem_dados
order by left(cpudt,10), po, POITEM, tpmov, NM, GM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, PS_PSP_PNR, kostlekkn, kostlmseg, aufnr, nplnr, occode, ocdescr, assettypecode, origem_dados

  --Selecionar pelo menos 1 quantidade preenchida
SELECT left(cpudt,10), po, POITEM, tpmov, NM, GM, matdoc, matdocitem, quantityunit, quantitypo, quantitymov, erfmg, nfquantity, fatdoc, fatdocitem, docnum, docitem, origem_dados
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where left(cpudt,10) between '2022-11-01' and '2022-11-30' 
and
( quantityunit is not null or quantitypo > 0 or quantitymov > 0 or erfmg > 0 or nfquantity > 0 )
group by left(cpudt,10), po, POITEM, tpmov, NM, GM, matdoc, matdocitem, quantityunit, quantitypo, quantitymov, erfmg, nfquantity, fatdoc, fatdocitem, docnum, docitem, origem_dados
order by left(cpudt,10), matdoc, matdocitem, quantityunit, quantitypo, quantitymov, erfmg, nfquantity, fatdoc, fatdocitem, docnum, docitem, origem_dados

  --Selecionar com todas quantidades vazias
SELECT left(cpudt,10), po, POITEM, tpmov, NM, GM, matdoc, matdocitem, quantityunit, quantitypo, quantitymov, erfmg, nfquantity, fatdoc, fatdocitem, docnum, docitem, origem_dados
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where left(cpudt,10) between '2022-11-01' and '2022-11-30' 
and
( quantityunit is null and quantitypo = 0 and quantitymov = 0 and erfmg = 0 and nfquantity = 0 )
group by left(cpudt,10), po, POITEM, tpmov, NM, GM, matdoc, matdocitem, quantityunit, quantitypo, quantitymov, erfmg, nfquantity, fatdoc, fatdocitem, docnum, docitem, origem_dados
order by left(cpudt,10), matdoc, matdocitem, quantityunit, quantitypo, quantitymov, erfmg, nfquantity, fatdoc, fatdocitem, docnum, docitem, origem_dados
