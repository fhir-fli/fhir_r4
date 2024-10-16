import 'package:fhir_r4/fhir_r4.dart';

/// The current status of the test report.
enum TestReportStatus {
  /// Display: Completed
  /// Definition: All test operations have completed.
  completed('completed'),

  /// Display: In Progress
  /// Definition: A test operations is currently executing.
  in_progress('in-progress'),

  /// Display: Waiting
  /// Definition: A test operation is waiting for an external client request.
  waiting('waiting'),

  /// Display: Stopped
  /// Definition: The test script execution was manually stopped.
  stopped('stopped'),

  /// Display: Entered In Error
  /// Definition: This test report was entered or created in error.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const TestReportStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static TestReportStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportStatus.elementOnly.withElement(element);
    }
    return TestReportStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  TestReportStatus withElement(Element? newElement) {
    return TestReportStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
