import 'package:fhir_r4/fhir_r4.dart';

/// Extension on [Map<String, dynamic] to check if it is a resource.
extension IsResource on Map<String, dynamic> {
  /// Returns true if the map is a resource.
  bool isResource() {
    final type = this['resourceType'] as String?;
    if (type == null) {
      return false;
    }
    return R4ResourceType.typesAsStrings.contains(type) ||
        type.toLowerCase().contains('tright') ||
        type.toLowerCase().contains('tleft');
  }
}

/// Extension on [Map<String, dynamic] to check if it is a bundle.
extension FhirBaseChildren on FhirBase {
  /// Returns the children of the [FhirBase] as a map.
  Future<ElementNode> toTypedElement(DefinitionResolver resolver) async =>
      this is PrimitiveType
          ? LeafNode(
              null,
              null,
              null,
              toJson(),
              fhirType,
            )
          : MapNode.fromMapAsync(
              null,
              null,
              null,
              toJson(),
              resolver,
            );
}
