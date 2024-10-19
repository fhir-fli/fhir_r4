// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set defines a set of codes that are used to indicate the profile type of a test system when acting as the destination within a TestScript.
@collection
class TestScriptProfileDestinationType {
  /// Constructor for internal use (like enum)
  TestScriptProfileDestinationType({this.fhirCode, this.element})
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

  /// TestScriptProfileDestinationType values
  /// FHIR_Server
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptProfileDestinationType FHIR_Server =
      TestScriptProfileDestinationType(
    fhirCode: 'FHIR-Server',
  );

  /// FHIR_SDC_FormManager
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptProfileDestinationType FHIR_SDC_FormManager =
      TestScriptProfileDestinationType(
    fhirCode: 'FHIR-SDC-FormManager',
  );

  /// FHIR_SDC_FormProcessor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptProfileDestinationType FHIR_SDC_FormProcessor =
      TestScriptProfileDestinationType(
    fhirCode: 'FHIR-SDC-FormProcessor',
  );

  /// FHIR_SDC_FormReceiver
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptProfileDestinationType FHIR_SDC_FormReceiver =
      TestScriptProfileDestinationType(
    fhirCode: 'FHIR-SDC-FormReceiver',
  );

  /// For instances where an Element is present but not value

  static final TestScriptProfileDestinationType elementOnly =
      TestScriptProfileDestinationType();

  /// List of all enum-like values
  static final List<TestScriptProfileDestinationType> values = [
    FHIR_Server,
    FHIR_SDC_FormManager,
    FHIR_SDC_FormProcessor,
    FHIR_SDC_FormReceiver,
  ];

  /// Returns the enum value with an element attached
  TestScriptProfileDestinationType withElement(Element? newElement) {
    return TestScriptProfileDestinationType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TestScriptProfileDestinationType] from JSON.
  static TestScriptProfileDestinationType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptProfileDestinationType.elementOnly.withElement(element);
    }
    return TestScriptProfileDestinationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TestScriptProfileDestinationType.$fhirCode';
}
