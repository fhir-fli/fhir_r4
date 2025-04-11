import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:test/test.dart';

Future<void> main() async {
  final fhirPathEngine = await FHIRPathEngine.create(WorkerContext());
  test('Boolean', () async {
    expect(fhirPathEngine.parse('true').constant, true.toFhirBoolean);
    expect(fhirPathEngine.parse('false').constant, false.toFhirBoolean);
  });

  test('Parse comparison expression', () async {
    // Expression: Patient.age >= 18
    final node = fhirPathEngine.parse('Patient.age >= 18');

    // Top-level node is "Patient"
    expect(node.name, equals('Patient'));

    // The top-level node's inner points to "age"
    expect(node.inner?.name, equals('age'));

    // The operator is ">="
    expect(node.operation, equals(FpOperation.GreaterOrEqual));

    // The right-hand side is 18
    expect(node.opNext?.constant, equals(18.toFhirInteger));
  });

  final node10 = fhirPathEngine.parse('@2021-06-06 = @2021-05-06');
  expect(
    await fhirPathEngine.evaluate(patient3, node10),
    [false.toFhirBoolean],
  );

  final node8 = fhirPathEngine.parse("4 'm' < 4 'cm'");
  expect(
    await fhirPathEngine.evaluate(patient3, node8),
    [false.toFhirBoolean],
  );

  var node = fhirPathEngine.parse('name.given.first().convertsToBoolean()');
  expect(
    await fhirPathEngine.evaluate(patient3, node),
    [false.toFhirBoolean],
  );

  node = fhirPathEngine.parse('1.ceiling() // 1');
  expect(
    await fhirPathEngine.evaluate(patient3, node),
    [1.toFhirInteger],
  );

  test('%variables', () async {
    final node = fhirPathEngine.parse('%var');
    await expectLater(
      fhirPathEngine.evaluateWithContext(
        null,
        null,
        null,
        null,
        node,
        environment: {
          'var': [5.toFhirInteger],
        },
      ),
      completion(equals([5.toFhirInteger])),
    );
  });

  expect(
    await walkFhirPath(
      context: patient3,
      pathExpression: "'abcdefg'.endsWith('efg') // true",
    ),
    [true.toFhirBoolean],
  );
}

final patient3 = Patient(
  id: 'example'.toFhirString,
  active: true.toFhirBoolean,
  telecom: [
    ContactPoint(
      system: ContactPointSystem.email,
      use: ContactPointUse.mobile,
      rank: FhirPositiveInt(3),
    ),
  ],
);
