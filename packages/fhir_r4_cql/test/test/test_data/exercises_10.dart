import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:ucum/ucum.dart' show ValidatedQuantity;

// -- Exercise 10: Lung Cancer Screening Decision Support --
//
// Scenario: Former-Smoker
// - Age 62 (born 1964-01-01), within 55-80 range
// - Former smoker (SNOMED 8517006), quit 2015-01-01
// - Smoked 1 pack/day from 1980-01-01 to 2015-01-01 (~35 pack-years)
// - No lung cancer diagnosis
// - No chest CT in past year
// → Inclusion Criteria = true, Exclusion Criteria = false

final _patient10 = <String, dynamic>{
  'resourceType': 'Patient',
  'id': 'former-smoker',
  'gender': 'male',
  'birthDate': '1964-01-01',
};

// Smoking status observation: Former Smoker with effective period and component
final _smokingObs = <String, dynamic>{
  'resourceType': 'Observation',
  'id': 'smoking-1',
  'status': 'final',
  'code': {
    'coding': [
      {
        'system': 'http://loinc.org',
        'code': '72166-2',
        'display': 'Tobacco smoking status',
      }
    ]
  },
  'subject': {'reference': 'Patient/former-smoker'},
  'issued': '2020-01-15T10:00:00Z',
  'valueCodeableConcept': {
    'coding': [
      {
        'system': 'http://snomed.info/sct',
        'code': '8517006',
        'display': 'Former smoker',
      }
    ]
  },
  'effectivePeriod': {
    'start': '1980-01-01',
    'end': '2015-01-01',
  },
  'component': [
    {
      'code': {
        'coding': [
          {
            'system': 'http://loinc.org',
            'code': '8663-7',
            'display': 'packs per day',
          }
        ]
      },
      'valueQuantity': {
        'value': 1,
        'unit': '{packs}/d',
      },
    }
  ],
};

// Context with value set expansions

final context10 = <String, dynamic>{
  'Patient': _patient10,
  'Observation': [_smokingObs],
  'Condition': <Map<String, dynamic>>[],
  'Procedure': <Map<String, dynamic>>[],
  '_valueSets': <String, dynamic>{
    // Smoking Status value set — includes tobacco smoking status code
    'http://hl7.org/fhir/us/core/ValueSet/us-core-observation-smokingstatus': [
      {
        'system': 'http://loinc.org',
        'code': '72166-2',
      }
    ],
    // Current Smoker value set
    'http://example.org/fhir/ValueSet/currentsmoker': [
      {
        'system': 'http://snomed.info/sct',
        'code': '449868002',
        'display': 'Current every day smoker',
      },
      {
        'system': 'http://snomed.info/sct',
        'code': '428041000124106',
        'display': 'Current some day smoker',
      },
    ],
    // Lung Cancer value set
    'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1116.89': [
      {
        'system': 'http://snomed.info/sct',
        'code': '254637007',
        'display': 'Non-small cell lung cancer',
      },
    ],
    // Chest CT value set
    'http://example.org/fhir/ValueSet/chest-ct-procedure': [
      {
        'system': 'http://snomed.info/sct',
        'code': '241615005',
        'display': 'CT of chest',
      },
    ],
    // Condition Clinical Status Active
    'http://example.org/fhir/ValueSet/conditionclinicalstatusactive': [
      {
        'system': 'http://terminology.hl7.org/CodeSystem/condition-clinical',
        'code': 'active',
      },
    ],
  },
};

// -- Expected results --
// Compute expected age dynamically since it depends on the current date
int _expectedAge() {
  final now = DateTime.now();
  // Born 1964-01-01
  int age = now.year - 1964;
  if (now.month < 1 || (now.month == 1 && now.day < 1)) {
    age--;
  }
  return age;
}

// Pack-years calculation:
// effectivePeriod: 1980-01-01 to 2015-01-01
// Duration in days = ~12784 days (35 years)
// PacksPerDay = 1
// PacksPerDay * (DurationInDays / 365.25) = 1 * (12784 / 365.25) ≈ 34.99
// Round(34.99) = 35
int _expectedPackYears() {
  final start = DateTime(1980, 1, 1);
  final end = DateTime(2015, 1, 1);
  final days = end.difference(start).inDays;
  final packYears = (1 * (days / 365.25));
  return packYears.round();
}

final exercises10 = <String, dynamic>{
  'Patient age in years based on date of birth': CqlInteger(_expectedAge()),
  'Smoking status observation': [_smokingObs],
  'Lung cancer diagnosis': <dynamic>[],
  'Chest CT procedure': <dynamic>[],
  '55 through 80': CqlBoolean(true),
  'Most recent smoking status observation': _smokingObs,
  'Current smoker observation': null,
  'Former smoker observation': _smokingObs,
  'Is current smoker': CqlBoolean(false),
  'Is former smoker who quit within past 15 years': CqlBoolean(true),
  'Pack-years':
      ValidatedQuantity.fromNumber(_expectedPackYears(), unit: '{Pack-years}'),
  'Has 30 pack-year smoking history': CqlBoolean(true),
  'Has lung cancer': CqlBoolean(false),
  'Had chest CT in past year': CqlBoolean(false),
  'Inclusion Criteria': CqlBoolean(true),
  'Exclusion Criteria': CqlBoolean(false),
};
