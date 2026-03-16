import 'package:fhir_r4/fhir_r4.dart';

// -- Sample FHIR resources for Exercise 06 (Data Access) --

final _encounter1 = <String, dynamic>{
  'resourceType': 'Encounter',
  'id': 'enc-1',
  'status': 'finished',
  'class': {
    'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
    'code': 'IMP',
    'display': 'inpatient encounter',
  },
  'subject': {'reference': 'Patient/example'},
};

final _encounter2 = <String, dynamic>{
  'resourceType': 'Encounter',
  'id': 'enc-2',
  'status': 'finished',
  'class': {
    'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
    'code': 'AMB',
    'display': 'ambulatory',
  },
  'subject': {'reference': 'Patient/example'},
};

final _medrq1 = <String, dynamic>{
  'resourceType': 'MedicationRequest',
  'id': 'medrq-1',
  'status': 'active',
  'intent': 'order',
  'category': [
    {
      'coding': [
        {
          'system':
              'http://terminology.hl7.org/CodeSystem/medicationrequest-category',
          'code': 'community',
        }
      ]
    }
  ],
  'medicationCodeableConcept': {
    'coding': [
      {
        'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
        'code': '1049502',
        'display':
            '12 HR Oxycodone Hydrochloride 10 MG Extended Release Oral Tablet',
      }
    ]
  },
  'subject': {'reference': 'Patient/example'},
};

final _medrq2 = <String, dynamic>{
  'resourceType': 'MedicationRequest',
  'id': 'medrq-2',
  'status': 'active',
  'intent': 'order',
  'category': [
    {
      'coding': [
        {
          'system':
              'http://terminology.hl7.org/CodeSystem/medicationrequest-category',
          'code': 'inpatient',
        }
      ]
    }
  ],
  'medicationCodeableConcept': {
    'coding': [
      {
        'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
        'code': '582620',
        'display': 'Nizatidine 150 MG Oral Capsule',
      }
    ]
  },
  'subject': {'reference': 'Patient/example'},
};

final _obs1 = <String, dynamic>{
  'resourceType': 'Observation',
  'id': 'obs-1',
  'status': 'final',
  'category': [
    {
      'coding': [
        {
          'system':
              'http://terminology.hl7.org/CodeSystem/observation-category',
          'code': 'vital-signs',
          'display': 'Vital Signs',
        }
      ]
    }
  ],
  'code': {
    'coding': [
      {
        'system': 'http://loinc.org',
        'code': '85354-9',
        'display': 'Blood pressure panel',
      }
    ]
  },
  'subject': {'reference': 'Patient/example'},
  'valueQuantity': {
    'value': 120,
    'unit': 'mmHg',
    'system': 'http://unitsofmeasure.org',
    'code': 'mm[Hg]',
  },
};

final _obs2 = <String, dynamic>{
  'resourceType': 'Observation',
  'id': 'obs-2',
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
  'valueQuantity': {
    'value': 14.0,
    'unit': 'g/dL',
    'system': 'http://unitsofmeasure.org',
    'code': 'g/dL',
  },
};

final _obs3 = <String, dynamic>{
  'resourceType': 'Observation',
  'id': 'obs-3',
  'status': 'final',
  'category': [
    {
      'coding': [
        {
          'system':
              'http://terminology.hl7.org/CodeSystem/observation-category',
          'code': 'social-history',
          'display': 'Social History',
        }
      ]
    }
  ],
  'code': {
    'coding': [
      {
        'system': 'http://loinc.org',
        'code': '72166-2',
        'display': 'Tobacco smoking status',
      }
    ]
  },
  'subject': {'reference': 'Patient/example'},
  'valueCodeableConcept': {
    'coding': [
      {
        'system': 'http://snomed.info/sct',
        'code': '266919005',
        'display': 'Never smoked tobacco',
      }
    ]
  },
};

// -- Patient data (reuse from Exercise 05) --

final _patient06 = <String, dynamic>{
  'resourceType': 'Patient',
  'id': 'example',
  'gender': 'male',
  'birthDate': '1974-12-25',
};

// -- Context: resources keyed by type, plus value set expansions --

final context06 = <String, dynamic>{
  'Patient': _patient06,
  'Encounter': [_encounter1, _encounter2],
  'MedicationRequest': [_medrq1, _medrq2],
  'Observation': [_obs1, _obs2, _obs3],
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

final exercises06 = <String, dynamic>{
  'Patient': Patient.fromJson(_patient06),
  'Encounters': [_encounter1, _encounter2],
  'Inpatient Encounters': [_encounter1],
  'Medication Requests': [_medrq1, _medrq2],
  'Community Medication Requests': [_medrq1],
  'Observations': [_obs1, _obs2, _obs3],
  'Vital Signs': [_obs1],
  'Laboratory Results': [_obs2],
};
