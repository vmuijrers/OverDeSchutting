// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gen_street_name(){
streetname[0] = "Diepenbroeklaan";
streetname[1] = "BaggerPijpelaan";
streetname[2] = "Bronkeldinkdreef";
streetname[3] = "Vlaaienstraat";
streetname[4] = "GGJdreef";
streetname[5] = "Boppevriesestraat";
streetname[6] = "Kabouterlaan";
streetname[7] = "Kotskade";
streetname[8] = "Piggypoggyveld";
streetname[9] = "De Maan";
streetname[10] = "Pretplein";
streetname[11] = "Giechelgracht";
streetname[12] = "Kaasschaafstraat";
streetname[13] = "Farnonkeldreef";
streetname[14] = "Rizzlerstreet";
streetname[15] = "Simplaan";
streetname[16] = "Ishetnognodigofkanhetweg";
streetname[17] = "Shreklaan";
streetname[18] = "Diarreedreef";
streetname[19] = "Guldenmiddenweg";
return streetname[floor(random(20))]
}