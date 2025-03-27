import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// Validates the extensions of a [Node] against the corresponding
/// [ElementDefinition].
///
/// This function ensures that extensions within the FHIR resource comply with
/// the rules defined in the StructureDefinition for the extension type.
///
/// - Fetches the StructureDefinition for the extension.
/// - Validates the structure of the extension node against the fetched
/// elements.
///
/// [node] - The node being validated.
/// [elements] - Map of element definitions that describe the resource.
/// [results] - Existing validation results to which new results will be added.
/// [client] - HTTP client used to fetch external resources.
Future<ValidationResults> validateExtensions({
  required Node node,
  required Map<String, ElementDefinition> elements,
  required ValidationResults results,
  required ResourceCache resourceCache,
}) async {
  var newResults = results.copyWith();

  // Iterate over each element to find and validate extensions.
  for (final element in elements.values) {
    // Check if the element's type includes "Extension".
    if (element.type != null &&
        element.type!.any(
          (ElementDefinitionType t) => t.code.toString() == 'Extension',
        )) {
      // Retrieve the profile URL for the extension.
      final extensionUrl = element.type
          ?.firstWhere(
            (ElementDefinitionType t) => t.code.toString() == 'Extension',
          )
          .profile
          ?.first;

      // Fetch the StructureDefinition for the extension.
      final structureDefinition =
          await resourceCache.getStructureDefinition(extensionUrl.toString());

      if (structureDefinition != null) {
        // Extract elements from the fetched StructureDefinition.
        final extensionElements = extractElements(structureDefinition);

        // Locate the extension node within the parent node.
        final extensionNode = node.getPropertyNode('_${element.path.value!}');

        // Validate the structure of the extension node.
        if (extensionNode != null) {
          if (extensionNode is! ObjectNode) {
            // Add an error if the extension node is not an ObjectNode.
            results.addResult(
              node,
              'Extension must be an ObjectNode: $extensionNode',
              Severity.error,
            );
          } else {
            // Recursively validate the structure of the extension node.
            newResults = await validateStructure(
              node: extensionNode,
              elements: extensionElements,
              type: 'Extension',
              resourceCache: resourceCache,
            );
          }
        }
      }
    }
  }

  return newResults;
}
