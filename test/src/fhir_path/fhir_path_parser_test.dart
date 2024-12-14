import 'package:fhir_r4/src/fhir_path/java/java.dart';
import 'package:test/test.dart';

void main() {
  group('FHIRPathEngine Parsing Tests', () {
    final worker = SimpleWorkerContext();
    final engine = FHIRPathEngine(worker);

    test('Parse valid simple path', () {
      final node = engine.parse('Patient.name');
      expect(node.name, equals('Patient')); // Root node
      expect(node.inner?.name, equals('name')); // Chained node
    });

    test('Parse path with constant', () {
      final node = engine.parse('Patient.age = 30');
      node.printExpressionTree();

      // Traverse into the group to validate the structure
      expect(node.group?.name, equals('Patient')); // Root node
      expect(node.group?.inner?.name, equals('age')); // Attribute
      expect(node.operation, equals(FpOperation.Equals)); // Operation
      expect(node.opNext?.constant.toString(), equals('30')); // Constant
    });

    test('Parse simple arithmetic expression', () {
      final node = engine.parse('5 + 3 * 2');
      node.printExpressionTree();

      // Check root operation
      expect(node.operation, equals(FpOperation.Plus));

      // Check left operand (5)
      expect(node.group?.constant?.toString(), equals('5'));

      // Check right operand (3 * 2 group)
      final rightOperand = node.opNext;
      expect(rightOperand?.operation, equals(FpOperation.Times));
      expect(rightOperand?.group?.constant?.toString(), equals('3'));
      expect(rightOperand?.opNext?.constant?.toString(), equals('2'));
    });

    test('Parse simple arithmetic expression', () {
      final node = engine.parse('5 + 3 * 2');
      node.printExpressionTree();

      // Check root operation
      expect(node.operation, equals(FpOperation.Plus));

      // Check left operand (5)
      expect(node.group?.constant?.toString(), equals('5'));

      // Check right operand (3 * 2 group)
      final rightOperand = node.opNext;
      expect(rightOperand?.operation, equals(FpOperation.Times));
      expect(rightOperand?.group?.constant?.toString(), equals('3'));
      expect(rightOperand?.opNext?.constant?.toString(), equals('2'));
    });

    test('Parse comparison expression', () {
      final node = engine.parse('Patient.age >= 18');
      node.printExpressionTree();

      // Check root operation
      expect(node.operation, equals(FpOperation.GreaterOrEqual));

      // Check left operand (Patient.age)
      final leftOperand = node.group;
      expect(leftOperand?.name, equals('Patient'));
      expect(leftOperand?.inner?.name, equals('age'));

      // Check right operand (18)
      final rightOperand = node.opNext;
      expect(rightOperand?.constant?.toString(), equals('18'));
    });

    test('Parse logical expression', () {
      final node =
          engine.parse("Patient.age >= 18 and Patient.gender = 'male'");
      node.printExpressionTree();

      // Check root operation
      expect(node.operation, equals(FpOperation.And));

      // Check left operand (Patient.age >= 18)
      final leftOperand = node.group;
      expect(leftOperand?.operation, equals(FpOperation.GreaterOrEqual));
      expect(leftOperand?.group?.name, equals('Patient'));
      expect(leftOperand?.group?.inner?.name, equals('age'));
      expect(leftOperand?.opNext?.constant, equals(18));

      // Check right operand (Patient.gender = 'male')
      final rightOperand = node.opNext;
      expect(rightOperand?.operation, equals(FpOperation.Equals));
      expect(rightOperand?.group?.name, equals('Patient'));
      expect(rightOperand?.group?.inner?.name, equals('gender'));
      expect(rightOperand?.opNext?.constant, equals('male'));
    });

    // test('Parse function call expression', () {
    //   final node = engine.parse('Patient.name.first()');
    //   node.printExpressionTree();
    //   expect(node.name, equals('Patient'));
    //   expect(node.inner?.name, equals('name'));
    //   expect(node.inner?.parameters.isEmpty, equals(false));
    //   expect(node.inner?.parameters[0].function, equals('first'));
    // });

    // test('Parse nested expression', () {
    //   final node = engine.parse('(Patient.age + 2) * 3');
    //   node.printExpressionTree();
    //   expect(node.operation, equals(FpOperation.Times));
    //   expect(node.inner?.operation, equals(FpOperation.Plus));
    //   expect(node.inner?.inner?.name, equals('Patient'));
    //   expect(node.inner?.inner?.inner?.name, equals('age'));
    //   expect(node.inner?.opNext?.constant?.toString(), equals('2'));
    //   expect(node.opNext?.constant?.toString(), equals('3'));
    // });

    // test('Parse chained access expression', () {
    //   final node = engine.parse('Patient.address.city');
    //   node.printExpressionTree();
    //   expect(node.name, equals('Patient'));
    //   expect(node.inner?.name, equals('address'));
    //   expect(node.inner?.inner?.name, equals('city'));
    // });
  });
}
