part of 'specimen_definition.dart';

/// The minimum volume to be conditioned in the container.
sealed class MinimumVolumeXSpecimenDefinitionContainer extends DataType {}

/// The minimum volume to be conditioned in the container.
class QuantityMinimumVolumeSpecimenDefinitionContainer extends Quantity
    implements MinimumVolumeXSpecimenDefinitionContainer {
  /// Factory constructor for super class
  factory QuantityMinimumVolumeSpecimenDefinitionContainer.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json)
          as QuantityMinimumVolumeSpecimenDefinitionContainer;
}

/// The minimum volume to be conditioned in the container.
class StringMinimumVolumeSpecimenDefinitionContainer extends FhirString
    implements MinimumVolumeXSpecimenDefinitionContainer {
  /// Constructor for [StringMinimumVolumeSpecimenDefinitionContainer]
  StringMinimumVolumeSpecimenDefinitionContainer(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringMinimumVolumeSpecimenDefinitionContainer.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringMinimumVolumeSpecimenDefinitionContainer;
}

/// Substance introduced in the kind of container to preserve, maintain or
/// enhance the specimen. Examples: Formalin, Citrate, EDTA.
sealed class AdditiveXSpecimenDefinitionAdditive extends DataType {}

/// Substance introduced in the kind of container to preserve, maintain or
/// enhance the specimen. Examples: Formalin, Citrate, EDTA.
class CodeableConceptAdditiveSpecimenDefinitionAdditive extends CodeableConcept
    implements AdditiveXSpecimenDefinitionAdditive {
  /// Factory constructor for super class
  factory CodeableConceptAdditiveSpecimenDefinitionAdditive.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptAdditiveSpecimenDefinitionAdditive;
}

/// Substance introduced in the kind of container to preserve, maintain or
/// enhance the specimen. Examples: Formalin, Citrate, EDTA.
class ReferenceAdditiveSpecimenDefinitionAdditive extends Reference
    implements AdditiveXSpecimenDefinitionAdditive {
  /// Factory constructor for super class
  factory ReferenceAdditiveSpecimenDefinitionAdditive.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceAdditiveSpecimenDefinitionAdditive;
}
