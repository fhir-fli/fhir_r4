// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The results of executing an action.
class TestReportActionResult {
  // Private constructor for internal use (like enum)
  TestReportActionResult._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TestReportActionResult values
  /// pass
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportActionResult pass = TestReportActionResult._(
    'pass',
  );

  /// skip
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportActionResult skip = TestReportActionResult._(
    'skip',
  );

  /// fail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportActionResult fail = TestReportActionResult._(
    'fail',
  );

  /// warning
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportActionResult warning = TestReportActionResult._(
    'warning',
  );

  /// error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportActionResult error = TestReportActionResult._(
    'error',
  );

  /// For instances where an Element is present but not value

  static final TestReportActionResult elementOnly =
      TestReportActionResult._('');

  /// List of all enum-like values
  static final List<TestReportActionResult> values = [
    pass,
    skip,
    fail,
    warning,
    error,
  ];

  /// Returns the enum value with an element attached
  TestReportActionResult withElement(Element? newElement) {
    return TestReportActionResult._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TestReportActionResult] from JSON.
  static TestReportActionResult fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportActionResult.elementOnly.withElement(element);
    }
    return TestReportActionResult.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TestReportActionResult.$fhirCode';
}
