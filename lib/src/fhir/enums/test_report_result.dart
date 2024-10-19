// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The reported execution result.
@collection
class TestReportResult {
  /// Constructor for internal use (like enum)
  TestReportResult({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TestReportResult values
  /// pass
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportResult pass = TestReportResult(
    fhirCode: 'pass',
  );

  /// fail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportResult fail = TestReportResult(
    fhirCode: 'fail',
  );

  /// pending
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportResult pending = TestReportResult(
    fhirCode: 'pending',
  );

  /// For instances where an Element is present but not value

  static final TestReportResult elementOnly = TestReportResult();

  /// List of all enum-like values
  static final List<TestReportResult> values = [
    pass,
    fail,
    pending,
  ];

  /// Returns the enum value with an element attached
  TestReportResult withElement(Element? newElement) {
    return TestReportResult(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TestReportResult] from JSON.
  static TestReportResult fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportResult.elementOnly.withElement(element);
    }
    return TestReportResult.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TestReportResult.$fhirCode';
}
