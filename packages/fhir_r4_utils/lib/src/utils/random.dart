import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// Determines the appropriate FHIR type code for an element.
/// For polymorphic elements (ending in `[x]`), the code is derived
/// from the specific type indicated in the path.
String? findCode(ElementDefinition element, String path) {
  if (element.type?.length == 1) {
    // Return the single type code if the element is not polymorphic
    return element.type?.first.code.toString();
  } else if ((element.type?.length ?? 0) > 1) {
    // Handle polymorphic types
    if (element.path.valueString?.endsWith('[x]') ?? false) {
      final type = path
          .split('.')
          .last
          .replaceAll(
            element.path.valueString?.split('.').last.replaceAll('[x]', '') ??
                '',
            '',
          )
          .toLowerCase();
      return element.type!
          .firstWhereOrNull(
            (ElementDefinitionType t) =>
                t.code.toString().toLowerCase() == type,
          )
          ?.code
          .toString();
    }
  }
  return null;
}

/// Cleans and standardizes paths by replacing the `originalPath`
/// with `replacePath` and removing array indices (e.g., `[0]`).
String cleanLocalPath(
  String originalPath,
  String replacePath,
  String childPath,
) {
  return _stripIndexes(childPath.replaceAll(originalPath, replacePath));
}

/// Removes array indices (e.g., `[0]`) from the provided path.
String _stripIndexes(String path) {
  final regex = RegExp(r'\[\d+\]');
  return path.replaceAll(regex, '');
}

/// Extracts all `ElementDefinition` entries from a `StructureDefinition`,
/// merging elements from both the `snapshot` and `differential` components.
Map<String, ElementDefinition> extractElements(
  StructureDefinition structureDefinition,
) {
  final map = <String, ElementDefinition>{};
  for (final element
      in structureDefinition.snapshot?.element ?? <ElementDefinition>[]) {
    map[element.path.valueString!] = element;
  }
  for (final element
      in structureDefinition.differential?.element ?? <ElementDefinition>[]) {
    map[element.path.valueString!] = element;
  }
  return map;
}

/// Retrieves the fully qualified URL of a [StructureDefinition],
/// appending the version if available.
extension GetUrl on StructureDefinition {
  /// Returns the fully qualified URL of the [StructureDefinition].
  String? getUrl() {
    String? sdUrl = url.toString();
    if (version != null) {
      sdUrl += '|$version';
    }
    return sdUrl;
  }
}

/// Fetches and extracts all codes from a ValueSet or CodeSystem URL.
/// Handles recursive includes for ValueSets and hierarchical concepts
/// within CodeSystems.
Future<Set<String>> getValueSetCodes(
  String valueSetUrl,
  ResourceCache resourceCache,
) async {
  final resource = await resourceCache.getCanonicalResource(valueSetUrl);
  if (resource == null) {
    throw Exception('Resource not found at $valueSetUrl');
  }

  final codes = <String>{};

  if (resource.resourceType == R4ResourceType.ValueSet) {
    final valueSet = resource as ValueSet;

    // Extract codes from ValueSet.compose.include
    if (valueSet.compose != null) {
      for (final include in valueSet.compose!.include) {
        // Process external ValueSets and CodeSystems
        if (include.valueSet != null) {
          for (final includedValueSetUrl in include.valueSet!) {
            final includedCodes = await _fetchIncludedValueSetCodes(
              includedValueSetUrl.toString(),
              resourceCache,
            );
            codes.addAll(includedCodes);
          }
        }
        if (include.system != null) {
          final includedCodes = await _fetchIncludedValueSetCodes(
            include.system.toString(),
            resourceCache,
          );
          codes.addAll(includedCodes);
        }

        // Process directly defined concepts
        for (final concept in include.concept ?? <ValueSetConcept>[]) {
          codes.add(concept.code.toString());
        }
      }
    }

    // Extract codes from ValueSet.expansion.contains
    if (valueSet.expansion != null) {
      for (final contains
          in valueSet.expansion!.contains ?? <ValueSetContains>[]) {
        if (contains.code != null) {
          codes.add(contains.code!.toString());
        }
      }
    }
  } else if (resource.resourceType == R4ResourceType.CodeSystem) {
    final codeSystem = resource as CodeSystem;

    // Extract codes and sub-concepts recursively
    for (final concept in codeSystem.concept ?? <CodeSystemConcept>[]) {
      codes
        ..add(concept.code.toString())
        ..addAll(_extractCodesFromConcept(concept));
    }
  } else {
    throw Exception('Unexpected resource type: ${resource.resourceType}');
  }

  return codes;
}

/// Recursively fetches and extracts codes from an included ValueSet or
/// CodeSystem.
Future<Set<String>> _fetchIncludedValueSetCodes(
  String includedValueSetUrl,
  ResourceCache resourceCache,
) async {
  final resource =
      await resourceCache.getCanonicalResource(includedValueSetUrl);
  if (resource == null) {
    return <String>{};
  }

  final includedCodes = <String>{};

  if (resource.resourceType == R4ResourceType.ValueSet) {
    final includedValueSet = resource as ValueSet;

    // Process compose.include concepts
    if (includedValueSet.compose != null) {
      for (final include in includedValueSet.compose!.include) {
        for (final concept in include.concept ?? <ValueSetConcept>[]) {
          includedCodes.add(concept.code.toString());
        }
      }
    }

    // Process expansion.contains concepts
    if (includedValueSet.expansion != null) {
      for (final contains
          in includedValueSet.expansion!.contains ?? <ValueSetContains>[]) {
        if (contains.code != null) {
          includedCodes.add(contains.code!.toString());
        }
      }
    }
  } else if (resource.resourceType == R4ResourceType.CodeSystem) {
    final includedCodeSystem = resource as CodeSystem;
    for (final concept in includedCodeSystem.concept ?? <CodeSystemConcept>[]) {
      includedCodes
        ..add(concept.code.toString())
        ..addAll(_extractCodesFromConcept(concept));
    }
  }

  return includedCodes;
}

/// Recursively extracts codes from a hierarchical CodeSystemConcept.
Set<String> _extractCodesFromConcept(CodeSystemConcept concept) {
  final codes = <String>{}..add(concept.code.toString());
  for (final subConcept in concept.concept ?? <CodeSystemConcept>[]) {
    codes.addAll(_extractCodesFromConcept(subConcept));
  }
  return codes;
}

/// Appends the URL to a message if the URL is provided.
String withUrlIfExists(String string, String? url) {
  return url != null ? '$string (from $url)' : string;
}
