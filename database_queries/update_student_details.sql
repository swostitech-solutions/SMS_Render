-- UPDATE STUDENT DETAILS WITH COMPLETE EXCEL DATA
-- Updates all missing fields for 61 students

BEGIN;

-- GNM 3rd YEAR STUDENT DETAILS_2023-2026 (28 students)

-- Student 1001: MAMALI 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'PRUSTY',
  registration_no = '72395808078',
  date_of_birth = '2005-05-30',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '508202831813',
  contact_no = '8658165122',
  email = 'mamaliprusty86@gmail.com',
  father_name = 'Subash chandra prusty',
  father_contact_number = '6372557517',
  father_profession = 'Driver',
  father_email = 'mamaliprusty86@gmail.com',
  father_aadhaar_no = '270958676355',
  mother_name = 'Sukanti Prusty',
  mother_contact_number = '6372557517',
  mother_email = 'mamaliprusty86@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '594373045454',
  updated_at = NOW()
WHERE admission_no = '1001';

-- Student 1002: Sagarika 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Jena',
  registration_no = '72395808090',
  date_of_birth = '2004-09-27',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '583550870579',
  contact_no = '6370224756',
  email = 'jenasagarika873@gmail.com',
  father_name = 'Shasikant Jena',
  father_contact_number = '9437667022',
  father_profession = 'Business',
  father_email = 'nupurart123@gmail.com',
  father_aadhaar_no = '942316303713',
  mother_name = 'Snigdha rani jena',
  mother_contact_number = '9040182557',
  mother_email = 'jenasagarika027@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '519984751256',
  updated_at = NOW()
WHERE admission_no = '1002';

-- Student 1003: Arpita 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Ray',
  registration_no = '72395808066',
  date_of_birth = '2006-05-10',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '9692095868',
  email = 'arpitaray625@gmail.com',
  father_name = 'Mahesh Chandra Ray',
  father_contact_number = '7873319818',
  father_profession = 'Private Job',
  father_email = 'arpitaray625@gmail.com',
  father_aadhaar_no = NULL,
  mother_name = 'Arati Ray',
  mother_contact_number = '8144181450',
  mother_email = 'arpitaray625@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '278994094804',
  updated_at = NOW()
WHERE admission_no = '1003';

-- Student 1004: Priyanisha 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Soreng',
  registration_no = '72395808082',
  date_of_birth = '2004-04-05',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '927965372335',
  contact_no = '9556878239',
  email = 'sorengpriyanisha76@gmail.com',
  father_name = 'Pradeep soreng',
  father_contact_number = '9938818104',
  father_profession = 'Farmer',
  father_email = 'sarengpradip65@gmail.com',
  father_aadhaar_no = '909368477561',
  mother_name = 'Punam soreng',
  mother_contact_number = '8658064138',
  mother_email = 'sorengpriyanisha76@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '260625173122',
  updated_at = NOW()
WHERE admission_no = '1004';

-- Student 1005: Barsha
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Behera',
  registration_no = '72395808069',
  date_of_birth = '2001-06-20',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '488243937847',
  contact_no = '6372245013',
  email = 'barshabehera06493@gmail.com',
  father_name = 'Rama Chandra behera',
  father_contact_number = '9778754520',
  father_profession = 'Business',
  father_email = 'barshabehera06493@gmail.com',
  father_aadhaar_no = '504856571264',
  mother_name = 'Laxmi behera',
  mother_contact_number = '9337454028',
  mother_email = 'barshabehera06493@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '913140476610',
  updated_at = NOW()
WHERE admission_no = '1005';

-- Student 1006: SANGAM 
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'KUMAR',
  last_name = 'NAYAK',
  registration_no = '72395808091',
  date_of_birth = '2000-03-15',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Male'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '328448386616',
  contact_no = '8144513324',
  email = 'Sangamkumarnayak15@gmail.com',
  father_name = 'Prashant kumar nayak',
  father_contact_number = '8658631342',
  father_profession = 'Farmer',
  father_email = NULL,
  father_aadhaar_no = '360107078032',
  mother_name = 'KUSUMA NAYAK',
  mother_contact_number = '8658631342',
  mother_email = 'sangamkumarnayak15@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '835999351789',
  updated_at = NOW()
WHERE admission_no = '1006';

-- Student 1007: Manisha
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Lakra',
  registration_no = '72395808079',
  date_of_birth = '2000-07-12',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '445979429017',
  contact_no = '7848984231',
  email = 'lakramanisha705@gmail.com',
  father_name = 'Stephan lakra',
  father_contact_number = '8968657214',
  father_profession = 'Farmer',
  father_email = 'sn8968657214@gmail.com',
  father_aadhaar_no = '561371319834',
  mother_name = 'Pramila Lakra',
  mother_contact_number = NULL,
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1007';

-- Student 1008: Rupali
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Rout',
  registration_no = '72395808089',
  date_of_birth = '2005-03-01',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SCBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '7847994050',
  email = 'routrupali309@gmail.com',
  father_name = 'Harish Chandra Rout',
  father_contact_number = '7735100152',
  father_profession = 'Business',
  father_email = 'harishchrout6@gmail.com',
  father_aadhaar_no = NULL,
  mother_name = 'Pramila Rout',
  mother_contact_number = '7735382082',
  mother_email = 'Pramilarout1989@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '414612149647',
  updated_at = NOW()
WHERE admission_no = '1008';

-- Student 1009: TINA
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'TOPPO',
  registration_no = '72395808097',
  date_of_birth = '2005-02-05',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '804745310091',
  contact_no = '9707655335',
  email = 'tinatoppo02@gmail.com',
  father_name = 'HIRALAL TOPPO',
  father_contact_number = '8791600897',
  father_profession = 'Farmer',
  father_email = 'htoppo432@gmail.com',
  father_aadhaar_no = '908348947038',
  mother_name = 'ROJINA TOPPO',
  mother_contact_number = '9954207780',
  mother_email = 'tinatoppo02@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '364663845516',
  updated_at = NOW()
WHERE admission_no = '1009';

-- Student 1010: Tanistha 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Samal',
  registration_no = '72395808096',
  date_of_birth = '2006-01-23',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '612048118207',
  contact_no = '7008856261',
  email = 'tanisthasamal6@gmail.com',
  father_name = 'Amar prasad Samal',
  father_contact_number = '9777686554',
  father_profession = 'Farmer',
  father_email = 'amarsamal1976@gmail.com',
  father_aadhaar_no = '999328734067',
  mother_name = 'Sagarika Samal',
  mother_contact_number = '7749923645',
  mother_email = 'tanisthasamal6@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '592531332268',
  updated_at = NOW()
WHERE admission_no = '1010';

-- Student 1011: Reetanjali
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Mallik',
  registration_no = '72395808086',
  date_of_birth = '2005-03-15',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '327627503670',
  contact_no = '7735516359',
  email = 'mallikreetanjali123@gmail.com',
  father_name = 'Bideshi mallik',
  father_contact_number = '8260918028',
  father_profession = 'Farmer',
  father_email = 'mallikreetanjali123@gmail.com',
  father_aadhaar_no = '224156350398',
  mother_name = 'Sabita mallik',
  mother_contact_number = '7855808678',
  mother_email = 'geetapatra716@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '342065982199',
  updated_at = NOW()
WHERE admission_no = '1011';

-- Student 1012: Tusharakanta 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Rout',
  registration_no = '72395808098',
  date_of_birth = '2001-08-18',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Male'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '782973217308',
  contact_no = '8260520319',
  email = 'tusharrout2001@gmail.com',
  father_name = 'Prafull Kumar rout',
  father_contact_number = '9777221222',
  father_profession = 'Business',
  father_email = NULL,
  father_aadhaar_no = '318941072439',
  mother_name = 'Anjalibala rout',
  mother_contact_number = '8144337407',
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = '318941072439',
  updated_at = NOW()
WHERE admission_no = '1012';

-- Student 1013: Kanana bala 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Palatasingh',
  registration_no = '72395808074',
  date_of_birth = '2006-01-30',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '8260555173',
  email = 'bijayapaltasingh@gmail.com',
  father_name = 'Bijaya Kumar palatasingh',
  father_contact_number = '9861154850',
  father_profession = 'Govt  Job',
  father_email = 'bijayapaltashing@gmail.com',
  father_aadhaar_no = NULL,
  mother_name = 'Minati palatasingh',
  mother_contact_number = '9438640251',
  mother_email = 'bijayakumarpaltasingh@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '55968433591',
  updated_at = NOW()
WHERE admission_no = '1013';

-- Student 1014: Lipika 
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Rani',
  last_name = 'Das',
  registration_no = '72395808075',
  date_of_birth = '2005-06-16',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '7077562028',
  email = 'daslipika1605@gmail.com',
  father_name = 'Kashinath das',
  father_contact_number = '9437743143',
  father_profession = 'Business',
  father_email = 'kashinathd673@gmil.com',
  father_aadhaar_no = NULL,
  mother_name = 'Minati das',
  mother_contact_number = '7328822328',
  mother_email = 'kashinathd673@gmil.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '518857897565',
  updated_at = NOW()
WHERE admission_no = '1014';

-- Student 1015: Priti
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Archana',
  last_name = 'Beck',
  registration_no = '72395808081',
  date_of_birth = '1996-08-22',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '775553807143',
  contact_no = '9078216608',
  email = 'pritiarchanab@gmail.com',
  father_name = 'Lajrus Beck',
  father_contact_number = '7752093206',
  father_profession = 'Farmer',
  father_email = 'pritiarchanab@gmail.com',
  father_aadhaar_no = '309564947603',
  mother_name = 'Jeromina Beck',
  mother_contact_number = '8961847053',
  mother_email = 'pritiarchanab@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '687707907958',
  updated_at = NOW()
WHERE admission_no = '1015';

-- Student 1016: Amrita
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Mohanty',
  registration_no = '72395808065',
  date_of_birth = '2005-06-04',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '8249981458',
  email = 'amritamohantyamritamohanty84@gmail.com',
  father_name = 'Ananda chandra mohanty',
  father_contact_number = NULL,
  father_profession = NULL,
  father_email = NULL,
  father_aadhaar_no = NULL,
  mother_name = 'Indu mati mohanty',
  mother_contact_number = '9776797131',
  mother_email = 'amritamohantyamritamohanty@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '816224521189',
  updated_at = NOW()
WHERE admission_no = '1016';

-- Student 1017: RITESH
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'KUMAR',
  last_name = 'BISWAL',
  registration_no = '72395808087',
  date_of_birth = '2005-07-12',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Male'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '636500287561',
  contact_no = '9438137059',
  email = 'riteshbiswal786@gmail.com',
  father_name = 'BRUNDABAN BISWAL',
  father_contact_number = '8144885059',
  father_profession = 'Farmer',
  father_email = 'biswalbrundaban17@gmail.com',
  father_aadhaar_no = '741555350771',
  mother_name = 'SANTILATA BISWAL',
  mother_contact_number = '7608994529',
  mother_email = 'riteshbiswal786@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '664167135539',
  updated_at = NOW()
WHERE admission_no = '1017';

-- Student 1018: Debaki
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Badaraita',
  registration_no = '72395808071',
  date_of_birth = '2025-07-05',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '792381611381',
  contact_no = '7852965685',
  email = 'debakibadaraita4@gmail.com',
  father_name = 'Ganganna Badaraita',
  father_contact_number = NULL,
  father_profession = NULL,
  father_email = NULL,
  father_aadhaar_no = NULL,
  mother_name = 'Ashri Badaraita',
  mother_contact_number = NULL,
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1018';

-- Student 1019: Prodeep
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'kumar',
  last_name = 'Santra',
  registration_no = '72395808083',
  date_of_birth = '1989-04-05',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Male'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '272724686611',
  contact_no = '9937371501',
  email = 'pradeepkusantra987@gmail.com',
  father_name = 'Late Rabindra kumar santra',
  father_contact_number = '9937371501',
  father_profession = NULL,
  father_email = NULL,
  father_aadhaar_no = NULL,
  mother_name = 'Subriti santra',
  mother_contact_number = '9777876361',
  mother_email = 'pradeepkusantra987@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '755060439808',
  updated_at = NOW()
WHERE admission_no = '1019';

-- Student 1020: BAISHALI 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'SUNA',
  registration_no = '72395808070',
  date_of_birth = '2006-07-05',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '937477313945',
  contact_no = '9692479349',
  email = 'baishalisuna1@gmail.cpm',
  father_name = 'Dillip Suna',
  father_contact_number = '8327763092',
  father_profession = 'Farmer',
  father_email = 'baishalisuna1@gmail.cpm',
  father_aadhaar_no = '273820632481',
  mother_name = 'Sanju Suna',
  mother_contact_number = '8327763092',
  mother_email = 'baishalisuna1@gmail.cpm',
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1020';

-- Student 1021: Bishnupriya 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Barik',
  registration_no = '72395808070',
  date_of_birth = '2002-08-07',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '483947696587',
  contact_no = '7735751573',
  email = '_bishnupriyab626@gmali.com',
  father_name = 'Basant kumar barik',
  father_contact_number = '9437524425',
  father_profession = 'Govt Job',
  father_email = '_bishnupriyab626@gmali.com',
  father_aadhaar_no = '200205299161',
  mother_name = 'Sandhya rani barik',
  mother_contact_number = NULL,
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1021';

-- Student 1022: HARAPRIYA 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'NAIK',
  registration_no = '72395808072',
  date_of_birth = '1999-07-27',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '817927233033',
  contact_no = '7325947469',
  email = 'harapriya.priya99@gmail.com',
  father_name = 'Bipra naik',
  father_contact_number = '8249941627',
  father_profession = 'Farmer',
  father_email = 'harapriya.priya99@gmail.com',
  father_aadhaar_no = '680219282460',
  mother_name = 'Banita naik',
  mother_contact_number = '9348231338',
  mother_email = 'harapriya.priya99@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '226879392981',
  updated_at = NOW()
WHERE admission_no = '1022';

-- Student 1023: SASMITA 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'MAHANANDIA',
  registration_no = '72395808093',
  date_of_birth = '2000-01-29',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '264804315220',
  contact_no = '7008979908',
  email = 'sasmitamahandia515@gmail.com',
  father_name = 'Prabasi Mahanandia',
  father_contact_number = '8455869322',
  father_profession = 'Farmer',
  father_email = 'sasmitamahandia515@gmail.com',
  father_aadhaar_no = '820735266569',
  mother_name = 'Golapi mahanandia',
  mother_contact_number = '8455869322',
  mother_email = 'sasmitamahandia515@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1023';

-- Student 1024: RONALISHA 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'KAR',
  registration_no = '72395808088',
  date_of_birth = '2002-05-13',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '703428024453',
  contact_no = '8144020471',
  email = 'ronalishakar@gmail.com',
  father_name = 'Gadadhar kar',
  father_contact_number = '7608046130',
  father_profession = 'Business',
  father_email = 'gadadharkar@gmail.com',
  father_aadhaar_no = '284688103316',
  mother_name = 'Sonalisha kar',
  mother_contact_number = '7608046130',
  mother_email = 'sonalishakar11@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '559592174656',
  updated_at = NOW()
WHERE admission_no = '1024';

-- Student 1025: LISHARANI 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'DASH',
  registration_no = '72395808076',
  date_of_birth = '2000-09-26',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '422374677509',
  contact_no = '7064793916',
  email = 'dashlisharani0@gmail.com',
  father_name = 'Akshay dash',
  father_contact_number = '7377132413',
  father_profession = 'Farmer',
  father_email = 'dashlisharani0@gmail.com',
  father_aadhaar_no = NULL,
  mother_name = 'Archana dash',
  mother_contact_number = '7377132413',
  mother_email = 'dashlisharani0@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '205808886490',
  updated_at = NOW()
WHERE admission_no = '1025';

-- Student 1026: RAJANANDINI 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'NAYAK',
  registration_no = '72395808085',
  date_of_birth = '1999-06-02',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SCBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '907355008101',
  contact_no = '9692189026',
  email = 'rajnandinayak1999@gmail.com',
  father_name = 'late. Senturian  nayak',
  father_contact_number = NULL,
  father_profession = NULL,
  father_email = NULL,
  father_aadhaar_no = NULL,
  mother_name = 'Pratima nayak',
  mother_contact_number = '7656825359',
  mother_email = 'rajnandinayak1999@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '604616818210',
  updated_at = NOW()
WHERE admission_no = '1026';

-- Student 1027: PRAKASH 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'MALLICK',
  registration_no = '72395808080',
  date_of_birth = '1997-05-21',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Male'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '930575581574',
  contact_no = '8249419938',
  email = 'prakashmallick116@gmail.com',
  father_name = 'late.Lambeda mallick',
  father_contact_number = NULL,
  father_profession = NULL,
  father_email = NULL,
  father_aadhaar_no = NULL,
  mother_name = 'SHASHI MALLICK',
  mother_contact_number = '8249419938',
  mother_email = 'prakashmallick116@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '497386484433',
  updated_at = NOW()
WHERE admission_no = '1027';

-- Student 1028: SANTOSHI 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'PATRA',
  registration_no = '72395808092',
  date_of_birth = '2005-06-16',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '928866346696',
  contact_no = '9861598631',
  email = 'funnyfact956@gmail.com',
  father_name = 'Pradeep patra',
  father_contact_number = '8917282144',
  father_profession = 'Business',
  father_email = NULL,
  father_aadhaar_no = '678740789243',
  mother_name = 'LATE. NIRAPARA PATRA',
  mother_contact_number = NULL,
  mother_email = NULL,
  mother_profession = NULL,
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1028';

-- GNM 2nd YEAR STUDENT DETAILS_2024-2027 updated (33 students)

-- Student 1029: Subhankar 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Ray',
  registration_no = '20240124961',
  date_of_birth = '2007-03-06',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Male'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Bengali'),
  student_aadhaar_no = NULL,
  contact_no = '7326888164',
  email = 'raysubhankar607@gmail.com',
  father_name = 'Debasish Ray',
  father_contact_number = '7735127003',
  father_profession = 'Farmer',
  father_email = 'ray7326888164@gmail.com',
  father_aadhaar_no = NULL,
  mother_name = 'Manjula Ray',
  mother_contact_number = '7682830177',
  mother_email = 'subhankar652007@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1029';

-- Student 1030: Shaswot 
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Kumar',
  last_name = 'Biswal',
  registration_no = '20240119708',
  date_of_birth = '2007-01-14',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Male'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '6370901476',
  email = 'biswalshaswot@gmail.com',
  father_name = 'Rajendra Biswal',
  father_contact_number = '9348088290',
  father_profession = 'Business',
  father_email = 'rajendrabiswal72@gmail.com',
  father_aadhaar_no = NULL,
  mother_name = 'Minakshi Biswal',
  mother_contact_number = '7077003322',
  mother_email = 'rajendrabiswal72@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1030';

-- Student 1031: Sumitra 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Behera',
  registration_no = '20240125001',
  date_of_birth = '2006-04-11',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '950750763755',
  contact_no = '7978904628',
  email = 'sumitrabehera80486@gmail.com',
  father_name = 'Bulu Behera',
  father_contact_number = '9178993685',
  father_profession = 'Business',
  father_email = 'Sb8379030@gmail.com',
  father_aadhaar_no = '516264743032',
  mother_name = 'Tilottama Behera',
  mother_contact_number = '9692950914',
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = '965265337107',
  updated_at = NOW()
WHERE admission_no = '1031';

-- Student 1032: Prasant 
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Kumar',
  last_name = 'Pradhan',
  registration_no = '20240119770',
  date_of_birth = '2007-08-02',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Male'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '253704123025',
  contact_no = '6371101120',
  email = 'kuprasant08@gmail.com',
  father_name = 'Purna Chandra Pradhan',
  father_contact_number = '7683839475',
  father_profession = 'Business',
  father_email = 'purnach.pradhan83@gmail.com',
  father_aadhaar_no = '373671318656',
  mother_name = 'Sarojini Pradhan',
  mother_contact_number = '6372401887',
  mother_email = 'purnach.pradhan83@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '257843918799',
  updated_at = NOW()
WHERE admission_no = '1032';

-- Student 1033: Monalisa 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Sahoo',
  registration_no = '20240118980',
  date_of_birth = '2005-05-26',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '715162915373',
  contact_no = '7855934521',
  email = 'smileymona425@gmail.com',
  father_name = 'Budhadev sahoo',
  father_contact_number = '7788088547',
  father_profession = 'Private Job',
  father_email = 'smileymona425@gmail.com',
  father_aadhaar_no = '835103361975',
  mother_name = 'Netramani sahoo',
  mother_contact_number = '9937868278',
  mother_email = 'smileymona425@gmail.com',
  mother_profession = 'Business',
  mother_aadhaar_no = '594363492589',
  updated_at = NOW()
WHERE admission_no = '1033';

-- Student 1034: Debasmita
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Parida',
  registration_no = '20240120438',
  date_of_birth = '2007-05-05',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '594583006470',
  contact_no = '7894177955',
  email = 'paridadebasmita14@gmail.com',
  father_name = 'AJAY PARIDA',
  father_contact_number = '7894055623',
  father_profession = 'Farmer',
  father_email = 'ajayaparida728@gmail.com',
  father_aadhaar_no = '729020931454',
  mother_name = 'BISMITA PARIDA',
  mother_contact_number = '7894262788',
  mother_email = 'bismitaparida9@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '753843094867',
  updated_at = NOW()
WHERE admission_no = '1034';

-- Student 1035: Krishna
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Prusty',
  registration_no = '20240117451',
  date_of_birth = '2007-01-30',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '893528544384',
  contact_no = '9178944689',
  email = 'krishnaprusty36@gmail.com',
  father_name = 'Pramod Kumar Prusty',
  father_contact_number = '9938982803',
  father_profession = 'Business',
  father_email = 'pramodprusty12@gmail.com',
  father_aadhaar_no = '966308124902',
  mother_name = 'Minakshi Prusty',
  mother_contact_number = '7735728069',
  mother_email = 'krishnaprusty36@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '300014158267',
  updated_at = NOW()
WHERE admission_no = '1035';

-- Student 1036: Monalisa 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Sahoo',
  registration_no = '20240118980',
  date_of_birth = '2005-05-26',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '715162915373',
  contact_no = '7855934521',
  email = 'smileymona425@gmail.com',
  father_name = 'Budhadev sahoo',
  father_contact_number = '7788088547',
  father_profession = 'Job',
  father_email = 'smileymona425@gmail.com',
  father_aadhaar_no = '835103361975',
  mother_name = 'Netramani sahoo',
  mother_contact_number = '9937868278',
  mother_email = 'smileymona425@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '594363492589',
  updated_at = NOW()
WHERE admission_no = '1036';

-- Student 1037: Pratikshya 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Swain',
  registration_no = '20240128247',
  date_of_birth = '2007-03-15',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '805147214828',
  contact_no = '7205558308',
  email = 'pratikshyaswain007@gmail.com',
  father_name = 'Purna Chandra Swain',
  father_contact_number = '9937205119',
  father_profession = 'Business',
  father_email = NULL,
  father_aadhaar_no = '379968810692',
  mother_name = 'Trupti rekha Swain',
  mother_contact_number = '7205626308',
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = '434799695028',
  updated_at = NOW()
WHERE admission_no = '1037';

-- Student 1038: Rasmi Barik 
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Rasmi',
  last_name = 'Rasmi',
  registration_no = '20240119021',
  date_of_birth = '2007-08-02',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '7838850821',
  email = 'rasmib177@gmail.com',
  father_name = 'Suresh Chandra Barik',
  father_contact_number = '9777318272',
  father_profession = 'Barber',
  father_email = NULL,
  father_aadhaar_no = NULL,
  mother_name = 'Ranjita Barik',
  mother_contact_number = NULL,
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1038';

-- Student 1039: Chandini
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Bemal',
  registration_no = '20240113535',
  date_of_birth = '2005-03-04',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '693060206117',
  contact_no = '8260661431',
  email = 'Sanjitabemal@ gmail com',
  father_name = 'Bahadur Bemal',
  father_contact_number = '6371051601',
  father_profession = 'Farmer',
  father_email = 'Chandinibemal@gmail com',
  father_aadhaar_no = '587274867571',
  mother_name = 'Madhabi Bemal',
  mother_contact_number = '6371051601',
  mother_email = 'Chandinibemal@gmail com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '875877858576',
  updated_at = NOW()
WHERE admission_no = '1039';

-- Student 1040: Sudhisna
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Das',
  registration_no = '20240119833',
  date_of_birth = '2006-05-04',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '9348996620',
  email = 'sudhisnadas@gmail.coml',
  father_name = 'Purusottam Das',
  father_contact_number = '9776859266',
  father_profession = 'Mechanic',
  father_email = NULL,
  father_aadhaar_no = NULL,
  mother_name = 'Gitarani Das',
  mother_contact_number = '9937181397',
  mother_email = 'sudhisnadas@gmail.coml',
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1040';

-- Student 1041: Jyotirmayee behera 
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Jyoti',
  last_name = 'Behera',
  registration_no = '20240132393',
  date_of_birth = '2004-02-02',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '710791848795',
  contact_no = '8093065336',
  email = 'jotibehera15@gmail.com',
  father_name = 'Rashmi ranjan bhoi',
  father_contact_number = '7684931360',
  father_profession = 'Farmer',
  father_email = 'Sipukumar705@gmail.com',
  father_aadhaar_no = '355411443020',
  mother_name = 'Rashmita manjari bhoi',
  mother_contact_number = '7684931360',
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = '656005412489',
  updated_at = NOW()
WHERE admission_no = '1041';

-- Student 1042: Manorama 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Nayak',
  registration_no = '20240129951',
  date_of_birth = '2004-11-01',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '873817062486',
  contact_no = '7854845856',
  email = 'monaramanayak213@gmail.com',
  father_name = 'Upendra nath Nayak',
  father_contact_number = '9178124629',
  father_profession = 'Business',
  father_email = 'Upendra nath Nayak @gmail.com',
  father_aadhaar_no = '707731375396',
  mother_name = 'Golapa Nayak',
  mother_contact_number = '7978468261',
  mother_email = 'Manoramanayak231@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '907462479317',
  updated_at = NOW()
WHERE admission_no = '1042';

-- Student 1043: Rimilin
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Bag',
  registration_no = '20240119734',
  date_of_birth = '2005-10-20',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Chirstian'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '605409533988',
  contact_no = '9348686020',
  email = 'rimilinb@gmail.com',
  father_name = 'Binod Bag',
  father_contact_number = '7846903896',
  father_profession = 'Farmer',
  father_email = NULL,
  father_aadhaar_no = '828861111023',
  mother_name = 'Satyabati Bag',
  mother_contact_number = '8456916975',
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = '278825830456',
  updated_at = NOW()
WHERE admission_no = '1043';

-- Student 1044: Shradhamayee 
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Pramod',
  last_name = 'Samal',
  registration_no = '20240120383',
  date_of_birth = '1995-05-30',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '214350242132',
  contact_no = '7008909274',
  email = 'Shradhamayeesamal.cf@gmail.com',
  father_name = 'Pramod samal',
  father_contact_number = '8457934274',
  father_profession = 'Labour',
  father_email = 'abhiseksamal977@gmail.com',
  father_aadhaar_no = '343807618637',
  mother_name = 'Sabitri samal',
  mother_contact_number = '8457934274',
  mother_email = 'abhiseksamal977@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '593488657705',
  updated_at = NOW()
WHERE admission_no = '1044';

-- Student 1045: Hrisita
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Parida',
  registration_no = '20240117467',
  date_of_birth = '2003-04-14',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '720087304196',
  contact_no = '7205304998',
  email = 'hrisitaparida@gmail.com',
  father_name = 'AKSHAYA KUMAR PARIDAA',
  father_contact_number = '9938979290',
  father_profession = 'Teacher',
  father_email = 'akshayakumarparida553@gmail.com',
  father_aadhaar_no = '826878739141',
  mother_name = 'MAMATA PARIDA',
  mother_contact_number = '9556046296',
  mother_email = 'sitalmadhusmitaparida@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '529250299928',
  updated_at = NOW()
WHERE admission_no = '1045';

-- Student 1046: Parbati
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Majhi',
  registration_no = '20240120347',
  date_of_birth = '1999-05-03',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '223666378604',
  contact_no = '9861662047',
  email = 'parbatim625@gmail.com',
  father_name = 'Dugu majhi',
  father_contact_number = '9668034665',
  father_profession = 'Farmer',
  father_email = NULL,
  father_aadhaar_no = '723468085883',
  mother_name = 'Namita majhi',
  mother_contact_number = '9861212404',
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = '600166458015',
  updated_at = NOW()
WHERE admission_no = '1046';

-- Student 1047: Madhusmita 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Pradhan',
  registration_no = '20240118997',
  date_of_birth = '2007-03-14',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SEBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '8457823372',
  email = 'madhusmitapradhan140307@gmail.com',
  father_name = 'Makar Pradhan',
  father_contact_number = '9178883372',
  father_profession = 'Farmer',
  father_email = 'makarapradhan501@gmail.com',
  father_aadhaar_no = NULL,
  mother_name = 'Sujata pradhan',
  mother_contact_number = '7205643372',
  mother_email = 'madhusmitapradhan140307@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1047';

-- Student 1048: Prativa
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Hasda',
  registration_no = '20240116557',
  date_of_birth = '2000-04-04',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '7609858504',
  email = 'Prativahasdaprativa@gmal.com',
  father_name = 'Nuas Hasda',
  father_contact_number = NULL,
  father_profession = NULL,
  father_email = NULL,
  father_aadhaar_no = NULL,
  mother_name = 'Sushma Hasda',
  mother_contact_number = '8895430134',
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1048';

-- Student 1049: Purnima
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Pradhan',
  registration_no = '20240119700',
  date_of_birth = '2006-08-08',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '8144216619',
  email = 'purnima12899@gmail.com',
  father_name = 'Pradeep kumar pradhan',
  father_contact_number = '7735582319',
  father_profession = 'Sweeper',
  father_email = 'purnima12899@gmail.com',
  father_aadhaar_no = NULL,
  mother_name = 'Mamata pradhan',
  mother_contact_number = '7735582319',
  mother_email = 'purnima12899@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1049';

-- Student 1050: Naime
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Hasda',
  registration_no = '20240116544',
  date_of_birth = '2002-11-30',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '7848905825',
  email = 'iiamnaimehasda@gmail.com',
  father_name = 'Habil Hasda',
  father_contact_number = '8114306759',
  father_profession = 'Farmer',
  father_email = NULL,
  father_aadhaar_no = NULL,
  mother_name = 'Muliyani Hasda',
  mother_contact_number = '7848905825',
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1050';

-- Student 1051: Subhashree
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Shree',
  last_name = 'Mallick',
  registration_no = '20240131094',
  date_of_birth = '2005-03-13',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '301062646475',
  contact_no = '7978226074',
  email = 'shreesubha18416@gmail.com',
  father_name = 'SIBAPRASADA MALLICK',
  father_contact_number = '8249876318',
  father_profession = 'Farmer',
  father_email = NULL,
  father_aadhaar_no = '669339299950',
  mother_name = 'SUMATI DAS',
  mother_contact_number = '9692769877',
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = '849821400477',
  updated_at = NOW()
WHERE admission_no = '1051';

-- Student 1052: Shusree
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Nirlipta',
  last_name = 'Sethi',
  registration_no = '20240128612',
  date_of_birth = '2002-12-31',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '509954061268',
  contact_no = '7815046626',
  email = 'sushreenirlipta449@gmail.com',
  father_name = 'Rabindranath sethi',
  father_contact_number = '9853895184',
  father_profession = 'Private Job',
  father_email = 'rabindranathsethi4@gmail.com',
  father_aadhaar_no = '420463858431',
  mother_name = 'Sujata Lenka',
  mother_contact_number = '8144612202',
  mother_email = 'sushreenirlipta449@gmail.com',
  mother_profession = 'Private Job',
  mother_aadhaar_no = '671836969413',
  updated_at = NOW()
WHERE admission_no = '1052';

-- Student 1053: Tanmaya
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Nag',
  registration_no = '20240125243',
  date_of_birth = '2005-07-16',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Male'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '486396670938',
  contact_no = '8260789084',
  email = 'nagtanmaya13@gmail.com',
  father_name = 'Amin Nag',
  father_contact_number = '8114947292',
  father_profession = 'Farmer',
  father_email = 'nagtanmaya13@gmail.com',
  father_aadhaar_no = '633909823576',
  mother_name = 'Samira Nag',
  mother_contact_number = '8260877741',
  mother_email = 'nagtanmaya13@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '833265287703',
  updated_at = NOW()
WHERE admission_no = '1053';

-- Student 1054: Gyana
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Ranjan',
  last_name = 'Mallick',
  registration_no = '20240125187',
  date_of_birth = '2001-04-26',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Male'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '555587516573',
  contact_no = '9337270050',
  email = 'Gyanaranjanmallick380@gmail.com',
  father_name = 'ANTARYAMI MALLICK',
  father_contact_number = NULL,
  father_profession = 'Agriculture',
  father_email = 'Gyanaranjanmallick380@gmail.com',
  father_aadhaar_no = '664688428347',
  mother_name = 'INDIAN MALLICK',
  mother_contact_number = '8260797796',
  mother_email = 'Gyanaranjanmallick380@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '856586071623',
  updated_at = NOW()
WHERE admission_no = '1054';

-- Student 1055: Jusabo 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Gomango',
  registration_no = '20240120683',
  date_of_birth = '1997-10-17',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Male'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Christian'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '9677117049',
  email = 'Jusabog@gmail.com',
  father_name = 'Natnial',
  father_contact_number = '9439805132',
  father_profession = 'Farmer',
  father_email = NULL,
  father_aadhaar_no = NULL,
  mother_name = 'Kabeni gomango',
  mother_contact_number = '8763829925',
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1055';

-- Student 1056: Prakash 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Mishra',
  registration_no = '20240124975',
  date_of_birth = '2006-11-15',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Male'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '714459024112',
  contact_no = '9348809798',
  email = 'panditprakashmishra406@gmail.com',
  father_name = 'Sushant mishra',
  father_contact_number = '6370668953',
  father_profession = 'Farmer',
  father_email = 'Sushanta2k16,@gmail.com',
  father_aadhaar_no = '365224131366',
  mother_name = 'Rashmibala mishra',
  mother_contact_number = '9040101170',
  mother_email = 'panditprakashmishra406@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '946884889910',
  updated_at = NOW()
WHERE admission_no = '1056';

-- Student 1057: Pankajini
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Behera',
  registration_no = '20240121063',
  date_of_birth = '1991-01-18',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'SC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '7735453075',
  email = NULL,
  father_name = 'Rama Chandra Behera',
  father_contact_number = '8093740677',
  father_profession = 'Farmer',
  father_email = NULL,
  father_aadhaar_no = NULL,
  mother_name = 'Manjulata Behera',
  mother_contact_number = NULL,
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1057';

-- Student 1058: Puja
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Nayak',
  registration_no = '20240132102',
  date_of_birth = '2001-02-21',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'ST'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '8456063242',
  email = 'pujanayak56781@gmail.com',
  father_name = 'Dasharathi Nayak',
  father_contact_number = '9777912650',
  father_profession = 'Farmer',
  father_email = NULL,
  father_aadhaar_no = NULL,
  mother_name = 'Pravati Nayak',
  mother_contact_number = NULL,
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1058';

-- Student 1059: Pratikshya 
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Panda',
  registration_no = '20240125087',
  date_of_birth = '2006-01-09',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '583128174362',
  contact_no = '7205275677',
  email = 'pratikshyapanda861@gmail.com',
  father_name = 'ANIRUDHA PANDA',
  father_contact_number = '7606869171',
  father_profession = 'Business',
  father_email = 'jyotipanda125@gmail.com',
  father_aadhaar_no = '711749217612',
  mother_name = 'SAROJINI PANDA',
  mother_contact_number = '9776307616',
  mother_email = 'sarojinipanda335@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1059';

-- Student 1060: Satarupa
UPDATE "Acadix_studentregistration"
SET
  middle_name = NULL,
  last_name = 'Nayak',
  registration_no = '20240125168',
  date_of_birth = '2007-03-19',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Female'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'OBC'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = NULL,
  contact_no = '9337934007',
  email = NULL,
  father_name = 'Nityananda Nayak',
  father_contact_number = NULL,
  father_profession = 'Business',
  father_email = NULL,
  father_aadhaar_no = NULL,
  mother_name = 'Rina Nayak',
  mother_contact_number = NULL,
  mother_email = NULL,
  mother_profession = 'Housewife',
  mother_aadhaar_no = NULL,
  updated_at = NOW()
WHERE admission_no = '1060';

-- Student 1061: Sumit 
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Kumar',
  last_name = 'Biswal',
  registration_no = '20240124249',
  date_of_birth = '2006-03-15',
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'Male'),
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_code = 'Hindu'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_code = 'GENERAL'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_code = 'Odia'),
  student_aadhaar_no = '725182290229',
  contact_no = '7205718868',
  email = 'sumitbiswal057@gmail.com',
  father_name = 'Subhad Biswal',
  father_contact_number = '9938678868',
  father_profession = 'Business',
  father_email = NULL,
  father_aadhaar_no = NULL,
  mother_name = 'Padmini Biswal',
  mother_contact_number = '8658045558',
  mother_email = 'pbiswal6940@gmail.com',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '560215516829',
  updated_at = NOW()
WHERE admission_no = '1061';

COMMIT;

-- Verification: Check updated fields
SELECT admission_no, first_name, middle_name, last_name, email, father_name, mother_name
FROM "Acadix_studentregistration"
WHERE admission_no BETWEEN '1001' AND '1061'
ORDER BY admission_no::int
LIMIT 5;
