part of 'substance.dart';

/// Another substance that is a component of this substance.
sealed class SubstanceXSubstanceIngredient {}

/// Another substance that is a component of this substance.
class CodeableConceptSubstanceSubstanceIngredient extends CodeableConcept
    implements SubstanceXSubstanceIngredient {
  /// Factory constructor for super class
  factory CodeableConceptSubstanceSubstanceIngredient.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptSubstanceSubstanceIngredient;
}

/// Another substance that is a component of this substance.
class ReferenceSubstanceSubstanceIngredient extends Reference
    implements SubstanceXSubstanceIngredient {
  /// Factory constructor for super class
  factory ReferenceSubstanceSubstanceIngredient.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceSubstanceSubstanceIngredient;
}
