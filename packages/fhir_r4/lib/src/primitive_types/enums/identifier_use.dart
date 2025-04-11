// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for IdentifierUse
enum IdentifierUseEnum {
  /// usual
  usual,

  /// official
  official,

  /// temp
  temp,

  /// secondary
  secondary,

  /// old
  old,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case IdentifierUseEnum.usual:
        return 'usual';
      case IdentifierUseEnum.official:
        return 'official';
      case IdentifierUseEnum.temp:
        return 'temp';
      case IdentifierUseEnum.secondary:
        return 'secondary';
      case IdentifierUseEnum.old:
        return 'old';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static IdentifierUseEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return IdentifierUseEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static IdentifierUseEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'usual':
        return IdentifierUseEnum.usual;
      case 'official':
        return IdentifierUseEnum.official;
      case 'temp':
        return IdentifierUseEnum.temp;
      case 'secondary':
        return IdentifierUseEnum.secondary;
      case 'old':
        return IdentifierUseEnum.old;
    }
    return null;
  }
}

/// Identifies the purpose for this identifier, if known .
class IdentifierUse extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const IdentifierUse._({
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
  factory IdentifierUse(
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
    final valueEnum = IdentifierUseEnum.fromString(valueString);
    return IdentifierUse._(
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

  /// Factory constructor to create [IdentifierUse]
  /// from JSON.
  factory IdentifierUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = IdentifierUseEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierUse._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IdentifierUse cannot be constructed from JSON.',
      );
    }
    return IdentifierUse._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for IdentifierUse
  final IdentifierUseEnum? valueEnum;

  /// usual
  static const IdentifierUse usual = IdentifierUse._(
    valueString: 'usual',
    valueEnum: IdentifierUseEnum.usual,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/identifier-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Usual',
    ),
  );

  /// official
  static const IdentifierUse official = IdentifierUse._(
    valueString: 'official',
    valueEnum: IdentifierUseEnum.official,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/identifier-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Official',
    ),
  );

  /// temp
  static const IdentifierUse temp = IdentifierUse._(
    valueString: 'temp',
    valueEnum: IdentifierUseEnum.temp,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/identifier-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Temp',
    ),
  );

  /// secondary
  static const IdentifierUse secondary = IdentifierUse._(
    valueString: 'secondary',
    valueEnum: IdentifierUseEnum.secondary,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/identifier-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Secondary',
    ),
  );

  /// old
  static const IdentifierUse old = IdentifierUse._(
    valueString: 'old',
    valueEnum: IdentifierUseEnum.old,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/identifier-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Old',
    ),
  );

  /// List of all enum-like values
  static final List<IdentifierUse> values = [
    usual,
    official,
    temp,
    secondary,
    old,
  ];

  /// Returns the enum value with an element attached
  IdentifierUse withElement(Element? newElement) {
    return IdentifierUse._(
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
  IdentifierUse clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  IdentifierUseCopyWithImpl<IdentifierUse> get copyWith =>
      IdentifierUseCopyWithImpl<IdentifierUse>(
        this,
        (v) => v as IdentifierUse,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class IdentifierUseCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  IdentifierUseCopyWithImpl(super._value, super._then);

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
      IdentifierUse(
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
