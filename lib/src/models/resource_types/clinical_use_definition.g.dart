part of 'clinical_use_definition.dart';

/// Timing or duration information, that may be associated with use with
/// the indicated condition e.g. Adult patients suffering from myocardial
/// infarction (from a few days until less than 35 days), ischaemic stroke
/// (from 7 days until less than 6 months).
sealed class DurationXClinicalUseDefinitionIndication extends DataType {}

/// Timing or duration information, that may be associated with use with
/// the indicated condition e.g. Adult patients suffering from myocardial
/// infarction (from a few days until less than 35 days), ischaemic stroke
/// (from 7 days until less than 6 months).
class RangeDurationClinicalUseDefinitionIndication extends Range
    implements DurationXClinicalUseDefinitionIndication {
  /// Factory constructor for super class
  factory RangeDurationClinicalUseDefinitionIndication.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeDurationClinicalUseDefinitionIndication;
}

/// Timing or duration information, that may be associated with use with
/// the indicated condition e.g. Adult patients suffering from myocardial
/// infarction (from a few days until less than 35 days), ischaemic stroke
/// (from 7 days until less than 6 months).
class StringDurationClinicalUseDefinitionIndication extends FhirString
    implements DurationXClinicalUseDefinitionIndication {
  /// Constructor for [StringDurationClinicalUseDefinitionIndication]
  StringDurationClinicalUseDefinitionIndication(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringDurationClinicalUseDefinitionIndication.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringDurationClinicalUseDefinitionIndication;
}

/// The specific medication, food or laboratory test that interacts.
sealed class ItemXClinicalUseDefinitionInteractant extends DataType {}

/// The specific medication, food or laboratory test that interacts.
class ReferenceItemClinicalUseDefinitionInteractant extends Reference
    implements ItemXClinicalUseDefinitionInteractant {
  /// Factory constructor for super class
  factory ReferenceItemClinicalUseDefinitionInteractant.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceItemClinicalUseDefinitionInteractant;
}

/// The specific medication, food or laboratory test that interacts.
class CodeableConceptItemClinicalUseDefinitionInteractant
    extends CodeableConcept implements ItemXClinicalUseDefinitionInteractant {
  /// Factory constructor for super class
  factory CodeableConceptItemClinicalUseDefinitionInteractant.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptItemClinicalUseDefinitionInteractant;
}
