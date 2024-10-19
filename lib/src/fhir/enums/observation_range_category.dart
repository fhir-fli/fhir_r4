// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the category of observation range.
class ObservationRangeCategory {
  // Private constructor for internal use (like enum)
  ObservationRangeCategory._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ObservationRangeCategory values
  /// reference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationRangeCategory reference = ObservationRangeCategory._(
    'reference',
  );

  /// critical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationRangeCategory critical = ObservationRangeCategory._(
    'critical',
  );

  /// absolute
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationRangeCategory absolute = ObservationRangeCategory._(
    'absolute',
  );

  /// For instances where an Element is present but not value

  static final ObservationRangeCategory elementOnly =
      ObservationRangeCategory._('');

  /// List of all enum-like values
  static final List<ObservationRangeCategory> values = [
    reference,
    critical,
    absolute,
  ];

  /// Returns the enum value with an element attached
  ObservationRangeCategory withElement(Element? newElement) {
    return ObservationRangeCategory._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ObservationRangeCategory] from JSON.
  static ObservationRangeCategory fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationRangeCategory.elementOnly.withElement(element);
    }
    return ObservationRangeCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ObservationRangeCategory.$fhirCode';
}
