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

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ExampleScenarioActorType setElement(
    String name,
    dynamic elementValue,
  ) {
    return ExampleScenarioActorType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

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
    return ExampleScenarioActorType._(
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
