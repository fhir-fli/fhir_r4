// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that identifies the status of the family history record.
class FamilyHistoryStatus {
  // Private constructor for internal use (like enum)
  FamilyHistoryStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [FamilyHistoryStatus] from JSON.
  factory FamilyHistoryStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FamilyHistoryStatus.elementOnly.withElement(element);
    }
    return FamilyHistoryStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FamilyHistoryStatus values
  /// partial
  static final FamilyHistoryStatus partial = FamilyHistoryStatus._(
    'partial',
  );

  /// completed
  static final FamilyHistoryStatus completed = FamilyHistoryStatus._(
    'completed',
  );

  /// entered_in_error
  static final FamilyHistoryStatus entered_in_error = FamilyHistoryStatus._(
    'entered-in-error',
  );

  /// health_unknown
  static final FamilyHistoryStatus health_unknown = FamilyHistoryStatus._(
    'health-unknown',
  );

  /// For instances where an Element is present but not value

  static final FamilyHistoryStatus elementOnly = FamilyHistoryStatus._('');

  /// List of all enum-like values
  static final List<FamilyHistoryStatus> values = [
    partial,
    completed,
    entered_in_error,
    health_unknown,
  ];

  /// Returns the enum value with an element attached
  FamilyHistoryStatus withElement(Element? newElement) {
    return FamilyHistoryStatus._(fhirCode, element: newElement);
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
