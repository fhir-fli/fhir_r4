// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall nature of the adverse event, e.g. real or potential.
class AdverseEventActuality {
  // Private constructor for internal use (like enum)
  AdverseEventActuality._(this.fhirCode, {this.element});

  /// Factory constructor to create [AdverseEventActuality] from JSON.
  factory AdverseEventActuality.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventActuality.elementOnly.withElement(element);
    }
    return AdverseEventActuality._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AdverseEventActuality values
  /// actual
  static final AdverseEventActuality actual = AdverseEventActuality._(
    'actual',
  );

  /// potential
  static final AdverseEventActuality potential = AdverseEventActuality._(
    'potential',
  );

  /// For instances where an Element is present but not value

  static final AdverseEventActuality elementOnly = AdverseEventActuality._('');

  /// List of all enum-like values
  static final List<AdverseEventActuality> values = [
    actual,
    potential,
  ];

  /// Returns the enum value with an element attached
  AdverseEventActuality withElement(Element? newElement) {
    return AdverseEventActuality._(fhirCode, element: newElement);
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
