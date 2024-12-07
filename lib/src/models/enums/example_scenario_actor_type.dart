// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of actor - system or human.
class ExampleScenarioActorType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExampleScenarioActorType._(super.value, [super.element]);

  /// Factory constructor to create [ExampleScenarioActorType] from JSON.
  factory ExampleScenarioActorType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleScenarioActorType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExampleScenarioActorType cannot be constructed from JSON.',
      );
    }
    return ExampleScenarioActorType._(value, element);
  }

  /// person
  static final ExampleScenarioActorType person = ExampleScenarioActorType._(
    'person',
  );

  /// entity
  static final ExampleScenarioActorType entity = ExampleScenarioActorType._(
    'entity',
  );

  /// For instances where an Element is present but not value

  static final ExampleScenarioActorType elementOnly =
      ExampleScenarioActorType._('');

  /// List of all enum-like values
  static final List<ExampleScenarioActorType> values = [
    person,
    entity,
  ];

  /// Clones the current instance
  @override
  ExampleScenarioActorType clone() => ExampleScenarioActorType._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ExampleScenarioActorType withElement(Element? newElement) {
    return ExampleScenarioActorType._(value, newElement);
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
  ExampleScenarioActorType copyWith({
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
    return ExampleScenarioActorType._(
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
