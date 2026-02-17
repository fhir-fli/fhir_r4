import 'package:ucum/ucum.dart' show ValidatedQuantity;

// -- Sample FHIR resources for Exercise 08 (Advanced Queries) --

// Two blood glucose observations with different values
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

final _patient08 = <String, dynamic>{
  'resourceType': 'Patient',
  'id': 'example',
  'gender': 'male',
  'birthDate': '1974-12-25',
};

// -- Context --

final context08 = <String, dynamic>{
  'Patient': _patient08,
  'Observation': [_bgObs1, _bgObs2, _labObs, _prelimObs],
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
        'system':
            'http://terminology.hl7.org/CodeSystem/observation-category',
        'code': 'vital-signs',
      }
    ],
    'http://example.org/fhir/ValueSet/laboratory': [
      {
        'system':
            'http://terminology.hl7.org/CodeSystem/observation-category',
        'code': 'laboratory',
      }
    ],
  },
};

// -- Expected results --

final exercises08 = <String, dynamic>{
  // "Blood Glucose Observations"
  // status in {final, amended} AND value is Quantity AND code ~ "Blood Glucose"
  // => bgObs1, bgObs2 (labObs excluded by code, prelimObs excluded by status)
  'Blood Glucose Observations': [_bgObs1, _bgObs2],

  // "Difference in Blood Glucose Observations"
  // Cartesian product of [bgObs1, bgObs2] × [bgObs1, bgObs2]
  // |120-120|=0, |95-120|=25, |120-95|=25, |95-95|=0
  'Difference in Blood Glucose Observations': [
    ValidatedQuantity.fromNumber(0, unit: 'mg/dL'),
    ValidatedQuantity.fromNumber(25, unit: 'mg/dL'),
    ValidatedQuantity.fromNumber(25, unit: 'mg/dL'),
    ValidatedQuantity.fromNumber(0, unit: 'mg/dL'),
  ],

  // "Greatest Absolute Difference in Blood Glucose Observations"
  // Max of [0, 25, 25, 0] = 25
  'Greatest Absolute Difference in Blood Glucose Observations':
      ValidatedQuantity.fromNumber(25, unit: 'mg/dL'),

  // "Quantitative Laboratory Results"
  // status in {final, amended} AND value is Quantity (no code filter)
  // => bgObs1, bgObs2, labObs
  'Quantitative Laboratory Results': [_bgObs1, _bgObs2, _labObs],
};
