import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';
import 'package:test/test.dart';

void main() {
  group('validateStructure Tests', () {
    test('Validates a simple ObjectNode successfully', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.id')
            ..key = ValueNode('id', 'id')
            ..value = LiteralNode('12345', '12345', path: 'Patient.id'),
        );
      final element = ElementDefinition(
        path: 'Patient.id'.toFhirString,
        type: [ElementDefinitionType(code: 'string'.toFhirUri)],
      );
      final elements = {'Patient.id': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Patient',
        resourceCache: resourceCache,
      );

      expect(results.results, isEmpty); // No errors expected
    });

    test('Reports missing fields in ObjectNode', () async {
      // Create a node with a property that's NOT in the StructureDefinition
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.unknownField')
            ..key = ValueNode('unknownField', 'unknownField')
            ..value = LiteralNode('test', 'test', path: 'Patient.unknownField'),
        );
      // Elements map doesn't contain 'Patient.unknownField'
      final elements = <String, ElementDefinition>{};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Patient',
        resourceCache: resourceCache,
      );

      expect(results.results, isNotEmpty);
      expect(
        results.results.first.diagnostics,
        contains('Element not found in StructureDefinition'),
      );
    });

    test('Validates nested properties in ObjectNode', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.name')
            ..key = ValueNode('name', 'name')
            ..value = (ArrayNode(path: 'Patient.name')
              ..children.add(
                ObjectNode(path: 'Patient.name[0]')
                  ..children.add(
                    PropertyNode(path: 'Patient.name[0].given')
                      ..key = ValueNode('given', 'given')
                      ..value = LiteralNode(
                        'John',
                        'John',
                        path: 'Patient.name[0].given',
                      ),
                  ),
              )),
        );
      final elementName = ElementDefinition(
        path: 'Patient.name'.toFhirString,
        type: [ElementDefinitionType(code: 'HumanName'.toFhirUri)],
      );
      final elementGiven = ElementDefinition(
        path: 'Patient.name.given'.toFhirString,
        type: [ElementDefinitionType(code: 'string'.toFhirUri)],
      );
      final elements = {
        'Patient.name': elementName,
        'Patient.name.given': elementGiven,
      };
      // Create a minimal StructureDefinition for HumanName
      final humanNameStructureDefinition = StructureDefinition(
        id: 'HumanName'.toFhirString,
        url:
            'http://hl7.org/fhir/StructureDefinition/HumanName'.toFhirCanonical,
        name: 'HumanName'.toFhirString,
        type: 'HumanName'.toFhirUri,
        kind: StructureDefinitionKind.complexType,
        abstract_: false.toFhirBoolean,
        status: PublicationStatus.active,
        snapshot: StructureDefinitionSnapshot(
          element: [
            ElementDefinition(
              path: 'HumanName'.toFhirString,
              min: 0.toFhirUnsignedInt,
              max: '1'.toFhirString,
            ),
            ElementDefinition(
              path: 'HumanName.given'.toFhirString,
              min: 0.toFhirUnsignedInt,
              max: '*'.toFhirString,
              type: [ElementDefinitionType(code: 'string'.toFhirUri)],
            ),
          ],
        ),
      );
      // Create a resourceCache that can return the HumanName StructureDefinition
      final resourceCache = _TestResourceCache(humanNameStructureDefinition);

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Patient',
        resourceCache: resourceCache,
      );

      expect(results.results, isEmpty); // No errors expected
    });

    test('Fails validation for invalid primitive value', () async {
      final node = ObjectNode(path: 'Patient')
        ..children.add(
          PropertyNode(path: 'Patient.id')
            ..key = ValueNode('id', 'id')
            ..value = LiteralNode('', '', path: 'Patient.id'),
        );
      final element = ElementDefinition(
        path: 'Patient.id'.toFhirString,
        type: [ElementDefinitionType(code: 'string'.toFhirUri)],
        constraint: [
          ElementDefinitionConstraint(
            key: 'non_empty_id'.toFhirId,
            human: 'ID must not be empty'.toFhirString,
            expression: 'length() > 0'.toFhirString,
            severity: ConstraintSeverity.error,
          ),
        ],
      );
      final elements = {'Patient.id': element};
      final resourceCache = CanonicalResourceCache();

      final results = await validateStructure(
        node: node,
        elements: elements,
        type: 'Patient',
        resourceCache: resourceCache,
      );

      expect(results.results, isNotEmpty);
      expect(
        results.results.first.diagnostics,
        contains('ID must not be empty'),
      );
    });
  });
}

// Test ResourceCache that provides StructureDefinitions
class _TestResourceCache extends CanonicalResourceCache {
  _TestResourceCache(StructureDefinition? humanName) {
    if (humanName != null) {
      _cache['HumanName'] = humanName;
      _cache['http://hl7.org/fhir/StructureDefinition/HumanName'] = humanName;
    }
  }
  final Map<String, StructureDefinition> _cache = {};

  @override
  Future<StructureDefinition?> getStructureDefinition(String? type) async {
    if (type == null) return null;
    final cached =
        _cache[type] ?? _cache['http://hl7.org/fhir/StructureDefinition/$type'];
    if (cached != null) return cached;
    return super.getStructureDefinition(type);
  }
}
