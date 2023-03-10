.output stdout
.mode column

SELECT td.PREF_NAME, COUNT(a.STANDARD_VALUE)
FROM TARGET_DICTIONARY td, ASSAYS ass, ACTIVITIES a
WHERE a.STANDARD_UNITS = 'nM' AND
    a.STANDARD_TYPE = 'Ki' AND
    a.ASSAY_ID = ass.ASSAY_ID AND
    ass.TID = td.TID AND
    td.PREF_NAME IS NOT NULL
GROUP BY td.PREF_NAME
ORDER BY COUNT(a.STANDARD_VALUE) DESC
LIMIT 11;

/*
pref_name                       COUNT(a.STANDARD_VALUE)
------------------------------  -----------------------
Unchecked                       34485
Dopamine D2 receptor            15087
Carbonic anhydrase II           11515
Adenosine A1 receptor           10930
Mu opioid receptor              10436
Serotonin 1a (5-HT1a) receptor  10359
Carbonic anhydrase I            10308
Adenosine A2a receptor          9429
Kappa opioid receptor           7981
Delta opioid receptor           7957
Histamine H3 receptor           7559
*/


.mode csv

.output Dopamine_D2_receptor.csv
SELECT cs.CANONICAL_SMILES as 'SMILES', a.STANDARD_VALUE as 'Ki (nM)'
FROM TARGET_DICTIONARY td, ASSAYS ass, ACTIVITIES a, COMPOUND_STRUCTURES cs
WHERE a.STANDARD_UNITS = 'nM' AND
    a.STANDARD_TYPE = 'Ki' AND
    a.ASSAY_ID = ass.ASSAY_ID AND
    ass.TID = td.TID AND
    cs.MOLREGNO = a.MOLREGNO AND
    td.PREF_NAME = 'Dopamine D2 receptor';

.output Carbonic_anhydrase_II.csv
SELECT cs.CANONICAL_SMILES as 'SMILES', a.STANDARD_VALUE as 'Ki (nM)'
FROM TARGET_DICTIONARY td, ASSAYS ass, ACTIVITIES a, COMPOUND_STRUCTURES cs
WHERE a.STANDARD_UNITS = 'nM' AND
    a.STANDARD_TYPE = 'Ki' AND
    a.ASSAY_ID = ass.ASSAY_ID AND
    ass.TID = td.TID AND
    cs.MOLREGNO = a.MOLREGNO AND
    td.PREF_NAME = 'Carbonic anhydrase II';

.output Adenosine_A1_receptor.csv
SELECT cs.CANONICAL_SMILES as 'SMILES', a.STANDARD_VALUE as 'Ki (nM)'
FROM TARGET_DICTIONARY td, ASSAYS ass, ACTIVITIES a, COMPOUND_STRUCTURES cs
WHERE a.STANDARD_UNITS = 'nM' AND
    a.STANDARD_TYPE = 'Ki' AND
    a.ASSAY_ID = ass.ASSAY_ID AND
    ass.TID = td.TID AND
    cs.MOLREGNO = a.MOLREGNO AND
    td.PREF_NAME = 'Adenosine A1 receptor';

.output Mu_opioid_receptor.csv
SELECT cs.CANONICAL_SMILES as 'SMILES', a.STANDARD_VALUE as 'Ki (nM)'
FROM TARGET_DICTIONARY td, ASSAYS ass, ACTIVITIES a, COMPOUND_STRUCTURES cs
WHERE a.STANDARD_UNITS = 'nM' AND
    a.STANDARD_TYPE = 'Ki' AND
    a.ASSAY_ID = ass.ASSAY_ID AND
    ass.TID = td.TID AND
    cs.MOLREGNO = a.MOLREGNO AND
    td.PREF_NAME = 'Mu opioid receptor';

.output Serotonin_1a_(5-HT1a)_receptor.csv
SELECT cs.CANONICAL_SMILES as 'SMILES', a.STANDARD_VALUE as 'Ki (nM)'
FROM TARGET_DICTIONARY td, ASSAYS ass, ACTIVITIES a, COMPOUND_STRUCTURES cs
WHERE a.STANDARD_UNITS = 'nM' AND
    a.STANDARD_TYPE = 'Ki' AND
    a.ASSAY_ID = ass.ASSAY_ID AND
    ass.TID = td.TID AND
    cs.MOLREGNO = a.MOLREGNO AND
    td.PREF_NAME = 'Serotonin 1a (5-HT1a) receptor';

.output Carbonic_anhydrase_I.csv
SELECT cs.CANONICAL_SMILES as 'SMILES', a.STANDARD_VALUE as 'Ki (nM)'
FROM TARGET_DICTIONARY td, ASSAYS ass, ACTIVITIES a, COMPOUND_STRUCTURES cs
WHERE a.STANDARD_UNITS = 'nM' AND
    a.STANDARD_TYPE = 'Ki' AND
    a.ASSAY_ID = ass.ASSAY_ID AND
    ass.TID = td.TID AND
    cs.MOLREGNO = a.MOLREGNO AND
    td.PREF_NAME = 'Carbonic anhydrase I';

.output Adenosine_A2a_receptor.csv
SELECT cs.CANONICAL_SMILES as 'SMILES', a.STANDARD_VALUE as 'Ki (nM)'
FROM TARGET_DICTIONARY td, ASSAYS ass, ACTIVITIES a, COMPOUND_STRUCTURES cs
WHERE a.STANDARD_UNITS = 'nM' AND
    a.STANDARD_TYPE = 'Ki' AND
    a.ASSAY_ID = ass.ASSAY_ID AND
    ass.TID = td.TID AND
    cs.MOLREGNO = a.MOLREGNO AND
    td.PREF_NAME = 'Adenosine A2a receptor';

.output Kappa_opioid_receptor.csv
SELECT cs.CANONICAL_SMILES as 'SMILES', a.STANDARD_VALUE as 'Ki (nM)'
FROM TARGET_DICTIONARY td, ASSAYS ass, ACTIVITIES a, COMPOUND_STRUCTURES cs
WHERE a.STANDARD_UNITS = 'nM' AND
    a.STANDARD_TYPE = 'Ki' AND
    a.ASSAY_ID = ass.ASSAY_ID AND
    ass.TID = td.TID AND
    cs.MOLREGNO = a.MOLREGNO AND
    td.PREF_NAME = 'Kappa opioid receptor';

.output Delta_opioid_receptor.csv
SELECT cs.CANONICAL_SMILES as 'SMILES', a.STANDARD_VALUE as 'Ki (nM)'
FROM TARGET_DICTIONARY td, ASSAYS ass, ACTIVITIES a, COMPOUND_STRUCTURES cs
WHERE a.STANDARD_UNITS = 'nM' AND
    a.STANDARD_TYPE = 'Ki' AND
    a.ASSAY_ID = ass.ASSAY_ID AND
    ass.TID = td.TID AND
    cs.MOLREGNO = a.MOLREGNO AND
    td.PREF_NAME = 'Delta opioid receptor';

.output Histamine_H3_receptor.csv
SELECT cs.CANONICAL_SMILES as 'SMILES', a.STANDARD_VALUE as 'Ki (nM)'
FROM TARGET_DICTIONARY td, ASSAYS ass, ACTIVITIES a, COMPOUND_STRUCTURES cs
WHERE a.STANDARD_UNITS = 'nM' AND
    a.STANDARD_TYPE = 'Ki' AND
    a.ASSAY_ID = ass.ASSAY_ID AND
    ass.TID = td.TID AND
    cs.MOLREGNO = a.MOLREGNO AND
    td.PREF_NAME = 'Histamine H3 receptor';
