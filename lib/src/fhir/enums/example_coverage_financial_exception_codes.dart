import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes Example Coverage Financial Exception Codes.
enum ExampleCoverageFinancialExceptionCodes {
  /// Display: Retired
  /// Definition: Retired persons have all copays and deductibles reduced.
  retired('retired'),

  /// Display: Foster child
  /// Definition: Children in the foster care have all copays and deductibles waived.
  foster('foster'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExampleCoverageFinancialExceptionCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExampleCoverageFinancialExceptionCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleCoverageFinancialExceptionCodes.elementOnly
          .withElement(element);
    }
    return ExampleCoverageFinancialExceptionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExampleCoverageFinancialExceptionCodes withElement(Element? newElement) {
    return ExampleCoverageFinancialExceptionCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
