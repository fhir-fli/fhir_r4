import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

/// Extension on [StructureDefinition] to provide additional functionality.
extension SdRoot on StructureDefinition {
  /// Returns the root element of the [StructureDefinition].
  ElementDefinition? get rootElement => snapshot?.element.firstWhereOrNull(
        (e) =>
            e.path.valueString?.toLowerCase() == type.toString().toLowerCase(),
      );

  /// Returns if the [StructureDefinition] describes a primitive type.
  bool get describesPrimitive => type.toString().isFhirPrimitive;

  /// Returns if the [StructureDefinition] describes a resource type.
  bool get describesResource => type.toString().isFhirResourceType;
}
