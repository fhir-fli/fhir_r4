import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate how an individual participates in an encounter.
enum ParticipantType {
  /// Display:
  /// Definition:
  SPRF('SPRF'),

  /// Display:
  /// Definition:
  PPRF('PPRF'),

  /// Display:
  /// Definition:
  PART('PART'),

  /// Display: Translator
  /// Definition: A translator who is facilitating communication with the patient during the encounter.
  translator('translator'),

  /// Display: Emergency
  /// Definition: A person to be contacted in case of an emergency during the encounter.
  emergency('emergency'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ParticipantType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ParticipantType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipantType.elementOnly.withElement(element);
    }
    return ParticipantType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ParticipantType withElement(Element? newElement) {
    return ParticipantType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
