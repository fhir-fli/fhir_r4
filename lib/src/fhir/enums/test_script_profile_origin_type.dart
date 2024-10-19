// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that are used to indicate the profile type of a test system when acting as the origin within a TestScript.
class TestScriptProfileOriginType {
  // Private constructor for internal use (like enum)
  TestScriptProfileOriginType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TestScriptProfileOriginType values
  /// FHIR_Client
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptProfileOriginType FHIR_Client =
      TestScriptProfileOriginType._(
    'FHIR-Client',
  );

  /// FHIR_SDC_FormFiller
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptProfileOriginType FHIR_SDC_FormFiller =
      TestScriptProfileOriginType._(
    'FHIR-SDC-FormFiller',
  );

  /// For instances where an Element is present but not value

  static final TestScriptProfileOriginType elementOnly =
      TestScriptProfileOriginType._('');

  /// List of all enum-like values
  static final List<TestScriptProfileOriginType> values = [
    FHIR_Client,
    FHIR_SDC_FormFiller,
  ];

  /// Returns the enum value with an element attached
  TestScriptProfileOriginType withElement(Element? newElement) {
    return TestScriptProfileOriginType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TestScriptProfileOriginType] from JSON.
  static TestScriptProfileOriginType fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TestScriptProfileOriginType.$fhirCode';
}
