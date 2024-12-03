// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that are used to indicate the profile type of a test system when acting as the origin within a TestScript.
class TestScriptProfileOriginType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TestScriptProfileOriginType._(super.value, [super.element]);

  /// Factory constructor to create [TestScriptProfileOriginType] from JSON.
  factory TestScriptProfileOriginType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptProfileOriginType.elementOnly.withElement(element);
    }
    return TestScriptProfileOriginType._(value, element);
  }

  /// FHIR_Client
  static final TestScriptProfileOriginType FHIR_Client =
      TestScriptProfileOriginType._(
    'FHIR-Client',
  );

  /// FHIR_SDC_FormFiller
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

  /// Clones the current instance
  @override
  TestScriptProfileOriginType clone() => TestScriptProfileOriginType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  TestScriptProfileOriginType setElement(
    String name,
    dynamic elementValue,
  ) {
    return TestScriptProfileOriginType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  TestScriptProfileOriginType withElement(Element? newElement) {
    return TestScriptProfileOriginType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  TestScriptProfileOriginType copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TestScriptProfileOriginType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
