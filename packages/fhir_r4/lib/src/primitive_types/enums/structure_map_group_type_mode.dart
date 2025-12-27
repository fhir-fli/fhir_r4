part of '../primitive_types.dart';

/// Actual enum for StructureMapGroupTypeMode
enum StructureMapGroupTypeModeEnum {
  /// none
  none,

  /// types
  types,

  /// type-and-types
  typeAndTypes,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StructureMapGroupTypeModeEnum.none:
        return 'none';
      case StructureMapGroupTypeModeEnum.types:
        return 'types';
      case StructureMapGroupTypeModeEnum.typeAndTypes:
        return 'type-and-types';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StructureMapGroupTypeModeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return StructureMapGroupTypeModeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StructureMapGroupTypeModeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'none':
        return StructureMapGroupTypeModeEnum.none;
      case 'types':
        return StructureMapGroupTypeModeEnum.types;
      case 'type-and-types':
        return StructureMapGroupTypeModeEnum.typeAndTypes;
    }
    return null;
  }
}

/// If this is the default rule set to apply for the source type, or this
/// combination of types.
class StructureMapGroupTypeMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const StructureMapGroupTypeMode._({
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
  factory StructureMapGroupTypeMode(
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
    final valueEnum = StructureMapGroupTypeModeEnum.fromString(valueString);
    return StructureMapGroupTypeMode._(
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

  /// Factory constructor to create [StructureMapGroupTypeMode]
  /// from JSON.
  factory StructureMapGroupTypeMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = StructureMapGroupTypeModeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapGroupTypeMode._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapGroupTypeMode cannot be constructed from JSON.',
      );
    }
    return StructureMapGroupTypeMode._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for StructureMapGroupTypeMode
  final StructureMapGroupTypeModeEnum? valueEnum;

  /// none
  static const StructureMapGroupTypeMode none = StructureMapGroupTypeMode._(
    valueString: 'none',
    valueEnum: StructureMapGroupTypeModeEnum.none,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-group-type-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not a Default',
    ),
  );

  /// types
  static const StructureMapGroupTypeMode types = StructureMapGroupTypeMode._(
    valueString: 'types',
    valueEnum: StructureMapGroupTypeModeEnum.types,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-group-type-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Default for Type Combination',
    ),
  );

  /// type_and_types
  static const StructureMapGroupTypeMode typeAndTypes =
      StructureMapGroupTypeMode._(
    valueString: 'type-and-types',
    valueEnum: StructureMapGroupTypeModeEnum.typeAndTypes,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-group-type-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Default for type + combination',
    ),
  );

  /// List of all enum-like values
  static final List<StructureMapGroupTypeMode> values = [
    none,
    types,
    typeAndTypes,
  ];

  /// Returns the enum value with an element attached
  StructureMapGroupTypeMode withElement(Element? newElement) {
    return StructureMapGroupTypeMode._(
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
  StructureMapGroupTypeMode clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  StructureMapGroupTypeModeCopyWithImpl<StructureMapGroupTypeMode>
      get copyWith =>
          StructureMapGroupTypeModeCopyWithImpl<StructureMapGroupTypeMode>(
            this,
            (v) => v as StructureMapGroupTypeMode,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class StructureMapGroupTypeModeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  StructureMapGroupTypeModeCopyWithImpl(super._value, super._then);

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
      StructureMapGroupTypeMode(
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
