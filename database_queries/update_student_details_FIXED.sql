-- CORRECTED UPDATE STUDENT DETAILS
-- Fixes Gender lookup and other NULL fields

BEGIN;

-- GNM 3rd YEAR STUDENT DETAILS_2023-2026 (28 students)

-- Student 1001
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1001';

-- Student 1002
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1002';

-- Student 1003
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1003';

-- Student 1004
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1004';

-- Student 1005
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1005';

-- Student 1006
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
  updated_at = NOW()
WHERE admission_no = '1006';

-- Student 1007
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1007';

-- Student 1008
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1008';

-- Student 1009
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1009';

-- Student 1010
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1010';

-- Student 1011
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1011';

-- Student 1012
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
  updated_at = NOW()
WHERE admission_no = '1012';

-- Student 1013
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1013';

-- Student 1014
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1014';

-- Student 1015
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1015';

-- Student 1016
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1016';

-- Student 1017
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
  updated_at = NOW()
WHERE admission_no = '1017';

-- Student 1018
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1018';

-- Student 1019
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
  updated_at = NOW()
WHERE admission_no = '1019';

-- Student 1020
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1020';

-- Student 1021
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1021';

-- Student 1022
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1022';

-- Student 1023
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1023';

-- Student 1024
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1024';

-- Student 1025
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1025';

-- Student 1026
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1026';

-- Student 1027
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
  updated_at = NOW()
WHERE admission_no = '1027';

-- Student 1028
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1028';

-- GNM 2nd YEAR STUDENT DETAILS_2024-2027 updated (33 students)

-- Student 1029
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
  updated_at = NOW()
WHERE admission_no = '1029';

-- Student 1030
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
  updated_at = NOW()
WHERE admission_no = '1030';

-- Student 1031
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1031';

-- Student 1032
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
  updated_at = NOW()
WHERE admission_no = '1032';

-- Student 1033
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1033';

-- Student 1034
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1034';

-- Student 1035
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1035';

-- Student 1036
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1036';

-- Student 1037
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1037';

-- Student 1038
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1038';

-- Student 1039
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1039';

-- Student 1040
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1040';

-- Student 1041
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1041';

-- Student 1042
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1042';

-- Student 1043
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1043';

-- Student 1044
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1044';

-- Student 1045
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1045';

-- Student 1046
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1046';

-- Student 1047
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1047';

-- Student 1048
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1048';

-- Student 1049
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1049';

-- Student 1050
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1050';

-- Student 1051
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1051';

-- Student 1052
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1052';

-- Student 1053
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
  updated_at = NOW()
WHERE admission_no = '1053';

-- Student 1054
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
  updated_at = NOW()
WHERE admission_no = '1054';

-- Student 1055
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
  updated_at = NOW()
WHERE admission_no = '1055';

-- Student 1056
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
  updated_at = NOW()
WHERE admission_no = '1056';

-- Student 1057
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1057';

-- Student 1058
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1058';

-- Student 1059
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1059';

-- Student 1060
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'F'),
  updated_at = NOW()
WHERE admission_no = '1060';

-- Student 1061
UPDATE "Acadix_studentregistration"
SET
  gender_id = (SELECT id FROM "Acadix_gender" WHERE gender_code = 'M'),
  updated_at = NOW()
WHERE admission_no = '1061';

COMMIT;

-- Verification
SELECT s.admission_no, s.first_name, g.gender_code as gender
FROM "Acadix_studentregistration" s
LEFT JOIN "Acadix_gender" g ON s.gender_id = g.id
WHERE s.admission_no BETWEEN '1001' AND '1061'
ORDER BY s.admission_no::int LIMIT 10;
