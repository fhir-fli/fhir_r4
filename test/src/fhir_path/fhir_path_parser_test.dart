import 'package:fhir_r4/src/fhir_path/java/java.dart';
import 'package:test/test.dart';

void fhirPathParserTest() {
  group('FHIRPathEngine Parsing Tests', () {
    final worker = SimpleWorkerContext();
    final engine = FHIRPathEngine(worker);

    test('Parse valid simple path', () {
      final node = engine.parse('Patient.name');
      // Top-level node is "Patient"
      expect(node.name, equals('Patient'));
      // Its .inner is "name"
      expect(node.inner?.name, equals('name'));
    });

    test('Parse path with constant', () {
      final node = engine.parse('Patient.age = 30');

      // Top-level node: "Patient"
      expect(node.name, equals('Patient'));
      // Chained property: "age"
      expect(node.inner?.name, equals('age'));
      // The operator: =
      expect(node.operation, equals(FpOperation.Equals));
      // Right-hand side: constant 30
      expect(node.opNext?.constant?.toString(), equals('30'));
    });

    test('Parse simple arithmetic expression (with precedence)', () {
      // Expression: 5 + 3 * 2
      final node = engine.parse('5 + 3 * 2');

      // Top-level node = constant(5), with operation "+"
      expect(node.constant?.toString(), equals('5'));
      expect(node.operation, equals(FpOperation.Plus));

      // Because of precedence, right side of '+' might be its own sub-chain:
      final rightOperand = node.opNext;
      // RightOperand: operation "*" (multiplying 3 and 2)
      expect(rightOperand?.operation, equals(FpOperation.Times));
      // The left side of "*" is in rightOperand.group or rightOperand.inner
      // depending on your implementation. Often it's .group if you create a
      //“group” node.
      // But if you follow a purely linked style, you might see:
      expect(rightOperand?.constant?.toString(), equals('3'));
      // Next node is "2"
      final multiplier = rightOperand?.opNext;
      expect(multiplier?.constant?.toString(), equals('2'));
    });

    test('Parse comparison expression', () {
      // Expression: Patient.age >= 18
      final node = engine.parse('Patient.age >= 18');

      // Top-level node is "Patient" with .inner = "age"
      expect(node.name, equals('Patient'));
      expect(node.inner?.name, equals('age'));

      // The operator is ">="
      expect(node.operation, equals(FpOperation.GreaterOrEqual));

      // The right-hand side is 18
      expect(node.opNext?.constant?.toString(), equals('18'));
    });

    test('Parse logical expression', () {
      // Expression: Patient.age >= 18 and Patient.gender = 'male'
      final node =
          engine.parse("Patient.age >= 18 and Patient.gender = 'male'");

      // Because ">=" has higher precedence than "and," the parse often yields:
      // node = "Patient.age" (operation=GreaterOrEqual) -> opNext="18"
      // then that '18' node might carry "and" as its operation ->
      //  opNext="Patient.gender..."
      // or your engine might reorder them. The official Java engine typically
      // keeps them in a chain.

      // Let's check step by step:

      // 1) The top-level node
      expect(node.name, equals('Patient'));
      expect(node.inner?.name, equals('age'));
      expect(node.operation, equals(FpOperation.GreaterOrEqual));

      // 2) Next node (the "18" part) might have operation=And
      final secondNode = node.opNext;
      expect(secondNode?.constant?.toString(), equals('18'));
      expect(secondNode?.operation, equals(FpOperation.And));

      // 3) The node after that is "Patient.gender = 'male'"
      final thirdNode = secondNode?.opNext;
      expect(thirdNode?.name, equals('Patient'));
      expect(thirdNode?.inner?.name, equals('gender'));
      expect(thirdNode?.operation, equals(FpOperation.Equals));

      // 4) Finally, the constant 'male'
      final fourthNode = thirdNode?.opNext;
      expect(fourthNode?.constant?.toString(), equals('male'));
    });

    test('Parse function call expression', () {
      // Expression: Patient.name.first()
      final node = engine.parse('Patient.name.first()');

      // "Patient" is the top-level
      expect(node.name, equals('Patient'));
      // Chained property "name"
      expect(node.inner?.name, equals('name'));
      // The function call is typically stored in parameters:
      expect(node.inner?.parameters.isEmpty, isTrue);
      expect(node.inner?.inner?.function, equals(FpFunction.First));
    });

    test('Parse nested expression', () {
      final node = engine.parse('(Patient.age + 2) * 3');

      // Top-level node has operation = "*"
      expect(node.operation, equals(FpOperation.Times));

      // The parenthesized subexpression is in node.group
      final subExpr = node.group; // This is "(Patient.age + 2)"

      // That subExpr has operation = "+"
      expect(subExpr?.operation, equals(FpOperation.Plus));

      // The "left" side is "Patient.age"
      expect(subExpr?.name, equals('Patient'));
      expect(subExpr?.inner?.name, equals('age'));

      // The "right" side is "2"
      expect(subExpr?.opNext?.constant?.toString(), equals('2'));

      // The right side of "*" is "3", found at node.opNext
      expect(node.opNext?.constant?.toString(), equals('3'));
    });

    test('Parse chained access expression', () {
      // Expression: Patient.address.city
      final node = engine.parse('Patient.address.city');

      expect(node.name, equals('Patient'));
      expect(node.inner?.name, equals('address'));
      expect(node.inner?.inner?.name, equals('city'));
    });
  });
}
