import 'package:fhir_r4/fhir_r4.dart';

/// Types of resources that are part of group.
enum GroupType {
  /// Display: Person
  /// Definition: Group contains "person" Patient resources.
  person('person'),

  /// Display: Animal
  /// Definition: Group contains "animal" Patient resources.
  animal('animal'),

  /// Display: Practitioner
  /// Definition: Group contains healthcare practitioner resources (Practitioner or PractitionerRole).
  practitioner('practitioner'),

  /// Display: Device
  /// Definition: Group contains Device resources.
  device('device'),

  /// Display: Medication
  /// Definition: Group contains Medication resources.
  medication('medication'),

  /// Display: Substance
  /// Definition: Group contains Substance resources.
  substance('substance'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const GroupType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static GroupType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupType.elementOnly.withElement(element);
    }
    return GroupType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  GroupType withElement(Element? newElement) {
    return GroupType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
