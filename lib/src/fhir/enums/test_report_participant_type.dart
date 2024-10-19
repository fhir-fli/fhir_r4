// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of participant.
class TestReportParticipantType {
  // Private constructor for internal use (like enum)
  TestReportParticipantType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TestReportParticipantType values
  /// test_engine
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportParticipantType test_engine =
      TestReportParticipantType._(
    'test-engine',
  );

  /// client
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportParticipantType client = TestReportParticipantType._(
    'client',
  );

  /// server
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestReportParticipantType server = TestReportParticipantType._(
    'server',
  );

  /// For instances where an Element is present but not value

  static final TestReportParticipantType elementOnly =
      TestReportParticipantType._('');

  /// List of all enum-like values
  static final List<TestReportParticipantType> values = [
    test_engine,
    client,
    server,
  ];

  /// Returns the enum value with an element attached
  TestReportParticipantType withElement(Element? newElement) {
    return TestReportParticipantType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TestReportParticipantType] from JSON.
  static TestReportParticipantType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportParticipantType.elementOnly.withElement(element);
    }
    return TestReportParticipantType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TestReportParticipantType.$fhirCode';
}
