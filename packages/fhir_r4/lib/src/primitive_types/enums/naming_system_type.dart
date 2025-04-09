// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for NamingSystemType
enum NamingSystemTypeEnum {
  /// codesystem
  codesystem,

  /// identifier
  identifier,

  /// root
  root,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case NamingSystemTypeEnum.codesystem:
        return 'codesystem';
      case NamingSystemTypeEnum.identifier:
        return 'identifier';
      case NamingSystemTypeEnum.root:
        return 'root';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static NamingSystemTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return NamingSystemTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static NamingSystemTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'codesystem':
        return NamingSystemTypeEnum.codesystem;
      case 'identifier':
        return NamingSystemTypeEnum.identifier;
      case 'root':
        return NamingSystemTypeEnum.root;
    }
    return null;
  }
}

/// Identifies the purpose of the naming system.
class NamingSystemType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const NamingSystemType._({
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
  factory NamingSystemType(
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
    final valueEnum = NamingSystemTypeEnum.fromString(valueString);
    return NamingSystemType._(
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

  /// Factory constructor to create [NamingSystemType]
  /// from JSON.
  factory NamingSystemType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = NamingSystemTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NamingSystemType cannot be constructed from JSON.',
      );
    }
    return NamingSystemType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for NamingSystemType
  final NamingSystemTypeEnum? valueEnum;

  /// codesystem
  static const NamingSystemType codesystem = NamingSystemType._(
    valueString: 'codesystem',
    valueEnum: NamingSystemTypeEnum.codesystem,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/namingsystem-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Code System',
    ),
  );

  /// identifier
  static const NamingSystemType identifier = NamingSystemType._(
    valueString: 'identifier',
    valueEnum: NamingSystemTypeEnum.identifier,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/namingsystem-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Identifier',
    ),
  );

  /// root
  static const NamingSystemType root = NamingSystemType._(
    valueString: 'root',
    valueEnum: NamingSystemTypeEnum.root,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/namingsystem-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Root',
    ),
  );

  /// List of all enum-like values
  static final List<NamingSystemType> values = [
    codesystem,
    identifier,
    root,
  ];

  /// Returns the enum value with an element attached
  NamingSystemType withElement(Element? newElement) {
    return NamingSystemType._(
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
  NamingSystemType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  NamingSystemTypeCopyWithImpl<NamingSystemType> get copyWith =>
      NamingSystemTypeCopyWithImpl<NamingSystemType>(
        this,
        (v) => v as NamingSystemType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class NamingSystemTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  NamingSystemTypeCopyWithImpl(super._value, super._then);

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
      NamingSystemType(
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
