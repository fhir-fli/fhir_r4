// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Prescription Product codes.
class ExampleVisionPrescriptionProductCodes {
  // Private constructor for internal use (like enum)
  ExampleVisionPrescriptionProductCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExampleVisionPrescriptionProductCodes values
  /// lens
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleVisionPrescriptionProductCodes lens =
      ExampleVisionPrescriptionProductCodes._(
    'lens',
  );

  /// contact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleVisionPrescriptionProductCodes contact =
      ExampleVisionPrescriptionProductCodes._(
    'contact',
  );

  /// For instances where an Element is present but not value

  static final ExampleVisionPrescriptionProductCodes elementOnly =
      ExampleVisionPrescriptionProductCodes._('');

  /// List of all enum-like values
  static final List<ExampleVisionPrescriptionProductCodes> values = [
    lens,
    contact,
  ];

  /// Returns the enum value with an element attached
  ExampleVisionPrescriptionProductCodes withElement(Element? newElement) {
    return ExampleVisionPrescriptionProductCodes._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExampleVisionPrescriptionProductCodes] from JSON.
  static ExampleVisionPrescriptionProductCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleVisionPrescriptionProductCodes.elementOnly
          .withElement(element);
    }
    return ExampleVisionPrescriptionProductCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleVisionPrescriptionProductCodes.$fhirCode';
}
