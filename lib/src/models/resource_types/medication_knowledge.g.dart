part of 'medication_knowledge.dart';

/// The actual ingredient - either a substance (simple ingredient) or
/// another medication.
sealed class ItemXMedicationKnowledgeIngredient extends DataType {}

/// The actual ingredient - either a substance (simple ingredient) or
/// another medication.
class CodeableConceptItemMedicationKnowledgeIngredient extends CodeableConcept
    implements ItemXMedicationKnowledgeIngredient {
  /// Factory constructor for super class
  factory CodeableConceptItemMedicationKnowledgeIngredient.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptItemMedicationKnowledgeIngredient;
}

/// The actual ingredient - either a substance (simple ingredient) or
/// another medication.
class ReferenceItemMedicationKnowledgeIngredient extends Reference
    implements ItemXMedicationKnowledgeIngredient {
  /// Factory constructor for super class
  factory ReferenceItemMedicationKnowledgeIngredient.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceItemMedicationKnowledgeIngredient;
}

/// Indication for use that apply to the specific administration
/// guidelines.
sealed class IndicationXMedicationKnowledgeAdministrationGuidelines
    extends DataType {}

/// Indication for use that apply to the specific administration
/// guidelines.
class CodeableConceptIndicationMedicationKnowledgeAdministrationGuidelines
    extends CodeableConcept
    implements IndicationXMedicationKnowledgeAdministrationGuidelines {
  /// Factory constructor for super class
  factory CodeableConceptIndicationMedicationKnowledgeAdministrationGuidelines.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptIndicationMedicationKnowledgeAdministrationGuidelines;
}

/// Indication for use that apply to the specific administration
/// guidelines.
class ReferenceIndicationMedicationKnowledgeAdministrationGuidelines
    extends Reference
    implements IndicationXMedicationKnowledgeAdministrationGuidelines {
  /// Factory constructor for super class
  factory ReferenceIndicationMedicationKnowledgeAdministrationGuidelines.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceIndicationMedicationKnowledgeAdministrationGuidelines;
}

/// Specific characteristic that is relevant to the administration
/// guideline (e.g. height, weight, gender).
sealed class CharacteristicXMedicationKnowledgePatientCharacteristics
    extends DataType {}

/// Specific characteristic that is relevant to the administration
/// guideline (e.g. height, weight, gender).
class CodeableConceptCharacteristicMedicationKnowledgePatientCharacteristics
    extends CodeableConcept
    implements CharacteristicXMedicationKnowledgePatientCharacteristics {
  /// Factory constructor for super class
  factory CodeableConceptCharacteristicMedicationKnowledgePatientCharacteristics.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptCharacteristicMedicationKnowledgePatientCharacteristics;
}

/// Specific characteristic that is relevant to the administration
/// guideline (e.g. height, weight, gender).
class QuantityCharacteristicMedicationKnowledgePatientCharacteristics
    extends Quantity
    implements CharacteristicXMedicationKnowledgePatientCharacteristics {
  /// Factory constructor for super class
  factory QuantityCharacteristicMedicationKnowledgePatientCharacteristics.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json)
          as QuantityCharacteristicMedicationKnowledgePatientCharacteristics;
}

/// Description of the characteristic.
sealed class ValueXMedicationKnowledgeDrugCharacteristic extends DataType {}

/// Description of the characteristic.
class CodeableConceptValueMedicationKnowledgeDrugCharacteristic
    extends CodeableConcept
    implements ValueXMedicationKnowledgeDrugCharacteristic {
  /// Factory constructor for super class
  factory CodeableConceptValueMedicationKnowledgeDrugCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptValueMedicationKnowledgeDrugCharacteristic;
}

/// Description of the characteristic.
class StringValueMedicationKnowledgeDrugCharacteristic extends FhirString
    implements ValueXMedicationKnowledgeDrugCharacteristic {
  /// Constructor for [StringValueMedicationKnowledgeDrugCharacteristic]
  StringValueMedicationKnowledgeDrugCharacteristic(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueMedicationKnowledgeDrugCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringValueMedicationKnowledgeDrugCharacteristic;
}

/// Description of the characteristic.
class QuantityValueMedicationKnowledgeDrugCharacteristic extends Quantity
    implements ValueXMedicationKnowledgeDrugCharacteristic {
  /// Factory constructor for super class
  factory QuantityValueMedicationKnowledgeDrugCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json)
          as QuantityValueMedicationKnowledgeDrugCharacteristic;
}

/// Description of the characteristic.
class Base64BinaryValueMedicationKnowledgeDrugCharacteristic
    extends FhirBase64Binary
    implements ValueXMedicationKnowledgeDrugCharacteristic {
  /// Constructor for [Base64BinaryValueMedicationKnowledgeDrugCharacteristic]
  Base64BinaryValueMedicationKnowledgeDrugCharacteristic(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory Base64BinaryValueMedicationKnowledgeDrugCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBase64Binary.fromJson(json)
          as Base64BinaryValueMedicationKnowledgeDrugCharacteristic;
}
