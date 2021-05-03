
###########################################################################
###########SCRIPT FOR TRACING SPELLING VARIATIONS OF OCCUPATIONS###########
############################IN MICROHEIGHTS################################
###########################################################################

#set up
library(tidyverse)
library(data.table)
library(readr)
setwd("!!!!")


#load in all the individual datasets
a<-fread("__af_afr_1820_slave_1982_eltis_havana_paris_foot.dta.csv")
a$databaseID=1
a$databaseBeschrijving="Slave_Cuba_1820_eltis"



b<-fread("__af_ke_1890_milit_2009_moradi.dta.csv")
b$databaseID=2
b$databaseBeschrijving="Military_Africa_1890_Moradi"



c<-fread("__ea_cn_1810_priso_2009_morgan_prisoners.dta.csv")
c$databaseID=3
c$databaseBeschrijving="Prison_China_Australia_1810_Morgan"



d<-fread("__ea_cn_1870_hospi_1911_Whyte_Yuxuan_ed_Kwangtung.dta.csv")
d$databaseID=4
d$databaseBeschrijving="Hospital_China_1870_Whyte"



e<-fread("__ee_at_1860_consc_2010_schlesinger_ba.dta.csv")
e$databaseID=5
e$databaseBeschrijving="Military_Conscripts_Austria_1860_schlesinger"



f<-fread("__ee_cz_1850_priso_2009_stegl_baten_pankrac.dta.csv")
f$databaseID=6
f$databaseBeschrijving="Prison_Czech_at_Pankrac_1850_stegl_baten"



g<-fread("__ee_cz_1850_priso_2009_stegl_baten_repy.dta.csv")
g$databaseID=7
g$databaseBeschrijving="Prison_Czech_at_Repy_1850_stegl_baten"



h<-fread("__ee_eeu_1720_milit_1885_komlos_incl_at_hu_ua_cz_sk.dta.csv")
h$databaseID=8
h$databaseBeschrijving="Military_volunteers_Austria_Habsburg_1720"



i<-fread("__ee_eeu_1760_schoo_2009_komlos_incl_at_hu_ua_cz_sk_children.dta.csv")
i$databaseID=9
i$databaseBeschrijving="Military_School_Austria_Hungary_1760"



j<-fread("__ee_mk_1920_anthr_1961_Miszkiewicz.dta.csv")
j$databaseID=10
j$databaseBeschrijving="Antropology_Macedonian_1920"



k<-fread("__la_ar_1870_censu_2009_baten_pelger_twrdek.dta.csv")
k$databaseID=11
k$databaseBeschrijving="Military_census_Argentinia_1870"




l<-fread("__la_cu_1870_milit_2010_twrdek.dta.csv")
l$databaseID=12
l$databaseBeschrijving="Military_recruits_Cuba_1870"



m<-fread("__la_pe_1820_priso_2010_twrdek_manzel.dta.csv")
m$databaseID=13
m$databaseBeschrijving="Prison_Peruvia_1820"



n<-fread("__na_us_1750_freeb_1992_komlos.dta.csv")
n$databaseID=14
n$databaseBeschrijving="Slave_Free_US_1750"



o<-fread("__na_us_1800_priso_1997_komlos_georgia.dta.csv")
o$databaseID=15
o$databaseBeschrijving="Prisoner_US_Georgia_1800"



p<-fread("__na_us_1820_schoo_1987_komlos_westpoint.dta.csv")
p$databaseID=16
p$databaseBeschrijving="Military_School_US_1820"



q<-fread("__na_us_1860_milit_2017_komlos_citadel.dta.csv")
q$databaseID=17
q$databaseBeschrijving="Military_School_US_1860"



r<-fread("__sa_in_1860_anthr_div.dta.csv")
r$databaseID=18
r$databaseBeschrijving="Antropology_India_1860"



s<-fread("__sa_pk_1840_anthr_div.dta.csv")
s$databaseID=19
s$databaseBeschrijving="Antropology_Pakistan_1840"



t<-fread("__se_mm_1860_anthr_2008_bassino_coclanis.dta.csv")
t$databaseID=20
t$databaseBeschrijving="Antropology_Myanmarese_1860"



u<-fread("__se_ph_1860_anthr_div.dta.csv")
u$databaseID=21
u$databaseBeschrijving="Antropology_Philippines_1860"



v<-fread("__we_de_1730_milit_1997_baten_bavaria_palatinate_upperpal_.dta.csv")
v$databaseID=22
v$databaseBeschrijving="Military_Volunteers_Germany_1730"



w<-fread("__we_de_1800_consc_2000_baten_tcft.dta.csv")
w$databaseID=23
w$databaseBeschrijving="Military_Conscripts_Germany_1800"



x<-fread("__we_de_1810_priso_1997_baten_wasserbg.dta.csv")
x$databaseID=24
x$databaseBeschrijving="Prison_Germany_wasserburg_1810"



y<-fread("__we_de_1830_priso_1997_baten_kaisr.dta.csv")
y$databaseID=25
y$databaseBeschrijving="Prison_Germany_Kaisheim_1830"



z<-fread("__we_de_1880_consc_2010_baten_fertig_arnsberg.dta.csv")
z$databaseID=26
z$databaseBeschrijving="Military_Conscripts_Germany_1880"



aa<-fread("__we_fr_1670_milit_2003_komlos_hau.dta.csv")
aa$databaseID=27
aa$databaseBeschrijving="Military_volunteer_France_1670"



bb<-fread("__we_nl_1820_priso_2010_debeer.dta.csv")
bb$databaseID=28
bb$databaseBeschrijving="Prison_Netherlands_1820"



cc<-fread("__we_no_1740_milit_2008_wiegel_ba.dta.csv")
cc$databaseID=29
cc$databaseBeschrijving="Military_recruits_Norway_1740"



dd<-fread("__we_pt_1730_consc_2013_stolz_baten_reis_mhr.dta.csv")
dd$databaseID=30
dd$databaseBeschrijving="Military_Conscripts_Portugal_1730"



ee<-fread("__we_uk_1780_priso_9999_oxley_nsw_smallpox_study_also_ie.dta.csv")
ee$databaseID=31
ee$databaseBeschrijving="Prison_UK_1780"



ff<-fread("__we_uk_1800_priso_2009_horell_oxley_wandsworth_smallpox.dta.csv")
ff$databaseID=32
ff$databaseBeschrijving="Prison_UK_Wandsworth_prison_1800"


#combine datasets into single database
combined_database<-rbindlist(list(g, f, y, bb, c, x, k, m, o, v, dd, w, aa), fill=TRUE)


#remove unnecessary variables and datasets without data on occupation
cln_c_db <- subset(combined_database, select = c(databaseID, databaseBeschrijving, occ))



#find spelling variations on occupations
#enter the databaseID of the dataset you want to search
var_occ = filter(cln_c_db, databaseID == 'XX')


freq <- table(var_occ$occ)
view(freq)

