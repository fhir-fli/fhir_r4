import 'package:fhir_r4/fhir_r4.dart';

/// The type of substance weight measurement.
enum WeightType {
  /// Display: exact
  /// Definition:
  Exact('Exact'),

  /// Display: number average
  /// Definition:
  Average('Average'),

  /// Display: weight average
  /// Definition:
  WeightAverage('WeightAverage'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const WeightType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static WeightType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return WeightType.elementOnly.withElement(element);
    }
    return WeightType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  WeightType withElement(Element? newElement) {
    return WeightType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
