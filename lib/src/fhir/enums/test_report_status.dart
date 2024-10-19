// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The current status of the test report.
@collection
class TestReportStatus {
  /// Constructor for internal use (like enum)
  TestReportStatus({this.fhirCode, this.element})
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

  /// TestReportStatus values
  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportStatus completed = TestReportStatus(
    fhirCode: 'completed',
  );

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportStatus in_progress = TestReportStatus(
    fhirCode: 'in-progress',
  );

  /// waiting
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportStatus waiting = TestReportStatus(
    fhirCode: 'waiting',
  );

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportStatus stopped = TestReportStatus(
    fhirCode: 'stopped',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportStatus entered_in_error = TestReportStatus(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final TestReportStatus elementOnly = TestReportStatus();

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
    return TestReportStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TestReportStatus] from JSON.
  static TestReportStatus fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TestReportStatus.$fhirCode';
}
