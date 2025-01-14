import 'package:fhir_r4/src/validation/utils/json_to_ast.dart';
import 'package:test/test.dart';

void main() {
  group('Node Structure Tests', () {
    test('ObjectNode and PropertyNode Structure', () {
      final literalNode = LiteralNode('123', '123', path: 'Patient.id');
      final propertyNode = PropertyNode(path: 'Patient.id')
        ..key = ValueNode('id', 'id')
        ..value = literalNode;
      literalNode.parent = propertyNode;

      final objectNode = ObjectNode(path: 'Patient');
      objectNode.children.add(propertyNode);
      propertyNode.parent = objectNode;

      expect(objectNode.children, contains(propertyNode));
      expect(propertyNode.key?.value, equals('id'));
      expect(propertyNode.value, equals(literalNode));
      expect(literalNode.value, equals('123'));
      expect(literalNode.parent, equals(propertyNode));
      expect(getNodePath(literalNode), equals('Patient.id'));
    });

    test('ArrayNode Structure', () {
      final literalNode1 = LiteralNode('John', 'John', path: 'Patient.name[0]');
      final literalNode2 = LiteralNode('Doe', 'Doe', path: 'Patient.name[1]');
      final arrayNode = ArrayNode(path: 'Patient.name')
        ..children.addAll([literalNode1, literalNode2]);

      literalNode1.parent = arrayNode;
      literalNode2.parent = arrayNode;

      expect(arrayNode.children, containsAll([literalNode1, literalNode2]));
      expect(getNodePath(literalNode1), equals('Patient.name[0]'));
      expect(getNodePath(literalNode2), equals('Patient.name[1]'));
    });
  });
}
