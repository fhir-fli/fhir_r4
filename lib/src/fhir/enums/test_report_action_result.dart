// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const TestReportActionResult(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [TestReportActionResult] instances.
  static TestReportActionResult fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportActionResult.elementOnly.withElement(
        element,
      );
    }
    return TestReportActionResult.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  TestReportActionResult withElement(Element? newElement) {
    return TestReportActionResult.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
