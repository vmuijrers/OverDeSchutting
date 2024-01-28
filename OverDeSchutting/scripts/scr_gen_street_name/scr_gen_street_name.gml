// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_gen_street_name(_x){
streetname[0] = "DIEPENBROEKLAA";
streetname[1] = "BAGGERPIJPELAAN";
streetname[2] = "BRONKELDINKDREEF";
streetname[3] = "VLAAIENSTRAAT";
streetname[4] = "GGJDREEF";
streetname[5] = "BOPPEVRIESESTRAAT";
streetname[6] = "KABOUTERLAAN";
streetname[7] = "KOTSKADE";
streetname[8] = "PIGGYPOGGYVELD";
streetname[9] = "DE MAAN";
streetname[10] = "PRETPLEIN";
streetname[11] = "GIECHELGRACHT";
streetname[12] = "KAASSCHAAFSTRAAT";
streetname[13] = "FARNONKELDREEF";
streetname[14] = "RIZZLERSTREET";
streetname[15] = "SIMPLAAN";
streetname[16] = "ISHETNOGNODIGOFKANHETWEG";
streetname[17] = "SHREKLAAN";
streetname[18] = "DIARREEDREEF";
streetname[19] = "GULDENMIDDENWEG";
	return (streetname[global.street_name_number]+" "+string(global.street_number+(floor(_x/640))))
}