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

    test('Parse valid complex path', () {
      final node = engine.parse('Patient.name.given.first()');
      expect(node.name, equals('Patient')); // Root node
      expect(node.inner?.name, equals('name')); // First chained node
      expect(node.inner?.inner?.name, equals('given')); // Second chained node
      expect(
        node.inner?.inner?.inner?.function,
        equals(FpFunction.First),
      ); // Function call
      expect(
        node.inner?.inner?.inner?.parameters,
        isEmpty,
      ); // Check no parameters
    });

    test('Parse path with constant', () {
      final node = engine.parse('Patient.age = 30');
      node.printExpressionTree();

      // Check root node (operation node "=")
      expect(
          node.operation, equals(FpOperation.Equals)); // Root is '=' operator

      // Check left operand (Patient.age)
      expect(node.inner?.name, equals('Patient')); // Root node for left operand
      expect(node.inner?.inner?.name, equals('age')); // Attribute under Patient

      // Check right operand (constant "30")
      expect(node.opNext?.constant?.toString(), equals('30')); // Constant
    });
  });
}
