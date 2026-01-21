-- UPDATE BSC 2ND YEAR (2024-2028) - Fill ALL missing data from Excel

BEGIN;

-- Student 1135: K.
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Subham',
  last_name = 'Patro',
  registration_no = '24BN371017',
  date_of_birth = '2006-11-13',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8260174749',
  student_aadhaar_no = '439718803369',
  father_name = 'K Laxminarayan patro',
  father_profession = 'Business',
  father_contact_number = '8895776600',
  father_email = 'subhampatro890@gmail.com',
  father_aadhaar_no = '983079692750',
  mother_name = 'K.jhumuri rani patro',
  mother_profession = 'Housewife',
  mother_contact_number = '7846886846',
  mother_email = 'subhampatro890@gmail.com',
  mother_aadhaar_no = '758335005978',
  updated_at = NOW()
WHERE admission_no = '1135';

-- Student 1136: Ashish
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Kumar',
  last_name = 'Guru',
  registration_no = '24BN371007',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7735296637',
  student_aadhaar_no = '912838898462',
  father_name = 'Sankar Guru',
  father_profession = 'Farmer',
  father_contact_number = '9937019019',
  father_email = 'sankarguru472@gmail.com',
  father_aadhaar_no = '948172907356',
  mother_name = 'Bilasini Guru',
  mother_profession = 'Housewife',
  mother_contact_number = '6370914261',
  mother_email = 'sankarguru472@gmail.com',
  mother_aadhaar_no = '954942183351',
  updated_at = NOW()
WHERE admission_no = '1136';

-- Student 1137: Pratyush
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Kumar',
  last_name = 'Pahantasingh',
  registration_no = '24BN371030',
  date_of_birth = '2006-07-14',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9777436148',
  student_aadhaar_no = '212788044259',
  father_name = 'Pramod kumar pahantasingh',
  father_profession = 'Farmer',
  father_contact_number = '6371599937',
  father_email = 'pramodkupahantasingh2873@gmail.com',
  father_aadhaar_no = '334766248677',
  mother_name = 'Pratima pahantasingh',
  mother_profession = 'Housewife',
  mother_contact_number = '9777143804',
  mother_email = 'rautpratima523@gmail.com',
  mother_aadhaar_no = '354285886097',
  updated_at = NOW()
WHERE admission_no = '1137';

-- Student 1138: Sitansu
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Subhrajyoti',
  last_name = 'Swain',
  registration_no = '24BN371038',
  date_of_birth = '2006-11-17',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8984744682',
  student_aadhaar_no = '739609865158',
  father_name = 'MADHUSUDAN SWAIN',
  father_profession = 'Private Job',
  father_contact_number = '9937142605',
  father_email = 'sitanshusubhrajyotiswain1234@gmail.com',
  father_aadhaar_no = '397002739345',
  mother_name = 'RITARANI SWAIN',
  mother_profession = 'Housewife',
  mother_contact_number = '7751815385',
  mother_email = 'sitanshusubhrajyotiswain1234@gmail.com',
  mother_aadhaar_no = '818685731864',
  updated_at = NOW()
WHERE admission_no = '1138';

-- Student 1139: Soumya
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Ranjan',
  last_name = 'Sahoo',
  registration_no = '24BN371039',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9938317549',
  student_aadhaar_no = '788679293420',
  father_name = 'Rabindra sahoo',
  father_profession = 'Private Job',
  father_contact_number = '6371717575',
  father_email = 'Rabindra.shcck@g',
  father_aadhaar_no = '960325544501',
  mother_name = 'Sabita sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '9827795268',
  mother_email = 'sabitasahoo167a@gmail.com',
  mother_aadhaar_no = '766628000949',
  updated_at = NOW()
WHERE admission_no = '1139';

-- Student 1140: SUPRIYA
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'SUPRIYA',
  last_name = 'TRIPATHY',
  registration_no = '24BN371049',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8319012120',
  student_aadhaar_no = '476101754689',
  father_name = 'PRUTHWIRAJ TRIPATHY',
  father_profession = 'Business',
  father_contact_number = '9861405035',
  father_email = 'pruthiwirajtripathy@gmail.com',
  father_aadhaar_no = '278964459127',
  mother_name = 'SWAPNA RANI TRIPATHY',
  mother_profession = 'Housewife',
  mother_contact_number = '8658978279',
  mother_email = 'Swapnarani297@gmail.com',
  mother_aadhaar_no = '831624582706',
  updated_at = NOW()
WHERE admission_no = '1140';

-- Student 1141: Kumari
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Ipsita',
  last_name = 'Sahu',
  registration_no = '24BN371019',
  date_of_birth = '2006-05-31',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7008136864',
  student_aadhaar_no = '323957164075',
  father_name = 'Dhaneswar sahu',
  father_profession = 'Other',
  father_contact_number = '9437057416',
  father_email = 'dhaneswar416sahu@gmail.com',
  father_aadhaar_no = '397769656102',
  mother_name = 'Sanjukta Sahu',
  mother_profession = 'Housewife',
  mother_contact_number = '8249319370',
  mother_email = 'sanjuktasahu818@gmail.com',
  mother_aadhaar_no = '325905063961',
  updated_at = NOW()
WHERE admission_no = '1141';

-- Student 1142: Pragyan
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Paramita',
  last_name = 'Sahoo',
  registration_no = '24BN371029',
  date_of_birth = '2007-03-30',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9938275912',
  student_aadhaar_no = '3279 2825 76',
  father_name = 'Pradipta Kumar sahoo',
  father_profession = 'Business',
  father_contact_number = '7008505391',
  father_email = 'Pradeepsahoo735@gmail.com',
  father_aadhaar_no = '2779 0906 88',
  mother_name = 'Pravati sahoo',
  mother_profession = 'Teacher',
  mother_contact_number = '7978976126',
  mother_email = 'pravatisahoo0618@gmail.com',
  mother_aadhaar_no = '3105 8378 03',
  updated_at = NOW()
WHERE admission_no = '1142';

-- Student 1143: Priyanka
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Priyadarsini',
  last_name = 'Biswal',
  registration_no = '24BN371032',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SEBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9937886580',
  student_aadhaar_no = '461234913542',
  father_name = 'Chandrakanta Biswal',
  father_profession = 'Farmer',
  father_contact_number = '9776812977',
  father_email = 'chandrakantabiswal200@gmail.com',
  father_aadhaar_no = '879945055124',
  mother_name = 'Sanjukta Mohanty',
  mother_profession = 'Teacher',
  mother_contact_number = '7205612315',
  mother_email = 'sanjuktamohanty200@gmail.com',
  mother_aadhaar_no = '583590238099',
  updated_at = NOW()
WHERE admission_no = '1143';

-- Student 1144: Mamali
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Behera',
  registration_no = '24BN371024',
  date_of_birth = '2006-05-20',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8093291515',
  student_aadhaar_no = '221161341993',
  father_name = 'Nilakanta Behera',
  father_profession = 'Farmer',
  father_contact_number = '8458028636',
  father_email = 'mamali999345@gmail.com',
  father_aadhaar_no = '370236170933',
  mother_name = 'Kunilata Behera',
  mother_profession = 'Housewife',
  mother_contact_number = '7751991862',
  mother_email = 'beherasunitasamir@gmail.com',
  mother_aadhaar_no = '889103736993',
  updated_at = NOW()
WHERE admission_no = '1144';

-- Student 1145: Bidusmita
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sahoo',
  registration_no = '24BN371011',
  date_of_birth = '2007-03-18',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7854038804',
  student_aadhaar_no = '373744793159',
  father_name = 'Banchhanidhi Sahoo',
  father_profession = 'Farmer',
  father_contact_number = '986197656',
  father_email = 'sahoobanchhanadhi@gmail.com',
  father_aadhaar_no = '613191834974',
  mother_name = 'Minati Kumari Sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '6372185157',
  mother_email = 'sahuminatikumari57@gmail.com',
  mother_aadhaar_no = '376154199924',
  updated_at = NOW()
WHERE admission_no = '1145';

-- Student 1146: Sasmita
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sethi',
  registration_no = '24BN371036',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9938961721',
  student_aadhaar_no = '611165471663',
  father_name = 'Sukanta sethi',
  father_profession = 'Farmer',
  father_contact_number = '7205680203',
  father_email = 'sethisukanta304@gmail.com',
  father_aadhaar_no = '827913160163',
  mother_name = 'Manorama Sethi',
  mother_profession = 'Housewife',
  mother_contact_number = '9078185184',
  mother_email = 'manoramasethi59391@gmail.com',
  mother_aadhaar_no = '395178934991',
  updated_at = NOW()
WHERE admission_no = '1146';

-- Student 1147: Mitali
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Priyadarshini',
  last_name = 'Barik',
  registration_no = '24BN371025',
  date_of_birth = '2005-05-21',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9861110499',
  student_aadhaar_no = '418562328498',
  father_name = 'Pradip Kumar Barik',
  father_profession = 'Private Job',
  father_contact_number = '9040273673',
  father_email = 'pradipbarik1971@gmail.com',
  father_aadhaar_no = '429196329996',
  mother_name = 'Mamata kumari barik',
  mother_profession = 'Housewife',
  mother_contact_number = '7979559869',
  mother_email = 'pradipbarik1971@gmail.com',
  mother_aadhaar_no = '390220119801',
  updated_at = NOW()
WHERE admission_no = '1147';

-- Student 1148: Rojalin
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Rojalin',
  last_name = 'Sahoo',
  registration_no = '24BN371034',
  date_of_birth = '2007-03-18',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8144205743',
  student_aadhaar_no = '3381 0088 40',
  father_name = 'Dillip Kumar sahoo',
  father_profession = 'Business',
  father_contact_number = '9178067737',
  father_email = 'Srojalin320@gmail.com',
  father_aadhaar_no = '6755 9220 68',
  mother_name = 'Lipi sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '7008839921',
  mother_email = 'Sahoorojalin984@gmail.com',
  mother_aadhaar_no = '4942 6602 31',
  updated_at = NOW()
WHERE admission_no = '1148';

-- Student 1149: Tapaswinee
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Suryakumari',
  last_name = 'Sahoo',
  registration_no = '24BN371054',
  date_of_birth = '2008-08-24',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O-'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7205042842',
  student_aadhaar_no = '676659111910',
  father_name = 'Bhabani sankar sahoo',
  father_profession = 'Business',
  father_contact_number = '9668680371',
  father_email = 'bhabanisahoo635@gmail.com',
  father_aadhaar_no = '900708937346',
  mother_name = 'Sanjukta sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '7077200434',
  mother_email = 'sanjuktasahoo635@gmail.com',
  mother_aadhaar_no = '286481023930',
  updated_at = NOW()
WHERE admission_no = '1149';

-- Student 1150: Anchal
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Priyadarshini',
  last_name = 'Mishra',
  registration_no = '24BN371003',
  date_of_birth = '2003-06-21',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8260697241',
  student_aadhaar_no = '654664954062',
  father_name = 'Ashok Kumar Mishra',
  father_profession = 'Govt job',
  father_contact_number = '9938132590',
  father_email = 'ashokkmishra567@gmail.com',
  father_aadhaar_no = '408802981723',
  mother_name = 'Ramarani Mishra',
  mother_profession = 'Housewife',
  mother_contact_number = '9348653930',
  mother_email = 'ramaranimishra2@gmail.com',
  mother_aadhaar_no = '607217465686',
  updated_at = NOW()
WHERE admission_no = '1150';

-- Student 1151: Abhipsa
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Priyadarshini',
  registration_no = '24BN371001',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '6370055246',
  student_aadhaar_no = '746777963625',
  father_name = 'Chakradhar bhoi',
  father_profession = 'Driver',
  father_contact_number = '9777665302',
  father_email = 'bchakradhar803@gmail.com',
  father_aadhaar_no = '888982013444',
  mother_name = 'Pradipta behera',
  mother_profession = 'Private Job',
  mother_contact_number = '7684949433',
  mother_email = 'pradiptabehera027@gmail.com',
  mother_aadhaar_no = '943531487348',
  updated_at = NOW()
WHERE admission_no = '1151';

-- Student 1152: Saswati
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Somya',
  last_name = 'Barik',
  registration_no = '24BN371037',
  date_of_birth = '2007-03-18',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9348322542',
  student_aadhaar_no = '382103314031',
  father_name = 'Susant kumar barik',
  father_profession = 'Teacher',
  father_contact_number = '6371798979',
  father_email = 'susantakumarbarik1973@gmail.com',
  father_aadhaar_no = '991930852582',
  mother_name = 'Banita behera',
  mother_profession = 'Housewife',
  mother_contact_number = '6370964544',
  mother_email = 'banitabehera2891@gmail.com',
  mother_aadhaar_no = '427271249691',
  updated_at = NOW()
WHERE admission_no = '1152';

-- Student 1153: MADHU
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'SMITA',
  last_name = 'SWAIN',
  registration_no = '24BN371021',
  date_of_birth = '2007-04-26',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8144228740',
  student_aadhaar_no = '950548178460',
  father_name = 'MANOJ KUMAR SWAIN',
  father_profession = 'Business',
  father_contact_number = '9937075026',
  father_email = 'manozswain@gmail. Com',
  father_aadhaar_no = '230932792054',
  mother_name = 'JHANSI SWAIN',
  mother_profession = 'Housewife',
  mother_contact_number = '9937037026',
  mother_email = 'manozswain@gmail.com',
  mother_aadhaar_no = '821379459066',
  updated_at = NOW()
WHERE admission_no = '1153';

-- Student 1154: Subham
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sahu',
  registration_no = '24BN371044',
  date_of_birth = '2007-02-27',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7751858235',
  student_aadhaar_no = '588245915956',
  father_name = 'Muralidhar sahu',
  father_profession = 'Farmer',
  father_contact_number = '6371327984',
  father_email = 'muralidharasahu18@gmail.com',
  father_aadhaar_no = '5641 0063 61',
  mother_name = 'Binodini sahu',
  mother_profession = 'Housewife',
  mother_contact_number = '9556784122',
  mother_email = 'binodinimurali1985@gmail.com',
  mother_aadhaar_no = '3948 9423 18',
  updated_at = NOW()
WHERE admission_no = '1154';

-- Student 1155: JYOTI
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'PRIYA',
  last_name = 'SAHOO',
  registration_no = '24BN371016',
  date_of_birth = '2006-05-31',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8984363871',
  student_aadhaar_no = '813406629335',
  father_name = 'ANJANA KUMAR SAHOO',
  father_profession = 'Business',
  father_contact_number = '9438637209',
  father_email = 'aks1234sahoo@gmail.com',
  father_aadhaar_no = '661726864850',
  mother_name = 'SWARNALATA SAHOO',
  mother_profession = 'Housewife',
  mother_contact_number = '9438637209',
  mother_email = 'swarna1984lata@gmail.com',
  mother_aadhaar_no = '862636993614',
  updated_at = NOW()
WHERE admission_no = '1155';

-- Student 1156: HIMADRI
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'TANAYA',
  last_name = 'RAY',
  registration_no = '24BN371013',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SEBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9040600938',
  student_aadhaar_no = '3447 1475 59',
  father_name = 'PRASANTA KUMAR RAY',
  father_profession = 'Teacher',
  father_contact_number = '9237973666',
  father_email = 'prasantaray1969@gmail.com',
  father_aadhaar_no = '8536 8812 38',
  mother_name = 'TANUJA RAY',
  mother_profession = 'Housewife',
  mother_contact_number = '9437329991',
  mother_email = 'prasantaray1969@gmail.com',
  mother_aadhaar_no = '4052 6091 02',
  updated_at = NOW()
WHERE admission_no = '1156';

-- Student 1157: Susmita
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Choudhury',
  registration_no = '24BN371050',
  date_of_birth = '2006-09-17',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7033270154',
  student_aadhaar_no = '7483958 9754',
  father_name = 'Chitta Ranjan choudhury',
  father_profession = 'Private Job',
  father_contact_number = '9523677748',
  father_email = 'Chittaranjanchoudhury925@gmail.com',
  father_aadhaar_no = '689884666929',
  mother_name = 'Suchitra choudhury',
  mother_profession = 'Housewife',
  mother_contact_number = '8092226545',
  mother_email = 'suchitrachoudhury95@gmail.com',
  mother_aadhaar_no = '893214213229',
  updated_at = NOW()
WHERE admission_no = '1157';

-- Student 1158: SWOYAMSHREE
UPDATE "Acadix_studentregistration"
SET
  last_name = 'BISWAL',
  registration_no = '24BN371052',
  date_of_birth = '2007-01-18',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SEBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9692419499',
  student_aadhaar_no = '6792 5001 47',
  father_name = 'BALABHADRA BISWAL',
  father_profession = 'Farmer',
  father_contact_number = '9938554161',
  father_email = 'ommbiswal608@gmail.com',
  father_aadhaar_no = '4241 6582 57',
  mother_name = 'UMA BISWAL',
  mother_profession = 'Housewife',
  mother_contact_number = '8249980295',
  mother_email = 'ommbiswal608@gmail.com',
  mother_aadhaar_no = '6866 1587 73',
  updated_at = NOW()
WHERE admission_no = '1158';

-- Student 1159: Anchal
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Amritsmita',
  registration_no = '24BN371002',
  date_of_birth = '2004-11-18',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7606915195',
  student_aadhaar_no = '497635928061',
  father_name = 'Amiya Ranjan Jena',
  father_profession = 'Business',
  father_contact_number = '9777627273',
  father_email = 'amiyajena230@gmail.com',
  father_aadhaar_no = '519164939933',
  mother_name = 'Sasmita Pal',
  mother_profession = 'Advocate',
  mother_contact_number = '9124777201',
  mother_email = 'sasmitapal230@gmail.com',
  mother_aadhaar_no = '884820369242',
  updated_at = NOW()
WHERE admission_no = '1159';

-- Student 1160: Subhalaxmi
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sahoo',
  registration_no = '24BN371043',
  date_of_birth = '2007-01-28',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8280964404',
  student_aadhaar_no = '424897428147',
  father_name = 'Bidyadhar Sahoo',
  father_profession = 'Business',
  father_contact_number = '9938337632',
  father_email = 'dilisahoo28@gmail.com',
  father_aadhaar_no = '946934003884',
  mother_name = 'Rashmita Sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '9078838840',
  mother_email = 'dilisahoo28@gmail.com',
  mother_aadhaar_no = '416218761479',
  updated_at = NOW()
WHERE admission_no = '1160';

-- Student 1161: Iva
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sarkar',
  registration_no = '24BN371015',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9556892561',
  student_aadhaar_no = '900658913646',
  father_name = 'Asish Kumar Sarkar',
  father_profession = 'Private Job',
  father_contact_number = '6371857875',
  father_email = 'asishkumarsarkar66@gmail.com',
  father_aadhaar_no = '445100460669',
  mother_name = 'Laxmirani Bose',
  mother_profession = 'Teacher',
  mother_contact_number = '7855044290',
  mother_email = 'Laxmiranibose0@gmail.com',
  mother_aadhaar_no = '753890873637',
  updated_at = NOW()
WHERE admission_no = '1161';

-- Student 1162: Monalisa
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Panda',
  registration_no = '24BN371026',
  date_of_birth = '2005-10-25',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '6370679743',
  student_aadhaar_no = '284141407494',
  father_name = 'Sadasiba Panda',
  father_profession = 'Govt Job',
  father_contact_number = '7978614080',
  father_email = 'pandasadashiba455@gmail.com',
  father_aadhaar_no = '722357301881',
  mother_name = 'Manjubala panda',
  mother_profession = 'Housewife',
  mother_contact_number = '9692326754',
  mother_email = 'pandasadashiba455@gmail.com',
  mother_aadhaar_no = '339898639066',
  updated_at = NOW()
WHERE admission_no = '1162';

-- Student 1163: SWAPNA
UPDATE "Acadix_studentregistration"
SET
  last_name = 'DALAI',
  registration_no = '24BN371051',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7008289671',
  student_aadhaar_no = '5707 1060 27',
  father_name = 'AJAYA DALAI',
  father_profession = 'Farmer',
  father_contact_number = '9777872196',
  father_email = 'ajaydalai7875777@gmail.com',
  father_aadhaar_no = '4261 2745 80',
  mother_name = 'DEBAJANI BEHERA',
  mother_profession = 'Teacher',
  mother_contact_number = '9937090416',
  mother_email = 'debajanib112@gmail.com',
  mother_aadhaar_no = '7039 8569 36',
  updated_at = NOW()
WHERE admission_no = '1163';

-- Student 1164: Tanmyee
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sahoo',
  registration_no = '24BN371053',
  date_of_birth = '2005-10-15',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8895865423',
  student_aadhaar_no = '748311475791',
  father_name = 'Manoj Kumar Sahoo',
  father_profession = 'Farmer',
  father_contact_number = '7381541723',
  father_email = 'sahootanmayee63@gmail.com',
  father_aadhaar_no = '774797205664',
  mother_name = 'Minakshi Sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '8118038295',
  mother_email = 'sahootanushree1234@gmail.com',
  mother_aadhaar_no = '530854804462',
  updated_at = NOW()
WHERE admission_no = '1164';

-- Student 1165: Suchi
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Smita',
  last_name = 'Rout',
  registration_no = '24BN371047',
  date_of_birth = '2006-04-20',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8328956817',
  student_aadhaar_no = '731702727297',
  father_name = 'Gauranga Rout',
  father_profession = 'Farmer',
  father_contact_number = '8926100345',
  father_email = 'gourangaroutgourangarout@gmail.com',
  father_aadhaar_no = '901077487412',
  mother_name = 'Sanjulata Rout',
  mother_profession = 'Housewife',
  mother_contact_number = '7846993756',
  mother_email = 'routb440@gmail.com',
  mother_aadhaar_no = '877799057974',
  updated_at = NOW()
WHERE admission_no = '1165';

-- Student 1166: ipsita dhal
UPDATE "Acadix_studentregistration"
SET
  last_name = 'dhal',
  registration_no = '24BN371014',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9556033644',
  student_aadhaar_no = '219832917062',
  father_name = 'sukanta kumar dhal',
  father_profession = 'Business',
  father_contact_number = '9937581708',
  father_email = 'Ipsitadhal867@ gmail.com',
  father_aadhaar_no = '310648344898',
  mother_name = 'monalisha dhal',
  mother_profession = 'Housewife',
  mother_contact_number = '9348535300',
  mother_email = 'ipsitadhal867@gmail.com',
  mother_aadhaar_no = '614178807766',
  updated_at = NOW()
WHERE admission_no = '1166';

-- Student 1167: Subhransu
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Panda',
  registration_no = '24BN371045',
  date_of_birth = '2006-12-18',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9337958943',
  student_aadhaar_no = '867286788998',
  father_name = 'Pradeepta Kumar Panda',
  father_profession = 'Farmer',
  father_contact_number = '8327788582',
  father_email = 'pradeeptap7419@gmail.com',
  father_aadhaar_no = '491020726395',
  mother_name = 'Mamata Panda',
  mother_profession = 'Housewife',
  mother_contact_number = '9778813498',
  mother_email = 'pandasubhransu72@gmail.com',
  mother_aadhaar_no = '983460874734',
  updated_at = NOW()
WHERE admission_no = '1167';

-- Student 1168: MAMA
UPDATE "Acadix_studentregistration"
SET
  last_name = 'PATRA',
  registration_no = '24BN371023',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'AB+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9692802818',
  student_aadhaar_no = '5550 3774 77',
  father_name = 'SUKDEV PATRA',
  father_profession = 'Farmer',
  father_contact_number = '7205483556',
  father_email = 'abhijit9583@gmail.com',
  father_aadhaar_no = '5394 8430 35',
  mother_name = 'GOURIMANI PATRA',
  mother_profession = 'Housewife',
  mother_contact_number = '9692258661',
  mother_email = 'abhijit9583@gmail.com',
  mother_aadhaar_no = '6316 4486 76',
  updated_at = NOW()
WHERE admission_no = '1168';

-- Student 1169: RUDRAKSHI
UPDATE "Acadix_studentregistration"
SET
  last_name = 'BEHERA',
  registration_no = '24BN371035',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8249208791',
  student_aadhaar_no = '4981 0295 81',
  father_name = 'BASANTA KUMAR BEHERA',
  father_profession = 'Farmer',
  father_contact_number = '7847877023',
  father_email = 'minakshibehera713@gmail.com',
  father_aadhaar_no = '2559 9293 38',
  mother_name = 'SWARNA PRAVA BEHERA',
  mother_profession = 'Housewife',
  mother_contact_number = '7847877023',
  mother_email = 'minakshibehera713@gmail.com',
  mother_aadhaar_no = '3121 5180 62',
  updated_at = NOW()
WHERE admission_no = '1169';

-- Student 1170: Niladri
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Bhushan',
  last_name = 'Dash',
  registration_no = '24BN371027',
  date_of_birth = '2006-06-30',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8763163152',
  student_aadhaar_no = '967631572062',
  father_name = 'Rajendra Prasad Dash',
  father_profession = 'Business',
  father_contact_number = '9078892214',
  father_email = 'rajendradash746@gmail.com',
  father_aadhaar_no = '616371192959',
  mother_name = 'Narmada kar',
  mother_profession = 'Housewife',
  mother_contact_number = '7873631022',
  mother_email = 'narmadakar05@gmail.com',
  mother_aadhaar_no = '813148855833',
  updated_at = NOW()
WHERE admission_no = '1170';

-- Student 1171: Baisalini
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Swain',
  registration_no = '24BN37009',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SEBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9437521055',
  student_aadhaar_no = '663053903023',
  father_name = 'Satyajit swain',
  father_profession = 'Business',
  father_contact_number = '9439204255',
  father_email = 'Seetu0051@gmail.com',
  father_aadhaar_no = '257021114826',
  mother_name = 'Jyotshnarani swain',
  mother_profession = 'Housewife',
  mother_contact_number = '9439632055',
  mother_email = 'Jyotshnaranibehura7@gmail.com',
  mother_aadhaar_no = '643139960956',
  updated_at = NOW()
WHERE admission_no = '1171';

-- Student 1172: Kumar
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Bhabatosh',
  registration_no = '24BN381018',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9668110529',
  student_aadhaar_no = '797830826149',
  father_name = 'Dillip Kumar Dehuri',
  father_profession = 'Farmer',
  father_contact_number = '9178426690',
  father_email = 'dillipdehuri3@gmail.com',
  father_aadhaar_no = '926014732366',
  mother_name = 'Diptimayee Dehuri',
  mother_profession = 'Housewife',
  mother_email = 'kumarashutoshbhabatosh@gamail.com',
  mother_aadhaar_no = '710397105080',
  updated_at = NOW()
WHERE admission_no = '1172';

-- Student 1173: Ashutosh
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sahoo',
  registration_no = '24BN371008',
  date_of_birth = '2006-05-18',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7873409379',
  student_aadhaar_no = '742589293962',
  father_name = 'Baikunthanath Sahoo',
  father_profession = 'Business',
  father_contact_number = '8260286638',
  father_email = 'baikunthanath308@gmali.com',
  father_aadhaar_no = '667380258367',
  mother_name = 'Souvagini Sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '9556298096',
  mother_email = 'Sahoosouvagini50@gmali.com',
  mother_aadhaar_no = '946873603425',
  updated_at = NOW()
WHERE admission_no = '1173';

-- Student 1174: Soumyajit
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sahoo',
  registration_no = '24BN371041',
  date_of_birth = '2007-05-16',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9827611748',
  student_aadhaar_no = '890251896368',
  father_name = 'Basanta kumar sahoo',
  father_profession = 'Teacher',
  father_contact_number = '9437283145',
  father_email = 'basantakumarsahoo3537@gmail.com',
  father_aadhaar_no = '681905840274',
  mother_name = 'Sabita sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '9827611748',
  mother_email = 'sahoosoumyajit555@gmail.com',
  mother_aadhaar_no = '831928071961',
  updated_at = NOW()
WHERE admission_no = '1174';

-- Student 1175: Archita
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sahoo',
  registration_no = '24BN371006',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7205927389',
  student_aadhaar_no = '282257591852',
  father_name = 'Dillip Kumar sahoo',
  father_profession = 'Bussiness',
  father_contact_number = '9938396098',
  father_email = 'Sranjansahoo421@gmail.com',
  father_aadhaar_no = '557565241716',
  mother_name = 'Kunilata sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '9777356131',
  mother_email = 'Kunilatasahoo883@gmail.com',
  mother_aadhaar_no = '841891623490',
  updated_at = NOW()
WHERE admission_no = '1175';

-- Student 1176: Soumya
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Ranjan',
  last_name = 'Sethi',
  registration_no = '24BN371040',
  date_of_birth = '2006-10-29',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '8917426838',
  student_aadhaar_no = '940570180461',
  father_name = 'Nityananda sethi',
  father_profession = 'Farmer',
  father_contact_number = '7894027145',
  father_email = 'pujalinesethi596@gmail.com',
  father_aadhaar_no = '285845995591',
  mother_name = 'Shantilata sethi',
  mother_profession = 'Housewife',
  mother_contact_number = '7991075756',
  mother_email = 'Pujalinesethi596@gmail.com',
  mother_aadhaar_no = '668891148044',
  updated_at = NOW()
WHERE admission_no = '1176';

-- Student 1177: PRIYANKA
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'PRIYADARSHINI',
  last_name = 'BARAL',
  registration_no = '24BN371031',
  date_of_birth = '2007-08-20',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '9692469276',
  student_aadhaar_no = '9126 8905 59',
  father_name = 'SUDHIR MOHAN BARAL',
  father_profession = 'Farmer',
  father_contact_number = '7788892577',
  father_email = 'Priyankapriyadarshinibaral@2007gmail.com',
  father_aadhaar_no = '8971 2030 73',
  mother_name = 'DAMAYANTI BARAL',
  mother_profession = 'Housewife',
  mother_contact_number = '6372016411',
  mother_email = 'baraladamayanti@gmail.com',
  mother_aadhaar_no = '7419 1369 38',
  updated_at = NOW()
WHERE admission_no = '1177';

-- Student 1178: Laxmi
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Priya',
  last_name = 'Jati',
  registration_no = '24BN371020',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7846942405',
  student_aadhaar_no = '758373236242',
  father_name = 'Manoj jati',
  father_profession = 'Other',
  father_contact_number = '8260423827',
  father_email = 'jatimanoj0@gmail.com',
  father_aadhaar_no = '527969471641',
  mother_name = 'Bidyut prava jati',
  mother_profession = 'Housewife',
  mother_contact_number = '7854029007',
  mother_email = 'gudijati530@gmail.com',
  mother_aadhaar_no = '802172726160',
  updated_at = NOW()
WHERE admission_no = '1178';

-- Student 1179: Rohan
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Swain',
  registration_no = '24BN371033',
  date_of_birth = '2006-10-28',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SEBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  student_aadhaar_no = '912285952760',
  father_name = 'Dillip kumar swain',
  father_profession = 'Business',
  father_contact_number = '9596360707',
  father_email = 'rohanswain316@gmail.com',
  father_aadhaar_no = '562576657564',
  mother_name = 'Rasita swain',
  mother_profession = 'Housewife',
  mother_contact_number = '9938063702',
  mother_email = 'rohanswain316@gmail.com',
  mother_aadhaar_no = '953337144681',
  updated_at = NOW()
WHERE admission_no = '1179';

-- Student 1180: Subhalaxmi
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Das',
  registration_no = '24BN371042',
  date_of_birth = '2006-08-15',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7750979849',
  student_aadhaar_no = '704695004141',
  father_name = 'Basanta kumar Das',
  father_profession = 'Teacher',
  father_contact_number = '8114376766',
  father_email = 'bd2651049@gmail.com',
  father_aadhaar_no = '827263681788',
  mother_name = 'Padmabati Das',
  mother_profession = 'Housewife',
  mother_contact_number = '8895011161',
  mother_email = 'dasbasanta395@gmain.com',
  mother_aadhaar_no = '757765356837',
  updated_at = NOW()
WHERE admission_no = '1180';

-- Student 1181: Bismaya
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Kumar',
  last_name = 'Sahoo',
  registration_no = '24BN371012',
  date_of_birth = '2007-02-14',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7978959097',
  student_aadhaar_no = '932044796071',
  father_name = 'Suraya ranjan sahoo',
  father_profession = 'Other',
  father_contact_number = '7008460751',
  father_email = 'Suryaranjansahoo938@gmail.com',
  father_aadhaar_no = '803611633777',
  mother_name = 'Mita sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '7735641255',
  mother_email = 'mitasahoo627@gmail.com',
  mother_aadhaar_no = '917425493109',
  updated_at = NOW()
WHERE admission_no = '1181';

-- Student 1182: Sujata rani
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Priyadarshini',
  last_name = 'Sahoo',
  registration_no = '24BN371048',
  date_of_birth = '2006-09-13',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '6371712715',
  student_aadhaar_no = '316588560854',
  father_name = 'Sanatan sahoo',
  father_profession = 'Business',
  father_contact_number = '8658079791',
  father_email = 'Sanatan19650@gmail.com',
  father_aadhaar_no = '848377319068',
  mother_name = 'Sabita sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '8658924249',
  mother_email = 'sahoosujataranipriyadarshini@gmail.com',
  mother_aadhaar_no = '210834903372',
  updated_at = NOW()
WHERE admission_no = '1182';

-- Student 1183: Ankita
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Das',
  registration_no = '24BN371004',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7077109185',
  student_aadhaar_no = '366664906527',
  father_name = 'Ranjan Kumar Das',
  father_profession = 'Private Job',
  father_contact_number = '7978589185',
  father_email = 'rd6826383@gmail.com',
  father_aadhaar_no = '302799022643',
  mother_name = 'Binapani Das',
  mother_profession = 'Housewife',
  mother_contact_number = '7437824496',
  mother_email = 'rd6826383@gmail.com',
  mother_aadhaar_no = '493873975399',
  updated_at = NOW()
WHERE admission_no = '1183';

-- Student 1184: Archita
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Nayak',
  registration_no = '24BN371005',
  date_of_birth = '2006-02-15',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'SC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7855860645',
  student_aadhaar_no = '726691312429',
  father_name = 'Ananata Nayak',
  father_profession = 'Farmer',
  father_contact_number = '8018078002',
  father_email = 'an2550028@gmail.com',
  father_aadhaar_no = '506916398498',
  mother_name = 'Pratima Nayak',
  mother_profession = 'Housewife',
  mother_contact_number = '8018078002',
  mother_email = 'an2550028@gmail.com',
  mother_aadhaar_no = '720339477076',
  updated_at = NOW()
WHERE admission_no = '1184';

-- Student 1185: Mahabir
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Sahoo',
  registration_no = '24BN371022',
  date_of_birth = '2006-07-16',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7848834854',
  student_aadhaar_no = '627806429632',
  father_name = 'Sushanta kumar sahoo',
  father_profession = 'Teacher',
  father_contact_number = '7504609193',
  father_email = 'Sushantakumarsahoo055@gmail.com',
  father_aadhaar_no = '940061712597',
  mother_name = 'Gayatri sahoo',
  mother_profession = 'Housewife',
  mother_contact_number = '8249964588',
  mother_email = 'Mahabirsahoo824@gmail.com',
  mother_aadhaar_no = '280264726037',
  updated_at = NOW()
WHERE admission_no = '1185';

-- Student 1186: Suchismita
UPDATE "Acadix_studentregistration"
SET
  last_name = 'Jena',
  registration_no = '24BN371046',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'GENERAL'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'O+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7504457174',
  student_aadhaar_no = '568600796415',
  father_name = 'Santosh Kumar jena',
  father_profession = 'Govt job',
  father_contact_number = '8249853263',
  father_email = 'jenassantosh1977@gmail.com',
  father_aadhaar_no = '825376548345',
  mother_name = 'Purnima Jena',
  mother_profession = 'Housewife',
  mother_contact_number = '9853123025',
  mother_email = 'jenapurnima1980@gmail.com',
  mother_aadhaar_no = '779060055164',
  updated_at = NOW()
WHERE admission_no = '1186';

-- Student 1187: Barsa
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Priyadarsini',
  last_name = 'Behera',
  registration_no = '24BN371010',
  date_of_birth = '2006-05-23',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'A+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  contact_no = '7847993251',
  student_aadhaar_no = '221370208570',
  father_name = 'Prasanna Kumar Behera',
  father_profession = 'Business',
  father_contact_number = '7978179868',
  father_email = 'prsannabeherabehera@gmail.com',
  father_aadhaar_no = '502136618566',
  mother_name = 'Binduprava Behera',
  mother_profession = 'Housewife',
  mother_contact_number = '7854849077',
  mother_email = 'prasannabehera1...233@gmail.com',
  mother_aadhaar_no = '479812000373',
  updated_at = NOW()
WHERE admission_no = '1187';

-- Student 1188: Omm
UPDATE "Acadix_studentregistration"
SET
  middle_name = 'Prakash',
  last_name = 'Jena',
  registration_no = '24BN371028',
  date_of_birth = '2007-03-26 ',
  religion_id = (SELECT id FROM "Acadix_religion" WHERE religion_name = 'Hindu'),
  category_id = (SELECT id FROM "Acadix_category" WHERE category_name = 'OBC'),
  nationality_id = (SELECT id FROM "Acadix_nationality" WHERE nationality_code = 'Indian'),
  blood_id = (SELECT id FROM "Acadix_blood" WHERE blood_code = 'B+'),
  mother_tongue_id = (SELECT id FROM "Acadix_mothertongue" WHERE mother_tongue_name = 'Odia'),
  student_aadhaar_no = '593928840693',
  father_name = 'Surendra kumar jena',
  father_profession = 'Farmer',
  father_contact_number = '9439683240',
  father_email = 'Prakashjenaomm1@gmail.com',
  father_aadhaar_no = '263786817122',
  mother_name = 'Geetanjali jena',
  mother_profession = 'Housewife',
  mother_contact_number = '9556485510',
  mother_email = 'Prakashjenaomm1@gmail.com',
  mother_aadhaar_no = '995265538664',
  updated_at = NOW()
WHERE admission_no = '1188';

COMMIT;

-- Verification - Show first 5 students with details
SELECT 
  admission_no, first_name, middle_name, last_name,
  registration_no, date_of_birth, email, contact_no,
  father_name, mother_name
FROM "Acadix_studentregistration"
WHERE admission_no BETWEEN '1135' AND '1188'
ORDER BY admission_no::int
LIMIT 5;
