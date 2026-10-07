import 'package:fhir_r4/fhir_r4.dart';

// -- Patient data with extensions for Exercises09 --
// Reuses the same patient structure as exercises_05 (us-core extensions).

final _patient09 = <String, dynamic>{
  'resourceType': 'Patient',
  'id': 'example',
  'meta': {
    'profile': [
      'http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-patient'
    ]
  },
  'extension': [
    {
      'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race',
      'extension': [
        {
          'url': 'ombCategory',
          'valueCoding': {
            'system': 'urn:oid:2.16.840.1.113883.6.238',
            'code': '2106-3',
            'display': 'White'
          }
        },
        {
          'url': 'ombCategory',
          'valueCoding': {
            'system': 'urn:oid:2.16.840.1.113883.6.238',
            'code': '1002-5',
            'display': 'American Indian or Alaska Native'
          }
        },
        {
          'url': 'ombCategory',
          'valueCoding': {
            'system': 'urn:oid:2.16.840.1.113883.6.238',
            'code': '2028-9',
            'display': 'Asian'
          }
        },
        {
          'url': 'detailed',
          'valueCoding': {
            'system': 'urn:oid:2.16.840.1.113883.6.238',
            'code': '1586-7',
            'display': 'Shoshone'
          }
        },
        {
          'url': 'detailed',
          'valueCoding': {
            'system': 'urn:oid:2.16.840.1.113883.6.238',
            'code': '2036-2',
            'display': 'Filipino'
          }
        },
        {
          'url': 'detailed',
          'valueCoding': {
            'system': 'urn:oid:2.16.840.1.113883.6.238',
            'code': '1735-0',
            'display': 'Alaska Native'
          }
        },
        {'url': 'text', 'valueString': 'Mixed'}
      ]
    },
    {
      'url':
          'http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity',
      'extension': [
        {
          'url': 'ombCategory',
          'valueCoding': {
            'system': 'urn:oid:2.16.840.1.113883.6.238',
            'code': '2135-2',
            'display': 'Hispanic or Latino'
          }
        },
        {
          'url': 'detailed',
          'valueCoding': {
            'system': 'urn:oid:2.16.840.1.113883.6.238',
            'code': '2184-0',
            'display': 'Dominican'
          }
        },
        {
          'url': 'detailed',
          'valueCoding': {
            'system': 'urn:oid:2.16.840.1.113883.6.238',
            'code': '2148-5',
            'display': 'Mexican'
          }
        },
        {'url': 'text', 'valueString': 'Hispanic or Latino'}
      ]
    },
    {
      'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex',
      'valueCode': 'M'
    }
  ],
  'active': true,
  'gender': 'male',
  'birthDate': '1974-12-25',
  'deceasedBoolean': false,
  'maritalStatus': {
    'coding': [
      {
        'system': 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus',
        'code': 'M'
      }
    ]
  },
};

// -- Blood pressure observation with systolic/diastolic components --

final _bpObs = <String, dynamic>{
  'resourceType': 'Observation',
  'id': 'bp-1',
  'status': 'final',
  'code': {
    'coding': [
      {
        'system': 'http://loinc.org',
        'code': '85354-9',
        'display': 'blood pressure',
      }
    ]
  },
  'subject': {'reference': 'Patient/example'},
  'component': [
    {
      'code': {
        'coding': [
          {
            'system': 'http://loinc.org',
            'code': '8480-6',
            'display': 'Systolic blood pressure',
          }
        ]
      },
      'valueQuantity': {
        'value': 120,
        'unit': 'mm[Hg]',
        'system': 'http://unitsofmeasure.org',
        'code': 'mm[Hg]',
      },
    },
    {
      'code': {
        'coding': [
          {
            'system': 'http://loinc.org',
            'code': '8462-4',
            'display': 'Diastolic blood pressure',
          }
        ]
      },
      'valueQuantity': {
        'value': 80,
        'unit': 'mm[Hg]',
        'system': 'http://unitsofmeasure.org',
        'code': 'mm[Hg]',
      },
    },
  ],
};

// -- Context --

final context09 = <String, dynamic>{
  'Patient': _patient09,
  'Observation': [_bpObs],
  '_valueSets': <String, dynamic>{
    // Marital Status value set: includes code 'M'
    'http://hl7.org/fhir/ValueSet/marital-status': [
      {
        'system': 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus',
        'code': 'M',
      },
      {
        'system': 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus',
        'code': 'S',
      },
      {
        'system': 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus',
        'code': 'D',
      },
    ],
  },
};

// -- Expected results --

final exercises09 = <String, dynamic>{
  // TestPrimitives: Patient where gender='male', active is true,
  // birthDate before Today(), maritalStatus in "Marital Status",
  // maritalStatus ~ "Married" → returns Patient
  'TestPrimitives': Patient.fromJson(_patient09),

  // TestChoice: Patient where deceased is false OR deceased before Today()
  // → returns Patient (deceasedBoolean is false)
  'TestChoice': Patient.fromJson(_patient09),

  // TestSlices: BP Observations where systolic < 140 and diastolic < 90
  // → returns list with the BP observation (120/80 passes)
  'TestSlices': [_bpObs],

  // TestSimpleExtensions: Patient where birthsex extension value = 'M'
  // → returns Patient
  'TestSimpleExtensions': Patient.fromJson(_patient09),

  // TestComplexExtensions: Patient where race ombCategory contains
  // "American Indian or Alaska Native" AND detailed contains "Alaska Native"
  // → returns Patient
  'TestComplexExtensions': Patient.fromJson(_patient09),
};
