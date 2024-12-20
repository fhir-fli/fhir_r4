part of 'medication_dispense.dart';

/// Indicates the reason why a dispense was not performed.
sealed class StatusReasonXMedicationDispenseMedicationDispense
    extends DataType {}

/// Indicates the reason why a dispense was not performed.
class CodeableConceptStatusReasonMedicationDispenseMedicationDispense
    extends CodeableConcept
    implements StatusReasonXMedicationDispenseMedicationDispense {
  /// Factory constructor for super class
  factory CodeableConceptStatusReasonMedicationDispenseMedicationDispense.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptStatusReasonMedicationDispenseMedicationDispense;
}

/// Indicates the reason why a dispense was not performed.
class ReferenceStatusReasonMedicationDispenseMedicationDispense
    extends Reference
    implements StatusReasonXMedicationDispenseMedicationDispense {
  /// Factory constructor for super class
  factory ReferenceStatusReasonMedicationDispenseMedicationDispense.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceStatusReasonMedicationDispenseMedicationDispense;
}

/// Identifies the medication being administered. This is either a link to
/// a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
sealed class MedicationXMedicationDispenseMedicationDispense extends DataType {}

/// Identifies the medication being administered. This is either a link to
/// a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
class CodeableConceptMedicationMedicationDispenseMedicationDispense
    extends CodeableConcept
    implements MedicationXMedicationDispenseMedicationDispense {
  /// Factory constructor for super class
  factory CodeableConceptMedicationMedicationDispenseMedicationDispense.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptMedicationMedicationDispenseMedicationDispense;
}

/// Identifies the medication being administered. This is either a link to
/// a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
class ReferenceMedicationMedicationDispenseMedicationDispense extends Reference
    implements MedicationXMedicationDispenseMedicationDispense {
  /// Factory constructor for super class
  factory ReferenceMedicationMedicationDispenseMedicationDispense.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceMedicationMedicationDispenseMedicationDispense;
}
