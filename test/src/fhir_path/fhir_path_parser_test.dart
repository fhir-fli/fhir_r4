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
      expect(node.inner?.inner?.inner?.function,
          equals(FpFunction.First)); // Function call
    });

    // test('Parse path with constant', () {
    //   final node = engine.parse('Patient.age = 30');
    //   expect(node.name, equals('Patient')); // Root node
    //   expect(node.inner?.name, equals('age')); // Attribute
    //   expect(node.inner?.operation, equals(FpOperation.Equals)); // Operation
    //   expect(
    //       node.inner?.opNext?.constant?.toString(), equals('30')); // Constant
    // });

    // test('Parse invalid path with missing term after dot', () {
    //   expect(
    //     () => engine.parse('Patient.'),
    //     throwsA(isA<FHIRLexerException>()), // Error due to missing term
    //   );
    // });

    // test('Parse nested grouping', () {
    //   final node = engine.parse('(Patient.name).given');
    //   expect(node.kind, equals(ExpressionNodeKind.group)); // Grouping
    //   expect(node.group?.name, equals('Patient')); // Root of group
    //   expect(node.group?.inner?.name, equals('name')); // Attribute in group
    //   expect(node.inner?.name, equals('given')); // Chained node outside group
    // });

    // test('Parse path with function and parameters', () {
    //   final node = engine.parse('Patient.name.given.substring(0, 3)');
    //   expect(node.name, equals('Patient')); // Root node
    //   expect(node.inner?.name, equals('name')); // First chained node
    //   expect(node.inner?.inner?.name, equals('given')); // Second chained node
    //   expect(node.inner?.inner?.inner?.function,
    //       equals(FpFunction.Substring)); // Function
    //   expect(node.inner?.inner?.inner?.parameters?.length,
    //       equals(2)); // Parameters
    //   expect(node.inner?.inner?.inner?.parameters?[0].constant?.toString(),
    //       equals('0')); // First parameter
    //   expect(node.inner?.inner?.inner?.parameters?[1].constant?.toString(),
    //       equals('3')); // Second parameter
    // });

    // test('Parse invalid path with unmatched parentheses', () {
    //   expect(
    //     () => engine.parse('(Patient.name'),
    //     throwsA(
    //         isA<FHIRLexerException>()), // Error due to unmatched parentheses
    //   );
    // });

    // test('Parse valid function with parameters', () {
    //   final node = engine.parse('Patient.name.substring(0, 3)');
    //   expect(node.toString(),
    //       equals('Patient.name.substring(0, 3)')); // Verify full path
    // });

    // test('Parse valid operation', () {
    //   final node = engine.parse('Patient.age = 30');
    //   expect(node.inner?.operation,
    //       equals(FpOperation.Equals)); // Verify operation
    //   expect(node.inner?.opNext?.constant?.toString(),
    //       equals('30')); // Verify constant
    // });

    // test('Parse nested grouping with operations', () {
    //   final node = engine.parse('(Patient.name).given & "Smith"');
    //   expect(node.toString(),
    //       equals('(Patient.name).given & "Smith"')); // Verify full expression
    // });
  });
}
