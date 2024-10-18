// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that are used to indicate the profile type of a test system when acting as the destination within a TestScript.
enum TestScriptProfileDestinationType {
  /// Display: FHIR Server
  /// Definition: General FHIR server used to respond to operations sent from a FHIR client.
  FHIR_Server('FHIR-Server'),

  /// Display: FHIR SDC FormManager
  /// Definition: A FHIR server acting as a Structured Data Capture Form Manager.
  FHIR_SDC_FormManager('FHIR-SDC-FormManager'),

  /// Display: FHIR SDC FormProcessor
  /// Definition: A FHIR server acting as a Structured Data Capture Form Processor.
  FHIR_SDC_FormProcessor('FHIR-SDC-FormProcessor'),

  /// Display: FHIR SDC FormReceiver
  /// Definition: A FHIR server acting as a Structured Data Capture Form Receiver.
  FHIR_SDC_FormReceiver('FHIR-SDC-FormReceiver'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const TestScriptProfileDestinationType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [TestScriptProfileDestinationType] instances.
  static TestScriptProfileDestinationType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptProfileDestinationType.elementOnly.withElement(
        element,
      );
    }
    return TestScriptProfileDestinationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  TestScriptProfileDestinationType withElement(Element? newElement) {
    return TestScriptProfileDestinationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
