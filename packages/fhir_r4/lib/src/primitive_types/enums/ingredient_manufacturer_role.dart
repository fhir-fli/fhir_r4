part of '../primitive_types.dart';

/// Actual enum for IngredientManufacturerRole
enum IngredientManufacturerRoleEnum {
  /// allowed
  allowed,

  /// possible
  possible,

  /// actual
  actual,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case IngredientManufacturerRoleEnum.allowed:
        return 'allowed';
      case IngredientManufacturerRoleEnum.possible:
        return 'possible';
      case IngredientManufacturerRoleEnum.actual:
        return 'actual';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static IngredientManufacturerRoleEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return IngredientManufacturerRoleEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static IngredientManufacturerRoleEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'allowed':
        return IngredientManufacturerRoleEnum.allowed;
      case 'possible':
        return IngredientManufacturerRoleEnum.possible;
      case 'actual':
        return IngredientManufacturerRoleEnum.actual;
    }
    return null;
  }
}

/// The way in which this manufacturer is associated with the ingredient.
/// For example whether it is a possible one (others allowed), or an
/// exclusive authorized one for this ingredient. Note that this is not the
/// manufacturing process role.
class IngredientManufacturerRole extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const IngredientManufacturerRole._({
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
  factory IngredientManufacturerRole(
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
    final valueEnum = IngredientManufacturerRoleEnum.fromString(valueString);
    return IngredientManufacturerRole._(
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

  /// Factory constructor to create [IngredientManufacturerRole]
  /// from JSON.
  factory IngredientManufacturerRole.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = IngredientManufacturerRoleEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientManufacturerRole._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IngredientManufacturerRole cannot be constructed from JSON.',
      );
    }
    return IngredientManufacturerRole._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for IngredientManufacturerRole
  final IngredientManufacturerRoleEnum? valueEnum;

  /// allowed
  static const IngredientManufacturerRole allowed =
      IngredientManufacturerRole._(
    valueString: 'allowed',
    valueEnum: IngredientManufacturerRoleEnum.allowed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/ingredient-manufacturer-role',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Manufacturer is specifically allowed for this ingredient',
    ),
  );

  /// possible
  static const IngredientManufacturerRole possible =
      IngredientManufacturerRole._(
    valueString: 'possible',
    valueEnum: IngredientManufacturerRoleEnum.possible,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/ingredient-manufacturer-role',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Manufacturer is known to make this ingredient in general',
    ),
  );

  /// actual
  static const IngredientManufacturerRole actual = IngredientManufacturerRole._(
    valueString: 'actual',
    valueEnum: IngredientManufacturerRoleEnum.actual,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/ingredient-manufacturer-role',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Manufacturer actually makes this particular ingredient',
    ),
  );

  /// List of all enum-like values
  static final List<IngredientManufacturerRole> values = [
    allowed,
    possible,
    actual,
  ];

  /// Returns the enum value with an element attached
  IngredientManufacturerRole withElement(Element? newElement) {
    return IngredientManufacturerRole._(
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
  IngredientManufacturerRole clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  IngredientManufacturerRoleCopyWithImpl<IngredientManufacturerRole>
      get copyWith =>
          IngredientManufacturerRoleCopyWithImpl<IngredientManufacturerRole>(
            this,
            (v) => v as IngredientManufacturerRole,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class IngredientManufacturerRoleCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  IngredientManufacturerRoleCopyWithImpl(super._value, super._then);

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
      IngredientManufacturerRole(
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
