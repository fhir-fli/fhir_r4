// ignore_for_file: lines_longer_than_80_chars

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:test/test.dart';

import 'test_data.dart';

/// FHIRPath Test Suite - reference="http://hl7.org/fhirpath|2.0.0"
void testFpTestSuite() {
  group('testMiscellaneousAccessorTests - Miscellaneous accessor tests', () {
    // <test name="testExtractBirthDate" description="Extract birthDate"
    // inputfile="patient-example.xml" predicate="false">
    // <expression>birthDate</expression>
    // <output type="date">1974-12-25</output>
    // });

    test('testExtractBirthDate', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: 'birthDate'),
        ['1974-12-25'.toFhirDate],
      );
    });

    // <test name="testPatientHasBirthDate"
    // description="patient has a birthDate"
    // inputfile="patient-example.xml" predicate="true">
    // <expression>birthDate</expression>
    // <output type="boolean">true</output>
    // });

    test('testExtractBirthDate', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'birthDate.exists()',
        ),
        [true.toFhirBoolean],
      );
    });

    // <test name="testPatientTelecomTypes" description="patient telecom types"
    // inputfile="patient-example.xml">
    // <expression>telecom.use</expression>
    // <output type="code">home</output>
    // <output type="code">work</output>
    // <output type="code">mobile</output>
    // <output type="code">old</output>
    // });

    test('testExtractBirthDate', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'telecom.use',
        ),
        [
          ContactPointUse.home,
          ContactPointUse.work,
          ContactPointUse.mobile,
          ContactPointUse.old,
        ],
      );
    });
  });

  // Tests ported from the Java Unit Tests
  group('testBasics - Tests ported from the Java Unit Tests', () {
    // test(patient(), "name.given", 3, "string");
    // <output type="string">Peter</output>
    // <output type="string">James</output>
    // <output type="string">Jim</output>
    // <output type="string">Peter</output>
    // <output type="string">James</output>
    // });

    test('testSimple', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'name.given[3]',
        ),
        ['Peter'.toFhirString],
      );
    });

    // test(patient(), "name.period", 0);
    // <test name="testSimpleNone" inputfile="patient-example.xml">
    // <expression>name.suffix</expression>
    // });

    test('testSimpleNone', () {
      expect(
          walkFhirPath(
            context: patient1,
            pathExpression: 'name.period',
          ).map((e) => e.toJson()).toList(),
          [
            {'end': '2002'},
          ]);
    });

    // test(patient(), "name.\"given\"", 3, "string");
    // <output type="string">Peter</output>
    // <output type="string">James</output>
    // <output type="string">Jim</output>
    // <output type="string">Peter</output>
    // <output type="string">James</output>
    // });

    test('testEscapedIdentifier', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'name.`given`[3]',
        ),
        ['Peter'.toFhirString],
      );
    });

    // <output type="string">Peter</output>
    // <output type="string">James</output>
    // <output type="string">Jim</output>
    // <output type="string">Peter</output>
    // <output type="string">James</output>
    // });

    test('testSimpleBackTick1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '`Patient`.name.`given`[3]',
        ),
        ['Peter'.toFhirString],
      );
    });

    // testWrong(patient(), "name.given1");
    // <test name="testSimpleFail" inputfile="patient-example.xml" mode="strict">
    // <expression invalid="semantic">name.given1</expression>
    // });

    test('testSimpleBackTick1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'name.given1',
        ),
        <FhirBase>[],
      );
    });

    // test(patient(), "Patient.name.given", 3, "string");
    // <output type="string">Peter</output>
    // <output type="string">James</output>
    // <output type="string">Jim</output>
    // <output type="string">Peter</output>
    // <output type="string">James</output>
    // });

    test('testSimpleWithContext', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.given[3]',
        ),
        ['Peter'.toFhirString],
      );
    });

    // testWrong(patient(), "Encounter.name.given");
    // <test name="testSimpleWithWrongContext" inputfile="patient-example.xml"
    //  mode="strict">
    // <expression invalid="semantic">Encounter.name.given</expression>
    test('testSimpleWithContext', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Encounter.name.given',
        ),
        <FhirBase>[],
      );
    });
  });

  group('testObservations', () {
    // test(observation(), "Observation.value.unit", 1, "string");
    test('testPolymorphismA', () {
      expect(
        walkFhirPath(
          context: observation1,
          pathExpression: 'Observation.value.unit',
        ),
        ['lbs'.toFhirString],
      );
    });

    // testWrong(observation(), "Observation.valueQuantity.unit");
    // <test name="testPolymorphismB" inputfile="observation-example.xml"
    //  mode="strict">
    // <expression invalid="semantic">Observation.valueQuantity.unit</expression>
    // });

    test('testPolymorphismIsA', () {
      expect(
        walkFhirPath(
          context: observation1,
          pathExpression: 'Observation.value is Quantity',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: Test makes wrong assumption about precedence
    // test("testPolymorphismIsB", () {
    //   expect(
    //       walkFhirPath(
    //           context: observation1,
    //           pathExpression: r"Observation.value is Period.not()"),
    //       [true]);
    // });

    test('testPolymorphismIsB-fixed', () {
      expect(
        walkFhirPath(
          context: observation1,
          pathExpression: '(Observation.value is Period).not()',
        ),
        [true.toFhirBoolean],
      );
    });

    // testBoolean(observation(), "Observation.value.as(Quantity).unit", true);
    test('testPolymorphismAsA', () {
      expect(
        () => walkFhirPath(
          context: observation1,
          pathExpression: 'Observation.value.as(Quantity).unit',
        ),
        throwsA(isA<FhirPathDeprecatedExpressionException>()),
      );
    });
  });

  // testBoolean(observation(), "(Observation.value as Quantity).unit", true);
  test('testPolymorphismAsAFunction', () {
    expect(
      walkFhirPath(
        context: observation1,
        pathExpression: '(Observation.value as Quantity).unit',
      ),
      ['lbs'.toFhirString],
    );
  });

  // testWrong(observation(), "(Observation.value as Period).unit");
  // <test name="testPolymorphismAsB" inputfile="observation-example.xml"
  //  mode="strict">
  // <expression invalid="semantic">(Observation.value as Period).unit</expression>
  // });
  test('testPolymorphismAsB', () {
    expect(
      walkFhirPath(
        context: observation1,
        pathExpression: '(Observation.value as Period).unit',
      ),
      <FhirBase>[],
    );
  });

  // test(observation(), "Observation.value.as(Period).start", 0);
  // <test name="testPolymorphismAsBFunction" inputfile="observation-example.xml">
  // <expression>Observation.value.as(Period).start</expression>
  // });
  // });
  test('testPolymorphismAsBFunction', () {
    expect(
      () => walkFhirPath(
        context: observation1,
        pathExpression: 'Observation.value.as(Period).start',
      ),
      throwsA(const TypeMatcher<PathEngineException>()),
    );
  });

  group('testDollar', () {
    // test(patient(), "Patient.name.given.where(substring($this.length()-3) = 'out')", 0);
    test('testDollarThis1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              r"Patient.name.given.where(substring($this.length()-3) = 'out')",
        ),
        <FhirBase>[],
      );
    });

    // test(patient(), "Patient.name.given.where(substring($this.length()-3) = 'ter')", 1, "string");
    test('testDollarThis2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              r"Patient.name.given.where(substring($this.length()-3) = 'ter')",
        ),
        ['Peter'.toFhirString, 'Peter'.toFhirString],
      );
    });

    // FIXED: this appears to only capture the first given name, but it should
    // capture three
    // test("testDollarOrderAllowed", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"Patient.name.skip(1).given"),
    //       ["Jim"]);
    // });

    test('testDollarOrderAllowed-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.skip(1).given[0]',
        ),
        ['Jim'.toFhirString],
      );
    });

    // <test name="testDollarOrderAllowedA" inputfile="patient-example.xml">
    // <expression>Patient.name.skip(3).given</expression>
    // });

    test('testDollarOrderAllowedA', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.skip(3).given',
        ),
        <FhirBase>[],
      );
    });

    // <test name="testDollarOrderNotAllowed" inputfile="patient-example.xml"
    // mode="strict" checkOrderedFunctions="true">
    // <expression invalid="semantic">Patient.children().skip(1)</expression>
    test('testDollarOrderAllowedA', () {
      expect(
          walkFhirPath(
            context: patient1,
            pathExpression: 'Patient.name.children().skip(1)',
          ).map((e) => e is PrimitiveType ? e.primitiveValue : e.toJson()),
          [
            'Chalmers',
            'Peter',
            'James',
            'usual',
            'Jim',
            'maiden',
            'Windsor',
            'Peter',
            'James',
            {'end': '2002'},
          ]);
    });
  });

  group('testLiterals', () {
    // testBoolean(patient(), "Patient.name.exists() = true", true);
    test('testLiteralTrue', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.exists() = true',
        ),
        [true.toFhirBoolean],
      );
    });

    // testBoolean(patient(), "Patient.name.empty() = false", true);
    test('testLiteralFalse', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.empty() = false',
        ),
        [true.toFhirBoolean],
      );
    });

    // testBoolean(patient(), "Patient.name.given.first() = 'Peter'", true);
    test('testLiteralString', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "Patient.name.given.first() = 'Peter'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralInteger1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.convertsToInteger()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralInteger0', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '0.convertsToInteger()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralIntegerNegative1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(-1).convertsToInteger()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralIntegerNegative1Invalid', () {
      expect(
        () => walkFhirPath(
          context: patient1,
          pathExpression: '-1.convertsToInteger()',
        ),
        throwsA(const TypeMatcher<PathEngineException>()),
      );
    });

    test('testLiteralIntegerMax', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '2147483647.convertsToInteger()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralString', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'test'.convertsToString()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralStringEscapes', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: r"""'\\\/\f\r\n\t\"\`\'\u002a'.convertsToString()""",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralBooleanTrue', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'true.convertsToBoolean()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralBooleanFalse', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'false.convertsToBoolean()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDecimal10', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.0.convertsToDecimal()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDecimal01', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '0.1.convertsToDecimal()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDecimal00', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '0.0.convertsToDecimal()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDecimalNegative01', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(-0.1).convertsToDecimal()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDecimalNegative01Invalid', () {
      expect(
        () => walkFhirPath(
          context: patient1,
          pathExpression: '-0.1.convertsToDecimal()',
        ),
        throwsA(const TypeMatcher<PathEngineException>()),
      );
    });

    test('testLiteralDecimalMax', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1234567890987654321.0.convertsToDecimal()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDecimalStep', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '0.00000001.convertsToDecimal()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDateYear', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2015 is Date',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDateMonth', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2015-02 is Date',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDateDay', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2015-02-04 is Date',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDateTimeYear', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2015T is DateTime',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDateTimeMonth', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2015-02T is DateTime',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDateTimeDay', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2015-02-04T is DateTime',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDateTimeHour', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2015-02-04T14 is DateTime',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDateTimeMinute', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2015-02-04T14:34 is DateTime',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDateTimeSecond', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2015-02-04T14:34:28 is DateTime',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDateTimeMillisecond', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2015-02-04T14:34:28.123 is DateTime',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDateTimeUTC', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2015-02-04T14:34:28Z is DateTime',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDateTimeTimezoneOffset', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2015-02-04T14:34:28+10:00 is DateTime',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralTimeHour', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T14 is Time',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralTimeMinute', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T14:34 is Time',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralTimeSecond', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T14:34:28 is Time',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralTimeMillisecond', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T14:34:28.123 is Time',
        ),
        [true.toFhirBoolean],
      );
    });

    //   Current: "@T14:34:28Z" => TimeParser (@T14:34:28) + IdentifierParser (Z)
    //<test name="testLiteralTimeUTC" inputfile="patient-example.xml"
    // invalid="true"><expression>@T14:34:28Z is Time</expression>});
    test('testLiteralTimeUtc', () {
      expect(
        () => walkFhirPath(
          context: patient1,
          pathExpression: '@T14:34:28Z is Time',
        ),
        throwsA(const TypeMatcher<PathEngineException>()),
      );
    });

    // <test name="testLiteralTimeTimezoneOffset" inputfile="patient-example.xml"
    // invalid="true"><expression>@T14:34:28+10:00 is Time</expression>});
    test('testLiteralTimeTimezoneOffset', () {
      expect(
        () => walkFhirPath(
          context: patient1,
          pathExpression: '@T14:34:28+10:00 is Time',
        ),
        throwsA(const TypeMatcher<PathEngineException>()),
      );
    });

    test('testLiteralQuantityDecimal', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "10.1 'mg'.convertsToQuantity()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralQuantityInteger', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "10 'mg'.convertsToQuantity()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralQuantityDay', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '4 days.convertsToQuantity()',
        ),
        [true.toFhirBoolean],
      );
    });

    // TODO(Dokotela): Still doesn't like negative numbers to start
    // test('testLiteralIntegerNotEqual', () {
    //   expect(
    //     walkFhirPath(context: patient1, pathExpression: '-3 != 3'),
    //     [true.toFhirBoolean],
    //   );
    // });

    test('testLiteralIntegerEqual', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.given.count() = 5',
        ),
        [true.toFhirBoolean],
      );
    });

    // TODO(Dokotela): Again, starting with negative numbers is a problem
    // test('testPolarityPrecedence', () {
    //   expect(
    //     walkFhirPath(
    //       context: patient1,
    //       pathExpression: '-Patient.name.given.count() = -5',
    //     ),
    //     [true.toFhirBoolean],
    //   );
    // });

    test('testLiteralIntegerGreaterThan', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.given.count() > -3',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralIntegerCountNotEqual', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.given.count() != 0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralIntegerLessThanTrue', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 < 2'),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralIntegerLessThanFalse', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 < -2'),
        [false.toFhirBoolean],
      );
    });

    test('testLiteralIntegerLessThanPolarityTrue', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '+1 < +2'),
        [true.toFhirBoolean],
      );
    });

    // TODO(Dokotela): Still doesn't like negative numbers to start
    // test('testLiteralIntegerLessThanPolarityFalse', () {
    //   expect(
    //     walkFhirPath(context: patient1, pathExpression: '-1 < 2'),
    //     [true.toFhirBoolean],
    //   );
    // });

    test('testLiteralDecimalGreaterThanNonZeroTrue', () {
      expect(
        walkFhirPath(
          context: observation1,
          pathExpression: 'Observation.value.value > 180.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDecimalGreaterThanZeroTrue', () {
      expect(
        walkFhirPath(
          context: observation1,
          pathExpression: 'Observation.value.value > 0.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDecimalGreaterThanIntegerTrue', () {
      expect(
        walkFhirPath(
          context: observation1,
          pathExpression: 'Observation.value.value > 0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDecimalLessThanInteger', () {
      expect(
        walkFhirPath(
          context: observation1,
          pathExpression: 'Observation.value.value < 190',
        ),
        [true.toFhirBoolean],
      );
    });

    // http://hl7.org/fhirpath/N1/#comparison
    // Both arguments must be of the same type (or implicitly convertible to
    // the same type), and the evaluator will throw an error if the types differ.
    // /*<test name="testLiteralDecimalLessThanInvalid"
    // inputfile="observation-example.xml">
    // <expression invalid="semantic">Observation.value.value
    // < 'test'</expression>// no output - empty set});*/
    test('testLiteralDecimalLessThanInteger', () {
      expect(
        () => walkFhirPath(
          context: observation1,
          pathExpression: "Observation.value.value < 'test'",
        ),
        throwsA(isA<PathEngineException>()),
      );
    });
  });

  group('testDates', () {
    test('testDateEqual', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.birthDate = @1974-12-25',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDateNotEqual', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.birthDate != @1974-12-25T12:34:00',
        ),
        <FhirBase>[],
      );
    });

    // TODO(Dokotela): testDateNotEqualTimezoneOffsetBefore
    // test('testDateNotEqualTimezoneOffsetBefore', () {
    //   expect(
    //     walkFhirPath(
    //       context: patient1,
    //       pathExpression: 'Patient.birthDate != @1974-12-25T12:34:00-10:00',
    //     ),
    //     <FhirBase>[],
    //   );
    // });

    // TODO(Dokotela): testDateNotEqualTimezoneOffsetAfter
    // test('testDateNotEqualTimezoneOffsetAfter', () {
    //   expect(
    //     walkFhirPath(
    //       context: patient1,
    //       pathExpression: 'Patient.birthDate != @1974-12-25T12:34:00+10:00',
    //     ),
    //     <FhirBase>[],
    //   );
    // });

    // TODO(Dokotela): testDateNotEqualUTC
    // test('testDateNotEqualUTC', () {
    //   expect(
    //     walkFhirPath(
    //       context: patient1,
    //       pathExpression: 'Patient.birthDate != @1974-12-25T12:34:00Z',
    //     ),
    //     <FhirBase>[],
    //   );
    // });

    test('testDateNotEqualTimeSecond', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.birthDate != @T12:14:15',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDateNotEqualTimeMinute', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.birthDate != @T12:14',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDateNotEqualToday', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.birthDate < today()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDateTimeGreaterThanDate', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'now() > Patient.birthDate',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDateTimeTZGreater', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              '@2017-11-05T01:30:00.0-04:00 > @2017-11-05T01:15:00.0-05:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testLiteralDateTimeTZLess', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              '@2017-11-05T01:30:00.0-04:00 < @2017-11-05T01:15:00.0-05:00',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralDateTimeTZEqualFalse', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              '@2017-11-05T01:30:00.0-04:00 = @2017-11-05T01:15:00.0-05:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testLiteralDateTimeTZEqualTrue', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              '@2017-11-05T01:30:00.0-04:00 = @2017-11-05T00:30:00.0-05:00',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('Random Tests', () {
    test('testLiteralUnicode', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: r"Patient.name.given.first() = 'P\u0065ter'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testCollectionNotEmpty', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.given.empty().not()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testCollectionNotEqualEmpty', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.given != {}',
        ),
        <FhirBase>[],
      );
    });

    test('testExpressions', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.select(given | family).distinct()',
        ),
        unorderedEquals([
          'Peter'.toFhirString,
          'James'.toFhirString,
          'Chalmers'.toFhirString,
          'Jim'.toFhirString,
          'Windsor'.toFhirString,
        ]),
      );
    });

    test('testExpressionsEqual', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.given.count() = 1 + 4',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNotEmpty', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.empty().not()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEmpty', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.link.empty()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralNotTrue', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'true.not() = false',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLiteralNotFalse', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'false.not() = true',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntegerBooleanNotTrue', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(0).not() = true',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntegerBooleanNotFalse', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1).not() = false',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNotInvalid', () {
      expect(
        () => walkFhirPath(
          context: patient1,
          pathExpression: '(1|2).not() = false',
        ),
        throwsA(const TypeMatcher<PathEngineException>()),
      );
    });
  });

  group('testTypes', () {
    test('testStringYearConvertsToDate', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'2015'.convertsToDate()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringMonthConvertsToDate', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'2015-02'.convertsToDate()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringDayConvertsToDate', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'2015-02-04'.convertsToDate()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringYearConvertsToDateTime', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'2015'.convertsToDateTime()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringMonthConvertsToDateTime', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'2015-02'.convertsToDateTime()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringDayConvertsToDateTime', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'2015-02-04'.convertsToDateTime()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringHourConvertsToDateTime', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'2015-02-04T14'.convertsToDateTime()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringMinuteConvertsToDateTime', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'2015-02-04T14:34'.convertsToDateTime()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringSecondConvertsToDateTime', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'2015-02-04T14:34:28'.convertsToDateTime()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringMillisecondConvertsToDateTime', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'2015-02-04T14:34:28.123'.convertsToDateTime()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringUTCConvertsToDateTime', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'2015-02-04T14:34:28Z'.convertsToDateTime()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringTZConvertsToDateTime', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'2015-02-04T14:34:28+10:00'.convertsToDateTime()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringHourConvertsToTime', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'14'.convertsToTime()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringMinuteConvertsToTime', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'14:34'.convertsToTime()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringSecondConvertsToTime', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'14:34:28'.convertsToTime()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringMillisecondConvertsToTime', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'14:34:28.123'.convertsToTime()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntegerLiteralConvertsToInteger', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.convertsToInteger()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntegerLiteralIsInteger', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1 is Integer',
        ),
        [true.toFhirBoolean],
      );
    });

    // TODO(Dokotela): integrate: models https://hl7.org/fhirpath/#models
    // test("testIntegerLiteralIsSystemInteger", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"1 is System.Integer"),
    //       [true]);
    // });

    test('testStringLiteralConvertsToInteger', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1'.convertsToInteger()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringLiteralConvertsToIntegerFalse', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'a'.convertsToInteger().not()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringDecimalConvertsToIntegerFalse', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1.0'.convertsToInteger().not()",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('Literals & Conversions', () {
    // FIXED: Incorrect test case. Wrong assumptions around precedence
    // test("testStringLiteralIsNotInteger", () {
    //   expect(walkFhirPath(context: patient1,
    //  pathExpression: r"'1' is Integer.not()"), [true]);
    // });
    test('testStringLiteralIsNotInteger-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "('1' is Integer).not()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLiteralConvertsToInteger', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'true.convertsToInteger()',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: Incorrect test case. Wrong assumptions around precedence
    // test("testBooleanLiteralIsNotInteger", () {
    //   expect(walkFhirPath(context: patient1,
    //  pathExpression: r"true is Integer.not()"), [true]);
    // });
    test('testBooleanLiteralIsNotInteger-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(true is Integer).not()',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: Incorrect test case. Wrong assumptions around precedence
    // test("testDateIsNotInteger", () {
    //   expect(walkFhirPath(context: patient1,
    //  pathExpression: r"@2013-04-05 is Integer.not()"),
    //       [true]);
    // });
    test('testDateIsNotInteger-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(@2013-04-05 is Integer).not()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntegerLiteralToInteger', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.toInteger() = 1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringIntegerLiteralToInteger', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1'.toInteger() = 1",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDecimalLiteralToInteger', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1.1'.toInteger() = {}",
        ),
        <FhirBase>[],
      );
    });

    test('testDecimalLiteralToIntegerIsEmpty', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1.1'.toInteger().empty()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLiteralToInteger', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'true.toInteger() = 1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntegerLiteralConvertsToDecimal', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.convertsToDecimal()',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: wrong grouping again
    // test("testIntegerLiteralIsNotDecimal", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1, pathExpression: r"1 is Decimal.not()"),
    //       [true]);
    // });
    test('testIntegerLiteralIsNotDecimal-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 is Decimal).not()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDecimalLiteralConvertsToDecimal', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.0.convertsToDecimal()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDecimalLiteralIsDecimal', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.0 is Decimal',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringIntegerLiteralConvertsToDecimal', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1'.convertsToDecimal()",
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: Incorrect precedence
    // test("testStringIntegerLiteralIsNotDecimal", () {
    //   expect(walkFhirPath(context: patient1,
    //  pathExpression: r"'1' is Decimal.not()"), [true]);
    // });
    test('testStringIntegerLiteralIsNotDecimal-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "('1' is Decimal).not()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringLiteralConvertsToDecimalFalse', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1.a'.convertsToDecimal().not()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringDecimalLiteralConvertsToDecimal', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1.0'.convertsToDecimal()",
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: Incorrect precedence
    // test("testStringDecimalLiteralIsNotDecimal", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"'1.0' is Decimal.not()"),
    //       [true]);
    // });
    test('testStringDecimalLiteralIsNotDecimal-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "('1.0' is Decimal).not()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLiteralConvertsToDecimal', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'true.convertsToDecimal()',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: again, incorrect grouping in example
    // test("testBooleanLiteralIsNotDecimal", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"true is Decimal.not()"),
    //       [true]);
    // });
    test('testBooleanLiteralIsNotDecimal-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(true is Decimal).not()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntegerLiteralToDecimal', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.toDecimal() = 1.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntegerLiteralToDecimalEquivalent', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.toDecimal() ~ 1.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDecimalLiteralToDecimal', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.0.toDecimal() = 1.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDecimalLiteralToDecimalEqual', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1.1'.toDecimal() = 1.1",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLiteralToDecimal', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'true.toDecimal() = 1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntegerLiteralConvertsToQuantity', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.convertsToQuantity()',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: Wrong assumption about precedence
    // test("testIntegerLiteralIsNotQuantity", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"1 is Quantity.not()"),
    //       [true]);
    // });
    test('testDecimalLiteralConvertsToQuantity', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.0.convertsToQuantity()',
        ),
        [true.toFhirBoolean],
      );
    });

    // TODO(Dokotela): testDecimalLiteralIsNotQuantity
    // test("testDecimalLiteralIsNotQuantity", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"1.0 is System.Quantity.not()"),
    //       [true]);
    // });

    test('testStringIntegerLiteralConvertsToQuantity', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1'.convertsToQuantity()",
        ),
        [true.toFhirBoolean],
      );
    });

    // TODO(Dokotela): testStringIntegerLiteralIsNotQuantity
    // test("testStringIntegerLiteralIsNotQuantity", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"'1' is System.Quantity.not()"),
    //       [true]);
    // });

    test('testStringQuantityLiteralConvertsToQuantity', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1 day'.convertsToQuantity()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringQuantityWeekConvertsToQuantity', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: r"'1 \'wk\''.convertsToQuantity()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringQuantityWeekConvertsToQuantityFalse', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1 wk'.convertsToQuantity().not()",
        ),
        [false.toFhirBoolean],
      );
    });

    test('testStringDecimalLiteralConvertsToQuantityFalse', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1.a'.convertsToQuantity().not()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringDecimalLiteralConvertsToQuantity', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1.0'.convertsToQuantity()",
        ),
        [true.toFhirBoolean],
      );
    });

    // TODO(Dokotela): testStringDecimalLiteralIsNotSystemQuantity
    // test("testStringDecimalLiteralIsNotSystemQuantity", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"'1.0' is System.Quantity.not()"),
    //       [true]);
    // });

    test('testBooleanLiteralConvertsToQuantity', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'true.convertsToQuantity()',
        ),
        [true.toFhirBoolean],
      );
    });

    // TODO(Dokotela): testBooleanLiteralIsNotSystemQuantity
    // test("testBooleanLiteralIsNotSystemQuantity", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"true is System.Quantity.not()"),
    //       [true]);
    // });

    test('testIntegerLiteralToQuantity', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "1.toQuantity() = 1 '1'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDecimalLiteralToQuantity', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.0.toQuantity() = 1.0',
        ),
        [true.toFhirBoolean],
      );
    });

    //<test name="testStringIntegerLiteralToQuantity"
    // inputfile="patient-example.xml">
    // <expression>'1'.toQuantity()</expression>
    //  <output type="Quantity">1 '1'</output>});*/
    test('testStringQuantityLiteralToQuantity', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1 day'.toQuantity() = 1 day",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringQuantityDayLiteralToQuantity', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1 day'.toQuantity() = 1 'day'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringQuantityWeekLiteralToQuantity', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: r"'1 \'wk\''.toQuantity() = 1 'wk'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringDecimalLiteralToQuantity', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1.0'.toQuantity() ~ 1",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntegerLiteralConvertsToBoolean', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.convertsToBoolean()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntegerLiteralConvertsToBooleanFalse', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '2.convertsToBoolean()',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testNegativeIntegerLiteralConvertsToBooleanFalse', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(-1).convertsToBoolean()',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testIntegerLiteralFalseConvertsToBoolean', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '0.convertsToBoolean()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDecimalLiteralConvertsToBoolean', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.0.convertsToBoolean()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringTrueLiteralConvertsToBoolean', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'true'.convertsToBoolean()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringFalseLiteralConvertsToBoolean', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'false'.convertsToBoolean()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringFalseLiteralAlsoConvertsToBoolean', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'False'.convertsToBoolean()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testTrueLiteralConvertsToBoolean', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'true.convertsToBoolean()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testFalseLiteralConvertsToBoolean', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'false.convertsToBoolean()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntegerLiteralToBoolean', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.toBoolean()',
        ),
        [true.toFhirBoolean],
      );
    });

    //<test name="testIntegerLiteralToBooleanEmpty"
    // inputfile="patient-example.xml"><expression>2.toBoolean()
    // </expression>// empty});*/
    test('testIntegerLiteralToBooleanFalse', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '0.toBoolean()',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testStringTrueToBoolean', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'true'.toBoolean()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringFalseToBoolean', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'false'.toBoolean()",
        ),
        [false.toFhirBoolean],
      );
    });

    test('testIntegerLiteralConvertsToString', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.convertsToString()',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: Incorrect assumptions about precedence
    // test("testIntegerLiteralIsNotString", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1, pathExpression: r"1 is String.not()"),
    //       [true]);
    // });
    test('testIntegerLiteralIsNotString-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 is String).not()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNegativeIntegerLiteralConvertsToString', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(-1).convertsToString()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDecimalLiteralConvertsToString', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.0.convertsToString()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStringLiteralConvertsToString', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'true'.convertsToString()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLiteralConvertsToString', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'true.convertsToString()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testQuantityLiteralConvertsToString', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "1 'wk'.convertsToString()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntegerLiteralToString', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.toString()',
        ),
        ['1'.toFhirString],
      );
    });

    test('testNegativeIntegerLiteralToString', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(-1).toString()',
        ),
        ['-1'.toFhirString],
      );
    });

    test('testDecimalLiteralToString', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.0.toString()',
        ),
        ['1.0'.toFhirString],
      );
    });

    test('testStringLiteralToString', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'true'.toString()",
        ),
        ['true'.toFhirString],
      );
    });

    test('testBooleanLiteralToString', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'true.toString()',
        ),
        ['true'.toFhirString],
      );
    });

    test('testQuantityLiteralWkToString', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "1 'wk'.toString()",
        ),
        ["1 'wk'".toFhirString],
      );
    });

    test('testQuantityLiteralWeekToString', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1 week.toString()',
        ),
        ['1 week'.toFhirString],
      );
    });
  });

  group('testAll', () {
    test('testAllTrue1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.select(given.exists()).allTrue()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testAllTrue2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.select(period.exists()).allTrue()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testAllTrue3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.all(given.exists())',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testAllTrue4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.all(period.exists())',
        ),
        [false.toFhirBoolean],
      );
    });
  });

  group('testSubSetOf', () {
    // FIXED: Unclear how $this would be populated?
    // test("testSubSetOf1", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //          pathExpression: r"Patient.name.first().subsetOf($this.name)"),
    //       [true]);
    // });
    test('testSubSetOf1-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.first().subsetOf(%context.name)',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED
    // test("testSubSetOf2", () {
    //     expect(
    //         walkFhirPath(context: patient1,
    //      pathExpression: r"Patient.name.subsetOf($this.name.first()).not()"),
    //         [true]);
    //   });
    test('testSubSetOf2-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.subsetOf(%context.name.first()).not()',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testSuperSetOf', () {
    // FIXED
    //test("testSuperSetOf1", () {
    //   expect(
    //       walkFhirPath(context: patient1,
    //    pathExpression: r"Patient.name.first().supersetOf($this.name).not()"),
    //       [true]);
    // });
    test('testSuperSetOf1-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              'Patient.name.first().supersetOf(%context.name).not()',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED
    // test("testSuperSetOf2", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"Patient.name.supersetOf($this.name.first())"),
    //       [true]);
    // });
    test('testSuperSetOf2-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.supersetOf(%context.name.first())',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testQuantity', () {
    test('testQuantity1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "4.0000 'g' = 4000.0 'mg'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testQuantity2', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "4 'g' ~ 4000 'mg'"),
        [true.toFhirBoolean],
      );
    });

    test('testQuantity3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "4 'g' != 4040 'mg'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testQuantity4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "4 'g' ~ 4040 'mg'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testQuantity5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '7 days = 1 week',
        ),
        [true.toFhirBoolean],
      );
    });

    /// https://hl7.org/fhirpath/N1/#quantity-equality
    /// https://hl7.org/fhirpath/N1/#time-valued-quantities
    /// Best I can tell these are not equal, although they are equivalent.
    ///
    /// According to FHIRPath above day (year, month) don't apply:
    ///
    /// 1 day =  1 'd' and 1 day ~ 1 'd'
    /// 1 week = 1 'wk' and 1 week ~ 1 'wk' (because weeks are just days)
    ///
    /// I think it's therefore fair to assume that:
    ///
    /// 7 day = 1 'wk', but 7 day ~ 1 'wk'
    test('testQuantity6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "7 days = 1 'wk'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testQuantity7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '6 days < 1 week',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testQuantity8', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '8 days > 1 week',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testQuantity9', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "2.0 'cm' * 2.0 'm' = 0.040 'm2'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testQuantity10', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "4.0 'g' / 2.0 'm' = 2 'g/m'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testQuantity11', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "1.0 'm' / 1.0 'm' = 1 '1'",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testCollectionBoolean', () {
    test('testCollectionBoolean1', () {
      expect(
        () => walkFhirPath(
          context: patient1,
          pathExpression: 'iif(1 | 2 | 3, true, false)',
        ),
        throwsA(const TypeMatcher<PathEngineException>()),
      );
    });

    test('testCollectionBoolean2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'iif({}, true, false)',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testCollectionBoolean3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'iif(true, true, false)',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testCollectionBoolean4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'iif({} | true, true, false)',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testCollectionBoolean5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'iif(true, true, 1/0)',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testCollectionBoolean6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'iif(false, 1/0, true)',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testDistinct', () {
    test('testDistinct1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 | 2 | 3).isDistinct()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDistinct2', () {
      expect(
        walkFhirPath(
          context: questionnaire1,
          pathExpression: 'Questionnaire.descendants().linkId.isDistinct()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDistinct3', () {
      expect(
        walkFhirPath(
          context: questionnaire1,
          pathExpression:
              'Questionnaire.descendants().linkId.select(substring(0,1)).isDistinct().not()',
        ),
        [true.toFhirBoolean],
      );
    });

    // <test name="testDistinct4" inputfile="patient-example.xml">
    // <expression>(1 | 2 | 3).distinct()</expression>
    // <output type="integer">1</output>
    // <output type="integer">2</output>
    // <output type="integer">3</output>
    // });
    test('testDistinct4', () {
      expect(
        walkFhirPath(
          context: questionnaire1,
          pathExpression: '(1 | 2 | 3).distinct()',
        ),
        [
          1.toFhirInteger,
          2.toFhirInteger,
          3.toFhirInteger,
        ],
      );
    });

    // <test name="testDistinct5" inputfile="questionnaire-example.xml">
    // <expression>Questionnaire.descendants().linkId.distinct().count()</expression>
    // <output type="integer">10</output>
    // });
    test('testDistinct5', () {
      expect(
        walkFhirPath(
          context: questionnaire1,
          pathExpression:
              'Questionnaire.descendants().linkId.distinct().count()',
        ),
        [10.toFhirInteger],
      );
    });

    // <test name="testDistinct6" inputfile="questionnaire-example.xml">
    // <expression>Questionnaire.descendants().linkId.select(substring(0,1))
    // .distinct().count()</expression>
    // <output type="integer">2</output>
    // });
    test('testDistinct6', () {
      expect(
        walkFhirPath(
          context: questionnaire1,
          pathExpression:
              'Questionnaire.descendants().linkId.select(substring(0,1)).distinct().count()',
        ),
        [2.toFhirInteger],
      );
    });
  });

  group('testCount', () {
    test('testCount1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.count()',
        ),
        [3.toFhirInteger],
      );
    });

    test('testCount2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.count() = 3',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testCount3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.first().count()',
        ),
        [1.toFhirInteger],
      );
    });

    test('testCount4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.first().count() = 1',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testWhere', () {
    test('testWhere1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.count() = 3',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testWhere2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "Patient.name.where(given = 'Jim').count() = 1",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testWhere3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "Patient.name.where(given = 'X').count() = 0",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testWhere4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              r"Patient.name.where($this.given = 'Jim').count() = 1",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testSelect', () {
    test('testSelect1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.select(given).count() = 5',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testSelect2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.select(given | family).count() = 7 ',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testRepeat', () {
    //<test name="testRepeat1" inputfile="valueset-example-expansion.xml">
    //<expression>ValueSet.expansion.repeat(contains).count() = 10
    //</expression><output type="boolean">true</output>});*/
    test('testRepeat2', () {
      expect(
        walkFhirPath(
          context: questionnaire1,
          pathExpression: 'Questionnaire.repeat(item).code.count() = 11',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testRepeat3', () {
      expect(
        walkFhirPath(
          context: questionnaire1,
          pathExpression: 'Questionnaire.descendants().code.count() = 23',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testRepeat4', () {
      expect(
        walkFhirPath(
          context: questionnaire1,
          pathExpression: 'Questionnaire.children().code.count() = 2',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testAggregate', () {
    test('testAggregate1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              r'(1|2|3|4|5|6|7|8|9).aggregate($this+$total, 0) = 45',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testAggregate2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              r'(1|2|3|4|5|6|7|8|9).aggregate($this+$total, 2) = 47',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testAggregate3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              r'(1|2|3|4|5|6|7|8|9).aggregate(iif($total.empty(), $this, iif($this < $total, $this, $total))) = 1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testAggregate4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              r'(1|2|3|4|5|6|7|8|9).aggregate(iif($total.empty(), $this, iif($this > $total, $this, $total))) = 9',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testIndexer', () {
    // FIXED: Incorrect test case. Union operator does specifically not
    // guarantee an order, whereas equal (=) is specifically expecting an order.
    // test("testIndexer1", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //          pathExpression: r"Patient.name[0].given = 'Peter' | 'James'"),
    //       [true]);
    // });
    test('testIndexer1-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name[0].given',
        ),
        ['Peter'.toFhirString, 'James'.toFhirString],
      );
    });

    test('testIndexer2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "Patient.name[1].given = 'Jim'",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testSingle', () {
    //<test name="testSingle2" inputfile="patient-example.xml">
    //<expression  invalid="semantic">
    //Patient.name.single().exists()</expression>});*/
    test('testSingle1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.first().single().exists()',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testFirstLast', () {
    // FIXED: Incorrect test case. Union operator does specifically not
    // guarantee an order
    // test("testFirstLast1", () {
    //   expect(
    //       walkFhirPath(context: patient1,
    //      pathExpression: r"Patient.name.first().given = 'Peter' | 'James'"),
    //       [true]);
    // });
    test('testFirstLast1-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.first().given',
        ),
        ['Peter'.toFhirString, 'James'.toFhirString],
      );
    });

    // FIXED: Incorrect test case. Union operator does specifically not
    // guarantee an order
    // test("testFirstLast2", () {
    //   expect(
    //       walkFhirPath(context: patient1, pathExpression: r"Patient.name.last().given = 'Peter' | 'James'"),
    //       [true]);
    // });
    test('testFirstLast2-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.last().given',
        ),
        ['Peter'.toFhirString, 'James'.toFhirString],
      );
    });
  });

  group('testTail', () {
    // Incorrect test case. Union operator does specifically not
    // guarantee an order
    // test("testTail1", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"(0 | 1 | 2).tail() = 1 | 2"),
    //       [true]);
    // });

    // Incorrect test case. Union operator does specifically not
    // guarantee an order
    // test("testTail2", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression:
    //               r"Patient.name.tail().given = 'Jim' | 'Peter' | 'James'"),
    //       [true]);
    // });
    test('testTail2-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.tail().given',
        ),
        ['Jim'.toFhirString, 'Peter'.toFhirString, 'James'.toFhirString],
      );
    });
  });

  group('testSkip', () {
    // FIXED: Incorrect test case. Assumes order of union
    test('testSkip1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(0 | 1 | 2).skip(1) = 1 | 2',
        ),
        [true.toFhirBoolean],
      );
    });

    // Incorrect test case. Assumes order of union
    test('testSkip2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(0 | 1 | 2).skip(2) = 2',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: Incorrect test case. Assumes order of union
    test('testSkip3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              "Patient.name.skip(1).given.trace('test') = 'Jim' | 'Peter' | 'James'",
        ),
        [true.toFhirBoolean],
      );
    });
    test('testSkip3-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "Patient.name.skip(1).given.trace('test')",
        ),
        ['Jim'.toFhirString, 'Peter'.toFhirString, 'James'.toFhirString],
      );
    });

    test('testSkip4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.skip(3).given.exists() = false',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testTake', () {
    // Incorrect test case. Assumes order of union*      test('testTake1', () {
    // expect(
    //   walkFhirPath(
    //     context: patient1,
    //     pathExpression: '(0 | 1 | 2).take(1) = 0',
    //   ),
    //   [true],
    // );

    // Incorrect test case. Assumes order of union
    test('testTake2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(0 | 1 | 2).take(2) = 0 | 1',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: Incorrect test case. Assumes order of union
    test('testTake3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "Patient.name.take(1).given = 'Peter' | 'James'",
        ),
        [true.toFhirBoolean],
      );
    });
    test('testTake3-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.take(1).given',
        ),
        ['Peter'.toFhirString, 'James'.toFhirString],
      );
    });

    // FIXED: Incorrect test case. Assumes order of union
    test('testTake4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              "Patient.name.take(2).given = 'Peter' | 'James' | 'Jim'",
        ),
        [true.toFhirBoolean],
      );
    });
    test('testTake4-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.take(2).given',
        ),
        ['Peter'.toFhirString, 'James'.toFhirString, 'Jim'.toFhirString],
      );
    });

    test('testTake5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.take(3).given.count() = 5',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testTake6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.take(4).given.count() = 5',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testTake7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.name.take(0).given.exists() = false',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testIif', () {
    test('testIif1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              "iif(Patient.name.exists(), 'named', 'unnamed') = 'named'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIif2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              "iif(Patient.name.empty(), 'unnamed', 'named') = 'named'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIif3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'iif(true, true, (1 | 2).toString())',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIif4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'iif(false, (1 | 2).toString(), true)',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testToInteger', () {
    test('testToInteger1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1'.toInteger() = 1",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testToInteger2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'-1'.toInteger() = -1",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testToInteger3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'0'.toInteger() = 0",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testToInteger4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'0.0'.toInteger().empty()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testToInteger5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'st'.toInteger().empty()",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testToDecimal', () {
    test('testToDecimal1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1'.toDecimal() = 1",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testToDecimal2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'-1'.toInteger() = -1",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testToDecimal3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'0'.toDecimal() = 0",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testToDecimal4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'0.0'.toDecimal() = 0.0",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testToDecimal5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'st'.toDecimal().empty()",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testToString', () {
    test('testToString1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "1.toString() = '1'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testToString2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'-1'.toInteger() = -1",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testToString3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "0.toString() = '0'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testToString4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "0.0.toString() = '0.0'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testToString5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "@2014-12-14.toString() = '2014-12-14'",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testCase', () {
    test('testCase1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'t'.upper() = 'T'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testCase2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'t'.lower() = 't'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testCase3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'T'.upper() = 'T'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testCase4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'T'.lower() = 't'",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testToChars', () {
    // FIXED: Incorrect test case. Union has no guaranteed order
    // test("testToChars1", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"'t2'.toChars() = 't' | '2'"),
    //       [true]);
    // });
    test('testToChars1-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'t2'.toChars()",
        ),
        [
          't'.toFhirString,
          '2'.toFhirString,
        ],
      );
    });
  });

  group('testSubstring', () {
    test('testSubstring1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.substring(2) = '345'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testSubstring2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.substring(2,1) = '3'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testSubstring3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.substring(2,5) = '345'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testSubstring4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.substring(25).empty()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testSubstring5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.substring(-1).empty()",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testStartsWith', () {
    test('testStartsWith1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.startsWith('2') = false",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStartsWith2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.startsWith('1') = true",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStartsWith3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.startsWith('12') = true",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStartsWith4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.startsWith('13') = false",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStartsWith5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.startsWith('12345') = true",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStartsWith6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.startsWith('123456') = false",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testStartsWith7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.startsWith('') = true",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testEndsWith', () {
    test('testEndsWith1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.endsWith('2') = false",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEndsWith2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.endsWith('5') = true",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEndsWith3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.endsWith('45') = true",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEndsWith4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.endsWith('35') = false",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEndsWith5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.endsWith('12345') = true",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEndsWith6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.endsWith('012345') = false",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEndsWith7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.endsWith('') = true",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testContainsString', () {
    test('testContainsString1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.contains('6') = false",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testContainsString2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.contains('5') = true",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testContainsString3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.contains('45') = true",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testContainsString4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.contains('35') = false",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testContainsString5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.contains('12345') = true",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testContainsString6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.contains('012345') = false",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testContainsString7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.contains('') = true",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testLength', () {
    test('testLength1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'123456'.length() = 6",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLength2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'12345'.length() = 5",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLength3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'123'.length() = 3",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLength4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1'.length() = 1",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLength5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "''.length() = 0",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testTrace', () {
    test('testTrace1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "name.given.trace('test').count() = 5",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testTrace2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "name.trace('test', given).count() = 3",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testToday', () {
    test('testToday1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.birthDate < today()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testToday2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'today().toString().length() = 10',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testNow', () {
    test('testNow1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.birthDate < now()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNow2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'now().toString().length() > 10',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testEquality', () {
    test('testEquality1', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 = 1'),
        [true.toFhirBoolean],
      );
    });

    test('testEquality2', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '{} = {}'),
        <FhirBase>[],
      );
    });

    test('testEquality3', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: 'true = {}'),
        <FhirBase>[],
      );
    });

    test('testEquality4', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '(1) = (1)'),
        [true.toFhirBoolean],
      );
    });

    // FIXED: This test is applying =, which are explicitly order-dependent,
    // on two unions, which are explicitly not order-dependent
    // test("testEquality5", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1, pathExpression: r"(1 | 2) = (1 | 2)"),
    //       [true]);
    // });
    test('testEquality5-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 | 2) ~ (1 | 2)',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: This test is applying =, which are explicitly order-dependent,
    // on two unions, which are explicitly not order-dependent
    // test("testEquality6", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"(1 | 2 | 3) = (1 | 2 | 3)"),
    //       [true]);
    // });
    test('testEquality6-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 | 2 | 3) ~ (1 | 2 | 3)',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: This test is applying =, which are explicitly order-dependent,
    // on two unions, which are explicitly not order-dependent
    // test("testEquality7", () {
    //   expect(walkFhirPath(context: patient1, "(1 | 1) = (1 | 2 | {})"),
    //       []);
    // });
    test('testEquality7-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 | 1) ~ (1 | 2 | {})',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testEquality8', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 = 2'),
        [false.toFhirBoolean],
      );
    });

    test('testEquality9', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'a' = 'a'"),
        [true.toFhirBoolean],
      );
    });

    test('testEquality10', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'a' = 'A'"),
        [false.toFhirBoolean],
      );
    });

    test('testEquality11', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'a' = 'b'"),
        [false.toFhirBoolean],
      );
    });

    test('testEquality12', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1.1 = 1.1'),
        [true.toFhirBoolean],
      );
    });

    test('testEquality13', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1.1 = 1.2'),
        [false.toFhirBoolean],
      );
    });

    test('testEquality14', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.10 = 1.1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEquality15', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '0 = 0'),
        [true.toFhirBoolean],
      );
    });

    test('testEquality16', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '0.0 = 0'),
        [true.toFhirBoolean],
      );
    });

    test('testEquality17', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15 = @2012-04-15',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEquality18', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15 = @2012-04-16',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testEquality19', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15 = @2012-04-15T10:00:00',
        ),
        <FhirBase>[],
      );
    });

    test('testEquality20', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15T15:00:00 = @2012-04-15T10:00:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testEquality21', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15T15:30:31 = @2012-04-15T15:30:31.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEquality22', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15T15:30:31 = @2012-04-15T15:30:31.1',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testEquality23', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15T15:00:00Z = @2012-04-15T10:00:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testEquality24', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              '@2012-04-15T15:00:00+02:00 = @2012-04-15T16:00:00+03:00',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEquality25', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'name = name',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: union is not in defined order
    // test("testEquality26", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression:
    //               r"name.take(2) = name.take(2).first() | name.take(2).last()"),
    //       [true]);
    // });
    test('testEquality26-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: r'name.take(2) = name.take(2).select($this)',
        ),
        [true.toFhirBoolean],
      );
    });

    // Incorrect: union is not in defined order
    // test("testEquality27", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression:
    //               r"name.take(2) = name.take(2).last() | name.take(2).first()"),
    //       [false]);
    // });

    test('testEquality28', () {
      expect(
        walkFhirPath(
          context: observation1,
          pathExpression: "Observation.value = 185 '[lb_av]'",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testNEquality', () {
    test('testNEquality1', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 != 1'),
        [false.toFhirBoolean],
      );
    });

    test('testNEquality2', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '{} != {}'),
        <FhirBase>[],
      );
    });

    test('testNEquality3', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 != 2'),
        [true.toFhirBoolean],
      );
    });

    test('testNEquality4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'a' != 'a'",
        ),
        [false.toFhirBoolean],
      );
    });

    test('testNEquality5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'a' != 'b'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNEquality6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.1 != 1.1',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testNEquality7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.1 != 1.2',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNEquality8', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.10 != 1.1',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testNEquality9', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '0 != 0'),
        [false.toFhirBoolean],
      );
    });

    test('testNEquality10', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '0.0 != 0'),
        [false.toFhirBoolean],
      );
    });

    test('testNEquality11', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15 != @2012-04-15',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testNEquality12', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15 != @2012-04-16',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNEquality13', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15 != @2012-04-15T10:00:00',
        ),
        <FhirBase>[],
      );
    });

    test('testNEquality14', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15T15:00:00 != @2012-04-15T10:00:00',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNEquality15', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15T15:30:31 != @2012-04-15T15:30:31.0',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testNEquality16', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15T15:30:31 != @2012-04-15T15:30:31.1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNEquality17', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15T15:00:00Z != @2012-04-15T10:00:00',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNEquality17-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15T15:00:00Z != @2012-04-15T10:00:00',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNEquality18', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              '@2012-04-15T15:00:00+02:00 != @2012-04-15T16:00:00+03:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testNEquality19', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'name != name',
        ),
        [false.toFhirBoolean],
      );
    });

    // Incorrect: assumptions about order
    // test("testNEquality20", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression:
    //               r"name.take(2) != name.take(2).first() | name.take(2).last()"),
    //       [false]);
    // });

    // Incorrect: assumptions about order
    // test("testNEquality21", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression:
    //               r"name.take(2) != name.take(2).last() | name.take(2).first()"),
    //       [true]);
    // });

    test('testNEquality22', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.2 / 1.8 != 0.6666667',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNEquality23', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.2 / 1.8 != 0.67',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNEquality24', () {
      expect(
        walkFhirPath(
          context: observation1,
          pathExpression: "Observation.value != 185 'kg'",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testEquivalent', () {
    test('testEquivalent1', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 ~ 1'),
        [true.toFhirBoolean],
      );
    });

    test('testEquivalent2', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '{} ~ {}'),
        [true.toFhirBoolean],
      );
    });

    test('testEquivalent3', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 ~ {}'),
        [false.toFhirBoolean],
      );
    });

    test('testEquivalent4', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 ~ 2'),
        [false.toFhirBoolean],
      );
    });

    test('testEquivalent5', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'a' ~ 'a'"),
        [true.toFhirBoolean],
      );
    });

    test('testEquivalent6', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'a' ~ 'A'"),
        [true.toFhirBoolean],
      );
    });

    test('testEquivalent7', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'a' ~ 'b'"),
        [false.toFhirBoolean],
      );
    });

    test('testEquivalent8', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1.1 ~ 1.1'),
        [true.toFhirBoolean],
      );
    });

    test('testEquivalent9', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1.1 ~ 1.2'),
        [false.toFhirBoolean],
      );
    });

    test('testEquivalent10', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.10 ~ 1.1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEquivalent11', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.2 / 1.8 ~ 0.67',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEquivalent12', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '0 ~ 0'),
        [true.toFhirBoolean],
      );
    });

    test('testEquivalent13', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '0.0 ~ 0'),
        [true.toFhirBoolean],
      );
    });

    test('testEquivalent14', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15 ~ @2012-04-15',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEquivalent15', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15 ~ @2012-04-16',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testEquivalent16', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15 ~ @2012-04-15T10:00:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testEquivalent17', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15T15:30:31 ~ @2012-04-15T15:30:31.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEquivalent18', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15T15:30:31 ~ @2012-04-15T15:30:31.1',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testEquivalent19', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'name ~ name',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEquivalent20', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              'name.take(2).given ~ name.take(2).first().given | name.take(2).last().given',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEquivalent21', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              'name.take(2).given ~ name.take(2).last().given | name.take(2).first().given',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testEquivalent22', () {
      expect(
        walkFhirPath(
          context: observation1,
          pathExpression: "Observation.value ~ 185 '[lb_av]'",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testNotEquivalent', () {
    test('testNotEquivalent1', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 !~ 1'),
        [false.toFhirBoolean],
      );
    });

    test('testNotEquivalent2', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '{} !~ {}'),
        [false.toFhirBoolean],
      );
    });

    test('testNotEquivalent3', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '{} !~ 1'),
        [true.toFhirBoolean],
      );
    });

    test('testNotEquivalent4', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 !~ 2'),
        [true.toFhirBoolean],
      );
    });

    test('testNotEquivalent5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'a' !~ 'a'",
        ),
        [false.toFhirBoolean],
      );
    });

    test('testNotEquivalent6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'a' !~ 'A'",
        ),
        [false.toFhirBoolean],
      );
    });

    test('testNotEquivalent7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'a' !~ 'b'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNotEquivalent8', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.1 !~ 1.1',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testNotEquivalent9', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.1 !~ 1.2',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNotEquivalent10', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.10 !~ 1.1',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testNotEquivalent11', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '0 !~ 0'),
        [false.toFhirBoolean],
      );
    });

    test('testNotEquivalent12', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '0.0 !~ 0'),
        [false.toFhirBoolean],
      );
    });

    test('testNotEquivalent13', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.2 / 1.8 !~ 0.6',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNotEquivalent14', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15 !~ @2012-04-15',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testNotEquivalent15', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15 !~ @2012-04-16',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNotEquivalent16', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15 !~ @2012-04-15T10:00:00',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNotEquivalent17', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15T15:30:31 !~ @2012-04-15T15:30:31.0',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testNotEquivalent18', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2012-04-15T15:30:31 !~ @2012-04-15T15:30:31.1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testNotEquivalent19', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'name !~ name',
        ),
        [false.toFhirBoolean],
      );
    });

    // Incorrect: Keep assuming order
    // test("testNotEquivalent20", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression:
    //               r"name.take(2).given !~ name.take(2).first().given | name.take(2).last().given"),
    //       [false]);
    // });

    // Incorrect: Keep assuming order
    // test("testNotEquivalent21", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression:
    //               r"name.take(2).given !~ name.take(2).last().given | name.take(2).first().given"),
    //       [false]);
    // });

    test('testNotEquivalent22', () {
      expect(
        walkFhirPath(
          context: observation1,
          pathExpression: "Observation.value !~ 185 'kg'",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testLessThan', () {
    test('testLessThan1', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 < 2'),
        [true.toFhirBoolean],
      );
    });

    test('testLessThan2', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1.0 < 1.2'),
        [true.toFhirBoolean],
      );
    });

    test('testLessThan3', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'a' < 'b'"),
        [true.toFhirBoolean],
      );
    });

    test('testLessThan4', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'A' < 'a'"),
        [true.toFhirBoolean],
      );
    });

    test('testLessThan5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-12 < @2014-12-13',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessThan6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13T12:00:00 < @2014-12-13T12:00:01',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessThan7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T12:00:00 < @T14:00:00',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessThan8', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 < 1'),
        [false.toFhirBoolean],
      );
    });

    test('testLessThan9', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1.0 < 1.0'),
        [false.toFhirBoolean],
      );
    });

    test('testLessThan10', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'a' < 'a'"),
        [false.toFhirBoolean],
      );
    });

    test('testLessThan11', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'A' < 'A'"),
        [false.toFhirBoolean],
      );
    });

    test('testLessThan12', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-12 < @2014-12-12',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testLessThan13', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13T12:00:00 < @2014-12-13T12:00:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testLessThan14', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T12:00:00 < @T12:00:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testLessThan15', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '2 < 1'),
        [false.toFhirBoolean],
      );
    });

    test('testLessThan16', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1.1 < 1.0'),
        [false.toFhirBoolean],
      );
    });

    test('testLessThan17', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'b' < 'a'"),
        [false.toFhirBoolean],
      );
    });

    test('testLessThan18', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'B' < 'A'"),
        [false.toFhirBoolean],
      );
    });

    test('testLessThan19', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13 < @2014-12-12',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testLessThan20', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13T12:00:01 < @2014-12-13T12:00:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testLessThan21', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T12:00:01 < @T12:00:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testLessThan22', () {
      expect(
        walkFhirPath(
          context: observation1,
          pathExpression: "Observation.value < 200 '[lb_av]'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessThan23', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2018-03 < @2018-03-01',
        ),
        <FhirBase>[],
      );
    });

    test('testLessThan24', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2018-03-01T10 < @2018-03-01T10:30',
        ),
        <FhirBase>[],
      );
    });

    test('testLessThan25', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T10 < @T10:30',
        ),
        <FhirBase>[],
      );
    });

    test('testLessThan26', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2018-03-01T10:30:00 < @2018-03-01T10:30:00.0',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testLessThan27', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T10:30:00 < @T10:30:00.0',
        ),
        [false.toFhirBoolean],
      );
    });
  });

  group('testLessOrEqual', () {
    test('testLessOrEqual1', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 <= 2'),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.0 <= 1.2',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'a' <= 'b'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'A' <= 'a'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-12 <= @2014-12-13',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13T12:00:00 <= @2014-12-13T12:00:01',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T12:00:00 <= @T14:00:00',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual8', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 <= 1'),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual9', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.0 <= 1.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual10', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'a' <= 'a'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual11', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'A' <= 'A'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual12', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-12 <= @2014-12-12',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual13', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13T12:00:00 <= @2014-12-13T12:00:00',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual14', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T12:00:00 <= @T12:00:00',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual15', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '2 <= 1'),
        [false.toFhirBoolean],
      );
    });

    test('testLessOrEqual16', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.1 <= 1.0',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testLessOrEqual17', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'b' <= 'a'",
        ),
        [false.toFhirBoolean],
      );
    });

    test('testLessOrEqual18', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'B' <= 'A'",
        ),
        [false.toFhirBoolean],
      );
    });

    test('testLessOrEqual19', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13 <= @2014-12-12',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testLessOrEqual20', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13T12:00:01 <= @2014-12-13T12:00:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testLessOrEqual21', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T12:00:01 <= @T12:00:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testLessOrEqual22', () {
      expect(
        walkFhirPath(
          context: observation1,
          pathExpression: "Observation.value <= 200 '[lb_av]'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual23', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2018-03 <= @2018-03-01',
        ),
        <FhirBase>[],
      );
    });

    test('testLessOrEqual24', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2018-03-01T10 <= @2018-03-01T10:30',
        ),
        <FhirBase>[],
      );
    });

    test('testLessOrEqual25', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T10 <= @T10:30',
        ),
        <FhirBase>[],
      );
    });

    test('testLessOrEqual26', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2018-03-01T10:30:00 <= @2018-03-01T10:30:00.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLessOrEqual27', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T10:30:00 <= @T10:30:00.0',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testGreatorOrEqual', () {
    test('testGreatorOrEqual1', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 >= 2'),
        [false.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.0 >= 1.2',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'a' >= 'b'",
        ),
        [false.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'A' >= 'a'",
        ),
        [false.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-12 >= @2014-12-13',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13T12:00:00 >= @2014-12-13T12:00:01',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T12:00:00 >= @T14:00:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual8', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 >= 1'),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual9', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.0 >= 1.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual10', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'a' >= 'a'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual11', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'A' >= 'A'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual12', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-12 >= @2014-12-12',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual13', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13T12:00:00 >= @2014-12-13T12:00:00',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual14', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T12:00:00 >= @T12:00:00',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual15', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '2 >= 1'),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual16', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.1 >= 1.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual17', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'b' >= 'a'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual18', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'B' >= 'A'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual19', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13 >= @2014-12-12',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual20', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13T12:00:01 >= @2014-12-13T12:00:00',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual21', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T12:00:01 >= @T12:00:00',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual22', () {
      expect(
        walkFhirPath(
          context: observation1,
          pathExpression: "Observation.value >= 100 '[lb_av]'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual23', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2018-03 >= @2018-03-01',
        ),
        <FhirBase>[],
      );
    });

    test('testGreatorOrEqual24', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2018-03-01T10 >= @2018-03-01T10:30',
        ),
        <FhirBase>[],
      );
    });

    test('testGreatorOrEqual25', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T10 >= @T10:30',
        ),
        <FhirBase>[],
      );
    });

    test('testGreatorOrEqual26', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2018-03-01T10:30:00 >= @2018-03-01T10:30:00.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreatorOrEqual27', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T10:30:00 >= @T10:30:00.0',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testGreaterThan', () {
    test('testGreaterThan1', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 > 2'),
        [false.toFhirBoolean],
      );
    });

    test('testGreaterThan2', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1.0 > 1.2'),
        [false.toFhirBoolean],
      );
    });

    test('testGreaterThan3', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'a' > 'b'"),
        [false.toFhirBoolean],
      );
    });

    test('testGreaterThan4', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'A' > 'a'"),
        [false.toFhirBoolean],
      );
    });

    test('testGreaterThan5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-12 > @2014-12-13',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testGreaterThan6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13T12:00:00 > @2014-12-13T12:00:01',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testGreaterThan7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T12:00:00 > @T14:00:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testGreaterThan8', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 > 1'),
        [false.toFhirBoolean],
      );
    });

    test('testGreaterThan9', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1.0 > 1.0'),
        [false.toFhirBoolean],
      );
    });

    test('testGreaterThan10', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'a' > 'a'"),
        [false.toFhirBoolean],
      );
    });

    test('testGreaterThan11', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'A' > 'A'"),
        [false.toFhirBoolean],
      );
    });

    test('testGreaterThan12', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-12 > @2014-12-12',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testGreaterThan13', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13T12:00:00 > @2014-12-13T12:00:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testGreaterThan14', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T12:00:00 > @T12:00:00',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testGreaterThan15', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '2 > 1'),
        [true.toFhirBoolean],
      );
    });

    test('testGreaterThan16', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1.1 > 1.0'),
        [true.toFhirBoolean],
      );
    });

    test('testGreaterThan17', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'b' > 'a'"),
        [true.toFhirBoolean],
      );
    });

    test('testGreaterThan18', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: "'B' > 'A'"),
        [true.toFhirBoolean],
      );
    });

    test('testGreaterThan19', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13 > @2014-12-12',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreaterThan20', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2014-12-13T12:00:01 > @2014-12-13T12:00:00',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreaterThan21', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T12:00:01 > @T12:00:00',
        ),
        [true.toFhirBoolean],
      );
    });

    // Compare Quantity objects to ValidatedQuantity
    test('testGreaterThan22', () {
      expect(
        walkFhirPath(
          context: observation1,
          pathExpression: "Observation.value > 100 '[lb_av]'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testGreaterThan23', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2018-03 > @2018-03-01',
        ),
        <FhirBase>[],
      );
    });

    test('testGreaterThan24', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2018-03-01T10 > @2018-03-01T10:30',
        ),
        <FhirBase>[],
      );
    });

    test('testGreaterThan25', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T10 > @T10:30',
        ),
        <FhirBase>[],
      );
    });

    test('testGreaterThan26', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@2018-03-01T10:30:00 > @2018-03-01T10:30:00.0',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testGreaterThan27', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '@T10:30:00 > @T10:30:00.0',
        ),
        [false.toFhirBoolean],
      );
    });
  });

  group('testUnion', () {
    test('testUnion1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 | 2 | 3).count() = 3',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testUnion2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 | 2 | 2).count() = 2',
        ),
        [true.toFhirBoolean],
      );
    }); // merge duplicates

    test('testUnion3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1|1).count() = 1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testUnion4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.union(2).union(3).count() = 3',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testUnion5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.union(2.union(3)).count() = 3',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testUnion6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 | 2).combine(2).count() = 3',
        ),
        [true.toFhirBoolean],
      );
    }); // do not merge duplicates

    test('testUnion7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.combine(1).count() = 2',
        ),
        [true.toFhirBoolean],
      );
    }); // do not merge duplicates

    test('testUnion8', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.combine(1).union(2).count() = 2',
        ),
        [true.toFhirBoolean],
      );
    }); // do not merge duplicates
  });

  group('testIntersect', () {
    test('testIntersect1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 | 2 | 3).intersect(2 | 4) = 2',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntersect2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 | 2).intersect(4).empty()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntersect3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 | 2).intersect({}).empty()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIntersect4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.combine(1).intersect(1).count() = 1',
        ),
        [true.toFhirBoolean],
      );
    }); // do not merge duplicates
  });

  group('testExclude', () {
    test('testExclude1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 | 2 | 3).exclude(2 | 4) = 1 | 3',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testExclude2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 | 2).exclude(4) = 1 | 2',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testExclude3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 | 2).exclude({}) = 1 | 2',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testExclude4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.combine(1).exclude(2).count() = 2',
        ),
        [true.toFhirBoolean],
      );
    }); // do not merge duplicates
  });

  group('testIn', () {
    test('testIn1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1 in (1 | 2 | 3)',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIn2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1 in (2 | 3)',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testIn3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'a' in ('a' | 'c' | 'd')",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testIn4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'b' in ('a' | 'c' | 'd')",
        ),
        [false.toFhirBoolean],
      );
    });
  });

  group('testContainsCollection', () {
    test('testContainsCollection1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 | 2 | 3) contains 1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testContainsCollection2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(2 | 3) contains 1 ',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testContainsCollection3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "('a' | 'c' | 'd') contains 'a'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testContainsCollection4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "('a' | 'c' | 'd') contains 'b'",
        ),
        [false.toFhirBoolean],
      );
    });
  });

  group('testBooleanLogicAnd', () {
    test('testBooleanLogicAnd1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(true and true) = true',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicAnd2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(true and false) = false',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicAnd3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(true and {}).empty()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicAnd4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(false and true) = false',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicAnd5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(false and false) = false',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicAnd6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(false and {}) = false',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicAnd7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '({} and true).empty()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicAnd8', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '({} and false) = false',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicAnd9', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '({} and {}).empty()',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testBooleanLogicOr', () {
    test('testBooleanLogicOr1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(true or true) = true',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicOr2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(true or false) = true',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicOr3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(true or {}) = true',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicOr4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(false or true) = true',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicOr5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(false or false) = false',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicOr6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(false or {}).empty()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicOr7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '({} or true) = true',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicOr8', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '({} or false).empty()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicOr9', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '({} or {}).empty()',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testBooleanLogicXOr', () {
    test('testBooleanLogicXOr1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(true xor true) = false',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicXOr2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(true xor false) = true',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicXOr3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(true xor {}).empty()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicXOr4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(false xor true) = true',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicXOr5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(false xor false) = false',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicXOr6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(false xor {}).empty()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicXOr7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '({} xor true).empty()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicXOr8', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '({} xor false).empty()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanLogicXOr9', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '({} xor {}).empty()',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testBooleanImplies', () {
    test('testBooleanImplies1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(true implies true) = true',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanImplies2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(true implies false) = false',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanImplies3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(true implies {}).empty()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanImplies4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(false implies true) = true',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanImplies5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(false implies false) = true',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanImplies6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(false implies {}) = true',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanImplies7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '({} implies true) = true',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanImplies8', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '({} implies false).empty()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testBooleanImplies9', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '({} implies {}).empty()',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testPlus', () {
    test('testPlus1', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 + 1 = 2'),
        [true.toFhirBoolean],
      );
    });

    test('testPlus2', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 + 0 = 1'),
        [true.toFhirBoolean],
      );
    });

    test('testPlus3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.2 + 1.8 = 3.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testPlus4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'a'+'b' = 'ab'",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testConcatenate', () {
    test('testConcatenate1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'a' & 'b' = 'ab'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testConcatenate2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "'1' & {} = '1'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testConcatenate3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "{} & 'b' = 'b'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testConcatenate4', () {
      expect(
        () => walkFhirPath(
          context: patient1,
          pathExpression: "(1 | 2 | 3) & 'b' = '1,2,3b'",
        ),
        throwsA(const TypeMatcher<PathEngineException>()),
      );
    });
  });

  group('testMinus', () {
    test('testMinus1', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 - 1 = 0'),
        [true.toFhirBoolean],
      );
    });

    test('testMinus2', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 - 0 = 1'),
        [true.toFhirBoolean],
      );
    });

    // FIXED: This fails, because Dart thinks 1.8-1.2 = 0.6000000000000001
    // test("testMinus3", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1, pathExpression: r"1.8 - 1.2 = 0.6"),
    //       [true]);
    // });
    test('testMinus3-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1.8 - 1.2).round(8) = 0.6',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testMinus4', () {
      expect(
        () => walkFhirPath(
          context: patient1,
          pathExpression: "'a'-'b' = 'ab'",
        ),
        throwsA(const TypeMatcher<PathEngineException>()),
      );
    });
  });

  group('testMultiply', () {
    test('testMultiply1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.2 * 1.8 = 2.16',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testMultiply2', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 * 1 = 1'),
        [true.toFhirBoolean],
      );
    });

    test('testMultiply3', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 * 0 = 0'),
        [true.toFhirBoolean],
      );
    });
  });

  group('testDivide', () {
    test('testDivide1', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 / 1 = 1'),
        [true.toFhirBoolean],
      );
    });

    test('testDivide2', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '4 / 2 = 2'),
        [true.toFhirBoolean],
      );
    });

    test('testDivide3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '4.0 / 2.0 = 2.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDivide4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1 / 2 = 0.5',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: Already discussed on Zulip, this should round to 8 digits prior
    // to comparison
    // test("testDivide5", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"1.2 / 1.8 = 0.66666667"),
    //       [true]);
    // });
    test('testDivide5-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1.2 / 1.8).round(8) = 0.66666667',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDivide6', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '1 / 0'),
        <FhirBase>[],
      );
    });
  });

  group('testDiv', () {
    test('testDiv1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1 div 1 = 1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDiv2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '4 div 2 = 2',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDiv3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '5 div 2 = 2',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDiv4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '2.2 div 1.8 = 1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testDiv5', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '5 div 0'),
        <FhirBase>[],
      );
    });
  });

  group('testMod', () {
    test('testMod1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1 mod 1 = 0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testMod2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '4 mod 2 = 0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testMod3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '5 mod 2 = 1',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: Not passing because Dart thinks this is 0.40000000000000013
    // test("testMod4", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1, pathExpression: r"2.2 mod 1.8 = 0.4"),
    //       [true]);
    // });
    test('testMod4-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(2.2 mod 1.8).round(8) = 0.4',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testMod5', () {
      expect(
        walkFhirPath(context: patient1, pathExpression: '5 mod 0'),
        <FhirBase>[],
      );
    });
  });

  group('testRound', () {
    test('testRound1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.round() = 1',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: Incorrect test case: 3.14159.round(3) // 3.142
    // test("testRound2", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"3.14159.round(3) = 2"),
    //       [true]);
    // });
    test('testRound2-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '3.14159.round(3) = 3.142',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testSqrt', () {
    test('testSqrt1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '81.sqrt() = 9.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testSqrt2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(-1).sqrt()',
        ),
        <FhirBase>[],
      );
    });
  });

  group('testAbs', () {
    test('testAbs1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(-5).abs() = 5',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testAbs2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(-5.5).abs() = 5.5',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testAbs3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "(-5.5 'mg').abs() = 5.5 'mg'",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testCeiling', () {
    test('testCeiling1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.ceiling() = 1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testCeiling2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(-1.1).ceiling() = -1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testCeiling3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.1.ceiling() = 2',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testExp', () {
    test('testExp1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '0.exp() = 1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testExp2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(-0.0).exp() = 1',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testFloor', () {
    test('testFloor1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.floor() = 1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testFloor2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '2.1.floor() = 2',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testFloor3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(-2.1).floor() = -3',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testLn', () {
    test('testLn1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.ln() = 0.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLn2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.0.ln() = 0.0',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testLog', () {
    test('testLog1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '16.log(2) = 4.0',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testLog2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '100.0.log(10.0) = 2.0',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testPower', () {
    test('testPower1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '2.power(3) = 8',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testPower2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '2.5.power(2) = 6.25',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testPower3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(-1).power(0.5)',
        ),
        <FhirBase>[],
      );
    });
  });

  group('testTruncate', () {
    test('testTruncate1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '101.truncate() = 101',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testTruncate2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1.00000001.truncate() = 1',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testTruncate3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(-1.56).truncate() = -1',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testPrecedence', () {
    // FIXED: <test name="testPrecedence1" name="testUnaryPrecedence"
    // inputfile="patient-example.xml">
    // <expression invalid="semantic">-1.convertsToInteger()</expression>
    // should error because unary does not work on boolean: -(1.convertsToInteger())
    // })
    test('testPrecedence1-fixed', () {
      expect(
        () => walkFhirPath(
          context: patient1,
          pathExpression: '-1.convertsToInteger()',
        ),
        throwsA(const TypeMatcher<PathEngineException>()),
      );
    });

    test('testPrecedence2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1+2*3+4 = 11',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: Incorrect test case. 'is' has higher precedence than >
    // test("testPrecedence3", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1, pathExpression: r"1 > 2 is Boolean"),
    //       [true]);
    // });
    test('testPrecedence3-fixed', () {
      expect(
        () => walkFhirPath(
          context: patient1,
          pathExpression: '1 > 2 is Boolean',
        ),
        throwsA(const TypeMatcher<PathEngineException>()),
      );
    });

    // FIXED: Incorrect test case. 'is' has higher precedence than |
    // test("testPrecedence4", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1, pathExpression: r"1 | 1 is Integer"),
    //       [true]);
    // });
    test('testPrecedence4-fixeda', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '1 | 1 is Integer',
        ),
        [1.toFhirInteger, true.toFhirBoolean],
      );
    });
    test('testPrecedence4-fixedb', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(1 | 1) is Integer',
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testVariables', () {
    test('testVariables1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "%sct = 'http://snomed.info/sct'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testVariables2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "%loinc = 'http://loinc.org'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testVariables3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "%ucum = 'http://unitsofmeasure.org'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testVariables4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              "%`vs-administrative-gender` = 'http://hl7.org/fhir/ValueSet/administrative-gender'",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testExtension', () {
    test('testExtension1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              "Patient.birthDate.extension('http://hl7.org/fhir/StructureDefinition/patient-birthTime').exists()",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testExtension2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              'Patient.birthDate.extension(%`ext-patient-birthTime`).exists()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testExtension3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression:
              "Patient.birthDate.extension('http://hl7.org/fhir/StructureDefinition/patient-birthTime1').empty()",
        ),
        [true.toFhirBoolean],
      );
    });
  });

  group('testType', () {
    test('testType1', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "1.type().namespace = 'System'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType2', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "1.type().name = 'Integer'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType3', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "true.type().namespace = 'System'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType4', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "true.type().name = 'Boolean'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType5', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'true is Boolean',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType6', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'true is System.Boolean',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType7', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'true is Boolean',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType8', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'true is System.Boolean',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType9', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "Patient.active.type().namespace = 'FHIR'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType10', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "Patient.active.type().name = 'boolean'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType11', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.active is boolean',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType12', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.active is Boolean.not()',
        ),
        [false.toFhirBoolean],
      );
    });
    test('testType12-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(Patient.active is Boolean).not()',
        ),
        [false.toFhirBoolean],
      );
    });

    test('testType13', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.active is FHIR.boolean',
        ),
        [true.toFhirBoolean],
      );
    });

    // FIXED: Incorrect assumption about precedence
    // test("testType14", () {
    //   expect(
    //       walkFhirPath(
    //           context: patient1,
    //           pathExpression: r"Patient.active is System.Boolean.not()"),
    //       [true]);
    // });
    test('testType14-fixed', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: '(Patient.active is System.Boolean).not()',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType15', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "Patient.type().namespace = 'FHIR'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType16', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: "Patient.type().name = 'Patient'",
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType17', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient is Patient',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType18', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient is FHIR.Patient',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType19', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient is FHIR.`Patient`',
        ),
        [true.toFhirBoolean],
      );
    });

    test('testType20', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.ofType(Patient).type().name',
        ),
        ['Patient'.toFhirString],
      );
    });

    test('testType21', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.ofType(FHIR.Patient).type().name',
        ),
        ['Patient'.toFhirString],
      );
    });

    // TODO(Dokotela): eventually deal with System
    // test('testType22', () {
    //   expect(
    //     walkFhirPath(
    //       context: patient1,
    //       pathExpression: 'Patient is System.Patient.not()',
    //     ),
    //     [true.toFhirBoolean],
    //   );
    // });

    test('testType23', () {
      expect(
        walkFhirPath(
          context: patient1,
          pathExpression: 'Patient.ofType(FHIR.`Patient`).type().name',
        ),
        ['Patient'.toFhirString],
      );
    });
  });

  // TODO(Dokotela): conforms to
  group('testConformsTo', () {
    // test('testConformsTo', () {
    //   expect(
    //     walkFhirPath(
    //       context: patient1,
    //       pathExpression:
    //           "conformsTo('http://hl7.org/fhir/StructureDefinition/Patient')",
    //     ),
    //     [true.toFhirBoolean],
    //   );
    // });
    // test('testConformsTo', () {
    //   expect(
    //     walkFhirPath(
    //       context: patient1,
    //       pathExpression:
    //           "conformsTo('http://hl7.org/fhir/StructureDefinition/Person')",
    //     ),
    //     [false.toFhirBoolean],
    //   );
    // });
    test('testConformsTo', () {
      expect(
        () => walkFhirPath(
          context: patient1,
          pathExpression: "conformsTo('http://trash')",
        ),
        throwsA(const TypeMatcher<PathEngineException>()),
      );
    });
  });
}
