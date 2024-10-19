// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The quality of how direct the match is.
class EvidenceDirectness {
  // Private constructor for internal use (like enum)
  EvidenceDirectness._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EvidenceDirectness values
  /// low
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceDirectness low = EvidenceDirectness._(
    'low',
  );

  /// moderate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceDirectness moderate = EvidenceDirectness._(
    'moderate',
  );

  /// high
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceDirectness high = EvidenceDirectness._(
    'high',
  );

  /// exact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceDirectness exact = EvidenceDirectness._(
    'exact',
  );

  /// For instances where an Element is present but not value

  static final EvidenceDirectness elementOnly = EvidenceDirectness._('');

  /// List of all enum-like values
  static final List<EvidenceDirectness> values = [
    low,
    moderate,
    high,
    exact,
  ];

  /// Returns the enum value with an element attached
  EvidenceDirectness withElement(Element? newElement) {
    return EvidenceDirectness._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EvidenceDirectness] from JSON.
  static EvidenceDirectness fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceDirectness.elementOnly.withElement(element);
    }
    return EvidenceDirectness.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EvidenceDirectness.$fhirCode';
}
