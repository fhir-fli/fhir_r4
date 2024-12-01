// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Laterality: SNOMED-CT concepts for 'left', 'right', and 'bilateral'
class Laterality {
  // Private constructor for internal use (like enum)
  Laterality._(this.fhirCode, {this.element});

  /// Factory constructor to create [Laterality] from JSON.
  factory Laterality.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Laterality.elementOnly.withElement(element);
    }
    return Laterality._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Laterality values
  /// value419161000
  static final Laterality value419161000 = Laterality._(
    '419161000',
  );

  /// value419465000
  static final Laterality value419465000 = Laterality._(
    '419465000',
  );

  /// value51440002
  static final Laterality value51440002 = Laterality._(
    '51440002',
  );

  /// For instances where an Element is present but not value

  static final Laterality elementOnly = Laterality._('');

  /// List of all enum-like values
  static final List<Laterality> values = [
    value419161000,
    value419465000,
    value51440002,
  ];

  /// Returns the enum value with an element attached
  Laterality withElement(Element? newElement) {
    return Laterality._(fhirCode, element: newElement);
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
