// ignore_for_file: no_adjacent_strings_in_list

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

import 'test_data.dart';

List<dynamic> parseAndEvaluate(String expression, [FhirBase? context]) {
  final node = engine.parse(expression);
  if (context != null) {
    final result = engine.evaluate(context, node);
    return result;
  }
  return [];
}

void main() {
  group('Path Test', () {
    test('Patient Name', () {
      final node = engine.parse('Patient.name');
      final result = engine.evaluate(patient1, node);
      expect(
        deepCompare(
          toJsonList(result),
          [
            {
              'use': 'official',
              'family': 'Chalmers',
              'given': ['Peter', 'James'],
            },
            {
              'use': 'usual',
              'given': ['Jim'],
            },
            {
              'use': 'maiden',
              'family': 'Windsor',
              'given': ['Peter', 'James'],
              'period': {'end': '2002'},
            },
          ],
        ),
        true,
      );
    });
    test('Patient Family Name', () {
      final node = engine.parse('Patient.name.family');
      final result = engine.evaluate(patient1, node);
      expect(
        toJsonList(result),
        ['Chalmers', 'Windsor'],
      );
    });
    test('Patient Given Name', () {
      final node = engine.parse('Patient.name.given');
      final result = engine.evaluate(patient1, node);
      expect(
        toJsonList(result),
        ['Peter', 'James', 'Jim', 'Peter', 'James'],
      );
    });
    test('Patient Address Period', () {
      final node = engine.parse('Patient.address.period');
      final result = engine.evaluate(patient2, node);
      expect(toJsonList(result), [
        {
          'extension': [
            {
              'url': 'www.mayjuun.com',
              'valueCount': {'unit': 'Mg'},
            },
            {
              'url': 'www.mayjuun.com',
              'valueCount': {'unit': 'mL'},
            }
          ],
        },
        {
          'extension': [
            {
              'url': 'www.mayjuun.com',
              'valueCount': {'unit': 'Kg'},
            },
            {
              'url': 'www.mayjuun.com',
              'valueCount': {'unit': 'Km'},
            }
          ],
        },
        {
          'extension': [
            {
              'url': 'www.mayjuun.com',
              'valueCount': {'unit': 'Feet'},
            },
            {
              'url': 'www.mayjuun.com',
              'valueCount': {'unit': 'inches'},
            }
          ],
        }
      ]);
    });
    test('Patient Address Period Extension', () {
      final node = engine.parse('Patient.address.period.extension');
      final result = engine.evaluate(patient2, node);
      expect(toJsonList(result), [
        {
          'url': 'www.mayjuun.com',
          'valueCount': {'unit': 'Mg'},
        },
        {
          'url': 'www.mayjuun.com',
          'valueCount': {'unit': 'mL'},
        },
        {
          'url': 'www.mayjuun.com',
          'valueCount': {'unit': 'Kg'},
        },
        {
          'url': 'www.mayjuun.com',
          'valueCount': {'unit': 'Km'},
        },
        {
          'url': 'www.mayjuun.com',
          'valueCount': {'unit': 'Feet'},
        },
        {
          'url': 'www.mayjuun.com',
          'valueCount': {'unit': 'inches'},
        }
      ]);
    });
    test('Patient Address Period Extension ValueCount', () {
      final node = engine.parse('Patient.address.period.extension.valueCount');
      final result = engine.evaluate(patient2, node);
      expect(toJsonList(result), [
        {'unit': 'Mg'},
        {'unit': 'mL'},
        {'unit': 'Kg'},
        {'unit': 'Km'},
        {'unit': 'Feet'},
        {'unit': 'inches'},
      ]);
    });
    test('Patient Address Period Extension ValueCount Unit', () {
      final node =
          engine.parse('Patient.address.period.extension.valueCount.unit');
      final result = engine.evaluate(patient2, node);

      expect(toJsonList(result), ['Mg', 'mL', 'Kg', 'Km', 'Feet', 'inches']);
    });
    test('Patient Text Status', () {
      final node = engine.parse('Patient.text.status');
      final result = engine.evaluate(patient1, node);

      expect(
        toJsonList(result),
        ['generated'],
      );
    });
    test('Patient Text Div', () {
      final node = engine.parse('Patient.text.div');
      final result = engine.evaluate(patient1, node);

      expect(toJsonList(result), [
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
