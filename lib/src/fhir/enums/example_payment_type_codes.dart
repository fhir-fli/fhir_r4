// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes example Payment Type codes.
class ExamplePaymentTypeCodes {
  // Private constructor for internal use (like enum)
  ExamplePaymentTypeCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExamplePaymentTypeCodes values
  /// complete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExamplePaymentTypeCodes complete = ExamplePaymentTypeCodes._(
    'complete',
  );

  /// partial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExamplePaymentTypeCodes partial = ExamplePaymentTypeCodes._(
    'partial',
  );

  /// For instances where an Element is present but not value

  static final ExamplePaymentTypeCodes elementOnly =
      ExamplePaymentTypeCodes._('');

  /// List of all enum-like values
  static final List<ExamplePaymentTypeCodes> values = [
    complete,
    partial,
  ];

  /// Returns the enum value with an element attached
  ExamplePaymentTypeCodes withElement(Element? newElement) {
    return ExamplePaymentTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExamplePaymentTypeCodes] from JSON.
  static ExamplePaymentTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExamplePaymentTypeCodes.elementOnly.withElement(element);
    }
    return ExamplePaymentTypeCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
