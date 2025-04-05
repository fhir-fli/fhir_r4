import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

import 'test_data.dart';

Future<void> testDateTimes() async {
  group('DateTime Arithmetic', () {
    final response = questionnaireResponse3;
    test('Basic Date Addition/Subtraction', () async {
      final node1 = testEngine.parse('authored');
      expect(
        await testEngine.evaluate(response, node1),
        ['2014-12-11T04:44:16Z'.toFhirDateTime],
      );

      final node2 = testEngine.parse('authored + 6 months');
      expect(
        await testEngine.evaluate(response, node2),
        ['2015-06-11T04:44:16Z'.toFhirDateTime],
      );

      final node3 = testEngine.parse('authored - 6 months');
      expect(
        await testEngine.evaluate(response, node3),
        ['2014-06-11T04:44:16Z'.toFhirDateTime],
      );

      final node4 =
          testEngine.parse('(today() - 6 months) > (today() - 7 months)');
      expect(
        await testEngine.evaluate(response, node4),
        [true.toFhirBoolean],
      );

      final node5 =
          testEngine.parse('(today() - 6 months) < (today() - 7 months)');
      expect(
        await testEngine.evaluate(response, node5),
        [false.toFhirBoolean],
      );

      final node6 = testEngine.parse('@2014 + 24 months');
      expect(
        await testEngine.evaluate(response, node6),
        ['2016'.toFhirDate],
      );

      final node7 = testEngine.parse('@2019-03-01 + 24 months // @2021-03-01');
      expect(
        await testEngine.evaluate(response, node7),
        ['2021-03-01'.toFhirDate],
      );

      final node8 = testEngine.parse('@2014 + 23 months');
      expect(
        await testEngine.evaluate(response, node8),
        ['2015'.toFhirDate],
      );

      final node9 = testEngine.parse('@2016 + 365 days');
      expect(
        await testEngine.evaluate(response, node9),
        ['2017'.toFhirDate],
      );

      final node10 = testEngine.parse('@2014 - 24 months');
      expect(
        await testEngine.evaluate(response, node10),
        ['2012'.toFhirDate],
      );

      final node11 = testEngine.parse('@2019-03-01 - 24 months // @2021-03-01');
      expect(
        await testEngine.evaluate(response, node11),
        ['2017-03-01'.toFhirDate],
      );
    });
  });
}
