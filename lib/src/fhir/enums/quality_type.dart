// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type for quality report.
class QualityType {
  // Private constructor for internal use (like enum)
  QualityType._(this.fhirCode, {this.element});

  /// Factory constructor to create [QualityType] from JSON.
  factory QualityType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QualityType.elementOnly.withElement(element);
    }
    return QualityType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// QualityType values
  /// indel
  static final QualityType indel = QualityType._(
    'indel',
  );

  /// snp
  static final QualityType snp = QualityType._(
    'snp',
  );

  /// unknown
  static final QualityType unknown = QualityType._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final QualityType elementOnly = QualityType._('');

  /// List of all enum-like values
  static final List<QualityType> values = [
    indel,
    snp,
    unknown,
  ];

  /// Returns the enum value with an element attached
  QualityType withElement(Element? newElement) {
    return QualityType._(fhirCode, element: newElement);
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
