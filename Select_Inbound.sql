--DELETE FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND";
select count(*) from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND";

SELECT left(cpudt,10), count(*)
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
-- where left(cpudt,10) between '2022-07-01' and '2022-07-31'  --= '2022-07-13' --
-- and origem_dados = 'CDS_YEC_AT_COMPRAS'
group by left(cpudt,10)
order by left(cpudt,10) desc;

SELECT tpmov, count(*)
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
-- where left(cpudt,10) = '2022-07-13' --between '2022-07-01' and '2022-07-31' 
-- and origem_dados != 'CDS_YEC_AT_FINAN'
group by tpmov
order by tpmov asc;

SELECT left(cpudt,10), po, POITEM, tpmov, NM, GM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, accdoc, origem_dados
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where docnum <> 0 and docitem = 0 and matdoc = '5036799879' and matdocitem = 1
-- where -- left(cpudt,10) = '2022-07-13' --and 
-- where matdoc = '4987407163' and matdocitem = 2 --nm not like 'P%' and matdoc = '4987407163' --and matdoc is not null --between '2022-07-01' and '2022-07-31' 
--  origem_dados = 'CDS_YEC_AT_COMPRAS'
group by left(cpudt,10), po, POITEM, tpmov, NM, GM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, accdoc, origem_dados

SELECT po, poitem, tpmov, matdoc, matdocitem, count(*)
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
-- where -- left(cpudt,10) = '2022-07-13' --and 
where nm not like 'P%' --and matdoc is not null --between '2022-07-01' and '2022-07-31' 
--  origem_dados = 'CDS_YEC_AT_COMPRAS'
group by po, poitem,tpmov, matdoc, matdocitem

SELECT left(cpudt,10), po, POITEM, tpmov, NM, GM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, origem_dados
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where 
-- po = '4509884141' 
-- and poitem = '190'
-- and 
matdoc = '5036563665'
-- and matdocitem in (1,2,3)
-- and left(cpudt,10) between '2022-06-29' and '2022-07-10'
-- and origem_dados != 'CDS_YEC_AT_FINAN'
-- group by left(cpudt,10), po, POITEM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, origem_dados
-- order by left(cpudt,10), po, POITEM, matdoc, matdocitem

SELECT top 1000 *
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"

SELECT left(cpudt,10), po, POITEM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, origem_dados
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where left(cpudt,10) = '2022-07-01' and docnum != '0'
and origem_dados = 'CDS_YEIB_AT_V_MIGO2'
and matdocitem = 1
group by left(cpudt,10), po, POITEM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, origem_dados
order by left(cpudt,10) desc;

SELECT left(cpudt,10), po, POITEM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, origem_dados
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where left(cpudt,10) = '2022-07-01' and docnum != '0'
and matdoc in (
'5036553267',
'5036556664',
'5036555246',
'5036552651',
'5036552688',
'5036555199'
)
and matdocitem = 1
group by left(cpudt,10), po, POITEM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, origem_dados
order by left(cpudt,10) desc;

SELECT left(cpudt,10), po, POITEM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, origem_dados
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_OUTLIERS" --"ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where 
po = '4511906143'
and poitem = '30'
-- and matdoc = '5036563665'
-- and matdocitem in (1,2,3)
group by left(cpudt,10), po, POITEM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, origem_dados
order by left(cpudt,10) desc;

SELECT left(cpudt,10), po, POITEM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, origem_dados
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_OUTLIERS"
where 
po = '4511906143'
and poitem = '30'
and origem_dados != 'CDS_YEIB_AT_V_MIGO'
group by left(cpudt,10), po, POITEM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, origem_dados
order by left(cpudt,10) desc;

SELECT left(cpudt,10), po, POITEM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, origem_dados
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_OUTLIERS"
where 
docnum = '55612428' --'55392746'
and matdoc = '5036563665' and matdocitem = '19'
-- po = '4509884141'
-- and poitem = '190'
-- and matdocitem = '1'
group by left(cpudt,10), po, POITEM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, origem_dados
order by left(cpudt,10) desc;

SELECT left(cpudt,10), po, POITEM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, origem_dados
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where po = '4509884141'
and left(cpudt,10) = '2022-07-01'
-- and poitem = ''
group by left(cpudt,10), po, POITEM, matdoc, matdocitem,fatdoc, fatdocitem, docnum, docitem, origem_dados
order by left(cpudt,10) desc;

SELECT left(cpudt,10), count(*)
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
group by left(cpudt,10)
order by left(cpudt,10) desc;

SELECT left(cpudt,10), po, POITEM, matdoc, fatdoc, docnum, docitem, ciapid, anln1, anln2, origem_dados
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
WHERE docnum = '55355153'
group by left(cpudt,10)
order by left(cpudt,10) desc;

SELECT TOP 100 left(cpudt,10), PO, POITEM, matdoc, MATDOCITEM, fatdoc, fatdocitem, docnum, docitem, origem_dados
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND_H"
WHERE 
 left(cpudt,10) = '2022-06-29' AND
origem_dados = 'CDS_YEC_AT_SERVICOS'
and matdoc = '5036530396'
group by left(cpudt,10), PO, POITEM, matdoc, MATDOCITEM, fatdoc, fatdocitem, docnum, docitem, origem_dados
order by left(cpudt,10) desc;

SELECT count(*)
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"

select count(*)
from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION"

select count(*)
from "ASSET_TRACKING"."Y_ASSET_TRACKING_OUTLIERS"

SELECT left(cpudt,7), po, poitem, matdoc, MATDOCITEM, fatdoc, fatdocitem, docnum, docitem, tpmov, doctypecode, doctypedescr, outlier, octypedest, origem_dados
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where matdoc = '5036592385'

select vsid,inbid, cpudt, poslat, poslong, po, poitem, pstyp
from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION"
where inbid in (
                'CF75BB2371664346A9F6504426DCE966',
                '11E967BEBA844122A0572C5E661D942D',
                '59691443CA1B4ADF96A7D39E2AA19AE3',
                'E05486E9728548B9AE410C55E9441C49',
                '29AE6CF751BE4DE3946B4DB0F73A0FF6',
                'A92EA5FEE8324CC8B5D6367F83D79AF8'
);

select TOP 1000 ID, poslat, poslong, po, poitem, pstyp, tpmov, BUKRS, Branchorigem, BranchDest
from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where BranchDest != ''
and po is not null
-- AND POSLAT = '0.000000000000';










                -- '4FAB5710CCD72F00F0000002E6934F00',
                -- '66EF3E10CCD72F00F0000002E6930C00',
                -- '88BA5310CCD72F00F0000002E6930700',
                -- '48025810CCD72F00F0000002E6934F00',
                -- '43995310CCD72F00F0000002E6930700',
                -- '04025810CCD72F00F0000002E6934F00'

SELECT id, poslat, poslong
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND_H"
where id in (
                'CF75BB2371664346A9F6504426DCE966',
                '11E967BEBA844122A0572C5E661D942D',
                '59691443CA1B4ADF96A7D39E2AA19AE3',
                'E05486E9728548B9AE410C55E9441C49',
                '29AE6CF751BE4DE3946B4DB0F73A0FF6',
                'A92EA5FEE8324CC8B5D6367F83D79AF8'
);






SELECT count(*)
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"

SELECT *
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND_BKP"
where cpudt like '2021-06-13%'

SELECT top 50 *
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND_BKP"
--order by status


--DELETE FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"

select outlier, * from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND" where po is null and outlier = 'false' and nm not like 'PB%';

select * from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION" where inbid = '345A835ADA954A1084CB091536EACE0C';
select * from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND" where id = '345A835ADA954A1084CB091536EACE0C';
select * from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND_H" where id = '345A835ADA954A1084CB091536EACE0C';

select doctypecode, tpmov, sobkz, umsok, count(*) from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND" 
group by doctypecode, tpmov, sobkz, umsok;

select po, poitem, pstyp, ASSETTYPECODE from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND" where ASSETTYPECODE = '07200';
select * from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND" where ASSETTYPECODE = '7600';
select * from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND" where NM LIKE '70%';

select * from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND_BKP" 
where 
doctypecode = '00202'
and status = '20/11/2022';
--group by status;

SELECT left(CPUDT,10),count(*)
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
GROUP BY left(CPUDT,10)
ORDER BY left(CPUDT,10)

SELECT matdoc_year
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where left(CPUDT,10) = '2021-09-06'

SELECT doctypecode, tpmov, count(*)
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where left(CPUDT,7) = '2021-09'
GROUP BY doctypecode, tpmov
order by doctypecode, tpmov;

SELECT doctypecode, count(*)
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
GROUP BY doctypecode;

SELECT ASSETTYPECODE,po,count(*)
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
--where 
--ASSETTYPECODE = '00299'
GROUP BY ASSETTYPECODE, po;

SELECT ASSETTYPECODE,po
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where ASSETTYPECODE = '00221'

select count(*) from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND";
select * from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND";
select * from "ASSET_TRACKING"."Y_ASSET_TRACKING_OUTLIERS"

select po, poitem, matdoc, fatdoc, accdoc, docnum, doctypecode, outlier from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where  ( po = '4509182624' and poitem = '00010' )
or                           ( po = '4511009401' and poitem = '00010' )
or                           ( po = '4511048804' and poitem = '00010' )
order by po;

select po, poitem, matdoc, fatdoc, accdoc, docnum, doctypecode, outlier from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where po in ('4509182624',
                                               '4511009401',
                                               '4511048804' )
order by po;
--po = '4509182624' and poitem = '00010'; --material ---OK
--po = '4511017087' and poitem = '00010'; --serviço
--po = '4511009401' and poitem = '00010'; --transferência
--po = '4511048804' and poitem = '00010'; --serv

select VERSION,SALDO,* from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION" where ASSETID = '9FD15447A66C2F00F00000026CCE2400';
SELECT * FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_RECLASSIFICACAO" WHERE DOCUMENTO = '1199408215' AND LINHALANCAMENTO = '1';



select isactivevs, * from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION"
where po = '4511169174' and poitem = '10' and zekkn = '1';

select vs.docnum from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION" as vs
inner join "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND" as inb
on vs.docnum = inb.docnum
group by vs.docnum



SELECT PO,POITEM,FATDOC,DOCTYPEDESCR,count(*)
FROM "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
GROUP BY PO,POITEM,FATDOC,DOCTYPEDESCR;



select count(*) from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION" where docnum is null

select docnum, * from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION" where
DOCNUM in (
'52074413',
'52074415',
'52074434',
'52074464',
'52074513',
'52074514',
'52074569',
'52074592',
'52074593'
);

select docnum, * from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND" where
DOCNUM in (
'52074413',
'52074415',
'52074434',
'52074464',
'52074513',
'52074514',
'52074569',
'52074592',
'52074593'
)


select * from "ASSET_TRACKING"."Y_ASSET_TRACKING_OUTLIERS" where id = '345A835ADA954A1084CB091536EACE0C'
