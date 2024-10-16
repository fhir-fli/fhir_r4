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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const FlagCategory(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static FlagCategory fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FlagCategory.elementOnly.withElement(element);
    }
    return FlagCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  FlagCategory withElement(Element? newElement) {
    return FlagCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
