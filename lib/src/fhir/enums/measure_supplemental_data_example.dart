import 'package:fhir_r4/fhir_r4.dart';

/// Supplemental data in a population for measuring purposes.
enum MeasureSupplementalDataExample {
  /// Display: Age
  /// Definition: Age Supplemental Data.
  age('age'),

  /// Display: Gender
  /// Definition: Gender Supplemental Data .
  gender('gender'),

  /// Display: Ethnicity
  /// Definition: Ethnicity Supplemental Data .
  ethnicity('ethnicity'),

  /// Display: Payer
  /// Definition: Payer Supplemental Data.
  payer('payer'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MeasureSupplementalDataExample(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MeasureSupplementalDataExample fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureSupplementalDataExample.elementOnly.withElement(element);
    }
    return MeasureSupplementalDataExample.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MeasureSupplementalDataExample withElement(Element? newElement) {
    return MeasureSupplementalDataExample.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
