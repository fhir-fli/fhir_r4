part of '../primitive_types.dart';

/// Actual enum for CharacteristicCombination
enum CharacteristicCombinationBuilderEnum {
  /// intersection
  intersection,

  /// union
  union,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CharacteristicCombinationBuilderEnum.intersection:
        return 'intersection';
      case CharacteristicCombinationBuilderEnum.union:
        return 'union';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CharacteristicCombinationBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CharacteristicCombinationBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CharacteristicCombinationBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'intersection':
        return CharacteristicCombinationBuilderEnum.intersection;
      case 'union':
        return CharacteristicCombinationBuilderEnum.union;
    }
    return null;
  }
}

/// Logical grouping of characteristics.
class CharacteristicCombinationBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CharacteristicCombinationBuilder._({
    required super.valueString,
    this.valueEnum,
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
  factory CharacteristicCombinationBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = CharacteristicCombinationBuilderEnum.fromString(
      valueString,
    );
    return CharacteristicCombinationBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [CharacteristicCombinationBuilder]
  /// with element only
  factory CharacteristicCombinationBuilder.empty() =>
      CharacteristicCombinationBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CharacteristicCombinationBuilder] from JSON.
  factory CharacteristicCombinationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CharacteristicCombinationBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CharacteristicCombinationBuilder cannot be constructed from JSON.',
      );
    }
    return CharacteristicCombinationBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CharacteristicCombinationBuilder
  final CharacteristicCombinationBuilderEnum? valueEnum;

  /// intersection
  static CharacteristicCombinationBuilder intersection =
      CharacteristicCombinationBuilder._(
    valueString: 'intersection',
    valueEnum: CharacteristicCombinationBuilderEnum.intersection,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'intersection',
    ),
  );

  /// union
  static CharacteristicCombinationBuilder union =
      CharacteristicCombinationBuilder._(
    valueString: 'union',
    valueEnum: CharacteristicCombinationBuilderEnum.union,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'union',
    ),
  );

  /// For instances where an Element is present but not value
  static CharacteristicCombinationBuilder elementOnly =
      CharacteristicCombinationBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CharacteristicCombinationBuilder> values = [
    intersection,
    union,
  ];

  /// Returns the enum value with an element attached
  CharacteristicCombinationBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CharacteristicCombinationBuilder._(
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
}
