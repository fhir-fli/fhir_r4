// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Extra monitoring defined for a Medicinal Product.
class AdditionalMonitoring {
  // Private constructor for internal use (like enum)
  AdditionalMonitoring._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AdditionalMonitoring values
  /// BlackTriangleMonitoring
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdditionalMonitoring BlackTriangleMonitoring =
      AdditionalMonitoring._(
    'BlackTriangleMonitoring',
  );

  /// For instances where an Element is present but not value

  static final AdditionalMonitoring elementOnly = AdditionalMonitoring._('');

  /// List of all enum-like values
  static final List<AdditionalMonitoring> values = [
    BlackTriangleMonitoring,
  ];

  /// Returns the enum value with an element attached
  AdditionalMonitoring withElement(Element? newElement) {
    return AdditionalMonitoring._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AdditionalMonitoring] from JSON.
  static AdditionalMonitoring fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdditionalMonitoring.elementOnly.withElement(element);
    }
    return AdditionalMonitoring._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
