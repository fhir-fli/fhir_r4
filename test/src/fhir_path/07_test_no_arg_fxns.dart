import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';
import '00_test_data.dart';

void testNoArgFxns() {
  group('Functions w/o Arguments: ', () {
    test('empty', () {
      var node = testEngine.parse('name.family.empty()');
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse('name.given.empty()');
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse('Patient.language.empty()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('Patient.name.period.empty()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('{}.empty()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
    });
    test('allTrue', () {
      var node = testEngine.parse('Patient.active.allTrue()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('Patient.deceasedBoolean.allTrue()');
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
    });
    test('anyTrue', () {
      var node = testEngine.parse('Patient.active.anyTrue()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('Patient.deceasedBoolean.anyTrue()');
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
    });
    test('allFalse', () {
      var node = testEngine.parse('Patient.active.allFalse()');
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse('Patient.deceasedBoolean.allFalse()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
    });
    test('anyFalse', () {
      var node = testEngine.parse('Patient.active.anyFalse()');
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse('Patient.deceasedBoolean.anyFalse()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
    });
    test('count', () {
      var node = testEngine.parse('Patient.name.count()');
      expect(
        testEngine.evaluate(patient3, node),
        [4.toFhirInteger],
      );
      node = testEngine.parse('Patient.name.given.count()');
      expect(
        testEngine.evaluate(patient3, node),
        [8.toFhirInteger],
      );
    });
    test('distinct', () {
      var node = testEngine.parse('Patient.name.distinct()');
      expect(testEngine.evaluate(patient3, node).map((e) => e.toJson()), [
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
      ]);
      node = testEngine.parse('Patient.name.given.distinct()');
      expect(
        testEngine
            .evaluate(patient3, node)
            .map((e) => e is PrimitiveType ? e.primitiveValue : e.toJson()),
        ['Jason', 'Grey', 'Kristin', 'John', 'Jacob', 'Jingleheimer'],
      );
    });
    test('isDistinct', () {
      var node = testEngine.parse('Patient.name.distinct().isDistinct()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('Patient.name.given.distinct().isDistinct()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('Patient.address.period.isDistinct()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('Patient.name.isDistinct()');
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
    });
    test('Single', () {
      var node = testEngine.parse('Patient.telecom.single()');
      expect(
        testEngine.evaluate(patient3, node).first.toJson(),
        {
          'system': 'email',
          'use': 'mobile',
          'rank': 3,
        },
      );
      node = testEngine.parse('Patient.name.id.single()');
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
    });
    test('First', () {
      var node = testEngine.parse('Patient.name.id.first()');
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse('Patient.name.given.first()');
      expect(
        testEngine.evaluate(patient3, node),
        ['Jason'.toFhirString],
      );
    });
    test('Last', () {
      var node = testEngine.parse('Patient.name.id.last()');
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse('Patient.name.given.last()');
      expect(
        testEngine.evaluate(patient3, node),
        ['Jingleheimer'.toFhirString],
      );
    });
    test('Tail', () {
      var node = testEngine.parse('Patient.name.id.tail()');
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse('Patient.name.given.tail()');
      expect(testEngine.evaluate(patient3, node), [
        'Grey'.toFhirString,
        'Jason'.toFhirString,
        'Grey'.toFhirString,
        'Kristin'.toFhirString,
        'John'.toFhirString,
        'Jacob'.toFhirString,
        'Jingleheimer'.toFhirString,
      ]);
    });
    test('toBoolean', () {
      var node = testEngine.parse("'1'.toBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'true'.toBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'t'.toBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'yes'.toBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'y'.toBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'1.0'.toBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'0'.toBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'false'.toBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'f'.toBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'no'.toBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'n'.toBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'0.0'.toBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse('1.toBoolean()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('0.toBoolean()');
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse('1.0.toBoolean()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('0.0.toBoolean()');
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
    });
    test('convertsToBoolean', () {
      var node = testEngine.parse("'1'.toBoolean().convertsToBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'true'.toBoolean().convertsToBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'t'.toBoolean().convertsToBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'yes'.toBoolean().convertsToBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'y'.toBoolean().convertsToBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'1.0'.toBoolean().convertsToBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'0'.toBoolean().convertsToBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'false'.toBoolean().convertsToBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'f'.toBoolean().convertsToBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'no'.toBoolean().convertsToBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'n'.toBoolean().convertsToBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'0.0'.toBoolean().convertsToBoolean()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('1.toBoolean().convertsToBoolean()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('0.toBoolean().convertsToBoolean()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('1.0.toBoolean().convertsToBoolean()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('0.0.toBoolean().convertsToBoolean()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('name.first().convertsToBoolean()');
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse('name.given.first().convertsToBoolean()');
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
    });
    test('toInteger', () {
      var node = testEngine.parse("'1'.toInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        [1.toFhirInteger],
      );
      node = testEngine.parse("'true'.toInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[1.toFhirInteger],
      );
      node = testEngine.parse("'t'.toInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse("'yes'.toInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse("'y'.toInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse("'1.0'.toInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse("'0'.toInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        [0.toFhirInteger],
      );
      node = testEngine.parse("'false'.toInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[0.toFhirInteger],
      );
      node = testEngine.parse("'f'.toInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse("'no'.toInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse("'n'.toInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse("'0.0'.toInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse('1.toInteger()');
      expect(
        testEngine.evaluate(patient3, node),
        [1.toFhirInteger],
      );
      node = testEngine.parse('0.toInteger()');
      expect(
        testEngine.evaluate(patient3, node),
        [0.toFhirInteger],
      );
      node = testEngine.parse('1.0.toInteger()');
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse('0.0.toInteger()');
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse('true.toInteger()');
      expect(
        testEngine.evaluate(patient3, node),
        [1.toFhirInteger],
      );
      node = testEngine.parse('false.toInteger()');
      expect(
        testEngine.evaluate(patient3, node),
        [0.toFhirInteger],
      );
    });
    test('convertsToInteger', () {
      var node = testEngine.parse("'1'.convertsToInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'true'.convertsToInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'t'.convertsToInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'yes'.convertsToInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'y'.convertsToInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'1.0'.convertsToInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'0'.convertsToInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'false'.convertsToInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'f'.convertsToInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'no'.convertsToInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'n'.convertsToInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'0.0'.convertsToInteger()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse('1.convertsToInteger()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('0.convertsToInteger()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('1.0.convertsToInteger()');
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse('0.0.convertsToInteger()');
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse('true.convertsToInteger()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('false.convertsToInteger()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
    });
    test('toDate', () {
      var node = testEngine.parse('@2021-01-01.toDate()');
      expect(
        testEngine.evaluate(patient3, node),
        ['2021-01-01'.toFhirDate],
      );
      node = testEngine.parse("'2021-01-01'.toDate()");
      expect(
        testEngine.evaluate(patient3, node),
        ['2021-01-01'.toFhirDate],
      );
    });
    test('convertsToDate', () {
      var node = testEngine.parse('@2021-01-01.convertsToDate()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'2021-01-01'.convertsToDate()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
    });
    test('toDateTime', () {
      var node = testEngine.parse('@2021-01-01.toDateTime()');
      expect(
        testEngine.evaluate(patient3, node),
        ['2021-01-01'.toFhirDateTime],
      );
      node = testEngine.parse("'2021-01-01'.toDateTime()");
      expect(
        testEngine.evaluate(patient3, node),
        ['2021-01-01'.toFhirDateTime],
      );
      node = testEngine.parse('@2021-01-01T12:12.toDateTime()');
      expect(
        testEngine.evaluate(patient3, node),
        ['2021-01-01T12:12'.toFhirDateTime],
      );
      node = testEngine.parse("'2021-01-01T12:12'.toDateTime()");
      expect(
        testEngine.evaluate(patient3, node),
        ['2021-01-01T12:12'.toFhirDateTime],
      );
    });
    test('convertsToDateTime', () {
      var node = testEngine.parse('@2021-01-01.convertsToDateTime()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'2021-01-01'.convertsToDateTime()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('@2021-01-01T12:12.convertsToDateTime()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'2021-01-01T12:12'.convertsToDateTime()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
    });
    test('toDecimal', () {
      var node = testEngine.parse("'1'.toDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [1.0.toFhirDecimal],
      );
      node = testEngine.parse("'true'.toDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[1.toFhirDecimal],
      );
      node = testEngine.parse("'t'.toDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse("'yes'.toDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse("'y'.toDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse("'1.0'.toDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [1.0.toFhirDecimal],
      );
      node = testEngine.parse("'0'.toDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [0.0.toFhirDecimal],
      );
      node = testEngine.parse("'false'.toDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[0.toFhirDecimal],
      );
      node = testEngine.parse("'f'.toDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse("'no'.toDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse("'n'.toDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
      node = testEngine.parse("'0.0'.toDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [0.0.toFhirDecimal],
      );
      node = testEngine.parse('1.toDecimal()');
      expect(
        testEngine.evaluate(patient3, node),
        [1.0.toFhirDecimal],
      );
      node = testEngine.parse('0.toDecimal()');
      expect(
        testEngine.evaluate(patient3, node),
        [0.0.toFhirDecimal],
      );
      node = testEngine.parse('1.0.toDecimal()');
      expect(
        testEngine.evaluate(patient3, node),
        [1.0.toFhirDecimal],
      );
      node = testEngine.parse('0.0.toDecimal()');
      expect(
        testEngine.evaluate(patient3, node),
        [0.0.toFhirDecimal],
      );
      node = testEngine.parse('true.toDecimal()');
      expect(
        testEngine.evaluate(patient3, node),
        [1.0.toFhirDecimal],
      );
      node = testEngine.parse('false.toDecimal()');
      expect(
        testEngine.evaluate(patient3, node),
        [0.0.toFhirDecimal],
      );
    });
    test('convertsToDecimal', () {
      var node = testEngine.parse("'1'.convertsToDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'true'.convertsToDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'t'.convertsToDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'yes'.convertsToDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'y'.convertsToDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'1.0'.convertsToDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'0'.convertsToDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'false'.convertsToDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'f'.convertsToDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'no'.convertsToDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'n'.convertsToDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [false.toFhirBoolean],
      );
      node = testEngine.parse("'0.0'.convertsToDecimal()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('1.convertsToDecimal()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('0.convertsToDecimal()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('1.0.convertsToDecimal()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('0.0.convertsToDecimal()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('true.convertsToDecimal()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('false.convertsToDecimal()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
    });

    test('toQuantity', () {
      var node = testEngine.parse("'4 days'.toQuantity()");
      expect(
        testEngine.evaluate(patient3, node).first.toJson(),
        Quantity(
          value: 4.0.toFhirDecimal,
          system: 'http://unitsofmeasure.org'.toFhirUri,
          code: 'd'.toFhirCode,
        ).toJson(),
      );

      node = testEngine.parse(r"'10 \'mm[Hg]\''.toQuantity()");
      expect(
        testEngine.evaluate(patient3, node).first.toJson(),
        Quantity(
          value: 10.0.toFhirDecimal,
          system: 'http://unitsofmeasure.org'.toFhirUri,
          code: 'mm[Hg]'.toFhirCode,
        ).toJson(),
      );
    });

    test('ConvertsToQuantity', () {
      var node = testEngine.parse("'4 days'.convertsToQuantity()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );

      node = testEngine.parse(r"'10 \'mm[Hg]\''.convertsToQuantity()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
    });

    test('toString', () {
      var node = testEngine.parse('true.toString()');
      expect(
        testEngine.evaluate(patient3, node),
        ['true'.toFhirString],
      );
      node = testEngine.parse('false.toString()');
      expect(
        testEngine.evaluate(patient3, node),
        ['false'.toFhirString],
      );
      node = testEngine.parse('1.toString()');
      expect(
        testEngine.evaluate(patient3, node),
        ['1'.toFhirString],
      );
      node = testEngine.parse('111.toString()');
      expect(
        testEngine.evaluate(patient3, node),
        ['111'.toFhirString],
      );
      node = testEngine.parse('1.1.toString()');
      expect(
        testEngine.evaluate(patient3, node),
        ['1.1'.toFhirString],
      );
      node = testEngine.parse('111.1.toString()');
      expect(
        testEngine.evaluate(patient3, node),
        ['111.1'.toFhirString],
      );
      node = testEngine.parse("1.1 'mg'.toString()");
      expect(
        testEngine.evaluate(patient3, node),
        ["1.1 'mg'".toFhirString],
      );
      node = testEngine.parse("111.1 'mL'.toString()");
      expect(
        testEngine.evaluate(patient3, node),
        ["111.1 'mL'".toFhirString],
      );
      node = testEngine.parse('@2019-08-01.toString()');
      expect(
        testEngine.evaluate(patient3, node),
        ['2019-08-01'.toFhirString],
      );
      node = testEngine.parse('@2021-01-01T12:12.toString()');
      expect(
        testEngine.evaluate(patient3, node),
        ['2021-01-01T12:12'.toFhirString],
      );
      node = testEngine.parse('@T12:12.toString()');
      expect(
        testEngine.evaluate(patient3, node),
        ['12:12'.toFhirString],
      );
    });
    test('convertsToString', () {
      var node = testEngine.parse('true.convertsToString()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('false.convertsToString()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('1.convertsToString()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('111.convertsToString()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('1.1.convertsToString()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('111.1.convertsToString()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("1.1 'mg'.convertsToString()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("111.1 'mL'.convertsToString()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('@2019-08-01.convertsToString()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('@2021-01-01T12:12.convertsToString()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('@T12:12.convertsToString()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
    });
    test('toTime', () {
      var node = testEngine.parse('@T12:22.toTime()');
      expect(
        testEngine.evaluate(patient3, node),
        [FhirTime('12:22')],
      );
      node = testEngine.parse('@T12:22:33.toTime()');
      expect(
        testEngine.evaluate(patient3, node),
        [FhirTime('12:22:33')],
      );
      node = testEngine.parse("'12:22'.toTime()");
      expect(
        testEngine.evaluate(patient3, node),
        [FhirTime('12:22')],
      );
      node = testEngine.parse("'12:22:33.321'.toTime()");
      expect(
        testEngine.evaluate(patient3, node),
        [FhirTime('12:22:33.321')],
      );
    });
    test('convertsToTime', () {
      var node = testEngine.parse('@T12:22.convertsToTime()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse('@T12:22:33.convertsToTime()');
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'T12:22'.convertsToTime()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
      node = testEngine.parse("'12:22:33.321'.convertsToTime()");
      expect(
        testEngine.evaluate(patient3, node),
        [true.toFhirBoolean],
      );
    });
    test('upper', () {
      var node = testEngine.parse("'abcdefg'.upper() // 'ABCDEFG'");
      expect(
        testEngine.evaluate(patient3, node),
        ['ABCDEFG'.toFhirString],
      );
      node = testEngine.parse("'AbCdefg'.upper() // 'ABCDEFG'");
      expect(
        testEngine.evaluate(patient3, node),
        ['ABCDEFG'.toFhirString],
      );
    });
    test('lower', () {
      var node = testEngine.parse("'ABCDEFG'.lower() // 'abcdefg'");
      expect(
        testEngine.evaluate(patient3, node),
        ['abcdefg'.toFhirString],
      );
      node = testEngine.parse("'aBcDEFG'.lower() // 'abcdefg'");
      expect(
        testEngine.evaluate(patient3, node),
        ['abcdefg'.toFhirString],
      );
    });
    test('Length', () {
      var node = testEngine.parse('true.toString().length()');
      expect(
        testEngine.evaluate(patient3, node),
        [4.toFhirInteger],
      );
      node = testEngine.parse('false.toString().length()');
      expect(
        testEngine.evaluate(patient3, node),
        [5.toFhirInteger],
      );
      node = testEngine.parse('1.toString().length()');
      expect(
        testEngine.evaluate(patient3, node),
        [1.toFhirInteger],
      );
      node = testEngine.parse('111.toString().length()');
      expect(
        testEngine.evaluate(patient3, node),
        [3.toFhirInteger],
      );
      node = testEngine.parse('1.1.toString().length()');
      expect(
        testEngine.evaluate(patient3, node),
        [3.toFhirInteger],
      );
      node = testEngine.parse('111.1.toString().length()');
      expect(
        testEngine.evaluate(patient3, node),
        [5.toFhirInteger],
      );
      node = testEngine.parse("1.1 'mg'.toString().length()");
      expect(
        testEngine.evaluate(patient3, node),
        [8.toFhirInteger],
      );
      node = testEngine.parse("111.1 'mL'.toString().length()");
      expect(
        testEngine.evaluate(patient3, node),
        [10.toFhirInteger],
      );
      node = testEngine.parse('@2019-08-01.toString().length()');
      expect(
        testEngine.evaluate(patient3, node),
        [10.toFhirInteger],
      );
      node = testEngine.parse('@2021-01-01T12:12.toString().length()');
      expect(
        testEngine.evaluate(patient3, node),
        [16.toFhirInteger],
      );
      node = testEngine.parse('@T12:12.toString().length()');
      expect(
        testEngine.evaluate(patient3, node),
        [5.toFhirInteger],
      );
    });
    test('toChars', () {
      final node = testEngine.parse("'true'.toChars()");
      expect(
        testEngine.evaluate(patient3, node),
        [
          't'.toFhirString,
          'r'.toFhirString,
          'u'.toFhirString,
          'e'.toFhirString,
        ],
      );
    });
    test('abs', () {
      var node = testEngine.parse('(-5) // -5');
      expect(
        testEngine.evaluate(patient3, node),
        [-5.toFhirInteger],
      );
      node = testEngine.parse('(-5).abs() // 5');
      expect(
        testEngine.evaluate(patient3, node),
        [5.toFhirInteger],
      );
      node = testEngine.parse('(-5.5).abs() // 5.5');
      expect(
        testEngine.evaluate(patient3, node),
        [5.5.toFhirDecimal],
      );
      node = testEngine.parse("today() + 5.5 'mg'");
      expect(
        () => testEngine.evaluate(patient3, node),
        throwsA(const TypeMatcher<PathEngineException>()),
      );

      node = testEngine.parse("(-5.5 'mg').abs() // 5.5 'mg'");
      expect(
        testEngine.evaluate(patient3, node).first.toJson(),
        {'value': 5.5, 'system': 'http://unitsofmeasure.org', 'code': 'mg'},
      );
    });
    test('ceiling', () {
      var node = testEngine.parse('1.ceiling() // 1');
      expect(
        testEngine.evaluate(patient3, node),
        [1.toFhirInteger],
      );
      node = testEngine.parse('1.1.ceiling() // 2');
      expect(
        testEngine.evaluate(patient3, node),
        [2.toFhirInteger],
      );
      node = testEngine.parse('(-1.1).ceiling() // -1');
      expect(
        testEngine.evaluate(patient3, node),
        [-1.toFhirInteger],
      );
    });
    test('exp', () {
      var node = testEngine.parse('0.exp() // 1.0');
      expect(
        testEngine.evaluate(patient3, node),
        [1.0.toFhirDecimal],
      );
      node = testEngine.parse('(-0.0).exp() // 1.0');
      expect(
        testEngine.evaluate(patient3, node),
        [1.0.toFhirDecimal],
      );
    });
    test('floor', () {
      var node = testEngine.parse('1.floor() // 1');
      expect(
        testEngine.evaluate(patient3, node),
        [1.toFhirInteger],
      );
      node = testEngine.parse('2.1.floor() // 2');
      expect(
        testEngine.evaluate(patient3, node),
        [2.toFhirInteger],
      );
      node = testEngine.parse('(-2.1).floor() // -3');
      expect(
        testEngine.evaluate(patient3, node),
        [-3.toFhirInteger],
      );
    });
    test('ln', () {
      var node = testEngine.parse('1.ln() // 0.0');
      expect(
        testEngine.evaluate(patient3, node),
        [0.0.toFhirDecimal],
      );
      node = testEngine.parse('1.0.ln() // 0.0');
      expect(
        testEngine.evaluate(patient3, node),
        [0.0.toFhirDecimal],
      );
    });
    test('log', () {
      var node = testEngine.parse('16.log(2) // 4.0');
      expect(
        testEngine.evaluate(patient3, node),
        [4.0.toFhirDecimal],
      );
      node = testEngine.parse('100.0.log(10.0) // 2.0');
      expect(
        testEngine.evaluate(patient3, node),
        [2.0.toFhirDecimal],
      );
    });
    test('sqrt', () {
      var node = testEngine.parse('81.sqrt() // 9.0');
      expect(
        testEngine.evaluate(patient3, node),
        [9.0.toFhirDecimal],
      );
      node = testEngine.parse('(-1).sqrt() // empty');
      expect(
        testEngine.evaluate(patient3, node),
        <FhirBase>[],
      );
    });
    test('truncate', () {
      var node = testEngine.parse('101.truncate() // 101');
      expect(
        testEngine.evaluate(patient3, node),
        [101.toFhirInteger],
      );
      node = testEngine.parse('1.00000001.truncate() // 1');
      expect(
        testEngine.evaluate(patient3, node),
        [1.toFhirInteger],
      );
      node = testEngine.parse('(-1.56).truncate() // -1');
      expect(
        testEngine.evaluate(patient3, node),
        [-1.toFhirInteger],
      );
    });
    test('children', () {
      var node = testEngine.parse('Patient.name.children()');
      expect(testEngine.evaluate(patient3, node), [
        NameUse.official,
        'Faulkenberry'.toFhirString,
        'Jason'.toFhirString,
        'Grey'.toFhirString,
        NameUse.official,
        'Faulkenberry'.toFhirString,
        'Jason'.toFhirString,
        'Grey'.toFhirString,
        'Niel'.toFhirString,
        'Kristin'.toFhirString,
        'Smith'.toFhirString,
        'John'.toFhirString,
        'Jacob'.toFhirString,
        'Jingleheimer'.toFhirString,
      ]);
      node = testEngine.parse('Patient.address.children()');
      expect(
          testEngine.evaluate(patient3, node).map((e) => e.toJson()).toList(), [
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
              'extension': [
                {
                  'extension': [
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
                      'url': 'www.mayjuun.com',
                      'valueCount': {'unit': 'Kg'},
                    },
                    {
                      'url': 'www.mayjuun.com',
                      'valueCount': {'unit': 'Km'},
                    }
                  ],
                  'url': 'www.mayjuun.com',
                  'valueCount': {'unit': 'Kg'},
                },
                {
                  'url': 'www.mayjuun.com',
                  'valueCount': {'unit': 'Km'},
                }
              ],
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
    test('Descendants', () {
      var node = testEngine.parse('Patient.name.descendants()');
      expect(testEngine.evaluate(patient3, node), [
        NameUse.official,
        'Faulkenberry'.toFhirString,
        'Jason'.toFhirString,
        'Grey'.toFhirString,
        NameUse.official,
        'Faulkenberry'.toFhirString,
        'Jason'.toFhirString,
        'Grey'.toFhirString,
        'Niel'.toFhirString,
        'Kristin'.toFhirString,
        'Smith'.toFhirString,
        'John'.toFhirString,
        'Jacob'.toFhirString,
        'Jingleheimer'.toFhirString,
      ]);
      node =
          testEngine.parse('Patient.address[1].period.extension.descendants()');
      expect(testEngine.evaluate(patient3, node).map((e) => e.toJson()), [
        {
          'extension': [
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
              'url': 'www.mayjuun.com',
              'valueCount': {'unit': 'Kg'},
            },
            {
              'url': 'www.mayjuun.com',
              'valueCount': {'unit': 'Km'},
            }
          ],
          'url': 'www.mayjuun.com',
          'valueCount': {'unit': 'Kg'},
        },
        {
          'url': 'www.mayjuun.com',
          'valueCount': {'unit': 'Km'},
        },
        {'value': 'www.mayjuun.com'},
        {'value': 'www.mayjuun.com'},
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
          'url': 'www.mayjuun.com',
          'valueCount': {'unit': 'Kg'},
        },
        {
          'url': 'www.mayjuun.com',
          'valueCount': {'unit': 'Km'},
        },
        {'value': 'www.mayjuun.com'},
        {'value': 'www.mayjuun.com'},
        {
          'url': 'www.mayjuun.com',
          'valueCount': {'unit': 'Kg'},
        },
        {
          'url': 'www.mayjuun.com',
          'valueCount': {'unit': 'Km'},
        },
        {'value': 'www.mayjuun.com'},
        {'value': 'www.mayjuun.com'},
        {'value': 'www.mayjuun.com'},
        {'value': 'www.mayjuun.com'},
      ]);
    });

    test('DateTimeFunctions', () {
      final startNow = DateTime.now();
      var node = testEngine.parse('now()');
      final resultNow = testEngine.evaluate(patient3, node).first;
      final endNow = DateTime.now();
      expect(
        (startNow.isBefore(toDateTime(resultNow)) ||
                startNow.isAtSameMomentAs(toDateTime(resultNow))) &&
            (endNow.isAfter(toDateTime(resultNow)) ||
                endNow.isAtSameMomentAs(toDateTime(resultNow))),
        true,
      );

      final startTimeOfDay = FhirTime(
        DateTime.now().toIso8601String().split('T').last,
      );
      node = testEngine.parse('timeOfDay()');
      final resultTimeOfDay = testEngine.evaluate(patient3, node).first;
      final endTimeOfDay = FhirTime(
        DateTime.now().toIso8601String().split('T').last,
      );

      expect(
        (startTimeOfDay <= (resultTimeOfDay as FhirTime) ?? false) &&
            (endTimeOfDay >= resultTimeOfDay ?? false),
        true,
      );

      node = testEngine.parse('today()');
      expect(
        testEngine.evaluate(patient3, node).first,
        FhirDate.fromString(DateTime.now().toIso8601String().split('T').first),
      );
    });
  });
}

DateTime toDateTime(dynamic dateTime) => dateTime is DateTime
    ? dateTime
    : dateTime is FhirDateTimeBase
        ? dateTime.valueDateTime!
        : DateTime.now();
