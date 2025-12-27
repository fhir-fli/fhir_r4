part of '../primitive_types.dart';

/// Actual enum for ExampleScenarioActorType
enum ExampleScenarioActorTypeEnum {
  /// person
  person,

  /// entity
  entity,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ExampleScenarioActorTypeEnum.person:
        return 'person';
      case ExampleScenarioActorTypeEnum.entity:
        return 'entity';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ExampleScenarioActorTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ExampleScenarioActorTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ExampleScenarioActorTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'person':
        return ExampleScenarioActorTypeEnum.person;
      case 'entity':
        return ExampleScenarioActorTypeEnum.entity;
    }
    return null;
  }
}

/// The type of actor - system or human.
class ExampleScenarioActorType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ExampleScenarioActorType._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
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
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = ExampleScenarioActorTypeEnum.fromString(valueString);
    return ExampleScenarioActorType._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [ExampleScenarioActorType]
  /// from JSON.
  factory ExampleScenarioActorType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ExampleScenarioActorTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleScenarioActorType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExampleScenarioActorType cannot be constructed from JSON.',
      );
    }
    return ExampleScenarioActorType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ExampleScenarioActorType
  final ExampleScenarioActorTypeEnum? valueEnum;

  /// person
  static const ExampleScenarioActorType person = ExampleScenarioActorType._(
    valueString: 'person',
    valueEnum: ExampleScenarioActorTypeEnum.person,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/examplescenario-actor-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Person',
    ),
  );

  /// entity
  static const ExampleScenarioActorType entity = ExampleScenarioActorType._(
    valueString: 'entity',
    valueEnum: ExampleScenarioActorTypeEnum.entity,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/examplescenario-actor-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'System',
    ),
  );

  /// List of all enum-like values
  static final List<ExampleScenarioActorType> values = [
    person,
    entity,
  ];

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

  @override
  ExampleScenarioActorType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ExampleScenarioActorTypeCopyWithImpl<ExampleScenarioActorType> get copyWith =>
      ExampleScenarioActorTypeCopyWithImpl<ExampleScenarioActorType>(
        this,
        (v) => v as ExampleScenarioActorType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ExampleScenarioActorTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ExampleScenarioActorTypeCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      ExampleScenarioActorType(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
