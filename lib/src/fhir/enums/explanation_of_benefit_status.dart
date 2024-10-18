// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code specifying the state of the resource instance.
enum ExplanationOfBenefitStatus {
  /// Display: Active
  /// Definition: The resource instance is currently in-force.
  active('active'),

  /// Display: Cancelled
  /// Definition: The resource instance is withdrawn, rescinded or reversed.
  cancelled('cancelled'),

  /// Display: Draft
  /// Definition: A new resource instance the contents of which is not complete.
  draft('draft'),

  /// Display: Entered In Error
  /// Definition: The resource instance was entered in error.
  entered_in_error('entered-in-error'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ExplanationOfBenefitStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ExplanationOfBenefitStatus] instances.
  static ExplanationOfBenefitStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExplanationOfBenefitStatus.elementOnly.withElement(
        element,
      );
    }
    return ExplanationOfBenefitStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ExplanationOfBenefitStatus withElement(Element? newElement) {
    return ExplanationOfBenefitStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
