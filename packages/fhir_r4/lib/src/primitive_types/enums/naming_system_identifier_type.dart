part of '../primitive_types.dart';

/// Actual enum for NamingSystemIdentifierType
enum NamingSystemIdentifierTypeEnum {
  /// oid
  oid,

  /// uuid
  uuid,

  /// uri
  uri,

  /// other
  other,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case NamingSystemIdentifierTypeEnum.oid:
        return 'oid';
      case NamingSystemIdentifierTypeEnum.uuid:
        return 'uuid';
      case NamingSystemIdentifierTypeEnum.uri:
        return 'uri';
      case NamingSystemIdentifierTypeEnum.other:
        return 'other';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static NamingSystemIdentifierTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return NamingSystemIdentifierTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static NamingSystemIdentifierTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'oid':
        return NamingSystemIdentifierTypeEnum.oid;
      case 'uuid':
        return NamingSystemIdentifierTypeEnum.uuid;
      case 'uri':
        return NamingSystemIdentifierTypeEnum.uri;
      case 'other':
        return NamingSystemIdentifierTypeEnum.other;
    }
    return null;
  }
}

/// Identifies the style of unique identifier used to identify a namespace.
class NamingSystemIdentifierType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const NamingSystemIdentifierType._({
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
  factory NamingSystemIdentifierType(
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
    final valueEnum = NamingSystemIdentifierTypeEnum.fromString(valueString);
    return NamingSystemIdentifierType._(
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

  /// Factory constructor to create [NamingSystemIdentifierType]
  /// from JSON.
  factory NamingSystemIdentifierType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = NamingSystemIdentifierTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemIdentifierType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NamingSystemIdentifierType cannot be constructed from JSON.',
      );
    }
    return NamingSystemIdentifierType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for NamingSystemIdentifierType
  final NamingSystemIdentifierTypeEnum? valueEnum;

  /// oid
  static const NamingSystemIdentifierType oid = NamingSystemIdentifierType._(
    valueString: 'oid',
    valueEnum: NamingSystemIdentifierTypeEnum.oid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'OID',
    ),
  );

  /// uuid
  static const NamingSystemIdentifierType uuid = NamingSystemIdentifierType._(
    valueString: 'uuid',
    valueEnum: NamingSystemIdentifierTypeEnum.uuid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'UUID',
    ),
  );

  /// uri
  static const NamingSystemIdentifierType uri = NamingSystemIdentifierType._(
    valueString: 'uri',
    valueEnum: NamingSystemIdentifierTypeEnum.uri,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'URI',
    ),
  );

  /// other
  static const NamingSystemIdentifierType other = NamingSystemIdentifierType._(
    valueString: 'other',
    valueEnum: NamingSystemIdentifierTypeEnum.other,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Other',
    ),
  );

  /// List of all enum-like values
  static final List<NamingSystemIdentifierType> values = [
    oid,
    uuid,
    uri,
    other,
  ];

  /// Returns the enum value with an element attached
  NamingSystemIdentifierType withElement(Element? newElement) {
    return NamingSystemIdentifierType._(
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
  NamingSystemIdentifierType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  NamingSystemIdentifierTypeCopyWithImpl<NamingSystemIdentifierType>
      get copyWith =>
          NamingSystemIdentifierTypeCopyWithImpl<NamingSystemIdentifierType>(
            this,
            (v) => v as NamingSystemIdentifierType,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class NamingSystemIdentifierTypeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  NamingSystemIdentifierTypeCopyWithImpl(super._value, super._then);

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
      NamingSystemIdentifierType(
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
