import 'package:fhir_r4/fhir_r4.dart';

/// The purpose of the Claim: predetermination, preauthorization, claim.
enum Use {
  /// Display: Claim
  /// Definition: The treatment is complete and this represents a Claim for the services.
  claim('claim'),

  /// Display: Preauthorization
  /// Definition: The treatment is proposed and this represents a Pre-authorization for the services.
  preauthorization('preauthorization'),

  /// Display: Predetermination
  /// Definition: The treatment is proposed and this represents a Pre-determination for the services.
  predetermination('predetermination'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const Use(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static Use fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Use.elementOnly.withElement(element);
    }
    return Use.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  Use withElement(Element? newElement) {
    return Use.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
