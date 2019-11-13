USE laterineindia;

CREATE TABLE states (
  idState INT NOT NULL AUTO_INCREMENT,
  libState VARCHAR(128) NOT NULL,
  PRIMARY KEY (idstate))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE type (
  idType INT NOT NULL AUTO_INCREMENT,
  libType VARCHAR(128) NOT NULL,
  PRIMARY KEY (idtype))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE latrine (
  idEquip INT NOT NULL AUTO_INCREMENT,
  pitLatrine INT NULL,
  waterClosed INT NULL,
  otherLatrine INT NULL,
  noLatrine INT NULL,
  PRIMARY KEY (idequip))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE materials (
  idMat INT NOT NULL AUTO_INCREMENT,
  mud INT NULL,
  wood INT NULL,
  brick INT NULL,
  stone INT NULL,
  cement INT NULL,
  mosaic INT NULL,
  any INT NULL,
  PRIMARY KEY (idmat))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE env (
  idEnvi INT NOT NULL AUTO_INCREMENT,
  idState INT NULL,
  idType INT NULL,
  PRIMARY KEY (idenvi))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

ALTER TABLE env
ADD UNIQUE (idState,idType);

CREATE TABLE equipenvi (
  idEnvi INT NULL,
  idEquip INT NULL,
  UNIQUE(idEnvi,idEquip))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE matenvi (
  idEnvi INT NULL,
  idMat INT NULL,
  UNIQUE(idEnvi,idMat))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO states (libState) 
VALUES ('Tome1')

CREATE TABLE GlobLatrines (
  idAllLat INT NOT NULL AUTO_INCREMENT,
  libStat VARCHAR(128) NOT NULL,
  libEnv VARCHAR(128) NOT NULL,
  pitLat INT(11) NOT NULL,
  wCloset INT(11) NOT NULL,
  otherLat INT(11) NOT NULL,
  noLat INT(11) NOT NULL,
    PRIMARY KEY (idAllLat))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE GlobMaterials (
  idAllMat INT NOT NULL AUTO_INCREMENT,
  libStat VARCHAR(128) NOT NULL,
  libEnv VARCHAR(128) NOT NULL,
  mud INT(11) NOT NULL,
  wood INT(11) NOT NULL,
  brick INT(11) NOT NULL,
  stone INT(11) NOT NULL,
  cement INT(11) NOT NULL,
  mosaic INT(11) NOT NULL,
  anyOther INT(11) NOT NULL,
    PRIMARY KEY (idAllMat))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO globlatrines (libStat, libEnv, pitLat, wCloset, otherLat, noLat)
VALUES ("ANDHRA PRADESH  28","Rural","809705","1093148","397842","10375523"),
("ANDHRA PRADESH  28","Urban","630179","1960525","667807","915128"),
("ARUNACHAL PRADESH  12","Rural","39513","9940","28418","86630"),
("ARUNACHAL PRADESH  12","Urban","15434","13499","12903","6278"),
("ASSAM  18","Rural","1979800","363519","170485","1706369"),
("ASSAM  18","Urban","188702","421092","66741","38650"),
("BIHAR  10","Rural","755668","526492","479431","10898416"),
("BIHAR  10","Urban","150391","574602","196767","400823"),
("CHHATTISGARH  22","Rural","59659","61434","52901","3185084"),
("CHHATTISGARH  22","Urban","40676","306495","68034","374235"),
("GOA  30","Rural","26636","29316","11911","72892"),
("GOA  30","Urban","25948","53831","16080","42602"),
("GUJARAT  24","Rural","475894","663847","134782","4611438"),
("GUJARAT  24","Urban","366410","2334150","326408","731060"),
("HARYANA  06","Rural","502207","51845","149461","1750950"),
("HARYANA  06","Urban","284714","333201","249377","207887"),
("HIMACHAL PRADESH  02","Rural","164167","70258","69777","793318"),
("HIMACHAL PRADESH  02","Urban","17166","71153","22197","32597"),
("JAMMU & KASHMIR  01","Rural","190753","33450","261231","675923"),
("JAMMU & KASHMIR  01","Urban","78751","103602","156815","51243"),
("JHARKHAND  20","Rural","80582","84693","84517","3552620"),
("JHARKHAND  20","Urban","78521","437172","191197","353288"),
("KARNATAKA  29","Rural","632514","311500","217245","5513914"),
("KARNATAKA  29","Urban","736283","1595616","343868","881193"),
("KERALA  32","Rural","631664","3063983","324374","922529"),
("KERALA  32","Urban","183557","1235462","101728","131909"),
("MADHYA PRADESH  23","Rural","315561","213056","197601","7398577"),
("MADHYA PRADESH  23","Urban","332437","1148702","412089","901630"),
("MAHARASHTRA  27","Rural","1124458","585470","292008","8991687"),
("MAHARASHTRA  27","Urban","571036","3580166","535330","3382994"),
("MANIPUR  14","Rural","198029","13708","17925","66692"),
("MANIPUR  14","Urban","67834","20815","7904","4749"),
("MEGHALAYA  17","Rural","98370","12339","21490","197479"),
("MEGHALAYA  17","Urban","30005","39435","13505","7623"),
("MIZORAM  15","Rural","55677","3271","4337","16077"),
("MIZORAM  15","Urban","44477","28170","7353","1604"),
("NAGALAND  13","Rural","125410","15705","30410","93809"),
("NAGALAND  13","Urban","27000","13255","22539","3922"),
("ORISSA  21","Rural","209472","223290","90510","6259607"),
("ORISSA  21","Urban","103055","468113","77767","438313"),
("PUNJAB  03","Rural","731747","177292","226487","1639936"),
("PUNJAB  03","Urban","305813","692949","290145","200787"),
("RAJASTHAN  08","Rural","579921","227428","238036","6111318"),
("RAJASTHAN  08","Urban","397910","886868","378726","522087"),
("SIKKIM  11","Rural","27296","22326","4816","37285"),
("SIKKIM  11","Urban","251","11322","373","1069"),
("TAMIL NADU  33","Rural","377122","609067","201730","7086871"),
("TAMIL NADU  33","Urban","658193","2682181","454527","2103935"),
("TRIPURA  16","Rural","356303","24631","39650","119096"),
("TRIPURA  16","Urban","54806","52763","11051","3723"),
("UTTAR PRADESH  09","Rural","1716646","401200","1840724","16631504"),
("UTTAR PRADESH  09","Urban","934442","1653335","1549079","1033671"),
("UTTARANCHAL  05","Rural","192541","85770","99685","818161"),
("UTTARANCHAL  05","Urban","104258","159255","75478","51173"),
("WEST BENGAL  19","Rural","1712827","778345","514682","8156016"),
("WEST BENGAL  19","Urban","1042595","2513682","307646","690122"),
("ANDAMAN & NICOBAR ISLANDS  35","Rural","6154","9127","5737","28635"),
("ANDAMAN & NICOBAR ISLANDS  35","Urban","1578","13739","2589","5503"),
("CHANDIGARH  04","Rural","1363","10137","3098","6704"),
("CHANDIGARH  04","Urban","1849","127789","14950","35988"),
("DADRA & NAGAR HAVELI  26","Rural","74","5538","67","27104"),
("DADRA & NAGAR HAVELI  26","Urban","388","8010","241","2551"),
("DAMAN & DIU  25","Rural","2069","4468","537","15017"),
("DAMAN & DIU  25","Urban","419","7418","179","4235"),
("DELHI  07","Rural","55767","32255","18586","62920"),
("DELHI  07","Urban","362087","1129239","393275","500020"),
("LAKSHADWEEP  31","Rural","20","4881","83","367"),
("LAKSHADWEEP  31","Urban","30","2729","499","631"),
("PONDICHERRY  34","Rural","708","14325","434","56732"),
("PONDICHERRY  34","Urban","2994","81057","4692","47713")

INSERT INTO globmaterials (libStat, libEnv, mud, wood, brick, stone, cement, mosaic, anyOther)
VALUES ("ANDHRA PRADESH  28","Rural","7997880","45420","94488","3829081","2931084","84033","48655"),
("ANDHRA PRADESH  28","Urban","496367","10447","28101","2362869","1558039","473033","50847"),
("ARUNACHAL PRADESH  12","Rural","62617","116707","292","401","37272","89","388"),
("ARUNACHAL PRADESH  12","Urban","20571","10794","309","377","33669","147","127"),
("ASSAM  18","Rural","4536303","190347","49671","19399","387350","8810","2410"),
("ASSAM  18","Urban","389088","18905","27090","11562","503712","23629","718"),
("BIHAR  10","Rural","12768815","86920","344648","35388","1305839","27232","7064"),
("BIHAR  10","Urban","621004","13685","82412","10721","948452","63331","1016"),
("CHHATTISGARH  22","Rural","3591454","7716","9415","149724","248636","8881","1896"),
("CHHATTISGARH  22","Urban","353191","2506","6200","127069","423907","67147","984"),
("GOA  30","Rural","105529","391","850","1245","77329","38726","613"),
("GOA  30","Urban","36384","704","1034","1393","99997","93363","1310"),
("GUJARAT  24","Rural","4452316","19276","33951","327585","1819712","857525","14808"),
("GUJARAT  24","Urban","376692","13349","21264","568100","1357705","2558329","26383"),
("HARYANA  06","Rural","1916218","5375","520770","35181","1003792","56099","7049"),
("HARYANA  06","Urban","220096","3282","155829","78591","976468","119526","7999"),
("HIMACHAL PRADESH  02","Rural","1297320","228996","6528","50324","571209","10132","3830"),
("HIMACHAL PRADESH  02","Urban","28127","7030","1518","1879","192280","9034","715"),
("JAMMU & KASHMIR  01","Rural","1555302","151794","9660","8926","391929","4661","3214"),
("JAMMU & KASHMIR  01","Urban","130680","20299","5125","3239","464219","17996","1508"),
("JHARKHAND  20","Rural","3801701","6243","48437","6281","619037","4861","2647"),
("JHARKHAND  20","Urban","339473","6704","27843","4361","935525","34438","971"),
("KARNATAKA  29","Rural","4910985","41439","41400","1418565","2407358","132880","45854"),
("KARNATAKA  29","Urban","534482","17031","23660","853468","2467362","912206","23406"),
("KERALA  32","Rural","1791236","21667","53279","80733","4505922","392957","48982"),
("KERALA  32","Urban","284427","5094","22466","17821","1716511","378387","37392"),
("MADHYA PRADESH  23","Rural","9209664","18594","45042","321367","654200","131912","11758"),
("MADHYA PRADESH  23","Urban","1103837","12342","25222","512506","1349038","615130","8734"),
("MAHARASHTRA  27","Rural","10777153","64916","105431","533788","1126947","1658651","142109"),
("MAHARASHTRA  27","Urban","1412513","48147","74552","551808","2530113","6316465","258796"),
("MANIPUR  14","Rural","286826","48365","2112","1671","22342","586","127"),
("MANIPUR  14","Urban","92392","2604","2237","1344","30153","1426","186"),
("MEGHALAYA  17","Rural","173749","167671","1588","1209","55987","370","818"),
("MEGHALAYA  17","Urban","16345","40313","431","792","59981","1020","328"),
("MIZORAM  15","Rural","7330","76349","83","106","7142","4","174"),
("MIZORAM  15","Urban","7194","56040","164","105","34948","249","181"),
("NAGALAND  13","Rural","187841","68061","1573","1379","35331","551","182"),
("NAGALAND  13","Urban","25835","13717","577","391","43670","1181","56"),
("ORISSA  21","Rural","6507071","72064","78575","39601","1661232","13539","6425"),
("ORISSA  21","Urban","391466","35953","16897","6799","992842","48400","2165"),
("PUNJAB  03","Rural","1907982","6549","655972","104777","1063286","59930","6579"),
("PUNJAB  03","Urban","288532","5585","342473","283772","1149899","81937","10203"),
("RAJASTHAN  08","Rural","5634567","17450","133296","879243","2892857","124357","55774"),
("RAJASTHAN  08","Urban","358679","6368","75403","676792","1704100","353253","25594"),
("SIKKIM  11","Rural","44708","24060","204","2225","38078","475","205"),
("SIKKIM  11","Urban","637","1039","25","56","16250","876","5"),
("TAMIL NADU  33","Rural","4178613","12476","181770","44746","5095522","199742","11842"),
("TAMIL NADU  33","Urban","955203","9546","148668","31472","5024425","1080325","22254"),
("TRIPURA  16","Rural","618452","30644","11307","831","39045","674","202"),
("TRIPURA  16","Urban","83829","1220","7774","737","66737","1638","93"),
("UTTAR PRADESH  09","Rural","23548929","82547","1135947","97578","2180738","115504","17740"),
("UTTAR PRADESH  09","Urban","1766174","31881","827258","144213","3924493","416239","12214"),
("UTTARANCHAL  05","Rural","1389703","52751","21658","71481","461179","12953","2905"),
("UTTARANCHAL  05","Urban","75802","3384","12336","5481","404278","51714","657"),
("WEST BENGAL  19","Rural","11441120","151907","415797","50849","2307003","30558","16077"),
("WEST BENGAL  19","Urban","1245696","59323","194141","29636","3872338","318914","6798"),
("ANDAMAN & NICOBAR ISLANDS  35","Rural","34822","5077","121","181","31392","91","152"),
("ANDAMAN & NICOBAR ISLANDS  35","Urban","2660","1478","136","108","27636","343","25"),
("CHANDIGARH  04","Rural","2605","52","1265","118","22095","269","24"),
("CHANDIGARH  04","Urban","23578","279","4111","5703","160327","20269","3439"),
("DADRA & NAGAR HAVELI  26","Rural","25886","36","295","404","8108","6086","109"),
("DADRA & NAGAR HAVELI  26","Urban","2391","31","166","481","5950","7381","179"),
("DAMAN & DIU  25","Rural","5494","88","77","308","21840","6453","55"),
("DAMAN & DIU  25","Urban","787","81","102","542","8978","9032","65"),
("DELHI  07","Rural","47809","311","24879","4947","147382","18494","866"),
("DELHI  07","Urban","213832","4790","120231","92931","2266101","427073","10310"),
("LAKSHADWEEP  31","Rural","1390","1","12","3","7759","261","33"),
("LAKSHADWEEP  31","Urban","753","2","9","4","5830","338","212"),
("PONDICHERRY  34","Rural","36591","88","600","227","49992","2440","41")

INSERT INTO    latrine(pitLatrine, waterClosed, otherLatrine, noLatrine)
SELECT    pitLat, wCloset, otherLat, noLat
FROM    globlatrines;

INSERT INTO    materials(mud, wood, brick, stone, cement, mosaic, any)
SELECT    mud, wood, brick, stone, cement, mosaic, anyOther
FROM    globmaterials;

INSERT INTO states (libState)
SELECT libStat
FROM globlatrines;



INSERT INTO type (libType)
SELECT DISTINCT libEnv
FROM globlatrines;

INSERT INTO env(idState,idType)
SELECT stat.idState,typ.idType
FROM states stat
INNER JOIN globlatrines glblt ON stat.libState=glblt.libStat
INNER JOIN type typ ON glblt.libEnv=typ.libType;

INSERT INTO equipenvi(idEnvi,idEquip)
SELECT envi.idEnvi,latr.idEquip
FROM globlatrines glblt
INNER JOIN states stat ON stat.libState=glblt.libStat
INNER JOIN env envi ON stat.idState = envi.idEnvi
INNER JOIN latrine latr ON   (glblt.pitLat=latr.pitLatrine
								AND glblt.wCloset=latr.waterClosed
                                AND glblt.otherLat=latr.otherLatrine
                                AND glblt.noLat=latr.noLatrine);
                          
INSERT INTO matenvi(idEnvi,idMat)
SELECT envi.idEnvi, mat.idMat
FROM globmaterials glblm
INNER JOIN states stat ON stat.libState=glblm.libStat
INNER JOIN env envi ON stat.idState=envi.idEnvi
INNER JOIN materials mat ON   (glblm.mud=mat.mud
								AND glblm.wood=mat.wood
                                AND glblm.brick=mat.brick
                                AND glblm.stone=mat.stone
                                AND glblm.cement=mat.cement
                                AND glblm.mosaic=mat.mosaic
                                AND glblm.anyOther=mat.any);











