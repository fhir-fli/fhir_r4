import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate the kinds of special arrangements in place for a patients visit.
enum SpecialArrangements {
  /// Display: Wheelchair
  /// Definition: The patient requires a wheelchair to be made available for the encounter.
  wheel('wheel'),

  /// Display: Additional bedding
  /// Definition: An additional bed made available for a person accompanying the patient, for example a parent accompanying a child.
  add_bed('add-bed'),

  /// Display: Interpreter
  /// Definition: The patient is not fluent in the local language and requires an interpreter to be available. Refer to the Patient.Language property for the type of interpreter required.
  int('int'),

  /// Display: Attendant
  /// Definition: A person who accompanies a patient to provide assistive services necessary for the patient's care during the encounter.
  att('att'),

  /// Display: Guide dog
  /// Definition: The patient has a guide dog and the location used for the encounter should be able to support the presence of the service animal.
  dog('dog'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SpecialArrangements(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SpecialArrangements fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecialArrangements.elementOnly.withElement(element);
    }
    return SpecialArrangements.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SpecialArrangements withElement(Element? newElement) {
    return SpecialArrangements.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
