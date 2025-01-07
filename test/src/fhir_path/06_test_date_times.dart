import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

import '00_test_data.dart';

void testDateTimes() {
  group('DateTime Arithmetic', () {
    final response = QuestionnaireResponse.fromJson(questionnaireResponse);
    test('Basic Date Addition/Subtraction', () {
      final node1 = engine.parse('authored');
      expect(
        engine.evaluate(response, node1),
        ['2014-12-11T04:44:16Z'.toFhirDateTime],
      );

      final node2 = engine.parse('authored + 6 months');
      expect(
        engine.evaluate(response, node2),
        ['2015-06-11T04:44:16Z'.toFhirDateTime],
      );

      final node3 = engine.parse('authored - 6 months');
      expect(
        engine.evaluate(response, node3),
        ['2014-06-11T04:44:16Z'.toFhirDateTime],
      );

      final node4 = engine.parse('(today() - 6 months) > (today() - 7 months)');
      expect(
        engine.evaluate(response, node4),
        [true],
      );

      final node5 = engine.parse('(today() - 6 months) < (today() - 7 months)');
      expect(
        engine.evaluate(response, node5),
        [false],
      );

      final node6 = engine.parse('@2014 + 24 months');
      expect(
        engine.evaluate(response, node6),
        ['2016'],
      );

      final node7 = engine.parse('@2019-03-01 + 24 months // @2021-03-01');
      expect(
        engine.evaluate(response, node7),
        ['2021-03-01'],
      );

      final node8 = engine.parse('@2014 + 23 months');
      expect(
        engine.evaluate(response, node8),
        ['2015'],
      );

      final node9 = engine.parse('@2016 + 365 days');
      expect(
        engine.evaluate(response, node9),
        ['2017'],
      );

      final node10 = engine.parse('@2014 - 24 months');
      expect(
        engine.evaluate(response, node10),
        ['2012'],
      );

      final node11 = engine.parse('@2019-03-01 - 24 months // @2021-03-01');
      expect(
        engine.evaluate(response, node11),
        ['2017-03-01'],
      );
    });
  });
}
