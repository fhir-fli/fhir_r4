// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DiscriminatorType
enum DiscriminatorTypeEnum {
  /// value
  value_,

  /// exists
  exists,

  /// pattern
  pattern,

  /// type
  type,

  /// profile
  profile,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DiscriminatorTypeEnum.value_:
        return 'value';
      case DiscriminatorTypeEnum.exists:
        return 'exists';
      case DiscriminatorTypeEnum.pattern:
        return 'pattern';
      case DiscriminatorTypeEnum.type:
        return 'type';
      case DiscriminatorTypeEnum.profile:
        return 'profile';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DiscriminatorTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DiscriminatorTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DiscriminatorTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'value':
        return DiscriminatorTypeEnum.value_;
      case 'exists':
        return DiscriminatorTypeEnum.exists;
      case 'pattern':
        return DiscriminatorTypeEnum.pattern;
      case 'type':
        return DiscriminatorTypeEnum.type;
      case 'profile':
        return DiscriminatorTypeEnum.profile;
    }
    return null;
  }
}

/// How an element value is interpreted when discrimination is evaluated.
class DiscriminatorType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DiscriminatorType._({
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
  factory DiscriminatorType(
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
    final valueEnum = DiscriminatorTypeEnum.fromString(valueString);
    return DiscriminatorType._(
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

  /// Factory constructor to create [DiscriminatorType]
  /// from JSON.
  factory DiscriminatorType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DiscriminatorTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiscriminatorType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DiscriminatorType cannot be constructed from JSON.',
      );
    }
    return DiscriminatorType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DiscriminatorType
  final DiscriminatorTypeEnum? valueEnum;

  /// value
  static const DiscriminatorType value_ = DiscriminatorType._(
    valueString: 'value',
    valueEnum: DiscriminatorTypeEnum.value_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/discriminator-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Value',
    ),
  );

  /// exists
  static const DiscriminatorType exists = DiscriminatorType._(
    valueString: 'exists',
    valueEnum: DiscriminatorTypeEnum.exists,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/discriminator-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Exists',
    ),
  );

  /// pattern
  static const DiscriminatorType pattern = DiscriminatorType._(
    valueString: 'pattern',
    valueEnum: DiscriminatorTypeEnum.pattern,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/discriminator-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Pattern',
    ),
  );

  /// type
  static const DiscriminatorType type = DiscriminatorType._(
    valueString: 'type',
    valueEnum: DiscriminatorTypeEnum.type,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/discriminator-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Type',
    ),
  );

  /// profile
  static const DiscriminatorType profile = DiscriminatorType._(
    valueString: 'profile',
    valueEnum: DiscriminatorTypeEnum.profile,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/discriminator-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Profile',
    ),
  );

  /// List of all enum-like values
  static final List<DiscriminatorType> values = [
    value_,
    exists,
    pattern,
    type,
    profile,
  ];

  /// Returns the enum value with an element attached
  DiscriminatorType withElement(Element? newElement) {
    return DiscriminatorType._(
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
  DiscriminatorType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DiscriminatorTypeCopyWithImpl<DiscriminatorType> get copyWith =>
      DiscriminatorTypeCopyWithImpl<DiscriminatorType>(
        this,
        (v) => v as DiscriminatorType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DiscriminatorTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DiscriminatorTypeCopyWithImpl(super._value, super._then);

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
      DiscriminatorType(
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
