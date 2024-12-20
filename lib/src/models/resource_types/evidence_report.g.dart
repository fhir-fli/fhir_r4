part of 'evidence_report.dart';

/// Citation Resource or display of suggested citation for this report.
sealed class CiteAsXEvidenceReportEvidenceReport extends DataType {}

/// Citation Resource or display of suggested citation for this report.
class ReferenceCiteAsEvidenceReportEvidenceReport extends Reference
    implements CiteAsXEvidenceReportEvidenceReport {
  /// Factory constructor for super class
  factory ReferenceCiteAsEvidenceReportEvidenceReport.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceCiteAsEvidenceReportEvidenceReport;
}

/// Citation Resource or display of suggested citation for this report.
class MarkdownCiteAsEvidenceReportEvidenceReport extends FhirMarkdown
    implements CiteAsXEvidenceReportEvidenceReport {
  /// Constructor for [MarkdownCiteAsEvidenceReportEvidenceReport]
  MarkdownCiteAsEvidenceReportEvidenceReport(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory MarkdownCiteAsEvidenceReportEvidenceReport.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirMarkdown.fromJson(json) as MarkdownCiteAsEvidenceReportEvidenceReport;
}

/// Characteristic value.
sealed class ValueXEvidenceReportCharacteristic extends DataType {}

/// Characteristic value.
class ReferenceValueEvidenceReportCharacteristic extends Reference
    implements ValueXEvidenceReportCharacteristic {
  /// Factory constructor for super class
  factory ReferenceValueEvidenceReportCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceValueEvidenceReportCharacteristic;
}

/// Characteristic value.
class CodeableConceptValueEvidenceReportCharacteristic extends CodeableConcept
    implements ValueXEvidenceReportCharacteristic {
  /// Factory constructor for super class
  factory CodeableConceptValueEvidenceReportCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptValueEvidenceReportCharacteristic;
}

/// Characteristic value.
class BooleanValueEvidenceReportCharacteristic extends FhirBoolean
    implements ValueXEvidenceReportCharacteristic {
  /// Constructor for [BooleanValueEvidenceReportCharacteristic]
  BooleanValueEvidenceReportCharacteristic(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueEvidenceReportCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueEvidenceReportCharacteristic;
}

/// Characteristic value.
class QuantityValueEvidenceReportCharacteristic extends Quantity
    implements ValueXEvidenceReportCharacteristic {
  /// Factory constructor for super class
  factory QuantityValueEvidenceReportCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueEvidenceReportCharacteristic;
}

/// Characteristic value.
class RangeValueEvidenceReportCharacteristic extends Range
    implements ValueXEvidenceReportCharacteristic {
  /// Factory constructor for super class
  factory RangeValueEvidenceReportCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeValueEvidenceReportCharacteristic;
}

/// The target composition/document of this relationship.
sealed class TargetXEvidenceReportRelatesTo extends DataType {}

/// The target composition/document of this relationship.
class IdentifierTargetEvidenceReportRelatesTo extends Identifier
    implements TargetXEvidenceReportRelatesTo {
  /// Factory constructor for super class
  factory IdentifierTargetEvidenceReportRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Identifier.fromJson(json) as IdentifierTargetEvidenceReportRelatesTo;
}

/// The target composition/document of this relationship.
class ReferenceTargetEvidenceReportRelatesTo extends Reference
    implements TargetXEvidenceReportRelatesTo {
  /// Factory constructor for super class
  factory ReferenceTargetEvidenceReportRelatesTo.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceTargetEvidenceReportRelatesTo;
}
