import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

import 'package:test/test.dart';
import 'test_data.dart';

ExpressionNode parseExpression(String expression, [FhirBase? context]) {
  final node = testEngine.parse(expression);
  return node;
}

Future<void> testBasicTypes() async {
  group('FHIRPathEngine Basic Types Tests', () {
    test('Boolean', () async {
      expect(parseExpression('true').constant, true.toFhirBoolean);
      expect(parseExpression('false').constant, false.toFhirBoolean);
    });

    test('String', () async {
      expect(
        parseExpression("'test string'").constant,
        'test string'.toFhirString,
      );
      expect(
        parseExpression("'urn:oid:3.4.5.6.7.8'").constant,
        'urn:oid:3.4.5.6.7.8'.toFhirString,
      );
    });

    test('Delimited Identifier', () async {
      expect(parseExpression('`test string`').name, 'test string');
      expect(
        parseExpression('`urn:oid:3.4.5.6.7.8`').name,
        'urn:oid:3.4.5.6.7.8',
      );
    });

    test('Integer', () async {
      expect(parseExpression('0').constant, 0.toFhirInteger);
      expect(parseExpression('45').constant, 45.toFhirInteger);
      // Uncomment if negative integers are supported
      final node = testEngine.parse('-5');
      expect(node.operation, FpOperation.Minus);
      expect(node.opNext?.constant, equals(5.toFhirInteger));
    });

    test('Decimal', () async {
      expect(parseExpression('0.0').constant, 0.0.toFhirDecimal);
      expect(parseExpression('3.1415927').constant, 3.1415927.toFhirDecimal);
    });

    test('Date', () async {
      final node1 = parseExpression('@2015-02-04');
      expect(
        (node1.constant as FHIRConstant?)?.value,
        equals(FhirDate.fromString('2015-02-04')),
      );

      final node2 = parseExpression('@2018-06-12');
      expect(
        (node2.constant as FHIRConstant?)?.value,
        equals(FhirDate.fromString('2018-06-12')),
      );

      final node3 = parseExpression('@2018-06');
      expect(
        (node3.constant as FHIRConstant?)?.value,
        equals(FhirDate.fromString('2018-06')),
      );

      final node4 = parseExpression('@2018');
      expect(
        (node4.constant as FHIRConstant?)?.value,
        equals(FhirDate.fromString('2018')),
      );
    });

    test('DateTime', () async {
      const dateTime1 = '@2015-02-04T14:34:28+09:00';
      final node1 = parseExpression(dateTime1);
      expect(
        (node1.constant as FHIRConstant?)?.value,
        dateTime1,
      );

      const dateTime2 = '@2018-02-04T14:38:28+09:00';
      final node2 = parseExpression(dateTime2);
      expect(
        (node2.constant as FHIRConstant?)?.value,
        dateTime2,
      );

      const dateTime3 = '@2018-02-04T14:38:28.559+09:00';
      final node3 = parseExpression(dateTime3);
      expect(
        (node3.constant as FHIRConstant?)?.value,
        dateTime3,
      );
    });

    test('Time', () async {
      const time1 = '@14:34:28';
      final node1 = parseExpression(time1);
      expect(
        (node1.constant as FHIRConstant?)?.value,
        time1,
      );

      const time2 = '@T06:55:28.559';
      final node2 = parseExpression(time2);
      expect(
        (node2.constant as FHIRConstant?)?.value,
        time2,
      );

      const time3 = '@T06:55';
      final node3 = parseExpression(time3);
      expect(
        (node3.constant as FHIRConstant?)?.value,
        time3,
      );
    });

    test('Quantity', () async {
      expect(
        parseExpression("4.5 'mg'").constant?.toJson(),
        Quantity(
          value: 4.5.toFhirDecimal,
          system: 'http://unitsofmeasure.org'.toFhirUri,
          code: 'mg'.toFhirCode,
        ).toJson(),
      );
      expect(
        parseExpression("100 '[degF]'").constant?.toJson(),
        Quantity(
          code: '[degF]'.toFhirCode,
          system: 'http://unitsofmeasure.org'.toFhirUri,
          value: 100.toFhirDecimal,
        ).toJson(),
      );
    });

    // test('Duration Quantities', () async {
    //   expect(parseExpression('1 seconds = 1 second'), [true.toFhirBoolean]);
    //   expect(parseExpression("1 seconds = 1 's'"), [true.toFhirBoolean]);
    //   expect(parseExpression("2 seconds = 2 's'"), [true.toFhirBoolean]);
    //   expect(parseExpression("1 week != 1 'wk'"), [false.toFhirBoolean]);
    // });

    test('Non-Escape Sequences', () async {
      expect(
        parseExpression(r"'\p'").constant,
        'p'.toFhirString,
      ); // '\p' -> 'p'
      expect(
        parseExpression(r"'\\p'").constant,
        r'\p'.toFhirString,
      ); // '\\p' -> '\p'
      expect(
        parseExpression(r"'\3'").constant,
        '3'.toFhirString,
      ); // '\3' -> '3'
      expect(
        parseExpression(r"'\u005'").constant,
        'u005'.toFhirString,
      ); // '\u005' -> 'u005'
      // TODO(Dokotela): Uncomment when escape sequences are supported
      // expect(parseExpression(r"'\'").constant, ''.toFhirString); // '\'' -> ''
    });
  });
}
