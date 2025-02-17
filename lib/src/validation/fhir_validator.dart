import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart';

/// A modular FHIR Validator class
abstract class FhirValidator {
  /// Validate a FHIR resource from a Dart FHIR class
  static Future<ValidationResults> validateFhirResource({
    required Resource structureToValidate,
    StructureDefinition? structureDefinition,
    Client? client,
  }) {
    return validateFhirMap(
      structureToValidate: structureToValidate.toJson(),
      structureDefinition: structureDefinition,
      client: client,
    );
  }

  /// Validate a FHIR resource from a JSON string
  static Future<ValidationResults> validateFhirString({
    required String structureToValidate,
    Client? client,
    StructureDefinition? structureDefinition,
  }) async {
    final resourceMap =
        json.decode(structureToValidate) as Map<String, dynamic>;
    return validateFhirMap(
      structureToValidate: resourceMap,
      structureDefinition: structureDefinition,
      client: client,
    );
  }

  /// Validate a FHIR resource from a JSON map
  static Future<ValidationResults> validateFhirMap({
    required Map<String, dynamic> structureToValidate,
    Client? client,
    StructureDefinition? structureDefinition,
  }) async {
    final type = structureToValidate['resourceType'] as String?;
    final results = ValidationResults();

    if (type == null) {
      return results
        ..addResult(null, 'ResourceType is missing', Severity.error);
    }

    // Fetch or use provided StructureDefinition
    structureDefinition ??= await _fetchStructureDefinition(type, client);

    if (structureDefinition == null) {
      return results
        ..addResult(
          null,
          'No StructureDefinition found for resourceType: $type',
          Severity.error,
        );
    }

    // Begin validation
    return _evaluateResource(
      structureToValidate: structureToValidate,
      structureDefinition: structureDefinition,
      type: type,
      userClient: client,
    );
  }

  /// Fetch the StructureDefinition for a resource type
  static Future<StructureDefinition?> _fetchStructureDefinition(
    String resourceType,
    Client? client,
  ) async {
    if (client == null) return null;

    final definitionMap = await getResource(resourceType, client);
    if (definitionMap == null ||
        definitionMap['resourceType'] != 'StructureDefinition') {
      return null;
    }
    return StructureDefinition.fromJson(definitionMap);
  }

  /// Evaluate a resource against its StructureDefinition
  static Future<ValidationResults> _evaluateResource({
    required Map<String, dynamic> structureToValidate,
    required StructureDefinition structureDefinition,
    required String type,
    Client? userClient,
  }) async {
    final client = userClient ?? Client();
    final results = ValidationResults();
    final elements = extractElements(structureDefinition);
    Node node;
    try {
      node = parse(jsonEncode(structureToValidate), Settings(), type);
    } catch (e) {
      return results
        ..addResult(
          null,
          'Failed to parse resource JSON: $e',
          Severity.error,
        );
    }
    if (node is! ObjectNode) {
      return results
        ..addResult(
          null,
          'Root node must be an ObjectNode',
          Severity.error,
        );
    }
    final url = structureDefinition.getUrl() ?? '';

    // Step 1: Validate structure
    results
      ..combineResults(
        await validateStructure(
          node: node,
          elements: elements,
          type: type,
          url: url,
          client: client,
        ),
      )

      // Step 2: Validate cardinality
      ..combineResults(
        await validateCardinality(
          node: node,
          elements: elements,
          url: url,
          originalPath: type,
          replacePath: type,
          results: results,
          client: client,
        ),
      )

      // Step 3: Validate bindings
      ..combineResults(
        await validateBindings(
          node: node,
          elements: elements,
          results: results,
          client: client,
        ),
      )

      // Step 4: Validate extensions
      ..combineResults(
        await validateExtensions(
          node: node,
          elements: elements,
          results: results,
          client: client,
        ),
      );

    return results;
  }
}
