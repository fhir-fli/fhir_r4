// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// NLM codes Internet or Print.
class CitedMedium {
  // Private constructor for internal use (like enum)
  CitedMedium._(this.fhirCode, {this.element});

  /// Factory constructor to create [CitedMedium] from JSON.
  factory CitedMedium.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedMedium.elementOnly.withElement(element);
    }
    return CitedMedium._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CitedMedium values
  /// internet
  static final CitedMedium internet = CitedMedium._(
    'internet',
  );

  /// print
  static final CitedMedium print = CitedMedium._(
    'print',
  );

  /// offline_digital_storage
  static final CitedMedium offline_digital_storage = CitedMedium._(
    'offline-digital-storage',
  );

  /// internet_without_issue
  static final CitedMedium internet_without_issue = CitedMedium._(
    'internet-without-issue',
  );

  /// print_without_issue
  static final CitedMedium print_without_issue = CitedMedium._(
    'print-without-issue',
  );

  /// offline_digital_storage_without_issue
  static final CitedMedium offline_digital_storage_without_issue =
      CitedMedium._(
    'offline-digital-storage-without-issue',
  );

  /// For instances where an Element is present but not value

  static final CitedMedium elementOnly = CitedMedium._('');

  /// List of all enum-like values
  static final List<CitedMedium> values = [
    internet,
    print,
    offline_digital_storage,
    internet_without_issue,
    print_without_issue,
    offline_digital_storage_without_issue,
  ];

  /// Returns the enum value with an element attached
  CitedMedium withElement(Element? newElement) {
    return CitedMedium._(fhirCode, element: newElement);
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
