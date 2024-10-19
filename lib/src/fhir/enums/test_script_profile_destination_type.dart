// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set defines a set of codes that are used to indicate the profile type of a test system when acting as the destination within a TestScript.
@Entity()
class TestScriptProfileDestinationType extends FhirCode {
  /// Factory constructor to create [TestScriptProfileDestinationType] from JSON.
  factory TestScriptProfileDestinationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptProfileDestinationType.elementOnly(element);
    }
    if (values.contains(value)) {
      return TestScriptProfileDestinationType._(value, element);
    }
    throw ArgumentError(
      'TestScriptProfileDestinationType.fromJson: JSON value is not a valid value',
    );
  }

  /// FHIR_Server
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptProfileDestinationType.FHIR_Server([this.element])
      : dbValue = 'FHIR-Server',
        super('FHIR-Server', element);

  /// FHIR_SDC_FormManager
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptProfileDestinationType.FHIR_SDC_FormManager([this.element])
      : dbValue = 'FHIR-SDC-FormManager',
        super('FHIR-SDC-FormManager', element);

  /// FHIR_SDC_FormProcessor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptProfileDestinationType.FHIR_SDC_FormProcessor([this.element])
      : dbValue = 'FHIR-SDC-FormProcessor',
        super('FHIR-SDC-FormProcessor', element);

  /// FHIR_SDC_FormReceiver
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptProfileDestinationType.FHIR_SDC_FormReceiver([this.element])
      : dbValue = 'FHIR-SDC-FormReceiver',
        super('FHIR-SDC-FormReceiver', element);

  /// For instances where an Element is present but not value

  TestScriptProfileDestinationType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TestScriptProfileDestinationType._(super.input, [super.element])
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
    'FHIR-Server',
    'FHIR-SDC-FormManager',
    'FHIR-SDC-FormProcessor',
    'FHIR-SDC-FormReceiver',
  ];

  /// Returns the enum value with an element attached
  TestScriptProfileDestinationType withElement(Element? newElement) {
    return TestScriptProfileDestinationType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TestScriptProfileDestinationType.$value';
}
