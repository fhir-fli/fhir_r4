// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Prescription Product codes.
enum ExampleVisionPrescriptionProductCodes {
  /// Display: Lens
  /// Definition: A lens to be fitted to a frame to comprise a pair of glasses.
  lens('lens'),

  /// Display: Contact Lens
  /// Definition: A lens to be fitted for wearing directly on an eye.
  contact('contact'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ExampleVisionPrescriptionProductCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ExampleVisionPrescriptionProductCodes] instances.
  static ExampleVisionPrescriptionProductCodes fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  ExampleVisionPrescriptionProductCodes withElement(Element? newElement) {
    return ExampleVisionPrescriptionProductCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
