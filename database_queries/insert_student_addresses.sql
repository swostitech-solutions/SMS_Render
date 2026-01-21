-- INSERT STUDENT ADDRESSES
-- Creates address records for 61 students

BEGIN;

-- GNM 3rd YEAR STUDENT DETAILS_2023-2026 (28 students)

-- Student 1001
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1001'),
  1, 1, 'STUDENT',
  'AT-Malibereni, po-kainfulia, ps-fategarh, nayagarh, odisha - 752063', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1001'),
  'AT-Malibereni, po-kainfulia, ps-fategarh, nayagarh, odisha - 752063', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1001'),
  true, 1, NOW(), NOW()
);

-- Student 1002
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1002'),
  1, 1, 'STUDENT',
  'Plot no.335 ,Saheed Nagar, Bhubaneswar', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1002'),
  'Plot no.335 ,Saheed Nagar, Bhubaneswar', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1002'),
  true, 1, NOW(), NOW()
);

-- Student 1003
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1003'),
  1, 1, 'STUDENT',
  'at/po- mendhasala , khordha , odisha -752054', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1003'),
  'at/po- mendhasala , khordha , odisha -752054', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1003'),
  true, 1, NOW(), NOW()
);

-- Student 1004
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1004'),
  1, 1, 'STUDENT',
  'At/post-Damkuda,dist-sundargarh, Odisha,pin-770014', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1004'),
  'At/post-Damkuda,dist-sundargarh, Odisha,pin-770014', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1004'),
  true, 1, NOW(), NOW()
);

-- Student 1005
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1005'),
  1, 1, 'STUDENT',
  'Sitarama basti, khandagiri, Bhubaneswar , odisha - 751030', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1005'),
  'Sitarama basti, khandagiri, Bhubaneswar , odisha - 751030', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1005'),
  true, 1, NOW(), NOW()
);

-- Student 1006
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1006'),
  1, 1, 'STUDENT',
  'Chandiput , Gajapati , odisha - 761017', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1006'),
  'Chandiput , Gajapati , odisha - 761017', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1006'),
  true, 1, NOW(), NOW()
);

-- Student 1007
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1007'),
  1, 1, 'STUDENT',
  'At-Gawardhara po-kiralaga Block-subdega Dist-sundargarh', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1007'),
  'At-Gawardhara po-kiralaga Block-subdega Dist-sundargarh', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1007'),
  true, 1, NOW(), NOW()
);

-- Student 1008
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1008'),
  1, 1, 'STUDENT',
  'Aldia, Barttana, Mayurbhanj, odisha -757052', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1008'),
  'Aldia, Barttana, Mayurbhanj, odisha -757052', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1008'),
  true, 1, NOW(), NOW()
);

-- Student 1009
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1009'),
  1, 1, 'STUDENT',
  'M.DAKHINGAON, PO+PS-RUNIKHATA, DIST-CHIRANG, ASSAM', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1009'),
  'M.DAKHINGAON, PO+PS-RUNIKHATA, DIST-CHIRANG, ASSAM', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1009'),
  true, 1, NOW(), NOW()
);

-- Student 1010
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1010'),
  1, 1, 'STUDENT',
  'Biribandha, uttarkula, cuttauck, pin no.-754134', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1010'),
  'Biribandha, uttarkula, cuttauck, pin no.-754134', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1010'),
  true, 1, NOW(), NOW()
);

-- Student 1011
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1011'),
  1, 1, 'STUDENT',
  'Hariharpur , odagaon, Nayagarh , odisha - 752080', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1011'),
  'Hariharpur , odagaon, Nayagarh , odisha - 752080', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1011'),
  true, 1, NOW(), NOW()
);

-- Student 1012
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1012'),
  1, 1, 'STUDENT',
  'Akadal, chandrapur, Cuttack, odisha,pin- 754037', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1012'),
  'Akadal, chandrapur, Cuttack, odisha,pin- 754037', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1012'),
  true, 1, NOW(), NOW()
);

-- Student 1013
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1013'),
  1, 1, 'STUDENT',
  'Chandaka , khorda , odisha -752020', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1013'),
  'Chandaka , khorda , odisha -752020', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1013'),
  true, 1, NOW(), NOW()
);

-- Student 1014
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1014'),
  1, 1, 'STUDENT',
  'Pritipur,santipada, jajpur, odisha, 755013', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1014'),
  'Pritipur,santipada, jajpur, odisha, 755013', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1014'),
  true, 1, NOW(), NOW()
);

-- Student 1015
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1015'),
  1, 1, 'STUDENT',
  'At-kiralaga po-kiralaga block- subdega dist-sindargarh', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1015'),
  'At-kiralaga po-kiralaga block- subdega dist-sindargarh', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1015'),
  true, 1, NOW(), NOW()
);

-- Student 1016
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1016'),
  1, 1, 'STUDENT',
  'Khandagiribari  near Arnapurana microfinance, pin-751030', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1016'),
  'Khandagiribari  near Arnapurana microfinance, pin-751030', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1016'),
  true, 1, NOW(), NOW()
);

-- Student 1017
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1017'),
  1, 1, 'STUDENT',
  'At/Po- ODASH, Ps-Khamar, Pallahara, District- Angul, Pin- 759118', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1017'),
  'At/Po- ODASH, Ps-Khamar, Pallahara, District- Angul, Pin- 759118', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1017'),
  true, 1, NOW(), NOW()
);

-- Student 1018
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1018'),
  1, 1, 'STUDENT',
  'At-galaganda po-jiranga bl-rayagada dist-gajapati', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1018'),
  'At-galaganda po-jiranga bl-rayagada dist-gajapati', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1018'),
  true, 1, NOW(), NOW()
);

-- Student 1019
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1019'),
  1, 1, 'STUDENT',
  'AT/PO - HATIGARH , SP-RAIBANIA,BALESWAR , ODISHA-756033', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1019'),
  'AT/PO - HATIGARH , SP-RAIBANIA,BALESWAR , ODISHA-756033', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1019'),
  true, 1, NOW(), NOW()
);

-- Student 1020
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1020'),
  1, 1, 'STUDENT',
  'at- modanpur , post -raipur , dist- kalahandi pin - 766102', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1020'),
  'at- modanpur , post -raipur , dist- kalahandi pin - 766102', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1020'),
  true, 1, NOW(), NOW()
);

-- Student 1021
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1021'),
  1, 1, 'STUDENT',
  'kanas, at_post _kanas ,dist _puri, pin _752017', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1021'),
  'kanas, at_post _kanas ,dist _puri, pin _752017', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1021'),
  true, 1, NOW(), NOW()
);

-- Student 1022
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1022'),
  1, 1, 'STUDENT',
  'at-bhabasama po- rauti, ganjam, odisha - 761121', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1022'),
  'at-bhabasama po- rauti, ganjam, odisha - 761121', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1022'),
  true, 1, NOW(), NOW()
);

-- Student 1023
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1023'),
  1, 1, 'STUDENT',
  'AT-Barajhuli, po-beeramchandrapur , dist-boud , odisha - 762024', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1023'),
  'AT-Barajhuli, po-beeramchandrapur , dist-boud , odisha - 762024', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1023'),
  true, 1, NOW(), NOW()
);

-- Student 1024
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1024'),
  1, 1, 'STUDENT',
  'at/po- bhurunga , jajpur , odisha - 755017', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1024'),
  'at/po- bhurunga , jajpur , odisha - 755017', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1024'),
  true, 1, NOW(), NOW()
);

-- Student 1025
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1025'),
  1, 1, 'STUDENT',
  'at/po- jampada , jajpur , odisha - 751005', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1025'),
  'at/po- jampada , jajpur , odisha - 751005', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1025'),
  true, 1, NOW(), NOW()
);

-- Student 1026
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1026'),
  1, 1, 'STUDENT',
  'at/po-dangamala, ps - daringbadi, kandhamal, odisha - 762104', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1026'),
  'at/po-dangamala, ps - daringbadi, kandhamal, odisha - 762104', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1026'),
  true, 1, NOW(), NOW()
);

-- Student 1027
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1027'),
  1, 1, 'STUDENT',
  'at/po- judabali, ps - kotagarh, kandhamal, odisha -762105', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1027'),
  'at/po- judabali, ps - kotagarh, kandhamal, odisha -762105', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1027'),
  true, 1, NOW(), NOW()
);

-- Student 1028
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1028'),
  1, 1, 'STUDENT',
  'AT/PO- Jyotipur, dist- kendujhar , odisha - 758046', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1028'),
  'AT/PO- Jyotipur, dist- kendujhar , odisha - 758046', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1028'),
  true, 1, NOW(), NOW()
);

-- GNM 2nd YEAR STUDENT DETAILS_2024-2027 updated (33 students)

-- Student 1029
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1029'),
  1, 1, 'STUDENT',
  'AT - KACHARAPARA 3 DNK , PO - TURUDIHI , THANA - KUNDAI, BLOCK - RAIGHAR , DIST - NABARANGPUR , ODISHA', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1029'),
  'AT - KACHARAPARA 3 DNK , PO - TURUDIHI , THANA - KUNDAI, BLOCK - RAIGHAR , DIST - NABARANGPUR , ODISHA', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1029'),
  true, 1, NOW(), NOW()
);

-- Student 1030
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1030'),
  1, 1, 'STUDENT',
  'At- Mirzapur, Po- Dasipur, sub district - Rajkanika, District - Kendrapara, state- Odisha , Pin code- 754219', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1030'),
  'At- Mirzapur, Po- Dasipur, sub district - Rajkanika, District - Kendrapara, state- Odisha , Pin code- 754219', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1030'),
  true, 1, NOW(), NOW()
);

-- Student 1031
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1031'),
  1, 1, 'STUDENT',
  'Dist -Boudh, village -charichhak', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1031'),
  'Dist -Boudh, village -charichhak', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1031'),
  true, 1, NOW(), NOW()
);

-- Student 1032
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1032'),
  1, 1, 'STUDENT',
  'AT-Bajrakot,po-Baunsgarh,ps-Ranapur, Nayagarh, Orissa,752026', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1032'),
  'AT-Bajrakot,po-Baunsgarh,ps-Ranapur, Nayagarh, Orissa,752026', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1032'),
  true, 1, NOW(), NOW()
);

-- Student 1033
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1033'),
  1, 1, 'STUDENT',
  'Sparsh hospital spring city Apartment
Girls hostel b9', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1033'),
  'Sparsh hospital spring city Apartment
Girls hostel b9', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1033'),
  true, 1, NOW(), NOW()
);

-- Student 1034
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1034'),
  1, 1, 'STUDENT',
  'Ramchandrapur,gadajatasahi, astaranga,puri,odisha', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1034'),
  'Ramchandrapur,gadajatasahi, astaranga,puri,odisha', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1034'),
  true, 1, NOW(), NOW()
);

-- Student 1035
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1035'),
  1, 1, 'STUDENT',
  'Bhuban, Dhenkanal,', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1035'),
  'Bhuban, Dhenkanal,', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1035'),
  true, 1, NOW(), NOW()
);

-- Student 1036
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1036'),
  1, 1, 'STUDENT',
  'Banpur, khodha', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1036'),
  'Banpur, khodha', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1036'),
  true, 1, NOW(), NOW()
);

-- Student 1037
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1037'),
  1, 1, 'STUDENT',
  'Jogeswerpur, Titingapada', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1037'),
  'Jogeswerpur, Titingapada', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1037'),
  true, 1, NOW(), NOW()
);

-- Student 1038
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1038'),
  1, 1, 'STUDENT',
  'Raitala Gondia Dhenkanal', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1038'),
  'Raitala Gondia Dhenkanal', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1038'),
  true, 1, NOW(), NOW()
);

-- Student 1039
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1039'),
  1, 1, 'STUDENT',
  'At- limgaon, po- turlakhaman,block- kesinga , pin- 766012, odisha', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1039'),
  'At- limgaon, po- turlakhaman,block- kesinga , pin- 766012, odisha', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1039'),
  true, 1, NOW(), NOW()
);

-- Student 1040
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1040'),
  1, 1, 'STUDENT',
  'Chitmishra,paiksida,jaleswar,Balasore,756032', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1040'),
  'Chitmishra,paiksida,jaleswar,Balasore,756032', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1040'),
  true, 1, NOW(), NOW()
);

-- Student 1041
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1041'),
  1, 1, 'STUDENT',
  'At-khulisha,po-amnakud,block- baliPatna dist- khordha', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1041'),
  'At-khulisha,po-amnakud,block- baliPatna dist- khordha', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1041'),
  true, 1, NOW(), NOW()
);

-- Student 1042
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1042'),
  1, 1, 'STUDENT',
  'At-mahulagadia.po-dhenkikote .ps-Ghatgaon.DIST_kendujhar.STATE_odisha .PIN_758029', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1042'),
  'At-mahulagadia.po-dhenkikote .ps-Ghatgaon.DIST_kendujhar.STATE_odisha .PIN_758029', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1042'),
  true, 1, NOW(), NOW()
);

-- Student 1043
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1043'),
  1, 1, 'STUDENT',
  'Limgaon , Turlakhaman , Kalahandi, odisha', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1043'),
  'Limgaon , Turlakhaman , Kalahandi, odisha', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1043'),
  true, 1, NOW(), NOW()
);

-- Student 1044
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1044'),
  1, 1, 'STUDENT',
  'At- badasila, po-  katakana , ps- bayree, dt- jajpur', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1044'),
  'At- badasila, po-  katakana , ps- bayree, dt- jajpur', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1044'),
  true, 1, NOW(), NOW()
);

-- Student 1045
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1045'),
  1, 1, 'STUDENT',
  'At-Singharpur ,post-parahat , Dist- Jagatsinghpur,Pin-754108', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1045'),
  'At-Singharpur ,post-parahat , Dist- Jagatsinghpur,Pin-754108', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1045'),
  true, 1, NOW(), NOW()
);

-- Student 1046
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1046'),
  1, 1, 'STUDENT',
  'At-gopa ,po-hatadihi, ps-nandipada, dis-keonjhar ,pn-758083', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1046'),
  'At-gopa ,po-hatadihi, ps-nandipada, dis-keonjhar ,pn-758083', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1046'),
  true, 1, NOW(), NOW()
);

-- Student 1047
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1047'),
  1, 1, 'STUDENT',
  'Mulabasanta,kanas,puri', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1047'),
  'Mulabasanta,kanas,puri', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1047'),
  true, 1, NOW(), NOW()
);

-- Student 1048
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1048'),
  1, 1, 'STUDENT',
  'Tikili pada  Dist-Sundargarh', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1048'),
  'Tikili pada  Dist-Sundargarh', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1048'),
  true, 1, NOW(), NOW()
);

-- Student 1049
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1049'),
  1, 1, 'STUDENT',
  'Bindhyagi khordha ps-chandaka city- Bhubaneswar pin-752054', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1049'),
  'Bindhyagi khordha ps-chandaka city- Bhubaneswar pin-752054', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1049'),
  true, 1, NOW(), NOW()
);

-- Student 1050
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1050'),
  1, 1, 'STUDENT',
  'At/po-Tikili pada,Bargaon, Sundargarh', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1050'),
  'At/po-Tikili pada,Bargaon, Sundargarh', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1050'),
  true, 1, NOW(), NOW()
);

-- Student 1051
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1051'),
  1, 1, 'STUDENT',
  'AT/PO-OLIKON
PS - NIMAPADA
DIST - PURI
PIN -752114', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1051'),
  'AT/PO-OLIKON
PS - NIMAPADA
DIST - PURI
PIN -752114', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1051'),
  true, 1, NOW(), NOW()
);

-- Student 1052
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1052'),
  1, 1, 'STUDENT',
  'Gobindpur Nuagan, Sahangagopalpur,Banki, Cuttack', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1052'),
  'Gobindpur Nuagan, Sahangagopalpur,Banki, Cuttack', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1052'),
  true, 1, NOW(), NOW()
);

-- Student 1053
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1053'),
  1, 1, 'STUDENT',
  'Dist - Balangir .po - Rinbachan
Village - Bandabahal', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1053'),
  'Dist - Balangir .po - Rinbachan
Village - Bandabahal', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1053'),
  true, 1, NOW(), NOW()
);

-- Student 1054
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1054'),
  1, 1, 'STUDENT',
  'Balliguda,kandhmal', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1054'),
  'Balliguda,kandhmal', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1054'),
  true, 1, NOW(), NOW()
);

-- Student 1055
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1055'),
  1, 1, 'STUDENT',
  'At:- pindaul, po:-bodokolakote, via:-gumma, dist:-gajapati, state:-odisha, pin:-761207', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1055'),
  'At:- pindaul, po:-bodokolakote, via:-gumma, dist:-gajapati, state:-odisha, pin:-761207', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1055'),
  true, 1, NOW(), NOW()
);

-- Student 1056
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1056'),
  1, 1, 'STUDENT',
  'Dist-Baleswar
Po-Avana
State-Odisha
Village-Debendrapur', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1056'),
  'Dist-Baleswar
Po-Avana
State-Odisha
Village-Debendrapur', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1056'),
  true, 1, NOW(), NOW()
);

-- Student 1057
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1057'),
  1, 1, 'STUDENT',
  'At -Simula Patna ,PO -Chandaka ,Dist Khordha,Pin -754005', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1057'),
  'At -Simula Patna ,PO -Chandaka ,Dist Khordha,Pin -754005', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1057'),
  true, 1, NOW(), NOW()
);

-- Student 1058
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1058'),
  1, 1, 'STUDENT',
  'At -Jariput Gurum ,Dist Khordha ,Odisha', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1058'),
  'At -Jariput Gurum ,Dist Khordha ,Odisha', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1058'),
  true, 1, NOW(), NOW()
);

-- Student 1059
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1059'),
  1, 1, 'STUDENT',
  'At- Bhingarpur pandasahi, Post-Sasan ,Dist-Khordha , pin-752102', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1059'),
  'At- Bhingarpur pandasahi, Post-Sasan ,Dist-Khordha , pin-752102', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1059'),
  true, 1, NOW(), NOW()
);

-- Student 1061
INSERT INTO "Acadix_address" (
  reference_id, organization_id, branch_id, usertype,
  present_address, present_pincode, present_city, present_state, present_country, present_phone_number,
  permanent_address, permanent_pincode, permanent_city, permanent_state, permanent_country, permanent_phone_number,
  is_active, created_by, created_at, updated_at
) VALUES (
  (SELECT id FROM "Acadix_studentregistration" WHERE admission_no='1061'),
  1, 1, 'STUDENT',
  'At -kantabada ,PO- kantabada ,dist Khordha, Odisha', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1061'),
  'At -kantabada ,PO- kantabada ,dist Khordha, Odisha', '000000', 'Not Specified', 'Not Specified', 'India',
  (SELECT contact_no FROM "Acadix_studentregistration" WHERE admission_no='1061'),
  true, 1, NOW(), NOW()
);

COMMIT;

-- Verification
SELECT COUNT(*) as address_count FROM "Acadix_address" WHERE usertype='STUDENT';

-- Sample addresses
SELECT a.reference_id, s.first_name, s.last_name, a.present_address
FROM "Acadix_address" a
JOIN "Acadix_studentregistration" s ON a.reference_id=s.id
WHERE a.usertype='STUDENT'
LIMIT 5;
