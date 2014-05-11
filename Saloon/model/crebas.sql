/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 10                       */
/* Created on:     11-May-14 4:23:20 PM                         */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_ARTIKAL_ASSOCIATI_NARUDZBI') then
    alter table Artikal
       delete foreign key FK_ARTIKAL_ASSOCIATI_NARUDZBI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ARTIKAL_ASSOCIATI_LISTAZEL') then
    alter table Artikal
       delete foreign key FK_ARTIKAL_ASSOCIATI_LISTAZEL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_NARUDZBI_ASSOCIATI_REGISTRO') then
    alter table Narudzbina
       delete foreign key FK_NARUDZBI_ASSOCIATI_REGISTRO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_NARUDZBI_ASSOCIATI_ISTORIJA') then
    alter table Narudzbina
       delete foreign key FK_NARUDZBI_ASSOCIATI_ISTORIJA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_REGISTRO_ASSOCIATI_LISTAZEL') then
    alter table RegistrovaniKorisnik
       delete foreign key FK_REGISTRO_ASSOCIATI_LISTAZEL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_ARTIKAL') then
    alter table association1
       delete foreign key FK_ASSOCIAT_ASSOCIATI_ARTIKAL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_REGISTRO') then
    alter table association1
       delete foreign key FK_ASSOCIAT_ASSOCIATI_REGISTRO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_ARTIKAL') then
    alter table association2
       delete foreign key FK_ASSOCIAT_ASSOCIATI_ARTIKAL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_KATEGORI') then
    alter table association2
       delete foreign key FK_ASSOCIAT_ASSOCIATI_KATEGORI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_ISTORIJA') then
    alter table association5
       delete foreign key FK_ASSOCIAT_ASSOCIATI_ISTORIJA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_REGISTRO') then
    alter table association5
       delete foreign key FK_ASSOCIAT_ASSOCIATI_REGISTRO
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION8_FK'
     and t.table_name='Artikal'
) then
   drop index Artikal.ASSOCIATION8_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION3_FK'
     and t.table_name='Artikal'
) then
   drop index Artikal.ASSOCIATION3_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ARTIKAL_PK'
     and t.table_name='Artikal'
) then
   drop index Artikal.ARTIKAL_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='Artikal'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table Artikal
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ISTORIJAPOSLOVANJA_PK'
     and t.table_name='IstorijaPoslovanja'
) then
   drop index IstorijaPoslovanja.ISTORIJAPOSLOVANJA_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='IstorijaPoslovanja'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table IstorijaPoslovanja
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='KATEGORIJA_PK'
     and t.table_name='Kategorija'
) then
   drop index Kategorija.KATEGORIJA_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='Kategorija'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table Kategorija
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='LISTAZELJA_PK'
     and t.table_name='ListaZelja'
) then
   drop index ListaZelja.LISTAZELJA_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ListaZelja'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ListaZelja
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION6_FK'
     and t.table_name='Narudzbina'
) then
   drop index Narudzbina.ASSOCIATION6_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION4_FK'
     and t.table_name='Narudzbina'
) then
   drop index Narudzbina.ASSOCIATION4_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='NARUDZBINA_PK'
     and t.table_name='Narudzbina'
) then
   drop index Narudzbina.NARUDZBINA_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='Narudzbina'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table Narudzbina
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION7_FK'
     and t.table_name='RegistrovaniKorisnik'
) then
   drop index RegistrovaniKorisnik.ASSOCIATION7_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='REGISTROVANIKORISNIK_PK'
     and t.table_name='RegistrovaniKorisnik'
) then
   drop index RegistrovaniKorisnik.REGISTROVANIKORISNIK_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='RegistrovaniKorisnik'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table RegistrovaniKorisnik
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION1_FK2'
     and t.table_name='association1'
) then
   drop index association1.ASSOCIATION1_FK2
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION1_FK'
     and t.table_name='association1'
) then
   drop index association1.ASSOCIATION1_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION1_PK'
     and t.table_name='association1'
) then
   drop index association1.ASSOCIATION1_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='association1'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table association1
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION2_FK2'
     and t.table_name='association2'
) then
   drop index association2.ASSOCIATION2_FK2
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION2_FK'
     and t.table_name='association2'
) then
   drop index association2.ASSOCIATION2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION2_PK'
     and t.table_name='association2'
) then
   drop index association2.ASSOCIATION2_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='association2'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table association2
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION5_FK2'
     and t.table_name='association5'
) then
   drop index association5.ASSOCIATION5_FK2
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION5_FK'
     and t.table_name='association5'
) then
   drop index association5.ASSOCIATION5_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION5_PK'
     and t.table_name='association5'
) then
   drop index association5.ASSOCIATION5_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='association5'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table association5
end if;

/*==============================================================*/
/* Table: Artikal                                               */
/*==============================================================*/
create table Artikal 
(
   idArtikla            integer                        not null AUTO_INCREMENT,
   idNarudzbina         integer                        not null,
   idListe              integer                        not null,
   naziv                varchar(254),
   opis                 varchar(254),
   proizvodjac          varchar(254),
   cena                 numeric,
   constraint PK_ARTIKAL primary key (idArtikla)
);

/*==============================================================*/
/* Index: ARTIKAL_PK                                            */
/*==============================================================*/
create unique index ARTIKAL_PK on Artikal (
idArtikla ASC
);

/*==============================================================*/
/* Index: ASSOCIATION3_FK                                       */
/*==============================================================*/
create index ASSOCIATION3_FK on Artikal (
idNarudzbina ASC
);

/*==============================================================*/
/* Index: ASSOCIATION8_FK                                       */
/*==============================================================*/
create index ASSOCIATION8_FK on Artikal (
idListe ASC
);

/*==============================================================*/
/* Table: IstorijaPoslovanja                                    */
/*==============================================================*/
create table IstorijaPoslovanja 
(
   idPoslovanja         integer                        not null AUTO_INCREMENT,
   spisakNarudzbina     varchar(254),
   constraint PK_ISTORIJAPOSLOVANJA primary key (idPoslovanja)
);

/*==============================================================*/
/* Index: ISTORIJAPOSLOVANJA_PK                                 */
/*==============================================================*/
create unique index ISTORIJAPOSLOVANJA_PK on IstorijaPoslovanja (
idPoslovanja ASC
);

/*==============================================================*/
/* Table: Kategorija                                            */
/*==============================================================*/
create table Kategorija 
(
   idKategorija         integer                        not null AUTO_INCREMENT,
   naziv                varchar(254),
   constraint PK_KATEGORIJA primary key (idKategorija)
);

/*==============================================================*/
/* Index: KATEGORIJA_PK                                         */
/*==============================================================*/
create unique index KATEGORIJA_PK on Kategorija (
idKategorija ASC
);

/*==============================================================*/
/* Table: ListaZelja                                            */
/*==============================================================*/
create table ListaZelja 
(
   nazivArtikla         varchar(254),
   idListe              integer                        not null AUTO_INCREMENT,
   constraint PK_LISTAZELJA primary key (idListe)
);

/*==============================================================*/
/* Index: LISTAZELJA_PK                                         */
/*==============================================================*/
create unique index LISTAZELJA_PK on ListaZelja (
idListe ASC
);

/*==============================================================*/
/* Table: Narudzbina                                            */
/*==============================================================*/
create table Narudzbina 
(
   idNarudzbina         integer                        not null AUTO_INCREMENT,
   idPoslovanja         integer                        not null,
   idKorisnika          integer                        not null,
   spisakArtikala       varchar(254),
   ukupnaCena           numeric,
   constraint PK_NARUDZBINA primary key (idNarudzbina)
);

/*==============================================================*/
/* Index: NARUDZBINA_PK                                         */
/*==============================================================*/
create unique index NARUDZBINA_PK on Narudzbina (
idNarudzbina ASC
);

/*==============================================================*/
/* Index: ASSOCIATION4_FK                                       */
/*==============================================================*/
create index ASSOCIATION4_FK on Narudzbina (
idKorisnika ASC
);

/*==============================================================*/
/* Index: ASSOCIATION6_FK                                       */
/*==============================================================*/
create index ASSOCIATION6_FK on Narudzbina (
idPoslovanja ASC
);

/*==============================================================*/
/* Table: RegistrovaniKorisnik                                  */
/*==============================================================*/
create table RegistrovaniKorisnik 
(
   idKorisnika          integer                        not null AUTO_INCREMENT,
   idListe              integer                        not null,
   ime                  varchar(254),
   prezime              varchar(254),
   userName             varchar(254),
   pass                 varchar(254),
   email                varchar(254),
   constraint PK_REGISTROVANIKORISNIK primary key (idKorisnika)
);

/*==============================================================*/
/* Index: REGISTROVANIKORISNIK_PK                               */
/*==============================================================*/
create unique index REGISTROVANIKORISNIK_PK on RegistrovaniKorisnik (
idKorisnika ASC
);

/*==============================================================*/
/* Index: ASSOCIATION7_FK                                       */
/*==============================================================*/
create index ASSOCIATION7_FK on RegistrovaniKorisnik (
idListe ASC
);

/*==============================================================*/
/* Table: association1                                          */
/*==============================================================*/
create table association1 
(
   idKorisnika          integer                        not null,
   idArtikla            integer                        not null,
   constraint PK_ASSOCIATION1 primary key clustered (idKorisnika, idArtikla)
);

/*==============================================================*/
/* Index: ASSOCIATION1_PK                                       */
/*==============================================================*/
create unique clustered index ASSOCIATION1_PK on association1 (
idKorisnika ASC,
idArtikla ASC
);

/*==============================================================*/
/* Index: ASSOCIATION1_FK                                       */
/*==============================================================*/
create index ASSOCIATION1_FK on association1 (
idKorisnika ASC
);

/*==============================================================*/
/* Index: ASSOCIATION1_FK2                                      */
/*==============================================================*/
create index ASSOCIATION1_FK2 on association1 (
idArtikla ASC
);

/*==============================================================*/
/* Table: association2                                          */
/*==============================================================*/
create table association2 
(
   idKategorija         integer                        not null,
   idArtikla            integer                        not null,
   constraint PK_ASSOCIATION2 primary key clustered (idKategorija, idArtikla)
);

/*==============================================================*/
/* Index: ASSOCIATION2_PK                                       */
/*==============================================================*/
create unique clustered index ASSOCIATION2_PK on association2 (
idKategorija ASC,
idArtikla ASC
);

/*==============================================================*/
/* Index: ASSOCIATION2_FK                                       */
/*==============================================================*/
create index ASSOCIATION2_FK on association2 (
idKategorija ASC
);

/*==============================================================*/
/* Index: ASSOCIATION2_FK2                                      */
/*==============================================================*/
create index ASSOCIATION2_FK2 on association2 (
idArtikla ASC
);

/*==============================================================*/
/* Table: association5                                          */
/*==============================================================*/
create table association5 
(
   idKorisnika          integer                        not null,
   idPoslovanja         integer                        not null,
   constraint PK_ASSOCIATION5 primary key clustered (idKorisnika, idPoslovanja)
);

/*==============================================================*/
/* Index: ASSOCIATION5_PK                                       */
/*==============================================================*/
create unique clustered index ASSOCIATION5_PK on association5 (
idKorisnika ASC,
idPoslovanja ASC
);

/*==============================================================*/
/* Index: ASSOCIATION5_FK                                       */
/*==============================================================*/
create index ASSOCIATION5_FK on association5 (
idKorisnika ASC
);

/*==============================================================*/
/* Index: ASSOCIATION5_FK2                                      */
/*==============================================================*/
create index ASSOCIATION5_FK2 on association5 (
idPoslovanja ASC
);

alter table Artikal
   add constraint FK_ARTIKAL_ASSOCIATI_NARUDZBI foreign key (idNarudzbina)
      references Narudzbina (idNarudzbina)
      on update restrict
      on delete restrict;

alter table Artikal
   add constraint FK_ARTIKAL_ASSOCIATI_LISTAZEL foreign key (idListe)
      references ListaZelja (idListe)
      on update restrict
      on delete restrict;

alter table Narudzbina
   add constraint FK_NARUDZBI_ASSOCIATI_REGISTRO foreign key (idKorisnika)
      references RegistrovaniKorisnik (idKorisnika)
      on update restrict
      on delete restrict;

alter table Narudzbina
   add constraint FK_NARUDZBI_ASSOCIATI_ISTORIJA foreign key (idPoslovanja)
      references IstorijaPoslovanja (idPoslovanja)
      on update restrict
      on delete restrict;

alter table RegistrovaniKorisnik
   add constraint FK_REGISTRO_ASSOCIATI_LISTAZEL foreign key (idListe)
      references ListaZelja (idListe)
      on update restrict
      on delete restrict;

alter table association1
   add constraint FK_ASSOCIAT_ASSOCIATI_ARTIKAL foreign key (idArtikla)
      references Artikal (idArtikla)
      on update restrict
      on delete restrict;

alter table association1
   add constraint FK_ASSOCIAT_ASSOCIATI_REGISTRO foreign key (idKorisnika)
      references RegistrovaniKorisnik (idKorisnika)
      on update restrict
      on delete restrict;

alter table association2
   add constraint FK_ASSOCIAT_ASSOCIATI_ARTIKAL foreign key (idArtikla)
      references Artikal (idArtikla)
      on update restrict
      on delete restrict;

alter table association2
   add constraint FK_ASSOCIAT_ASSOCIATI_KATEGORI foreign key (idKategorija)
      references Kategorija (idKategorija)
      on update restrict
      on delete restrict;

alter table association5
   add constraint FK_ASSOCIAT_ASSOCIATI_ISTORIJA foreign key (idPoslovanja)
      references IstorijaPoslovanja (idPoslovanja)
      on update restrict
      on delete restrict;

alter table association5
   add constraint FK_ASSOCIAT_ASSOCIATI_REGISTRO foreign key (idKorisnika)
      references RegistrovaniKorisnik (idKorisnika)
      on update restrict
      on delete restrict;

