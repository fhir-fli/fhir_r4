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
  });
}
