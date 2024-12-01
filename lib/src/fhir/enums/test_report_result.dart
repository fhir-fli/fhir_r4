// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The reported execution result.
class TestReportResult {
  // Private constructor for internal use (like enum)
  TestReportResult._(this.fhirCode, {this.element});

  /// Factory constructor to create [TestReportResult] from JSON.
  factory TestReportResult.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportResult.elementOnly.withElement(element);
    }
    return TestReportResult._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TestReportResult values
  /// pass
  static final TestReportResult pass = TestReportResult._(
    'pass',
  );

  /// fail
  static final TestReportResult fail = TestReportResult._(
    'fail',
  );

  /// pending
  static final TestReportResult pending = TestReportResult._(
    'pending',
  );

  /// For instances where an Element is present but not value

  static final TestReportResult elementOnly = TestReportResult._('');

  /// List of all enum-like values
  static final List<TestReportResult> values = [
    pass,
    fail,
    pending,
  ];

  /// Returns the enum value with an element attached
  TestReportResult withElement(Element? newElement) {
    return TestReportResult._(fhirCode, element: newElement);
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
