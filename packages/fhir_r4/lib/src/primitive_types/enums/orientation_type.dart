// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for OrientationType
enum OrientationTypeEnum {
  /// sense
  sense,

  /// antisense
  antisense,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case OrientationTypeEnum.sense:
        return 'sense';
      case OrientationTypeEnum.antisense:
        return 'antisense';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static OrientationTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return OrientationTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static OrientationTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'sense':
        return OrientationTypeEnum.sense;
      case 'antisense':
        return OrientationTypeEnum.antisense;
    }
    return null;
  }
}

/// Type for orientation.
class OrientationType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const OrientationType._({
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
  factory OrientationType(
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
    final valueEnum = OrientationTypeEnum.fromString(valueString);
    return OrientationType._(
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

  /// Factory constructor to create [OrientationType]
  /// from JSON.
  factory OrientationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = OrientationTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrientationType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OrientationType cannot be constructed from JSON.',
      );
    }
    return OrientationType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for OrientationType
  final OrientationTypeEnum? valueEnum;

  /// sense
  static const OrientationType sense = OrientationType._(
    valueString: 'sense',
    valueEnum: OrientationTypeEnum.sense,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/orientation-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Sense orientation of referenceSeq',
    ),
  );

  /// antisense
  static const OrientationType antisense = OrientationType._(
    valueString: 'antisense',
    valueEnum: OrientationTypeEnum.antisense,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/orientation-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Antisense orientation of referenceSeq',
    ),
  );

  /// List of all enum-like values
  static final List<OrientationType> values = [
    sense,
    antisense,
  ];

  /// Returns the enum value with an element attached
  OrientationType withElement(Element? newElement) {
    return OrientationType._(
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
  OrientationType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  OrientationTypeCopyWithImpl<OrientationType> get copyWith =>
      OrientationTypeCopyWithImpl<OrientationType>(
        this,
        (v) => v as OrientationType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class OrientationTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  OrientationTypeCopyWithImpl(super._value, super._then);

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
      OrientationType(
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
