import 'package:fhir_r4/fhir_r4.dart';

/// The reported execution result.
enum TestReportResult {
  /// Display: Pass
  /// Definition: All test operations successfully passed all asserts.
  pass('pass'),

  /// Display: Fail
  /// Definition: One or more test operations failed one or more asserts.
  fail('fail'),

  /// Display: Pending
  /// Definition: One or more test operations is pending execution completion.
  pending('pending'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const TestReportResult(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static TestReportResult fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportResult.elementOnly.withElement(element);
    }
    return TestReportResult.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  TestReportResult withElement(Element? newElement) {
    return TestReportResult.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
