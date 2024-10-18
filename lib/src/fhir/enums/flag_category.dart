// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example list of general categories for flagged issues. (Not complete or necessarily appropriate.)
enum FlagCategory {
  /// Display: Diet
  /// Definition: Flags related to the subject's dietary needs.
  diet('diet'),

  /// Display: Drug
  /// Definition: Flags related to the subject's medications.
  drug('drug'),

  /// Display: Lab
  /// Definition: Flags related to performing laboratory tests and related processes (e.g. phlebotomy).
  lab('lab'),

  /// Display: Administrative
  /// Definition: Flags related to administrative and financial processes.
  admin('admin'),

  /// Display: Subject Contact
  /// Definition: Flags related to coming into contact with the patient.
  contact('contact'),

  /// Display: Clinical
  /// Definition: Flags related to the subject's clinical data.
  clinical('clinical'),

  /// Display: Behavioral
  /// Definition: Flags related to behavior.
  behavioral('behavioral'),

  /// Display: Research
  /// Definition: Flags related to research.
  research('research'),

  /// Display: Advance Directive
  /// Definition: Flags related to subject's advance directives.
  advance_directive('advance-directive'),

  /// Display: Safety
  /// Definition: Flags related to safety precautions.
  safety('safety'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const FlagCategory(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FlagCategory] instances.
  static FlagCategory fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FlagCategory.elementOnly.withElement(
        element,
      );
    }
    return FlagCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  FlagCategory withElement(Element? newElement) {
    return FlagCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
