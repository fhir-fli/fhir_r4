// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The reported execution result.
@Entity()
class TestReportResult extends FhirCode {
  /// Factory constructor to create [TestReportResult] from JSON.
  factory TestReportResult.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportResult.elementOnly(element);
    }
    if (values.contains(value)) {
      return TestReportResult._(value, element);
    }
    throw ArgumentError(
      'TestReportResult.fromJson: JSON value is not a valid value',
    );
  }

  /// pass
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestReportResult.pass([this.element])
      : dbValue = 'pass',
        super('pass', element);

  /// fail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestReportResult.fail([this.element])
      : dbValue = 'fail',
        super('fail', element);

  /// pending
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestReportResult.pending([this.element])
      : dbValue = 'pending',
        super('pending', element);

  /// For instances where an Element is present but not value

  TestReportResult.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TestReportResult._(super.input, [super.element])
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
    'pass',
    'fail',
    'pending',
  ];

  /// Returns the enum value with an element attached
  TestReportResult withElement(Element? newElement) {
    return TestReportResult._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TestReportResult.$value';
}
