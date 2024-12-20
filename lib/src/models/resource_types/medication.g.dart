part of 'medication.dart';

/// The actual ingredient - either a substance (simple ingredient) or
/// another medication of a medication.
sealed class ItemXMedicationIngredient extends DataType {}

/// The actual ingredient - either a substance (simple ingredient) or
/// another medication of a medication.
class CodeableConceptItemMedicationIngredient extends CodeableConcept
    implements ItemXMedicationIngredient {
  /// Factory constructor for super class
  factory CodeableConceptItemMedicationIngredient.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptItemMedicationIngredient;
}

/// The actual ingredient - either a substance (simple ingredient) or
/// another medication of a medication.
class ReferenceItemMedicationIngredient extends Reference
    implements ItemXMedicationIngredient {
  /// Factory constructor for super class
  factory ReferenceItemMedicationIngredient.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceItemMedicationIngredient;
}
