// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Revenue Center codes.
enum ExampleRevenueCenterCodes {
  /// Display: Anaesthesia
  /// Definition: Anaesthesia.
  value0370('0370'),

  /// Display: Physical Therapy
  /// Definition: Physical Therapy.
  value0420('0420'),

  /// Display: Physical Therapy -
  /// Definition: Physical Therapy - visit charge.
  value0421('0421'),

  /// Display: Speech-Language Pathology
  /// Definition: Speech-Language Pathology.
  value0440('0440'),

  /// Display: Speech-Language Pathology - Visit
  /// Definition: Speech-Language Pathology- visit charge
  value0441('0441'),

  /// Display: Emergency Room
  /// Definition: Emergency Room
  value0450('0450'),

  /// Display: Emergency Room - EM/EMTALA
  /// Definition: Emergency Room - EM/EMTALA
  value0451('0451'),

  /// Display: Emergency Room - beyond EMTALA
  /// Definition: Emergency Room - beyond EMTALA
  value0452('0452'),

  /// Display: Vision Clinic
  /// Definition: Vision Clinic
  value0010('0010'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ExampleRevenueCenterCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ExampleRevenueCenterCodes] instances.
  static ExampleRevenueCenterCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleRevenueCenterCodes.elementOnly.withElement(
        element,
      );
    }
    return ExampleRevenueCenterCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ExampleRevenueCenterCodes withElement(Element? newElement) {
    return ExampleRevenueCenterCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
