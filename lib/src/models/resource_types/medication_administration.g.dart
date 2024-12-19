part of 'medication_administration.dart';

/// Identifies the medication that was administered. This is either a link
/// to a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
sealed class MedicationXMedicationAdministrationMedicationAdministration {}

/// Identifies the medication that was administered. This is either a link
/// to a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
class CodeableConceptMedicationMedicationAdministrationMedicationAdministration
    extends CodeableConcept
    implements MedicationXMedicationAdministrationMedicationAdministration {
  /// Factory constructor for super class
  factory CodeableConceptMedicationMedicationAdministrationMedicationAdministration.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptMedicationMedicationAdministrationMedicationAdministration;
}

/// Identifies the medication that was administered. This is either a link
/// to a resource representing the details of the medication or a simple
/// attribute carrying a code that identifies the medication from a known
/// list of medications.
class ReferenceMedicationMedicationAdministrationMedicationAdministration
    extends Reference
    implements MedicationXMedicationAdministrationMedicationAdministration {
  /// Factory constructor for super class
  factory ReferenceMedicationMedicationAdministrationMedicationAdministration.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceMedicationMedicationAdministrationMedicationAdministration;
}

/// A specific date/time or interval of time during which the
/// administration took place (or did not take place, when the 'notGiven'
/// attribute is true). For many administrations, such as swallowing a
/// tablet the use of dateTime is more appropriate.
sealed class EffectiveXMedicationAdministrationMedicationAdministration {}

/// A specific date/time or interval of time during which the
/// administration took place (or did not take place, when the 'notGiven'
/// attribute is true). For many administrations, such as swallowing a
/// tablet the use of dateTime is more appropriate.
class DateTimeEffectiveMedicationAdministrationMedicationAdministration
    extends FhirDateTime
    implements EffectiveXMedicationAdministrationMedicationAdministration {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeEffectiveMedicationAdministrationMedicationAdministration.fromString(
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
      ) as DateTimeEffectiveMedicationAdministrationMedicationAdministration;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeEffectiveMedicationAdministrationMedicationAdministration.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeEffectiveMedicationAdministrationMedicationAdministration;

  /// Factory constructor for super class
  factory DateTimeEffectiveMedicationAdministrationMedicationAdministration.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json)
          as DateTimeEffectiveMedicationAdministrationMedicationAdministration;
}

/// A specific date/time or interval of time during which the
/// administration took place (or did not take place, when the 'notGiven'
/// attribute is true). For many administrations, such as swallowing a
/// tablet the use of dateTime is more appropriate.
class PeriodEffectiveMedicationAdministrationMedicationAdministration
    extends Period
    implements EffectiveXMedicationAdministrationMedicationAdministration {
  /// Factory constructor for super class
  factory PeriodEffectiveMedicationAdministrationMedicationAdministration.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json)
          as PeriodEffectiveMedicationAdministrationMedicationAdministration;
}

/// Identifies the speed with which the medication was or will be
/// introduced into the patient. Typically, the rate for an infusion e.g.
/// 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per
/// unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or
/// 200 mcg/1 minute; 1 liter/8 hours.
sealed class RateXMedicationAdministrationDosage {}

/// Identifies the speed with which the medication was or will be
/// introduced into the patient. Typically, the rate for an infusion e.g.
/// 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per
/// unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or
/// 200 mcg/1 minute; 1 liter/8 hours.
class RatioRateMedicationAdministrationDosage extends Ratio
    implements RateXMedicationAdministrationDosage {
  /// Factory constructor for super class
  factory RatioRateMedicationAdministrationDosage.fromJson(
    Map<String, dynamic> json,
  ) =>
      Ratio.fromJson(json) as RatioRateMedicationAdministrationDosage;
}

/// Identifies the speed with which the medication was or will be
/// introduced into the patient. Typically, the rate for an infusion e.g.
/// 100 ml per 1 hour or 100 ml/hr. May also be expressed as a rate per
/// unit of time, e.g. 500 ml per 2 hours. Other examples: 200 mcg/min or
/// 200 mcg/1 minute; 1 liter/8 hours.
class QuantityRateMedicationAdministrationDosage extends Quantity
    implements RateXMedicationAdministrationDosage {
  /// Factory constructor for super class
  factory QuantityRateMedicationAdministrationDosage.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityRateMedicationAdministrationDosage;
}
