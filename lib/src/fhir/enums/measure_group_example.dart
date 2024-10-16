import 'package:fhir_r4/fhir_r4.dart';

/// Example Measure Groups for the Measure Resource.
enum MeasureGroupExample {
  /// Display: Primary Rate
  /// Definition: Primary Measure Group.
  primary_rate('primary-rate'),

  /// Display: Secondary Rate
  /// Definition: Secondary Measure Group
  secondary_rate('secondary-rate'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MeasureGroupExample(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MeasureGroupExample fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureGroupExample.elementOnly.withElement(element);
    }
    return MeasureGroupExample.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MeasureGroupExample withElement(Element? newElement) {
    return MeasureGroupExample.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
