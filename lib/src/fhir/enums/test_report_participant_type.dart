// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of participant.
@Entity()
class TestReportParticipantType extends FhirCode {
  /// Factory constructor to create [TestReportParticipantType] from JSON.
  factory TestReportParticipantType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportParticipantType.elementOnly(element);
    }
    if (values.contains(value)) {
      return TestReportParticipantType._(value, element);
    }
    throw ArgumentError(
      'TestReportParticipantType.fromJson: JSON value is not a valid value',
    );
  }

  /// test_engine
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestReportParticipantType.test_engine([this.element])
      : dbValue = 'test-engine',
        super('test-engine', element);

  /// client
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestReportParticipantType.client([this.element])
      : dbValue = 'client',
        super('client', element);

  /// server
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestReportParticipantType.server([this.element])
      : dbValue = 'server',
        super('server', element);

  /// For instances where an Element is present but not value

  TestReportParticipantType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TestReportParticipantType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'test-engine',
    'client',
    'server',
  ];

  /// Returns the enum value with an element attached
  TestReportParticipantType withElement(Element? newElement) {
    return TestReportParticipantType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TestReportParticipantType.$value';
}
