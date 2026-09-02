import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';
import 'package:http/http.dart';

/// A modular FHIR Validator class
class FhirValidationEngine {
  /// Validate a FHIR resource from a Dart FHIR class
  Future<ValidationResults> validateFhirResource({
    required Resource structureToValidate,
    StructureDefinition? structureDefinition,
    ResourceCache? resourceCache,
    Client? client,
  }) {
    return validateFhirMap(
      structureToValidate: structureToValidate.toJson(),
      structureDefinition: structureDefinition,
      resourceCache: resourceCache,
      client: client,
    );
  }

  /// Validate a FHIR resource from a JSON string
  Future<ValidationResults> validateFhirString({
    required String structureToValidate,
    Client? client,
    StructureDefinition? structureDefinition,
    ResourceCache? resourceCache,
  }) async {
    // Only the decode belongs in the try. Validation itself used to sit in
    // here too, returned without await, so its exceptions escaped the catch
    // entirely — and awaiting it without moving it would have been worse,
    // reporting a genuine validation failure as 'Failed to parse resource
    // JSON'. The try now covers exactly what its message claims.
    Map<String, dynamic> resourceMap;
    try {
      resourceMap = json.decode(structureToValidate) as Map<String, dynamic>;
    } catch (e) {
      final results = ValidationResults();
      return results
        ..addResult(
          null,
          'Failed to parse resource JSON: $e',
          Severity.error,
        );
    }
    return validateFhirMap(
      structureToValidate: resourceMap,
      structureDefinition: structureDefinition,
      resourceCache: resourceCache,
      client: client,
    );
  }

  /// Validate a FHIR resource from a JSON map
  /// Validate a FHIR resource from a JSON map.
  ///
  /// [resourceCache] is where every StructureDefinition, ValueSet, CodeSystem
  /// and profile referenced by the resource is looked up. **Supply one.** The
  /// default is a [CanonicalResourceCache], which is an empty in-memory map
  /// that fetches nothing, so with the default this validates a resource of
  /// type X by reporting "No StructureDefinition found for resourceType: X",
  /// and a resource whose elements are bound to a value set throws
  /// "Resource not found at `<url>`". A caller with a store of canonicals — a
  /// server's own database, a package folder — passes a [ResourceCache] over
  /// it and validation works offline.
  Future<ValidationResults> validateFhirMap({
    required Map<String, dynamic> structureToValidate,
    Client? client,
    StructureDefinition? structureDefinition,
    ResourceCache? resourceCache,
  }) async {
    final type = structureToValidate['resourceType'] as String?;
    final results = ValidationResults();
    final cache = resourceCache ?? CanonicalResourceCache(client: client);

    if (type == null) {
      return results
        ..addResult(null, 'ResourceType is missing', Severity.error);
    }

    // Fetch or use provided StructureDefinition
    // A core type's StructureDefinition is published at
    // http://hl7.org/fhir/StructureDefinition/<type> — that is the `url` on
    // the definition itself, so it is the key a cache holds it under. Asking
    // for the bare type name, which is what this used to do, missed every
    // cache keyed by canonical URL. The bare name is still tried second, for
    // a cache that indexes by type.
    const base = 'http://hl7.org/fhir/StructureDefinition/';
    structureDefinition ??= await cache.getStructureDefinition('$base$type') ??
        await cache.getStructureDefinition(type);

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
      resourceCache: cache,
    );
  }

  /// Evaluate a resource against its StructureDefinition
  Future<ValidationResults> _evaluateResource({
    required Map<String, dynamic> structureToValidate,
    required StructureDefinition structureDefinition,
    required String type,
    required ResourceCache resourceCache,
  }) async {
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
          resourceCache: resourceCache,
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
          resourceCache: resourceCache,
        ),
      )

      // Step 3: Validate bindings
      ..combineResults(
        await validateBindings(
          node: node,
          elements: elements,
          results: results,
          resourceCache: resourceCache,
        ),
      )

      // Step 4: Validate extensions
      ..combineResults(
        await validateExtensions(
          node: node,
          elements: elements,
          results: results,
          resourceCache: resourceCache,
        ),
      );

    return results;
  }
}
