import 'package:ucum/ucum.dart' show ValidatedQuantity;

// -- Sample FHIR resources for Exercise 07 (Queries) --

// Two blood glucose observations with different dates and values
final _bgObs1 = <String, dynamic>{
  'resourceType': 'Observation',
  'id': 'bg-1',
  'status': 'final',
  'category': [
    {
      'coding': [
        {
          'system':
              'http://terminology.hl7.org/CodeSystem/observation-category',
          'code': 'laboratory',
          'display': 'Laboratory',
        }
      ]
    }
  ],
  'code': {
    'coding': [
      {
        'system': 'http://loinc.org',
        'code': '2339-0',
        'display': 'Glucose Bld-mCnc',
      }
    ]
  },
  'subject': {'reference': 'Patient/example'},
  'effectiveDateTime': '2021-06-15T10:00:00Z',
  'valueQuantity': {
    'value': 120,
    'unit': 'mg/dL',
    'system': 'http://unitsofmeasure.org',
    'code': 'mg/dL',
  },
};

final _bgObs2 = <String, dynamic>{
  'resourceType': 'Observation',
  'id': 'bg-2',
  'status': 'final',
  'category': [
    {
      'coding': [
        {
          'system':
              'http://terminology.hl7.org/CodeSystem/observation-category',
          'code': 'laboratory',
          'display': 'Laboratory',
        }
      ]
    }
  ],
  'code': {
    'coding': [
      {
        'system': 'http://loinc.org',
        'code': '2339-0',
        'display': 'Glucose Bld-mCnc',
      }
    ]
  },
  'subject': {'reference': 'Patient/example'},
  'effectiveDateTime': '2021-06-10T08:00:00Z',
  'valueQuantity': {
    'value': 95,
    'unit': 'mg/dL',
    'system': 'http://unitsofmeasure.org',
    'code': 'mg/dL',
  },
};

// A lab observation that is NOT blood glucose (hemoglobin)
final _labObs = <String, dynamic>{
  'resourceType': 'Observation',
  'id': 'lab-1',
  'status': 'final',
  'category': [
    {
      'coding': [
        {
          'system':
              'http://terminology.hl7.org/CodeSystem/observation-category',
          'code': 'laboratory',
          'display': 'Laboratory',
        }
      ]
    }
  ],
  'code': {
    'coding': [
      {
        'system': 'http://loinc.org',
        'code': '718-7',
        'display': 'Hemoglobin [Mass/volume] in Blood',
      }
    ]
  },
  'subject': {'reference': 'Patient/example'},
  'effectiveDateTime': '2021-06-12T09:00:00Z',
  'valueQuantity': {
    'value': 14.0,
    'unit': 'g/dL',
    'system': 'http://unitsofmeasure.org',
    'code': 'g/dL',
  },
};

// A preliminary observation (should be excluded by status filter)
final _prelimObs = <String, dynamic>{
  'resourceType': 'Observation',
  'id': 'obs-prelim',
  'status': 'preliminary',
  'category': [
    {
      'coding': [
        {
          'system':
              'http://terminology.hl7.org/CodeSystem/observation-category',
          'code': 'laboratory',
          'display': 'Laboratory',
        }
      ]
    }
  ],
  'code': {
    'coding': [
      {
        'system': 'http://loinc.org',
        'code': '2339-0',
        'display': 'Glucose Bld-mCnc',
      }
    ]
  },
  'subject': {'reference': 'Patient/example'},
  'effectiveDateTime': '2021-06-20T12:00:00Z',
  'valueQuantity': {
    'value': 200,
    'unit': 'mg/dL',
    'system': 'http://unitsofmeasure.org',
    'code': 'mg/dL',
  },
};

// Encounter 1 — has lab results during its period AND a procedure
final _enc1 = <String, dynamic>{
  'resourceType': 'Encounter',
  'id': 'enc-1',
  'status': 'finished',
  'class': {
    'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
    'code': 'IMP',
    'display': 'inpatient encounter',
  },
  'subject': {'reference': 'Patient/example'},
  'period': {
    'start': '2021-06-01T00:00:00Z',
    'end': '2021-06-30T23:59:59Z',
  },
};

// Encounter 2 — no lab results during its period, no procedure
final _enc2 = <String, dynamic>{
  'resourceType': 'Encounter',
  'id': 'enc-2',
  'status': 'finished',
  'class': {
    'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
    'code': 'AMB',
    'display': 'ambulatory',
  },
  'subject': {'reference': 'Patient/example'},
  'period': {
    'start': '2020-01-01T00:00:00Z',
    'end': '2020-01-02T00:00:00Z',
  },
};

// Procedure during enc-1's period
final _proc1 = <String, dynamic>{
  'resourceType': 'Procedure',
  'id': 'proc-1',
  'status': 'completed',
  'code': {
    'coding': [
      {
        'system': 'http://snomed.info/sct',
        'code': '80146002',
        'display': 'Appendectomy',
      }
    ]
  },
  'subject': {'reference': 'Patient/example'},
  'performedDateTime': '2021-06-15T14:00:00Z',
};

final _patient07 = <String, dynamic>{
  'resourceType': 'Patient',
  'id': 'example',
  'gender': 'male',
  'birthDate': '1974-12-25',
};

// -- Context --

final context07 = <String, dynamic>{
  'Patient': _patient07,
  'Encounter': [_enc1, _enc2],
  'Observation': [_bgObs1, _bgObs2, _labObs, _prelimObs],
  'Procedure': [_proc1],
  '_valueSets': <String, dynamic>{
    'http://example.org/fhir/ValueSet/community-medication': [
      {
        'system':
            'http://terminology.hl7.org/CodeSystem/medicationrequest-category',
        'code': 'community',
      }
    ],
    'http://example.org/fhir/ValueSet/vital-sign': [
      {
        'system': 'http://terminology.hl7.org/CodeSystem/observation-category',
        'code': 'vital-signs',
      }
    ],
    'http://example.org/fhir/ValueSet/laboratory': [
      {
        'system': 'http://terminology.hl7.org/CodeSystem/observation-category',
        'code': 'laboratory',
      }
    ],
  },
};

// -- Expected results --
// For now, placeholder — we'll refine after seeing what the engine produces.

final exercises07 = <String, dynamic>{
  // "Final or Amended Quantitative Laboratory Results"
  // All obs with status in {final, amended} and value is Quantity
  // => bgObs1, bgObs2, labObs (not prelimObs because status=preliminary)
  'Final or Amended Quantitative Laboratory Results': [
    _bgObs1,
    _bgObs2,
    _labObs,
  ],
  // "Quantitative Laboratory Encounters"
  // Encounters that have a quantitative lab result during the encounter
  // enc-1 period covers June 2021 — bgObs1, bgObs2, labObs all in June 2021
  // enc-2 period is Jan 2020 — no obs in that period
  'Quantitative Laboratory Encounters': [_enc1],
  'Quantitative Laboratory Encounters (2)': [_enc1],
  'Quantitative Laboratory Encounters (3)': [_enc1],
  // "Procedure" — all procedures
  'Procedure': [_proc1],
  // "Encounter Without Procedure"
  // enc-1 has proc1 during its period, enc-2 does not
  'Encounter Without Procedure': [_enc2],
  'Encounter Without Procedure (2)': [_enc2],
  // "Blood Glucose Observations" — sorted by effective desc
  // bgObs1 (June 15) then bgObs2 (June 10) — sorted desc
  'Blood Glucose Observations': [_bgObs1, _bgObs2],
  'Blood Glucose Observations (2)': [_bgObs1, _bgObs2],
  // "Most Recent Blood Glucose" — First of sorted desc = bgObs1
  'Most Recent Blood Glucose': _bgObs1,
  // "Difference Between Two Most Recent Blood Glucose"
  // MR = bgObs1 (120 mg/dL), prior = bgObs2 (95 mg/dL)
  // 120 - 95 = 25 mg/dL
  'Difference Between Two Most Recent Blood Glucose':
      ValidatedQuantity.fromNumber(25, unit: 'mg/dL'),
};
