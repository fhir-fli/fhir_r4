// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of actor - system or human.
class ExampleScenarioActorType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ExampleScenarioActorType._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory ExampleScenarioActorType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return ExampleScenarioActorType._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [ExampleScenarioActorType] with element only
  factory ExampleScenarioActorType.empty() =>
      ExampleScenarioActorType._(valueString: '');

  /// Factory constructor to create [ExampleScenarioActorType]
  /// from JSON.
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
    return ExampleScenarioActorType._(
      valueString: value,
      element: element,
    );
  }

  /// person
  static final ExampleScenarioActorType person = ExampleScenarioActorType._(
    valueString: 'person',
    system: 'http://hl7.org/fhir/ValueSet/examplescenario-actor-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Person'.toFhirString,
  );

  /// entity
  static final ExampleScenarioActorType entity = ExampleScenarioActorType._(
    valueString: 'entity',
    system: 'http://hl7.org/fhir/ValueSet/examplescenario-actor-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'System'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ExampleScenarioActorType elementOnly =
      ExampleScenarioActorType._(valueString: '');

  /// List of all enum-like values
  static final List<ExampleScenarioActorType> values = [
    person,
    entity,
  ];

  /// Clones the current instance
  @override
  ExampleScenarioActorType clone() => ExampleScenarioActorType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ExampleScenarioActorType withElement(Element? newElement) {
    return ExampleScenarioActorType._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ExampleScenarioActorType copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for ExampleScenarioActorType: $newValue',
      );
    }
    return ExampleScenarioActorType._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
