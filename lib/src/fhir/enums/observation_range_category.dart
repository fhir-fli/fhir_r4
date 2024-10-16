import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the category of observation range.
enum ObservationRangeCategory {
  /// Display: reference range
  /// Definition: Reference (Normal) Range for Ordinal and Continuous Observations.
  reference('reference'),

  /// Display: critical range
  /// Definition: Critical Range for Ordinal and Continuous Observations.
  critical('critical'),

  /// Display: absolute range
  /// Definition: Absolute Range for Ordinal and Continuous Observations. Results outside this range are not possible.
  absolute('absolute'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ObservationRangeCategory(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ObservationRangeCategory fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationRangeCategory.elementOnly.withElement(element);
    }
    return ObservationRangeCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ObservationRangeCategory withElement(Element? newElement) {
    return ObservationRangeCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
