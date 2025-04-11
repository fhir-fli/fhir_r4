// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for NameUse
enum NameUseEnum {
  /// usual
  usual,

  /// official
  official,

  /// temp
  temp,

  /// nickname
  nickname,

  /// anonymous
  anonymous,

  /// old
  old,

  /// maiden
  maiden,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case NameUseEnum.usual:
        return 'usual';
      case NameUseEnum.official:
        return 'official';
      case NameUseEnum.temp:
        return 'temp';
      case NameUseEnum.nickname:
        return 'nickname';
      case NameUseEnum.anonymous:
        return 'anonymous';
      case NameUseEnum.old:
        return 'old';
      case NameUseEnum.maiden:
        return 'maiden';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static NameUseEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return NameUseEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static NameUseEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'usual':
        return NameUseEnum.usual;
      case 'official':
        return NameUseEnum.official;
      case 'temp':
        return NameUseEnum.temp;
      case 'nickname':
        return NameUseEnum.nickname;
      case 'anonymous':
        return NameUseEnum.anonymous;
      case 'old':
        return NameUseEnum.old;
      case 'maiden':
        return NameUseEnum.maiden;
    }
    return null;
  }
}

/// The use of a human name.
class NameUse extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const NameUse._({
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
  factory NameUse(
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
    final valueEnum = NameUseEnum.fromString(valueString);
    return NameUse._(
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

  /// Factory constructor to create [NameUse]
  /// from JSON.
  factory NameUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = NameUseEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NameUse._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NameUse cannot be constructed from JSON.',
      );
    }
    return NameUse._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for NameUse
  final NameUseEnum? valueEnum;

  /// usual
  static const NameUse usual = NameUse._(
    valueString: 'usual',
    valueEnum: NameUseEnum.usual,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/name-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Usual',
    ),
  );

  /// official
  static const NameUse official = NameUse._(
    valueString: 'official',
    valueEnum: NameUseEnum.official,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/name-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Official',
    ),
  );

  /// temp
  static const NameUse temp = NameUse._(
    valueString: 'temp',
    valueEnum: NameUseEnum.temp,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/name-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Temp',
    ),
  );

  /// nickname
  static const NameUse nickname = NameUse._(
    valueString: 'nickname',
    valueEnum: NameUseEnum.nickname,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/name-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Nickname',
    ),
  );

  /// anonymous
  static const NameUse anonymous = NameUse._(
    valueString: 'anonymous',
    valueEnum: NameUseEnum.anonymous,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/name-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Anonymous',
    ),
  );

  /// old
  static const NameUse old = NameUse._(
    valueString: 'old',
    valueEnum: NameUseEnum.old,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/name-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Old',
    ),
  );

  /// maiden
  static const NameUse maiden = NameUse._(
    valueString: 'maiden',
    valueEnum: NameUseEnum.maiden,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/name-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Name changed for Marriage',
    ),
  );

  /// List of all enum-like values
  static final List<NameUse> values = [
    usual,
    official,
    temp,
    nickname,
    anonymous,
    old,
    maiden,
  ];

  /// Returns the enum value with an element attached
  NameUse withElement(Element? newElement) {
    return NameUse._(
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
  NameUse clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  NameUseCopyWithImpl<NameUse> get copyWith => NameUseCopyWithImpl<NameUse>(
        this,
        (v) => v as NameUse,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class NameUseCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  NameUseCopyWithImpl(super._value, super._then);

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
      NameUse(
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
