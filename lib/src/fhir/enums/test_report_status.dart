// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The current status of the test report.
class TestReportStatus {
  // Private constructor for internal use (like enum)
  TestReportStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [TestReportStatus] from JSON.
  factory TestReportStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportStatus.elementOnly.withElement(element);
    }
    return TestReportStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TestReportStatus values
  /// completed
  static final TestReportStatus completed = TestReportStatus._(
    'completed',
  );

  /// in_progress
  static final TestReportStatus in_progress = TestReportStatus._(
    'in-progress',
  );

  /// waiting
  static final TestReportStatus waiting = TestReportStatus._(
    'waiting',
  );

  /// stopped
  static final TestReportStatus stopped = TestReportStatus._(
    'stopped',
  );

  /// entered_in_error
  static final TestReportStatus entered_in_error = TestReportStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final TestReportStatus elementOnly = TestReportStatus._('');

  /// List of all enum-like values
  static final List<TestReportStatus> values = [
    completed,
    in_progress,
    waiting,
    stopped,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  TestReportStatus withElement(Element? newElement) {
    return TestReportStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
