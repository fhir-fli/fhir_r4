// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for RepositoryType
enum RepositoryTypeEnum {
  /// directlink
  directlink,

  /// openapi
  openapi,

  /// login
  login,

  /// oauth
  oauth,

  /// other
  other,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case RepositoryTypeEnum.directlink:
        return 'directlink';
      case RepositoryTypeEnum.openapi:
        return 'openapi';
      case RepositoryTypeEnum.login:
        return 'login';
      case RepositoryTypeEnum.oauth:
        return 'oauth';
      case RepositoryTypeEnum.other:
        return 'other';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RepositoryTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return RepositoryTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RepositoryTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'directlink':
        return RepositoryTypeEnum.directlink;
      case 'openapi':
        return RepositoryTypeEnum.openapi;
      case 'login':
        return RepositoryTypeEnum.login;
      case 'oauth':
        return RepositoryTypeEnum.oauth;
      case 'other':
        return RepositoryTypeEnum.other;
    }
    return null;
  }
}

/// Type for access of external URI.
class RepositoryType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const RepositoryType._({
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
  factory RepositoryType(
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
    final valueEnum = RepositoryTypeEnum.fromString(valueString);
    return RepositoryType._(
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

  /// Factory constructor to create [RepositoryType]
  /// from JSON.
  factory RepositoryType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = RepositoryTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RepositoryType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RepositoryType cannot be constructed from JSON.',
      );
    }
    return RepositoryType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for RepositoryType
  final RepositoryTypeEnum? valueEnum;

  /// directlink
  static const RepositoryType directlink = RepositoryType._(
    valueString: 'directlink',
    valueEnum: RepositoryTypeEnum.directlink,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/repository-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Click and see',
    ),
  );

  /// openapi
  static const RepositoryType openapi = RepositoryType._(
    valueString: 'openapi',
    valueEnum: RepositoryTypeEnum.openapi,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/repository-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString:
          'The URL is the RESTful or other kind of API that can access to the result.',
    ),
  );

  /// login
  static const RepositoryType login = RepositoryType._(
    valueString: 'login',
    valueEnum: RepositoryTypeEnum.login,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/repository-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Result cannot be access unless an account is logged in',
    ),
  );

  /// oauth
  static const RepositoryType oauth = RepositoryType._(
    valueString: 'oauth',
    valueEnum: RepositoryTypeEnum.oauth,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/repository-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString:
          'Result need to be fetched with API and need LOGIN( or cookies are required when visiting the link of resource)',
    ),
  );

  /// other
  static const RepositoryType other = RepositoryType._(
    valueString: 'other',
    valueEnum: RepositoryTypeEnum.other,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/repository-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString:
          'Some other complicated or particular way to get resource from URL.',
    ),
  );

  /// List of all enum-like values
  static final List<RepositoryType> values = [
    directlink,
    openapi,
    login,
    oauth,
    other,
  ];

  /// Returns the enum value with an element attached
  RepositoryType withElement(Element? newElement) {
    return RepositoryType._(
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
  RepositoryType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  RepositoryTypeCopyWithImpl<RepositoryType> get copyWith =>
      RepositoryTypeCopyWithImpl<RepositoryType>(
        this,
        (v) => v as RepositoryType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class RepositoryTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  RepositoryTypeCopyWithImpl(super._value, super._then);

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
      RepositoryType(
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
