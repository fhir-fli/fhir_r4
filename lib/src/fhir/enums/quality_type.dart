import 'package:fhir_r4/fhir_r4.dart';

/// Type for quality report.
enum QualityType {
  /// Display: INDEL Comparison
  /// Definition: INDEL Comparison.
  indel('indel'),

  /// Display: SNP Comparison
  /// Definition: SNP Comparison.
  snp('snp'),

  /// Display: UNKNOWN Comparison
  /// Definition: UNKNOWN Comparison.
  unknown('unknown'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const QualityType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static QualityType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QualityType.elementOnly.withElement(element);
    }
    return QualityType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  QualityType withElement(Element? newElement) {
    return QualityType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
