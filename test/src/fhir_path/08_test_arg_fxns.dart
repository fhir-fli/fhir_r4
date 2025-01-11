import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

import '00_test_data.dart';

void testArgFxns() {
  group('Functions with Arguments: ', () {
    test('%variables', () {
      var node = engine.parse('%var');
      expect(
        engine.evaluateWithContext(
          null,
          null,
          null,
          null,
          node,
          environment: {
            'var': [5.toFhirInteger],
          },
        ),
        [5.toFhirInteger],
      );

      node = engine.parse('%var');

      // Valid variable
      expect(
        engine.evaluateWithContext(
          null,
          null,
          null,
          null,
          node,
          environment: {
            'var': [5.toFhirInteger],
          },
        ),
        [5.toFhirInteger],
      );

      // Invalid variable
      expect(
        () => engine.evaluateWithContext(
          null,
          null,
          null,
          null,
          node,
          environment: {
            'dummy': [5.toFhirInteger],
          },
        ),
        throwsA(const TypeMatcher<PathEngineException>()),
      );

      // test('Lazy %variables', () {
      node = engine.parse('%var');

      // Lazy variable with a list
      expect(
        engine.evaluateWithContext(
          null,
          null,
          null,
          null,
          node,
          environment: {
            'var': [5.toFhirInteger],
          },
        ),
        [5.toFhirInteger],
      );

      // Lazy variable with a single value
      expect(
        engine.evaluateWithContext(
          null,
          null,
          null,
          null,
          node,
          environment: {
            'var': () => [5.toFhirInteger],
          },
        ),
        [5.toFhirInteger],
      );

      // Invalid lazy variable
      expect(
        () => engine.evaluateWithContext(
          null,
          null,
          null,
          null,
          node,
          environment: {
            'dummy': () => [6.toFhirInteger],
          },
        ),
        throwsA(const TypeMatcher<PathEngineException>()),
      );

      // Mixed variables
      expect(
        engine.evaluateWithContext(
          null,
          null,
          null,
          null,
          node,
          environment: {
            'var': () => [5.toFhirInteger],
            'da_bomb': () => [throw Exception('BOOM!')],
          },
        ),
        [5.toFhirInteger],
      );

      final bombNode = engine.parse('%da_bomb');
      expect(
        () => engine.evaluateWithContext(
          null,
          null,
          null,
          null,
          bombNode,
          environment: {
            'var': () => 5.toFhirInteger,
            'da_bomb': () => throw Exception('BOOM!'),
          },
        ),
        throwsA(const TypeMatcher<Exception>()),
      );
    });

    test('%variables and math', () {
      final node = engine.parse('%a + %b + %c > 5');

      // All variables as empty lists
      expect(
        engine.evaluateWithContext(
          null,
          null,
          null,
          null,
          node,
          environment: {
            'a': <FhirBase>[],
            'b': <FhirBase>[],
            'c': [2.toFhirInteger],
          },
        ),
        <FhirBase>[],
      );

      // Lazy variables as empty lists
      expect(
        engine.evaluateWithContext(
          null,
          null,
          null,
          null,
          node,
          environment: {
            'a': () => <FhirBase>[],
            'b': () => <FhirBase>[],
            'c': () => [2.toFhirInteger],
          },
        ),
        <FhirBase>[],
      );

      // Variables with valid values
      expect(
        engine.evaluateWithContext(
          null,
          null,
          null,
          null,
          node,
          environment: {
            'a': () => [1.toFhirInteger],
            'b': () => [2.toFhirInteger],
            'c': () => [3.toFhirInteger],
          },
        ),
        [true.toFhirBoolean],
      );
    });
  });

  test(r'$this', () {
    final resource = Patient(
      name: [
        HumanName(
          use: NameUse.official,
          family: 'Faulkenberry'.toFhirString,
          given: ['Jason'.toFhirString, 'Grey'.toFhirString],
        ),
        HumanName(family: 'Niel'.toFhirString, given: ['Kristin'.toFhirString]),
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

    var node = engine.parse(r'Patient.name.exists($this)');
    expect(
      engine.evaluate(resource, node),
      [true.toFhirBoolean],
    );

    node = engine.parse(r'Patient.name.where($this)');
    expect(
      engine.evaluate(resource, node).map((e) => e.toJson()),
      [
        {
          'use': 'official',
          'family': 'Faulkenberry',
          'given': ['Jason', 'Grey'],
        },
        {
          'family': 'Niel',
          'given': ['Kristin'],
        },
        {
          'family': 'Smith',
          'given': ['John', 'Jacob', 'Jingleheimer'],
        },
      ],
    );

    node = engine.parse(r'Patient.name.given.where($this)');
    expect(
      engine.evaluate(resource, node).map((e) => e.primitiveValue),
      ['Jason', 'Grey', 'Kristin', 'John', 'Jacob', 'Jingleheimer'],
    );
  });

  test('exists', () {
    final resource = Patient(
      name: [
        HumanName(given: ['Jason'.toFhirString, 'Grey'.toFhirString]),
      ],
      telecom: [
        ContactPoint(
          system: ContactPointSystem.email,
          use: ContactPointUse.mobile,
          rank: 3.toFhirPositiveInt,
        ),
      ],
    );

    var node = engine.parse('name.given.exists()');
    expect(
      engine.evaluate(resource, node),
      [true.toFhirBoolean],
    );

    node = engine.parse('Patient.language.exists()');
    expect(
      engine.evaluate(resource, node),
      [false.toFhirBoolean],
    );

    node = engine.parse("telecom.exists(system = 'email')");
    expect(
      engine.evaluate(resource, node),
      [true.toFhirBoolean],
    );

    node = engine.parse("telecom.exists(system = 'email' and use = 'mobile')");
    expect(
      engine.evaluate(resource, node),
      [true.toFhirBoolean],
    );

    node = engine.parse('{}.exists()');
    expect(
      engine.evaluate(resource, node),
      [false.toFhirBoolean],
    );
  });

  group('Functions with Arguments: ', () {
    test('%variables', () {
      expect(
        walkFhirPath(
          context: null,
          pathExpression: '%var',
          environment: {
            'var': [5.toFhirInteger],
          },
        ),
        [5.toFhirInteger],
      );
      expect(
        () => walkFhirPath(
          context: null,
          pathExpression: '%var',
          environment: {'%dummy': 5},
        ),
        throwsA(const TypeMatcher<PathEngineException>()),
      );
    });
  });
  test('Lazy %variables', () {
    expect(
      walkFhirPath(
        context: null,
        pathExpression: '%var',
        environment: {
          'var': () => [5.toFhirInteger],
        },
      ),
      [5.toFhirInteger],
    );
    expect(
      walkFhirPath(
        context: null,
        pathExpression: '%var',
        environment: {
          'var': () => [5.toFhirInteger],
        },
      ),
      [5.toFhirInteger],
    );
    expect(
      () => walkFhirPath(
        context: null,
        pathExpression: '%var',
        environment: {
          'dummy': () => [6.toFhirInteger],
        },
      ),
      throwsA(const TypeMatcher<PathEngineException>()),
    );
    expect(
      walkFhirPath(
        context: null,
        pathExpression: '%var',
        environment: {
          'var': () => [5.toFhirInteger],
          'da_bomb': () => [throw Exception('BOOM!')],
        },
      ),
      [5.toFhirInteger],
    );
    expect(
      () => walkFhirPath(
        context: null,
        pathExpression: '%da_bomb',
        environment: {
          'var': () => [5.toFhirInteger],
          'da_bomb': () => [throw Exception('BOOM!')],
        },
      ),
      throwsA(const TypeMatcher<PathEngineException>()),
    );
  });
  test('%variables and math', () {
    expect(
      walkFhirPath(
        context: null,
        pathExpression: '%a + %b + %c > 5',
        environment: {
          'a': <FhirBase>[],
          'b': <FhirBase>[],
          'c': [2.toFhirInteger],
        },
      ),
      <FhirBase>[],
    );
    expect(
      walkFhirPath(
        context: null,
        pathExpression: '%a + %b + %c > 5',
        environment: {
          'a': () => <FhirBase>[],
          'b': () => <FhirBase>[],
          'c': () => [2.toFhirInteger],
        },
      ),
      <FhirBase>[],
    );
    expect(
      walkFhirPath(
        context: null,
        pathExpression: '%a + %b + %c > 5',
        environment: {
          'a': () => [1.toFhirInteger],
          'b': () => [2.toFhirInteger],
          'c': () => [3.toFhirInteger],
        },
      ),
      [true.toFhirBoolean],
    );
  });
  test(r'$this', () {
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: r'Patient.name.exists($this)',
      ),
      [true.toFhirBoolean],
    );
    expect(
        walkFhirPath(
          context: patient3,
          pathExpression: r'Patient.name.where($this)',
        ).map((e) => e.toJson()).toList(),
        [
          {
            'use': 'official',
            'family': 'Faulkenberry',
            'given': ['Jason', 'Grey'],
          },
          {
            'use': 'official',
            'family': 'Faulkenberry',
            'given': ['Jason', 'Grey'],
          },
          {
            'family': 'Niel',
            'given': ['Kristin'],
          },
          {
            'family': 'Smith',
            'given': ['John', 'Jacob', 'Jingleheimer'],
          }
        ]);
    expect(
        walkFhirPath(
          context: patient3,
          pathExpression: r'Patient.name.given.where($this)',
        ),
        [
          'Jason'.toFhirString,
          'Grey'.toFhirString,
          'Jason'.toFhirString,
          'Grey'.toFhirString,
          'Kristin'.toFhirString,
          'John'.toFhirString,
          'Jacob'.toFhirString,
          'Jingleheimer'.toFhirString,
        ]);
  });
  test('exists', () {
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: 'name.given.exists()',
      ),
      [true.toFhirBoolean],
    );
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: 'Patient.language.exists()',
      ),
      [false.toFhirBoolean],
    );
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: "telecom.exists(system = 'email')",
      ),
      [true.toFhirBoolean],
    );
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: "telecom.exists(system = 'email' and use = 'mobile')",
      ),
      [true.toFhirBoolean],
    );
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: "telecom.exists(system = 'sms' and use = 'mobile')",
      ),
      [false.toFhirBoolean],
    );
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: "telecom.exists(system = 'email' and use = 'any')",
      ),
      [false.toFhirBoolean],
    );
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: '{}.exists()',
      ),
      [false.toFhirBoolean],
    );
  });
  test('all', () {
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: 'Patient.language.all()',
      ),
      [true.toFhirBoolean],
    );
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: "name.all(use = 'official')",
      ),
      [false.toFhirBoolean],
    );
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: "name.all(use = 'usual')",
      ),
      [false.toFhirBoolean],
    );
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: "telecom.all(system = 'email')",
      ),
      [true.toFhirBoolean],
    );
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: "telecom.all(use = 'mobile')",
      ),
      [true.toFhirBoolean],
    );
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: "telecom.all(system = 'email' and use = 'mobile')",
      ),
      [true.toFhirBoolean],
    );
  });
  test('subsetOf', () {
    final node =
        engine.parse('Patient.name.given[2].subsetOf(Patient.name.given)');
    expect(
      engine.evaluate(patient3, node),
      [true.toFhirBoolean],
    );
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: 'Patient.name.given[2].subsetOf(Patient.name.given)',
      ),
      [true.toFhirBoolean],
    );

    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: 'Patient.name.given.subsetOf(Patient.name.given)',
      ),
      [true.toFhirBoolean],
    );
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: 'Patient.name.subsetOf(Patient.name.given)',
      ),
      [false.toFhirBoolean],
    );
  });
  test('supersetOf', () {
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: 'Patient.name.given.supersetOf(Patient.name.given[2])',
      ),
      [true.toFhirBoolean],
    );
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: 'Patient.name.given.supersetOf(Patient.name.given)',
      ),
      [true.toFhirBoolean],
    );
    expect(
      walkFhirPath(
        context: patient3,
        pathExpression: 'Patient.name.given.supersetOf(Patient.name)',
      ),
      [false.toFhirBoolean],
    );
  });
    test('where', () {
      expect(
          walkFhirPath(
            context: patient3,
            pathExpression: "Patient.telecom.where(use = 'mobile')",
          ).map((e) => e.toJson()),
          [
            {
              'system': 'email',
              'use': 'mobile',
              'rank': 3,
            }
          ]);
      expect(
          walkFhirPath(
            context: patient3,
            pathExpression:
                "Patient.telecom.where(use = 'mobile' and rank = 3)",
          ),
          [
            {
              'system': 'email',
              'use': 'mobile',
              'rank': 3,
            }
          ]);
      expect(
          walkFhirPath(
            context: patient3,
            pathExpression:
                "Patient.telecom.where(use = 'mobile' and system = 'email')",
          ),
          [
            {
              'system': 'email',
              'use': 'mobile',
              'rank': 3,
            }
          ]);
      expect(
          walkFhirPath(
            context: patient3,
            pathExpression:
                "Patient.telecom.where(use = 'mobile' and system = 'email' and rank = 3)",
          ),
          [
            {
              'system': 'email',
              'use': 'mobile',
              'rank': 3,
            }
          ]);
      expect(
        walkFhirPath(
          context: patient3,
          pathExpression: "Patient.telecom.where(use = 'mobile' and rank = 2)",
        ),
        <FhirBase>[],
      );
      expect(
          walkFhirPath(
            context: patient3,
            pathExpression: "Patient.name.where(use = 'official')",
          ),
          [
            {
              'use': 'official',
              'family': 'Faulkenberry',
              'given': [
                'Jason',
                'Grey',
              ],
            },
            {
              'use': 'official',
              'family': 'Faulkenberry',
              'given': [
                'Jason',
                'Grey',
              ],
            }
          ]);
    });
//     test('select', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: 'Patient.telecom.select(rank as integer)',
//         ),
//         [3.toFhirInteger],
//       );
//       expect(
//           walkFhirPath(
//             context: bundle.toJson(),
//             pathExpression: 'Bundle.entry.select(resource as Patient)',
//           ),
//           [
//             {'resourceType': 'Patient', 'id': '1'},
//             {'resourceType': 'Patient', 'id': '3'},
//             {'resourceType': 'Patient', 'id': '6'},
//             {'resourceType': 'Patient', 'id': '7'},
//           ]);
//       expect(
//           walkFhirPath(
//             context: bundle.toJson(),
//             pathExpression: 'Bundle.entry.select(resource as Practitioner)',
//           ),
//           [
//             {'resourceType': 'Practitioner', 'id': '2'},
//             {'resourceType': 'Practitioner', 'id': '4'},
//             {'resourceType': 'Practitioner', 'id': '5'},
//           ]);
//     });
//     test('repeat', () {
//       expect(
//           walkFhirPath(
//             context: patient3,
//             pathExpression:
//                 'Patient.address.period.extension.extension.extension.repeat(extension)',
//           ),
//           [
//             {
//               'valueX': {'unit': 'Kg'},
//             },
//             {
//               'valueX': {'unit': 'Km'},
//             }
//           ]);
//       expect(
//           walkFhirPath(
//             context: patient3,
//             pathExpression:
//                 'Patient.address.period.extension.extension.repeat(extension)',
//           ),
//           [
//             {
//               'extension': [
//                 {
//                   'valueX': {'unit': 'Kg'},
//                 },
//                 {
//                   'valueX': {'unit': 'Km'},
//                 }
//               ],
//               'valueX': {'unit': 'Kg'},
//             },
//             {
//               'valueX': {'unit': 'Km'},
//             },
//             {
//               'valueX': {'unit': 'Kg'},
//             }
//           ]);
//       expect(
//           walkFhirPath(
//             context: patient3,
//             pathExpression:
//                 'Patient.address.period.extension.repeat(extension)',
//           ),
//           [
//             {
//               'extension': [
//                 {
//                   'extension': [
//                     {
//                       'valueX': {'unit': 'Kg'},
//                     },
//                     {
//                       'valueX': {'unit': 'Km'},
//                     }
//                   ],
//                   'valueX': {'unit': 'Kg'},
//                 },
//                 {
//                   'valueX': {'unit': 'Km'},
//                 }
//               ],
//               'valueX': {'unit': 'Kg'},
//             },
//             {
//               'valueX': {'unit': 'Km'},
//             },
//             {
//               'extension': [
//                 {
//                   'valueX': {'unit': 'Kg'},
//                 },
//                 {
//                   'valueX': {'unit': 'Km'},
//                 }
//               ],
//               'valueX': {'unit': 'Kg'},
//             },
//             {
//               'valueX': {'unit': 'Kg'},
//             },
//           ]);
//     });
//     test('ofType', () {
//       expect(
//           walkFhirPath(
//             context: bundle.toJson(),
//             pathExpression: 'Bundle.entry.patient3.ofType(Patient)',
//           ),
//           [
//             {'resourceType': 'Patient', 'id': '1'},
//             {'resourceType': 'Patient', 'id': '3'},
//             {'resourceType': 'Patient', 'id': '6'},
//             {'resourceType': 'Patient', 'id': '7'},
//           ]);
//       expect(
//           walkFhirPath(
//             context: bundle.toJson(),
//             pathExpression: 'Bundle.entry.patient3.ofType(Practitioner)',
//           ),
//           [
//             {'resourceType': 'Practitioner', 'id': '2'},
//             {'resourceType': 'Practitioner', 'id': '4'},
//             {'resourceType': 'Practitioner', 'id': '5'},
//           ]);
//     });
//     test('index', () {
//       expect(
//           walkFhirPath(
//             context: patient3,
//             pathExpression: 'Patient.name[3]',
//           ),
//           [
//             {
//               'family': 'Smith',
//               'given': [
//                 'John',
//                 'Jacob',
//                 'Jingleheimer',
//               ],
//             }
//           ]);
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: 'Patient.name[12]',
//         ),
//         <FhirBase>[],
//       );
//     });
//     test('skip', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: 'Patient.name.id.skip(1)',
//         ),
//         <FhirBase>[],
//       );
//       expect(
//           walkFhirPath(
//             context: patient3,
//             pathExpression: 'Patient.name.given.skip(3)',
//           ),
//           [
//             'Grey',
//             'Kristin',
//             'John',
//             'Jacob',
//             'Jingleheimer',
//           ]);
//     });
//     test('take', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: 'Patient.name.id.take(1)',
//         ),
//         <FhirBase>[],
//       );
//       expect(
//           walkFhirPath(
//             context: patient3,
//             pathExpression: 'Patient.name.given.take(3)',
//           ),
//           [
//             'Jason',
//             'Grey',
//             'Jason',
//           ]);
//       expect(
//           walkFhirPath(
//             context: patient3,
//             pathExpression: 'Patient.name.given.take(13)',
//           ),
//           [
//             'Jason',
//             'Grey',
//             'Jason',
//             'Grey',
//             'Kristin',
//             'John',
//             'Jacob',
//             'Jingleheimer',
//           ]);
//     });
//     test('intersect', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: 'Patient.name.given.intersect(%nameList)',
//           environment: {'%nameList': 'Jason'},
//         ),
//         ['Jason'],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: 'Patient.name.given.intersect(%nameList)',
//           environment: {
//             '%nameList': ['Jason', 'Kristin'],
//           },
//         ),
//         ['Jason', 'Kristin'],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: 'Patient.name.given.intersect(%nameList)',
//           environment: {
//             '%nameList': ['Jason', 'Fnuts'],
//           },
//         ),
//         ['Jason'],
//       );
//     });
//     test('exclude', () {
//       expect(
//           walkFhirPath(
//             context: patient3,
//             pathExpression: 'Patient.name.given.exclude(%nameList)',
//             environment: {'%nameList': 'Jason'},
//           ),
//           [
//             'Grey',
//             'Grey',
//             'Kristin',
//             'John',
//             'Jacob',
//             'Jingleheimer',
//           ]);

//       expect(
//           walkFhirPath(
//             context: patient3,
//             pathExpression: 'Patient.name.given.exclude(%nameList)',
//             environment: {
//               '%nameList': ['Jason', 'Kristin'],
//             },
//           ),
//           [
//             'Grey',
//             'Grey',
//             'John',
//             'Jacob',
//             'Jingleheimer',
//           ]);
//       expect(
//           walkFhirPath(
//             context: patient3,
//             pathExpression: 'Patient.name.given.exclude(%nameList)',
//             environment: {
//               '%nameList': ['Jason', 'Fnuts'],
//             },
//           ),
//           [
//             'Grey',
//             'Grey',
//             'Kristin',
//             'John',
//             'Jacob',
//             'Jingleheimer',
//           ]);
//     });
//     test('union', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: '%a.union(%b)',
//           environment: {
//             '%a': [1, 1, 2, 3],
//             '%b': [2, 3],
//           },
//         ),
//         [1, 2, 3],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: '%a.union()',
//           environment: {
//             '%a': [1, 1, 2, 3],
//           },
//         ),
//         [1, 2, 3],
//       );
//     });
//     test('combine', () {
//       expect(
//         deepEquals(
//           walkFhirPath(
//             context: patient3,
//             pathExpression: '%a.combine(%b)',
//             environment: {
//               '%a': [1, 1, 2, 3],
//               '%b': [2, 3],
//             },
//           ),
//           [1, 1, 2, 3, 2, 3],
//         ),
//         true,
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: '%a.combine()',
//           environment: {
//             '%a': [1, 1, 2, 3],
//           },
//         ),
//         [1, 1, 2, 3],
//       );
//     });
//     test('indexOf', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abcdefg'.indexOf('bc') // 1",
//         ),
//         [1.toFhirInteger],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abcdefg'.indexOf('x') // -1",
//         ),
//         [-1],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abcdefg'.indexOf('abcdefg') // 0",
//         ),
//         [0.toFhirInteger],
//       );
//     });
//     test('Substring Function', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abcdefg'.substring(3) // 'defg'",
//         ),
//         ['defg'],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abcdefg'.substring(1, 2) // 'bc'",
//         ),
//         ['bc'],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abcdefg'.substring(6, 2) // 'g'",
//         ),
//         ['g'],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abcdefg'.substring(7, 1) // { }",
//         ),
//         <FhirBase>[],
//       );
//     });
//     test('startsWith', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abcdefg'.startsWith('abc') // true",
//         ),
//         [true.toFhirBoolean],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abcdefg'.startsWith('xyz') // false",
//         ),
//         [false.toFhirBoolean],
//       );
//     });
//     test('endsWith', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abcdefg'.endsWith('efg') // true",
//         ),
//         [true.toFhirBoolean],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abcdefg'.endsWith('abc') // false",
//         ),
//         [false.toFhirBoolean],
//       );
//     });
//     test('contains', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abc'.contains('b') // true",
//         ),
//         [true.toFhirBoolean],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abc'.contains('bc') // true",
//         ),
//         [true.toFhirBoolean],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abc'.contains('d') // false",
//         ),
//         [false.toFhirBoolean],
//       );
//     });
//     test('replace', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abcdefg'.replace('cde', '123') // 'ab123fg'",
//         ),
//         ['ab123fg'],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abcdefg'.replace('cde', '') // 'abfg'",
//         ),
//         ['abfg'],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'abc'.replace('', 'x') // 'xaxbxcx'",
//         ),
//         ['xaxbxcx'],
//       );
//     });
//     test('matches', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'hello'.matches('hello')",
//         ),
//         [true.toFhirBoolean],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "35.matches('[2-9]|[12]d|3[0-6]')",
//         ),
//         [true.toFhirBoolean],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "38.matches('[2-9]|[12]d|3[0-6]')",
//         ),
//         [true.toFhirBoolean],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'35'.matches('[2-9]|[12]d|3[0-6]')",
//         ),
//         [true.toFhirBoolean],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'38'.matches('[2-9]|[12]d|3[0-6]')",
//         ),
//         [true.toFhirBoolean],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'google'.matches('g(oog)+le')",
//         ),
//         [true.toFhirBoolean],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'googoogoogoogle'.matches('g(oog)+le')",
//         ),
//         [true.toFhirBoolean],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: "'goooooogle'.matches('g(oog)+le')",
//         ),
//         [false.toFhirBoolean],
//       );
//     });

//     test('replacesMatches', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression:
//               r"'11/30/1972'.replace('\\b(?<month>\\d{1,2})/(?<day>\\d{1,2})/(?<year>\\d{2,4})\\b','${day}-${month}-${year}')",
//         ),
//         ['11/30/1972'],
//       );
//     });
//     test('log', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: '16.log(2) // 4.0',
//         ),
//         [4.0],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: '100.0.log(10.0) // 2.0',
//         ),
//         [2.0],
//       );
//     });
//     test('power', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: '2.power(3) // 8',
//         ),
//         [8.toFhirInteger],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: '2.5.power(2) // 6.25',
//         ),
//         [6.25],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: '(-1).power(0.5) // empty ({ })',
//         ),
//         <FhirBase>[],
//       );
//     });
//     test('round', () {
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: '1.round() // 1',
//         ),
//         [1.toFhirInteger],
//       );
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: '3.14159.round(3) // 3.142',
//         ),
//         [3.142],
//       );
//     });

//     test('complex-extension', () {
//       expect(
//         walkFhirPath(
//           context: questionnaireResponse,
//           pathExpression:
//               '%context.repeat(item).answer.value.extension(%`ext-ordinalValue`).value.sum()',
//         ),
//         [13.toFhirInteger],
//       );
//     });

//     test('iif-basic', () {
//       expect(
//         walkFhirPath(context: null, pathExpression: 'iif(true, 1, 0)'),
//         [1.toFhirInteger],
//       );
//       expect(
//         walkFhirPath(context: null, pathExpression: 'iif(false, 1, 0)'),
//         [0.toFhirInteger],
//       );
//       expect(walkFhirPath(context: null, pathExpression: 'iif({}, 1, 0)'), [0.toFhirInteger]);
//       expect(walkFhirPath(context: null, pathExpression: 'iif(5, 1, 0)'), [1.toFhirInteger]);
//       expect(walkFhirPath(context: null, pathExpression: 'iif(true, 1)'), [1.toFhirInteger]);
//       expect(walkFhirPath(context: null, pathExpression: 'iif(false, 1)'), <FhirBase>[]);
//       expect(
//         () => walkFhirPath(context: null, pathExpression: 'iif(false)'),
//         throwsA(const TypeMatcher<FhirPathInvalidExpressionException>()),
//       );
//     });
//     test('iif-short-circuit', () {
//       // non-existent identifier should never be evaluated
//       expect(
//         walkFhirPath(
//           context: patient3,
//           pathExpression: 'iif(true, 1, %patient3.blurb)',
//         ),
//         [1.toFhirInteger],
//       );
//       // non-existent identifier should throw
//       expect(
//         () => walkFhirPath(
//           context: patient3,
//           pathExpression: 'iif(false, 1, %patient3.blurb)',
//         ),
//         throwsA(const TypeMatcher<FhirPathEvaluationException>()),
//       );
//     });
//     test('iif-with-variables', () {
//       expect(
//         walkFhirPath(
//           context: null,
//           pathExpression: 'iif(%smokesCode.exists(), 1, 0)',
//           environment: {'%smokesCode': <FhirBase>[]},
//         ),
//         [0.toFhirInteger],
//       );
//       expect(
//         walkFhirPath(
//           context: null,
//           pathExpression: "iif(%smokesCode = 'Y', 1, 0)",
//           environment: {
//             '%smokesCode': ['Y'],
//           },
//         ),
//         [1.toFhirInteger],
//       );
//       expect(
//         walkFhirPath(
//           context: null,
//           pathExpression: "iif(%smokesCode = 'Y', 1, 0)",
//           environment: {
//             '%smokesCode': ['N'],
//           },
//         ),
//         [0.toFhirInteger],
//       );
//     });
//     test('iif-nested-fxns', () {
//       expect(
//         walkFhirPath(
//           context: null,
//           pathExpression: 'iif(%smokesCode.exists(), {}.empty(), {}.exists())',
//           environment: {'%smokesCode': <FhirBase>[]},
//         ),
//         [false.toFhirBoolean],
//       );
//     });
//     test('iif-nested-iif-empty-variable', () {
//       expect(
//         walkFhirPath(
//           context: null,
//           pathExpression:
//               "iif(%smokesCode.exists(), iif(%smokesCode = 'Y', 1, 0), {})",
//           environment: {'%smokesCode': <FhirBase>[]},
//         ),
//         <FhirBase>[],
//       );
//     });
//     test('iif-nested-iif-empty-set', () {
//       expect(
//         walkFhirPath(
//           context: null,
//           pathExpression: "iif({}.exists(), iif({} = 'Y', 1, 0), {})",
//         ),
//         <FhirBase>[],
//       );
//     });
//     test('iif-nested-iif-filled-variable', () {
//       expect(
//         walkFhirPath(
//           context: null,
//           pathExpression:
//               "iif(%smokesCode.exists(), iif(%smokesCode = 'Y', 1, 0), {})",
//           environment: {
//             '%smokesCode': ['Y'],
//           },
//         ),
//         [1.toFhirInteger],
//       );
//       expect(
//         walkFhirPath(
//           context: null,
//           pathExpression:
//               "iif(%smokesCode.exists(), iif(%smokesCode = 'Y', 1, 0), {})",
//           environment: {
//             '%smokesCode': ['N'],
//           },
//         ),
//         [0.toFhirInteger],
//       );
//     });
//     test('iif-act-on-score', () {
//       expect(
//         walkFhirPath(
//           context: null,
//           pathExpression: r"(2 + 2).select(iif($this > 2, $this, '<= 2'))",
//         ),
//         [4.toFhirInteger],
//       );
//       expect(
//         walkFhirPath(
//           context: null,
//           pathExpression: r"(1 + 1).select(iif($this > 2, $this, '<= 2'))",
//         ),
//         ['<= 2'],
//       );
//       expect(
//         walkFhirPath(
//           context: null,
//           pathExpression:
//               r"(1 + 1).select(iif($this > 2, $this, iif($this < 2, $this.toString() + ' is below 2', $this.toString() + ' is above 2')))",
//         ),
//         ['2 is above 2'],
//       );
//       expect(
//         walkFhirPath(
//           context: null,
//           pathExpression:
//               r"(2 + 2).select(iif($this > 2, $this, iif($this < 2, $this.toString() + ' is below 2', $this.toString() + ' is above 2')))",
//         ),
//         [4.toFhirInteger],
//       );
//       expect(
//         walkFhirPath(
//           context: null,
//           pathExpression:
//               r"(1 + 0).select(iif($this > 2, $this, iif($this < 2, $this.toString() + ' is below 2', $this.toString() + ' is above 2')))",
//         ),
//         ['1 is below 2'],
//       );
//     });

//     group('extensions', () {
//       test(
//         'extensionOnPolymorphic',
//         () => expect(
//           walkFhirPath(
//             context: questionnaireResponse,
//             pathExpression:
//                 '%context.repeat(item).answer.value.extension.where(url=%`ext-ordinalValue`).value',
//           ),
//           [4, 5, 4],
//         ),
//       );
//       test(
//         'extensionOnPrimitive',
//         () => expect(
//           walkFhirPath(
//             context: patientExample(),
//             pathExpression:
//                 'Patient.contact.name.family.extension(%`ext-humanname-own-prefix`).value',
//           ),
//           ['VV'],
//         ),
//       );
//     });

//     // TODO(Dokotela):  trace
//   });
}
