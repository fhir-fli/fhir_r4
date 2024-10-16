import 'package:fhir_r4/fhir_r4.dart';

/// The results of executing an action.
enum TestReportActionResult {
  /// Display: Pass
  /// Definition: The action was successful.
  pass('pass'),

  /// Display: Skip
  /// Definition: The action was skipped.
  skip('skip'),

  /// Display: Fail
  /// Definition: The action failed.
  fail('fail'),

  /// Display: Warning
  /// Definition: The action passed but with warnings.
  warning('warning'),

  /// Display: Error
  /// Definition: The action encountered a fatal error and the engine was unable to process.
  error('error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const TestReportActionResult(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static TestReportActionResult fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportActionResult.elementOnly.withElement(element);
    }
    return TestReportActionResult.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  TestReportActionResult withElement(Element? newElement) {
    return TestReportActionResult.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
