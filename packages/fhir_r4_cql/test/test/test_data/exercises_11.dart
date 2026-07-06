import 'package:fhir_r4_cql/fhir_r4_cql.dart';

// -- Exercise 11: Cervical Cancer Screening Quality Measure --
//
// Scenario: Eligible woman with recent Pap test
// - Female, age 35 (born 1984-06-15)
// - Measurement Period: 2019-01-01 to 2020-01-01
// - AgeInYearsAt(start of MP) = 34, which is in [23, 64]
// - Has Pap test (cervical cytology) with date 2019-03-15 (within 3 years of MP end)
// - No hysterectomy, no congenital absence of cervix
// → Initial Population = true
// → Denominator = true
// → Denominator Exclusion = false
// → Numerator = true (Pap test within 3 years)

final _patient11 = <String, dynamic>{
  'resourceType': 'Patient',
  'id': 'cervical-screen',
  'gender': 'female',
  'birthDate': '1984-06-15',
};

// Pap test observation
final _papTest = <String, dynamic>{
  'resourceType': 'Observation',
  'id': 'pap-1',
  'status': 'final',
  'code': {
    'coding': [
      {
        'system': 'http://loinc.org',
        'code': '10524-7',
        'display': 'Microscopy Cervix/Vaginal',
      }
    ],
  },
  'subject': {'reference': 'Patient/cervical-screen'},
  'effectiveDateTime': '2019-03-15T10:00:00Z',
  'valueString': 'Normal',
};

// Context

final context11 = <String, dynamic>{
  'Patient': _patient11,
  'Observation': [_papTest],
  'Procedure': <Map<String, dynamic>>[],
  'Condition': <Map<String, dynamic>>[],
  // Measurement Period parameter: Interval[@2019-01-01T00:00:00.0, @2020-01-01T00:00:00.0)
  'Measurement Period': CqlInterval(
    low: CqlDateTime.fromString('2019-01-01T00:00:00.0'),
    high: CqlDateTime.fromString('2020-01-01T00:00:00.0'),
    lowClosed: true,
    highClosed: false,
  ),
  '_valueSets': <String, dynamic>{
    // Hysterectomy with No Residual Cervix
    'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.464.1003.198.12.1014':
        [
      {
        'system': 'http://snomed.info/sct',
        'code': '236886002',
        'display': 'Hysterectomy',
      },
    ],
    // Pap Test
    'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.464.1003.108.12.1017':
        [
      {
        'system': 'http://loinc.org',
        'code': '10524-7',
        'display': 'Microscopy Cervix/Vaginal',
      },
    ],
    // HPV Test
    'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.464.1003.110.12.1059':
        [
      {
        'system': 'http://loinc.org',
        'code': '21440-3',
        'display': 'HPV DNA',
      },
    ],
  },
};

// -- Expected results --

final exercises11 = <String, dynamic>{
  // Patient.gender = 'female' AND AgeInYearsAt(start of MP) in [23, 64]
  // AgeInYearsAt(2019-01-01) for birthDate 1984-06-15 = 34 → in [23,64] → true
  'Initial Population': CqlBoolean(true),
  'Denominator': CqlBoolean(true),
  // No hysterectomy, no congenital absence → empty list → exists = false
  'Denominator Exclusion': CqlBoolean(false),
  'Absence of Cervix': <dynamic>[],
  // Pap test on 2019-03-15 ends within 3 years of MP end (2020-01-01) → true
  'Numerator': CqlBoolean(true),
  'Cervical Cytology Within 3 Years': [_papTest],
  // No HPV test
  'HPV Test Within 5 Years for Women Age 30 and Older': <dynamic>[],
};
