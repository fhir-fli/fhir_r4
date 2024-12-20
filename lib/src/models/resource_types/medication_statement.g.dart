part of 'medication_statement.dart';

/// Identifies the medication being administered. This is either a link to
/// a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
sealed class MedicationXMedicationStatementMedicationStatement
    extends DataType {}

/// Identifies the medication being administered. This is either a link to
/// a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
class CodeableConceptMedicationMedicationStatementMedicationStatement
    extends CodeableConcept
    implements MedicationXMedicationStatementMedicationStatement {
  /// Factory constructor for super class
  factory CodeableConceptMedicationMedicationStatementMedicationStatement.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptMedicationMedicationStatementMedicationStatement;
}

/// Identifies the medication being administered. This is either a link to
/// a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
class ReferenceMedicationMedicationStatementMedicationStatement
    extends Reference
    implements MedicationXMedicationStatementMedicationStatement {
  /// Factory constructor for super class
  factory ReferenceMedicationMedicationStatementMedicationStatement.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceMedicationMedicationStatementMedicationStatement;
}

/// The interval of time during which it is being asserted that the patient
/// is/was/will be taking the medication (or was not taking, when the
/// MedicationStatement.taken element is No).
sealed class EffectiveXMedicationStatementMedicationStatement
    extends DataType {}

/// The interval of time during which it is being asserted that the patient
/// is/was/will be taking the medication (or was not taking, when the
/// MedicationStatement.taken element is No).
class DateTimeEffectiveMedicationStatementMedicationStatement
    extends FhirDateTime
    implements EffectiveXMedicationStatementMedicationStatement {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeEffectiveMedicationStatementMedicationStatement.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDateTime.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateTimeEffectiveMedicationStatementMedicationStatement;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeEffectiveMedicationStatementMedicationStatement.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeEffectiveMedicationStatementMedicationStatement;

  /// Factory constructor for super class
  factory DateTimeEffectiveMedicationStatementMedicationStatement.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeEffectiveMedicationStatementMedicationStatement;
}

/// The interval of time during which it is being asserted that the patient
/// is/was/will be taking the medication (or was not taking, when the
/// MedicationStatement.taken element is No).
class PeriodEffectiveMedicationStatementMedicationStatement extends Period
    implements EffectiveXMedicationStatementMedicationStatement {
  /// Factory constructor for super class
  factory PeriodEffectiveMedicationStatementMedicationStatement.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json)
          as PeriodEffectiveMedicationStatementMedicationStatement;
}
