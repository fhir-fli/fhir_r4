import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate special courtesies provided to the patient.
enum SpecialCourtesy {
  /// Display:
  /// Definition:
  EXT('EXT'),

  /// Display:
  /// Definition:
  NRM('NRM'),

  /// Display:
  /// Definition:
  PRF('PRF'),

  /// Display:
  /// Definition:
  STF('STF'),

  /// Display:
  /// Definition:
  VIP('VIP'),

  /// Display:
  /// Definition:
  UNK('UNK'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SpecialCourtesy(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SpecialCourtesy fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecialCourtesy.elementOnly.withElement(element);
    }
    return SpecialCourtesy.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SpecialCourtesy withElement(Element? newElement) {
    return SpecialCourtesy.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
