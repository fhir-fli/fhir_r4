// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The kind of dose or rate specified.
class DoseAndRateType {
  // Private constructor for internal use (like enum)
  DoseAndRateType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DoseAndRateType values
  /// calculated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DoseAndRateType calculated = DoseAndRateType._(
    'calculated',
  );

  /// ordered
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DoseAndRateType ordered = DoseAndRateType._(
    'ordered',
  );

  /// For instances where an Element is present but not value

  static final DoseAndRateType elementOnly = DoseAndRateType._('');

  /// List of all enum-like values
  static final List<DoseAndRateType> values = [
    calculated,
    ordered,
  ];

  /// Returns the enum value with an element attached
  DoseAndRateType withElement(Element? newElement) {
    return DoseAndRateType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DoseAndRateType] from JSON.
  static DoseAndRateType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DoseAndRateType.elementOnly.withElement(element);
    }
    return DoseAndRateType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
