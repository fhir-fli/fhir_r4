// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of substance weight measurement.
class WeightType {
  // Private constructor for internal use (like enum)
  WeightType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// WeightType values
  /// Exact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WeightType Exact = WeightType._(
    'Exact',
  );

  /// Average
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WeightType Average = WeightType._(
    'Average',
  );

  /// WeightAverage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final WeightType WeightAverage = WeightType._(
    'WeightAverage',
  );

  /// For instances where an Element is present but not value

  static final WeightType elementOnly = WeightType._('');

  /// List of all enum-like values
  static final List<WeightType> values = [
    Exact,
    Average,
    WeightAverage,
  ];

  /// Returns the enum value with an element attached
  WeightType withElement(Element? newElement) {
    return WeightType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [WeightType] from JSON.
  static WeightType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return WeightType.elementOnly.withElement(element);
    }
    return WeightType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'WeightType.$fhirCode';
}
