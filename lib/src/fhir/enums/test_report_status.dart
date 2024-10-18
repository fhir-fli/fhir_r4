// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const TestReportStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [TestReportStatus] instances.
  static TestReportStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportStatus.elementOnly.withElement(element);
    }
    return TestReportStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  TestReportStatus withElement(Element? newElement) {
    return TestReportStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
