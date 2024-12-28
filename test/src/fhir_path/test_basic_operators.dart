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
        <FhirBase>[],
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
        <FhirBase>[],
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

    group('Operators: ', () {
      test('~ : ', () {
        final node = engine.parse('{} ~ {}');
        expect(
          engine.evaluate(patient3, node),
          [true.toFhirBoolean],
        );

        final node1 = engine.parse('10 ~ 10');
        expect(
          engine.evaluate(patient3, node1),
          [true.toFhirBoolean],
        );

        final node2 = engine.parse('10 ~ 9');
        expect(
          engine.evaluate(patient3, node2),
          [false.toFhirBoolean],
        );

        final node3 = engine.parse('10.0 ~ 10');
        expect(
          engine.evaluate(patient3, node3),
          [true.toFhirBoolean],
        );

        final node4 = engine.parse('10.9 ~ 9.1');
        expect(
          engine.evaluate(patient3, node4),
          [false.toFhirBoolean],
        );

        final node5 = engine.parse('10.9 ~ 10.9');
        expect(
          engine.evaluate(patient3, node5),
          [true.toFhirBoolean],
        );

        final node6 = engine.parse('true ~ true');
        expect(
          engine.evaluate(patient3, node6),
          [true.toFhirBoolean],
        );

        final node7 = engine.parse('false ~ true');
        expect(
          engine.evaluate(patient3, node7),
          [false.toFhirBoolean],
        );

        final node8 = engine.parse('@2012 ~ @2012');
        expect(
          engine.evaluate(patient3, node8),
          [true.toFhirBoolean],
        );

        final node9 = engine.parse('@2012 ~ @2013');
        expect(
          engine.evaluate(patient3, node9),
          [false.toFhirBoolean],
        );

        final node10 = engine.parse('@2021-06-06 ~ @2021-06-06');
        expect(
          engine.evaluate(patient3, node10),
          [true.toFhirBoolean],
        );

        final node11 = engine.parse('@2021-06-06 ~ @2021-05-06');
        expect(
          engine.evaluate(patient3, node11),
          [false.toFhirBoolean],
        );

        final node12 = engine.parse('@2021-06-06T12:36 ~ @2021-06-06T12:36');
        expect(
          engine.evaluate(patient3, node12),
          [true.toFhirBoolean],
        );

        final node13 = engine.parse('@2021-06-06T12:36 ~ @2021-05-06T12:35');
        expect(
          engine.evaluate(patient3, node13),
          [false.toFhirBoolean],
        );

        final node14 =
            engine.parse('@2012-01-01T10:30:31.0 ~ @2012-01-01T10:30:31');
        expect(
          engine.evaluate(patient3, node14),
          [true.toFhirBoolean],
        );

        final node15 =
            engine.parse('@2012-01-01T10:30:31.1 ~ @2012-01-01T10:30:31');
        expect(
          engine.evaluate(patient3, node15),
          [false.toFhirBoolean],
        );

        final node16 = engine.parse('@T12:25 ~ @T12:25');
        expect(
          engine.evaluate(patient3, node16),
          [true.toFhirBoolean],
        );

        final node17 = engine.parse('@T12:25 ~ @T12:27');
        expect(
          engine.evaluate(patient3, node17),
          [false.toFhirBoolean],
        );

        final node18 = engine.parse("'String' ~ 'String'");
        expect(
          engine.evaluate(patient3, node18),
          [true.toFhirBoolean],
        );

        final node19 = engine.parse("'String' ~ 'string'");
        expect(
          engine.evaluate(patient3, node19),
          [true.toFhirBoolean],
        );

        final node20 = engine.parse('@2012-01 ~ @2012');
        expect(
          engine.evaluate(patient3, node20),
          <FhirBase>[],
        );

        final node21 = engine.parse('@2012-01-01T10:30 ~ @2012-01-01T10:30');
        expect(
          engine.evaluate(patient3, node21),
          [true.toFhirBoolean],
        );

        final node22 = engine.parse('@2012-01-01T10:30 ~ @2012-01-01T10:31');
        expect(
          engine.evaluate(patient3, node22),
          [false.toFhirBoolean],
        );

        final node23 = engine.parse('@2012-01-01T10:30:31 ~ @2012-01-01T10:30');
        expect(
          engine.evaluate(patient3, node23),
          <FhirBase>[],
        );

        final node24 =
            engine.parse('@2012-01-01T10:30:31.0 ~ @2012-01-01T10:30:31');
        expect(
          engine.evaluate(patient3, node24),
          [true.toFhirBoolean],
        );

        final node25 =
            engine.parse('@2012-01-01T10:30:31.1 ~ @2012-01-01T10:30:31');
        expect(
          engine.evaluate(patient3, node25),
          [false.toFhirBoolean],
        );

        final node26 = engine.parse("1 year ~ 1 'a'");
        expect(
          engine.evaluate(patient3, node26),
          [true.toFhirBoolean],
        );

        final node27 = engine.parse("1 second ~ 1 's'");
        expect(
          engine.evaluate(patient3, node27),
          [true.toFhirBoolean],
        );
      });
    });

    test('!= : ', () {
      final node = engine.parse('10 != 10');
      expect(
        engine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );

      final node1 = engine.parse('10 != 9');
      expect(
        engine.evaluate(patient3, node1),
        [true.toFhirBoolean],
      );

      final node2 = engine.parse('10.0 != 10');
      expect(
        engine.evaluate(patient3, node2),
        [false.toFhirBoolean],
      );

      final node3 = engine.parse('10.9 != 9.1');
      expect(
        engine.evaluate(patient3, node3),
        [true.toFhirBoolean],
      );

      final node4 = engine.parse('10.9 != 10.9');
      expect(
        engine.evaluate(patient3, node4),
        [false.toFhirBoolean],
      );

      final node5 = engine.parse('true != true');
      expect(
        engine.evaluate(patient3, node5),
        [false.toFhirBoolean],
      );

      final node6 = engine.parse('false != true');
      expect(
        engine.evaluate(patient3, node6),
        [true.toFhirBoolean],
      );

      final node7 = engine.parse('@2021 != @2021');
      expect(
        engine.evaluate(patient3, node7),
        [false.toFhirBoolean],
      );

      final node8 = engine.parse('@2021 != @2020');
      expect(
        engine.evaluate(patient3, node8),
        [true.toFhirBoolean],
      );

      final node9 = engine.parse('@2021-06-06 != @2021-06-06');
      expect(
        engine.evaluate(patient3, node9),
        [false.toFhirBoolean],
      );

      final node10 = engine.parse('@2021-06-06 != @2021-05-06');
      expect(
        engine.evaluate(patient3, node10),
        [true.toFhirBoolean],
      );

      final node11 = engine.parse('@2021-06-06T12:36 != @2021-06-06T12:36');
      expect(
        engine.evaluate(patient3, node11),
        [false.toFhirBoolean],
      );

      final node12 = engine.parse('@2021-06-06T12:36 != @2021-05-06T12:35');
      expect(
        engine.evaluate(patient3, node12),
        [true.toFhirBoolean],
      );

      final node13 =
          engine.parse('@2012-01-01T10:30:31.0 != @2012-01-01T10:30:31');
      expect(
        engine.evaluate(patient3, node13),
        [false.toFhirBoolean],
      );

      final node14 =
          engine.parse('@2012-01-01T10:30:31.1 != @2012-01-01T10:30:31');
      expect(
        engine.evaluate(patient3, node14),
        [true.toFhirBoolean],
      );

      final node15 = engine.parse('@T12:25 != @T12:25');
      expect(
        engine.evaluate(patient3, node15),
        [false.toFhirBoolean],
      );

      final node16 = engine.parse('@T12:25 != @T12:27');
      expect(
        engine.evaluate(patient3, node16),
        [true.toFhirBoolean],
      );

      final node17 = engine.parse("'String' != 'String'");
      expect(
        engine.evaluate(patient3, node17),
        [false.toFhirBoolean],
      );

      final node18 = engine.parse("'String' != 'string'");
      expect(
        engine.evaluate(patient3, node18),
        [true.toFhirBoolean],
      );
    });

    test('!~ : ', () {
      final node = engine.parse('{} !~ {}');
      expect(
        engine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );

      final node1 = engine.parse('10 !~ 10');
      expect(
        engine.evaluate(patient3, node1),
        [false.toFhirBoolean],
      );

      final node2 = engine.parse('10 !~ 9');
      expect(
        engine.evaluate(patient3, node2),
        [true.toFhirBoolean],
      );

      final node3 = engine.parse('10.0 !~ 10');
      expect(
        engine.evaluate(patient3, node3),
        [false.toFhirBoolean],
      );

      final node4 = engine.parse('10.9 !~ 9.1');
      expect(
        engine.evaluate(patient3, node4),
        [true.toFhirBoolean],
      );

      final node5 = engine.parse('10.9 !~ 10.9');
      expect(
        engine.evaluate(patient3, node5),
        [false.toFhirBoolean],
      );

      final node6 = engine.parse('true !~ true');
      expect(
        engine.evaluate(patient3, node6),
        [false.toFhirBoolean],
      );

      final node7 = engine.parse('false !~ true');
      expect(
        engine.evaluate(patient3, node7),
        [true.toFhirBoolean],
      );

      final node8 = engine.parse('@2012 !~ @2012');
      expect(
        engine.evaluate(patient3, node8),
        [false.toFhirBoolean],
      );

      final node9 = engine.parse('@2012 !~ @2013');
      expect(
        engine.evaluate(patient3, node9),
        [true.toFhirBoolean],
      );

      final node10 = engine.parse('@2021-06-06 !~ @2021-06-06');
      expect(
        engine.evaluate(patient3, node10),
        [false.toFhirBoolean],
      );

      final node11 = engine.parse('@2021-06-06 !~ @2021-05-06');
      expect(
        engine.evaluate(patient3, node11),
        [true.toFhirBoolean],
      );

      final node12 = engine.parse('@2021-06-06T12:36 !~ @2021-06-06T12:36');
      expect(
        engine.evaluate(patient3, node12),
        [false.toFhirBoolean],
      );

      final node13 = engine.parse('@2021-06-06T12:36 !~ @2021-05-06T12:35');
      expect(
        engine.evaluate(patient3, node13),
        [true.toFhirBoolean],
      );

      final node14 =
          engine.parse('@2012-01-01T10:30:31.0 !~ @2012-01-01T10:30:31');
      expect(
        engine.evaluate(patient3, node14),
        [false.toFhirBoolean],
      );

      final node15 =
          engine.parse('@2012-01-01T10:30:31.1 !~ @2012-01-01T10:30:31');
      expect(
        engine.evaluate(patient3, node15),
        [true.toFhirBoolean],
      );

      final node16 = engine.parse('@T12:25 !~ @T12:25');
      expect(
        engine.evaluate(patient3, node16),
        [false.toFhirBoolean],
      );

      final node17 = engine.parse('@T12:25 !~ @T12:27');
      expect(
        engine.evaluate(patient3, node17),
        [true.toFhirBoolean],
      );

      final node18 = engine.parse("'String' !~ 'String'");
      expect(
        engine.evaluate(patient3, node18),
        [false.toFhirBoolean],
      );

      final node19 = engine.parse("'String' !~ 'string'");
      expect(
        engine.evaluate(patient3, node19),
        [false.toFhirBoolean],
      );

      final node20 = engine.parse('@2012-01 !~ @2012');
      expect(
        engine.evaluate(patient3, node20),
        [true.toFhirBoolean],
      );

      final node21 = engine.parse('@2012-01-01T10:30 !~ @2012-01-01T10:30');
      expect(
        engine.evaluate(patient3, node21),
        [false.toFhirBoolean],
      );

      final node22 = engine.parse('@2012-01-01T10:30 !~ @2012-01-01T10:31');
      expect(
        engine.evaluate(patient3, node22),
        [true.toFhirBoolean],
      );

      final node23 = engine.parse('@2012-01-01T10:30:31 !~ @2012-01-01T10:30');
      expect(
        engine.evaluate(patient3, node23),
        [true.toFhirBoolean],
      );

      final node24 =
          engine.parse('@2012-01-01T10:30:31.0 !~ @2012-01-01T10:30:31');
      expect(
        engine.evaluate(patient3, node24),
        [false.toFhirBoolean],
      );

      final node25 =
          engine.parse('@2012-01-01T10:30:31.1 !~ @2012-01-01T10:30:31');
      expect(
        engine.evaluate(patient3, node25),
        [true.toFhirBoolean],
      );

      final node26 = engine.parse("1 year !~ 1 'a'");
      expect(
        engine.evaluate(patient3, node26),
        [false.toFhirBoolean],
      );

      final node27 = engine.parse("1 second !~ 1 's'");
      expect(
        engine.evaluate(patient3, node27),
        [false.toFhirBoolean],
      );
    });
    test('> : ', () {
      final node = engine.parse('@T12:25 > @T12:25');
      expect(
        engine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );

      final node1 = engine.parse('@T12:27 > @T12:25');
      expect(
        engine.evaluate(patient3, node1),
        [true.toFhirBoolean],
      );

      final node2 = engine.parse("'String' > 'String'");
      expect(
        engine.evaluate(patient3, node2),
        [false.toFhirBoolean],
      );

      final node3 = engine.parse("'string' > 'String'");
      expect(
        engine.evaluate(patient3, node3),
        [true.toFhirBoolean],
      );

      final node4 = engine.parse('10 > 5');
      expect(
        engine.evaluate(patient3, node4),
        [true.toFhirBoolean],
      );

      final node5 = engine.parse('10 > 5.0');
      expect(
        engine.evaluate(patient3, node5),
        [true.toFhirBoolean],
      );

      final node6 = engine.parse("'abc' > 'ABC'");
      expect(
        engine.evaluate(patient3, node6),
        [true.toFhirBoolean],
      );

      final node7 = engine.parse("4 'm' > 4 'cm'");
      expect(
        engine.evaluate(patient3, node7),
        [true.toFhirBoolean],
      );

      final node8 = engine.parse('@2018-03-01 > @2018-01-01');
      expect(
        engine.evaluate(patient3, node8),
        [true.toFhirBoolean],
      );

      final node9 = engine.parse('@2018-03 > @2018-03-01');
      expect(
        engine.evaluate(patient3, node9),
        <FhirBase>[],
      );

      final node10 =
          engine.parse('@2018-03-01T10:30:00 > @2018-03-01T10:00:00');
      expect(
        engine.evaluate(patient3, node10),
        [true.toFhirBoolean],
      );

      final node11 = engine.parse('@2018-03-01T10 > @2018-03-01T10:30');
      expect(
        engine.evaluate(patient3, node11),
        <FhirBase>[],
      );

      final node12 =
          engine.parse('@2018-03-01T10:30:00 > @2018-03-01T10:30:00.0');
      expect(
        engine.evaluate(patient3, node12),
        [false.toFhirBoolean],
      );

      final node13 = engine.parse('@T10:30:00 > @T10:00:00');
      expect(
        engine.evaluate(patient3, node13),
        [true.toFhirBoolean],
      );

      final node14 = engine.parse('@T10 > @T10:30');
      expect(
        engine.evaluate(patient3, node14),
        <FhirBase>[],
      );

      final node15 = engine.parse('@T10:30:00 > @T10:30:00.0');
      expect(
        engine.evaluate(patient3, node15),
        [false.toFhirBoolean],
      );
    });

    test('< : ', () {
      final node = engine.parse('@T12:25 < @T12:25');
      expect(
        engine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );

      final node1 = engine.parse('@T12:27 < @T12:25');
      expect(
        engine.evaluate(patient3, node1),
        [false.toFhirBoolean],
      );

      final node2 = engine.parse("'String' < 'String'");
      expect(
        engine.evaluate(patient3, node2),
        [false.toFhirBoolean],
      );

      final node3 = engine.parse("'String' < 'string'");
      expect(
        engine.evaluate(patient3, node3),
        [true.toFhirBoolean],
      );

      final node4 = engine.parse("'string' < 'String'");
      expect(
        engine.evaluate(patient3, node4),
        [false.toFhirBoolean],
      );

      final node5 = engine.parse('10 < 5');
      expect(
        engine.evaluate(patient3, node5),
        [false.toFhirBoolean],
      );

      final node6 = engine.parse('10 < 5.0');
      expect(
        engine.evaluate(patient3, node6),
        [false.toFhirBoolean],
      );

      final node7 = engine.parse("'abc' < 'ABC'");
      expect(
        engine.evaluate(patient3, node7),
        [false.toFhirBoolean],
      );

      final node8 = engine.parse("4 'm' < 4 'cm'");
      expect(
        engine.evaluate(patient3, node8),
        [false.toFhirBoolean],
      );

      final node9 = engine.parse('@2018-03-01 < @2018-01-01');
      expect(
        engine.evaluate(patient3, node9),
        [false.toFhirBoolean],
      );

      final node10 = engine.parse('@2018-03 < @2018-03-01');
      expect(
        engine.evaluate(patient3, node10),
        <FhirBase>[],
      );

      final node11 =
          engine.parse('@2018-03-01T10:30:00 < @2018-03-01T10:00:00');
      expect(
        engine.evaluate(patient3, node11),
        [false.toFhirBoolean],
      );

      final node12 = engine.parse('@2018-03-01T10 < @2018-03-01T10:30');
      expect(
        engine.evaluate(patient3, node12),
        <FhirBase>[],
      );

      final node13 =
          engine.parse('@2018-03-01T10:30:00 < @2018-03-01T10:30:00.0');
      expect(
        engine.evaluate(patient3, node13),
        [false.toFhirBoolean],
      );

      final node14 = engine.parse('@T10:30:00 < @T10:00:00');
      expect(
        engine.evaluate(patient3, node14),
        [false.toFhirBoolean],
      );

      final node15 = engine.parse('@T10 < @T10:30');
      expect(
        engine.evaluate(patient3, node15),
        <FhirBase>[],
      );

      final node16 = engine.parse('@T10:30:00 < @T10:30:00.0');
      expect(
        engine.evaluate(patient3, node16),
        [false.toFhirBoolean],
      );
    });

    test('<= : ', () {
      final node = engine.parse('@T12:25 <= @T12:25');
      expect(
        engine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );

      final node1 = engine.parse('@T12:27 <= @T12:25');
      expect(
        engine.evaluate(patient3, node1),
        [false.toFhirBoolean],
      );

      final node2 = engine.parse("'String' <= 'String'");
      expect(
        engine.evaluate(patient3, node2),
        [true.toFhirBoolean],
      );

      final node3 = engine.parse("'string' <= 'String'");
      expect(
        engine.evaluate(patient3, node3),
        [false.toFhirBoolean],
      );

      final node4 = engine.parse('10 <= 5');
      expect(
        engine.evaluate(patient3, node4),
        [false.toFhirBoolean],
      );

      final node5 = engine.parse('10 <= 5.0');
      expect(
        engine.evaluate(patient3, node5),
        [false.toFhirBoolean],
      );

      final node6 = engine.parse("'abc' <= 'ABC'");
      expect(
        engine.evaluate(patient3, node6),
        [false.toFhirBoolean],
      );

      final node7 = engine.parse("4 'm' <= 4 'cm'");
      expect(
        engine.evaluate(patient3, node7),
        [false.toFhirBoolean],
      );

      final node8 = engine.parse('@2018-03-01 <= @2018-01-01');
      expect(
        engine.evaluate(patient3, node8),
        [false.toFhirBoolean],
      );

      final node9 = engine.parse('@2018-03 <= @2018-03-01');
      expect(
        engine.evaluate(patient3, node9),
        <FhirBase>[],
      );

      final node10 =
          engine.parse('@2018-03-01T10:30:00 <= @2018-03-01T10:00:00');
      expect(
        engine.evaluate(patient3, node10),
        [false.toFhirBoolean],
      );

      final node11 = engine.parse('@2018-03-01T10 <= @2018-03-01T10:30');
      expect(
        engine.evaluate(patient3, node11),
        <FhirBase>[],
      );

      final node12 =
          engine.parse('@2018-03-01T10:30:00 <= @2018-03-01T10:30:00.0');
      expect(
        engine.evaluate(patient3, node12),
        [true.toFhirBoolean],
      );

      final node13 = engine.parse('@T10:30:00 <= @T10:00:00');
      expect(
        engine.evaluate(patient3, node13),
        [false.toFhirBoolean],
      );

      final node14 = engine.parse('@T10 <= @T10:30');
      expect(
        engine.evaluate(patient3, node14),
        <FhirBase>[],
      );

      final node15 = engine.parse('@T10:30:00 <= @T10:30:00.0');
      expect(
        engine.evaluate(patient3, node15),
        [true.toFhirBoolean],
      );
    });

    test('>= : ', () {
      final node = engine.parse('@T12:25 >= @T12:25');
      expect(
        engine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );

      final node1 = engine.parse('@T12:27 >= @T12:25');
      expect(
        engine.evaluate(patient3, node1),
        [true.toFhirBoolean],
      );

      final node2 = engine.parse("'String' >= 'String'");
      expect(
        engine.evaluate(patient3, node2),
        [true.toFhirBoolean],
      );

      final node3 = engine.parse("'string' >= 'String'");
      expect(
        engine.evaluate(patient3, node3),
        [true.toFhirBoolean],
      );

      final node4 = engine.parse('10 >= 5');
      expect(
        engine.evaluate(patient3, node4),
        [true.toFhirBoolean],
      );

      final node5 = engine.parse('10 >= 5.0');
      expect(
        engine.evaluate(patient3, node5),
        [true.toFhirBoolean],
      );

      final node6 = engine.parse("'abc' >= 'ABC'");
      expect(
        engine.evaluate(patient3, node6),
        [true.toFhirBoolean],
      );

      final node7 = engine.parse("4 'm' >= 4 'cm'");
      expect(
        engine.evaluate(patient3, node7),
        [true.toFhirBoolean],
      );

      final node8 = engine.parse('@2018-03-01 >= @2018-01-01');
      expect(
        engine.evaluate(patient3, node8),
        [true.toFhirBoolean],
      );

      final node9 = engine.parse('@2018-03 >= @2018-03-01');
      expect(
        engine.evaluate(patient3, node9),
        <FhirBase>[],
      );

      final node10 =
          engine.parse('@2018-03-01T10:30:00 >= @2018-03-01T10:00:00');
      expect(
        engine.evaluate(patient3, node10),
        [true.toFhirBoolean],
      );

      final node11 = engine.parse('@2018-03-01T10 >= @2018-03-01T10:30');
      expect(
        engine.evaluate(patient3, node11),
        <FhirBase>[],
      );

      final node12 =
          engine.parse('@2018-03-01T10:30:00 >= @2018-03-01T10:30:00.0');
      expect(
        engine.evaluate(patient3, node12),
        [true.toFhirBoolean],
      );

      final node13 = engine.parse('@T10:30:00 >= @T10:00:00');
      expect(
        engine.evaluate(patient3, node13),
        [true.toFhirBoolean],
      );

      final node14 = engine.parse('@T10 >= @T10:30');
      expect(
        engine.evaluate(patient3, node14),
        <FhirBase>[],
      );

      final node15 = engine.parse('@T10:30:00 >= @T10:30:00.0');
      expect(
        engine.evaluate(patient3, node15),
        [true.toFhirBoolean],
      );
    });

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
