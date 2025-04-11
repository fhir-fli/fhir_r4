// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for IdentityAssuranceLevel
enum IdentityAssuranceLevelEnum {
  /// level1
  level1,

  /// level2
  level2,

  /// level3
  level3,

  /// level4
  level4,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case IdentityAssuranceLevelEnum.level1:
        return 'level1';
      case IdentityAssuranceLevelEnum.level2:
        return 'level2';
      case IdentityAssuranceLevelEnum.level3:
        return 'level3';
      case IdentityAssuranceLevelEnum.level4:
        return 'level4';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static IdentityAssuranceLevelEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return IdentityAssuranceLevelEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static IdentityAssuranceLevelEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'level1':
        return IdentityAssuranceLevelEnum.level1;
      case 'level2':
        return IdentityAssuranceLevelEnum.level2;
      case 'level3':
        return IdentityAssuranceLevelEnum.level3;
      case 'level4':
        return IdentityAssuranceLevelEnum.level4;
    }
    return null;
  }
}

/// The level of confidence that this link represents the same actual
/// person, based on NIST Authentication Levels.
class IdentityAssuranceLevel extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const IdentityAssuranceLevel._({
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
  factory IdentityAssuranceLevel(
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
    final valueEnum = IdentityAssuranceLevelEnum.fromString(valueString);
    return IdentityAssuranceLevel._(
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

  /// Factory constructor to create [IdentityAssuranceLevel]
  /// from JSON.
  factory IdentityAssuranceLevel.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = IdentityAssuranceLevelEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentityAssuranceLevel._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IdentityAssuranceLevel cannot be constructed from JSON.',
      );
    }
    return IdentityAssuranceLevel._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for IdentityAssuranceLevel
  final IdentityAssuranceLevelEnum? valueEnum;

  /// level1
  static const IdentityAssuranceLevel level1 = IdentityAssuranceLevel._(
    valueString: 'level1',
    valueEnum: IdentityAssuranceLevelEnum.level1,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Level 1',
    ),
  );

  /// level2
  static const IdentityAssuranceLevel level2 = IdentityAssuranceLevel._(
    valueString: 'level2',
    valueEnum: IdentityAssuranceLevelEnum.level2,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Level 2',
    ),
  );

  /// level3
  static const IdentityAssuranceLevel level3 = IdentityAssuranceLevel._(
    valueString: 'level3',
    valueEnum: IdentityAssuranceLevelEnum.level3,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Level 3',
    ),
  );

  /// level4
  static const IdentityAssuranceLevel level4 = IdentityAssuranceLevel._(
    valueString: 'level4',
    valueEnum: IdentityAssuranceLevelEnum.level4,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Level 4',
    ),
  );

  /// List of all enum-like values
  static final List<IdentityAssuranceLevel> values = [
    level1,
    level2,
    level3,
    level4,
  ];

  /// Returns the enum value with an element attached
  IdentityAssuranceLevel withElement(Element? newElement) {
    return IdentityAssuranceLevel._(
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
  IdentityAssuranceLevel clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  IdentityAssuranceLevelCopyWithImpl<IdentityAssuranceLevel> get copyWith =>
      IdentityAssuranceLevelCopyWithImpl<IdentityAssuranceLevel>(
        this,
        (v) => v as IdentityAssuranceLevel,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class IdentityAssuranceLevelCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  IdentityAssuranceLevelCopyWithImpl(super._value, super._then);

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
      IdentityAssuranceLevel(
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
