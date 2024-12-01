// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the potential degree of impact of the identified issue on the patient.
class DetectedIssueSeverity {
  // Private constructor for internal use (like enum)
  DetectedIssueSeverity._(this.fhirCode, {this.element});

  /// Factory constructor to create [DetectedIssueSeverity] from JSON.
  factory DetectedIssueSeverity.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DetectedIssueSeverity.elementOnly.withElement(element);
    }
    return DetectedIssueSeverity._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DetectedIssueSeverity values
  /// high
  static final DetectedIssueSeverity high = DetectedIssueSeverity._(
    'high',
  );

  /// moderate
  static final DetectedIssueSeverity moderate = DetectedIssueSeverity._(
    'moderate',
  );

  /// low
  static final DetectedIssueSeverity low = DetectedIssueSeverity._(
    'low',
  );

  /// For instances where an Element is present but not value

  static final DetectedIssueSeverity elementOnly = DetectedIssueSeverity._('');

  /// List of all enum-like values
  static final List<DetectedIssueSeverity> values = [
    high,
    moderate,
    low,
  ];

  /// Returns the enum value with an element attached
  DetectedIssueSeverity withElement(Element? newElement) {
    return DetectedIssueSeverity._(fhirCode, element: newElement);
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
