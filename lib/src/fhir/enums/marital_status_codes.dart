import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines the set of codes that can be used to indicate the marital status of a person.
enum MaritalStatusCodes {
  /// Display:
  /// Definition:
  UNK('UNK'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MaritalStatusCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MaritalStatusCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MaritalStatusCodes.elementOnly.withElement(element);
    }
    return MaritalStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MaritalStatusCodes withElement(Element? newElement) {
    return MaritalStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
