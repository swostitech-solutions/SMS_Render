-- UPDATE GNM 1ST YEAR (2025-2028) - Fill missing data

BEGIN;

-- Student 1062: ANITA SAMAL
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25001',
  date_of_birth = '2008-03-13',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '6370891485',
  father_name = 'AMULYA PRASAD SAMAL',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1062';

-- Student 1063: DEBASMITA MAHAPATRA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25002',
  date_of_birth = '2006-11-16',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A-'),
  contact_no = '7846838192',
  father_name = 'SUBASH CH. MOHAPATRA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1063';

-- Student 1064: DIBYANKA PANDA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25003',
  date_of_birth = '2007-12-08',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '7205634870',
  father_name = 'sumant kumar panda',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1064';

-- Student 1065: IPSITA PANDA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25004',
  date_of_birth = '2004-04-02',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '7008774910',
  father_name = 'GOURANGA CH. PANDA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1065';

-- Student 1066: ISWARI CHAKRA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25005',
  date_of_birth = '2005-01-03',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '8144656516',
  father_name = 'RANJAN  CHAKRA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1066';

-- Student 1067: ITI PATRA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25006',
  date_of_birth = '2002-03-05',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '8926157397',
  father_name = 'BARENDRA PATRA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1067';

-- Student 1068: JAGNYASENEE PRADHAN
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25007',
  date_of_birth = '2001-12-25',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '7853008069',
  father_name = 'GOBINDA CHANDRA PRADHAN',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1068';

-- Student 1069: LAXMIPRIYA SETHY
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25008',
  date_of_birth = '2004-01-20',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '9124023771',
  father_name = 'ABHIMANYU SETHY',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1069';

-- Student 1070: MAMATA NAIK
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25009',
  date_of_birth = '1994-07-11',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '7327087244',
  father_name = 'ANANTA NAIK',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1070';

-- Student 1071: MILI NAIK
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25010',
  date_of_birth = '2008-01-24',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '6372562754',
  father_name = 'MADHABA NAIK',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1071';

-- Student 1072: PRATIKSHA KUILA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25011',
  date_of_birth = '2007-09-26',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '7855880324',
  father_name = 'SAMIR KUILA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1072';

-- Student 1073: PRITI PRIYADARSHINI
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25012',
  date_of_birth = '2007-08-01',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '8658345714',
  father_name = 'SANJAYA SETHI',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1073';

-- Student 1074: PURNIMA  PARAMANIK
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25013',
  date_of_birth = '1994-07-10',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '8249867503',
  father_name = 'DHRUBA PARMANIK',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1074';

-- Student 1075: RAJKUMAR DAS
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25014',
  date_of_birth = '2006-09-29',
  date_of_admission = '2025-09-26',
  contact_no = '7427900273',
  father_name = 'SAHADEV DAS',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1075';

-- Student 1076: RASHMI BISWAL
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25015',
  date_of_birth = '2005-01-30',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B-'),
  contact_no = '9668886510',
  father_name = 'SIBA SANKAR BISWAL',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1076';

-- Student 1077: REENA PATRA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25016',
  date_of_birth = '2000-03-07',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '8018449663',
  father_name = 'GHANASHYAM PATRA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1077';

-- Student 1078: ROJALINI MOHANTY
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25017',
  date_of_birth = '2005-01-07',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  contact_no = '9040902628',
  father_name = 'SIBAPRASAD MOHANTY',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1078';

-- Student 1079: SINULATA PARIDA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25018',
  date_of_birth = '1993-07-10',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '9658174182',
  father_name = 'ARJUNNA PARIDA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1079';

-- Student 1080: SMRUTI RANJAN BEHERA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25019',
  date_of_birth = '2008-04-22',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  contact_no = '7848839299',
  father_name = 'BIRENDRA BEHERA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1080';

-- Student 1081: SONARANI PRUSTY
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25020',
  date_of_birth = '2007-10-01',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '7606838593',
  father_name = 'AMAR KU. PRUSTY',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1081';

-- Student 1082: SUBHAM SAHOO
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25021',
  date_of_birth = '2007-11-16',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '7978289190',
  father_name = 'PRAFULLA KUMAR SAHOO',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1082';

-- Student 1083: SUCHISMITA NAYAK
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25022',
  date_of_birth = '2004-06-08',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  contact_no = '9777738531',
  father_name = 'PURNA CHANDRA NAYAK',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1083';

-- Student 1084: SWARNAPRAVA GIRI
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25023',
  date_of_birth = '2002-02-27',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB+'),
  contact_no = '7008201585',
  father_name = 'SHATRUGHNA GIRI',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1084';

-- Student 1085: SNEHARANI GARNAIK
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25024',
  date_of_birth = '2007-08-19',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '6372931098',
  father_name = 'SUMANTA KUMAR GARNAIK',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1085';

-- Student 1086: MONALISHA PARIDA
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25025',
  date_of_birth = '2006-10-22',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  contact_no = '7854058884',
  father_name = 'PRASANNA KUMAR PARIDA',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1086';

-- Student 1087: SALONI MAL
UPDATE "Acadix_studentregistration"
SET
  registration_no = 'GNM25026',
  date_of_birth = '2004-12-12',
  date_of_admission = '2025-09-26',
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  contact_no = '9827041320',
  father_name = 'HRUSHIKESH MAL',
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  updated_at = NOW()
WHERE admission_no = '1087';

COMMIT;

-- Verification
SELECT admission_no, first_name, registration_no, date_of_birth, father_name, contact_no
FROM "Acadix_studentregistration"
WHERE admission_no BETWEEN '1062' AND '1087'
ORDER BY admission_no::int
LIMIT 5;
