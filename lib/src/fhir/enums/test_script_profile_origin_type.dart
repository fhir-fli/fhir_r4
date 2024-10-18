// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that are used to indicate the profile type of a test system when acting as the origin within a TestScript.
enum TestScriptProfileOriginType {
  /// Display: FHIR Client
  /// Definition: General FHIR client used to initiate operations against a FHIR server.
  FHIR_Client('FHIR-Client'),

  /// Display: FHIR SDC FormFiller
  /// Definition: A FHIR client acting as a Structured Data Capture Form Filler.
  FHIR_SDC_FormFiller('FHIR-SDC-FormFiller'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const TestScriptProfileOriginType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [TestScriptProfileOriginType] instances.
  static TestScriptProfileOriginType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptProfileOriginType.elementOnly.withElement(element);
    }
    return TestScriptProfileOriginType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  TestScriptProfileOriginType withElement(Element? newElement) {
    return TestScriptProfileOriginType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
