import 'package:fhir_r4/fhir_r4.dart';

extension IsResource on Map<String, dynamic> {
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

extension FhirBaseChildren on FhirBase {
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
