-- UPDATE BSC 3RD YEAR (2023-2027) - Fill ALL missing data from Excel

BEGIN;

-- Student 1088: Laxmipriya
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Mahapatra',
  registration_no = '23BN371012',
  date_of_birth = '2005-12-07',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8260958631',
  email = 'laxmipriyamahapatra522@gmail.com',
  student_aadhaar_no = '263045201726',
  father_name = 'Prasanta kumar Mahapatra',
  father_profession = 'Business',
  father_contact_number = '7978594188',
  mother_name = 'Sukanti Mahapatra',
  mother_profession = 'Housewife',
  mother_contact_number = '9692259778',
  updated_at = NOW()
WHERE admission_no = '1088';

-- Student 1089: Pratyasha
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Mohapatra',
  registration_no = '23BN371018',
  date_of_birth = '2006-11-21',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7205902957',
  email = 'mohapatrapratyasha198@gmail.com',
  student_aadhaar_no = '610281885566',
  father_name = 'Pradyumna ku. Mohapatra',
  father_profession = 'Govt. job',
  father_contact_number = '9692850017',
  father_email = 'Mohapatrapradyumna66',
  father_aadhaar_no = '495831006661',
  mother_name = 'Ritanjali Mohapatra',
  mother_profession = 'Housewife',
  mother_contact_number = '8763594458',
  mother_email = 'mohapatrapratyasha198@gmail.com',
  mother_aadhaar_no = '668600024491',
  updated_at = NOW()
WHERE admission_no = '1089';

-- Student 1090: Payal
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Priyadarshini',
  last_name = 'Jena',
  registration_no = '23BN371045',
  date_of_birth = '2006-02-05',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SEBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9827269998',
  email = 'payalkhusi7@gmail.com',
  student_aadhaar_no = '755043727139',
  father_name = 'Bibhu Prasad Jena',
  father_profession = 'Farmer',
  father_contact_number = '6372754221',
  father_email = 'ayushjena175@gmail.com',
  father_aadhaar_no = '291324335832',
  mother_name = 'Sumati Jena',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '684028471323',
  updated_at = NOW()
WHERE admission_no = '1090';

-- Student 1091: Hitesh
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Kumar',
  last_name = 'Gond',
  registration_no = '23BN371043',
  date_of_birth = '2004-08-25',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'ST'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8093119131',
  email = 'hiteshkugond@gmail.com',
  student_aadhaar_no = '993695346295',
  father_name = 'Gobinda Gond',
  father_profession = 'Farmer',
  father_contact_number = '9777793174',
  father_email = 'hiteshkugond@gmail.com',
  father_aadhaar_no = '479735876001',
  updated_at = NOW()
WHERE admission_no = '1091';

-- Student 1092: Biswoprakash
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Lenka',
  registration_no = '23BN371006',
  date_of_birth = '2005-09-17',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7846983429',
  email = 'biswoprakashlenka2005@gmail.com',
  student_aadhaar_no = '671815622071',
  father_name = 'Pravat kumar Lenka',
  father_profession = 'Farmer',
  father_contact_number = '9853684229',
  father_email = 'pravatlenka2551974@gmail.com',
  father_aadhaar_no = '659306550333',
  updated_at = NOW()
WHERE admission_no = '1092';

-- Student 1093: Devidatta
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sarangi',
  registration_no = '23BN371042',
  date_of_birth = '2006-02-22',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8984268027',
  email = 'sarangidevidatta@gmail.com',
  student_aadhaar_no = '879262390515',
  father_name = 'Somanath Sarangi',
  mother_name = 'Pravatnalini Sarangi',
  mother_profession = 'Housewife',
  mother_contact_number = '9556906353',
  mother_email = 'sarangidevidatta@gmail.com',
  mother_aadhaar_no = '529392767118',
  updated_at = NOW()
WHERE admission_no = '1093';

-- Student 1094: Kuldip
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Gond',
  registration_no = '23BN371044',
  date_of_birth = '2005-10-15',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'ST'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8658355487',
  email = 'kuldipkunjam887@gmail.com',
  student_aadhaar_no = '300179956947',
  father_name = 'Manasa Ram Gond',
  father_profession = 'Teacher',
  father_contact_number = '9178520983',
  father_email = 'Manasaramgond@gmail.com',
  father_aadhaar_no = '638661192982',
  mother_name = 'Rina Gond',
  mother_profession = 'Housewife',
  mother_email = 'rinabaigond@gmail.com',
  mother_aadhaar_no = '863448142865',
  updated_at = NOW()
WHERE admission_no = '1094';

-- Student 1095: Akankshya
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Rath',
  registration_no = '23BN371002',
  date_of_birth = '2005-07-12',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A -'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8260180050',
  email = 'akankshyarath1@gmail.com',
  student_aadhaar_no = '720847757635',
  father_name = 'Amiya Kumar Rath',
  father_profession = 'Business',
  father_contact_number = '9437226579',
  father_email = 'amiyarath6160@gmail.com',
  father_aadhaar_no = '707806774670',
  mother_name = 'Sabita Rath',
  mother_profession = 'Housewife',
  mother_contact_number = '6370796697',
  mother_email = 'rathsabita76@gmail.com',
  mother_aadhaar_no = '850447622103',
  updated_at = NOW()
WHERE admission_no = '1095';

-- Student 1096: Priti
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Pragyan',
  last_name = 'Mohapatra',
  registration_no = '23BN371019',
  date_of_birth = '2005-11-20',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7325906150',
  email = 'pritipragyan2050@gmail.com',
  student_aadhaar_no = '336061878896',
  father_name = 'Nikunja Mohapatra',
  father_profession = 'Business',
  father_contact_number = '9938038871',
  father_email = 'nikunjamohapatra04@gmail.com',
  father_aadhaar_no = '306140679036',
  mother_name = 'Urmila Mohapatra',
  mother_profession = 'Housewife',
  mother_contact_number = '7205276512',
  mother_email = 'nikunjamohapatra04@gmail.com',
  mother_aadhaar_no = '464937213297',
  updated_at = NOW()
WHERE admission_no = '1096';

-- Student 1097: Lipsa
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Rani',
  last_name = 'Sahoo',
  registration_no = '23BN371013',
  date_of_birth = '2005-09-05',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7978390722',
  email = 'lipsaranisahoo40@gmail.com',
  student_aadhaar_no = '461027949369',
  father_name = 'Dhirendra Kumar Sahoo',
  father_profession = 'Business',
  father_contact_number = '7381860745',
  father_email = 'dhirendrakumars888@gmail.com',
  father_aadhaar_no = '321206202111',
  mother_name = 'Asanti Sahoo',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '553022558583',
  updated_at = NOW()
WHERE admission_no = '1097';

-- Student 1098: Sasmita
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Behera',
  registration_no = '23BN371026',
  date_of_birth = '2005-06-16',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9777616508',
  email = 'sb8038788@gmail.com',
  student_aadhaar_no = '704636743912',
  father_name = 'Sovan Behera',
  father_profession = 'Business',
  father_contact_number = '8018103993',
  father_email = 'sovanbehera993@gmail.com',
  father_aadhaar_no = '682294302426',
  mother_name = 'Amita Behera',
  mother_profession = 'Housewife',
  mother_contact_number = '7894687785',
  mother_email = 'sasmitabehera45815@gmail.com',
  mother_aadhaar_no = '233364289213',
  updated_at = NOW()
WHERE admission_no = '1098';

-- Student 1099: Suchitra
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Behera',
  registration_no = '23BN371036',
  date_of_birth = '2005-02-27',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7327099301',
  email = 'Suchitra556677@gmail.com',
  student_aadhaar_no = '282770058819',
  father_name = 'Santosh kumar Behera',
  father_profession = 'Business',
  father_contact_number = '9861641633',
  father_email = 'Santoshkuna@gmail.com',
  father_aadhaar_no = '775078577976',
  mother_name = 'Pratima Manjari Behera',
  mother_profession = 'Housewife',
  mother_contact_number = '8249709992',
  mother_email = 'Prateemabehera592@gmail.com',
  mother_aadhaar_no = '262775018882',
  updated_at = NOW()
WHERE admission_no = '1099';

-- Student 1100: MD
UPDATE "Acadix_studentregistration"
SET
  last_name = 'TARIQUE',
  registration_no = '23BN371014',
  date_of_birth = '2005-03-15',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Muslim'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7853874970',
  email = 'mdtarique75679@gmail.com',
  student_aadhaar_no = '609887511805',
  father_name = 'Sk Siddique',
  father_profession = 'Service',
  father_contact_number = '6370758704',
  father_email = 'Sksiddique1972@gmail.com',
  father_aadhaar_no = '210188806439',
  mother_name = 'Nasima Khatun',
  mother_profession = 'Housewife',
  mother_contact_number = '7853874970',
  mother_email = 'Masimakhatun1222@gamil.com',
  mother_aadhaar_no = '568276096119',
  updated_at = NOW()
WHERE admission_no = '1100';

-- Student 1101: Priyanka
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Dash',
  registration_no = '23BN371020',
  date_of_birth = '2004-06-05',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7205706133',
  email = 'dashpri5590@gmail.com',
  student_aadhaar_no = '500826996384',
  father_name = 'Bibhuti Bushan Dash',
  father_profession = 'Service',
  father_contact_number = '9777466133',
  father_email = 'bibhutibushandash@gmail.com',
  father_aadhaar_no = '541708947707',
  mother_name = 'Chandrama Dash',
  mother_profession = 'Housewife',
  mother_contact_number = '7327932799',
  mother_email = 'chandramasash892@gmail.com',
  mother_aadhaar_no = '652008362221',
  updated_at = NOW()
WHERE admission_no = '1101';

-- Student 1102: Swarnalata
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Das',
  registration_no = '23BN371039',
  date_of_birth = '2005-08-15',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9040811176',
  email = 'dswarnalata689@gmail.com',
  student_aadhaar_no = '227842644932',
  father_name = 'Kartik Chandra Das',
  father_profession = 'Farmer',
  father_contact_number = '9776617303',
  father_email = 'dswarnalata689@gmail.com',
  father_aadhaar_no = '951287619538',
  mother_name = 'Puspalata Das',
  mother_profession = 'Housewife',
  mother_contact_number = '6372011915',
  mother_email = 'dswarnalata689@gmail.com',
  mother_aadhaar_no = '553171169921',
  updated_at = NOW()
WHERE admission_no = '1102';

-- Student 1103: Jasobanti
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Toppo',
  registration_no = '23BN371009',
  date_of_birth = '2000-03-22',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'ST'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9078774522',
  email = 'jasobantitoppo272@gmail.com',
  student_aadhaar_no = '658913295989',
  father_name = 'Tirtha Toppo',
  father_profession = 'Farmer',
  father_contact_number = '6372095484',
  father_email = 'trithatoppo5@gmail.com',
  father_aadhaar_no = '985673284428',
  mother_name = 'Sabitri Toppo',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '899068293393',
  updated_at = NOW()
WHERE admission_no = '1103';

-- Student 1104: Diptirekha
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sahoo',
  registration_no = '23BN371007',
  date_of_birth = '2006-04-05',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9937242370',
  email = 'sahoodiptirekha2006@gmail.com',
  student_aadhaar_no = '518524865754',
  father_name = 'Prabhat Kumar Sahoo',
  father_profession = 'Service',
  father_contact_number = '9776459388',
  father_email = 'www.pravatsahoo123@gmail.com',
  father_aadhaar_no = '630667382854',
  mother_name = 'Kamala Kumari Sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '7894610067',
  mother_aadhaar_no = '715150667000',
  updated_at = NOW()
WHERE admission_no = '1104';

-- Student 1105: Smrutipriya
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Baliarsingh',
  registration_no = '23BN371030',
  date_of_birth = '2005-06-25',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7978839139',
  email = 'baliarsinghsmrutipriya@gmail.com',
  student_aadhaar_no = '391577435785',
  father_name = 'Ghanashyam Baliarsingh',
  father_profession = 'Farmer',
  father_contact_number = '9668622668',
  father_email = 'ghanashamabaliarsingh@gmail.com',
  father_aadhaar_no = '447379425680',
  mother_name = 'Samita Baliarsingh',
  mother_profession = 'Housewife',
  mother_contact_number = '9556202803',
  mother_email = 'ghanashamabaliarsingh@gmail.com',
  mother_aadhaar_no = '765138150062',
  updated_at = NOW()
WHERE admission_no = '1105';

-- Student 1106: Rajashree
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Mallick',
  registration_no = '23BN371022',
  date_of_birth = '2005-09-26',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8984124779',
  email = 'r2400071@gmail.com',
  student_aadhaar_no = '897392050845',
  father_name = 'Suresh Mallick',
  father_profession = 'Business',
  father_contact_number = '8144588614',
  father_email = 'Sm8064777@gmail.com',
  father_aadhaar_no = '908579675289',
  mother_name = 'Kabita Mallick',
  mother_profession = 'Housewife',
  mother_contact_number = '9556724779',
  mother_email = 'bm2243439@gmail.com',
  mother_aadhaar_no = '944593970478',
  updated_at = NOW()
WHERE admission_no = '1106';

-- Student 1107: Sneha
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Kantha',
  registration_no = '23BN371032',
  date_of_birth = '2004-12-30',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Hindi'),
  contact_no = '9937715336',
  email = 'snehakantha60@gmail.com',
  student_aadhaar_no = '651938880498',
  father_name = 'Sarat Kantha',
  father_profession = 'Business',
  father_contact_number = '9583567430',
  father_email = 'snehakantha60@gmail.com',
  father_aadhaar_no = '511699790028',
  mother_name = 'Sabita Kantha',
  mother_profession = 'Housewife',
  mother_contact_number = '9861799046',
  mother_email = 'sabitakantha49@gmail.com',
  mother_aadhaar_no = '721151485488',
  updated_at = NOW()
WHERE admission_no = '1107';

-- Student 1108: Sneha
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Bishoyi',
  registration_no = '23BN371031',
  date_of_birth = '2003-04-01',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Christian'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SEBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8280964903',
  email = 'bishoyisneha322@gmail,com',
  student_aadhaar_no = '784268963115',
  father_name = 'Banchhnidhi Bishoyi',
  father_profession = 'Business',
  father_contact_number = '9337643173',
  father_email = 'bishoyifeeroj@gmail.com',
  father_aadhaar_no = '248682496955',
  mother_name = 'Mira Bishoyi',
  mother_profession = 'Housewife',
  mother_aadhaar_no = '896691768265',
  updated_at = NOW()
WHERE admission_no = '1108';

-- Student 1109: Priyanka
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sahoo',
  registration_no = '23BN371021',
  date_of_birth = '2005-03-18',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8093113424',
  email = 'priyankasahoo8935@gmail.com',
  student_aadhaar_no = '519406801224',
  father_name = 'Pratap Kishore Sahoo',
  father_profession = 'Business',
  father_contact_number = '9938397344',
  father_email = 'Pratapkishoresahoo5@gmail.com',
  father_aadhaar_no = '840712365922',
  mother_name = 'Pinki Sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '7752012714',
  mother_email = 'sukantipinki85@gmail.com',
  mother_aadhaar_no = '898555546795',
  updated_at = NOW()
WHERE admission_no = '1109';

-- Student 1110: Sanjeevani
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Swain',
  registration_no = '23BN371024',
  date_of_birth = '2006-02-25',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9861413444',
  email = 'swainsanjeevani856@gmail.com',
  student_aadhaar_no = '515827692810',
  father_name = 'Manoj Kumar Swain',
  father_profession = 'Private job',
  father_contact_number = '8637210782',
  father_email = 'swainmanoj63@gmail.com',
  father_aadhaar_no = '314043879933',
  mother_name = 'Nibedita Swain',
  mother_contact_number = '9337475578',
  mother_email = 'Swainnibedita63@gmail.com',
  mother_aadhaar_no = '597494966115',
  updated_at = NOW()
WHERE admission_no = '1110';

-- Student 1111: Subhalipsa
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sethi',
  registration_no = '23BN371034',
  date_of_birth = '2006-02-13',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8456952305',
  email = 'sethisubhalipsha@gmail.com',
  student_aadhaar_no = '903545069600',
  father_name = 'Sanjay Kumar Sethi',
  father_profession = 'Farmer',
  father_contact_number = '9668578441',
  father_email = 'sanjaysethy12v@gmail.com',
  father_aadhaar_no = '612468514950',
  mother_name = 'Sasmita Sethi',
  mother_profession = 'Housewife',
  mother_contact_number = '9668578441',
  mother_email = 'sanjaysethy12v@gmil.com',
  mother_aadhaar_no = '694769489115',
  updated_at = NOW()
WHERE admission_no = '1111';

-- Student 1112: Ritika
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Kanhar',
  registration_no = '23BN371023',
  date_of_birth = '2006-01-15',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Christian'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7326005742',
  email = 'ritikakanhar769@gmail.com',
  student_aadhaar_no = '532360070375',
  father_name = 'Dillip Kumar Kanhar',
  father_profession = 'Security',
  father_contact_number = '9439240435',
  father_email = 'ritikakanhar769@gmail.com',
  father_aadhaar_no = '443181684470',
  mother_name = 'Kalpana Kanhar',
  mother_profession = 'Housewife',
  mother_contact_number = '7657018149',
  mother_email = 'kalpanakanhar12@gmail.com',
  mother_aadhaar_no = '255478160858',
  updated_at = NOW()
WHERE admission_no = '1112';

-- Student 1113: Jyotirmayee
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Parida',
  registration_no = '23BN371010',
  date_of_birth = '2006-01-07',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SEBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8114341589',
  email = 'jyotinmayeeparida@gmail.com',
  student_aadhaar_no = '320337572287',
  father_name = 'Jagannath Parida',
  father_profession = 'Private job',
  father_contact_number = '6370588830',
  father_aadhaar_no = '229318384859',
  mother_name = 'Laxmi Priya Parida',
  mother_profession = 'Housewife',
  mother_contact_number = '8260592662',
  mother_aadhaar_no = '391060748366',
  updated_at = NOW()
WHERE admission_no = '1113';

-- Student 1114: Sebati
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Minz',
  registration_no = '23BN371027',
  date_of_birth = '2002-11-14',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Christian'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'ST'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8093971784',
  email = 'minzsiba3@gmail.com',
  student_aadhaar_no = '884273515439',
  father_name = 'Rajesh Minz',
  father_profession = 'Farmer',
  father_contact_number = '7750983931',
  father_email = 'minzsiba3@gmail.com',
  father_aadhaar_no = '962969326808',
  mother_name = 'Tarini Minz',
  mother_profession = 'Housewife',
  mother_email = 'minzsiba3@gmail.com',
  mother_aadhaar_no = '243685825473',
  updated_at = NOW()
WHERE admission_no = '1114';

-- Student 1115: Pragati
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Dash',
  registration_no = '23BN371016',
  date_of_birth = '2005-10-02',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB -'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '6372442971',
  email = 'pragatidash254@gmail.com',
  student_aadhaar_no = '235706242471',
  father_name = 'Prabhat Kumar Dash',
  father_profession = 'Farmer',
  father_contact_number = '9090311430',
  father_email = 'dashp425@gmail.com',
  father_aadhaar_no = '923689366268',
  mother_name = 'Gitanjali Dash',
  mother_profession = 'Housewife',
  mother_contact_number = '9777250859',
  mother_email = 'gd2860753@gmail.com',
  mother_aadhaar_no = '298115060416',
  updated_at = NOW()
WHERE admission_no = '1115';

-- Student 1116: Saraswati
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Panda',
  registration_no = '23BN371025',
  date_of_birth = '2005-08-25',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9827065834',
  email = 'saraswatpanda703@gmail.com',
  student_aadhaar_no = '893539004348',
  father_name = 'Nilamani Panda',
  father_profession = 'Business',
  father_contact_number = '9938523477',
  father_aadhaar_no = '567915415540',
  mother_name = 'Minati Panda',
  mother_profession = 'Housewife',
  mother_contact_number = '9937946395',
  mother_aadhaar_no = '659029027291',
  updated_at = NOW()
WHERE admission_no = '1116';

-- Student 1117: Sidheswar
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Naik',
  registration_no = '23BN371029',
  date_of_birth = '2004-03-05',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8260620775',
  email = 'sidheswarnaik06@gmail.com',
  student_aadhaar_no = '479956946080',
  father_name = 'Khageswar Naik',
  father_profession = 'Farmer',
  father_contact_number = '9692303735',
  father_email = 'sidheswarnaik06@gmail.com',
  father_aadhaar_no = '430659805085',
  mother_name = 'Debaki Naik',
  mother_profession = 'Housewife',
  mother_contact_number = '9692303735',
  mother_email = 'sidheswarnaik06@gmail.com',
  mother_aadhaar_no = '240756695231',
  updated_at = NOW()
WHERE admission_no = '1117';

-- Student 1118: Samikshya
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sahoo',
  registration_no = '23BN371047',
  date_of_birth = '2006-07-21',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7655900499',
  email = 'samikshyasahoo656@gmail.com',
  student_aadhaar_no = '578642288293',
  father_name = 'Srikant Sahoo',
  father_profession = 'Business',
  father_contact_number = '8249599378',
  father_email = 'srikantasahoo082@gmail.com',
  father_aadhaar_no = '357221395890',
  mother_name = 'Sushila Sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '7991056590',
  mother_email = 'susilasahoo03@gmail.com',
  mother_aadhaar_no = '612982253001',
  updated_at = NOW()
WHERE admission_no = '1118';

-- Student 1119: Subhashree
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sethi',
  registration_no = '23BN371035',
  date_of_birth = '2002-01-10',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9668275736',
  email = 'subhz6247@gmail.com',
  student_aadhaar_no = '221444937704',
  father_name = 'Sangram Sethi',
  father_profession = 'Business',
  father_contact_number = '8144024512',
  father_email = 'subhz6247@gmail.com',
  father_aadhaar_no = '337417693545',
  mother_name = 'Minati Sethi',
  mother_profession = 'Housewife',
  mother_contact_number = '8917407673',
  mother_aadhaar_no = '578265395532',
  updated_at = NOW()
WHERE admission_no = '1119';

-- Student 1120: Subhasmita
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Rout',
  registration_no = '23BN371050',
  date_of_birth = '2005-07-31',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SEBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8847816225',
  email = 'subhasmitarout31072005@gmail.com',
  student_aadhaar_no = '488128820734',
  father_name = 'Amulya Rout',
  father_profession = 'Labour',
  father_contact_number = '9692166955',
  father_email = 'subhasmitarout31072005@gmail.com',
  father_aadhaar_no = '63073827066.',
  mother_name = 'Sujata Rout',
  mother_profession = 'Housewife',
  mother_contact_number = '8917242379',
  mother_email = 'ashisrout407@gmail.com',
  mother_aadhaar_no = '916298160368',
  updated_at = NOW()
WHERE admission_no = '1120';

-- Student 1121: Sushree
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Sunayana',
  last_name = 'Ojha',
  registration_no = '23BN371051',
  date_of_birth = '2006-02-20',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7894318468',
  email = 'ojhasunayana8@gmail.com',
  student_aadhaar_no = '511802811566',
  father_name = 'Sankarsan Ojha',
  father_profession = 'Farmer',
  father_contact_number = '9937585295',
  father_aadhaar_no = '924315603306',
  mother_name = 'Namita Ojha',
  mother_profession = 'Housewife',
  mother_contact_number = '9938615281',
  mother_aadhaar_no = '249006677591',
  updated_at = NOW()
WHERE admission_no = '1121';

-- Student 1122: Sonali
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Pradhan',
  registration_no = '23BN371033',
  date_of_birth = '2005-06-06',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SEBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8984323010',
  email = 'sonalipradhan062005@gmail.com',
  student_aadhaar_no = '995685394297',
  father_name = 'Kishore Chandra Pradhan',
  mother_name = 'Annapurna Behera',
  mother_profession = 'Teacher',
  mother_contact_number = '9777714707',
  mother_email = 'Arnnapurnabehera49@gmail.com',
  mother_aadhaar_no = '513693561191',
  updated_at = NOW()
WHERE admission_no = '1122';

-- Student 1123: Bimal
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Keshari',
  last_name = 'Nayak',
  registration_no = '23BN371004',
  date_of_birth = '2006-04-05',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7853910400',
  email = 'bimalkesharinayakbimal@gmail.com',
  student_aadhaar_no = '644911991762',
  father_name = 'Bikram Keshari Nayak',
  father_profession = 'Teacher',
  father_contact_number = '9668817947',
  father_email = 'bimalkesharinayakbimal@gmail.com',
  father_aadhaar_no = '924619750210',
  mother_name = 'Mamta Manjari Nayak',
  mother_profession = 'Housewife',
  mother_contact_number = '9348268573',
  mother_email = 'nayakbimal254@gmail.com',
  mother_aadhaar_no = '740100167529',
  updated_at = NOW()
WHERE admission_no = '1123';

-- Student 1124: Subhadra
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Khilar',
  registration_no = '23BN371048',
  date_of_birth = '2002-01-11',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9692004271',
  email = 'khilarsubhadra85@gmail.com',
  student_aadhaar_no = '293784534812',
  father_name = 'Gangadhar Khilar',
  father_profession = 'Farmer',
  father_contact_number = '9668443511',
  father_email = 'khilarsubhadra85@gmail.com',
  father_aadhaar_no = '354536953962',
  mother_name = 'Jayanti Khilar',
  mother_profession = 'Housewife',
  mother_contact_number = '9692004271',
  mother_email = 'khilarsubhadra85@gmail.com',
  mother_aadhaar_no = '540571708118',
  updated_at = NOW()
WHERE admission_no = '1124';

-- Student 1125: Supriya
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Pradhan',
  registration_no = '23BN371037',
  date_of_birth = '2006-02-28',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SEBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9337965079',
  email = 'pradhansupriya683@gmail.com',
  student_aadhaar_no = '923917346634',
  father_name = 'Ramesh Chandra Pradhan',
  mother_name = 'Rashmita Pradhan',
  mother_profession = 'Housewife',
  mother_contact_number = '8338838580',
  mother_aadhaar_no = '247234850760',
  updated_at = NOW()
WHERE admission_no = '1125';

-- Student 1126: Shiba
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Sankar',
  last_name = 'Barik',
  registration_no = '23BN371028',
  date_of_birth = '2006-02-26',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '6370080457',
  email = 'barikshiba01@gmail.com',
  student_aadhaar_no = '981990181758',
  father_name = 'Amarendra Barik',
  father_profession = 'Business',
  father_contact_number = '7077931862',
  father_email = 'barikshiba01@gmail.com',
  father_aadhaar_no = '549120766930',
  mother_name = 'Sandhya Rani Das',
  mother_profession = 'Housewife',
  mother_contact_number = '9348617292',
  mother_email = 'Gitadas RGPur1234@gmail.com',
  mother_aadhaar_no = '326354328827',
  updated_at = NOW()
WHERE admission_no = '1126';

-- Student 1127: Sushree
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Sangita',
  last_name = 'Bastia',
  registration_no = '23BN371038',
  date_of_birth = '2006-04-08',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SEBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'Ab+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7894289695',
  email = 'bastiasushreesangita040@gmail.com',
  student_aadhaar_no = '228012104847',
  father_name = 'Dibakar Bastia',
  father_profession = 'Business',
  father_contact_number = '9937636981',
  father_email = 'kartikkfs2017@gmail.com',
  father_aadhaar_no = '605072627673',
  mother_name = 'Sujata Bastia',
  mother_profession = 'Housewife',
  mother_contact_number = '9078535840',
  mother_email = 'dibakarbastia5@gmail.com',
  mother_aadhaar_no = '504681089318',
  updated_at = NOW()
WHERE admission_no = '1127';

-- Student 1128: Abhilipsa
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Chhatoi',
  registration_no = '23BN371001',
  date_of_birth = '2006-04-02',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '6371685877',
  email = 'chhatoiabhilipsa@gmail.com',
  student_aadhaar_no = '547526563680',
  father_name = 'Sauri Charan Chhatoi',
  father_profession = 'Business',
  father_contact_number = '6372141266',
  father_email = 'sauricharanchhatoi@gmail.com',
  father_aadhaar_no = '963232555079',
  mother_name = 'Kabita Chhatoi',
  mother_profession = 'Housewife',
  mother_contact_number = '9348989616',
  mother_email = 'Chhatoikabita6@gmail.com',
  mother_aadhaar_no = '859060892491',
  updated_at = NOW()
WHERE admission_no = '1128';

-- Student 1129: Rudramadhab
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Panda',
  registration_no = '23BN371046',
  date_of_birth = '2005-07-27',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'Ab +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7853955707',
  email = 'rudramadhabpanda1@gmail.com',
  student_aadhaar_no = '437050468114',
  mother_name = 'Swarnalata Panigrahi',
  mother_profession = 'Housewife',
  mother_contact_number = '8260994664',
  mother_aadhaar_no = '320970824214',
  updated_at = NOW()
WHERE admission_no = '1129';

-- Student 1130: Ayusman
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Jena',
  registration_no = '23BN371041',
  date_of_birth = '2006-04-15',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9668506849',
  email = 'ayushmanjena1122@gmail.com',
  student_aadhaar_no = '429745867408',
  father_name = 'Amiya Ranjan Jena',
  father_profession = 'Farmer',
  father_contact_number = '9438360344',
  father_email = 'oray45911@gmail.com',
  father_aadhaar_no = '259715889546',
  mother_name = 'Lilabati Patra',
  mother_profession = 'Housewife',
  mother_contact_number = '7653038547',
  mother_email = 'lilabatipatra7653@gmail.com',
  mother_aadhaar_no = '468038164892',
  updated_at = NOW()
WHERE admission_no = '1130';

-- Student 1131: Hari
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Om',
  last_name = 'Pathi',
  registration_no = '23BN371008',
  date_of_birth = '2005-06-02',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9668325288',
  email = 'hariompathi349@gmail.com',
  student_aadhaar_no = '558102933091',
  father_name = 'Phalguni Pathi',
  father_profession = 'Teacher',
  father_contact_number = '9040371943',
  father_aadhaar_no = '990379198998',
  mother_name = 'Nilima Pathi',
  mother_profession = 'Other',
  mother_contact_number = '9938974281',
  mother_aadhaar_no = '317581228267',
  updated_at = NOW()
WHERE admission_no = '1131';

-- Student 1132: Pinky
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Bishoi',
  registration_no = '23BN371015',
  date_of_birth = '2005-11-06',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SEBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8260662442',
  email = 'pinkybishoi05@gmail.com',
  student_aadhaar_no = '254343011491',
  father_name = 'Kailash Bishoi',
  father_profession = 'Farmer',
  father_contact_number = '7840938135',
  father_email = 'pinkybishoi05@gmail.com',
  father_aadhaar_no = '391862863611',
  mother_name = 'Sabita Bishoi',
  mother_profession = 'Housewife',
  mother_contact_number = '8144309566',
  mother_email = 'puspanjalibisoi05@gmail.com',
  mother_aadhaar_no = '497399106896',
  updated_at = NOW()
WHERE admission_no = '1132';

-- Student 1133: Bishnupriya
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sahoo',
  registration_no = '23BN371005',
  date_of_birth = '2005-10-22',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SEBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7608057235',
  email = 'Bishnupriya753@gmail.com',
  student_aadhaar_no = '423371672313',
  father_name = 'Suratha Sahoo',
  father_profession = 'Private job',
  father_contact_number = '7894187769',
  father_aadhaar_no = '903280623938',
  mother_name = 'Sukanti Sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '9114055178',
  mother_aadhaar_no = '271739403995',
  updated_at = NOW()
WHERE admission_no = '1133';

-- Student 1134: Bidyusmita
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Nayak',
  registration_no = '23BN371003',
  date_of_birth = '2004-03-21',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Christian'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SEBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A +'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '6370922533',
  email = 'bidyusmitanayak46@gmail.com',
  student_aadhaar_no = '290169577084',
  father_name = 'Bhaskar Nayak',
  father_profession = 'Business',
  father_contact_number = '9348793805',
  father_email = 'bn401255@gmail.com',
  father_aadhaar_no = '951591216440',
  mother_name = 'Jumeli Mallick',
  mother_profession = 'Housewife',
  mother_contact_number = '6370872798',
  mother_email = 'jumelimallick123@gmail.com',
  mother_aadhaar_no = '613465493198',
  updated_at = NOW()
WHERE admission_no = '1134';

COMMIT;

-- Verification - Show first 5 students with details
SELECT 
  admission_no, first_name, middle_name, last_name,
  registration_no, date_of_birth, email, contact_no,
  father_name, mother_name
FROM "Acadix_studentregistration"
WHERE admission_no BETWEEN '1088' AND '1134'
ORDER BY admission_no::int
LIMIT 5;
