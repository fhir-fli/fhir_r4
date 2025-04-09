// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CharacteristicCombination
enum CharacteristicCombinationEnum {
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
      case CharacteristicCombinationEnum.intersection:
        return 'intersection';
      case CharacteristicCombinationEnum.union:
        return 'union';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CharacteristicCombinationEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CharacteristicCombinationEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CharacteristicCombinationEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'intersection':
        return CharacteristicCombinationEnum.intersection;
      case 'union':
        return CharacteristicCombinationEnum.union;
    }
    return null;
  }
}

/// Logical grouping of characteristics.
class CharacteristicCombination extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CharacteristicCombination._({
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
  factory CharacteristicCombination(
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
    final valueEnum = CharacteristicCombinationEnum.fromString(valueString);
    return CharacteristicCombination._(
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

  /// Factory constructor to create [CharacteristicCombination]
  /// from JSON.
  factory CharacteristicCombination.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CharacteristicCombinationEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CharacteristicCombination._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CharacteristicCombination cannot be constructed from JSON.',
      );
    }
    return CharacteristicCombination._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CharacteristicCombination
  final CharacteristicCombinationEnum? valueEnum;

  /// intersection
  static const CharacteristicCombination intersection =
      CharacteristicCombination._(
    valueString: 'intersection',
    valueEnum: CharacteristicCombinationEnum.intersection,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'intersection',
    ),
  );

  /// union
  static const CharacteristicCombination union = CharacteristicCombination._(
    valueString: 'union',
    valueEnum: CharacteristicCombinationEnum.union,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/characteristic-combination',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'union',
    ),
  );

  /// List of all enum-like values
  static final List<CharacteristicCombination> values = [
    intersection,
    union,
  ];

  /// Returns the enum value with an element attached
  CharacteristicCombination withElement(Element? newElement) {
    return CharacteristicCombination._(
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
  CharacteristicCombination clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CharacteristicCombinationCopyWithImpl<CharacteristicCombination>
      get copyWith =>
          CharacteristicCombinationCopyWithImpl<CharacteristicCombination>(
            this,
            (v) => v as CharacteristicCombination,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CharacteristicCombinationCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CharacteristicCombinationCopyWithImpl(super._value, super._then);

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
      CharacteristicCombination(
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
