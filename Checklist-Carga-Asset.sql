
--1 - Verificar se tem registro sem Objeto contábil com DOCTYPECODE *300, *400, *500 e *600; PASSOU!!!!!!!!!!!
select count(*) from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where outlier = 'false'
and  ASSETTYPECODE in ('00300','00400','00500','00600','03300','03400','07400','07500','07600')
and occodedest is null
and octypedest is null
and ocdescrdest is null
and occode is null
and octype is null
and ocdescr is null

--update "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND_H" set status = 'TESTE' where matdoc = '4988322597'

select status,origem_dados,cpudt,matdoc,matdocitem,occodedest,octypedest,ocdescrdest,* from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where matdoc = '4988322597';

select cpudt,matdoc,matdocitem,* from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION"
where matdoc = '4988322597';

select origem_dados,cpudt,matdoc,matdocitem,nplnr,aufnr,* from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND_H"
where id = 'D5EC009DC969415586FD08821B8714D3'

--2 - Verificar se tem registro sem Grupo de Mercadoria;
select count(*) from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where outlier = 'false' and gm is null

select * from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where outlier = 'false' and gm is null


--3 - Verificar se tem registro sem Descrição do NM; PASSOU!!!!!!
select count(*) from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND" 
where nmdescription is null and NMDESCRALTERNATIVE is null and outlier = 'false' and nm is null


--4 - Verificar se tem registro com DOCNUM  e sem ITMNUM; PASSOU!!!!!!!!
select count(*) from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where docnum is not null and docitem is null


--5 - Verificar se tem registro sem DOCNUM  e com ITMNUM; PASSOU!!!!!!!!
select count(*) from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where docnum is null and docitem is not null


--6 - Verificar se tem registro sem Doc.contábil que não tenha vindo da FINAN. Falhou
select origem_dados,tpmov,count(*) from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where outlier = 'false' and origem_dados != 'CDS_YEC_AT_FINAN' and ACCDOC is null and doctypecode not in ('10000','10050','10051','10090','10093','10099','10110','10120','10121','10125','10126','10150','10500','10550','10750','10999','11000','11090','11093','11099','11100','11150','11200','11210','11250','11260','11500','11550','11750','11999','12050','12051','12100','12150','12222','12500','12700','77001','77002','77003','77777')
and tpmov != '861'
group by origem_dados,tpmov


-- 7 - DI,DDI preenchidas só na FINAN; PASSOU!!!!!!!!!
select count(*) from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where DINO is null and origem_dados = 'CDS_YEC_AT_FINAN' and cfop like '3%'

-- 8 - Imobilizado se tem descrição do BWTAR = * IMOB * e tem ANLN1 e ANLN2; Não
select origem_dados,count(*) from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where doctypedescr like '%IMOB%' and anln1 is null 
group by origem_dados

select origem_dados,count(*) from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND_BKP"
where doctypedescr like '%IMOB%' and anln1 is null and status = '31-10-v1' and left(fatcpudt,10) = '2022-10-25'
group by origem_dados


select top 100 anln1,anln2,matdoc,matdocitem,fatdoc,fatdocitem,cpudt,fatcpudt,origem_dados,* from "ASSET_TRACKING"."Y_ASSET_TRACKING_ASSET_VERSION_INBOUND"
where matdoc = '4988327443';




