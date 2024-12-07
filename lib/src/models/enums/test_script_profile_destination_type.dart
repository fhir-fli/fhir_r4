// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that are used to indicate the profile type of a test system when acting as the destination within a TestScript.
class TestScriptProfileDestinationType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TestScriptProfileDestinationType._(super.value, [super.element]);

  /// Factory constructor to create [TestScriptProfileDestinationType] from JSON.
  factory TestScriptProfileDestinationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptProfileDestinationType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestScriptProfileDestinationType cannot be constructed from JSON.',
      );
    }
    return TestScriptProfileDestinationType._(value, element);
  }

  /// FHIR_Server
  static final TestScriptProfileDestinationType FHIR_Server =
      TestScriptProfileDestinationType._(
    'FHIR-Server',
  );

  /// FHIR_SDC_FormManager
  static final TestScriptProfileDestinationType FHIR_SDC_FormManager =
      TestScriptProfileDestinationType._(
    'FHIR-SDC-FormManager',
  );

  /// FHIR_SDC_FormProcessor
  static final TestScriptProfileDestinationType FHIR_SDC_FormProcessor =
      TestScriptProfileDestinationType._(
    'FHIR-SDC-FormProcessor',
  );

  /// FHIR_SDC_FormReceiver
  static final TestScriptProfileDestinationType FHIR_SDC_FormReceiver =
      TestScriptProfileDestinationType._(
    'FHIR-SDC-FormReceiver',
  );

  /// For instances where an Element is present but not value

  static final TestScriptProfileDestinationType elementOnly =
      TestScriptProfileDestinationType._('');

  /// List of all enum-like values
  static final List<TestScriptProfileDestinationType> values = [
    FHIR_Server,
    FHIR_SDC_FormManager,
    FHIR_SDC_FormProcessor,
    FHIR_SDC_FormReceiver,
  ];

  /// Clones the current instance
  @override
  TestScriptProfileDestinationType clone() =>
      TestScriptProfileDestinationType._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TestScriptProfileDestinationType withElement(Element? newElement) {
    return TestScriptProfileDestinationType._(value, newElement);
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
  TestScriptProfileDestinationType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TestScriptProfileDestinationType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
