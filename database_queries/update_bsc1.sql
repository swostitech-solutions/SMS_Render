-- UPDATE BSC 1ST YEAR (2025-2029) - Fill missing data from Excel

BEGIN;

-- Student 1189: ABHISHEK NAYAK
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25001',
  date_of_birth = '2008-04-13',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '9437467241',
  father_name = 'NARESH CHANDRA NAYAK',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1189';

-- Student 1190: ADITYA JENA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25002',
  date_of_birth = '2006-07-09',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '7978959621',
  father_name = 'ASHOK KUMAR JENA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1190';

-- Student 1191: AKRUTI MAHARANA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25003',
  date_of_birth = '2008-04-10',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '8984668058',
  father_name = 'PRAKASH CHANDRA MAHARANA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1191';

-- Student 1192: ANJALI PRIYADARSHINI SAHOO
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25004',
  date_of_birth = '2008-05-05',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '8917323359',
  father_name = 'SAMIR KUMAR SAHOO',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1192';

-- Student 1193: ARCHITA PRIYADARSHINI
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25005',
  date_of_birth = '2006-10-15',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '9556167152',
  father_name = 'SUMANTA KUMAR JENA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1193';

-- Student 1194: BALARAM BARIK
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25006',
  date_of_birth = '2007-01-02',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '8249738963',
  father_name = 'BASANTA KUMAR BARIK',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1194';

-- Student 1195: BARSARANI MAHAPATRA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25007',
  date_of_birth = '2007-06-19',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '9348479895',
  father_name = 'DINABANDHU MAHAPATRA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1195';

-- Student 1196: BARSHARANI SWAIN
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25008',
  date_of_birth = '2007-01-28',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  contact_no = '6371839193',
  father_name = 'SITAKANTA SWAIN',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1196';

-- Student 1197: BHABANI SANKAR PARIDA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25009',
  date_of_birth = '2004-03-14',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  contact_no = '7008059045',
  father_name = 'SURENDRA KUMAR PARIDA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1197';

-- Student 1198: BIKASH SWAIN
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25010',
  date_of_birth = '2007-11-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '8144512757',
  father_name = 'PREMANANDA SWAIN',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1198';

-- Student 1199: BISWAJIT BEHERA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25011',
  date_of_birth = '2007-07-29',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  contact_no = '6372140498',
  father_name = 'BIDYADHAR BEHERA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1199';

-- Student 1200: CHINMAYA MAJHI
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25012',
  date_of_birth = '2008-04-03',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '8144154748',
  father_name = 'TRILOCHANA MAJHI',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1200';

-- Student 1201: DEBAJANI DAS
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25013',
  date_of_birth = '2007-02-03',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  contact_no = '7853001879',
  father_name = 'CHANDAN KUMAR DAS',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1201';

-- Student 1202: DEEPANKAR SINGHA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25014',
  date_of_birth = '2006-12-16',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '9439732230',
  father_name = 'NIRANJAN SINGHA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1202';

-- Student 1203: DIBYAJYOTI PATRA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25015',
  date_of_birth = '2007-08-04',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  contact_no = '7326920188',
  father_name = 'DHANANJAY PATRA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1203';

-- Student 1204: DIPTIMAYEE SWAIN
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25016',
  date_of_birth = '2008-02-01',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '6371502812',
  father_name = 'JAYANT KUMAR SWAIN',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1204';

-- Student 1205: GOUTAM JENA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25017',
  date_of_birth = '2007-08-02',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '8144733734',
  father_name = 'NARAYAN JENA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1205';

-- Student 1206: GYANENDRA PRASAD SAHOO
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25018',
  date_of_birth = '2008-01-25',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '9178872313',
  father_name = 'PURNA CHANDRA SAHOO',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1206';

-- Student 1207: HIMANSHU BEHERA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25019',
  date_of_birth = '2007-10-02',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  contact_no = '7008946475',
  father_name = 'MANOJ KUMAR BEHERA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1207';

-- Student 1208: IPSITA NANDA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25020',
  date_of_birth = '2007-11-25',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '7848980374',
  father_name = 'BHARAT CHANDRA NANDA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1208';

-- Student 1209: KANCHAN DIGAL
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25021',
  date_of_birth = '2004-11-12',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '9348937049',
  father_name = 'KAILASH DIGAL',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1209';

-- Student 1210: KHUSI SAHU
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25022',
  date_of_birth = '2006-10-08',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '7751048969',
  father_name = 'BHASKAR SAHU',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1210';

-- Student 1211: LAXMIPRIYA SETHI
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25023',
  date_of_birth = '2005-05-05',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB+'),
  contact_no = '8917235704',
  father_name = 'RAGHABA CHANDRA SETHI',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1211';

-- Student 1212: LITURANJAN DALEI
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25024',
  date_of_birth = '2007-07-17',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB+'),
  contact_no = '8144320977',
  father_name = 'NARAYAN DALEI',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1212';

-- Student 1213: MAHAPRASAD DAS
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25025',
  date_of_birth = '2005-08-01',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '8658522358',
  father_name = 'LATE KARTIKESWAR DAS',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1213';

-- Student 1214: MOUSUMI SATAPATHY
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25026',
  date_of_birth = '2005-07-07',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '7815037953',
  father_name = 'MANAS RANJAN SATAPATHY',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1214';

-- Student 1215: NIKITA SUBHADARSINI SAHOO
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25027',
  date_of_birth = '2008-05-23',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '9699358330',
  father_name = 'ANANTA KUMAR SAHOO',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1215';

-- Student 1216: PAYAL PRIYADARSHINI
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25028',
  date_of_birth = '2007-10-12',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  contact_no = '9777572340',
  father_name = 'PRUFUL KUMAR MOHANTY',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1216';

-- Student 1217: PRANGYA PRIYADARSANI MISHRA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25029',
  date_of_birth = '2006-05-27',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '7978918365',
  father_name = 'KRUSHNA CHANDRA MISHRA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1217';

-- Student 1218: PRIYADARSHANI JAMUDA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25030',
  date_of_birth = '2003-11-12',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  contact_no = '8093239507',
  father_name = 'MANGILAL JAMUDA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1218';

-- Student 1219: PUJA BHOI
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25031',
  date_of_birth = '2007-09-17',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  contact_no = '9827591314',
  father_name = 'SANJAY KUMAR BHOI',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1219';

-- Student 1220: PUSPALATA MOHANTA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25032',
  date_of_birth = '2006-10-19',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  contact_no = '8926313037',
  father_name = 'RABINDRA KUMAR MOHANTA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1220';

-- Student 1221: RAJKUMAR ROUT
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25033',
  date_of_birth = '2008-01-29',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '6370113191',
  father_name = 'CHANDRA SEKHAR ROUT',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1221';

-- Student 1222: RITUSHRI GHORAI
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25034',
  date_of_birth = '2006-10-09',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '9692421774',
  father_name = 'RITUSHRI GHORAI',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1222';

-- Student 1223: RUDRANARAYAN SAHOO
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25035',
  date_of_birth = '2007-07-09',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB+'),
  contact_no = '9556742398',
  father_name = 'SANTOSH KUMAR SAHOO',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1223';

-- Student 1224: SAISMITA BISWAL
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25036',
  date_of_birth = '2008-03-20',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB+'),
  contact_no = '9348761933',
  father_name = 'MANORANJAN BISWAL',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1224';

-- Student 1225: SANCHITA BEHERA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25037',
  date_of_birth = '2008-03-27',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '9337114722',
  father_name = 'KASI BISWANATH BEHERA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1225';

-- Student 1226: SAUMYA RANJAN SAHOO
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25038',
  date_of_birth = '2007-10-22',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '9040587285',
  father_name = 'CHITA RANJAN SAHOO',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1226';

-- Student 1227: SIBANI SAHOO
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25039',
  date_of_birth = '2007-07-31',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A-'),
  contact_no = '9937140568',
  father_name = 'SAROJ KUMAR SAHOO',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1227';

-- Student 1228: SMITANJAY MOHAPATRA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25040',
  date_of_birth = '2004-01-03',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB+'),
  contact_no = '9692735962',
  father_name = 'SIRISH CHANDRA MOHAPATRA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1228';

-- Student 1229: SMRUTIPARNA DAS
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25041',
  date_of_birth = '2007-08-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '8658593341',
  father_name = 'PATITAPABAN DAS',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1229';

-- Student 1230: SMRUTIREKHA DALAI
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25042',
  date_of_birth = '2008-01-28',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '9692593212',
  father_name = 'UDAYA DALAI',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1230';

-- Student 1231: SMRUTIREKHA DUTTA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25043',
  date_of_birth = '2006-03-13',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '7683922362',
  father_name = 'HARENDRA NATH DUTTA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1231';

-- Student 1232: SNIGDHA MISHRA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25044',
  date_of_birth = '2006-11-07',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '9861851904',
  father_name = 'NIRMAL MISHRA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1232';

-- Student 1233: SOMANATHA MOHANTA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25045',
  date_of_birth = '2007-10-22',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '8249475120',
  father_name = 'TUNA MOHANTA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1233';

-- Student 1234: SOUMENDRA NATH NANDA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25046',
  date_of_birth = '2008-03-10',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '7077589587',
  father_name = 'NARENDRA NATH NANDA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1234';

-- Student 1235: SOUMYA RANJAN DAS
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25047',
  date_of_birth = '2007-11-10',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '7077049125',
  father_name = 'AMULYA KUMAR DAS',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1235';

-- Student 1236: SUBHALAXMI BARIKI
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25048',
  date_of_birth = '2007-09-08',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '6370598527',
  father_name = 'SRIDHAR BARIKI',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1236';

-- Student 1237: SUBHALAXMI SAHU
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25049',
  date_of_birth = '2008-06-12',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '7809921286',
  father_name = 'GAGAN SAHU',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1237';

-- Student 1238: SUBHALIN PANDA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25050',
  date_of_birth = '2007-08-31',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '7978487103',
  father_name = 'UMAKANTA PANDA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1238';

-- Student 1239: SUBHAM KUMAR
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25051',
  date_of_birth = '2007-07-07',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '9438248299',
  father_name = 'SUSHIL KUMAR GUPTA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1239';

-- Student 1240: SUBHASHREE SWAIN
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25052',
  date_of_birth = '2007-05-13',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '9040296944',
  father_name = 'BABULA SWAIN',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1240';

-- Student 1241: SUBHASMITA DAS
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25053',
  date_of_birth = '2007-04-30',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '8249495349',
  father_name = 'RAMESH CHANDRA DAS',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1241';

-- Student 1242: SUJAL MAHAPATRA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25054',
  date_of_birth = '2008-03-25',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '8895356170',
  father_name = 'SUBASH CHANDRA MAHAPATRA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1242';

-- Student 1243: SUMITRA MOHANTA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25055',
  date_of_birth = '2005-12-28',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '8984202910',
  father_name = 'BIRANCHI KUMAR MOHANTA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1243';

-- Student 1244: SWAPNA PRIYADARSANI BARIK
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25056',
  date_of_birth = '2007-04-15',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '7894150350',
  father_name = 'SHASHIKANTA BARIK',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1244';

-- Student 1245: SWARNALATA PARIDA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25057',
  date_of_birth = '2007-01-02',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '9178221935',
  father_name = 'GHANASHYAM PARIDA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1245';

-- Student 1246: SWAYAM SURANJAN PAHAN
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25058',
  date_of_birth = '2007-11-08',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '8144783176',
  father_name = 'SURENDRA PAHAN',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1246';

-- Student 1247: TANMAYEE BEHERA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25059',
  date_of_birth = '2008-02-27',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  contact_no = '6370298741',
  father_name = 'JAGANNATH BEHERA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1247';

-- Student 1248: TAPASWINI MALLICK
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'BSCN25060',
  date_of_birth = '2007-03-05',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  contact_no = '8117081477',
  father_name = 'MAHENDRA KUMAR MALLICK',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1248';

COMMIT;

-- Verification - Show first 5 students with details
SELECT 
  admission_no, first_name,
  registration_no, date_of_birth, contact_no,
  father_name
FROM "Acadix_studentregistration"
WHERE admission_no BETWEEN '1189' AND '1248'
ORDER BY admission_no::int
LIMIT 5;
