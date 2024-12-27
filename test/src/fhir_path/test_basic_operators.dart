// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: prefer_single_quotes, unnecessary_string_escapes
// ignore_for_file: leading_newlines_in_multiline_strings
// ignore_for_file: unnecessary_statements, directives_ordering
// ignore_for_file: always_specify_types, inference_failure_on_collection_literal

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

import 'test_data.dart';

void main() {
  group('Operators: ', () {
    test('= : ', () {
      final node = engine.parse('10 = 10');
      expect(
        engine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      // Equality with numbers
      final node1 = engine.parse('10 = 9');
      expect(
        engine.evaluate(patient3, node1),
        [false.toFhirBoolean],
      );

      final node2 = engine.parse('10.0 = 10');
      expect(
        engine.evaluate(patient3, node2),
        [true.toFhirBoolean],
      );

      final node3 = engine.parse('10.9 = 9.1');
      expect(
        engine.evaluate(patient3, node3),
        [false.toFhirBoolean],
      );

      final node4 = engine.parse('10.9 = 10.9');
      expect(
        engine.evaluate(patient3, node4),
        [true.toFhirBoolean],
      );

      // Equality with booleans
      final node5 = engine.parse('true = true');
      expect(
        engine.evaluate(patient3, node5),
        [true.toFhirBoolean],
      );

      final node6 = engine.parse('false = true');
      expect(
        engine.evaluate(patient3, node6),
        [false.toFhirBoolean],
      );

      // Equality with dates
      final node7 = engine.parse('@2021 = @2021');
      expect(
        engine.evaluate(patient3, node7),
        [true.toFhirBoolean],
      );

      final node8 = engine.parse('@2021 = @2020');
      expect(
        engine.evaluate(patient3, node8),
        [false.toFhirBoolean],
      );

      final node9 = engine.parse('@2021-06-06 = @2021-06-06');
      expect(
        engine.evaluate(patient3, node9),
        [true.toFhirBoolean],
      );

      final node10 = engine.parse('@2021-06-06 = @2021-05-06');
      expect(
        engine.evaluate(patient3, node10),
        [false.toFhirBoolean],
      );

      final node11 = engine.parse('@2021-06-06T12:36 = @2021-06-06T12:36');
      expect(
        engine.evaluate(patient3, node11),
        [true.toFhirBoolean],
      );

      final node12 = engine.parse('@2021-06-06T12:36 = @2021-05-06T12:35');
      expect(
        engine.evaluate(patient3, node12),
        [false.toFhirBoolean],
      );

      final node13 =
          engine.parse('@2012-01-01T10:30:31.0 = @2012-01-01T10:30:31');
      expect(
        engine.evaluate(patient3, node13),
        [true.toFhirBoolean],
      );

      final node14 =
          engine.parse('@2012-01-01T10:30:31.1 = @2012-01-01T10:30:31');
      expect(
        engine.evaluate(patient3, node14),
        [false.toFhirBoolean],
      );

      final node15 = engine.parse('@T12:25 = @T12:25');
      expect(
        engine.evaluate(patient3, node15),
        [true.toFhirBoolean],
      );

      final node16 = engine.parse('@T12:25 = @T12:27');
      expect(
        engine.evaluate(patient3, node16),
        [false.toFhirBoolean],
      );

      // Equality with strings
      final node17 = engine.parse("'String' = 'String'");
      expect(
        engine.evaluate(patient3, node17),
        [true.toFhirBoolean],
      );

      final node18 = engine.parse("'String' = 'string'");
      expect(
        engine.evaluate(patient3, node18),
        [false.toFhirBoolean],
      );

      // Additional cases
      final node19 = engine.parse('@2012 = @2012');
      expect(
        engine.evaluate(patient3, node19),
        [true.toFhirBoolean],
      );

      final node20 = engine.parse('@2012 = @2013');
      expect(
        engine.evaluate(patient3, node20),
        [false.toFhirBoolean],
      );

      final node21 = engine.parse('@2012-01 = @2012');
      expect(
        engine.evaluate(patient3, node21),
        [],
      );

      final node22 = engine.parse('@2012-01-01T10:30 = @2012-01-01T10:30');
      expect(
        engine.evaluate(patient3, node22),
        [true.toFhirBoolean],
      );

      final node23 = engine.parse('@2012-01-01T10:30 = @2012-01-01T10:31');
      expect(
        engine.evaluate(patient3, node23),
        [false.toFhirBoolean],
      );

      final node24 = engine.parse('@2012-01-01T10:30:31 = @2012-01-01T10:30');
      expect(
        engine.evaluate(patient3, node24),
        [],
      );

      final node25 =
          engine.parse('@2012-01-01T10:30:31.0 = @2012-01-01T10:30:31');
      expect(
        engine.evaluate(patient3, node25),
        [true.toFhirBoolean],
      );

      final node26 =
          engine.parse('@2012-01-01T10:30:31.1 = @2012-01-01T10:30:31');
      expect(
        engine.evaluate(patient3, node26),
        [false.toFhirBoolean],
      );
    });
    // test('~ : ', () {
    //   expect(
    //     walkFhirPath(context: patient3.toJson(), pathExpression: '{ } ~ { }'),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(context: patient3.toJson(), pathExpression: '10 ~ 10'),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(context: patient3.toJson(), pathExpression: '10 ~ 9'),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(context: patient3.toJson(), pathExpression: '10.0 ~ 10'),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '10.9 ~ 9.1',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '10.9 ~ 10.9',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: 'true ~ true',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: 'false ~ true',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2012 ~ @2012 // returns true',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2012 ~ @2013 // returns false',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2021-06-06 ~ @2021-06-06',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2021-06-06 ~ @2021-05-06',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2021-06-06T12:36 ~ @2021-06-06T12:36',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2021-06-06T12:36 ~ @2021-05-06T12:35',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2012-01-01T10:30:31.0 ~ @2012-01-01T10:30:31',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2012-01-01T10:30:31.1 ~ @2012-01-01T10:30:31',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T12:25 ~ @T12:25',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T12:25 ~ @T12:27',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'String' ~ 'String'",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'String' ~ 'string'",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "@2012 ~ @2012 // returns true",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "@2012 ~ @2013 // returns false",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "@2012-01 ~ @2012 // returns false as well",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           "@2012-01-01T10:30 ~ @2012-01-01T10:30 // returns true",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           "@2012-01-01T10:30 ~ @2012-01-01T10:31 // returns false",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           "@2012-01-01T10:30:31 ~ @2012-01-01T10:30 // returns false as well",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           "@2012-01-01T10:30:31.0 ~ @2012-01-01T10:30:31 // returns true",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           "@2012-01-01T10:30:31.1 ~ @2012-01-01T10:30:31 // returns false",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "1 year ~ 1 'a' // true",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "1 second ~ 1 's' // true",
    //     ),
    //     [true],
    //   );
    // });

    // test('!= : ', () {
    //   expect(
    //     walkFhirPath(context: patient3.toJson(), pathExpression: '10 != 10'),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(context: patient3.toJson(), pathExpression: '10 != 9'),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '10.0 != 10',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '10.9 != 9.1',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '10.9 != 10.9',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: 'true != true',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: 'false != true',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2021 != @2021',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2021 != @2020',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2021-06-06 != @2021-06-06',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2021-06-06 != @2021-05-06',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2021-06-06T12:36 != @2021-06-06T12:36',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2021-06-06T12:36 != @2021-05-06T12:35',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2012-01-01T10:30:31.0 != @2012-01-01T10:30:31',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2012-01-01T10:30:31.1 != @2012-01-01T10:30:31',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T12:25 != @T12:25',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T12:25 != @T12:27',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'String' != 'String'",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'String' != 'string'",
    //     ),
    //     [true],
    //   );
    // });

    // test('!~ : ', () {
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '{ } !~ { }',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(context: patient3.toJson(), pathExpression: '10 !~ 10'),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(context: patient3.toJson(), pathExpression: '10 !~ 9'),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '10.0 !~ 10',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '10.9 !~ 9.1',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '10.9 !~ 10.9',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: 'true !~ true',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: 'false !~ true',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2012 !~ @2012 // returns true',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2012 !~ @2013 // returns false',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2021-06-06 !~ @2021-06-06',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2021-06-06 !~ @2021-05-06',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2021-06-06T12:36 !~ @2021-06-06T12:36',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2021-06-06T12:36 !~ @2021-05-06T12:35',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2012-01-01T10:30:31.0 !~ @2012-01-01T10:30:31',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2012-01-01T10:30:31.1 !~ @2012-01-01T10:30:31',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T12:25 !~ @T12:25',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T12:25 !~ @T12:27',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'String' !~ 'String'",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'String' !~ 'string'",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "@2012 !~ @2012 // returns true",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "@2012 !~ @2013 // returns false",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "@2012-01 !~ @2012 // returns false as well",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           "@2012-01-01T10:30 !~ @2012-01-01T10:30 // returns true",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           "@2012-01-01T10:30 !~ @2012-01-01T10:31 // returns false",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           "@2012-01-01T10:30:31 !~ @2012-01-01T10:30 // returns false as well",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           "@2012-01-01T10:30:31.0 !~ @2012-01-01T10:30:31 // returns true",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           "@2012-01-01T10:30:31.1 !~ @2012-01-01T10:30:31 // returns false",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "1 year !~ 1 'a' // true",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "1 second !~ 1 's' // true",
    //     ),
    //     [false],
    //   );
    // });

    // test('> : ', () {
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T12:25 > @T12:25',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T12:27 > @T12:25',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'String' > 'String'",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'string' > 'String'",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '10 > 5 // true',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           '10 > 5.0 // false; note the 10 is converted to a decimal to perform the comparison',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'abc' > 'ABC' // true",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           "4 'm' > 4 'cm' // true (or { } if the implementation does not support unit conversion)",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2018-03-01 > @2018-01-01 // true',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2018-03 > @2018-03-01 // empty ({ })',
    //     ),
    //     [],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2018-03-01T10:30:00 > @2018-03-01T10:00:00 // true',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2018-03-01T10 > @2018-03-01T10:30 // empty ({ })',
    //     ),
    //     [],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           '@2018-03-01T10:30:00 > @2018-03-01T10:30:00.0 // false',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T10:30:00 > @T10:00:00 // true',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T10 > @T10:30 // empty ({ })',
    //     ),
    //     [],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T10:30:00 > @T10:30:00.0 // false',
    //     ),
    //     [false],
    //   );
    // });
    // test('< : ', () {
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T12:25 < @T12:25',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T12:27 < @T12:25',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'String' < 'String'",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'String' < 'string'",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'string' < 'String'",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '10 < 5 // false',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           '10 < 5.0 // false; note the 10 is converted to a decimal to perform the comparison',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'abc' < 'ABC' // false",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           "4 'm' < 4 'cm' // true (or { } if the implementation does not support unit conversion)",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2018-03-01 < @2018-01-01 // false',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2018-03 < @2018-03-01 // empty ({ })',
    //     ),
    //     [],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           '@2018-03-01T10:30:00 < @2018-03-01T10:00:00 // false',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2018-03-01T10 < @2018-03-01T10:30 // empty ({ })',
    //     ),
    //     [],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           '@2018-03-01T10:30:00 < @2018-03-01T10:30:00.0 // false',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T10:30:00 < @T10:00:00 // false',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T10 < @T10:30 // empty ({ })',
    //     ),
    //     [],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T10:30:00 < @T10:30:00.0 // false',
    //     ),
    //     [false],
    //   );
    // });
    // test('<= : >', () {
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T12:25 <= @T12:25',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T12:27 <= @T12:25',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'String' <= 'String'",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'string' <= 'String'",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '10 <= 5 // true',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           '10 <= 5.0 // false; note the 10 is converted to a decimal to perform the comparison',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'abc' <= 'ABC' // false",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           "4 'm' >= 4 'cm' // true (or { } if the implementation does not support unit conversion)",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2018-03-01 <= @2018-01-01 // false',
    //     ),
    //     [false],
    //   );

    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2018-03 <= @2018-03-01 // empty ({ })',
    //     ),
    //     [],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           '@2018-03-01T10:30:00 <= @2018-03-01T10:00:00 // false',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2018-03-01T10 <= @2018-03-01T10:30 // empty ({ })',
    //     ),
    //     [],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           '@2018-03-01T10:30:00 <= @2018-03-01T10:30:00.0 // true',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T10:30:00 <= @T10:00:00 // false',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T10 <= @T10:30 // empty ({ })',
    //     ),
    //     [],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T10:30:00 <= @T10:30:00.0 // true',
    //     ),
    //     [true],
    //   );
    // });
    // test('>= : ', () {
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T12:25 >= @T12:25',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T12:27 >= @T12:25',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'String' >= 'String'",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'string' >= 'String'",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '10 >= 5 // true',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           '10 >= 5.0 // false; note the 10 is converted to a decimal to perform the comparison',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: "'abc' >= 'ABC' // false",
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           "4 'm' <= 4 'cm' // true (or { } if the implementation does not support unit conversion)",
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2018-03-01 >= @2018-01-01 // true',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2018-03 >= @2018-03-01 // empty ({ })',
    //     ),
    //     [],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           '@2018-03-01T10:30:00 >= @2018-03-01T10:00:00 // true',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@2018-03-01T10 >= @2018-03-01T10:30 // empty ({ })',
    //     ),
    //     [],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression:
    //           '@2018-03-01T10:30:00 >= @2018-03-01T10:30:00.0 // true',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T10:30:00 >= @T10:00:00 // true',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T10 >= @T10:30 // empty ({ })',
    //     ),
    //     [],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '@T10:30:00 >= @T10:30:00.0 // true',
    //     ),
    //     [true],
    //   );
    // });
    // test('is : ', () {
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '12 is Integer',
    //     ),
    //     [true],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '12 is Decimal',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '12.5 is Integer',
    //     ),
    //     [false],
    //   );
    //   expect(
    //     walkFhirPath(
    //       context: patient3.toJson(),
    //       pathExpression: '12.5 is Decimal',
    //     ),
    //     [true],
    //   );
    // });
  });
  // group(
  //   'Math Operators: ',
  //   () {
  //     test('/ : ', () {
  //       expect(
  //         walkFhirPath(
  //           context: patient3.toJson(),
  //           pathExpression: '(1.2 / 1.8).round(8) = 0.66666667',
  //         ),
  //         [true],
  //       );
  //       expect(
  //         walkFhirPath(context: patient3.toJson(), pathExpression: '1/0'),
  //         [],
  //       );
  //     });
  //     test('- : ', () {
  //       expect(
  //         walkFhirPath(context: patient3.toJson(), pathExpression: '75-70'),
  //         [5],
  //       );
  //       expect(
  //         walkFhirPath(
  //           context: patient3.toJson(),
  //           pathExpression: '75-70-75',
  //         ),
  //         [-70],
  //       );
  //     });
  //     test('Precedence : ', () {
  //       expect(
  //         walkFhirPath(
  //           context: patient3.toJson(),
  //           pathExpression: '75+70-75',
  //         ),
  //         [70],
  //       );
  //       expect(
  //         walkFhirPath(
  //           context: patient3.toJson(),
  //           pathExpression: '1+2*3+4 = 11',
  //         ),
  //         [true],
  //       );
  //       expect(
  //         walkFhirPath(
  //           context: patient3.toJson(),
  //           pathExpression: '1+2*-3+4 = -1',
  //         ),
  //         [true],
  //       );
  //       expect(
  //         walkFhirPath(
  //           context: patient3.toJson(),
  //           pathExpression: '-1-2*3 = -7',
  //         ),
  //         [true],
  //       );
  //       expect(
  //         walkFhirPath(
  //           context: patient3.toJson(),
  //           pathExpression: '1-2*3-4*5 = -25',
  //         ),
  //         [true],
  //       );
  //       expect(
  //         walkFhirPath(
  //           context: patient3.toJson(),
  //           pathExpression: '1-2.ceiling()*3-4*5.ceiling() = -25',
  //         ),
  //         [true],
  //       );
  //     });
  //   },
  // );
}
