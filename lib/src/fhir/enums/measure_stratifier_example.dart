import 'package:fhir_r4/fhir_r4.dart';

/// Identifier subgroups in a population for measuring purposes.
enum MeasureStratifierExample {
  /// Display: Age
  /// Definition: Age Stratification.
  age('age'),

  /// Display: Gender
  /// Definition: Gender Stratification.
  gender('gender'),

  /// Display: Region
  /// Definition: Region Stratification.
  region('region'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MeasureStratifierExample(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MeasureStratifierExample fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureStratifierExample.elementOnly.withElement(element);
    }
    return MeasureStratifierExample.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MeasureStratifierExample withElement(Element? newElement) {
    return MeasureStratifierExample.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
