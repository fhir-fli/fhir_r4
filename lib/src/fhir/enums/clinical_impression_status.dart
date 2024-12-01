// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes that reflect the current state of a clinical impression within its overall lifecycle.
class ClinicalImpressionStatus {
  // Private constructor for internal use (like enum)
  ClinicalImpressionStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [ClinicalImpressionStatus] from JSON.
  factory ClinicalImpressionStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalImpressionStatus.elementOnly.withElement(element);
    }
    return ClinicalImpressionStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ClinicalImpressionStatus values
  /// preparation
  static final ClinicalImpressionStatus preparation =
      ClinicalImpressionStatus._(
    'preparation',
  );

  /// in_progress
  static final ClinicalImpressionStatus in_progress =
      ClinicalImpressionStatus._(
    'in-progress',
  );

  /// not_done
  static final ClinicalImpressionStatus not_done = ClinicalImpressionStatus._(
    'not-done',
  );

  /// on_hold
  static final ClinicalImpressionStatus on_hold = ClinicalImpressionStatus._(
    'on-hold',
  );

  /// stopped
  static final ClinicalImpressionStatus stopped = ClinicalImpressionStatus._(
    'stopped',
  );

  /// completed
  static final ClinicalImpressionStatus completed = ClinicalImpressionStatus._(
    'completed',
  );

  /// entered_in_error
  static final ClinicalImpressionStatus entered_in_error =
      ClinicalImpressionStatus._(
    'entered-in-error',
  );

  /// unknown
  static final ClinicalImpressionStatus unknown = ClinicalImpressionStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final ClinicalImpressionStatus elementOnly =
      ClinicalImpressionStatus._('');

  /// List of all enum-like values
  static final List<ClinicalImpressionStatus> values = [
    preparation,
    in_progress,
    not_done,
    on_hold,
    stopped,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ClinicalImpressionStatus withElement(Element? newElement) {
    return ClinicalImpressionStatus._(fhirCode, element: newElement);
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
