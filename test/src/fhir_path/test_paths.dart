// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors, no_adjacent_strings_in_list
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes, unnecessary_string_escapes
// ignore_for_file: leading_newlines_in_multiline_strings
// ignore_for_file: unnecessary_statements, directives_ordering
// ignore_for_file: always_specify_types, inference_failure_on_collection_literal

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

dynamic walkPath(String arg) =>
    walkFhirPath(context: resource.toJson(), pathExpression: arg).toString();

void testPaths() {
  group('Path Test', () {
    test('Patient Name', () {
      expect(
        walkPath('name'),
        '[{family: Faulkenberry, given: [Jason, Grey]}, '
        '{family: Niel, given: [Kristin]}, '
        '{family: Smith, given: [John, Jacob, Jingleheimer]}]',
      );
    });
    test('Patient Family Name', () {
      expect(
        walkPath('name.family'),
        '[Faulkenberry, Niel, Smith]',
      );
    });
    test('Patient Given Name', () {
      expect(
        walkPath('name.given'),
        '[Jason, Grey, Kristin, John, Jacob, Jingleheimer]',
      );
    });
    test('Patient Given Name with ResourceType', () {
      expect(
        walkPath('Patient.name.given'),
        '[Jason, Grey, Kristin, John, Jacob, Jingleheimer]',
      );
    });
    test('Patient Address Period', () {
      expect(
          walkPath('address.period'),
          '[{extension: [{valueX: {unit: Mg}}, {valueX: {unit: mL}}]},'
          ' {extension: [{valueX: {unit: Kg}}, {valueX: {unit: Km}}]}, '
          '{extension: [{valueX: {unit: Feet}}, {valueX: {unit: inches}}]}]');
    });
    test('Patient Address Period Extension', () {
      expect(
          walkPath('address.period.extension'),
          '[{valueX: {unit: Mg}}, '
          '{valueX: {unit: mL}}, '
          '{valueX: {unit: Kg}}, '
          '{valueX: {unit: Km}}, '
          '{valueX: {unit: Feet}}, '
          '{valueX: {unit: inches}}]');
    });
    test('Patient Address Period Extension ValueCount', () {
      expect(
          walkPath('address.period.extension.valueX'),
          '[{unit: Mg}, '
          '{unit: mL}, '
          '{unit: Kg}, '
          '{unit: Km}, '
          '{unit: Feet}, '
          '{unit: inches}]');
    });
    test('Patient Address Period Extension ValueCount Unit', () {
      expect(
        walkPath('address.period.extension.valueX.unit'),
        '[Mg, mL, Kg, Km, Feet, inches]',
      );
    });
    test('Sample Patient', () {
      expect(
        walkFhirPath(
          context: patient.toJson(),
          pathExpression: 'Patient.text.status',
        ),
        ['generated'],
      );
      expect(
          walkFhirPath(
            context: patient.toJson(),
            pathExpression: 'Patient.text.div',
          ),
          [
            '<div xmlns="http://www.w3.org/1999/xhtml">\n'
                '\t\t\t<table>\n'
                '\t\t\t\t<tbody>\n'
                '\t\t\t\t\t<tr>\n'
                '\t\t\t\t\t\t<td>Name</td>\n'
                '\t\t\t\t\t\t<td>Peter James \n'
                '              <b>Chalmers</b> (&quot;Jim&quot;)\n'
                '            </td>\n'
                '\t\t\t\t\t</tr>\n'
                '\t\t\t\t\t<tr>\n'
                '\t\t\t\t\t\t<td>Address</td>\n'
                '\t\t\t\t\t\t<td>534 Erewhon, Pleasantville, Vic, 3999</td>\n'
                '\t\t\t\t\t</tr>\n'
                '\t\t\t\t\t<tr>\n'
                '\t\t\t\t\t\t<td>Contacts</td>\n'
                '\t\t\t\t\t\t<td>Home: unknown. Work: (03) 5555 6473</td>\n'
                '\t\t\t\t\t</tr>\n'
                '\t\t\t\t\t<tr>\n'
                '\t\t\t\t\t\t<td>Id</td>\n'
                '\t\t\t\t\t\t<td>MRN: 12345 (Acme Healthcare)</td>\n'
                '\t\t\t\t\t</tr>\n'
                '\t\t\t\t</tbody>\n'
                '\t\t\t</table>\n'
                '\t\t</div>'
          ]);
    });
  });
}

final patient = Patient.fromJson({
  "resourceType": "Patient",
  "id": "example",
  "text": {
    "status": "generated",
    "div":
        '<div xmlns="http://www.w3.org/1999/xhtml">\n\t\t\t<table>\n\t\t\t\t<tbody>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>Name</td>\n\t\t\t\t\t\t<td>Peter James \n              <b>Chalmers</b> (&quot;Jim&quot;)\n            </td>\n\t\t\t\t\t</tr>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>Address</td>\n\t\t\t\t\t\t<td>534 Erewhon, Pleasantville, Vic, 3999</td>\n\t\t\t\t\t</tr>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>Contacts</td>\n\t\t\t\t\t\t<td>Home: unknown. Work: (03) 5555 6473</td>\n\t\t\t\t\t</tr>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>Id</td>\n\t\t\t\t\t\t<td>MRN: 12345 (Acme Healthcare)</td>\n\t\t\t\t\t</tr>\n\t\t\t\t</tbody>\n\t\t\t</table>\n\t\t</div>',
  },
  "identifier": [
    {
      "use": "usual",
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "MR",
          }
        ],
      },
      "system": "urn:oid:1.2.36.146.595.217.0.1",
      "value": "12345",
      "period": {"start": "2001-05-06"},
      "assigner": {"display": "Acme Healthcare"},
    }
  ],
  "active": true,
  "name": [
    {
      "use": "official",
      "family": "Chalmers",
      "given": ["Peter", "James"],
    },
    {
      "use": "usual",
      "given": ["Jim"],
    },
    {
      "use": "maiden",
      "family": "Windsor",
      "given": ["Peter", "James"],
      "period": {"end": "2002"},
    }
  ],
  "telecom": [
    {"use": "home"},
    {"system": "phone", "value": "(03) 5555 6473", "use": "work", "rank": 1},
    {"system": "phone", "value": "(03) 3410 5613", "use": "mobile", "rank": 2},
    {
      "system": "phone",
      "value": "(03) 5555 8834",
      "use": "old",
      "period": {"end": "2014"},
    }
  ],
  "gender": "male",
  "birthDate": "1974-12-25",
  "_birthDate": {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
        "valueDateTime": "1974-12-25T14:35:45-05:00",
      }
    ],
  },
  "deceasedBoolean": false,
  "address": [
    {
      "use": "home",
      "type": "both",
      "text": "534 Erewhon St PeasantVille, Rainbow, Vic  3999",
      "line": ["534 Erewhon St"],
      "city": "PleasantVille",
      "district": "Rainbow",
      "state": "Vic",
      "postalCode": "3999",
      "period": {"start": "1974-12-25"},
    }
  ],
  "contact": [
    {
      "relationship": [
        {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v2-0131",
              "code": "N",
            }
          ],
        }
      ],
      "name": {
        "family": "du Marché",
        "_family": {
          "extension": [
            {
              "url":
                  "http://hl7.org/fhir/StructureDefinition/humanname-own-prefix",
              "valueString": "VV",
            }
          ],
        },
        "given": ["Bénédicte"],
      },
      "telecom": [
        {"system": "phone", "value": "+33 (237) 998327"},
      ],
      "address": {
        "use": "home",
        "type": "both",
        "line": ["534 Erewhon St"],
        "city": "PleasantVille",
        "district": "Rainbow",
        "state": "Vic",
        "postalCode": "3999",
        "period": {"start": "1974-12-25"},
      },
      "gender": "female",
      "period": {"start": "2012"},
    }
  ],
  "managingOrganization": {"reference": "Organization/1"},
});

final resource = Patient(
  address: [
    Address(
      period: Period(
        extension_: [
          FhirExtension(
            url: 'www.mayjuun.com'.toFhirString,
            valueX: Count(unit: 'Mg'.toFhirString),
          ),
          FhirExtension(
            url: 'www.mayjuun.com'.toFhirString,
            valueX: Count(unit: 'mL'.toFhirString),
          ),
        ],
      ),
    ),
    Address(
      period: Period(
        extension_: [
          FhirExtension(
            url: 'www.mayjuun.com'.toFhirString,
            valueX: Count(unit: 'Kg'.toFhirString),
          ),
          FhirExtension(
            url: 'www.mayjuun.com'.toFhirString,
            valueX: Count(unit: 'Km'.toFhirString),
          ),
        ],
      ),
    ),
    Address(
      period: Period(
        extension_: [
          FhirExtension(
            url: 'www.mayjuun.com'.toFhirString,
            valueX: Count(unit: 'Feet'.toFhirString),
          ),
          FhirExtension(
            url: 'www.mayjuun.com'.toFhirString,
            valueX: Count(unit: 'inches'.toFhirString),
          ),
        ],
      ),
    ),
  ],
  deceasedX: FhirBoolean(false),
  name: [
    HumanName(
      family: 'Faulkenberry'.toFhirString,
      given: [
        'Jason'.toFhirString,
        'Grey'.toFhirString,
      ],
    ),
    HumanName(
      family: 'Niel'.toFhirString,
      given: [
        'Kristin'.toFhirString,
      ],
    ),
    HumanName(
      family: 'Smith'.toFhirString,
      given: [
        'John'.toFhirString,
        'Jacob'.toFhirString,
        'Jingleheimer'.toFhirString,
      ],
    ),
  ],
);
