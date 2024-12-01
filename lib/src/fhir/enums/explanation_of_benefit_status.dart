// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code specifying the state of the resource instance.
class ExplanationOfBenefitStatus {
  // Private constructor for internal use (like enum)
  ExplanationOfBenefitStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [ExplanationOfBenefitStatus] from JSON.
  factory ExplanationOfBenefitStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExplanationOfBenefitStatus.elementOnly.withElement(element);
    }
    return ExplanationOfBenefitStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExplanationOfBenefitStatus values
  /// active
  static final ExplanationOfBenefitStatus active = ExplanationOfBenefitStatus._(
    'active',
  );

  /// cancelled
  static final ExplanationOfBenefitStatus cancelled =
      ExplanationOfBenefitStatus._(
    'cancelled',
  );

  /// draft
  static final ExplanationOfBenefitStatus draft = ExplanationOfBenefitStatus._(
    'draft',
  );

  /// entered_in_error
  static final ExplanationOfBenefitStatus entered_in_error =
      ExplanationOfBenefitStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final ExplanationOfBenefitStatus elementOnly =
      ExplanationOfBenefitStatus._('');

  /// List of all enum-like values
  static final List<ExplanationOfBenefitStatus> values = [
    active,
    cancelled,
    draft,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  ExplanationOfBenefitStatus withElement(Element? newElement) {
    return ExplanationOfBenefitStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
