// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set defines a set of codes that are used to indicate the profile type of a test system when acting as the origin within a TestScript.
@Entity()
class TestScriptProfileOriginType extends FhirCode {
  /// Factory constructor to create [TestScriptProfileOriginType] from JSON.
  factory TestScriptProfileOriginType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptProfileOriginType.elementOnly(element);
    }
    if (values.contains(value)) {
      return TestScriptProfileOriginType._(value, element);
    }
    throw ArgumentError(
      'TestScriptProfileOriginType.fromJson: JSON value is not a valid value',
    );
  }

  /// FHIR_Client
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptProfileOriginType.FHIR_Client([this.element])
      : dbValue = 'FHIR-Client',
        super('FHIR-Client', element);

  /// FHIR_SDC_FormFiller
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptProfileOriginType.FHIR_SDC_FormFiller([this.element])
      : dbValue = 'FHIR-SDC-FormFiller',
        super('FHIR-SDC-FormFiller', element);

  /// For instances where an Element is present but not value

  TestScriptProfileOriginType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TestScriptProfileOriginType._(super.input, [super.element])
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
    'FHIR-Client',
    'FHIR-SDC-FormFiller',
  ];

  /// Returns the enum value with an element attached
  TestScriptProfileOriginType withElement(Element? newElement) {
    return TestScriptProfileOriginType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TestScriptProfileOriginType.$value';
}
