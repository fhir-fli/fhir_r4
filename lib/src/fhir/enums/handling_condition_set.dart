import 'package:fhir_r4/fhir_r4.dart';

/// Set of handling instructions prior testing of the specimen.
enum HandlingConditionSet {
  /// Display: room temperature
  /// Definition: room temperature.
  room('room'),

  /// Display: refrigerated
  /// Definition: refrigerated temperature.
  refrigerated('refrigerated'),

  /// Display: frozen
  /// Definition: frozen temperature.
  frozen('frozen'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const HandlingConditionSet(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static HandlingConditionSet fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return HandlingConditionSet.elementOnly.withElement(element);
    }
    return HandlingConditionSet.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  HandlingConditionSet withElement(Element? newElement) {
    return HandlingConditionSet.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
